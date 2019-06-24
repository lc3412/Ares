; ModuleID = './line115-irc.o.i'
source_filename = "./line115-irc.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IRC_SERVER_REC = type { i32, i32, i32, %struct._IRC_SERVER_CONNECT_REC*, i64, i64, i8*, i8*, i8, %struct._NET_SENDBUF_REC*, i32, [2 x %struct._GIOChannel*], i32, i32, %struct._RAWLOG_REC*, %struct._GHashTable*, i8*, i8*, i8*, i8, %struct._GTimeVal, i64, i32, %struct._GSList*, %struct._GSList*, void (%struct._SERVER_REC*, i8*, i32)*, i32 (%struct._SERVER_REC*, i8)*, i32 (%struct._SERVER_REC*, i8*)*, i8* (%struct._SERVER_REC*)*, void (%struct._SERVER_REC*, i8*, i8*, i32)*, i8** (%struct._SERVER_REC*, i8*, i8*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)*, %struct._QUERY_REC* (%struct._SERVER_REC*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)*, %struct._GSList*, %struct._GSList*, %struct._REDIRECT_REC*, %struct._GSList*, i8*, i8*, i8*, i8*, i8*, i32, i16, i32, i32, i32, i32, %struct._GHashTable*, %struct._GSList*, %struct._GSList*, %struct._GString*, i32, i32, %struct._GSList*, %struct._GTimeVal, %struct._GTimeVal, i32, i32, i32, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GHashTable*, %struct._GSList*, %struct._GSList*, i8*, %struct._GHashTable*, [256 x %struct.modes_type], [256 x i8], i32 (i8*, i8*)* }
%struct._IRC_SERVER_CONNECT_REC = type { i32, i32, i32, i8*, i32, i8*, i8*, i8*, i16, i8*, i8*, i32, i8*, %struct._IPADDR*, %struct._IPADDR*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._GIOChannel*, i8, i8*, i8*, i8*, i8*, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }
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
%struct._NET_SENDBUF_REC = type { %struct._GIOChannel*, %struct._LINEBUF_REC*, i32, i32, i32, i8*, i32, i8 }
%struct._LINEBUF_REC = type opaque
%struct._RAWLOG_REC = type { i32, i32, i32, %struct._GSList* }
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
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@__func__.irc_send_cmd_full = private unnamed_addr constant [18 x i8] c"irc_send_cmd_full\00", align 1
@.str = private unnamed_addr constant [15 x i8] c"server != NULL\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"cmd != NULL\00", align 1
@__func__.irc_send_cmd_now = private unnamed_addr constant [17 x i8] c"irc_send_cmd_now\00", align 1
@__func__.irc_send_cmd_first = private unnamed_addr constant [19 x i8] c"irc_send_cmd_first\00", align 1
@__func__.irc_send_cmd_split = private unnamed_addr constant [19 x i8] c"irc_send_cmd_split\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s,\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"%s %s %s\00", align 1
@__func__.event_get_param = private unnamed_addr constant [16 x i8] c"event_get_param\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"data != NULL\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"*data != NULL\00", align 1
@__func__.event_get_params = private unnamed_addr constant [17 x i8] c"event_get_params\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"irc/core\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"server event\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"server connected\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"server incoming\00", align 1
@current_server_event = common global i8* null, align 8
@.str.12 = private unnamed_addr constant [8 x i8] c"signals\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"default event\00", align 1
@signal_default_event = internal global i32 0, align 4
@signal_server_event = internal global i32 0, align 4
@signal_server_incoming = internal global i32 0, align 4
@__func__.irc_server_event = private unnamed_addr constant [17 x i8] c"irc_server_event\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"line != NULL\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"event \00", align 1
@.str.16 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__func__.irc_init_server = private unnamed_addr constant [16 x i8] c"irc_init_server\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"IRC\00", align 1
@__func__.irc_parse_incoming = private unnamed_addr constant [19 x i8] c"irc_parse_incoming\00", align 1
@__func__.irc_parse_incoming_line = private unnamed_addr constant [24 x i8] c"irc_parse_incoming_line\00", align 1

; Function Attrs: nounwind uwtable
define void @irc_send_cmd_full(%struct._IRC_SERVER_REC*, i8*, i32, i32, i32) #0 !dbg !723 {
  %6 = alloca %struct._IRC_SERVER_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [513 x i8], align 16
  %12 = alloca i32, align 4
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %6, metadata !727, metadata !728), !dbg !729
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !730, metadata !728), !dbg !731
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !732, metadata !728), !dbg !733
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !734, metadata !728), !dbg !735
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !736, metadata !728), !dbg !737
  call void @llvm.dbg.declare(metadata [513 x i8]* %11, metadata !738, metadata !728), !dbg !742
  call void @llvm.dbg.declare(metadata i32* %12, metadata !743, metadata !728), !dbg !744
  br label %13, !dbg !745, !llvm.loop !746

; <label>:13:                                     ; preds = %5
  %14 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !747
  %15 = icmp ne %struct._IRC_SERVER_REC* %14, null, !dbg !751
  br i1 %15, label %16, label %17, !dbg !747

; <label>:16:                                     ; preds = %13
  br label %18, !dbg !752

; <label>:17:                                     ; preds = %13
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.irc_send_cmd_full, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)), !dbg !755
  br label %145, !dbg !758

; <label>:18:                                     ; preds = %16
  br label %19, !dbg !759

; <label>:19:                                     ; preds = %18
  br label %20, !dbg !761, !llvm.loop !762

; <label>:20:                                     ; preds = %19
  %21 = load i8*, i8** %7, align 8, !dbg !763
  %22 = icmp ne i8* %21, null, !dbg !767
  br i1 %22, label %23, label %24, !dbg !763

; <label>:23:                                     ; preds = %20
  br label %25, !dbg !768

; <label>:24:                                     ; preds = %20
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.irc_send_cmd_full, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0)), !dbg !771
  br label %145, !dbg !774

; <label>:25:                                     ; preds = %23
  br label %26, !dbg !775

; <label>:26:                                     ; preds = %25
  %27 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !777
  %28 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %27, i32 0, i32 8, !dbg !779
  %29 = load i8, i8* %28, align 8, !dbg !779
  %30 = lshr i8 %29, 2, !dbg !779
  %31 = and i8 %30, 1, !dbg !779
  %32 = zext i8 %31 to i32, !dbg !779
  %33 = icmp ne i32 %32, 0, !dbg !777
  br i1 %33, label %34, label %35, !dbg !780

; <label>:34:                                     ; preds = %26
  br label %145, !dbg !781

; <label>:35:                                     ; preds = %26
  %36 = load i8*, i8** %7, align 8, !dbg !782
  %37 = call i64 @strlen(i8* %36) #7, !dbg !783
  %38 = trunc i64 %37 to i32, !dbg !783
  store i32 %38, i32* %12, align 4, !dbg !784
  %39 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !785
  %40 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %39, i32 0, i32 55, !dbg !787
  %41 = load i32, i32* %40, align 4, !dbg !787
  %42 = icmp eq i32 %41, 0, !dbg !788
  br i1 %42, label %43, label %44, !dbg !789

; <label>:43:                                     ; preds = %35
  call void @irc_servers_start_cmd_timeout(), !dbg !790
  br label %44, !dbg !790

; <label>:44:                                     ; preds = %43, %35
  %45 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !791
  %46 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %45, i32 0, i32 55, !dbg !792
  %47 = load i32, i32* %46, align 4, !dbg !793
  %48 = add nsw i32 %47, 1, !dbg !793
  store i32 %48, i32* %46, align 4, !dbg !793
  %49 = load i32, i32* %10, align 4, !dbg !794
  %50 = icmp ne i32 %49, 0, !dbg !794
  br i1 %50, label %63, label %51, !dbg !796

; <label>:51:                                     ; preds = %44
  %52 = getelementptr inbounds [513 x i8], [513 x i8]* %11, i32 0, i32 0, !dbg !797
  %53 = load i8*, i8** %7, align 8, !dbg !799
  %54 = call i8* @strncpy(i8* %52, i8* %53, i64 510) #5, !dbg !800
  %55 = load i32, i32* %12, align 4, !dbg !801
  %56 = icmp sgt i32 %55, 510, !dbg !803
  br i1 %56, label %57, label %58, !dbg !804

; <label>:57:                                     ; preds = %51
  store i32 510, i32* %12, align 4, !dbg !805
  br label %58, !dbg !807

; <label>:58:                                     ; preds = %57, %51
  %59 = load i32, i32* %12, align 4, !dbg !808
  %60 = sext i32 %59 to i64, !dbg !809
  %61 = getelementptr inbounds [513 x i8], [513 x i8]* %11, i64 0, i64 %60, !dbg !809
  store i8 0, i8* %61, align 1, !dbg !810
  %62 = getelementptr inbounds [513 x i8], [513 x i8]* %11, i32 0, i32 0, !dbg !811
  store i8* %62, i8** %7, align 8, !dbg !812
  br label %63, !dbg !813

; <label>:63:                                     ; preds = %58, %44
  %64 = load i32, i32* %8, align 4, !dbg !814
  %65 = icmp ne i32 %64, 0, !dbg !814
  br i1 %65, label %66, label %78, !dbg !816

; <label>:66:                                     ; preds = %63
  %67 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !817
  %68 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %67, i32 0, i32 14, !dbg !819
  %69 = load %struct._RAWLOG_REC*, %struct._RAWLOG_REC** %68, align 8, !dbg !819
  %70 = load i8*, i8** %7, align 8, !dbg !820
  call void @rawlog_output(%struct._RAWLOG_REC* %69, i8* %70), !dbg !821
  %71 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !822
  %72 = load i8*, i8** %7, align 8, !dbg !823
  %73 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !824
  %74 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %73, i32 0, i32 37, !dbg !825
  %75 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %74, align 8, !dbg !825
  call void @server_redirect_command(%struct._IRC_SERVER_REC* %71, i8* %72, %struct._REDIRECT_REC* %75), !dbg !826
  %76 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !827
  %77 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %76, i32 0, i32 37, !dbg !828
  store %struct._REDIRECT_REC* null, %struct._REDIRECT_REC** %77, align 8, !dbg !829
  br label %78, !dbg !830

; <label>:78:                                     ; preds = %66, %63
  %79 = load i32, i32* %10, align 4, !dbg !831
  %80 = icmp ne i32 %79, 0, !dbg !831
  br i1 %80, label %93, label %81, !dbg !833

; <label>:81:                                     ; preds = %78
  %82 = load i32, i32* %12, align 4, !dbg !834
  %83 = add nsw i32 %82, 1, !dbg !834
  store i32 %83, i32* %12, align 4, !dbg !834
  %84 = sext i32 %82 to i64, !dbg !836
  %85 = getelementptr inbounds [513 x i8], [513 x i8]* %11, i64 0, i64 %84, !dbg !836
  store i8 13, i8* %85, align 1, !dbg !837
  %86 = load i32, i32* %12, align 4, !dbg !838
  %87 = add nsw i32 %86, 1, !dbg !838
  store i32 %87, i32* %12, align 4, !dbg !838
  %88 = sext i32 %86 to i64, !dbg !839
  %89 = getelementptr inbounds [513 x i8], [513 x i8]* %11, i64 0, i64 %88, !dbg !839
  store i8 10, i8* %89, align 1, !dbg !840
  %90 = load i32, i32* %12, align 4, !dbg !841
  %91 = sext i32 %90 to i64, !dbg !842
  %92 = getelementptr inbounds [513 x i8], [513 x i8]* %11, i64 0, i64 %91, !dbg !842
  store i8 0, i8* %92, align 1, !dbg !843
  br label %93, !dbg !844

; <label>:93:                                     ; preds = %81, %78
  %94 = load i32, i32* %8, align 4, !dbg !845
  %95 = icmp ne i32 %94, 0, !dbg !845
  br i1 %95, label %96, label %100, !dbg !847

; <label>:96:                                     ; preds = %93
  %97 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !848
  %98 = load i8*, i8** %7, align 8, !dbg !850
  %99 = load i32, i32* %12, align 4, !dbg !851
  call void @irc_server_send_data(%struct._IRC_SERVER_REC* %97, i8* %98, i32 %99), !dbg !852
  br label %142, !dbg !853

; <label>:100:                                    ; preds = %93
  %101 = load i32, i32* %9, align 4, !dbg !854
  %102 = icmp ne i32 %101, 0, !dbg !854
  br i1 %102, label %103, label %122, !dbg !857

; <label>:103:                                    ; preds = %100
  %104 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !858
  %105 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %104, i32 0, i32 56, !dbg !860
  %106 = load %struct._GSList*, %struct._GSList** %105, align 8, !dbg !860
  %107 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !861
  %108 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %107, i32 0, i32 37, !dbg !862
  %109 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %108, align 8, !dbg !862
  %110 = bitcast %struct._REDIRECT_REC* %109 to i8*, !dbg !861
  %111 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %106, i8* %110), !dbg !863
  %112 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !864
  %113 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %112, i32 0, i32 56, !dbg !865
  store %struct._GSList* %111, %struct._GSList** %113, align 8, !dbg !866
  %114 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !867
  %115 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %114, i32 0, i32 56, !dbg !868
  %116 = load %struct._GSList*, %struct._GSList** %115, align 8, !dbg !868
  %117 = load i8*, i8** %7, align 8, !dbg !869
  %118 = call noalias i8* @g_strdup(i8* %117), !dbg !870
  %119 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %116, i8* %118), !dbg !871
  %120 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !872
  %121 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %120, i32 0, i32 56, !dbg !873
  store %struct._GSList* %119, %struct._GSList** %121, align 8, !dbg !874
  br label %141, !dbg !875

; <label>:122:                                    ; preds = %100
  %123 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !876
  %124 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %123, i32 0, i32 56, !dbg !878
  %125 = load %struct._GSList*, %struct._GSList** %124, align 8, !dbg !878
  %126 = load i8*, i8** %7, align 8, !dbg !879
  %127 = call noalias i8* @g_strdup(i8* %126), !dbg !880
  %128 = call %struct._GSList* @g_slist_append(%struct._GSList* %125, i8* %127), !dbg !881
  %129 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !882
  %130 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %129, i32 0, i32 56, !dbg !883
  store %struct._GSList* %128, %struct._GSList** %130, align 8, !dbg !884
  %131 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !885
  %132 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %131, i32 0, i32 56, !dbg !886
  %133 = load %struct._GSList*, %struct._GSList** %132, align 8, !dbg !886
  %134 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !887
  %135 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %134, i32 0, i32 37, !dbg !888
  %136 = load %struct._REDIRECT_REC*, %struct._REDIRECT_REC** %135, align 8, !dbg !888
  %137 = bitcast %struct._REDIRECT_REC* %136 to i8*, !dbg !887
  %138 = call %struct._GSList* @g_slist_append(%struct._GSList* %133, i8* %137), !dbg !889
  %139 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !890
  %140 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %139, i32 0, i32 56, !dbg !891
  store %struct._GSList* %138, %struct._GSList** %140, align 8, !dbg !892
  br label %141

; <label>:141:                                    ; preds = %122, %103
  br label %142

; <label>:142:                                    ; preds = %141, %96
  %143 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !893
  %144 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %143, i32 0, i32 37, !dbg !894
  store %struct._REDIRECT_REC* null, %struct._REDIRECT_REC** %144, align 8, !dbg !895
  br label %145, !dbg !896

; <label>:145:                                    ; preds = %142, %34, %24, %17
  ret void, !dbg !897
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare void @irc_servers_start_cmd_timeout() #2

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #4

declare void @rawlog_output(%struct._RAWLOG_REC*, i8*) #2

declare void @server_redirect_command(%struct._IRC_SERVER_REC*, i8*, %struct._REDIRECT_REC*) #2

declare void @irc_server_send_data(%struct._IRC_SERVER_REC*, i8*, i32) #2

declare %struct._GSList* @g_slist_prepend(%struct._GSList*, i8*) #2

declare noalias i8* @g_strdup(i8*) #2

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #2

; Function Attrs: nounwind uwtable
define void @irc_send_cmd(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !899 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._GTimeVal, align 8
  %6 = alloca i32, align 4
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !902, metadata !728), !dbg !903
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !904, metadata !728), !dbg !905
  call void @llvm.dbg.declare(metadata %struct._GTimeVal* %5, metadata !906, metadata !728), !dbg !907
  call void @llvm.dbg.declare(metadata i32* %6, metadata !908, metadata !728), !dbg !909
  call void @g_get_current_time(%struct._GTimeVal* %5), !dbg !910
  %7 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !911
  %8 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %7, i32 0, i32 57, !dbg !912
  %9 = call i32 @g_timeval_cmp(%struct._GTimeVal* %5, %struct._GTimeVal* %8), !dbg !913
  %10 = icmp sge i32 %9, 0, !dbg !914
  br i1 %10, label %11, label %26, !dbg !915

; <label>:11:                                     ; preds = %2
  %12 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !916
  %13 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %12, i32 0, i32 55, !dbg !917
  %14 = load i32, i32* %13, align 4, !dbg !917
  %15 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !918
  %16 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %15, i32 0, i32 59, !dbg !919
  %17 = load i32, i32* %16, align 8, !dbg !919
  %18 = icmp slt i32 %14, %17, !dbg !920
  br i1 %18, label %24, label %19, !dbg !921

; <label>:19:                                     ; preds = %11
  %20 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !922
  %21 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %20, i32 0, i32 60, !dbg !923
  %22 = load i32, i32* %21, align 4, !dbg !923
  %23 = icmp sle i32 %22, 0, !dbg !924
  br label %24, !dbg !925

; <label>:24:                                     ; preds = %19, %11
  %25 = phi i1 [ true, %11 ], [ %23, %19 ]
  br label %26

; <label>:26:                                     ; preds = %24, %2
  %27 = phi i1 [ false, %2 ], [ %25, %24 ]
  %28 = zext i1 %27 to i32, !dbg !927
  store i32 %28, i32* %6, align 4, !dbg !928
  %29 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !929
  %30 = load i8*, i8** %4, align 8, !dbg !930
  %31 = load i32, i32* %6, align 4, !dbg !931
  call void @irc_send_cmd_full(%struct._IRC_SERVER_REC* %29, i8* %30, i32 %31, i32 0, i32 0), !dbg !932
  ret void, !dbg !933
}

declare void @g_get_current_time(%struct._GTimeVal*) #2

declare i32 @g_timeval_cmp(%struct._GTimeVal*, %struct._GTimeVal*) #2

; Function Attrs: nounwind uwtable
define void @irc_send_cmdv(%struct._IRC_SERVER_REC*, i8*, ...) #0 !dbg !934 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  %6 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !937, metadata !728), !dbg !938
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !939, metadata !728), !dbg !940
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !941, metadata !728), !dbg !956
  call void @llvm.dbg.declare(metadata i8** %6, metadata !957, metadata !728), !dbg !958
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !959
  %8 = bitcast %struct.__va_list_tag* %7 to i8*, !dbg !959
  call void @llvm.va_start(i8* %8), !dbg !959
  %9 = load i8*, i8** %4, align 8, !dbg !960
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !961
  %11 = call noalias i8* @g_strdup_vprintf(i8* %9, %struct.__va_list_tag* %10), !dbg !962
  store i8* %11, i8** %6, align 8, !dbg !963
  %12 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !964
  %13 = load i8*, i8** %6, align 8, !dbg !965
  call void @irc_send_cmd(%struct._IRC_SERVER_REC* %12, i8* %13), !dbg !966
  %14 = load i8*, i8** %6, align 8, !dbg !967
  call void @g_free(i8* %14), !dbg !968
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i32 0, i32 0, !dbg !969
  %16 = bitcast %struct.__va_list_tag* %15 to i8*, !dbg !969
  call void @llvm.va_end(i8* %16), !dbg !969
  ret void, !dbg !970
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare noalias i8* @g_strdup_vprintf(i8*, %struct.__va_list_tag*) #2

declare void @g_free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: nounwind uwtable
define void @irc_send_cmd_now(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !971 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !972, metadata !728), !dbg !973
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !974, metadata !728), !dbg !975
  br label %5, !dbg !976, !llvm.loop !977

; <label>:5:                                      ; preds = %2
  %6 = load i8*, i8** %4, align 8, !dbg !978
  %7 = icmp ne i8* %6, null, !dbg !982
  br i1 %7, label %8, label %9, !dbg !978

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !983

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.irc_send_cmd_now, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0)), !dbg !986
  br label %14, !dbg !989

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !990

; <label>:11:                                     ; preds = %10
  %12 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !992
  %13 = load i8*, i8** %4, align 8, !dbg !993
  call void @irc_send_cmd_full(%struct._IRC_SERVER_REC* %12, i8* %13, i32 1, i32 1, i32 0), !dbg !994
  br label %14, !dbg !995

; <label>:14:                                     ; preds = %11, %9
  ret void, !dbg !996
}

; Function Attrs: nounwind uwtable
define void @irc_send_cmd_first(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !998 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !999, metadata !728), !dbg !1000
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1001, metadata !728), !dbg !1002
  br label %5, !dbg !1003, !llvm.loop !1004

; <label>:5:                                      ; preds = %2
  %6 = load i8*, i8** %4, align 8, !dbg !1005
  %7 = icmp ne i8* %6, null, !dbg !1009
  br i1 %7, label %8, label %9, !dbg !1005

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !1010

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.irc_send_cmd_first, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0)), !dbg !1013
  br label %14, !dbg !1016

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !1017

; <label>:11:                                     ; preds = %10
  %12 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1019
  %13 = load i8*, i8** %4, align 8, !dbg !1020
  call void @irc_send_cmd_full(%struct._IRC_SERVER_REC* %12, i8* %13, i32 0, i32 1, i32 0), !dbg !1021
  br label %14, !dbg !1022

; <label>:14:                                     ; preds = %11, %9
  ret void, !dbg !1023
}

; Function Attrs: nounwind uwtable
define void @irc_send_cmd_split(%struct._IRC_SERVER_REC*, i8*, i32, i32) #0 !dbg !1025 {
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i8**, align 8
  %15 = alloca %struct._GString*, align 8
  %16 = alloca i32, align 4
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !1028, metadata !728), !dbg !1029
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1030, metadata !728), !dbg !1031
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1032, metadata !728), !dbg !1033
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1034, metadata !728), !dbg !1035
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1036, metadata !728), !dbg !1037
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1038, metadata !728), !dbg !1039
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1040, metadata !728), !dbg !1041
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1042, metadata !728), !dbg !1043
  call void @llvm.dbg.declare(metadata i8*** %13, metadata !1044, metadata !728), !dbg !1045
  call void @llvm.dbg.declare(metadata i8*** %14, metadata !1046, metadata !728), !dbg !1047
  call void @llvm.dbg.declare(metadata %struct._GString** %15, metadata !1048, metadata !728), !dbg !1049
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1050, metadata !728), !dbg !1051
  br label %17, !dbg !1052, !llvm.loop !1053

; <label>:17:                                     ; preds = %4
  %18 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1054
  %19 = icmp ne %struct._IRC_SERVER_REC* %18, null, !dbg !1058
  br i1 %19, label %20, label %21, !dbg !1054

; <label>:20:                                     ; preds = %17
  br label %22, !dbg !1059

; <label>:21:                                     ; preds = %17
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.irc_send_cmd_split, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)), !dbg !1062
  br label %106, !dbg !1065

; <label>:22:                                     ; preds = %20
  br label %23, !dbg !1066

; <label>:23:                                     ; preds = %22
  br label %24, !dbg !1068, !llvm.loop !1069

; <label>:24:                                     ; preds = %23
  %25 = load i8*, i8** %6, align 8, !dbg !1070
  %26 = icmp ne i8* %25, null, !dbg !1074
  br i1 %26, label %27, label %28, !dbg !1070

; <label>:27:                                     ; preds = %24
  br label %29, !dbg !1075

; <label>:28:                                     ; preds = %24
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.irc_send_cmd_split, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0)), !dbg !1078
  br label %106, !dbg !1081

; <label>:29:                                     ; preds = %27
  br label %30, !dbg !1082

; <label>:30:                                     ; preds = %29
  %31 = load i8*, i8** %6, align 8, !dbg !1084
  %32 = load i32, i32* %7, align 4, !dbg !1085
  %33 = call i8* @split_nicks(i8* %31, i8** %10, i8** %12, i8** %11, i32 %32), !dbg !1086
  store i8* %33, i8** %9, align 8, !dbg !1087
  %34 = load i8*, i8** %12, align 8, !dbg !1088
  %35 = icmp eq i8* %34, null, !dbg !1090
  br i1 %35, label %36, label %38, !dbg !1091

; <label>:36:                                     ; preds = %30
  %37 = load i8*, i8** %9, align 8, !dbg !1092
  call void @g_free(i8* %37), !dbg !1094
  br label %106, !dbg !1095

; <label>:38:                                     ; preds = %30
  %39 = call %struct._GString* @g_string_new(i8* null), !dbg !1096
  store %struct._GString* %39, %struct._GString** %15, align 8, !dbg !1097
  %40 = load i8*, i8** %12, align 8, !dbg !1098
  %41 = call noalias i8** @g_strsplit(i8* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i32 -1), !dbg !1099
  store i8** %41, i8*** %13, align 8, !dbg !1100
  store i32 0, i32* %16, align 4, !dbg !1101
  %42 = load i8**, i8*** %13, align 8, !dbg !1102
  store i8** %42, i8*** %14, align 8, !dbg !1103
  br label %43, !dbg !1104

; <label>:43:                                     ; preds = %98, %38
  %44 = load i8**, i8*** %14, align 8, !dbg !1105
  %45 = load i8*, i8** %44, align 8, !dbg !1110
  %46 = icmp ne i8* %45, null, !dbg !1111
  br i1 %46, label %47, label %57, !dbg !1112

; <label>:47:                                     ; preds = %43
  %48 = load %struct._GString*, %struct._GString** %15, align 8, !dbg !1113
  %49 = load i8**, i8*** %14, align 8, !dbg !1115
  %50 = load i8*, i8** %49, align 8, !dbg !1116
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* %50), !dbg !1117
  %51 = load i32, i32* %16, align 4, !dbg !1118
  %52 = add nsw i32 %51, 1, !dbg !1118
  store i32 %52, i32* %16, align 4, !dbg !1118
  %53 = load i32, i32* %8, align 4, !dbg !1120
  %54 = icmp slt i32 %52, %53, !dbg !1121
  br i1 %54, label %55, label %56, !dbg !1122

; <label>:55:                                     ; preds = %47
  br label %98, !dbg !1123

; <label>:56:                                     ; preds = %47
  br label %57, !dbg !1124

; <label>:57:                                     ; preds = %56, %43
  store i32 0, i32* %16, align 4, !dbg !1125
  %58 = load %struct._GString*, %struct._GString** %15, align 8, !dbg !1126
  %59 = getelementptr inbounds %struct._GString, %struct._GString* %58, i32 0, i32 1, !dbg !1128
  %60 = load i64, i64* %59, align 8, !dbg !1128
  %61 = icmp ugt i64 %60, 0, !dbg !1129
  br i1 %61, label %62, label %69, !dbg !1130

; <label>:62:                                     ; preds = %57
  %63 = load %struct._GString*, %struct._GString** %15, align 8, !dbg !1131
  %64 = load %struct._GString*, %struct._GString** %15, align 8, !dbg !1132
  %65 = getelementptr inbounds %struct._GString, %struct._GString* %64, i32 0, i32 1, !dbg !1133
  %66 = load i64, i64* %65, align 8, !dbg !1133
  %67 = sub i64 %66, 1, !dbg !1134
  %68 = call %struct._GString* @g_string_truncate(%struct._GString* %63, i64 %67), !dbg !1135
  br label %69, !dbg !1135

; <label>:69:                                     ; preds = %62, %57
  %70 = load i8*, i8** %11, align 8, !dbg !1136
  %71 = icmp eq i8* %70, null, !dbg !1138
  br i1 %71, label %72, label %78, !dbg !1139

; <label>:72:                                     ; preds = %69
  %73 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1140
  %74 = load i8*, i8** %10, align 8, !dbg !1141
  %75 = load %struct._GString*, %struct._GString** %15, align 8, !dbg !1142
  %76 = getelementptr inbounds %struct._GString, %struct._GString* %75, i32 0, i32 0, !dbg !1143
  %77 = load i8*, i8** %76, align 8, !dbg !1143
  call void (%struct._IRC_SERVER_REC*, i8*, ...) @irc_send_cmdv(%struct._IRC_SERVER_REC* %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0), i8* %74, i8* %77), !dbg !1144
  br label %85, !dbg !1144

; <label>:78:                                     ; preds = %69
  %79 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1145
  %80 = load i8*, i8** %10, align 8, !dbg !1146
  %81 = load %struct._GString*, %struct._GString** %15, align 8, !dbg !1147
  %82 = getelementptr inbounds %struct._GString, %struct._GString* %81, i32 0, i32 0, !dbg !1148
  %83 = load i8*, i8** %82, align 8, !dbg !1148
  %84 = load i8*, i8** %11, align 8, !dbg !1149
  call void (%struct._IRC_SERVER_REC*, i8*, ...) @irc_send_cmdv(%struct._IRC_SERVER_REC* %79, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* %80, i8* %83, i8* %84), !dbg !1150
  br label %85

; <label>:85:                                     ; preds = %78, %72
  %86 = load %struct._GString*, %struct._GString** %15, align 8, !dbg !1151
  %87 = call %struct._GString* @g_string_truncate(%struct._GString* %86, i64 0), !dbg !1152
  %88 = load i8**, i8*** %14, align 8, !dbg !1153
  %89 = load i8*, i8** %88, align 8, !dbg !1155
  %90 = icmp eq i8* %89, null, !dbg !1156
  br i1 %90, label %96, label %91, !dbg !1157

; <label>:91:                                     ; preds = %85
  %92 = load i8**, i8*** %14, align 8, !dbg !1158
  %93 = getelementptr inbounds i8*, i8** %92, i64 1, !dbg !1158
  %94 = load i8*, i8** %93, align 8, !dbg !1158
  %95 = icmp eq i8* %94, null, !dbg !1160
  br i1 %95, label %96, label %97, !dbg !1161

; <label>:96:                                     ; preds = %91, %85
  br label %101, !dbg !1162

; <label>:97:                                     ; preds = %91
  br label %98, !dbg !1163

; <label>:98:                                     ; preds = %97, %55
  %99 = load i8**, i8*** %14, align 8, !dbg !1164
  %100 = getelementptr inbounds i8*, i8** %99, i32 1, !dbg !1164
  store i8** %100, i8*** %14, align 8, !dbg !1164
  br label %43, !dbg !1166, !llvm.loop !1167

; <label>:101:                                    ; preds = %96
  %102 = load i8**, i8*** %13, align 8, !dbg !1168
  call void @g_strfreev(i8** %102), !dbg !1169
  %103 = load %struct._GString*, %struct._GString** %15, align 8, !dbg !1170
  %104 = call i8* @g_string_free(%struct._GString* %103, i32 1), !dbg !1171
  %105 = load i8*, i8** %9, align 8, !dbg !1172
  call void @g_free(i8* %105), !dbg !1173
  br label %106, !dbg !1174

; <label>:106:                                    ; preds = %101, %36, %28, %21
  ret void, !dbg !1175
}

; Function Attrs: nounwind uwtable
define internal i8* @split_nicks(i8*, i8**, i8**, i8**, i32) #0 !dbg !1177 {
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1180, metadata !728), !dbg !1181
  store i8** %1, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !1182, metadata !728), !dbg !1183
  store i8** %2, i8*** %8, align 8
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !1184, metadata !728), !dbg !1185
  store i8** %3, i8*** %9, align 8
  call void @llvm.dbg.declare(metadata i8*** %9, metadata !1186, metadata !728), !dbg !1187
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1188, metadata !728), !dbg !1189
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1190, metadata !728), !dbg !1191
  %12 = load i8*, i8** %6, align 8, !dbg !1192
  %13 = call noalias i8* @g_strdup(i8* %12), !dbg !1193
  %14 = load i8**, i8*** %7, align 8, !dbg !1194
  store i8* %13, i8** %14, align 8, !dbg !1195
  %15 = load i8**, i8*** %8, align 8, !dbg !1196
  store i8* null, i8** %15, align 8, !dbg !1197
  %16 = load i8**, i8*** %9, align 8, !dbg !1198
  store i8* null, i8** %16, align 8, !dbg !1199
  %17 = load i8**, i8*** %7, align 8, !dbg !1200
  %18 = load i8*, i8** %17, align 8, !dbg !1202
  store i8* %18, i8** %11, align 8, !dbg !1203
  br label %19, !dbg !1204

; <label>:19:                                     ; preds = %67, %5
  %20 = load i8*, i8** %11, align 8, !dbg !1205
  %21 = load i8, i8* %20, align 1, !dbg !1208
  %22 = sext i8 %21 to i32, !dbg !1208
  %23 = icmp ne i32 %22, 0, !dbg !1209
  br i1 %23, label %24, label %70, !dbg !1210

; <label>:24:                                     ; preds = %19
  %25 = load i8*, i8** %11, align 8, !dbg !1211
  %26 = load i8, i8* %25, align 1, !dbg !1214
  %27 = sext i8 %26 to i32, !dbg !1214
  %28 = icmp ne i32 %27, 32, !dbg !1215
  br i1 %28, label %29, label %30, !dbg !1216

; <label>:29:                                     ; preds = %24
  br label %67, !dbg !1217

; <label>:30:                                     ; preds = %24
  %31 = load i32, i32* %10, align 4, !dbg !1218
  %32 = icmp eq i32 %31, 1, !dbg !1220
  br i1 %32, label %33, label %47, !dbg !1221

; <label>:33:                                     ; preds = %30
  %34 = load i8*, i8** %11, align 8, !dbg !1222
  %35 = getelementptr inbounds i8, i8* %34, i32 1, !dbg !1222
  store i8* %35, i8** %11, align 8, !dbg !1222
  store i8 0, i8* %34, align 1, !dbg !1224
  br label %36, !dbg !1225

; <label>:36:                                     ; preds = %41, %33
  %37 = load i8*, i8** %11, align 8, !dbg !1226
  %38 = load i8, i8* %37, align 1, !dbg !1228
  %39 = sext i8 %38 to i32, !dbg !1228
  %40 = icmp eq i32 %39, 32, !dbg !1229
  br i1 %40, label %41, label %44, !dbg !1230

; <label>:41:                                     ; preds = %36
  %42 = load i8*, i8** %11, align 8, !dbg !1231
  %43 = getelementptr inbounds i8, i8* %42, i32 1, !dbg !1231
  store i8* %43, i8** %11, align 8, !dbg !1231
  br label %36, !dbg !1233, !llvm.loop !1234

; <label>:44:                                     ; preds = %36
  %45 = load i8*, i8** %11, align 8, !dbg !1235
  %46 = load i8**, i8*** %9, align 8, !dbg !1236
  store i8* %45, i8** %46, align 8, !dbg !1237
  br label %70, !dbg !1238

; <label>:47:                                     ; preds = %30
  br label %48, !dbg !1239

; <label>:48:                                     ; preds = %54, %47
  %49 = load i8*, i8** %11, align 8, !dbg !1240
  %50 = getelementptr inbounds i8, i8* %49, i64 1, !dbg !1240
  %51 = load i8, i8* %50, align 1, !dbg !1240
  %52 = sext i8 %51 to i32, !dbg !1240
  %53 = icmp eq i32 %52, 32, !dbg !1242
  br i1 %53, label %54, label %57, !dbg !1243

; <label>:54:                                     ; preds = %48
  %55 = load i8*, i8** %11, align 8, !dbg !1244
  %56 = getelementptr inbounds i8, i8* %55, i32 1, !dbg !1244
  store i8* %56, i8** %11, align 8, !dbg !1244
  br label %48, !dbg !1246, !llvm.loop !1247

; <label>:57:                                     ; preds = %48
  %58 = load i32, i32* %10, align 4, !dbg !1248
  %59 = add nsw i32 %58, -1, !dbg !1248
  store i32 %59, i32* %10, align 4, !dbg !1248
  %60 = icmp eq i32 %59, 1, !dbg !1250
  br i1 %60, label %61, label %66, !dbg !1251

; <label>:61:                                     ; preds = %57
  %62 = load i8*, i8** %11, align 8, !dbg !1252
  store i8 0, i8* %62, align 1, !dbg !1254
  %63 = load i8*, i8** %11, align 8, !dbg !1255
  %64 = getelementptr inbounds i8, i8* %63, i64 1, !dbg !1256
  %65 = load i8**, i8*** %8, align 8, !dbg !1257
  store i8* %64, i8** %65, align 8, !dbg !1258
  br label %66, !dbg !1259

; <label>:66:                                     ; preds = %61, %57
  br label %67, !dbg !1260

; <label>:67:                                     ; preds = %66, %29
  %68 = load i8*, i8** %11, align 8, !dbg !1261
  %69 = getelementptr inbounds i8, i8* %68, i32 1, !dbg !1261
  store i8* %69, i8** %11, align 8, !dbg !1261
  br label %19, !dbg !1263, !llvm.loop !1264

; <label>:70:                                     ; preds = %44, %19
  %71 = load i8**, i8*** %7, align 8, !dbg !1266
  %72 = load i8*, i8** %71, align 8, !dbg !1267
  ret i8* %72, !dbg !1268
}

declare %struct._GString* @g_string_new(i8*) #2

declare noalias i8** @g_strsplit(i8*, i8*, i32) #2

declare void @g_string_append_printf(%struct._GString*, i8*, ...) #2

declare %struct._GString* @g_string_truncate(%struct._GString*, i64) #2

declare void @g_strfreev(i8**) #2

declare i8* @g_string_free(%struct._GString*, i32) #2

; Function Attrs: nounwind uwtable
define i8* @event_get_param(i8**) #0 !dbg !1269 {
  %2 = alloca i8*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !1272, metadata !728), !dbg !1273
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1274, metadata !728), !dbg !1275
  br label %5, !dbg !1276, !llvm.loop !1277

; <label>:5:                                      ; preds = %1
  %6 = load i8**, i8*** %3, align 8, !dbg !1278
  %7 = icmp ne i8** %6, null, !dbg !1282
  br i1 %7, label %8, label %9, !dbg !1278

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !1283

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.event_get_param, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0)), !dbg !1286
  store i8* null, i8** %2, align 8, !dbg !1289
  br label %69, !dbg !1289

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !1290

; <label>:11:                                     ; preds = %10
  br label %12, !dbg !1292, !llvm.loop !1293

; <label>:12:                                     ; preds = %11
  %13 = load i8**, i8*** %3, align 8, !dbg !1294
  %14 = load i8*, i8** %13, align 8, !dbg !1298
  %15 = icmp ne i8* %14, null, !dbg !1299
  br i1 %15, label %16, label %17, !dbg !1298

; <label>:16:                                     ; preds = %12
  br label %18, !dbg !1300

; <label>:17:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.event_get_param, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0)), !dbg !1303
  store i8* null, i8** %2, align 8, !dbg !1306
  br label %69, !dbg !1306

; <label>:18:                                     ; preds = %16
  br label %19, !dbg !1307

; <label>:19:                                     ; preds = %18
  %20 = load i8**, i8*** %3, align 8, !dbg !1309
  %21 = load i8*, i8** %20, align 8, !dbg !1311
  %22 = load i8, i8* %21, align 1, !dbg !1312
  %23 = sext i8 %22 to i32, !dbg !1312
  %24 = icmp eq i32 %23, 58, !dbg !1313
  br i1 %24, label %25, label %36, !dbg !1314

; <label>:25:                                     ; preds = %19
  %26 = load i8**, i8*** %3, align 8, !dbg !1315
  %27 = load i8*, i8** %26, align 8, !dbg !1317
  store i8* %27, i8** %4, align 8, !dbg !1318
  %28 = load i8**, i8*** %3, align 8, !dbg !1319
  %29 = load i8*, i8** %28, align 8, !dbg !1320
  %30 = call i64 @strlen(i8* %29) #7, !dbg !1321
  %31 = load i8**, i8*** %3, align 8, !dbg !1322
  %32 = load i8*, i8** %31, align 8, !dbg !1323
  %33 = getelementptr inbounds i8, i8* %32, i64 %30, !dbg !1323
  store i8* %33, i8** %31, align 8, !dbg !1323
  %34 = load i8*, i8** %4, align 8, !dbg !1324
  %35 = getelementptr inbounds i8, i8* %34, i64 1, !dbg !1325
  store i8* %35, i8** %2, align 8, !dbg !1326
  br label %69, !dbg !1326

; <label>:36:                                     ; preds = %19
  %37 = load i8**, i8*** %3, align 8, !dbg !1327
  %38 = load i8*, i8** %37, align 8, !dbg !1328
  store i8* %38, i8** %4, align 8, !dbg !1329
  br label %39, !dbg !1330

; <label>:39:                                     ; preds = %53, %36
  %40 = load i8**, i8*** %3, align 8, !dbg !1331
  %41 = load i8*, i8** %40, align 8, !dbg !1333
  %42 = load i8, i8* %41, align 1, !dbg !1334
  %43 = sext i8 %42 to i32, !dbg !1334
  %44 = icmp ne i32 %43, 0, !dbg !1335
  br i1 %44, label %45, label %51, !dbg !1336

; <label>:45:                                     ; preds = %39
  %46 = load i8**, i8*** %3, align 8, !dbg !1337
  %47 = load i8*, i8** %46, align 8, !dbg !1339
  %48 = load i8, i8* %47, align 1, !dbg !1340
  %49 = sext i8 %48 to i32, !dbg !1340
  %50 = icmp ne i32 %49, 32, !dbg !1341
  br label %51

; <label>:51:                                     ; preds = %45, %39
  %52 = phi i1 [ false, %39 ], [ %50, %45 ]
  br i1 %52, label %53, label %57, !dbg !1342

; <label>:53:                                     ; preds = %51
  %54 = load i8**, i8*** %3, align 8, !dbg !1344
  %55 = load i8*, i8** %54, align 8, !dbg !1346
  %56 = getelementptr inbounds i8, i8* %55, i32 1, !dbg !1346
  store i8* %56, i8** %54, align 8, !dbg !1346
  br label %39, !dbg !1347, !llvm.loop !1348

; <label>:57:                                     ; preds = %51
  %58 = load i8**, i8*** %3, align 8, !dbg !1349
  %59 = load i8*, i8** %58, align 8, !dbg !1351
  %60 = load i8, i8* %59, align 1, !dbg !1352
  %61 = sext i8 %60 to i32, !dbg !1352
  %62 = icmp eq i32 %61, 32, !dbg !1353
  br i1 %62, label %63, label %67, !dbg !1354

; <label>:63:                                     ; preds = %57
  %64 = load i8**, i8*** %3, align 8, !dbg !1355
  %65 = load i8*, i8** %64, align 8, !dbg !1357
  %66 = getelementptr inbounds i8, i8* %65, i32 1, !dbg !1357
  store i8* %66, i8** %64, align 8, !dbg !1357
  store i8 0, i8* %65, align 1, !dbg !1358
  br label %67, !dbg !1359

; <label>:67:                                     ; preds = %63, %57
  %68 = load i8*, i8** %4, align 8, !dbg !1360
  store i8* %68, i8** %2, align 8, !dbg !1361
  br label %69, !dbg !1361

; <label>:69:                                     ; preds = %67, %25, %17, %9
  %70 = load i8*, i8** %2, align 8, !dbg !1362
  ret i8* %70, !dbg !1362
}

; Function Attrs: nounwind uwtable
define i8* @event_get_params(i8*, i32, ...) #0 !dbg !1363 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1366, metadata !728), !dbg !1367
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1368, metadata !728), !dbg !1369
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !1370, metadata !728), !dbg !1371
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1372, metadata !728), !dbg !1373
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1374, metadata !728), !dbg !1375
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1376, metadata !728), !dbg !1377
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1378, metadata !728), !dbg !1379
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %11, metadata !1380, metadata !728), !dbg !1381
  br label %12, !dbg !1382, !llvm.loop !1383

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %4, align 8, !dbg !1384
  %14 = icmp ne i8* %13, null, !dbg !1388
  br i1 %14, label %15, label %16, !dbg !1384

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !1389

; <label>:16:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.event_get_params, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0)), !dbg !1392
  store i8* null, i8** %3, align 8, !dbg !1395
  br label %71, !dbg !1395

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !1396

; <label>:18:                                     ; preds = %17
  %19 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %11, i32 0, i32 0, !dbg !1398
  %20 = bitcast %struct.__va_list_tag* %19 to i8*, !dbg !1398
  call void @llvm.va_start(i8* %20), !dbg !1398
  %21 = load i8*, i8** %4, align 8, !dbg !1399
  %22 = call noalias i8* @g_strdup(i8* %21), !dbg !1400
  store i8* %22, i8** %9, align 8, !dbg !1401
  store i8* %22, i8** %8, align 8, !dbg !1402
  %23 = load i32, i32* %5, align 4, !dbg !1403
  %24 = and i32 %23, 8192, !dbg !1404
  store i32 %24, i32* %10, align 4, !dbg !1405
  %25 = load i32, i32* %5, align 4, !dbg !1406
  %26 = and i32 %25, 4095, !dbg !1407
  store i32 %26, i32* %5, align 4, !dbg !1408
  br label %27, !dbg !1409

; <label>:27:                                     ; preds = %66, %18
  %28 = load i32, i32* %5, align 4, !dbg !1410
  %29 = add nsw i32 %28, -1, !dbg !1410
  store i32 %29, i32* %5, align 4, !dbg !1410
  %30 = icmp sgt i32 %28, 0, !dbg !1412
  br i1 %30, label %31, label %67, !dbg !1413

; <label>:31:                                     ; preds = %27
  %32 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %11, i32 0, i32 0, !dbg !1414
  %33 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %32, i32 0, i32 0, !dbg !1414
  %34 = load i32, i32* %33, align 16, !dbg !1414
  %35 = icmp ule i32 %34, 40, !dbg !1414
  br i1 %35, label %36, label %42, !dbg !1414

; <label>:36:                                     ; preds = %31
  %37 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %32, i32 0, i32 3, !dbg !1416
  %38 = load i8*, i8** %37, align 16, !dbg !1416
  %39 = getelementptr i8, i8* %38, i32 %34, !dbg !1416
  %40 = bitcast i8* %39 to i8***, !dbg !1416
  %41 = add i32 %34, 8, !dbg !1416
  store i32 %41, i32* %33, align 16, !dbg !1416
  br label %47, !dbg !1416

; <label>:42:                                     ; preds = %31
  %43 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %32, i32 0, i32 2, !dbg !1418
  %44 = load i8*, i8** %43, align 8, !dbg !1418
  %45 = bitcast i8* %44 to i8***, !dbg !1418
  %46 = getelementptr i8, i8* %44, i32 8, !dbg !1418
  store i8* %46, i8** %43, align 8, !dbg !1418
  br label %47, !dbg !1418

; <label>:47:                                     ; preds = %42, %36
  %48 = phi i8*** [ %40, %36 ], [ %45, %42 ], !dbg !1420
  %49 = load i8**, i8*** %48, align 8, !dbg !1420
  store i8** %49, i8*** %6, align 8, !dbg !1422
  %50 = load i32, i32* %5, align 4, !dbg !1423
  %51 = icmp eq i32 %50, 0, !dbg !1425
  br i1 %51, label %52, label %58, !dbg !1426

; <label>:52:                                     ; preds = %47
  %53 = load i32, i32* %10, align 4, !dbg !1427
  %54 = icmp ne i32 %53, 0, !dbg !1427
  br i1 %54, label %55, label %58, !dbg !1429

; <label>:55:                                     ; preds = %52
  %56 = load i8*, i8** %9, align 8, !dbg !1430
  call void @strip_params_colon(i8* %56), !dbg !1432
  %57 = load i8*, i8** %9, align 8, !dbg !1433
  store i8* %57, i8** %7, align 8, !dbg !1434
  br label %60, !dbg !1435

; <label>:58:                                     ; preds = %52, %47
  %59 = call i8* @event_get_param(i8** %9), !dbg !1436
  store i8* %59, i8** %7, align 8, !dbg !1438
  br label %60

; <label>:60:                                     ; preds = %58, %55
  %61 = load i8**, i8*** %6, align 8, !dbg !1439
  %62 = icmp ne i8** %61, null, !dbg !1441
  br i1 %62, label %63, label %66, !dbg !1442

; <label>:63:                                     ; preds = %60
  %64 = load i8*, i8** %7, align 8, !dbg !1443
  %65 = load i8**, i8*** %6, align 8, !dbg !1445
  store i8* %64, i8** %65, align 8, !dbg !1446
  br label %66, !dbg !1447

; <label>:66:                                     ; preds = %63, %60
  br label %27, !dbg !1448, !llvm.loop !1450

; <label>:67:                                     ; preds = %27
  %68 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %11, i32 0, i32 0, !dbg !1451
  %69 = bitcast %struct.__va_list_tag* %68 to i8*, !dbg !1451
  call void @llvm.va_end(i8* %69), !dbg !1451
  %70 = load i8*, i8** %8, align 8, !dbg !1452
  store i8* %70, i8** %3, align 8, !dbg !1453
  br label %71, !dbg !1453

; <label>:71:                                     ; preds = %67, %16
  %72 = load i8*, i8** %3, align 8, !dbg !1454
  ret i8* %72, !dbg !1454
}

; Function Attrs: nounwind uwtable
define internal void @strip_params_colon(i8*) #0 !dbg !1455 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1459, metadata !728), !dbg !1460
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1461, metadata !728), !dbg !1462
  %4 = load i8*, i8** %2, align 8, !dbg !1463
  %5 = icmp eq i8* %4, null, !dbg !1465
  br i1 %5, label %6, label %7, !dbg !1466

; <label>:6:                                      ; preds = %1
  br label %43, !dbg !1467

; <label>:7:                                      ; preds = %1
  %8 = load i8*, i8** %2, align 8, !dbg !1469
  store i8* %8, i8** %3, align 8, !dbg !1470
  br label %9, !dbg !1471

; <label>:9:                                      ; preds = %42, %7
  %10 = load i8*, i8** %3, align 8, !dbg !1472
  %11 = load i8, i8* %10, align 1, !dbg !1474
  %12 = sext i8 %11 to i32, !dbg !1474
  %13 = icmp ne i32 %12, 0, !dbg !1475
  br i1 %13, label %14, label %43, !dbg !1476

; <label>:14:                                     ; preds = %9
  %15 = load i8*, i8** %3, align 8, !dbg !1477
  %16 = load i8, i8* %15, align 1, !dbg !1480
  %17 = sext i8 %16 to i32, !dbg !1480
  %18 = icmp eq i32 %17, 58, !dbg !1481
  br i1 %18, label %19, label %27, !dbg !1482

; <label>:19:                                     ; preds = %14
  %20 = load i8*, i8** %3, align 8, !dbg !1483
  %21 = load i8*, i8** %3, align 8, !dbg !1485
  %22 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !1486
  %23 = load i8*, i8** %3, align 8, !dbg !1487
  %24 = getelementptr inbounds i8, i8* %23, i64 1, !dbg !1488
  %25 = call i64 @strlen(i8* %24) #7, !dbg !1489
  %26 = add i64 %25, 1, !dbg !1490
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %20, i8* %22, i64 %26, i32 1, i1 false), !dbg !1491
  br label %43, !dbg !1493

; <label>:27:                                     ; preds = %14
  %28 = load i8*, i8** %3, align 8, !dbg !1494
  %29 = call i8* @strchr(i8* %28, i32 32) #7, !dbg !1495
  store i8* %29, i8** %3, align 8, !dbg !1496
  %30 = load i8*, i8** %3, align 8, !dbg !1497
  %31 = icmp eq i8* %30, null, !dbg !1499
  br i1 %31, label %32, label %33, !dbg !1500

; <label>:32:                                     ; preds = %27
  br label %43, !dbg !1501

; <label>:33:                                     ; preds = %27
  br label %34, !dbg !1503

; <label>:34:                                     ; preds = %39, %33
  %35 = load i8*, i8** %3, align 8, !dbg !1504
  %36 = load i8, i8* %35, align 1, !dbg !1506
  %37 = sext i8 %36 to i32, !dbg !1506
  %38 = icmp eq i32 %37, 32, !dbg !1507
  br i1 %38, label %39, label %42, !dbg !1508

; <label>:39:                                     ; preds = %34
  %40 = load i8*, i8** %3, align 8, !dbg !1509
  %41 = getelementptr inbounds i8, i8* %40, i32 1, !dbg !1509
  store i8* %41, i8** %3, align 8, !dbg !1509
  br label %34, !dbg !1511, !llvm.loop !1513

; <label>:42:                                     ; preds = %34
  br label %9, !dbg !1514, !llvm.loop !1516

; <label>:43:                                     ; preds = %6, %19, %32, %9
  ret void, !dbg !1517
}

; Function Attrs: nounwind uwtable
define void @irc_irc_init() #0 !dbg !1518 {
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @irc_server_event to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1519
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @irc_init_server to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1520
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @irc_parse_incoming_line to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1521
  store i8* null, i8** @current_server_event, align 8, !dbg !1522
  %1 = call i32 @module_get_uniq_id_str(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0)), !dbg !1523
  store i32 %1, i32* @signal_default_event, align 4, !dbg !1524
  %2 = call i32 @module_get_uniq_id_str(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0)), !dbg !1525
  store i32 %2, i32* @signal_server_event, align 4, !dbg !1526
  %3 = call i32 @module_get_uniq_id_str(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0)), !dbg !1527
  store i32 %3, i32* @signal_server_incoming, align 4, !dbg !1528
  ret void, !dbg !1529
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @irc_server_event(%struct._IRC_SERVER_REC*, i8*, i8*, i8*) #0 !dbg !1530 {
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !1533, metadata !728), !dbg !1534
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1535, metadata !728), !dbg !1536
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1537, metadata !728), !dbg !1538
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1539, metadata !728), !dbg !1540
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1541, metadata !728), !dbg !1542
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1543, metadata !728), !dbg !1544
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1545, metadata !728), !dbg !1546
  br label %12, !dbg !1547, !llvm.loop !1548

; <label>:12:                                     ; preds = %4
  %13 = load i8*, i8** %6, align 8, !dbg !1549
  %14 = icmp ne i8* %13, null, !dbg !1553
  br i1 %14, label %15, label %16, !dbg !1549

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !1554

; <label>:16:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.irc_server_event, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0)), !dbg !1557
  br label %75, !dbg !1560

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !1561

; <label>:18:                                     ; preds = %17
  %19 = load i8*, i8** %6, align 8, !dbg !1563
  %20 = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i8* %19, i8* null), !dbg !1564
  store i8* %20, i8** %10, align 8, !dbg !1565
  %21 = load i8*, i8** %10, align 8, !dbg !1566
  %22 = getelementptr inbounds i8, i8* %21, i64 6, !dbg !1567
  %23 = call i8* @strchr(i8* %22, i32 32) #7, !dbg !1568
  store i8* %23, i8** %11, align 8, !dbg !1569
  %24 = load i8*, i8** %11, align 8, !dbg !1570
  %25 = icmp ne i8* %24, null, !dbg !1572
  br i1 %25, label %26, label %29, !dbg !1573

; <label>:26:                                     ; preds = %18
  %27 = load i8*, i8** %11, align 8, !dbg !1574
  %28 = getelementptr inbounds i8, i8* %27, i32 1, !dbg !1574
  store i8* %28, i8** %11, align 8, !dbg !1574
  store i8 0, i8* %27, align 1, !dbg !1576
  br label %30, !dbg !1577

; <label>:29:                                     ; preds = %18
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.16, i32 0, i32 0), i8** %11, align 8, !dbg !1578
  br label %30

; <label>:30:                                     ; preds = %29, %26
  br label %31, !dbg !1580

; <label>:31:                                     ; preds = %36, %30
  %32 = load i8*, i8** %11, align 8, !dbg !1581
  %33 = load i8, i8* %32, align 1, !dbg !1583
  %34 = sext i8 %33 to i32, !dbg !1583
  %35 = icmp eq i32 %34, 32, !dbg !1584
  br i1 %35, label %36, label %39, !dbg !1585

; <label>:36:                                     ; preds = %31
  %37 = load i8*, i8** %11, align 8, !dbg !1586
  %38 = getelementptr inbounds i8, i8* %37, i32 1, !dbg !1586
  store i8* %38, i8** %11, align 8, !dbg !1586
  br label %31, !dbg !1588, !llvm.loop !1589

; <label>:39:                                     ; preds = %31
  %40 = load i8*, i8** %10, align 8, !dbg !1590
  %41 = call i8* @ascii_strdown(i8* %40), !dbg !1591
  %42 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1592
  %43 = load i8*, i8** %7, align 8, !dbg !1593
  %44 = load i8*, i8** %10, align 8, !dbg !1594
  %45 = load i8*, i8** %11, align 8, !dbg !1595
  %46 = call i8* @server_redirect_get_signal(%struct._IRC_SERVER_REC* %42, i8* %43, i8* %44, i8* %45), !dbg !1596
  store i8* %46, i8** %9, align 8, !dbg !1597
  %47 = load i8*, i8** %9, align 8, !dbg !1598
  %48 = icmp eq i8* %47, null, !dbg !1600
  br i1 %48, label %49, label %51, !dbg !1601

; <label>:49:                                     ; preds = %39
  %50 = load i8*, i8** %10, align 8, !dbg !1602
  store i8* %50, i8** %9, align 8, !dbg !1603
  br label %56, !dbg !1604

; <label>:51:                                     ; preds = %39
  %52 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1605
  %53 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %52, i32 0, i32 14, !dbg !1606
  %54 = load %struct._RAWLOG_REC*, %struct._RAWLOG_REC** %53, align 8, !dbg !1606
  %55 = load i8*, i8** %9, align 8, !dbg !1607
  call void @rawlog_redirect(%struct._RAWLOG_REC* %54, i8* %55), !dbg !1608
  br label %56

; <label>:56:                                     ; preds = %51, %49
  %57 = load i8*, i8** %10, align 8, !dbg !1609
  %58 = getelementptr inbounds i8, i8* %57, i64 6, !dbg !1610
  store i8* %58, i8** @current_server_event, align 8, !dbg !1611
  %59 = load i8*, i8** %9, align 8, !dbg !1612
  %60 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1614
  %61 = load i8*, i8** %11, align 8, !dbg !1615
  %62 = load i8*, i8** %7, align 8, !dbg !1616
  %63 = load i8*, i8** %8, align 8, !dbg !1617
  %64 = call i32 (i8*, i32, ...) @signal_emit(i8* %59, i32 4, %struct._IRC_SERVER_REC* %60, i8* %61, i8* %62, i8* %63), !dbg !1618
  %65 = icmp ne i32 %64, 0, !dbg !1618
  br i1 %65, label %73, label %66, !dbg !1619

; <label>:66:                                     ; preds = %56
  %67 = load i32, i32* @signal_default_event, align 4, !dbg !1620
  %68 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1621
  %69 = load i8*, i8** %6, align 8, !dbg !1622
  %70 = load i8*, i8** %7, align 8, !dbg !1623
  %71 = load i8*, i8** %8, align 8, !dbg !1624
  %72 = call i32 (i32, i32, ...) @signal_emit_id(i32 %67, i32 4, %struct._IRC_SERVER_REC* %68, i8* %69, i8* %70, i8* %71), !dbg !1625
  br label %73, !dbg !1625

; <label>:73:                                     ; preds = %66, %56
  store i8* null, i8** @current_server_event, align 8, !dbg !1626
  %74 = load i8*, i8** %10, align 8, !dbg !1627
  call void @g_free(i8* %74), !dbg !1628
  br label %75, !dbg !1629

; <label>:75:                                     ; preds = %73, %16
  ret void, !dbg !1630
}

; Function Attrs: nounwind uwtable
define internal void @irc_init_server(%struct._IRC_SERVER_REC*) #0 !dbg !1631 {
  %2 = alloca %struct._IRC_SERVER_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %2, metadata !1634, metadata !728), !dbg !1635
  br label %3, !dbg !1636, !llvm.loop !1637

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1638
  %5 = icmp ne %struct._IRC_SERVER_REC* %4, null, !dbg !1642
  br i1 %5, label %6, label %7, !dbg !1638

; <label>:6:                                      ; preds = %3
  br label %8, !dbg !1643

; <label>:7:                                      ; preds = %3
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.irc_init_server, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)), !dbg !1646
  br label %31, !dbg !1649

; <label>:8:                                      ; preds = %6
  br label %9, !dbg !1650

; <label>:9:                                      ; preds = %8
  %10 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1652
  %11 = bitcast %struct._IRC_SERVER_REC* %10 to i8*, !dbg !1652
  %12 = call i8* @module_check_cast(i8* %11, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0)), !dbg !1654
  %13 = bitcast i8* %12 to %struct._SERVER_REC*, !dbg !1655
  %14 = bitcast %struct._SERVER_REC* %13 to i8*, !dbg !1656
  %15 = call i8* @chat_protocol_check_cast(i8* %14, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0)), !dbg !1657
  %16 = bitcast i8* %15 to %struct._IRC_SERVER_REC*, !dbg !1659
  %17 = icmp ne %struct._IRC_SERVER_REC* %16, null, !dbg !1659
  br i1 %17, label %18, label %19, !dbg !1660

; <label>:18:                                     ; preds = %9
  br i1 false, label %20, label %21, !dbg !1661

; <label>:19:                                     ; preds = %9
  br i1 false, label %21, label %20, !dbg !1663

; <label>:20:                                     ; preds = %19, %18
  br label %31, !dbg !1665

; <label>:21:                                     ; preds = %19, %18
  %22 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1666
  %23 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %22, i32 0, i32 9, !dbg !1667
  %24 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %23, align 8, !dbg !1667
  %25 = call %struct._GIOChannel* @net_sendbuffer_handle(%struct._NET_SENDBUF_REC* %24), !dbg !1668
  %26 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1669
  %27 = bitcast %struct._IRC_SERVER_REC* %26 to i8*, !dbg !1669
  %28 = call i32 @g_input_add(%struct._GIOChannel* %25, i32 1, void (i8*, %struct._GIOChannel*, i32)* bitcast (void (%struct._SERVER_REC*)* @irc_parse_incoming to void (i8*, %struct._GIOChannel*, i32)*), i8* %27), !dbg !1670
  %29 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1672
  %30 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %29, i32 0, i32 10, !dbg !1673
  store i32 %28, i32* %30, align 8, !dbg !1674
  br label %31, !dbg !1675

; <label>:31:                                     ; preds = %21, %20, %7
  ret void, !dbg !1676
}

; Function Attrs: nounwind uwtable
define internal void @irc_parse_incoming_line(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !1677 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1680, metadata !728), !dbg !1681
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1682, metadata !728), !dbg !1683
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1684, metadata !728), !dbg !1685
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1686, metadata !728), !dbg !1687
  br label %7, !dbg !1688, !llvm.loop !1689

; <label>:7:                                      ; preds = %2
  %8 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1690
  %9 = icmp ne %struct._IRC_SERVER_REC* %8, null, !dbg !1694
  br i1 %9, label %10, label %11, !dbg !1690

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !1695

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.irc_parse_incoming_line, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)), !dbg !1698
  br label %34, !dbg !1701

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !1702

; <label>:13:                                     ; preds = %12
  br label %14, !dbg !1704, !llvm.loop !1705

; <label>:14:                                     ; preds = %13
  %15 = load i8*, i8** %4, align 8, !dbg !1706
  %16 = icmp ne i8* %15, null, !dbg !1710
  br i1 %16, label %17, label %18, !dbg !1706

; <label>:17:                                     ; preds = %14
  br label %19, !dbg !1711

; <label>:18:                                     ; preds = %14
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.irc_parse_incoming_line, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0)), !dbg !1714
  br label %34, !dbg !1717

; <label>:19:                                     ; preds = %17
  br label %20, !dbg !1718

; <label>:20:                                     ; preds = %19
  %21 = load i8*, i8** %4, align 8, !dbg !1720
  %22 = call i8* @irc_parse_prefix(i8* %21, i8** %5, i8** %6), !dbg !1721
  store i8* %22, i8** %4, align 8, !dbg !1722
  %23 = load i8*, i8** %4, align 8, !dbg !1723
  %24 = load i8, i8* %23, align 1, !dbg !1725
  %25 = sext i8 %24 to i32, !dbg !1725
  %26 = icmp ne i32 %25, 0, !dbg !1726
  br i1 %26, label %27, label %34, !dbg !1727

; <label>:27:                                     ; preds = %20
  %28 = load i32, i32* @signal_server_event, align 4, !dbg !1728
  %29 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1729
  %30 = load i8*, i8** %4, align 8, !dbg !1730
  %31 = load i8*, i8** %5, align 8, !dbg !1731
  %32 = load i8*, i8** %6, align 8, !dbg !1732
  %33 = call i32 (i32, i32, ...) @signal_emit_id(i32 %28, i32 4, %struct._IRC_SERVER_REC* %29, i8* %30, i8* %31, i8* %32), !dbg !1733
  br label %34, !dbg !1733

; <label>:34:                                     ; preds = %11, %18, %27, %20
  ret void, !dbg !1734
}

declare i32 @module_get_uniq_id_str(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @irc_irc_deinit() #0 !dbg !1735 {
  call void @signal_remove_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @irc_server_event to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1736
  call void @signal_remove_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @irc_init_server to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1737
  call void @signal_remove_full(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @irc_parse_incoming_line to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1738
  ret void, !dbg !1739
}

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

declare noalias i8* @g_strconcat(i8*, ...) #2

declare i8* @ascii_strdown(i8*) #2

declare i8* @server_redirect_get_signal(%struct._IRC_SERVER_REC*, i8*, i8*, i8*) #2

declare void @rawlog_redirect(%struct._RAWLOG_REC*, i8*) #2

declare i32 @signal_emit(i8*, i32, ...) #2

declare i32 @signal_emit_id(i32, i32, ...) #2

declare i8* @chat_protocol_check_cast(i8*, i32, i8*) #2

declare i8* @module_check_cast(i8*, i32, i8*) #2

declare i32 @g_input_add(%struct._GIOChannel*, i32, void (i8*, %struct._GIOChannel*, i32)*, i8*) #2

declare %struct._GIOChannel* @net_sendbuffer_handle(%struct._NET_SENDBUF_REC*) #2

; Function Attrs: nounwind uwtable
define internal void @irc_parse_incoming(%struct._SERVER_REC*) #0 !dbg !1740 {
  %2 = alloca %struct._SERVER_REC*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %2, metadata !1743, metadata !728), !dbg !1744
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1745, metadata !728), !dbg !1746
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1747, metadata !728), !dbg !1748
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1749, metadata !728), !dbg !1750
  br label %6, !dbg !1751, !llvm.loop !1752

; <label>:6:                                      ; preds = %1
  %7 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1753
  %8 = icmp ne %struct._SERVER_REC* %7, null, !dbg !1757
  br i1 %8, label %9, label %10, !dbg !1753

; <label>:9:                                      ; preds = %6
  br label %11, !dbg !1758

; <label>:10:                                     ; preds = %6
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.irc_parse_incoming, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)), !dbg !1761
  br label %67, !dbg !1764

; <label>:11:                                     ; preds = %9
  br label %12, !dbg !1765

; <label>:12:                                     ; preds = %11
  store i32 0, i32* %4, align 4, !dbg !1767
  store i32 0, i32* %5, align 4, !dbg !1768
  %13 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1769
  call void @server_ref(%struct._SERVER_REC* %13), !dbg !1770
  br label %14, !dbg !1771

; <label>:14:                                     ; preds = %51, %12
  %15 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1772
  %16 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %15, i32 0, i32 8, !dbg !1774
  %17 = load i8, i8* %16, align 8, !dbg !1774
  %18 = lshr i8 %17, 1, !dbg !1774
  %19 = and i8 %18, 1, !dbg !1774
  %20 = zext i8 %19 to i32, !dbg !1774
  %21 = icmp ne i32 %20, 0, !dbg !1772
  br i1 %21, label %31, label %22, !dbg !1775

; <label>:22:                                     ; preds = %14
  %23 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1776
  %24 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %23, i32 0, i32 9, !dbg !1777
  %25 = load %struct._NET_SENDBUF_REC*, %struct._NET_SENDBUF_REC** %24, align 8, !dbg !1777
  %26 = load i32, i32* %4, align 4, !dbg !1778
  %27 = icmp slt i32 %26, 5, !dbg !1779
  %28 = zext i1 %27 to i32, !dbg !1779
  %29 = call i32 @net_sendbuffer_receive_line(%struct._NET_SENDBUF_REC* %25, i8** %3, i32 %28), !dbg !1780
  store i32 %29, i32* %5, align 4, !dbg !1781
  %30 = icmp sgt i32 %29, 0, !dbg !1782
  br label %31

; <label>:31:                                     ; preds = %22, %14
  %32 = phi i1 [ false, %14 ], [ %30, %22 ]
  br i1 %32, label %33, label %54, !dbg !1783

; <label>:33:                                     ; preds = %31
  %34 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1785
  %35 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %34, i32 0, i32 14, !dbg !1787
  %36 = load %struct._RAWLOG_REC*, %struct._RAWLOG_REC** %35, align 8, !dbg !1787
  %37 = load i8*, i8** %3, align 8, !dbg !1788
  call void @rawlog_input(%struct._RAWLOG_REC* %36, i8* %37), !dbg !1789
  %38 = load i32, i32* @signal_server_incoming, align 4, !dbg !1790
  %39 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1791
  %40 = load i8*, i8** %3, align 8, !dbg !1792
  %41 = call i32 (i32, i32, ...) @signal_emit_id(i32 %38, i32 2, %struct._SERVER_REC* %39, i8* %40), !dbg !1793
  %42 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1794
  %43 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %42, i32 0, i32 8, !dbg !1796
  %44 = load i8, i8* %43, align 8, !dbg !1796
  %45 = lshr i8 %44, 2, !dbg !1796
  %46 = and i8 %45, 1, !dbg !1796
  %47 = zext i8 %46 to i32, !dbg !1796
  %48 = icmp ne i32 %47, 0, !dbg !1794
  br i1 %48, label %49, label %51, !dbg !1797

; <label>:49:                                     ; preds = %33
  %50 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1798
  call void @server_disconnect(%struct._SERVER_REC* %50), !dbg !1799
  br label %51, !dbg !1799

; <label>:51:                                     ; preds = %49, %33
  %52 = load i32, i32* %4, align 4, !dbg !1800
  %53 = add nsw i32 %52, 1, !dbg !1800
  store i32 %53, i32* %4, align 4, !dbg !1800
  br label %14, !dbg !1801, !llvm.loop !1803

; <label>:54:                                     ; preds = %31
  %55 = load i32, i32* %5, align 4, !dbg !1804
  %56 = icmp eq i32 %55, -1, !dbg !1806
  br i1 %56, label %57, label %64, !dbg !1807

; <label>:57:                                     ; preds = %54
  %58 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1808
  %59 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %58, i32 0, i32 8, !dbg !1810
  %60 = load i8, i8* %59, align 8, !dbg !1811
  %61 = and i8 %60, -5, !dbg !1811
  %62 = or i8 %61, 4, !dbg !1811
  store i8 %62, i8* %59, align 8, !dbg !1811
  %63 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1812
  call void @server_disconnect(%struct._SERVER_REC* %63), !dbg !1813
  br label %64, !dbg !1814

; <label>:64:                                     ; preds = %57, %54
  %65 = load %struct._SERVER_REC*, %struct._SERVER_REC** %2, align 8, !dbg !1815
  %66 = call i32 @server_unref(%struct._SERVER_REC* %65), !dbg !1816
  br label %67, !dbg !1817

; <label>:67:                                     ; preds = %64, %10
  ret void, !dbg !1818
}

declare void @server_ref(%struct._SERVER_REC*) #2

declare i32 @net_sendbuffer_receive_line(%struct._NET_SENDBUF_REC*, i8**, i32) #2

declare void @rawlog_input(%struct._RAWLOG_REC*, i8*) #2

declare void @server_disconnect(%struct._SERVER_REC*) #2

declare i32 @server_unref(%struct._SERVER_REC*) #2

; Function Attrs: nounwind uwtable
define internal i8* @irc_parse_prefix(i8*, i8**, i8**) #0 !dbg !1819 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1822, metadata !728), !dbg !1823
  store i8** %1, i8*** %6, align 8
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !1824, metadata !728), !dbg !1825
  store i8** %2, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !1826, metadata !728), !dbg !1827
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1828, metadata !728), !dbg !1829
  %9 = load i8**, i8*** %7, align 8, !dbg !1830
  store i8* null, i8** %9, align 8, !dbg !1831
  %10 = load i8**, i8*** %6, align 8, !dbg !1832
  store i8* null, i8** %10, align 8, !dbg !1833
  %11 = load i8*, i8** %5, align 8, !dbg !1834
  %12 = load i8, i8* %11, align 1, !dbg !1836
  %13 = sext i8 %12 to i32, !dbg !1836
  %14 = icmp ne i32 %13, 58, !dbg !1837
  br i1 %14, label %15, label %17, !dbg !1838

; <label>:15:                                     ; preds = %3
  %16 = load i8*, i8** %5, align 8, !dbg !1839
  store i8* %16, i8** %4, align 8, !dbg !1840
  br label %98, !dbg !1840

; <label>:17:                                     ; preds = %3
  %18 = load i8*, i8** %5, align 8, !dbg !1841
  %19 = getelementptr inbounds i8, i8* %18, i32 1, !dbg !1841
  store i8* %19, i8** %5, align 8, !dbg !1841
  %20 = load i8**, i8*** %6, align 8, !dbg !1842
  store i8* %19, i8** %20, align 8, !dbg !1843
  store i8* null, i8** %8, align 8, !dbg !1844
  br label %21, !dbg !1845

; <label>:21:                                     ; preds = %51, %17
  %22 = load i8*, i8** %5, align 8, !dbg !1846
  %23 = load i8, i8* %22, align 1, !dbg !1848
  %24 = sext i8 %23 to i32, !dbg !1848
  %25 = icmp ne i32 %24, 0, !dbg !1849
  br i1 %25, label %26, label %31, !dbg !1850

; <label>:26:                                     ; preds = %21
  %27 = load i8*, i8** %5, align 8, !dbg !1851
  %28 = load i8, i8* %27, align 1, !dbg !1853
  %29 = sext i8 %28 to i32, !dbg !1853
  %30 = icmp ne i32 %29, 32, !dbg !1854
  br label %31

; <label>:31:                                     ; preds = %26, %21
  %32 = phi i1 [ false, %21 ], [ %30, %26 ]
  br i1 %32, label %33, label %54, !dbg !1855

; <label>:33:                                     ; preds = %31
  %34 = load i8*, i8** %5, align 8, !dbg !1857
  %35 = load i8, i8* %34, align 1, !dbg !1860
  %36 = sext i8 %35 to i32, !dbg !1860
  %37 = icmp eq i32 %36, 33, !dbg !1861
  br i1 %37, label %43, label %38, !dbg !1862

; <label>:38:                                     ; preds = %33
  %39 = load i8*, i8** %5, align 8, !dbg !1863
  %40 = load i8, i8* %39, align 1, !dbg !1865
  %41 = sext i8 %40 to i32, !dbg !1865
  %42 = icmp eq i32 %41, 64, !dbg !1866
  br i1 %42, label %43, label %51, !dbg !1867

; <label>:43:                                     ; preds = %38, %33
  %44 = load i8*, i8** %5, align 8, !dbg !1868
  store i8* %44, i8** %8, align 8, !dbg !1870
  %45 = load i8*, i8** %5, align 8, !dbg !1871
  %46 = load i8, i8* %45, align 1, !dbg !1873
  %47 = sext i8 %46 to i32, !dbg !1873
  %48 = icmp eq i32 %47, 33, !dbg !1874
  br i1 %48, label %49, label %50, !dbg !1875

; <label>:49:                                     ; preds = %43
  br label %54, !dbg !1876

; <label>:50:                                     ; preds = %43
  br label %51, !dbg !1877

; <label>:51:                                     ; preds = %50, %38
  %52 = load i8*, i8** %5, align 8, !dbg !1878
  %53 = getelementptr inbounds i8, i8* %52, i32 1, !dbg !1878
  store i8* %53, i8** %5, align 8, !dbg !1878
  br label %21, !dbg !1879, !llvm.loop !1881

; <label>:54:                                     ; preds = %49, %31
  %55 = load i8*, i8** %8, align 8, !dbg !1882
  %56 = icmp ne i8* %55, null, !dbg !1884
  br i1 %56, label %57, label %79, !dbg !1885

; <label>:57:                                     ; preds = %54
  %58 = load i8*, i8** %8, align 8, !dbg !1886
  store i8* %58, i8** %5, align 8, !dbg !1888
  %59 = load i8*, i8** %5, align 8, !dbg !1889
  %60 = getelementptr inbounds i8, i8* %59, i32 1, !dbg !1889
  store i8* %60, i8** %5, align 8, !dbg !1889
  store i8 0, i8* %59, align 1, !dbg !1890
  %61 = load i8*, i8** %5, align 8, !dbg !1891
  %62 = load i8**, i8*** %7, align 8, !dbg !1892
  store i8* %61, i8** %62, align 8, !dbg !1893
  br label %63, !dbg !1894

; <label>:63:                                     ; preds = %75, %57
  %64 = load i8*, i8** %5, align 8, !dbg !1895
  %65 = load i8, i8* %64, align 1, !dbg !1897
  %66 = sext i8 %65 to i32, !dbg !1897
  %67 = icmp ne i32 %66, 0, !dbg !1898
  br i1 %67, label %68, label %73, !dbg !1899

; <label>:68:                                     ; preds = %63
  %69 = load i8*, i8** %5, align 8, !dbg !1900
  %70 = load i8, i8* %69, align 1, !dbg !1902
  %71 = sext i8 %70 to i32, !dbg !1902
  %72 = icmp ne i32 %71, 32, !dbg !1903
  br label %73

; <label>:73:                                     ; preds = %68, %63
  %74 = phi i1 [ false, %63 ], [ %72, %68 ]
  br i1 %74, label %75, label %78, !dbg !1904

; <label>:75:                                     ; preds = %73
  %76 = load i8*, i8** %5, align 8, !dbg !1906
  %77 = getelementptr inbounds i8, i8* %76, i32 1, !dbg !1906
  store i8* %77, i8** %5, align 8, !dbg !1906
  br label %63, !dbg !1907, !llvm.loop !1909

; <label>:78:                                     ; preds = %73
  br label %79, !dbg !1910

; <label>:79:                                     ; preds = %78, %54
  %80 = load i8*, i8** %5, align 8, !dbg !1911
  %81 = load i8, i8* %80, align 1, !dbg !1913
  %82 = sext i8 %81 to i32, !dbg !1913
  %83 = icmp eq i32 %82, 32, !dbg !1914
  br i1 %83, label %84, label %96, !dbg !1915

; <label>:84:                                     ; preds = %79
  %85 = load i8*, i8** %5, align 8, !dbg !1916
  %86 = getelementptr inbounds i8, i8* %85, i32 1, !dbg !1916
  store i8* %86, i8** %5, align 8, !dbg !1916
  store i8 0, i8* %85, align 1, !dbg !1918
  br label %87, !dbg !1919

; <label>:87:                                     ; preds = %92, %84
  %88 = load i8*, i8** %5, align 8, !dbg !1920
  %89 = load i8, i8* %88, align 1, !dbg !1922
  %90 = sext i8 %89 to i32, !dbg !1922
  %91 = icmp eq i32 %90, 32, !dbg !1923
  br i1 %91, label %92, label %95, !dbg !1924

; <label>:92:                                     ; preds = %87
  %93 = load i8*, i8** %5, align 8, !dbg !1925
  %94 = getelementptr inbounds i8, i8* %93, i32 1, !dbg !1925
  store i8* %94, i8** %5, align 8, !dbg !1925
  br label %87, !dbg !1927, !llvm.loop !1928

; <label>:95:                                     ; preds = %87
  br label %96, !dbg !1929

; <label>:96:                                     ; preds = %95, %79
  %97 = load i8*, i8** %5, align 8, !dbg !1930
  store i8* %97, i8** %4, align 8, !dbg !1931
  br label %98, !dbg !1931

; <label>:98:                                     ; preds = %96, %15
  %99 = load i8*, i8** %4, align 8, !dbg !1932
  ret i8* %99, !dbg !1932
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!720, !721}
!llvm.ident = !{!722}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !35, globals: !714)
!1 = !DIFile(filename: "line115-irc.o.i", directory: "/home/lichi/Desktop/irssi/task1")
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
!35 = !{!36, !37, !41, !43, !45, !52, !406, !710}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !39, line: 46, baseType: !40)
!39 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!40 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !46, line: 9, baseType: !47)
!46 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!48 = !DISubroutineType(types: !49)
!49 = !{null, !50, !50, !50, !50, !50, !50}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_REC", file: !54, line: 6, baseType: !55)
!54 = !DIFile(filename: "irc.h", directory: "/home/lichi/Desktop/irssi/task1")
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_REC", file: !56, line: 42, size: 39168, align: 64, elements: !57)
!56 = !DIFile(filename: "irc-servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!57 = !{!58, !61, !62, !63, !332, !337, !338, !339, !340, !341, !342, !343, !344, !345, !362, !363, !367, !368, !369, !379, !384, !385, !386, !387, !388, !389, !390, !391, !398, !399, !400, !401, !402, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !707, !709}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !55, file: !59, line: 3, baseType: !60, size: 32, align: 32)
!59 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!60 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !55, file: !59, line: 4, baseType: !60, size: 32, align: 32, offset: 32)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !55, file: !59, line: 6, baseType: !60, size: 32, align: 32, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !55, file: !59, line: 8, baseType: !64, size: 64, align: 64, offset: 128)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_CONNECT_REC", file: !54, line: 5, baseType: !66)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_CONNECT_REC", file: !56, line: 24, size: 2496, align: 64, elements: !67)
!67 = !{!68, !70, !71, !72, !73, !74, !75, !76, !77, !79, !80, !81, !82, !83, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !66, file: !69, line: 3, baseType: !60, size: 32, align: 32)
!69 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!70 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !66, file: !69, line: 4, baseType: !60, size: 32, align: 32, offset: 32)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !66, file: !69, line: 6, baseType: !60, size: 32, align: 32, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !66, file: !69, line: 9, baseType: !44, size: 64, align: 64, offset: 128)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !66, file: !69, line: 10, baseType: !60, size: 32, align: 32, offset: 192)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !66, file: !69, line: 11, baseType: !44, size: 64, align: 64, offset: 256)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !66, file: !69, line: 11, baseType: !44, size: 64, align: 64, offset: 320)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !66, file: !69, line: 11, baseType: !44, size: 64, align: 64, offset: 384)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !66, file: !69, line: 13, baseType: !78, size: 16, align: 16, offset: 448)
!78 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !66, file: !69, line: 14, baseType: !44, size: 64, align: 64, offset: 512)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !66, file: !69, line: 15, baseType: !44, size: 64, align: 64, offset: 576)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !66, file: !69, line: 16, baseType: !60, size: 32, align: 32, offset: 640)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !66, file: !69, line: 17, baseType: !44, size: 64, align: 64, offset: 704)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !66, file: !69, line: 19, baseType: !84, size: 64, align: 64, offset: 768)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !86, line: 99, baseType: !87)
!86 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !88, line: 22, size: 160, align: 32, elements: !89)
!88 = !DIFile(filename: "../../../src/core/network.h", directory: "/home/lichi/Desktop/irssi/task1")
!89 = !{!90, !91}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !87, file: !88, line: 23, baseType: !78, size: 16, align: 16)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !87, file: !88, line: 24, baseType: !92, size: 128, align: 32, offset: 32)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !93, line: 211, size: 128, align: 32, elements: !94)
!93 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/irssi/task1")
!94 = !{!95}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !92, file: !93, line: 220, baseType: !96, size: 128, align: 32)
!96 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !92, file: !93, line: 213, size: 128, align: 32, elements: !97)
!97 = !{!98, !105, !110}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !96, file: !93, line: 215, baseType: !99, size: 128, align: 8)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 128, align: 8, elements: !103)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !101, line: 48, baseType: !102)
!101 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/irssi/task1")
!102 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!103 = !{!104}
!104 = !DISubrange(count: 16)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !96, file: !93, line: 217, baseType: !106, size: 128, align: 16)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 128, align: 16, elements: !108)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !101, line: 49, baseType: !78)
!108 = !{!109}
!109 = !DISubrange(count: 8)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !96, file: !93, line: 218, baseType: !111, size: 128, align: 32)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 128, align: 32, elements: !114)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !101, line: 51, baseType: !113)
!113 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!114 = !{!115}
!115 = !DISubrange(count: 4)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !66, file: !69, line: 19, baseType: !84, size: 64, align: 64, offset: 832)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !66, file: !69, line: 21, baseType: !44, size: 64, align: 64, offset: 896)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !66, file: !69, line: 22, baseType: !44, size: 64, align: 64, offset: 960)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !66, file: !69, line: 23, baseType: !44, size: 64, align: 64, offset: 1024)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !66, file: !69, line: 24, baseType: !44, size: 64, align: 64, offset: 1088)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !66, file: !69, line: 26, baseType: !44, size: 64, align: 64, offset: 1152)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !66, file: !69, line: 27, baseType: !44, size: 64, align: 64, offset: 1216)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !66, file: !69, line: 28, baseType: !44, size: 64, align: 64, offset: 1280)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !66, file: !69, line: 29, baseType: !44, size: 64, align: 64, offset: 1344)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !66, file: !69, line: 30, baseType: !44, size: 64, align: 64, offset: 1408)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !66, file: !69, line: 31, baseType: !44, size: 64, align: 64, offset: 1472)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !66, file: !69, line: 32, baseType: !44, size: 64, align: 64, offset: 1536)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !66, file: !69, line: 33, baseType: !44, size: 64, align: 64, offset: 1600)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !66, file: !69, line: 35, baseType: !130, size: 64, align: 64, offset: 1664)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64, align: 64)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !132)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !133)
!133 = !{!134, !136, !277, !278, !283, !284, !285, !286, !287, !296, !297, !298, !302, !303, !304, !305, !306, !307, !308, !309}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !132, file: !4, line: 100, baseType: !135, size: 32, align: 32)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !39, line: 49, baseType: !60)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !132, file: !4, line: 101, baseType: !137, size: 64, align: 64, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64, align: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !139)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !140)
!140 = !{!141, !162, !168, !175, !179, !264, !268, !273}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !139, file: !4, line: 133, baseType: !142, size: 64, align: 64)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64, align: 64)
!143 = !DISubroutineType(types: !144)
!144 = !{!145, !130, !37, !146, !149, !150}
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !147, line: 66, baseType: !148)
!147 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!148 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64, align: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, align: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64, align: 64)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !153, line: 42, baseType: !154)
!153 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !153, line: 44, size: 128, align: 64, elements: !155)
!155 = !{!156, !160, !161}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !154, file: !153, line: 46, baseType: !157, size: 32, align: 32)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !158, line: 36, baseType: !159)
!158 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !147, line: 45, baseType: !113)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !154, file: !153, line: 47, baseType: !135, size: 32, align: 32, offset: 32)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !154, file: !153, line: 48, baseType: !37, size: 64, align: 64, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !139, file: !4, line: 138, baseType: !163, size: 64, align: 64, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64, align: 64)
!164 = !DISubroutineType(types: !165)
!165 = !{!145, !130, !166, !146, !149, !150}
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64, align: 64)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !139, file: !4, line: 143, baseType: !169, size: 64, align: 64, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64, align: 64)
!170 = !DISubroutineType(types: !171)
!171 = !{!145, !130, !172, !174, !150}
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !147, line: 51, baseType: !173)
!173 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !139, file: !4, line: 147, baseType: !176, size: 64, align: 64, offset: 192)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64, align: 64)
!177 = !DISubroutineType(types: !178)
!178 = !{!145, !130, !150}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !139, file: !4, line: 149, baseType: !180, size: 64, align: 64, offset: 256)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64, align: 64)
!181 = !DISubroutineType(types: !182)
!182 = !{!183, !130, !263}
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !185)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !186)
!186 = !{!187, !189, !210, !239, !241, !245, !246, !247, !248, !256, !257, !258, !259}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !185, file: !16, line: 174, baseType: !188, size: 64, align: 64)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !39, line: 77, baseType: !36)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !185, file: !16, line: 175, baseType: !190, size: 64, align: 64, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !192)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !193)
!193 = !{!194, !198, !199}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !192, file: !16, line: 198, baseType: !195, size: 64, align: 64)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64, align: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{null, !188}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !192, file: !16, line: 199, baseType: !195, size: 64, align: 64, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !192, file: !16, line: 200, baseType: !200, size: 64, align: 64, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64, align: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{null, !188, !183, !203, !209}
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64, align: 64)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64, align: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{!208, !188}
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !39, line: 50, baseType: !135)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64, align: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !185, file: !16, line: 177, baseType: !211, size: 64, align: 64, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64, align: 64)
!212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !214)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !215)
!215 = !{!216, !221, !225, !229, !233, !234}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !214, file: !16, line: 216, baseType: !217, size: 64, align: 64)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64, align: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{!208, !183, !220}
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !214, file: !16, line: 218, baseType: !222, size: 64, align: 64, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64, align: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{!208, !183}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !214, file: !16, line: 219, baseType: !226, size: 64, align: 64, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{!208, !183, !204, !188}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !214, file: !16, line: 222, baseType: !230, size: 64, align: 64, offset: 192)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64, align: 64)
!231 = !DISubroutineType(types: !232)
!232 = !{null, !183}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !214, file: !16, line: 226, baseType: !204, size: 64, align: 64, offset: 256)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !214, file: !16, line: 227, baseType: !235, size: 64, align: 64, offset: 320)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !236)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64, align: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{null}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !185, file: !16, line: 178, baseType: !240, size: 32, align: 32, offset: 192)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !39, line: 55, baseType: !113)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !185, file: !16, line: 180, baseType: !242, size: 64, align: 64, offset: 256)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64, align: 64)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !244)
!244 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !185, file: !16, line: 182, baseType: !135, size: 32, align: 32, offset: 320)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !185, file: !16, line: 183, baseType: !240, size: 32, align: 32, offset: 352)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !185, file: !16, line: 184, baseType: !240, size: 32, align: 32, offset: 384)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !185, file: !16, line: 186, baseType: !249, size: 64, align: 64, offset: 448)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64, align: 64)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !251, line: 37, baseType: !252)
!251 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !251, line: 39, size: 128, align: 64, elements: !253)
!253 = !{!254, !255}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !252, file: !251, line: 41, baseType: !188, size: 64, align: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !252, file: !251, line: 42, baseType: !249, size: 64, align: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !185, file: !16, line: 188, baseType: !183, size: 64, align: 64, offset: 512)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !185, file: !16, line: 189, baseType: !183, size: 64, align: 64, offset: 576)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !185, file: !16, line: 191, baseType: !44, size: 64, align: 64, offset: 640)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !185, file: !16, line: 193, baseType: !260, size: 64, align: 64, offset: 704)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !262)
!262 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !139, file: !4, line: 151, baseType: !265, size: 64, align: 64, offset: 320)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64, align: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{null, !130}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !139, file: !4, line: 152, baseType: !269, size: 64, align: 64, offset: 384)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64, align: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{!145, !130, !272, !150}
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !139, file: !4, line: 155, baseType: !274, size: 64, align: 64, offset: 448)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64, align: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{!272, !130}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !132, file: !4, line: 103, baseType: !37, size: 64, align: 64, offset: 128)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !132, file: !4, line: 104, baseType: !279, size: 64, align: 64, offset: 192)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !280, line: 77, baseType: !281)
!280 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64, align: 64)
!282 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !280, line: 77, flags: DIFlagFwdDecl)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !132, file: !4, line: 105, baseType: !279, size: 64, align: 64, offset: 256)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !132, file: !4, line: 106, baseType: !37, size: 64, align: 64, offset: 320)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !132, file: !4, line: 107, baseType: !240, size: 32, align: 32, offset: 384)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !132, file: !4, line: 109, baseType: !146, size: 64, align: 64, offset: 448)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !132, file: !4, line: 110, baseType: !288, size: 64, align: 64, offset: 512)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64, align: 64)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !290, line: 39, baseType: !291)
!290 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !290, line: 41, size: 192, align: 64, elements: !292)
!292 = !{!293, !294, !295}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !291, file: !290, line: 43, baseType: !37, size: 64, align: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !291, file: !290, line: 44, baseType: !146, size: 64, align: 64, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !291, file: !290, line: 45, baseType: !146, size: 64, align: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !132, file: !4, line: 111, baseType: !288, size: 64, align: 64, offset: 576)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !132, file: !4, line: 112, baseType: !288, size: 64, align: 64, offset: 640)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !132, file: !4, line: 113, baseType: !299, size: 48, align: 8, offset: 704)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 48, align: 8, elements: !300)
!300 = !{!301}
!301 = !DISubrange(count: 6)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !132, file: !4, line: 117, baseType: !240, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !132, file: !4, line: 118, baseType: !240, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !132, file: !4, line: 119, baseType: !240, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !132, file: !4, line: 120, baseType: !240, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !132, file: !4, line: 121, baseType: !240, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !132, file: !4, line: 122, baseType: !240, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !132, file: !4, line: 124, baseType: !188, size: 64, align: 64, offset: 768)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !132, file: !4, line: 125, baseType: !188, size: 64, align: 64, offset: 832)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !66, file: !69, line: 38, baseType: !113, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !66, file: !69, line: 39, baseType: !113, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !66, file: !69, line: 40, baseType: !113, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !66, file: !69, line: 41, baseType: !113, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !66, file: !69, line: 42, baseType: !113, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !66, file: !69, line: 43, baseType: !113, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !66, file: !69, line: 44, baseType: !113, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !66, file: !69, line: 45, baseType: !113, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !66, file: !69, line: 46, baseType: !44, size: 64, align: 64, offset: 1792)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !66, file: !69, line: 47, baseType: !44, size: 64, align: 64, offset: 1856)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !66, file: !56, line: 27, baseType: !44, size: 64, align: 64, offset: 1920)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_nick", scope: !66, file: !56, line: 28, baseType: !44, size: 64, align: 64, offset: 1984)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !66, file: !56, line: 30, baseType: !60, size: 32, align: 32, offset: 2048)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_username", scope: !66, file: !56, line: 31, baseType: !44, size: 64, align: 64, offset: 2112)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !66, file: !56, line: 32, baseType: !44, size: 64, align: 64, offset: 2176)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !66, file: !56, line: 34, baseType: !60, size: 32, align: 32, offset: 2240)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !66, file: !56, line: 35, baseType: !60, size: 32, align: 32, offset: 2272)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !66, file: !56, line: 36, baseType: !60, size: 32, align: 32, offset: 2304)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks", scope: !66, file: !56, line: 38, baseType: !60, size: 32, align: 32, offset: 2336)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !66, file: !56, line: 38, baseType: !60, size: 32, align: 32, offset: 2368)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes", scope: !66, file: !56, line: 38, baseType: !60, size: 32, align: 32, offset: 2400)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois", scope: !66, file: !56, line: 38, baseType: !60, size: 32, align: 32, offset: 2432)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !55, file: !59, line: 9, baseType: !333, size: 64, align: 64, offset: 192)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !334, line: 75, baseType: !335)
!334 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !336, line: 139, baseType: !173)
!336 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!337 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !55, file: !59, line: 10, baseType: !333, size: 64, align: 64, offset: 256)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !55, file: !59, line: 12, baseType: !44, size: 64, align: 64, offset: 320)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !55, file: !59, line: 13, baseType: !44, size: 64, align: 64, offset: 384)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !55, file: !59, line: 15, baseType: !113, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !55, file: !59, line: 16, baseType: !113, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !55, file: !59, line: 17, baseType: !113, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !55, file: !59, line: 18, baseType: !113, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !55, file: !59, line: 19, baseType: !113, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !55, file: !59, line: 21, baseType: !346, size: 64, align: 64, offset: 512)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64, align: 64)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !86, line: 102, baseType: !348)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !349, line: 7, size: 384, align: 64, elements: !350)
!349 = !DIFile(filename: "../../../src/core/net-sendbuffer.h", directory: "/home/lichi/Desktop/irssi/task1")
!350 = !{!351, !352, !356, !357, !358, !359, !360, !361}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !348, file: !349, line: 8, baseType: !130, size: 64, align: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "readbuffer", scope: !348, file: !349, line: 9, baseType: !353, size: 64, align: 64, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64, align: 64)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "LINEBUF_REC", file: !86, line: 101, baseType: !355)
!355 = !DICompositeType(tag: DW_TAG_structure_type, name: "_LINEBUF_REC", file: !86, line: 101, flags: DIFlagFwdDecl)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "send_tag", scope: !348, file: !349, line: 11, baseType: !60, size: 32, align: 32, offset: 128)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "bufsize", scope: !348, file: !349, line: 12, baseType: !60, size: 32, align: 32, offset: 160)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !348, file: !349, line: 13, baseType: !60, size: 32, align: 32, offset: 192)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !348, file: !349, line: 14, baseType: !44, size: 64, align: 64, offset: 256)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "def_bufsize", scope: !348, file: !349, line: 15, baseType: !60, size: 32, align: 32, offset: 320)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !348, file: !349, line: 16, baseType: !113, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !55, file: !59, line: 22, baseType: !60, size: 32, align: 32, offset: 576)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !55, file: !59, line: 25, baseType: !364, size: 128, align: 64, offset: 640)
!364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 128, align: 64, elements: !365)
!365 = !{!366}
!366 = !DISubrange(count: 2)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !55, file: !59, line: 26, baseType: !60, size: 32, align: 32, offset: 768)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !55, file: !59, line: 27, baseType: !60, size: 32, align: 32, offset: 800)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !55, file: !59, line: 29, baseType: !370, size: 64, align: 64, offset: 832)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64, align: 64)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !86, line: 103, baseType: !372)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !373, line: 4, size: 192, align: 64, elements: !374)
!373 = !DIFile(filename: "../../../src/core/rawlog.h", directory: "/home/lichi/Desktop/irssi/task1")
!374 = !{!375, !376, !377, !378}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "logging", scope: !372, file: !373, line: 5, baseType: !60, size: 32, align: 32)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !372, file: !373, line: 6, baseType: !60, size: 32, align: 32, offset: 32)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "nlines", scope: !372, file: !373, line: 8, baseType: !60, size: 32, align: 32, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "lines", scope: !372, file: !373, line: 9, baseType: !249, size: 64, align: 64, offset: 128)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !55, file: !59, line: 30, baseType: !380, size: 64, align: 64, offset: 896)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64, align: 64)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !382, line: 37, baseType: !383)
!382 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!383 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !382, line: 37, flags: DIFlagFwdDecl)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !55, file: !59, line: 32, baseType: !44, size: 64, align: 64, offset: 960)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !55, file: !59, line: 33, baseType: !44, size: 64, align: 64, offset: 1024)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !55, file: !59, line: 34, baseType: !44, size: 64, align: 64, offset: 1088)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !55, file: !59, line: 35, baseType: !113, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !55, file: !59, line: 36, baseType: !113, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !55, file: !59, line: 37, baseType: !113, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !55, file: !59, line: 38, baseType: !113, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !55, file: !59, line: 40, baseType: !392, size: 128, align: 64, offset: 1216)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !39, line: 504, baseType: !393)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !39, line: 506, size: 128, align: 64, elements: !394)
!394 = !{!395, !397}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !393, file: !39, line: 508, baseType: !396, size: 64, align: 64)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !39, line: 48, baseType: !173)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !393, file: !39, line: 509, baseType: !396, size: 64, align: 64, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !55, file: !59, line: 41, baseType: !333, size: 64, align: 64, offset: 1344)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !55, file: !59, line: 42, baseType: !60, size: 32, align: 32, offset: 1408)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !55, file: !59, line: 44, baseType: !249, size: 64, align: 64, offset: 1472)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !55, file: !59, line: 45, baseType: !249, size: 64, align: 64, offset: 1536)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !55, file: !59, line: 53, baseType: !403, size: 64, align: 64, offset: 1600)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64, align: 64)
!404 = !DISubroutineType(types: !405)
!405 = !{null, !406, !41, !60}
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64, align: 64)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !86, line: 107, baseType: !408)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !409, line: 30, size: 2240, align: 64, elements: !410)
!409 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!410 = !{!411, !412, !413, !414, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !490, !494, !498, !502, !506, !583, !590, !594}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !408, file: !59, line: 3, baseType: !60, size: 32, align: 32)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !408, file: !59, line: 4, baseType: !60, size: 32, align: 32, offset: 32)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !408, file: !59, line: 6, baseType: !60, size: 32, align: 32, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !408, file: !59, line: 8, baseType: !415, size: 64, align: 64, offset: 128)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64, align: 64)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !86, line: 113, baseType: !417)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !409, line: 25, size: 1920, align: 64, elements: !418)
!418 = !{!419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !417, file: !69, line: 3, baseType: !60, size: 32, align: 32)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !417, file: !69, line: 4, baseType: !60, size: 32, align: 32, offset: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !417, file: !69, line: 6, baseType: !60, size: 32, align: 32, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !417, file: !69, line: 9, baseType: !44, size: 64, align: 64, offset: 128)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !417, file: !69, line: 10, baseType: !60, size: 32, align: 32, offset: 192)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !417, file: !69, line: 11, baseType: !44, size: 64, align: 64, offset: 256)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !417, file: !69, line: 11, baseType: !44, size: 64, align: 64, offset: 320)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !417, file: !69, line: 11, baseType: !44, size: 64, align: 64, offset: 384)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !417, file: !69, line: 13, baseType: !78, size: 16, align: 16, offset: 448)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !417, file: !69, line: 14, baseType: !44, size: 64, align: 64, offset: 512)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !417, file: !69, line: 15, baseType: !44, size: 64, align: 64, offset: 576)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !417, file: !69, line: 16, baseType: !60, size: 32, align: 32, offset: 640)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !417, file: !69, line: 17, baseType: !44, size: 64, align: 64, offset: 704)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !417, file: !69, line: 19, baseType: !84, size: 64, align: 64, offset: 768)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !417, file: !69, line: 19, baseType: !84, size: 64, align: 64, offset: 832)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !417, file: !69, line: 21, baseType: !44, size: 64, align: 64, offset: 896)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !417, file: !69, line: 22, baseType: !44, size: 64, align: 64, offset: 960)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !417, file: !69, line: 23, baseType: !44, size: 64, align: 64, offset: 1024)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !417, file: !69, line: 24, baseType: !44, size: 64, align: 64, offset: 1088)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !417, file: !69, line: 26, baseType: !44, size: 64, align: 64, offset: 1152)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !417, file: !69, line: 27, baseType: !44, size: 64, align: 64, offset: 1216)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !417, file: !69, line: 28, baseType: !44, size: 64, align: 64, offset: 1280)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !417, file: !69, line: 29, baseType: !44, size: 64, align: 64, offset: 1344)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !417, file: !69, line: 30, baseType: !44, size: 64, align: 64, offset: 1408)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !417, file: !69, line: 31, baseType: !44, size: 64, align: 64, offset: 1472)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !417, file: !69, line: 32, baseType: !44, size: 64, align: 64, offset: 1536)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !417, file: !69, line: 33, baseType: !44, size: 64, align: 64, offset: 1600)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !417, file: !69, line: 35, baseType: !130, size: 64, align: 64, offset: 1664)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !417, file: !69, line: 38, baseType: !113, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !417, file: !69, line: 39, baseType: !113, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !417, file: !69, line: 40, baseType: !113, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !417, file: !69, line: 41, baseType: !113, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !417, file: !69, line: 42, baseType: !113, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !417, file: !69, line: 43, baseType: !113, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !417, file: !69, line: 44, baseType: !113, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !417, file: !69, line: 45, baseType: !113, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !417, file: !69, line: 46, baseType: !44, size: 64, align: 64, offset: 1792)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !417, file: !69, line: 47, baseType: !44, size: 64, align: 64, offset: 1856)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !408, file: !59, line: 9, baseType: !333, size: 64, align: 64, offset: 192)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !408, file: !59, line: 10, baseType: !333, size: 64, align: 64, offset: 256)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !408, file: !59, line: 12, baseType: !44, size: 64, align: 64, offset: 320)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !408, file: !59, line: 13, baseType: !44, size: 64, align: 64, offset: 384)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !408, file: !59, line: 15, baseType: !113, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !408, file: !59, line: 16, baseType: !113, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !408, file: !59, line: 17, baseType: !113, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !408, file: !59, line: 18, baseType: !113, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !408, file: !59, line: 19, baseType: !113, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !408, file: !59, line: 21, baseType: !346, size: 64, align: 64, offset: 512)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !408, file: !59, line: 22, baseType: !60, size: 32, align: 32, offset: 576)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !408, file: !59, line: 25, baseType: !364, size: 128, align: 64, offset: 640)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !408, file: !59, line: 26, baseType: !60, size: 32, align: 32, offset: 768)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !408, file: !59, line: 27, baseType: !60, size: 32, align: 32, offset: 800)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !408, file: !59, line: 29, baseType: !370, size: 64, align: 64, offset: 832)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !408, file: !59, line: 30, baseType: !380, size: 64, align: 64, offset: 896)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !408, file: !59, line: 32, baseType: !44, size: 64, align: 64, offset: 960)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !408, file: !59, line: 33, baseType: !44, size: 64, align: 64, offset: 1024)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !408, file: !59, line: 34, baseType: !44, size: 64, align: 64, offset: 1088)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !408, file: !59, line: 35, baseType: !113, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !408, file: !59, line: 36, baseType: !113, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !408, file: !59, line: 37, baseType: !113, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !408, file: !59, line: 38, baseType: !113, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !408, file: !59, line: 40, baseType: !392, size: 128, align: 64, offset: 1216)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !408, file: !59, line: 41, baseType: !333, size: 64, align: 64, offset: 1344)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !408, file: !59, line: 42, baseType: !60, size: 32, align: 32, offset: 1408)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !408, file: !59, line: 44, baseType: !249, size: 64, align: 64, offset: 1472)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !408, file: !59, line: 45, baseType: !249, size: 64, align: 64, offset: 1536)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !408, file: !59, line: 53, baseType: !403, size: 64, align: 64, offset: 1600)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !408, file: !59, line: 55, baseType: !487, size: 64, align: 64, offset: 1664)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64, align: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!60, !406, !40}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !408, file: !59, line: 57, baseType: !491, size: 64, align: 64, offset: 1728)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64, align: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{!60, !406, !41}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !408, file: !59, line: 60, baseType: !495, size: 64, align: 64, offset: 1792)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64, align: 64)
!496 = !DISubroutineType(types: !497)
!497 = !{!41, !406}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !408, file: !59, line: 62, baseType: !499, size: 64, align: 64, offset: 1856)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64, align: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{null, !406, !41, !41, !60}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !408, file: !59, line: 65, baseType: !503, size: 64, align: 64, offset: 1920)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64, align: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!43, !406, !41, !41}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !408, file: !59, line: 69, baseType: !507, size: 64, align: 64, offset: 1984)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64, align: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{!510, !406, !41}
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64, align: 64)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !86, line: 109, baseType: !512)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !513, line: 15, size: 1408, align: 64, elements: !514)
!513 = !DIFile(filename: "../../../src/core/channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!514 = !{!515, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !533, !537, !539, !540, !541, !542, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !512, file: !516, line: 3, baseType: !60, size: 32, align: 32)
!516 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!517 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !512, file: !516, line: 4, baseType: !60, size: 32, align: 32, offset: 32)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !512, file: !516, line: 5, baseType: !380, size: 64, align: 64, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !512, file: !516, line: 7, baseType: !36, size: 64, align: 64, offset: 128)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !512, file: !516, line: 8, baseType: !406, size: 64, align: 64, offset: 192)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !512, file: !516, line: 9, baseType: !44, size: 64, align: 64, offset: 256)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !512, file: !516, line: 10, baseType: !44, size: 64, align: 64, offset: 320)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !512, file: !516, line: 11, baseType: !333, size: 64, align: 64, offset: 384)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !512, file: !516, line: 12, baseType: !60, size: 32, align: 32, offset: 448)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !512, file: !516, line: 13, baseType: !44, size: 64, align: 64, offset: 512)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !512, file: !516, line: 15, baseType: !527, size: 64, align: 64, offset: 576)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64, align: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{null, !530}
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64, align: 64)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !86, line: 108, baseType: !532)
!532 = !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !86, line: 108, flags: DIFlagFwdDecl)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !512, file: !516, line: 17, baseType: !534, size: 64, align: 64, offset: 640)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64, align: 64)
!535 = !DISubroutineType(types: !536)
!536 = !{!41, !530}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !512, file: !538, line: 5, baseType: !44, size: 64, align: 64, offset: 704)
!538 = !DIFile(filename: "../../../src/core/channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!539 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !512, file: !538, line: 6, baseType: !44, size: 64, align: 64, offset: 768)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !512, file: !538, line: 7, baseType: !333, size: 64, align: 64, offset: 832)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !512, file: !538, line: 9, baseType: !380, size: 64, align: 64, offset: 896)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !512, file: !538, line: 10, baseType: !543, size: 64, align: 64, offset: 960)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64, align: 64)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !86, line: 111, baseType: !545)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !546, line: 13, size: 576, align: 64, elements: !547)
!546 = !DIFile(filename: "../../../src/core/nicklist.h", directory: "/home/lichi/Desktop/irssi/task1")
!547 = !{!548, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !564, !565}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !545, file: !549, line: 3, baseType: !60, size: 32, align: 32)
!549 = !DIFile(filename: "../../../src/core/nick-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!550 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !545, file: !549, line: 4, baseType: !60, size: 32, align: 32, offset: 32)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "last_check", scope: !545, file: !549, line: 6, baseType: !333, size: 64, align: 64, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !545, file: !549, line: 8, baseType: !44, size: 64, align: 64, offset: 128)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !545, file: !549, line: 9, baseType: !44, size: 64, align: 64, offset: 192)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !545, file: !549, line: 10, baseType: !44, size: 64, align: 64, offset: 256)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "hops", scope: !545, file: !549, line: 11, baseType: !60, size: 32, align: 32, offset: 320)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "gone", scope: !545, file: !549, line: 14, baseType: !113, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "serverop", scope: !545, file: !549, line: 15, baseType: !113, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "send_massjoin", scope: !545, file: !549, line: 18, baseType: !113, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !545, file: !549, line: 19, baseType: !113, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !545, file: !549, line: 20, baseType: !113, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !545, file: !549, line: 21, baseType: !113, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !545, file: !549, line: 22, baseType: !563, size: 64, align: 8, offset: 360)
!563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 64, align: 8, elements: !108)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !545, file: !549, line: 26, baseType: !36, size: 64, align: 64, offset: 448)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !545, file: !549, line: 28, baseType: !543, size: 64, align: 64, offset: 512)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !512, file: !538, line: 12, baseType: !113, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !512, file: !538, line: 13, baseType: !44, size: 64, align: 64, offset: 1088)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !512, file: !538, line: 14, baseType: !60, size: 32, align: 32, offset: 1152)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !512, file: !538, line: 15, baseType: !44, size: 64, align: 64, offset: 1216)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !512, file: !538, line: 17, baseType: !113, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !512, file: !538, line: 18, baseType: !113, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !512, file: !538, line: 19, baseType: !113, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !512, file: !538, line: 20, baseType: !113, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !512, file: !538, line: 22, baseType: !113, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !512, file: !538, line: 23, baseType: !113, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !512, file: !538, line: 24, baseType: !113, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !512, file: !538, line: 25, baseType: !113, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !512, file: !538, line: 26, baseType: !113, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !512, file: !538, line: 31, baseType: !580, size: 64, align: 64, offset: 1344)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64, align: 64)
!581 = !DISubroutineType(types: !582)
!582 = !{!44, !510}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !408, file: !59, line: 70, baseType: !584, size: 64, align: 64, offset: 2048)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64, align: 64)
!585 = !DISubroutineType(types: !586)
!586 = !{!587, !406, !41}
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64, align: 64)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !86, line: 110, baseType: !589)
!589 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !86, line: 110, flags: DIFlagFwdDecl)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !408, file: !59, line: 71, baseType: !591, size: 64, align: 64, offset: 2112)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64, align: 64)
!592 = !DISubroutineType(types: !593)
!593 = !{!60, !41, !41}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !408, file: !59, line: 73, baseType: !591, size: 64, align: 64, offset: 2176)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !55, file: !59, line: 55, baseType: !487, size: 64, align: 64, offset: 1664)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !55, file: !59, line: 57, baseType: !491, size: 64, align: 64, offset: 1728)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !55, file: !59, line: 60, baseType: !495, size: 64, align: 64, offset: 1792)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !55, file: !59, line: 62, baseType: !499, size: 64, align: 64, offset: 1856)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !55, file: !59, line: 65, baseType: !503, size: 64, align: 64, offset: 1920)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !55, file: !59, line: 69, baseType: !507, size: 64, align: 64, offset: 1984)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !55, file: !59, line: 70, baseType: !584, size: 64, align: 64, offset: 2048)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !55, file: !59, line: 71, baseType: !591, size: 64, align: 64, offset: 2112)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !55, file: !59, line: 73, baseType: !591, size: 64, align: 64, offset: 2176)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "redirects", scope: !55, file: !56, line: 46, baseType: !249, size: 64, align: 64, offset: 2240)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_queue", scope: !55, file: !56, line: 47, baseType: !249, size: 64, align: 64, offset: 2304)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_next", scope: !55, file: !56, line: 48, baseType: !607, size: 64, align: 64, offset: 2368)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64, align: 64)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "REDIRECT_REC", file: !54, line: 8, baseType: !609)
!609 = !DICompositeType(tag: DW_TAG_structure_type, name: "_REDIRECT_REC", file: !54, line: 8, flags: DIFlagFwdDecl)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_active", scope: !55, file: !56, line: 49, baseType: !249, size: 64, align: 64, offset: 2432)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "last_nick", scope: !55, file: !56, line: 51, baseType: !44, size: 64, align: 64, offset: 2496)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !55, file: !56, line: 53, baseType: !44, size: 64, align: 64, offset: 2560)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !55, file: !56, line: 54, baseType: !44, size: 64, align: 64, offset: 2624)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "wanted_usermode", scope: !55, file: !56, line: 55, baseType: !44, size: 64, align: 64, offset: 2688)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "userhost", scope: !55, file: !56, line: 56, baseType: !44, size: 64, align: 64, offset: 2752)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "channels_formed", scope: !55, file: !56, line: 57, baseType: !60, size: 32, align: 32, offset: 2816)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "whois_found", scope: !55, file: !56, line: 59, baseType: !113, size: 1, align: 32, offset: 2848, flags: DIFlagBitField, extraData: i64 2848)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "whowas_found", scope: !55, file: !56, line: 60, baseType: !113, size: 1, align: 32, offset: 2849, flags: DIFlagBitField, extraData: i64 2848)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "emode_known", scope: !55, file: !56, line: 62, baseType: !113, size: 1, align: 32, offset: 2850, flags: DIFlagBitField, extraData: i64 2848)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_mode", scope: !55, file: !56, line: 63, baseType: !113, size: 1, align: 32, offset: 2851, flags: DIFlagBitField, extraData: i64 2848)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_who", scope: !55, file: !56, line: 64, baseType: !113, size: 1, align: 32, offset: 2852, flags: DIFlagBitField, extraData: i64 2848)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "one_endofwho", scope: !55, file: !56, line: 65, baseType: !113, size: 1, align: 32, offset: 2853, flags: DIFlagBitField, extraData: i64 2848)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "disable_lag", scope: !55, file: !56, line: 66, baseType: !113, size: 1, align: 32, offset: 2854, flags: DIFlagBitField, extraData: i64 2848)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "nick_collision", scope: !55, file: !56, line: 67, baseType: !113, size: 1, align: 32, offset: 2855, flags: DIFlagBitField, extraData: i64 2848)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "motd_got", scope: !55, file: !56, line: 68, baseType: !113, size: 1, align: 32, offset: 2856, flags: DIFlagBitField, extraData: i64 2848)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "isupport_sent", scope: !55, file: !56, line: 69, baseType: !113, size: 1, align: 32, offset: 2857, flags: DIFlagBitField, extraData: i64 2848)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "cap_complete", scope: !55, file: !56, line: 70, baseType: !113, size: 1, align: 32, offset: 2858, flags: DIFlagBitField, extraData: i64 2848)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "cap_in_multiline", scope: !55, file: !56, line: 71, baseType: !113, size: 1, align: 32, offset: 2859, flags: DIFlagBitField, extraData: i64 2848)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_success", scope: !55, file: !56, line: 72, baseType: !113, size: 1, align: 32, offset: 2860, flags: DIFlagBitField, extraData: i64 2848)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks_in_cmd", scope: !55, file: !56, line: 74, baseType: !60, size: 32, align: 32, offset: 2880)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes_in_cmd", scope: !55, file: !56, line: 75, baseType: !60, size: 32, align: 32, offset: 2912)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois_in_cmd", scope: !55, file: !56, line: 76, baseType: !60, size: 32, align: 32, offset: 2944)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs_in_cmd", scope: !55, file: !56, line: 77, baseType: !60, size: 32, align: 32, offset: 2976)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "cap_supported", scope: !55, file: !56, line: 79, baseType: !380, size: 64, align: 64, offset: 3008)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "cap_active", scope: !55, file: !56, line: 80, baseType: !249, size: 64, align: 64, offset: 3072)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "cap_queue", scope: !55, file: !56, line: 81, baseType: !249, size: 64, align: 64, offset: 3136)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_buffer", scope: !55, file: !56, line: 83, baseType: !288, size: 64, align: 64, offset: 3200)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_timeout", scope: !55, file: !56, line: 84, baseType: !240, size: 32, align: 32, offset: 3264)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcount", scope: !55, file: !56, line: 87, baseType: !60, size: 32, align: 32, offset: 3296)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "cmdqueue", scope: !55, file: !56, line: 91, baseType: !249, size: 64, align: 64, offset: 3328)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "wait_cmd", scope: !55, file: !56, line: 92, baseType: !392, size: 128, align: 64, offset: 3392)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd", scope: !55, file: !56, line: 93, baseType: !392, size: 128, align: 64, offset: 3520)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !55, file: !56, line: 95, baseType: !60, size: 32, align: 32, offset: 3648)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !55, file: !56, line: 96, baseType: !60, size: 32, align: 32, offset: 3680)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !55, file: !56, line: 97, baseType: !60, size: 32, align: 32, offset: 3712)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "idles", scope: !55, file: !56, line: 100, baseType: !249, size: 64, align: 64, offset: 3776)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "ctcpqueue", scope: !55, file: !56, line: 103, baseType: !249, size: 64, align: 64, offset: 3840)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "knockoutlist", scope: !55, file: !56, line: 106, baseType: !249, size: 64, align: 64, offset: 3904)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "splits", scope: !55, file: !56, line: 108, baseType: !380, size: 64, align: 64, offset: 3968)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "split_servers", scope: !55, file: !56, line: 109, baseType: !249, size: 64, align: 64, offset: 4032)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "rejoin_channels", scope: !55, file: !56, line: 111, baseType: !249, size: 64, align: 64, offset: 4096)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "chanqueries", scope: !55, file: !56, line: 114, baseType: !36, size: 64, align: 64, offset: 4160)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "isupport", scope: !55, file: !56, line: 116, baseType: !380, size: 64, align: 64, offset: 4224)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !55, file: !56, line: 117, baseType: !655, size: 32768, align: 64, offset: 4288)
!655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !656, size: 32768, align: 64, elements: !705)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "modes_type", file: !657, line: 10, size: 128, align: 64, elements: !658)
!657 = !DIFile(filename: "modes.h", directory: "/home/lichi/Desktop/irssi/task1")
!658 = !{!659, !704}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !656, file: !657, line: 11, baseType: !660, size: 64, align: 64)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64, align: 64)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_func_t", file: !657, line: 7, baseType: !662)
!662 = !DISubroutineType(types: !663)
!663 = !{null, !664, !41, !40, !40, !44, !288}
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64, align: 64)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_CHANNEL_REC", file: !54, line: 7, baseType: !666)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_CHANNEL_REC", file: !667, line: 15, size: 1600, align: 64, elements: !668)
!667 = !DIFile(filename: "irc-channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!668 = !{!669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !666, file: !516, line: 3, baseType: !60, size: 32, align: 32)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !666, file: !516, line: 4, baseType: !60, size: 32, align: 32, offset: 32)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !666, file: !516, line: 5, baseType: !380, size: 64, align: 64, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !666, file: !516, line: 7, baseType: !36, size: 64, align: 64, offset: 128)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !666, file: !516, line: 8, baseType: !52, size: 64, align: 64, offset: 192)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !666, file: !516, line: 9, baseType: !44, size: 64, align: 64, offset: 256)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !666, file: !516, line: 10, baseType: !44, size: 64, align: 64, offset: 320)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !666, file: !516, line: 11, baseType: !333, size: 64, align: 64, offset: 384)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !666, file: !516, line: 12, baseType: !60, size: 32, align: 32, offset: 448)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !666, file: !516, line: 13, baseType: !44, size: 64, align: 64, offset: 512)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !666, file: !516, line: 15, baseType: !527, size: 64, align: 64, offset: 576)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !666, file: !516, line: 17, baseType: !534, size: 64, align: 64, offset: 640)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !666, file: !538, line: 5, baseType: !44, size: 64, align: 64, offset: 704)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !666, file: !538, line: 6, baseType: !44, size: 64, align: 64, offset: 768)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !666, file: !538, line: 7, baseType: !333, size: 64, align: 64, offset: 832)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !666, file: !538, line: 9, baseType: !380, size: 64, align: 64, offset: 896)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !666, file: !538, line: 10, baseType: !543, size: 64, align: 64, offset: 960)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !666, file: !538, line: 12, baseType: !113, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !666, file: !538, line: 13, baseType: !44, size: 64, align: 64, offset: 1088)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !666, file: !538, line: 14, baseType: !60, size: 32, align: 32, offset: 1152)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !666, file: !538, line: 15, baseType: !44, size: 64, align: 64, offset: 1216)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !666, file: !538, line: 17, baseType: !113, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !666, file: !538, line: 18, baseType: !113, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !666, file: !538, line: 19, baseType: !113, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !666, file: !538, line: 20, baseType: !113, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !666, file: !538, line: 22, baseType: !113, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !666, file: !538, line: 23, baseType: !113, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !666, file: !538, line: 24, baseType: !113, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !666, file: !538, line: 25, baseType: !113, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !666, file: !538, line: 26, baseType: !113, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !666, file: !538, line: 31, baseType: !580, size: 64, align: 64, offset: 1344)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "banlist", scope: !666, file: !667, line: 18, baseType: !249, size: 64, align: 64, offset: 1408)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "massjoin_start", scope: !666, file: !667, line: 20, baseType: !333, size: 64, align: 64, offset: 1472)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "massjoins", scope: !666, file: !667, line: 21, baseType: !60, size: 32, align: 32, offset: 1536)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "last_massjoins", scope: !666, file: !667, line: 22, baseType: !60, size: 32, align: 32, offset: 1568)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !656, file: !657, line: 12, baseType: !40, size: 8, align: 8, offset: 64)
!705 = !{!706}
!706 = !DISubrange(count: 256)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !55, file: !56, line: 118, baseType: !708, size: 2048, align: 8, offset: 37056)
!708 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 2048, align: 8, elements: !705)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "nick_comp_func", scope: !55, file: !56, line: 120, baseType: !591, size: 64, align: 64, offset: 39104)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "GInputFunction", file: !86, line: 60, baseType: !711)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64, align: 64)
!712 = !DISubroutineType(types: !713)
!713 = !{null, !36, !130, !60}
!714 = !{!715, !717, !718, !719}
!715 = distinct !DIGlobalVariable(name: "current_server_event", scope: !0, file: !716, line: 32, type: !44, isLocal: false, isDefinition: true, variable: i8** @current_server_event)
!716 = !DIFile(filename: "irc.c", directory: "/home/lichi/Desktop/irssi/task1")
!717 = distinct !DIGlobalVariable(name: "signal_default_event", scope: !0, file: !716, line: 33, type: !60, isLocal: true, isDefinition: true, variable: i32* @signal_default_event)
!718 = distinct !DIGlobalVariable(name: "signal_server_event", scope: !0, file: !716, line: 34, type: !60, isLocal: true, isDefinition: true, variable: i32* @signal_server_event)
!719 = distinct !DIGlobalVariable(name: "signal_server_incoming", scope: !0, file: !716, line: 35, type: !60, isLocal: true, isDefinition: true, variable: i32* @signal_server_incoming)
!720 = !{i32 2, !"Dwarf Version", i32 4}
!721 = !{i32 2, !"Debug Info Version", i32 3}
!722 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!723 = distinct !DISubprogram(name: "irc_send_cmd_full", scope: !716, file: !716, line: 48, type: !724, isLocal: false, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !726)
!724 = !DISubroutineType(types: !725)
!725 = !{null, !52, !41, !60, !60, !60}
!726 = !{}
!727 = !DILocalVariable(name: "server", arg: 1, scope: !723, file: !716, line: 48, type: !52)
!728 = !DIExpression()
!729 = !DILocation(line: 48, column: 40, scope: !723)
!730 = !DILocalVariable(name: "cmd", arg: 2, scope: !723, file: !716, line: 48, type: !41)
!731 = !DILocation(line: 48, column: 60, scope: !723)
!732 = !DILocalVariable(name: "send_now", arg: 3, scope: !723, file: !716, line: 49, type: !60)
!733 = !DILocation(line: 49, column: 14, scope: !723)
!734 = !DILocalVariable(name: "immediate", arg: 4, scope: !723, file: !716, line: 49, type: !60)
!735 = !DILocation(line: 49, column: 28, scope: !723)
!736 = !DILocalVariable(name: "raw", arg: 5, scope: !723, file: !716, line: 49, type: !60)
!737 = !DILocation(line: 49, column: 43, scope: !723)
!738 = !DILocalVariable(name: "str", scope: !723, file: !716, line: 51, type: !739)
!739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 4104, align: 8, elements: !740)
!740 = !{!741}
!741 = !DISubrange(count: 513)
!742 = !DILocation(line: 51, column: 7, scope: !723)
!743 = !DILocalVariable(name: "len", scope: !723, file: !716, line: 52, type: !60)
!744 = !DILocation(line: 52, column: 6, scope: !723)
!745 = !DILocation(line: 54, column: 2, scope: !723)
!746 = distinct !{!746, !745}
!747 = !DILocation(line: 54, column: 10, scope: !748)
!748 = !DILexicalBlockFile(scope: !749, file: !716, discriminator: 1)
!749 = distinct !DILexicalBlock(scope: !750, file: !716, line: 54, column: 10)
!750 = distinct !DILexicalBlock(scope: !723, file: !716, line: 54, column: 4)
!751 = !DILocation(line: 54, column: 17, scope: !748)
!752 = !DILocation(line: 54, column: 5, scope: !753)
!753 = !DILexicalBlockFile(scope: !754, file: !716, discriminator: 2)
!754 = distinct !DILexicalBlock(scope: !749, file: !716, line: 54, column: 3)
!755 = !DILocation(line: 54, column: 14, scope: !756)
!756 = !DILexicalBlockFile(scope: !757, file: !716, discriminator: 3)
!757 = distinct !DILexicalBlock(scope: !749, file: !716, line: 54, column: 12)
!758 = !DILocation(line: 54, column: 101, scope: !756)
!759 = !DILocation(line: 54, column: 112, scope: !760)
!760 = !DILexicalBlockFile(scope: !750, file: !716, discriminator: 4)
!761 = !DILocation(line: 55, column: 2, scope: !723)
!762 = distinct !{!762, !761}
!763 = !DILocation(line: 55, column: 10, scope: !764)
!764 = !DILexicalBlockFile(scope: !765, file: !716, discriminator: 1)
!765 = distinct !DILexicalBlock(scope: !766, file: !716, line: 55, column: 10)
!766 = distinct !DILexicalBlock(scope: !723, file: !716, line: 55, column: 4)
!767 = !DILocation(line: 55, column: 14, scope: !764)
!768 = !DILocation(line: 55, column: 5, scope: !769)
!769 = !DILexicalBlockFile(scope: !770, file: !716, discriminator: 2)
!770 = distinct !DILexicalBlock(scope: !765, file: !716, line: 55, column: 3)
!771 = !DILocation(line: 55, column: 14, scope: !772)
!772 = !DILexicalBlockFile(scope: !773, file: !716, discriminator: 3)
!773 = distinct !DILexicalBlock(scope: !765, file: !716, line: 55, column: 12)
!774 = !DILocation(line: 55, column: 98, scope: !772)
!775 = !DILocation(line: 55, column: 109, scope: !776)
!776 = !DILexicalBlockFile(scope: !766, file: !716, discriminator: 4)
!777 = !DILocation(line: 57, column: 6, scope: !778)
!778 = distinct !DILexicalBlock(scope: !723, file: !716, line: 57, column: 6)
!779 = !DILocation(line: 57, column: 14, scope: !778)
!780 = !DILocation(line: 57, column: 6, scope: !723)
!781 = !DILocation(line: 58, column: 3, scope: !778)
!782 = !DILocation(line: 60, column: 15, scope: !723)
!783 = !DILocation(line: 60, column: 8, scope: !723)
!784 = !DILocation(line: 60, column: 6, scope: !723)
!785 = !DILocation(line: 61, column: 6, scope: !786)
!786 = distinct !DILexicalBlock(scope: !723, file: !716, line: 61, column: 6)
!787 = !DILocation(line: 61, column: 14, scope: !786)
!788 = !DILocation(line: 61, column: 23, scope: !786)
!789 = !DILocation(line: 61, column: 6, scope: !723)
!790 = !DILocation(line: 62, column: 3, scope: !786)
!791 = !DILocation(line: 63, column: 2, scope: !723)
!792 = !DILocation(line: 63, column: 10, scope: !723)
!793 = !DILocation(line: 63, column: 18, scope: !723)
!794 = !DILocation(line: 65, column: 7, scope: !795)
!795 = distinct !DILexicalBlock(scope: !723, file: !716, line: 65, column: 6)
!796 = !DILocation(line: 65, column: 6, scope: !723)
!797 = !DILocation(line: 68, column: 11, scope: !798)
!798 = distinct !DILexicalBlock(scope: !795, file: !716, line: 65, column: 12)
!799 = !DILocation(line: 68, column: 16, scope: !798)
!800 = !DILocation(line: 68, column: 3, scope: !798)
!801 = !DILocation(line: 69, column: 7, scope: !802)
!802 = distinct !DILexicalBlock(scope: !798, file: !716, line: 69, column: 7)
!803 = !DILocation(line: 69, column: 11, scope: !802)
!804 = !DILocation(line: 69, column: 7, scope: !798)
!805 = !DILocation(line: 69, column: 22, scope: !806)
!806 = !DILexicalBlockFile(scope: !802, file: !716, discriminator: 1)
!807 = !DILocation(line: 69, column: 18, scope: !806)
!808 = !DILocation(line: 70, column: 7, scope: !798)
!809 = !DILocation(line: 70, column: 3, scope: !798)
!810 = !DILocation(line: 70, column: 12, scope: !798)
!811 = !DILocation(line: 71, column: 23, scope: !798)
!812 = !DILocation(line: 71, column: 21, scope: !798)
!813 = !DILocation(line: 72, column: 2, scope: !798)
!814 = !DILocation(line: 74, column: 6, scope: !815)
!815 = distinct !DILexicalBlock(scope: !723, file: !716, line: 74, column: 6)
!816 = !DILocation(line: 74, column: 6, scope: !723)
!817 = !DILocation(line: 75, column: 17, scope: !818)
!818 = distinct !DILexicalBlock(scope: !815, file: !716, line: 74, column: 16)
!819 = !DILocation(line: 75, column: 25, scope: !818)
!820 = !DILocation(line: 75, column: 33, scope: !818)
!821 = !DILocation(line: 75, column: 3, scope: !818)
!822 = !DILocation(line: 76, column: 27, scope: !818)
!823 = !DILocation(line: 76, column: 35, scope: !818)
!824 = !DILocation(line: 76, column: 40, scope: !818)
!825 = !DILocation(line: 76, column: 48, scope: !818)
!826 = !DILocation(line: 76, column: 3, scope: !818)
!827 = !DILocation(line: 77, column: 17, scope: !818)
!828 = !DILocation(line: 77, column: 25, scope: !818)
!829 = !DILocation(line: 77, column: 39, scope: !818)
!830 = !DILocation(line: 78, column: 2, scope: !818)
!831 = !DILocation(line: 80, column: 7, scope: !832)
!832 = distinct !DILexicalBlock(scope: !723, file: !716, line: 80, column: 6)
!833 = !DILocation(line: 80, column: 6, scope: !723)
!834 = !DILocation(line: 82, column: 10, scope: !835)
!835 = distinct !DILexicalBlock(scope: !832, file: !716, line: 80, column: 12)
!836 = !DILocation(line: 82, column: 3, scope: !835)
!837 = !DILocation(line: 82, column: 14, scope: !835)
!838 = !DILocation(line: 83, column: 10, scope: !835)
!839 = !DILocation(line: 83, column: 3, scope: !835)
!840 = !DILocation(line: 83, column: 14, scope: !835)
!841 = !DILocation(line: 84, column: 7, scope: !835)
!842 = !DILocation(line: 84, column: 3, scope: !835)
!843 = !DILocation(line: 84, column: 12, scope: !835)
!844 = !DILocation(line: 85, column: 2, scope: !835)
!845 = !DILocation(line: 87, column: 6, scope: !846)
!846 = distinct !DILexicalBlock(scope: !723, file: !716, line: 87, column: 6)
!847 = !DILocation(line: 87, column: 6, scope: !723)
!848 = !DILocation(line: 88, column: 38, scope: !849)
!849 = distinct !DILexicalBlock(scope: !846, file: !716, line: 87, column: 16)
!850 = !DILocation(line: 88, column: 46, scope: !849)
!851 = !DILocation(line: 88, column: 51, scope: !849)
!852 = !DILocation(line: 88, column: 17, scope: !849)
!853 = !DILocation(line: 89, column: 2, scope: !849)
!854 = !DILocation(line: 92, column: 7, scope: !855)
!855 = distinct !DILexicalBlock(scope: !856, file: !716, line: 92, column: 7)
!856 = distinct !DILexicalBlock(scope: !846, file: !716, line: 89, column: 9)
!857 = !DILocation(line: 92, column: 7, scope: !856)
!858 = !DILocation(line: 93, column: 39, scope: !859)
!859 = distinct !DILexicalBlock(scope: !855, file: !716, line: 92, column: 18)
!860 = !DILocation(line: 93, column: 47, scope: !859)
!861 = !DILocation(line: 94, column: 11, scope: !859)
!862 = !DILocation(line: 94, column: 19, scope: !859)
!863 = !DILocation(line: 93, column: 23, scope: !859)
!864 = !DILocation(line: 93, column: 4, scope: !859)
!865 = !DILocation(line: 93, column: 12, scope: !859)
!866 = !DILocation(line: 93, column: 21, scope: !859)
!867 = !DILocation(line: 95, column: 39, scope: !859)
!868 = !DILocation(line: 95, column: 47, scope: !859)
!869 = !DILocation(line: 96, column: 20, scope: !859)
!870 = !DILocation(line: 96, column: 11, scope: !859)
!871 = !DILocation(line: 95, column: 23, scope: !859)
!872 = !DILocation(line: 95, column: 4, scope: !859)
!873 = !DILocation(line: 95, column: 12, scope: !859)
!874 = !DILocation(line: 95, column: 21, scope: !859)
!875 = !DILocation(line: 97, column: 3, scope: !859)
!876 = !DILocation(line: 98, column: 38, scope: !877)
!877 = distinct !DILexicalBlock(scope: !855, file: !716, line: 97, column: 10)
!878 = !DILocation(line: 98, column: 46, scope: !877)
!879 = !DILocation(line: 99, column: 19, scope: !877)
!880 = !DILocation(line: 99, column: 10, scope: !877)
!881 = !DILocation(line: 98, column: 23, scope: !877)
!882 = !DILocation(line: 98, column: 4, scope: !877)
!883 = !DILocation(line: 98, column: 12, scope: !877)
!884 = !DILocation(line: 98, column: 21, scope: !877)
!885 = !DILocation(line: 100, column: 38, scope: !877)
!886 = !DILocation(line: 100, column: 46, scope: !877)
!887 = !DILocation(line: 101, column: 10, scope: !877)
!888 = !DILocation(line: 101, column: 18, scope: !877)
!889 = !DILocation(line: 100, column: 23, scope: !877)
!890 = !DILocation(line: 100, column: 4, scope: !877)
!891 = !DILocation(line: 100, column: 12, scope: !877)
!892 = !DILocation(line: 100, column: 21, scope: !877)
!893 = !DILocation(line: 104, column: 9, scope: !723)
!894 = !DILocation(line: 104, column: 17, scope: !723)
!895 = !DILocation(line: 104, column: 31, scope: !723)
!896 = !DILocation(line: 105, column: 1, scope: !723)
!897 = !DILocation(line: 105, column: 1, scope: !898)
!898 = !DILexicalBlockFile(scope: !723, file: !716, discriminator: 1)
!899 = distinct !DISubprogram(name: "irc_send_cmd", scope: !716, file: !716, line: 108, type: !900, isLocal: false, isDefinition: true, scopeLine: 109, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !726)
!900 = !DISubroutineType(types: !901)
!901 = !{null, !52, !41}
!902 = !DILocalVariable(name: "server", arg: 1, scope: !899, file: !716, line: 108, type: !52)
!903 = !DILocation(line: 108, column: 35, scope: !899)
!904 = !DILocalVariable(name: "cmd", arg: 2, scope: !899, file: !716, line: 108, type: !41)
!905 = !DILocation(line: 108, column: 55, scope: !899)
!906 = !DILocalVariable(name: "now", scope: !899, file: !716, line: 110, type: !392)
!907 = !DILocation(line: 110, column: 11, scope: !899)
!908 = !DILocalVariable(name: "send_now", scope: !899, file: !716, line: 111, type: !60)
!909 = !DILocation(line: 111, column: 6, scope: !899)
!910 = !DILocation(line: 113, column: 9, scope: !899)
!911 = !DILocation(line: 114, column: 34, scope: !899)
!912 = !DILocation(line: 114, column: 42, scope: !899)
!913 = !DILocation(line: 114, column: 13, scope: !899)
!914 = !DILocation(line: 114, column: 52, scope: !899)
!915 = !DILocation(line: 114, column: 57, scope: !899)
!916 = !DILocation(line: 115, column: 4, scope: !899)
!917 = !DILocation(line: 115, column: 12, scope: !899)
!918 = !DILocation(line: 115, column: 23, scope: !899)
!919 = !DILocation(line: 115, column: 31, scope: !899)
!920 = !DILocation(line: 115, column: 21, scope: !899)
!921 = !DILocation(line: 115, column: 48, scope: !899)
!922 = !DILocation(line: 116, column: 4, scope: !899)
!923 = !DILocation(line: 116, column: 12, scope: !899)
!924 = !DILocation(line: 116, column: 28, scope: !899)
!925 = !DILocation(line: 115, column: 48, scope: !926)
!926 = !DILexicalBlockFile(scope: !899, file: !716, discriminator: 1)
!927 = !DILocation(line: 114, column: 57, scope: !926)
!928 = !DILocation(line: 114, column: 11, scope: !926)
!929 = !DILocation(line: 118, column: 27, scope: !899)
!930 = !DILocation(line: 118, column: 35, scope: !899)
!931 = !DILocation(line: 118, column: 40, scope: !899)
!932 = !DILocation(line: 118, column: 9, scope: !899)
!933 = !DILocation(line: 119, column: 1, scope: !899)
!934 = distinct !DISubprogram(name: "irc_send_cmdv", scope: !716, file: !716, line: 122, type: !935, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !726)
!935 = !DISubroutineType(types: !936)
!936 = !{null, !52, !41, null}
!937 = !DILocalVariable(name: "server", arg: 1, scope: !934, file: !716, line: 122, type: !52)
!938 = !DILocation(line: 122, column: 36, scope: !934)
!939 = !DILocalVariable(name: "cmd", arg: 2, scope: !934, file: !716, line: 122, type: !41)
!940 = !DILocation(line: 122, column: 56, scope: !934)
!941 = !DILocalVariable(name: "args", scope: !934, file: !716, line: 124, type: !942)
!942 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !943, line: 79, baseType: !944)
!943 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/irssi/task1")
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !945, line: 40, baseType: !946)
!945 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/irssi/task1")
!946 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 124, baseType: !947)
!947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !948, size: 192, align: 64, elements: !954)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 124, size: 192, align: 64, elements: !949)
!949 = !{!950, !951, !952, !953}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !948, file: !1, line: 124, baseType: !113, size: 32, align: 32)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !948, file: !1, line: 124, baseType: !113, size: 32, align: 32, offset: 32)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !948, file: !1, line: 124, baseType: !36, size: 64, align: 64, offset: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !948, file: !1, line: 124, baseType: !36, size: 64, align: 64, offset: 128)
!954 = !{!955}
!955 = !DISubrange(count: 1)
!956 = !DILocation(line: 124, column: 10, scope: !934)
!957 = !DILocalVariable(name: "str", scope: !934, file: !716, line: 125, type: !44)
!958 = !DILocation(line: 125, column: 8, scope: !934)
!959 = !DILocation(line: 127, column: 1, scope: !934)
!960 = !DILocation(line: 129, column: 25, scope: !934)
!961 = !DILocation(line: 129, column: 30, scope: !934)
!962 = !DILocation(line: 129, column: 8, scope: !934)
!963 = !DILocation(line: 129, column: 6, scope: !934)
!964 = !DILocation(line: 130, column: 15, scope: !934)
!965 = !DILocation(line: 130, column: 23, scope: !934)
!966 = !DILocation(line: 130, column: 2, scope: !934)
!967 = !DILocation(line: 131, column: 9, scope: !934)
!968 = !DILocation(line: 131, column: 2, scope: !934)
!969 = !DILocation(line: 133, column: 1, scope: !934)
!970 = !DILocation(line: 134, column: 1, scope: !934)
!971 = distinct !DISubprogram(name: "irc_send_cmd_now", scope: !716, file: !716, line: 138, type: !900, isLocal: false, isDefinition: true, scopeLine: 139, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !726)
!972 = !DILocalVariable(name: "server", arg: 1, scope: !971, file: !716, line: 138, type: !52)
!973 = !DILocation(line: 138, column: 39, scope: !971)
!974 = !DILocalVariable(name: "cmd", arg: 2, scope: !971, file: !716, line: 138, type: !41)
!975 = !DILocation(line: 138, column: 59, scope: !971)
!976 = !DILocation(line: 140, column: 2, scope: !971)
!977 = distinct !{!977, !976}
!978 = !DILocation(line: 140, column: 10, scope: !979)
!979 = !DILexicalBlockFile(scope: !980, file: !716, discriminator: 1)
!980 = distinct !DILexicalBlock(scope: !981, file: !716, line: 140, column: 10)
!981 = distinct !DILexicalBlock(scope: !971, file: !716, line: 140, column: 4)
!982 = !DILocation(line: 140, column: 14, scope: !979)
!983 = !DILocation(line: 140, column: 5, scope: !984)
!984 = !DILexicalBlockFile(scope: !985, file: !716, discriminator: 2)
!985 = distinct !DILexicalBlock(scope: !980, file: !716, line: 140, column: 3)
!986 = !DILocation(line: 140, column: 14, scope: !987)
!987 = !DILexicalBlockFile(scope: !988, file: !716, discriminator: 3)
!988 = distinct !DILexicalBlock(scope: !980, file: !716, line: 140, column: 12)
!989 = !DILocation(line: 140, column: 98, scope: !987)
!990 = !DILocation(line: 140, column: 109, scope: !991)
!991 = !DILexicalBlockFile(scope: !981, file: !716, discriminator: 4)
!992 = !DILocation(line: 142, column: 27, scope: !971)
!993 = !DILocation(line: 142, column: 35, scope: !971)
!994 = !DILocation(line: 142, column: 9, scope: !971)
!995 = !DILocation(line: 143, column: 1, scope: !971)
!996 = !DILocation(line: 143, column: 1, scope: !997)
!997 = !DILexicalBlockFile(scope: !971, file: !716, discriminator: 1)
!998 = distinct !DISubprogram(name: "irc_send_cmd_first", scope: !716, file: !716, line: 148, type: !900, isLocal: false, isDefinition: true, scopeLine: 149, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !726)
!999 = !DILocalVariable(name: "server", arg: 1, scope: !998, file: !716, line: 148, type: !52)
!1000 = !DILocation(line: 148, column: 41, scope: !998)
!1001 = !DILocalVariable(name: "cmd", arg: 2, scope: !998, file: !716, line: 148, type: !41)
!1002 = !DILocation(line: 148, column: 61, scope: !998)
!1003 = !DILocation(line: 150, column: 2, scope: !998)
!1004 = distinct !{!1004, !1003}
!1005 = !DILocation(line: 150, column: 10, scope: !1006)
!1006 = !DILexicalBlockFile(scope: !1007, file: !716, discriminator: 1)
!1007 = distinct !DILexicalBlock(scope: !1008, file: !716, line: 150, column: 10)
!1008 = distinct !DILexicalBlock(scope: !998, file: !716, line: 150, column: 4)
!1009 = !DILocation(line: 150, column: 14, scope: !1006)
!1010 = !DILocation(line: 150, column: 5, scope: !1011)
!1011 = !DILexicalBlockFile(scope: !1012, file: !716, discriminator: 2)
!1012 = distinct !DILexicalBlock(scope: !1007, file: !716, line: 150, column: 3)
!1013 = !DILocation(line: 150, column: 14, scope: !1014)
!1014 = !DILexicalBlockFile(scope: !1015, file: !716, discriminator: 3)
!1015 = distinct !DILexicalBlock(scope: !1007, file: !716, line: 150, column: 12)
!1016 = !DILocation(line: 150, column: 98, scope: !1014)
!1017 = !DILocation(line: 150, column: 109, scope: !1018)
!1018 = !DILexicalBlockFile(scope: !1008, file: !716, discriminator: 4)
!1019 = !DILocation(line: 152, column: 27, scope: !998)
!1020 = !DILocation(line: 152, column: 35, scope: !998)
!1021 = !DILocation(line: 152, column: 9, scope: !998)
!1022 = !DILocation(line: 153, column: 1, scope: !998)
!1023 = !DILocation(line: 153, column: 1, scope: !1024)
!1024 = !DILexicalBlockFile(scope: !998, file: !716, discriminator: 1)
!1025 = distinct !DISubprogram(name: "irc_send_cmd_split", scope: !716, file: !716, line: 184, type: !1026, isLocal: false, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !726)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{null, !52, !41, !60, !60}
!1028 = !DILocalVariable(name: "server", arg: 1, scope: !1025, file: !716, line: 184, type: !52)
!1029 = !DILocation(line: 184, column: 41, scope: !1025)
!1030 = !DILocalVariable(name: "cmd", arg: 2, scope: !1025, file: !716, line: 184, type: !41)
!1031 = !DILocation(line: 184, column: 61, scope: !1025)
!1032 = !DILocalVariable(name: "nickarg", arg: 3, scope: !1025, file: !716, line: 185, type: !60)
!1033 = !DILocation(line: 185, column: 8, scope: !1025)
!1034 = !DILocalVariable(name: "max_nicks", arg: 4, scope: !1025, file: !716, line: 185, type: !60)
!1035 = !DILocation(line: 185, column: 21, scope: !1025)
!1036 = !DILocalVariable(name: "str", scope: !1025, file: !716, line: 187, type: !44)
!1037 = !DILocation(line: 187, column: 8, scope: !1025)
!1038 = !DILocalVariable(name: "pre", scope: !1025, file: !716, line: 187, type: !44)
!1039 = !DILocation(line: 187, column: 14, scope: !1025)
!1040 = !DILocalVariable(name: "post", scope: !1025, file: !716, line: 187, type: !44)
!1041 = !DILocation(line: 187, column: 20, scope: !1025)
!1042 = !DILocalVariable(name: "nicks", scope: !1025, file: !716, line: 187, type: !44)
!1043 = !DILocation(line: 187, column: 27, scope: !1025)
!1044 = !DILocalVariable(name: "nicklist", scope: !1025, file: !716, line: 188, type: !43)
!1045 = !DILocation(line: 188, column: 9, scope: !1025)
!1046 = !DILocalVariable(name: "tmp", scope: !1025, file: !716, line: 188, type: !43)
!1047 = !DILocation(line: 188, column: 21, scope: !1025)
!1048 = !DILocalVariable(name: "nickstr", scope: !1025, file: !716, line: 189, type: !288)
!1049 = !DILocation(line: 189, column: 11, scope: !1025)
!1050 = !DILocalVariable(name: "count", scope: !1025, file: !716, line: 190, type: !60)
!1051 = !DILocation(line: 190, column: 6, scope: !1025)
!1052 = !DILocation(line: 192, column: 2, scope: !1025)
!1053 = distinct !{!1053, !1052}
!1054 = !DILocation(line: 192, column: 10, scope: !1055)
!1055 = !DILexicalBlockFile(scope: !1056, file: !716, discriminator: 1)
!1056 = distinct !DILexicalBlock(scope: !1057, file: !716, line: 192, column: 10)
!1057 = distinct !DILexicalBlock(scope: !1025, file: !716, line: 192, column: 4)
!1058 = !DILocation(line: 192, column: 17, scope: !1055)
!1059 = !DILocation(line: 192, column: 5, scope: !1060)
!1060 = !DILexicalBlockFile(scope: !1061, file: !716, discriminator: 2)
!1061 = distinct !DILexicalBlock(scope: !1056, file: !716, line: 192, column: 3)
!1062 = !DILocation(line: 192, column: 14, scope: !1063)
!1063 = !DILexicalBlockFile(scope: !1064, file: !716, discriminator: 3)
!1064 = distinct !DILexicalBlock(scope: !1056, file: !716, line: 192, column: 12)
!1065 = !DILocation(line: 192, column: 101, scope: !1063)
!1066 = !DILocation(line: 192, column: 112, scope: !1067)
!1067 = !DILexicalBlockFile(scope: !1057, file: !716, discriminator: 4)
!1068 = !DILocation(line: 193, column: 2, scope: !1025)
!1069 = distinct !{!1069, !1068}
!1070 = !DILocation(line: 193, column: 10, scope: !1071)
!1071 = !DILexicalBlockFile(scope: !1072, file: !716, discriminator: 1)
!1072 = distinct !DILexicalBlock(scope: !1073, file: !716, line: 193, column: 10)
!1073 = distinct !DILexicalBlock(scope: !1025, file: !716, line: 193, column: 4)
!1074 = !DILocation(line: 193, column: 14, scope: !1071)
!1075 = !DILocation(line: 193, column: 5, scope: !1076)
!1076 = !DILexicalBlockFile(scope: !1077, file: !716, discriminator: 2)
!1077 = distinct !DILexicalBlock(scope: !1072, file: !716, line: 193, column: 3)
!1078 = !DILocation(line: 193, column: 14, scope: !1079)
!1079 = !DILexicalBlockFile(scope: !1080, file: !716, discriminator: 3)
!1080 = distinct !DILexicalBlock(scope: !1072, file: !716, line: 193, column: 12)
!1081 = !DILocation(line: 193, column: 98, scope: !1079)
!1082 = !DILocation(line: 193, column: 109, scope: !1083)
!1083 = !DILexicalBlockFile(scope: !1073, file: !716, discriminator: 4)
!1084 = !DILocation(line: 195, column: 20, scope: !1025)
!1085 = !DILocation(line: 195, column: 46, scope: !1025)
!1086 = !DILocation(line: 195, column: 8, scope: !1025)
!1087 = !DILocation(line: 195, column: 6, scope: !1025)
!1088 = !DILocation(line: 196, column: 6, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1025, file: !716, line: 196, column: 6)
!1090 = !DILocation(line: 196, column: 12, scope: !1089)
!1091 = !DILocation(line: 196, column: 6, scope: !1025)
!1092 = !DILocation(line: 198, column: 10, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1089, file: !716, line: 196, column: 20)
!1094 = !DILocation(line: 198, column: 3, scope: !1093)
!1095 = !DILocation(line: 199, column: 3, scope: !1093)
!1096 = !DILocation(line: 203, column: 12, scope: !1025)
!1097 = !DILocation(line: 203, column: 10, scope: !1025)
!1098 = !DILocation(line: 204, column: 24, scope: !1025)
!1099 = !DILocation(line: 204, column: 13, scope: !1025)
!1100 = !DILocation(line: 204, column: 11, scope: !1025)
!1101 = !DILocation(line: 204, column: 47, scope: !1025)
!1102 = !DILocation(line: 206, column: 8, scope: !1025)
!1103 = !DILocation(line: 206, column: 6, scope: !1025)
!1104 = !DILocation(line: 207, column: 2, scope: !1025)
!1105 = !DILocation(line: 208, column: 8, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1107, file: !716, line: 208, column: 7)
!1107 = distinct !DILexicalBlock(scope: !1108, file: !716, line: 207, column: 17)
!1108 = distinct !DILexicalBlock(scope: !1109, file: !716, line: 207, column: 2)
!1109 = distinct !DILexicalBlock(scope: !1025, file: !716, line: 207, column: 2)
!1110 = !DILocation(line: 208, column: 7, scope: !1106)
!1111 = !DILocation(line: 208, column: 12, scope: !1106)
!1112 = !DILocation(line: 208, column: 7, scope: !1107)
!1113 = !DILocation(line: 209, column: 27, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1106, file: !716, line: 208, column: 20)
!1115 = !DILocation(line: 209, column: 44, scope: !1114)
!1116 = !DILocation(line: 209, column: 43, scope: !1114)
!1117 = !DILocation(line: 209, column: 4, scope: !1114)
!1118 = !DILocation(line: 210, column: 8, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1114, file: !716, line: 210, column: 8)
!1120 = !DILocation(line: 210, column: 18, scope: !1119)
!1121 = !DILocation(line: 210, column: 16, scope: !1119)
!1122 = !DILocation(line: 210, column: 8, scope: !1114)
!1123 = !DILocation(line: 211, column: 5, scope: !1119)
!1124 = !DILocation(line: 212, column: 3, scope: !1114)
!1125 = !DILocation(line: 214, column: 9, scope: !1107)
!1126 = !DILocation(line: 215, column: 7, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1107, file: !716, line: 215, column: 7)
!1128 = !DILocation(line: 215, column: 16, scope: !1127)
!1129 = !DILocation(line: 215, column: 20, scope: !1127)
!1130 = !DILocation(line: 215, column: 7, scope: !1107)
!1131 = !DILocation(line: 216, column: 22, scope: !1127)
!1132 = !DILocation(line: 216, column: 31, scope: !1127)
!1133 = !DILocation(line: 216, column: 40, scope: !1127)
!1134 = !DILocation(line: 216, column: 43, scope: !1127)
!1135 = !DILocation(line: 216, column: 4, scope: !1127)
!1136 = !DILocation(line: 218, column: 7, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1107, file: !716, line: 218, column: 7)
!1138 = !DILocation(line: 218, column: 12, scope: !1137)
!1139 = !DILocation(line: 218, column: 7, scope: !1107)
!1140 = !DILocation(line: 219, column: 18, scope: !1137)
!1141 = !DILocation(line: 219, column: 35, scope: !1137)
!1142 = !DILocation(line: 219, column: 40, scope: !1137)
!1143 = !DILocation(line: 219, column: 49, scope: !1137)
!1144 = !DILocation(line: 219, column: 4, scope: !1137)
!1145 = !DILocation(line: 221, column: 18, scope: !1137)
!1146 = !DILocation(line: 221, column: 38, scope: !1137)
!1147 = !DILocation(line: 221, column: 43, scope: !1137)
!1148 = !DILocation(line: 221, column: 52, scope: !1137)
!1149 = !DILocation(line: 221, column: 57, scope: !1137)
!1150 = !DILocation(line: 221, column: 4, scope: !1137)
!1151 = !DILocation(line: 223, column: 21, scope: !1107)
!1152 = !DILocation(line: 223, column: 3, scope: !1107)
!1153 = !DILocation(line: 225, column: 8, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1107, file: !716, line: 225, column: 7)
!1155 = !DILocation(line: 225, column: 7, scope: !1154)
!1156 = !DILocation(line: 225, column: 12, scope: !1154)
!1157 = !DILocation(line: 225, column: 19, scope: !1154)
!1158 = !DILocation(line: 225, column: 22, scope: !1159)
!1159 = !DILexicalBlockFile(scope: !1154, file: !716, discriminator: 1)
!1160 = !DILocation(line: 225, column: 29, scope: !1159)
!1161 = !DILocation(line: 225, column: 7, scope: !1159)
!1162 = !DILocation(line: 226, column: 4, scope: !1154)
!1163 = !DILocation(line: 227, column: 2, scope: !1107)
!1164 = !DILocation(line: 207, column: 13, scope: !1165)
!1165 = !DILexicalBlockFile(scope: !1108, file: !716, discriminator: 1)
!1166 = !DILocation(line: 207, column: 2, scope: !1165)
!1167 = distinct !{!1167, !1104}
!1168 = !DILocation(line: 228, column: 13, scope: !1025)
!1169 = !DILocation(line: 228, column: 2, scope: !1025)
!1170 = !DILocation(line: 229, column: 16, scope: !1025)
!1171 = !DILocation(line: 229, column: 2, scope: !1025)
!1172 = !DILocation(line: 231, column: 9, scope: !1025)
!1173 = !DILocation(line: 231, column: 2, scope: !1025)
!1174 = !DILocation(line: 232, column: 1, scope: !1025)
!1175 = !DILocation(line: 232, column: 1, scope: !1176)
!1176 = !DILexicalBlockFile(scope: !1025, file: !716, discriminator: 1)
!1177 = distinct !DISubprogram(name: "split_nicks", scope: !716, file: !716, line: 155, type: !1178, isLocal: true, isDefinition: true, scopeLine: 156, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !726)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!44, !41, !43, !43, !43, !60}
!1180 = !DILocalVariable(name: "cmd", arg: 1, scope: !1177, file: !716, line: 155, type: !41)
!1181 = !DILocation(line: 155, column: 38, scope: !1177)
!1182 = !DILocalVariable(name: "pre", arg: 2, scope: !1177, file: !716, line: 155, type: !43)
!1183 = !DILocation(line: 155, column: 50, scope: !1177)
!1184 = !DILocalVariable(name: "nicks", arg: 3, scope: !1177, file: !716, line: 155, type: !43)
!1185 = !DILocation(line: 155, column: 62, scope: !1177)
!1186 = !DILocalVariable(name: "post", arg: 4, scope: !1177, file: !716, line: 155, type: !43)
!1187 = !DILocation(line: 155, column: 76, scope: !1177)
!1188 = !DILocalVariable(name: "arg", arg: 5, scope: !1177, file: !716, line: 155, type: !60)
!1189 = !DILocation(line: 155, column: 86, scope: !1177)
!1190 = !DILocalVariable(name: "p", scope: !1177, file: !716, line: 157, type: !44)
!1191 = !DILocation(line: 157, column: 8, scope: !1177)
!1192 = !DILocation(line: 159, column: 18, scope: !1177)
!1193 = !DILocation(line: 159, column: 9, scope: !1177)
!1194 = !DILocation(line: 159, column: 3, scope: !1177)
!1195 = !DILocation(line: 159, column: 7, scope: !1177)
!1196 = !DILocation(line: 160, column: 11, scope: !1177)
!1197 = !DILocation(line: 160, column: 17, scope: !1177)
!1198 = !DILocation(line: 160, column: 3, scope: !1177)
!1199 = !DILocation(line: 160, column: 8, scope: !1177)
!1200 = !DILocation(line: 161, column: 12, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1177, file: !716, line: 161, column: 2)
!1202 = !DILocation(line: 161, column: 11, scope: !1201)
!1203 = !DILocation(line: 161, column: 9, scope: !1201)
!1204 = !DILocation(line: 161, column: 7, scope: !1201)
!1205 = !DILocation(line: 161, column: 18, scope: !1206)
!1206 = !DILexicalBlockFile(scope: !1207, file: !716, discriminator: 1)
!1207 = distinct !DILexicalBlock(scope: !1201, file: !716, line: 161, column: 2)
!1208 = !DILocation(line: 161, column: 17, scope: !1206)
!1209 = !DILocation(line: 161, column: 20, scope: !1206)
!1210 = !DILocation(line: 161, column: 2, scope: !1206)
!1211 = !DILocation(line: 162, column: 8, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1213, file: !716, line: 162, column: 7)
!1213 = distinct !DILexicalBlock(scope: !1207, file: !716, line: 161, column: 34)
!1214 = !DILocation(line: 162, column: 7, scope: !1212)
!1215 = !DILocation(line: 162, column: 10, scope: !1212)
!1216 = !DILocation(line: 162, column: 7, scope: !1213)
!1217 = !DILocation(line: 163, column: 4, scope: !1212)
!1218 = !DILocation(line: 165, column: 7, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1213, file: !716, line: 165, column: 7)
!1220 = !DILocation(line: 165, column: 11, scope: !1219)
!1221 = !DILocation(line: 165, column: 7, scope: !1213)
!1222 = !DILocation(line: 167, column: 6, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1219, file: !716, line: 165, column: 17)
!1224 = !DILocation(line: 167, column: 9, scope: !1223)
!1225 = !DILocation(line: 168, column: 4, scope: !1223)
!1226 = !DILocation(line: 168, column: 12, scope: !1227)
!1227 = !DILexicalBlockFile(scope: !1223, file: !716, discriminator: 1)
!1228 = !DILocation(line: 168, column: 11, scope: !1227)
!1229 = !DILocation(line: 168, column: 14, scope: !1227)
!1230 = !DILocation(line: 168, column: 4, scope: !1227)
!1231 = !DILocation(line: 168, column: 23, scope: !1232)
!1232 = !DILexicalBlockFile(scope: !1223, file: !716, discriminator: 2)
!1233 = !DILocation(line: 168, column: 4, scope: !1232)
!1234 = distinct !{!1234, !1225}
!1235 = !DILocation(line: 169, column: 12, scope: !1223)
!1236 = !DILocation(line: 169, column: 5, scope: !1223)
!1237 = !DILocation(line: 169, column: 10, scope: !1223)
!1238 = !DILocation(line: 170, column: 4, scope: !1223)
!1239 = !DILocation(line: 174, column: 3, scope: !1213)
!1240 = !DILocation(line: 174, column: 10, scope: !1241)
!1241 = !DILexicalBlockFile(scope: !1213, file: !716, discriminator: 1)
!1242 = !DILocation(line: 174, column: 15, scope: !1241)
!1243 = !DILocation(line: 174, column: 3, scope: !1241)
!1244 = !DILocation(line: 174, column: 24, scope: !1245)
!1245 = !DILexicalBlockFile(scope: !1213, file: !716, discriminator: 2)
!1246 = !DILocation(line: 174, column: 3, scope: !1245)
!1247 = distinct !{!1247, !1239}
!1248 = !DILocation(line: 175, column: 7, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1213, file: !716, line: 175, column: 7)
!1250 = !DILocation(line: 175, column: 13, scope: !1249)
!1251 = !DILocation(line: 175, column: 7, scope: !1213)
!1252 = !DILocation(line: 176, column: 5, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1249, file: !716, line: 175, column: 19)
!1254 = !DILocation(line: 176, column: 7, scope: !1253)
!1255 = !DILocation(line: 177, column: 13, scope: !1253)
!1256 = !DILocation(line: 177, column: 14, scope: !1253)
!1257 = !DILocation(line: 177, column: 5, scope: !1253)
!1258 = !DILocation(line: 177, column: 11, scope: !1253)
!1259 = !DILocation(line: 178, column: 3, scope: !1253)
!1260 = !DILocation(line: 179, column: 2, scope: !1213)
!1261 = !DILocation(line: 161, column: 30, scope: !1262)
!1262 = !DILexicalBlockFile(scope: !1207, file: !716, discriminator: 2)
!1263 = !DILocation(line: 161, column: 2, scope: !1262)
!1264 = distinct !{!1264, !1265}
!1265 = !DILocation(line: 161, column: 2, scope: !1177)
!1266 = !DILocation(line: 181, column: 10, scope: !1177)
!1267 = !DILocation(line: 181, column: 9, scope: !1177)
!1268 = !DILocation(line: 181, column: 2, scope: !1177)
!1269 = distinct !DISubprogram(name: "event_get_param", scope: !716, file: !716, line: 235, type: !1270, isLocal: false, isDefinition: true, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !726)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{!44, !43}
!1272 = !DILocalVariable(name: "data", arg: 1, scope: !1269, file: !716, line: 235, type: !43)
!1273 = !DILocation(line: 235, column: 30, scope: !1269)
!1274 = !DILocalVariable(name: "pos", scope: !1269, file: !716, line: 237, type: !44)
!1275 = !DILocation(line: 237, column: 8, scope: !1269)
!1276 = !DILocation(line: 239, column: 2, scope: !1269)
!1277 = distinct !{!1277, !1276}
!1278 = !DILocation(line: 239, column: 10, scope: !1279)
!1279 = !DILexicalBlockFile(scope: !1280, file: !716, discriminator: 1)
!1280 = distinct !DILexicalBlock(scope: !1281, file: !716, line: 239, column: 10)
!1281 = distinct !DILexicalBlock(scope: !1269, file: !716, line: 239, column: 4)
!1282 = !DILocation(line: 239, column: 15, scope: !1279)
!1283 = !DILocation(line: 239, column: 5, scope: !1284)
!1284 = !DILexicalBlockFile(scope: !1285, file: !716, discriminator: 2)
!1285 = distinct !DILexicalBlock(scope: !1280, file: !716, line: 239, column: 3)
!1286 = !DILocation(line: 239, column: 14, scope: !1287)
!1287 = !DILexicalBlockFile(scope: !1288, file: !716, discriminator: 3)
!1288 = distinct !DILexicalBlock(scope: !1280, file: !716, line: 239, column: 12)
!1289 = !DILocation(line: 239, column: 99, scope: !1287)
!1290 = !DILocation(line: 239, column: 7, scope: !1291)
!1291 = !DILexicalBlockFile(scope: !1281, file: !716, discriminator: 4)
!1292 = !DILocation(line: 240, column: 2, scope: !1269)
!1293 = distinct !{!1293, !1292}
!1294 = !DILocation(line: 240, column: 11, scope: !1295)
!1295 = !DILexicalBlockFile(scope: !1296, file: !716, discriminator: 1)
!1296 = distinct !DILexicalBlock(scope: !1297, file: !716, line: 240, column: 10)
!1297 = distinct !DILexicalBlock(scope: !1269, file: !716, line: 240, column: 4)
!1298 = !DILocation(line: 240, column: 10, scope: !1295)
!1299 = !DILocation(line: 240, column: 16, scope: !1295)
!1300 = !DILocation(line: 240, column: 5, scope: !1301)
!1301 = !DILexicalBlockFile(scope: !1302, file: !716, discriminator: 2)
!1302 = distinct !DILexicalBlock(scope: !1296, file: !716, line: 240, column: 3)
!1303 = !DILocation(line: 240, column: 14, scope: !1304)
!1304 = !DILexicalBlockFile(scope: !1305, file: !716, discriminator: 3)
!1305 = distinct !DILexicalBlock(scope: !1296, file: !716, line: 240, column: 12)
!1306 = !DILocation(line: 240, column: 100, scope: !1304)
!1307 = !DILocation(line: 240, column: 7, scope: !1308)
!1308 = !DILexicalBlockFile(scope: !1297, file: !716, discriminator: 4)
!1309 = !DILocation(line: 242, column: 8, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1269, file: !716, line: 242, column: 6)
!1311 = !DILocation(line: 242, column: 7, scope: !1310)
!1312 = !DILocation(line: 242, column: 6, scope: !1310)
!1313 = !DILocation(line: 242, column: 13, scope: !1310)
!1314 = !DILocation(line: 242, column: 6, scope: !1269)
!1315 = !DILocation(line: 244, column: 10, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1310, file: !716, line: 242, column: 21)
!1317 = !DILocation(line: 244, column: 9, scope: !1316)
!1318 = !DILocation(line: 244, column: 7, scope: !1316)
!1319 = !DILocation(line: 245, column: 20, scope: !1316)
!1320 = !DILocation(line: 245, column: 19, scope: !1316)
!1321 = !DILocation(line: 245, column: 12, scope: !1316)
!1322 = !DILocation(line: 245, column: 4, scope: !1316)
!1323 = !DILocation(line: 245, column: 9, scope: !1316)
!1324 = !DILocation(line: 246, column: 10, scope: !1316)
!1325 = !DILocation(line: 246, column: 13, scope: !1316)
!1326 = !DILocation(line: 246, column: 3, scope: !1316)
!1327 = !DILocation(line: 249, column: 9, scope: !1269)
!1328 = !DILocation(line: 249, column: 8, scope: !1269)
!1329 = !DILocation(line: 249, column: 6, scope: !1269)
!1330 = !DILocation(line: 250, column: 2, scope: !1269)
!1331 = !DILocation(line: 250, column: 11, scope: !1332)
!1332 = !DILexicalBlockFile(scope: !1269, file: !716, discriminator: 1)
!1333 = !DILocation(line: 250, column: 10, scope: !1332)
!1334 = !DILocation(line: 250, column: 9, scope: !1332)
!1335 = !DILocation(line: 250, column: 16, scope: !1332)
!1336 = !DILocation(line: 250, column: 24, scope: !1332)
!1337 = !DILocation(line: 250, column: 29, scope: !1338)
!1338 = !DILexicalBlockFile(scope: !1269, file: !716, discriminator: 2)
!1339 = !DILocation(line: 250, column: 28, scope: !1338)
!1340 = !DILocation(line: 250, column: 27, scope: !1338)
!1341 = !DILocation(line: 250, column: 34, scope: !1338)
!1342 = !DILocation(line: 250, column: 2, scope: !1343)
!1343 = !DILexicalBlockFile(scope: !1269, file: !716, discriminator: 3)
!1344 = !DILocation(line: 250, column: 44, scope: !1345)
!1345 = !DILexicalBlockFile(scope: !1269, file: !716, discriminator: 4)
!1346 = !DILocation(line: 250, column: 49, scope: !1345)
!1347 = !DILocation(line: 250, column: 2, scope: !1345)
!1348 = distinct !{!1348, !1330}
!1349 = !DILocation(line: 251, column: 8, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1269, file: !716, line: 251, column: 6)
!1351 = !DILocation(line: 251, column: 7, scope: !1350)
!1352 = !DILocation(line: 251, column: 6, scope: !1350)
!1353 = !DILocation(line: 251, column: 13, scope: !1350)
!1354 = !DILocation(line: 251, column: 6, scope: !1269)
!1355 = !DILocation(line: 251, column: 24, scope: !1356)
!1356 = !DILexicalBlockFile(scope: !1350, file: !716, discriminator: 1)
!1357 = !DILocation(line: 251, column: 29, scope: !1356)
!1358 = !DILocation(line: 251, column: 32, scope: !1356)
!1359 = !DILocation(line: 251, column: 21, scope: !1356)
!1360 = !DILocation(line: 253, column: 9, scope: !1269)
!1361 = !DILocation(line: 253, column: 2, scope: !1269)
!1362 = !DILocation(line: 254, column: 1, scope: !1269)
!1363 = distinct !DISubprogram(name: "event_get_params", scope: !716, file: !716, line: 257, type: !1364, isLocal: false, isDefinition: true, scopeLine: 258, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !726)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!44, !41, !60, null}
!1366 = !DILocalVariable(name: "data", arg: 1, scope: !1363, file: !716, line: 257, type: !41)
!1367 = !DILocation(line: 257, column: 36, scope: !1363)
!1368 = !DILocalVariable(name: "count", arg: 2, scope: !1363, file: !716, line: 257, type: !60)
!1369 = !DILocation(line: 257, column: 46, scope: !1363)
!1370 = !DILocalVariable(name: "str", scope: !1363, file: !716, line: 259, type: !43)
!1371 = !DILocation(line: 259, column: 9, scope: !1363)
!1372 = !DILocalVariable(name: "tmp", scope: !1363, file: !716, line: 259, type: !44)
!1373 = !DILocation(line: 259, column: 15, scope: !1363)
!1374 = !DILocalVariable(name: "duprec", scope: !1363, file: !716, line: 259, type: !44)
!1375 = !DILocation(line: 259, column: 21, scope: !1363)
!1376 = !DILocalVariable(name: "datad", scope: !1363, file: !716, line: 259, type: !44)
!1377 = !DILocation(line: 259, column: 30, scope: !1363)
!1378 = !DILocalVariable(name: "rest", scope: !1363, file: !716, line: 260, type: !208)
!1379 = !DILocation(line: 260, column: 11, scope: !1363)
!1380 = !DILocalVariable(name: "args", scope: !1363, file: !716, line: 261, type: !942)
!1381 = !DILocation(line: 261, column: 10, scope: !1363)
!1382 = !DILocation(line: 263, column: 2, scope: !1363)
!1383 = distinct !{!1383, !1382}
!1384 = !DILocation(line: 263, column: 10, scope: !1385)
!1385 = !DILexicalBlockFile(scope: !1386, file: !716, discriminator: 1)
!1386 = distinct !DILexicalBlock(scope: !1387, file: !716, line: 263, column: 10)
!1387 = distinct !DILexicalBlock(scope: !1363, file: !716, line: 263, column: 4)
!1388 = !DILocation(line: 263, column: 15, scope: !1385)
!1389 = !DILocation(line: 263, column: 5, scope: !1390)
!1390 = !DILexicalBlockFile(scope: !1391, file: !716, discriminator: 2)
!1391 = distinct !DILexicalBlock(scope: !1386, file: !716, line: 263, column: 3)
!1392 = !DILocation(line: 263, column: 14, scope: !1393)
!1393 = !DILexicalBlockFile(scope: !1394, file: !716, discriminator: 3)
!1394 = distinct !DILexicalBlock(scope: !1386, file: !716, line: 263, column: 12)
!1395 = !DILocation(line: 263, column: 99, scope: !1393)
!1396 = !DILocation(line: 263, column: 7, scope: !1397)
!1397 = !DILexicalBlockFile(scope: !1387, file: !716, discriminator: 4)
!1398 = !DILocation(line: 265, column: 1, scope: !1363)
!1399 = !DILocation(line: 266, column: 28, scope: !1363)
!1400 = !DILocation(line: 266, column: 19, scope: !1363)
!1401 = !DILocation(line: 266, column: 17, scope: !1363)
!1402 = !DILocation(line: 266, column: 9, scope: !1363)
!1403 = !DILocation(line: 268, column: 9, scope: !1363)
!1404 = !DILocation(line: 268, column: 15, scope: !1363)
!1405 = !DILocation(line: 268, column: 7, scope: !1363)
!1406 = !DILocation(line: 269, column: 12, scope: !1363)
!1407 = !DILocation(line: 269, column: 19, scope: !1363)
!1408 = !DILocation(line: 269, column: 8, scope: !1363)
!1409 = !DILocation(line: 271, column: 2, scope: !1363)
!1410 = !DILocation(line: 271, column: 14, scope: !1411)
!1411 = !DILexicalBlockFile(scope: !1363, file: !716, discriminator: 1)
!1412 = !DILocation(line: 271, column: 17, scope: !1411)
!1413 = !DILocation(line: 271, column: 2, scope: !1411)
!1414 = !DILocation(line: 272, column: 18, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1363, file: !716, line: 271, column: 22)
!1416 = !DILocation(line: 272, column: 18, scope: !1417)
!1417 = !DILexicalBlockFile(scope: !1415, file: !716, discriminator: 1)
!1418 = !DILocation(line: 272, column: 18, scope: !1419)
!1419 = !DILexicalBlockFile(scope: !1415, file: !716, discriminator: 2)
!1420 = !DILocation(line: 272, column: 18, scope: !1421)
!1421 = !DILexicalBlockFile(scope: !1415, file: !716, discriminator: 3)
!1422 = !DILocation(line: 272, column: 7, scope: !1421)
!1423 = !DILocation(line: 273, column: 7, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1415, file: !716, line: 273, column: 7)
!1425 = !DILocation(line: 273, column: 13, scope: !1424)
!1426 = !DILocation(line: 273, column: 18, scope: !1424)
!1427 = !DILocation(line: 273, column: 21, scope: !1428)
!1428 = !DILexicalBlockFile(scope: !1424, file: !716, discriminator: 1)
!1429 = !DILocation(line: 273, column: 7, scope: !1428)
!1430 = !DILocation(line: 275, column: 23, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1424, file: !716, line: 273, column: 27)
!1432 = !DILocation(line: 275, column: 4, scope: !1431)
!1433 = !DILocation(line: 276, column: 10, scope: !1431)
!1434 = !DILocation(line: 276, column: 8, scope: !1431)
!1435 = !DILocation(line: 277, column: 3, scope: !1431)
!1436 = !DILocation(line: 278, column: 10, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1424, file: !716, line: 277, column: 10)
!1438 = !DILocation(line: 278, column: 8, scope: !1437)
!1439 = !DILocation(line: 280, column: 7, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1415, file: !716, line: 280, column: 7)
!1441 = !DILocation(line: 280, column: 11, scope: !1440)
!1442 = !DILocation(line: 280, column: 7, scope: !1415)
!1443 = !DILocation(line: 280, column: 26, scope: !1444)
!1444 = !DILexicalBlockFile(scope: !1440, file: !716, discriminator: 1)
!1445 = !DILocation(line: 280, column: 20, scope: !1444)
!1446 = !DILocation(line: 280, column: 24, scope: !1444)
!1447 = !DILocation(line: 280, column: 19, scope: !1444)
!1448 = !DILocation(line: 271, column: 2, scope: !1449)
!1449 = !DILexicalBlockFile(scope: !1363, file: !716, discriminator: 2)
!1450 = distinct !{!1450, !1409}
!1451 = !DILocation(line: 282, column: 1, scope: !1363)
!1452 = !DILocation(line: 284, column: 9, scope: !1363)
!1453 = !DILocation(line: 284, column: 2, scope: !1363)
!1454 = !DILocation(line: 285, column: 1, scope: !1363)
!1455 = distinct !DISubprogram(name: "strip_params_colon", scope: !716, file: !716, line: 288, type: !1456, isLocal: true, isDefinition: true, scopeLine: 289, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !726)
!1456 = !DISubroutineType(types: !1457)
!1457 = !{null, !1458}
!1458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!1459 = !DILocalVariable(name: "params", arg: 1, scope: !1455, file: !716, line: 288, type: !1458)
!1460 = !DILocation(line: 288, column: 44, scope: !1455)
!1461 = !DILocalVariable(name: "s", scope: !1455, file: !716, line: 290, type: !44)
!1462 = !DILocation(line: 290, column: 8, scope: !1455)
!1463 = !DILocation(line: 292, column: 6, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1455, file: !716, line: 292, column: 6)
!1465 = !DILocation(line: 292, column: 13, scope: !1464)
!1466 = !DILocation(line: 292, column: 6, scope: !1455)
!1467 = !DILocation(line: 293, column: 3, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1464, file: !716, line: 292, column: 21)
!1469 = !DILocation(line: 296, column: 6, scope: !1455)
!1470 = !DILocation(line: 296, column: 4, scope: !1455)
!1471 = !DILocation(line: 297, column: 2, scope: !1455)
!1472 = !DILocation(line: 297, column: 10, scope: !1473)
!1473 = !DILexicalBlockFile(scope: !1455, file: !716, discriminator: 1)
!1474 = !DILocation(line: 297, column: 9, scope: !1473)
!1475 = !DILocation(line: 297, column: 12, scope: !1473)
!1476 = !DILocation(line: 297, column: 2, scope: !1473)
!1477 = !DILocation(line: 298, column: 8, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1479, file: !716, line: 298, column: 7)
!1479 = distinct !DILexicalBlock(scope: !1455, file: !716, line: 297, column: 21)
!1480 = !DILocation(line: 298, column: 7, scope: !1478)
!1481 = !DILocation(line: 298, column: 10, scope: !1478)
!1482 = !DILocation(line: 298, column: 7, scope: !1479)
!1483 = !DILocation(line: 299, column: 12, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1478, file: !716, line: 298, column: 18)
!1485 = !DILocation(line: 299, column: 15, scope: !1484)
!1486 = !DILocation(line: 299, column: 16, scope: !1484)
!1487 = !DILocation(line: 299, column: 27, scope: !1484)
!1488 = !DILocation(line: 299, column: 28, scope: !1484)
!1489 = !DILocation(line: 299, column: 20, scope: !1484)
!1490 = !DILocation(line: 299, column: 31, scope: !1484)
!1491 = !DILocation(line: 299, column: 4, scope: !1492)
!1492 = !DILexicalBlockFile(scope: !1484, file: !716, discriminator: 1)
!1493 = !DILocation(line: 300, column: 4, scope: !1484)
!1494 = !DILocation(line: 303, column: 14, scope: !1479)
!1495 = !DILocation(line: 303, column: 7, scope: !1479)
!1496 = !DILocation(line: 303, column: 5, scope: !1479)
!1497 = !DILocation(line: 304, column: 7, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1479, file: !716, line: 304, column: 7)
!1499 = !DILocation(line: 304, column: 9, scope: !1498)
!1500 = !DILocation(line: 304, column: 7, scope: !1479)
!1501 = !DILocation(line: 305, column: 4, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1498, file: !716, line: 304, column: 17)
!1503 = !DILocation(line: 308, column: 3, scope: !1479)
!1504 = !DILocation(line: 308, column: 11, scope: !1505)
!1505 = !DILexicalBlockFile(scope: !1479, file: !716, discriminator: 1)
!1506 = !DILocation(line: 308, column: 10, scope: !1505)
!1507 = !DILocation(line: 308, column: 13, scope: !1505)
!1508 = !DILocation(line: 308, column: 3, scope: !1505)
!1509 = !DILocation(line: 309, column: 5, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1479, file: !716, line: 308, column: 21)
!1511 = !DILocation(line: 308, column: 3, scope: !1512)
!1512 = !DILexicalBlockFile(scope: !1479, file: !716, discriminator: 2)
!1513 = distinct !{!1513, !1503}
!1514 = !DILocation(line: 297, column: 2, scope: !1515)
!1515 = !DILexicalBlockFile(scope: !1455, file: !716, discriminator: 2)
!1516 = distinct !{!1516, !1471}
!1517 = !DILocation(line: 312, column: 1, scope: !1455)
!1518 = distinct !DISubprogram(name: "irc_irc_init", scope: !716, file: !716, line: 441, type: !237, isLocal: false, isDefinition: true, scopeLine: 442, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !726)
!1519 = !DILocation(line: 443, column: 2, scope: !1518)
!1520 = !DILocation(line: 444, column: 2, scope: !1518)
!1521 = !DILocation(line: 445, column: 2, scope: !1518)
!1522 = !DILocation(line: 447, column: 23, scope: !1518)
!1523 = !DILocation(line: 448, column: 25, scope: !1518)
!1524 = !DILocation(line: 448, column: 23, scope: !1518)
!1525 = !DILocation(line: 449, column: 24, scope: !1518)
!1526 = !DILocation(line: 449, column: 22, scope: !1518)
!1527 = !DILocation(line: 450, column: 27, scope: !1518)
!1528 = !DILocation(line: 450, column: 25, scope: !1518)
!1529 = !DILocation(line: 451, column: 1, scope: !1518)
!1530 = distinct !DISubprogram(name: "irc_server_event", scope: !716, file: !716, line: 314, type: !1531, isLocal: true, isDefinition: true, scopeLine: 316, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !726)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{null, !52, !41, !41, !41}
!1533 = !DILocalVariable(name: "server", arg: 1, scope: !1530, file: !716, line: 314, type: !52)
!1534 = !DILocation(line: 314, column: 46, scope: !1530)
!1535 = !DILocalVariable(name: "line", arg: 2, scope: !1530, file: !716, line: 314, type: !41)
!1536 = !DILocation(line: 314, column: 66, scope: !1530)
!1537 = !DILocalVariable(name: "nick", arg: 3, scope: !1530, file: !716, line: 315, type: !41)
!1538 = !DILocation(line: 315, column: 21, scope: !1530)
!1539 = !DILocalVariable(name: "address", arg: 4, scope: !1530, file: !716, line: 315, type: !41)
!1540 = !DILocation(line: 315, column: 39, scope: !1530)
!1541 = !DILocalVariable(name: "signal", scope: !1530, file: !716, line: 317, type: !41)
!1542 = !DILocation(line: 317, column: 21, scope: !1530)
!1543 = !DILocalVariable(name: "event", scope: !1530, file: !716, line: 318, type: !44)
!1544 = !DILocation(line: 318, column: 8, scope: !1530)
!1545 = !DILocalVariable(name: "args", scope: !1530, file: !716, line: 318, type: !44)
!1546 = !DILocation(line: 318, column: 16, scope: !1530)
!1547 = !DILocation(line: 320, column: 2, scope: !1530)
!1548 = distinct !{!1548, !1547}
!1549 = !DILocation(line: 320, column: 10, scope: !1550)
!1550 = !DILexicalBlockFile(scope: !1551, file: !716, discriminator: 1)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !716, line: 320, column: 10)
!1552 = distinct !DILexicalBlock(scope: !1530, file: !716, line: 320, column: 4)
!1553 = !DILocation(line: 320, column: 15, scope: !1550)
!1554 = !DILocation(line: 320, column: 5, scope: !1555)
!1555 = !DILexicalBlockFile(scope: !1556, file: !716, discriminator: 2)
!1556 = distinct !DILexicalBlock(scope: !1551, file: !716, line: 320, column: 3)
!1557 = !DILocation(line: 320, column: 14, scope: !1558)
!1558 = !DILexicalBlockFile(scope: !1559, file: !716, discriminator: 3)
!1559 = distinct !DILexicalBlock(scope: !1551, file: !716, line: 320, column: 12)
!1560 = !DILocation(line: 320, column: 99, scope: !1558)
!1561 = !DILocation(line: 320, column: 110, scope: !1562)
!1562 = !DILexicalBlockFile(scope: !1552, file: !716, discriminator: 4)
!1563 = !DILocation(line: 323, column: 32, scope: !1530)
!1564 = !DILocation(line: 323, column: 10, scope: !1530)
!1565 = !DILocation(line: 323, column: 8, scope: !1530)
!1566 = !DILocation(line: 324, column: 16, scope: !1530)
!1567 = !DILocation(line: 324, column: 21, scope: !1530)
!1568 = !DILocation(line: 324, column: 9, scope: !1530)
!1569 = !DILocation(line: 324, column: 7, scope: !1530)
!1570 = !DILocation(line: 325, column: 6, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1530, file: !716, line: 325, column: 6)
!1572 = !DILocation(line: 325, column: 11, scope: !1571)
!1573 = !DILocation(line: 325, column: 6, scope: !1530)
!1574 = !DILocation(line: 325, column: 24, scope: !1575)
!1575 = !DILexicalBlockFile(scope: !1571, file: !716, discriminator: 1)
!1576 = !DILocation(line: 325, column: 27, scope: !1575)
!1577 = !DILocation(line: 325, column: 19, scope: !1575)
!1578 = !DILocation(line: 325, column: 45, scope: !1579)
!1579 = !DILexicalBlockFile(scope: !1571, file: !716, discriminator: 2)
!1580 = !DILocation(line: 326, column: 2, scope: !1530)
!1581 = !DILocation(line: 326, column: 10, scope: !1582)
!1582 = !DILexicalBlockFile(scope: !1530, file: !716, discriminator: 1)
!1583 = !DILocation(line: 326, column: 9, scope: !1582)
!1584 = !DILocation(line: 326, column: 15, scope: !1582)
!1585 = !DILocation(line: 326, column: 2, scope: !1582)
!1586 = !DILocation(line: 326, column: 27, scope: !1587)
!1587 = !DILexicalBlockFile(scope: !1530, file: !716, discriminator: 2)
!1588 = !DILocation(line: 326, column: 2, scope: !1587)
!1589 = distinct !{!1589, !1580}
!1590 = !DILocation(line: 327, column: 16, scope: !1530)
!1591 = !DILocation(line: 327, column: 2, scope: !1530)
!1592 = !DILocation(line: 330, column: 38, scope: !1530)
!1593 = !DILocation(line: 330, column: 46, scope: !1530)
!1594 = !DILocation(line: 330, column: 52, scope: !1530)
!1595 = !DILocation(line: 330, column: 59, scope: !1530)
!1596 = !DILocation(line: 330, column: 11, scope: !1530)
!1597 = !DILocation(line: 330, column: 9, scope: !1530)
!1598 = !DILocation(line: 331, column: 6, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1530, file: !716, line: 331, column: 6)
!1600 = !DILocation(line: 331, column: 13, scope: !1599)
!1601 = !DILocation(line: 331, column: 6, scope: !1530)
!1602 = !DILocation(line: 332, column: 12, scope: !1599)
!1603 = !DILocation(line: 332, column: 10, scope: !1599)
!1604 = !DILocation(line: 332, column: 3, scope: !1599)
!1605 = !DILocation(line: 334, column: 19, scope: !1599)
!1606 = !DILocation(line: 334, column: 27, scope: !1599)
!1607 = !DILocation(line: 334, column: 35, scope: !1599)
!1608 = !DILocation(line: 334, column: 3, scope: !1599)
!1609 = !DILocation(line: 337, column: 25, scope: !1530)
!1610 = !DILocation(line: 337, column: 30, scope: !1530)
!1611 = !DILocation(line: 337, column: 23, scope: !1530)
!1612 = !DILocation(line: 338, column: 19, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1530, file: !716, line: 338, column: 6)
!1614 = !DILocation(line: 338, column: 30, scope: !1613)
!1615 = !DILocation(line: 338, column: 38, scope: !1613)
!1616 = !DILocation(line: 338, column: 44, scope: !1613)
!1617 = !DILocation(line: 338, column: 50, scope: !1613)
!1618 = !DILocation(line: 338, column: 7, scope: !1613)
!1619 = !DILocation(line: 338, column: 6, scope: !1530)
!1620 = !DILocation(line: 339, column: 18, scope: !1613)
!1621 = !DILocation(line: 339, column: 43, scope: !1613)
!1622 = !DILocation(line: 339, column: 51, scope: !1613)
!1623 = !DILocation(line: 339, column: 57, scope: !1613)
!1624 = !DILocation(line: 339, column: 63, scope: !1613)
!1625 = !DILocation(line: 339, column: 3, scope: !1613)
!1626 = !DILocation(line: 340, column: 23, scope: !1530)
!1627 = !DILocation(line: 342, column: 9, scope: !1530)
!1628 = !DILocation(line: 342, column: 2, scope: !1530)
!1629 = !DILocation(line: 343, column: 1, scope: !1530)
!1630 = !DILocation(line: 343, column: 1, scope: !1582)
!1631 = distinct !DISubprogram(name: "irc_init_server", scope: !716, file: !716, line: 428, type: !1632, isLocal: true, isDefinition: true, scopeLine: 429, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !726)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{null, !52}
!1634 = !DILocalVariable(name: "server", arg: 1, scope: !1631, file: !716, line: 428, type: !52)
!1635 = !DILocation(line: 428, column: 45, scope: !1631)
!1636 = !DILocation(line: 430, column: 2, scope: !1631)
!1637 = distinct !{!1637, !1636}
!1638 = !DILocation(line: 430, column: 10, scope: !1639)
!1639 = !DILexicalBlockFile(scope: !1640, file: !716, discriminator: 1)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !716, line: 430, column: 10)
!1641 = distinct !DILexicalBlock(scope: !1631, file: !716, line: 430, column: 4)
!1642 = !DILocation(line: 430, column: 17, scope: !1639)
!1643 = !DILocation(line: 430, column: 5, scope: !1644)
!1644 = !DILexicalBlockFile(scope: !1645, file: !716, discriminator: 2)
!1645 = distinct !DILexicalBlock(scope: !1640, file: !716, line: 430, column: 3)
!1646 = !DILocation(line: 430, column: 14, scope: !1647)
!1647 = !DILexicalBlockFile(scope: !1648, file: !716, discriminator: 3)
!1648 = distinct !DILexicalBlock(scope: !1640, file: !716, line: 430, column: 12)
!1649 = !DILocation(line: 430, column: 101, scope: !1647)
!1650 = !DILocation(line: 430, column: 112, scope: !1651)
!1651 = !DILexicalBlockFile(scope: !1641, file: !716, discriminator: 4)
!1652 = !DILocation(line: 432, column: 87, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1631, file: !716, line: 432, column: 6)
!1654 = !DILocation(line: 432, column: 69, scope: !1653)
!1655 = !DILocation(line: 432, column: 54, scope: !1653)
!1656 = !DILocation(line: 432, column: 53, scope: !1653)
!1657 = !DILocation(line: 432, column: 28, scope: !1658)
!1658 = !DILexicalBlockFile(scope: !1653, file: !716, discriminator: 3)
!1659 = !DILocation(line: 432, column: 9, scope: !1653)
!1660 = !DILocation(line: 432, column: 6, scope: !1631)
!1661 = !DILocation(line: 432, column: 8, scope: !1662)
!1662 = !DILexicalBlockFile(scope: !1653, file: !716, discriminator: 1)
!1663 = !DILocation(line: 432, column: 6, scope: !1664)
!1664 = !DILexicalBlockFile(scope: !1631, file: !716, discriminator: 2)
!1665 = !DILocation(line: 433, column: 3, scope: !1653)
!1666 = !DILocation(line: 436, column: 37, scope: !1631)
!1667 = !DILocation(line: 436, column: 45, scope: !1631)
!1668 = !DILocation(line: 436, column: 15, scope: !1631)
!1669 = !DILocation(line: 438, column: 45, scope: !1631)
!1670 = !DILocation(line: 436, column: 3, scope: !1671)
!1671 = !DILexicalBlockFile(scope: !1631, file: !716, discriminator: 1)
!1672 = !DILocation(line: 435, column: 2, scope: !1631)
!1673 = !DILocation(line: 435, column: 10, scope: !1631)
!1674 = !DILocation(line: 435, column: 18, scope: !1631)
!1675 = !DILocation(line: 439, column: 1, scope: !1631)
!1676 = !DILocation(line: 439, column: 1, scope: !1671)
!1677 = distinct !DISubprogram(name: "irc_parse_incoming_line", scope: !716, file: !716, line: 383, type: !1678, isLocal: true, isDefinition: true, scopeLine: 384, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !726)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{null, !52, !44}
!1680 = !DILocalVariable(name: "server", arg: 1, scope: !1677, file: !716, line: 383, type: !52)
!1681 = !DILocation(line: 383, column: 53, scope: !1677)
!1682 = !DILocalVariable(name: "line", arg: 2, scope: !1677, file: !716, line: 383, type: !44)
!1683 = !DILocation(line: 383, column: 67, scope: !1677)
!1684 = !DILocalVariable(name: "nick", scope: !1677, file: !716, line: 385, type: !44)
!1685 = !DILocation(line: 385, column: 8, scope: !1677)
!1686 = !DILocalVariable(name: "address", scope: !1677, file: !716, line: 385, type: !44)
!1687 = !DILocation(line: 385, column: 15, scope: !1677)
!1688 = !DILocation(line: 387, column: 2, scope: !1677)
!1689 = distinct !{!1689, !1688}
!1690 = !DILocation(line: 387, column: 10, scope: !1691)
!1691 = !DILexicalBlockFile(scope: !1692, file: !716, discriminator: 1)
!1692 = distinct !DILexicalBlock(scope: !1693, file: !716, line: 387, column: 10)
!1693 = distinct !DILexicalBlock(scope: !1677, file: !716, line: 387, column: 4)
!1694 = !DILocation(line: 387, column: 17, scope: !1691)
!1695 = !DILocation(line: 387, column: 5, scope: !1696)
!1696 = !DILexicalBlockFile(scope: !1697, file: !716, discriminator: 2)
!1697 = distinct !DILexicalBlock(scope: !1692, file: !716, line: 387, column: 3)
!1698 = !DILocation(line: 387, column: 14, scope: !1699)
!1699 = !DILexicalBlockFile(scope: !1700, file: !716, discriminator: 3)
!1700 = distinct !DILexicalBlock(scope: !1692, file: !716, line: 387, column: 12)
!1701 = !DILocation(line: 387, column: 101, scope: !1699)
!1702 = !DILocation(line: 387, column: 112, scope: !1703)
!1703 = !DILexicalBlockFile(scope: !1693, file: !716, discriminator: 4)
!1704 = !DILocation(line: 388, column: 2, scope: !1677)
!1705 = distinct !{!1705, !1704}
!1706 = !DILocation(line: 388, column: 10, scope: !1707)
!1707 = !DILexicalBlockFile(scope: !1708, file: !716, discriminator: 1)
!1708 = distinct !DILexicalBlock(scope: !1709, file: !716, line: 388, column: 10)
!1709 = distinct !DILexicalBlock(scope: !1677, file: !716, line: 388, column: 4)
!1710 = !DILocation(line: 388, column: 15, scope: !1707)
!1711 = !DILocation(line: 388, column: 5, scope: !1712)
!1712 = !DILexicalBlockFile(scope: !1713, file: !716, discriminator: 2)
!1713 = distinct !DILexicalBlock(scope: !1708, file: !716, line: 388, column: 3)
!1714 = !DILocation(line: 388, column: 14, scope: !1715)
!1715 = !DILexicalBlockFile(scope: !1716, file: !716, discriminator: 3)
!1716 = distinct !DILexicalBlock(scope: !1708, file: !716, line: 388, column: 12)
!1717 = !DILocation(line: 388, column: 99, scope: !1715)
!1718 = !DILocation(line: 388, column: 110, scope: !1719)
!1719 = !DILexicalBlockFile(scope: !1709, file: !716, discriminator: 4)
!1720 = !DILocation(line: 390, column: 26, scope: !1677)
!1721 = !DILocation(line: 390, column: 9, scope: !1677)
!1722 = !DILocation(line: 390, column: 7, scope: !1677)
!1723 = !DILocation(line: 391, column: 7, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1677, file: !716, line: 391, column: 6)
!1725 = !DILocation(line: 391, column: 6, scope: !1724)
!1726 = !DILocation(line: 391, column: 12, scope: !1724)
!1727 = !DILocation(line: 391, column: 6, scope: !1677)
!1728 = !DILocation(line: 392, column: 18, scope: !1724)
!1729 = !DILocation(line: 392, column: 42, scope: !1724)
!1730 = !DILocation(line: 392, column: 50, scope: !1724)
!1731 = !DILocation(line: 392, column: 56, scope: !1724)
!1732 = !DILocation(line: 392, column: 62, scope: !1724)
!1733 = !DILocation(line: 392, column: 3, scope: !1724)
!1734 = !DILocation(line: 393, column: 1, scope: !1677)
!1735 = distinct !DISubprogram(name: "irc_irc_deinit", scope: !716, file: !716, line: 453, type: !237, isLocal: false, isDefinition: true, scopeLine: 454, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !726)
!1736 = !DILocation(line: 455, column: 2, scope: !1735)
!1737 = !DILocation(line: 456, column: 2, scope: !1735)
!1738 = !DILocation(line: 457, column: 2, scope: !1735)
!1739 = !DILocation(line: 458, column: 1, scope: !1735)
!1740 = distinct !DISubprogram(name: "irc_parse_incoming", scope: !716, file: !716, line: 396, type: !1741, isLocal: true, isDefinition: true, scopeLine: 397, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !726)
!1741 = !DISubroutineType(types: !1742)
!1742 = !{null, !406}
!1743 = !DILocalVariable(name: "server", arg: 1, scope: !1740, file: !716, line: 396, type: !406)
!1744 = !DILocation(line: 396, column: 44, scope: !1740)
!1745 = !DILocalVariable(name: "str", scope: !1740, file: !716, line: 398, type: !44)
!1746 = !DILocation(line: 398, column: 8, scope: !1740)
!1747 = !DILocalVariable(name: "count", scope: !1740, file: !716, line: 399, type: !60)
!1748 = !DILocation(line: 399, column: 6, scope: !1740)
!1749 = !DILocalVariable(name: "ret", scope: !1740, file: !716, line: 400, type: !60)
!1750 = !DILocation(line: 400, column: 6, scope: !1740)
!1751 = !DILocation(line: 402, column: 2, scope: !1740)
!1752 = distinct !{!1752, !1751}
!1753 = !DILocation(line: 402, column: 10, scope: !1754)
!1754 = !DILexicalBlockFile(scope: !1755, file: !716, discriminator: 1)
!1755 = distinct !DILexicalBlock(scope: !1756, file: !716, line: 402, column: 10)
!1756 = distinct !DILexicalBlock(scope: !1740, file: !716, line: 402, column: 4)
!1757 = !DILocation(line: 402, column: 17, scope: !1754)
!1758 = !DILocation(line: 402, column: 5, scope: !1759)
!1759 = !DILexicalBlockFile(scope: !1760, file: !716, discriminator: 2)
!1760 = distinct !DILexicalBlock(scope: !1755, file: !716, line: 402, column: 3)
!1761 = !DILocation(line: 402, column: 14, scope: !1762)
!1762 = !DILexicalBlockFile(scope: !1763, file: !716, discriminator: 3)
!1763 = distinct !DILexicalBlock(scope: !1755, file: !716, line: 402, column: 12)
!1764 = !DILocation(line: 402, column: 101, scope: !1762)
!1765 = !DILocation(line: 402, column: 112, scope: !1766)
!1766 = !DILexicalBlockFile(scope: !1756, file: !716, discriminator: 4)
!1767 = !DILocation(line: 407, column: 8, scope: !1740)
!1768 = !DILocation(line: 408, column: 6, scope: !1740)
!1769 = !DILocation(line: 409, column: 13, scope: !1740)
!1770 = !DILocation(line: 409, column: 2, scope: !1740)
!1771 = !DILocation(line: 410, column: 2, scope: !1740)
!1772 = !DILocation(line: 410, column: 10, scope: !1773)
!1773 = !DILexicalBlockFile(scope: !1740, file: !716, discriminator: 1)
!1774 = !DILocation(line: 410, column: 18, scope: !1773)
!1775 = !DILocation(line: 410, column: 31, scope: !1773)
!1776 = !DILocation(line: 411, column: 44, scope: !1740)
!1777 = !DILocation(line: 411, column: 52, scope: !1740)
!1778 = !DILocation(line: 411, column: 66, scope: !1740)
!1779 = !DILocation(line: 411, column: 72, scope: !1740)
!1780 = !DILocation(line: 411, column: 16, scope: !1740)
!1781 = !DILocation(line: 411, column: 14, scope: !1740)
!1782 = !DILocation(line: 411, column: 78, scope: !1740)
!1783 = !DILocation(line: 410, column: 2, scope: !1784)
!1784 = !DILexicalBlockFile(scope: !1740, file: !716, discriminator: 2)
!1785 = !DILocation(line: 412, column: 16, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1740, file: !716, line: 411, column: 83)
!1787 = !DILocation(line: 412, column: 24, scope: !1786)
!1788 = !DILocation(line: 412, column: 32, scope: !1786)
!1789 = !DILocation(line: 412, column: 3, scope: !1786)
!1790 = !DILocation(line: 413, column: 18, scope: !1786)
!1791 = !DILocation(line: 413, column: 45, scope: !1786)
!1792 = !DILocation(line: 413, column: 53, scope: !1786)
!1793 = !DILocation(line: 413, column: 3, scope: !1786)
!1794 = !DILocation(line: 415, column: 7, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1786, file: !716, line: 415, column: 7)
!1796 = !DILocation(line: 415, column: 15, scope: !1795)
!1797 = !DILocation(line: 415, column: 7, scope: !1786)
!1798 = !DILocation(line: 416, column: 22, scope: !1795)
!1799 = !DILocation(line: 416, column: 4, scope: !1795)
!1800 = !DILocation(line: 418, column: 8, scope: !1786)
!1801 = !DILocation(line: 410, column: 2, scope: !1802)
!1802 = !DILexicalBlockFile(scope: !1740, file: !716, discriminator: 3)
!1803 = distinct !{!1803, !1771}
!1804 = !DILocation(line: 420, column: 6, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1740, file: !716, line: 420, column: 6)
!1806 = !DILocation(line: 420, column: 10, scope: !1805)
!1807 = !DILocation(line: 420, column: 6, scope: !1740)
!1808 = !DILocation(line: 422, column: 3, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1805, file: !716, line: 420, column: 17)
!1810 = !DILocation(line: 422, column: 11, scope: !1809)
!1811 = !DILocation(line: 422, column: 27, scope: !1809)
!1812 = !DILocation(line: 423, column: 21, scope: !1809)
!1813 = !DILocation(line: 423, column: 3, scope: !1809)
!1814 = !DILocation(line: 424, column: 2, scope: !1809)
!1815 = !DILocation(line: 425, column: 15, scope: !1740)
!1816 = !DILocation(line: 425, column: 2, scope: !1740)
!1817 = !DILocation(line: 426, column: 1, scope: !1740)
!1818 = !DILocation(line: 426, column: 1, scope: !1773)
!1819 = distinct !DISubprogram(name: "irc_parse_prefix", scope: !716, file: !716, line: 345, type: !1820, isLocal: true, isDefinition: true, scopeLine: 346, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !726)
!1820 = !DISubroutineType(types: !1821)
!1821 = !{!44, !44, !43, !43}
!1822 = !DILocalVariable(name: "line", arg: 1, scope: !1819, file: !716, line: 345, type: !44)
!1823 = !DILocation(line: 345, column: 37, scope: !1819)
!1824 = !DILocalVariable(name: "nick", arg: 2, scope: !1819, file: !716, line: 345, type: !43)
!1825 = !DILocation(line: 345, column: 50, scope: !1819)
!1826 = !DILocalVariable(name: "address", arg: 3, scope: !1819, file: !716, line: 345, type: !43)
!1827 = !DILocation(line: 345, column: 63, scope: !1819)
!1828 = !DILocalVariable(name: "p", scope: !1819, file: !716, line: 347, type: !44)
!1829 = !DILocation(line: 347, column: 8, scope: !1819)
!1830 = !DILocation(line: 349, column: 11, scope: !1819)
!1831 = !DILocation(line: 349, column: 19, scope: !1819)
!1832 = !DILocation(line: 349, column: 3, scope: !1819)
!1833 = !DILocation(line: 349, column: 8, scope: !1819)
!1834 = !DILocation(line: 353, column: 7, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1819, file: !716, line: 353, column: 6)
!1836 = !DILocation(line: 353, column: 6, scope: !1835)
!1837 = !DILocation(line: 353, column: 12, scope: !1835)
!1838 = !DILocation(line: 353, column: 6, scope: !1819)
!1839 = !DILocation(line: 354, column: 10, scope: !1835)
!1840 = !DILocation(line: 354, column: 3, scope: !1835)
!1841 = !DILocation(line: 356, column: 10, scope: !1819)
!1842 = !DILocation(line: 356, column: 3, scope: !1819)
!1843 = !DILocation(line: 356, column: 8, scope: !1819)
!1844 = !DILocation(line: 356, column: 20, scope: !1819)
!1845 = !DILocation(line: 357, column: 2, scope: !1819)
!1846 = !DILocation(line: 357, column: 10, scope: !1847)
!1847 = !DILexicalBlockFile(scope: !1819, file: !716, discriminator: 1)
!1848 = !DILocation(line: 357, column: 9, scope: !1847)
!1849 = !DILocation(line: 357, column: 15, scope: !1847)
!1850 = !DILocation(line: 357, column: 23, scope: !1847)
!1851 = !DILocation(line: 357, column: 27, scope: !1852)
!1852 = !DILexicalBlockFile(scope: !1819, file: !716, discriminator: 2)
!1853 = !DILocation(line: 357, column: 26, scope: !1852)
!1854 = !DILocation(line: 357, column: 32, scope: !1852)
!1855 = !DILocation(line: 357, column: 2, scope: !1856)
!1856 = !DILexicalBlockFile(scope: !1819, file: !716, discriminator: 3)
!1857 = !DILocation(line: 358, column: 8, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1859, file: !716, line: 358, column: 7)
!1859 = distinct !DILexicalBlock(scope: !1819, file: !716, line: 357, column: 40)
!1860 = !DILocation(line: 358, column: 7, scope: !1858)
!1861 = !DILocation(line: 358, column: 13, scope: !1858)
!1862 = !DILocation(line: 358, column: 20, scope: !1858)
!1863 = !DILocation(line: 358, column: 24, scope: !1864)
!1864 = !DILexicalBlockFile(scope: !1858, file: !716, discriminator: 1)
!1865 = !DILocation(line: 358, column: 23, scope: !1864)
!1866 = !DILocation(line: 358, column: 29, scope: !1864)
!1867 = !DILocation(line: 358, column: 7, scope: !1864)
!1868 = !DILocation(line: 359, column: 8, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1858, file: !716, line: 358, column: 37)
!1870 = !DILocation(line: 359, column: 6, scope: !1869)
!1871 = !DILocation(line: 360, column: 9, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1869, file: !716, line: 360, column: 8)
!1873 = !DILocation(line: 360, column: 8, scope: !1872)
!1874 = !DILocation(line: 360, column: 14, scope: !1872)
!1875 = !DILocation(line: 360, column: 8, scope: !1869)
!1876 = !DILocation(line: 361, column: 5, scope: !1872)
!1877 = !DILocation(line: 362, column: 3, scope: !1869)
!1878 = !DILocation(line: 363, column: 7, scope: !1859)
!1879 = !DILocation(line: 357, column: 2, scope: !1880)
!1880 = !DILexicalBlockFile(scope: !1819, file: !716, discriminator: 4)
!1881 = distinct !{!1881, !1845}
!1882 = !DILocation(line: 366, column: 6, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1819, file: !716, line: 366, column: 6)
!1884 = !DILocation(line: 366, column: 8, scope: !1883)
!1885 = !DILocation(line: 366, column: 6, scope: !1819)
!1886 = !DILocation(line: 367, column: 10, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1883, file: !716, line: 366, column: 16)
!1888 = !DILocation(line: 367, column: 8, scope: !1887)
!1889 = !DILocation(line: 368, column: 8, scope: !1887)
!1890 = !DILocation(line: 368, column: 11, scope: !1887)
!1891 = !DILocation(line: 369, column: 14, scope: !1887)
!1892 = !DILocation(line: 369, column: 4, scope: !1887)
!1893 = !DILocation(line: 369, column: 12, scope: !1887)
!1894 = !DILocation(line: 370, column: 3, scope: !1887)
!1895 = !DILocation(line: 370, column: 11, scope: !1896)
!1896 = !DILexicalBlockFile(scope: !1887, file: !716, discriminator: 1)
!1897 = !DILocation(line: 370, column: 10, scope: !1896)
!1898 = !DILocation(line: 370, column: 16, scope: !1896)
!1899 = !DILocation(line: 370, column: 24, scope: !1896)
!1900 = !DILocation(line: 370, column: 28, scope: !1901)
!1901 = !DILexicalBlockFile(scope: !1887, file: !716, discriminator: 2)
!1902 = !DILocation(line: 370, column: 27, scope: !1901)
!1903 = !DILocation(line: 370, column: 33, scope: !1901)
!1904 = !DILocation(line: 370, column: 3, scope: !1905)
!1905 = !DILexicalBlockFile(scope: !1887, file: !716, discriminator: 3)
!1906 = !DILocation(line: 371, column: 8, scope: !1887)
!1907 = !DILocation(line: 370, column: 3, scope: !1908)
!1908 = !DILexicalBlockFile(scope: !1887, file: !716, discriminator: 4)
!1909 = distinct !{!1909, !1894}
!1910 = !DILocation(line: 372, column: 2, scope: !1887)
!1911 = !DILocation(line: 374, column: 7, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1819, file: !716, line: 374, column: 6)
!1913 = !DILocation(line: 374, column: 6, scope: !1912)
!1914 = !DILocation(line: 374, column: 12, scope: !1912)
!1915 = !DILocation(line: 374, column: 6, scope: !1819)
!1916 = !DILocation(line: 375, column: 8, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1912, file: !716, line: 374, column: 20)
!1918 = !DILocation(line: 375, column: 11, scope: !1917)
!1919 = !DILocation(line: 376, column: 3, scope: !1917)
!1920 = !DILocation(line: 376, column: 11, scope: !1921)
!1921 = !DILexicalBlockFile(scope: !1917, file: !716, discriminator: 1)
!1922 = !DILocation(line: 376, column: 10, scope: !1921)
!1923 = !DILocation(line: 376, column: 16, scope: !1921)
!1924 = !DILocation(line: 376, column: 3, scope: !1921)
!1925 = !DILocation(line: 376, column: 28, scope: !1926)
!1926 = !DILexicalBlockFile(scope: !1917, file: !716, discriminator: 2)
!1927 = !DILocation(line: 376, column: 3, scope: !1926)
!1928 = distinct !{!1928, !1919}
!1929 = !DILocation(line: 377, column: 2, scope: !1917)
!1930 = !DILocation(line: 379, column: 9, scope: !1819)
!1931 = !DILocation(line: 379, column: 2, scope: !1819)
!1932 = !DILocation(line: 380, column: 1, scope: !1819)
