; ModuleID = './line155-netsplit.o.i'
source_filename = "./line155-netsplit.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GSList = type { i8*, %struct._GSList* }
%struct.NETSPLIT_REC = type { %struct.NETSPLIT_SERVER_REC*, i8*, i8*, %struct._GSList*, i8, i64 }
%struct.NETSPLIT_SERVER_REC = type { i8*, i8*, i32, i32, i64 }
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
%struct.NETSPLIT_CHAN_REC = type { i8*, i8, [8 x i8] }

@.str = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"IRC\00", align 1
@__func__.netsplit_find = private unnamed_addr constant [14 x i8] c"netsplit_find\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"IS_IRC_SERVER(server)\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"nick != NULL\00", align 1
@__func__.netsplit_find_channel = private unnamed_addr constant [22 x i8] c"netsplit_find_channel\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"channel != NULL\00", align 1
@__func__.quitmsg_is_split = private unnamed_addr constant [17 x i8] c"quitmsg_is_split\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"msg != NULL\00", align 1
@split_tag = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"irc/core\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"event join\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"event quit\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"event nick\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"server disconnected\00", align 1
@servers = external global %struct._GSList*, align 8
@__func__.netsplit_destroy = private unnamed_addr constant [17 x i8] c"netsplit_destroy\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"rec != NULL\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"netsplit remove\00", align 1
@__func__.netsplit_server_destroy = private unnamed_addr constant [24 x i8] c"netsplit_server_destroy\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"netsplit server remove\00", align 1
@__func__.event_quit = private unnamed_addr constant [11 x i8] c"event_quit\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"data != NULL\00", align 1
@__func__.netsplit_add = private unnamed_addr constant [13 x i8] c"netsplit_add\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"address != NULL\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"netsplit_add() : only one server found\00", align 1
@.str.17 = private unnamed_addr constant [46 x i8] c"netsplit_add(): nick '%s' not in any channels\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"netsplit new\00", align 1
@__func__.netsplit_server_create = private unnamed_addr constant [23 x i8] c"netsplit_server_create\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"netsplit server new\00", align 1
@__func__.netsplit_server_find = private unnamed_addr constant [21 x i8] c"netsplit_server_find\00", align 1
@__func__.sig_disconnected = private unnamed_addr constant [17 x i8] c"sig_disconnected\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"server != NULL\00", align 1

; Function Attrs: nounwind uwtable
define %struct.NETSPLIT_REC* @netsplit_find(%struct._IRC_SERVER_REC*, i8*, i8*) #0 !dbg !737 {
  %4 = alloca %struct.NETSPLIT_REC*, align 8
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.NETSPLIT_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !741, metadata !742), !dbg !743
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !744, metadata !742), !dbg !745
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !746, metadata !742), !dbg !747
  call void @llvm.dbg.declare(metadata %struct.NETSPLIT_REC** %8, metadata !748, metadata !742), !dbg !749
  br label %9, !dbg !750, !llvm.loop !751

; <label>:9:                                      ; preds = %3
  %10 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !752
  %11 = bitcast %struct._IRC_SERVER_REC* %10 to i8*, !dbg !752
  %12 = call i8* @module_check_cast(i8* %11, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)), !dbg !756
  %13 = bitcast i8* %12 to %struct._SERVER_REC*, !dbg !757
  %14 = bitcast %struct._SERVER_REC* %13 to i8*, !dbg !758
  %15 = call i8* @chat_protocol_check_cast(i8* %14, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)), !dbg !759
  %16 = bitcast i8* %15 to %struct._IRC_SERVER_REC*, !dbg !761
  %17 = icmp ne %struct._IRC_SERVER_REC* %16, null, !dbg !761
  br i1 %17, label %18, label %19, !dbg !762

; <label>:18:                                     ; preds = %9
  br i1 false, label %21, label %20, !dbg !763

; <label>:19:                                     ; preds = %9
  br i1 false, label %20, label %21, !dbg !765

; <label>:20:                                     ; preds = %19, %18
  br label %22, !dbg !767

; <label>:21:                                     ; preds = %19, %18
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.netsplit_find, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0)), !dbg !770
  store %struct.NETSPLIT_REC* null, %struct.NETSPLIT_REC** %4, align 8, !dbg !773
  br label %55, !dbg !773

; <label>:22:                                     ; preds = %20
  br label %23, !dbg !774

; <label>:23:                                     ; preds = %22
  br label %24, !dbg !776, !llvm.loop !777

; <label>:24:                                     ; preds = %23
  %25 = load i8*, i8** %6, align 8, !dbg !778
  %26 = icmp ne i8* %25, null, !dbg !782
  br i1 %26, label %27, label %28, !dbg !778

; <label>:27:                                     ; preds = %24
  br label %29, !dbg !783

; <label>:28:                                     ; preds = %24
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.netsplit_find, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0)), !dbg !786
  store %struct.NETSPLIT_REC* null, %struct.NETSPLIT_REC** %4, align 8, !dbg !789
  br label %55, !dbg !789

; <label>:29:                                     ; preds = %27
  br label %30, !dbg !790

; <label>:30:                                     ; preds = %29
  %31 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !792
  %32 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %31, i32 0, i32 65, !dbg !793
  %33 = load %struct._GHashTable*, %struct._GHashTable** %32, align 8, !dbg !793
  %34 = load i8*, i8** %6, align 8, !dbg !794
  %35 = call i8* @g_hash_table_lookup(%struct._GHashTable* %33, i8* %34), !dbg !795
  %36 = bitcast i8* %35 to %struct.NETSPLIT_REC*, !dbg !795
  store %struct.NETSPLIT_REC* %36, %struct.NETSPLIT_REC** %8, align 8, !dbg !796
  %37 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %8, align 8, !dbg !797
  %38 = icmp eq %struct.NETSPLIT_REC* %37, null, !dbg !799
  br i1 %38, label %39, label %40, !dbg !800

; <label>:39:                                     ; preds = %30
  store %struct.NETSPLIT_REC* null, %struct.NETSPLIT_REC** %4, align 8, !dbg !801
  br label %55, !dbg !801

; <label>:40:                                     ; preds = %30
  %41 = load i8*, i8** %7, align 8, !dbg !803
  %42 = icmp eq i8* %41, null, !dbg !804
  br i1 %42, label %50, label %43, !dbg !805

; <label>:43:                                     ; preds = %40
  %44 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %8, align 8, !dbg !806
  %45 = getelementptr inbounds %struct.NETSPLIT_REC, %struct.NETSPLIT_REC* %44, i32 0, i32 2, !dbg !807
  %46 = load i8*, i8** %45, align 8, !dbg !807
  %47 = load i8*, i8** %7, align 8, !dbg !808
  %48 = call i32 @g_ascii_strcasecmp(i8* %46, i8* %47), !dbg !809
  %49 = icmp eq i32 %48, 0, !dbg !810
  br i1 %49, label %50, label %52, !dbg !811

; <label>:50:                                     ; preds = %43, %40
  %51 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %8, align 8, !dbg !813
  br label %53, !dbg !814

; <label>:52:                                     ; preds = %43
  br label %53, !dbg !816

; <label>:53:                                     ; preds = %52, %50
  %54 = phi %struct.NETSPLIT_REC* [ %51, %50 ], [ null, %52 ], !dbg !818
  store %struct.NETSPLIT_REC* %54, %struct.NETSPLIT_REC** %4, align 8, !dbg !820
  br label %55, !dbg !820

; <label>:55:                                     ; preds = %53, %39, %28, %21
  %56 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %4, align 8, !dbg !821
  ret %struct.NETSPLIT_REC* %56, !dbg !821
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i8* @chat_protocol_check_cast(i8*, i32, i8*) #2

declare i8* @module_check_cast(i8*, i32, i8*) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #2

declare i32 @g_ascii_strcasecmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define %struct.NETSPLIT_CHAN_REC* @netsplit_find_channel(%struct._IRC_SERVER_REC*, i8*, i8*, i8*) #0 !dbg !822 {
  %5 = alloca %struct.NETSPLIT_CHAN_REC*, align 8
  %6 = alloca %struct._IRC_SERVER_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.NETSPLIT_REC*, align 8
  %11 = alloca %struct._GSList*, align 8
  %12 = alloca %struct.NETSPLIT_CHAN_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %6, metadata !825, metadata !742), !dbg !826
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !827, metadata !742), !dbg !828
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !829, metadata !742), !dbg !830
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !831, metadata !742), !dbg !832
  call void @llvm.dbg.declare(metadata %struct.NETSPLIT_REC** %10, metadata !833, metadata !742), !dbg !834
  call void @llvm.dbg.declare(metadata %struct._GSList** %11, metadata !835, metadata !742), !dbg !836
  br label %13, !dbg !837, !llvm.loop !838

; <label>:13:                                     ; preds = %4
  %14 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !839
  %15 = bitcast %struct._IRC_SERVER_REC* %14 to i8*, !dbg !839
  %16 = call i8* @module_check_cast(i8* %15, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)), !dbg !843
  %17 = bitcast i8* %16 to %struct._SERVER_REC*, !dbg !844
  %18 = bitcast %struct._SERVER_REC* %17 to i8*, !dbg !845
  %19 = call i8* @chat_protocol_check_cast(i8* %18, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)), !dbg !846
  %20 = bitcast i8* %19 to %struct._IRC_SERVER_REC*, !dbg !848
  %21 = icmp ne %struct._IRC_SERVER_REC* %20, null, !dbg !848
  br i1 %21, label %22, label %23, !dbg !849

; <label>:22:                                     ; preds = %13
  br i1 false, label %25, label %24, !dbg !850

; <label>:23:                                     ; preds = %13
  br i1 false, label %24, label %25, !dbg !852

; <label>:24:                                     ; preds = %23, %22
  br label %26, !dbg !854

; <label>:25:                                     ; preds = %23, %22
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.netsplit_find_channel, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0)), !dbg !857
  store %struct.NETSPLIT_CHAN_REC* null, %struct.NETSPLIT_CHAN_REC** %5, align 8, !dbg !860
  br label %75, !dbg !860

; <label>:26:                                     ; preds = %24
  br label %27, !dbg !861

; <label>:27:                                     ; preds = %26
  br label %28, !dbg !863, !llvm.loop !864

; <label>:28:                                     ; preds = %27
  %29 = load i8*, i8** %7, align 8, !dbg !865
  %30 = icmp ne i8* %29, null, !dbg !869
  br i1 %30, label %31, label %32, !dbg !865

; <label>:31:                                     ; preds = %28
  br label %33, !dbg !870

; <label>:32:                                     ; preds = %28
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.netsplit_find_channel, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0)), !dbg !873
  store %struct.NETSPLIT_CHAN_REC* null, %struct.NETSPLIT_CHAN_REC** %5, align 8, !dbg !876
  br label %75, !dbg !876

; <label>:33:                                     ; preds = %31
  br label %34, !dbg !877

; <label>:34:                                     ; preds = %33
  br label %35, !dbg !879, !llvm.loop !880

; <label>:35:                                     ; preds = %34
  %36 = load i8*, i8** %9, align 8, !dbg !881
  %37 = icmp ne i8* %36, null, !dbg !885
  br i1 %37, label %38, label %39, !dbg !881

; <label>:38:                                     ; preds = %35
  br label %40, !dbg !886

; <label>:39:                                     ; preds = %35
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.netsplit_find_channel, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0)), !dbg !889
  store %struct.NETSPLIT_CHAN_REC* null, %struct.NETSPLIT_CHAN_REC** %5, align 8, !dbg !892
  br label %75, !dbg !892

; <label>:40:                                     ; preds = %38
  br label %41, !dbg !893

; <label>:41:                                     ; preds = %40
  %42 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !895
  %43 = load i8*, i8** %7, align 8, !dbg !896
  %44 = load i8*, i8** %8, align 8, !dbg !897
  %45 = call %struct.NETSPLIT_REC* @netsplit_find(%struct._IRC_SERVER_REC* %42, i8* %43, i8* %44), !dbg !898
  store %struct.NETSPLIT_REC* %45, %struct.NETSPLIT_REC** %10, align 8, !dbg !899
  %46 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %10, align 8, !dbg !900
  %47 = icmp eq %struct.NETSPLIT_REC* %46, null, !dbg !902
  br i1 %47, label %48, label %49, !dbg !903

; <label>:48:                                     ; preds = %41
  store %struct.NETSPLIT_CHAN_REC* null, %struct.NETSPLIT_CHAN_REC** %5, align 8, !dbg !904
  br label %75, !dbg !904

; <label>:49:                                     ; preds = %41
  %50 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %10, align 8, !dbg !906
  %51 = getelementptr inbounds %struct.NETSPLIT_REC, %struct.NETSPLIT_REC* %50, i32 0, i32 3, !dbg !908
  %52 = load %struct._GSList*, %struct._GSList** %51, align 8, !dbg !908
  store %struct._GSList* %52, %struct._GSList** %11, align 8, !dbg !909
  br label %53, !dbg !910

; <label>:53:                                     ; preds = %70, %49
  %54 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !911
  %55 = icmp ne %struct._GSList* %54, null, !dbg !914
  br i1 %55, label %56, label %74, !dbg !915

; <label>:56:                                     ; preds = %53
  call void @llvm.dbg.declare(metadata %struct.NETSPLIT_CHAN_REC** %12, metadata !916, metadata !742), !dbg !918
  %57 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !919
  %58 = getelementptr inbounds %struct._GSList, %struct._GSList* %57, i32 0, i32 0, !dbg !920
  %59 = load i8*, i8** %58, align 8, !dbg !920
  %60 = bitcast i8* %59 to %struct.NETSPLIT_CHAN_REC*, !dbg !919
  store %struct.NETSPLIT_CHAN_REC* %60, %struct.NETSPLIT_CHAN_REC** %12, align 8, !dbg !918
  %61 = load %struct.NETSPLIT_CHAN_REC*, %struct.NETSPLIT_CHAN_REC** %12, align 8, !dbg !921
  %62 = getelementptr inbounds %struct.NETSPLIT_CHAN_REC, %struct.NETSPLIT_CHAN_REC* %61, i32 0, i32 0, !dbg !923
  %63 = load i8*, i8** %62, align 8, !dbg !923
  %64 = load i8*, i8** %9, align 8, !dbg !924
  %65 = call i32 @g_ascii_strcasecmp(i8* %63, i8* %64), !dbg !925
  %66 = icmp eq i32 %65, 0, !dbg !926
  br i1 %66, label %67, label %69, !dbg !927

; <label>:67:                                     ; preds = %56
  %68 = load %struct.NETSPLIT_CHAN_REC*, %struct.NETSPLIT_CHAN_REC** %12, align 8, !dbg !928
  store %struct.NETSPLIT_CHAN_REC* %68, %struct.NETSPLIT_CHAN_REC** %5, align 8, !dbg !929
  br label %75, !dbg !929

; <label>:69:                                     ; preds = %56
  br label %70, !dbg !930

; <label>:70:                                     ; preds = %69
  %71 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !931
  %72 = getelementptr inbounds %struct._GSList, %struct._GSList* %71, i32 0, i32 1, !dbg !933
  %73 = load %struct._GSList*, %struct._GSList** %72, align 8, !dbg !933
  store %struct._GSList* %73, %struct._GSList** %11, align 8, !dbg !934
  br label %53, !dbg !935, !llvm.loop !936

; <label>:74:                                     ; preds = %53
  store %struct.NETSPLIT_CHAN_REC* null, %struct.NETSPLIT_CHAN_REC** %5, align 8, !dbg !938
  br label %75, !dbg !938

; <label>:75:                                     ; preds = %74, %67, %48, %39, %32, %25
  %76 = load %struct.NETSPLIT_CHAN_REC*, %struct.NETSPLIT_CHAN_REC** %5, align 8, !dbg !939
  ret %struct.NETSPLIT_CHAN_REC* %76, !dbg !939
}

; Function Attrs: nounwind uwtable
define i32 @quitmsg_is_split(i8*) #0 !dbg !940 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !943, metadata !742), !dbg !944
  call void @llvm.dbg.declare(metadata i8** %4, metadata !945, metadata !742), !dbg !946
  call void @llvm.dbg.declare(metadata i8** %5, metadata !947, metadata !742), !dbg !948
  call void @llvm.dbg.declare(metadata i32* %6, metadata !949, metadata !742), !dbg !950
  call void @llvm.dbg.declare(metadata i32* %7, metadata !951, metadata !742), !dbg !952
  call void @llvm.dbg.declare(metadata i32* %8, metadata !953, metadata !742), !dbg !954
  call void @llvm.dbg.declare(metadata i32* %9, metadata !955, metadata !742), !dbg !956
  br label %10, !dbg !957, !llvm.loop !958

; <label>:10:                                     ; preds = %1
  %11 = load i8*, i8** %3, align 8, !dbg !959
  %12 = icmp ne i8* %11, null, !dbg !963
  br i1 %12, label %13, label %14, !dbg !959

; <label>:13:                                     ; preds = %10
  br label %15, !dbg !964

; <label>:14:                                     ; preds = %10
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.quitmsg_is_split, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0)), !dbg !967
  store i32 0, i32* %2, align 4, !dbg !970
  br label %163, !dbg !970

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !971

; <label>:16:                                     ; preds = %15
  store i8* null, i8** %4, align 8, !dbg !973
  store i32 0, i32* %6, align 4, !dbg !974
  store i32 0, i32* %7, align 4, !dbg !975
  store i32 0, i32* %9, align 4, !dbg !976
  store i32 0, i32* %8, align 4, !dbg !977
  br label %17, !dbg !978

; <label>:17:                                     ; preds = %79, %16
  %18 = load i8*, i8** %3, align 8, !dbg !979
  %19 = load i8, i8* %18, align 1, !dbg !981
  %20 = sext i8 %19 to i32, !dbg !981
  %21 = icmp ne i32 %20, 0, !dbg !982
  br i1 %21, label %22, label %87, !dbg !983

; <label>:22:                                     ; preds = %17
  %23 = load i8*, i8** %3, align 8, !dbg !984
  %24 = load i8, i8* %23, align 1, !dbg !987
  %25 = sext i8 %24 to i32, !dbg !987
  %26 = icmp eq i32 %25, 32, !dbg !988
  br i1 %26, label %27, label %45, !dbg !989

; <label>:27:                                     ; preds = %22
  %28 = load i32, i32* %6, align 4, !dbg !990
  %29 = icmp eq i32 %28, 46, !dbg !993
  br i1 %29, label %33, label %30, !dbg !994

; <label>:30:                                     ; preds = %27
  %31 = load i32, i32* %6, align 4, !dbg !995
  %32 = icmp eq i32 %31, 0, !dbg !997
  br i1 %32, label %33, label %34, !dbg !998

; <label>:33:                                     ; preds = %30, %27
  store i32 0, i32* %2, align 4, !dbg !999
  br label %163, !dbg !999

; <label>:34:                                     ; preds = %30
  %35 = load i8*, i8** %4, align 8, !dbg !1001
  %36 = icmp ne i8* %35, null, !dbg !1003
  br i1 %36, label %37, label %38, !dbg !1004

; <label>:37:                                     ; preds = %34
  store i32 0, i32* %2, align 4, !dbg !1005
  br label %163, !dbg !1005

; <label>:38:                                     ; preds = %34
  %39 = load i32, i32* %8, align 4, !dbg !1006
  %40 = icmp ne i32 %39, 0, !dbg !1006
  br i1 %40, label %42, label %41, !dbg !1008

; <label>:41:                                     ; preds = %38
  store i32 0, i32* %2, align 4, !dbg !1009
  br label %163, !dbg !1009

; <label>:42:                                     ; preds = %38
  %43 = load i8*, i8** %3, align 8, !dbg !1010
  %44 = getelementptr inbounds i8, i8* %43, i64 1, !dbg !1011
  store i8* %44, i8** %4, align 8, !dbg !1012
  store i32 -1, i32* %7, align 4, !dbg !1013
  br label %79, !dbg !1014

; <label>:45:                                     ; preds = %22
  %46 = load i8*, i8** %3, align 8, !dbg !1015
  %47 = load i8, i8* %46, align 1, !dbg !1018
  %48 = sext i8 %47 to i32, !dbg !1018
  %49 = icmp eq i32 %48, 46, !dbg !1019
  br i1 %49, label %50, label %66, !dbg !1018

; <label>:50:                                     ; preds = %45
  %51 = load i32, i32* %6, align 4, !dbg !1020
  %52 = icmp eq i32 %51, 0, !dbg !1023
  br i1 %52, label %59, label %53, !dbg !1024

; <label>:53:                                     ; preds = %50
  %54 = load i32, i32* %6, align 4, !dbg !1025
  %55 = icmp eq i32 %54, 32, !dbg !1027
  br i1 %55, label %59, label %56, !dbg !1028

; <label>:56:                                     ; preds = %53
  %57 = load i32, i32* %6, align 4, !dbg !1029
  %58 = icmp eq i32 %57, 46, !dbg !1031
  br i1 %58, label %59, label %60, !dbg !1032

; <label>:59:                                     ; preds = %56, %53, %50
  store i32 0, i32* %2, align 4, !dbg !1033
  br label %163, !dbg !1033

; <label>:60:                                     ; preds = %56
  %61 = load i8*, i8** %4, align 8, !dbg !1035
  %62 = icmp ne i8* %61, null, !dbg !1037
  br i1 %62, label %63, label %64, !dbg !1038

; <label>:63:                                     ; preds = %60
  store i32 1, i32* %9, align 4, !dbg !1039
  br label %65, !dbg !1040

; <label>:64:                                     ; preds = %60
  store i32 1, i32* %8, align 4, !dbg !1041
  br label %65

; <label>:65:                                     ; preds = %64, %63
  br label %78, !dbg !1042

; <label>:66:                                     ; preds = %45
  %67 = load i8*, i8** %3, align 8, !dbg !1043
  %68 = load i8, i8* %67, align 1, !dbg !1046
  %69 = sext i8 %68 to i32, !dbg !1046
  %70 = icmp eq i32 %69, 58, !dbg !1047
  br i1 %70, label %76, label %71, !dbg !1048

; <label>:71:                                     ; preds = %66
  %72 = load i8*, i8** %3, align 8, !dbg !1049
  %73 = load i8, i8* %72, align 1, !dbg !1051
  %74 = sext i8 %73 to i32, !dbg !1051
  %75 = icmp eq i32 %74, 47, !dbg !1052
  br i1 %75, label %76, label %77, !dbg !1053

; <label>:76:                                     ; preds = %71, %66
  store i32 0, i32* %2, align 4, !dbg !1054
  br label %163, !dbg !1054

; <label>:77:                                     ; preds = %71
  br label %78

; <label>:78:                                     ; preds = %77, %65
  br label %79

; <label>:79:                                     ; preds = %78, %42
  %80 = load i8*, i8** %3, align 8, !dbg !1055
  %81 = load i8, i8* %80, align 1, !dbg !1056
  %82 = sext i8 %81 to i32, !dbg !1056
  store i32 %82, i32* %6, align 4, !dbg !1057
  %83 = load i8*, i8** %3, align 8, !dbg !1058
  %84 = getelementptr inbounds i8, i8* %83, i32 1, !dbg !1058
  store i8* %84, i8** %3, align 8, !dbg !1058
  %85 = load i32, i32* %7, align 4, !dbg !1059
  %86 = add nsw i32 %85, 1, !dbg !1059
  store i32 %86, i32* %7, align 4, !dbg !1059
  br label %17, !dbg !1060, !llvm.loop !1062

; <label>:87:                                     ; preds = %17
  %88 = load i32, i32* %9, align 4, !dbg !1063
  %89 = icmp ne i32 %88, 0, !dbg !1063
  br i1 %89, label %90, label %93, !dbg !1065

; <label>:90:                                     ; preds = %87
  %91 = load i32, i32* %6, align 4, !dbg !1066
  %92 = icmp eq i32 %91, 46, !dbg !1068
  br i1 %92, label %93, label %94, !dbg !1069

; <label>:93:                                     ; preds = %90, %87
  store i32 0, i32* %2, align 4, !dbg !1070
  br label %163, !dbg !1070

; <label>:94:                                     ; preds = %90
  %95 = load i8*, i8** %4, align 8, !dbg !1071
  %96 = getelementptr inbounds i8, i8* %95, i64 -1, !dbg !1072
  store i8* %96, i8** %5, align 8, !dbg !1073
  br label %97, !dbg !1074

; <label>:97:                                     ; preds = %117, %94
  %98 = load i8*, i8** %5, align 8, !dbg !1075
  %99 = getelementptr inbounds i8, i8* %98, i64 -1, !dbg !1075
  %100 = load i8, i8* %99, align 1, !dbg !1075
  %101 = sext i8 %100 to i32, !dbg !1075
  %102 = icmp ne i32 %101, 46, !dbg !1076
  br i1 %102, label %103, label %120, !dbg !1077

; <label>:103:                                    ; preds = %97
  %104 = load i8*, i8** %5, align 8, !dbg !1078
  %105 = getelementptr inbounds i8, i8* %104, i64 -1, !dbg !1078
  %106 = load i8, i8* %105, align 1, !dbg !1078
  %107 = zext i8 %106 to i32, !dbg !1081
  %108 = sext i32 %107 to i64, !dbg !1082
  %109 = call i16** @__ctype_b_loc() #1, !dbg !1083
  %110 = load i16*, i16** %109, align 8, !dbg !1084
  %111 = getelementptr inbounds i16, i16* %110, i64 %108, !dbg !1082
  %112 = load i16, i16* %111, align 2, !dbg !1082
  %113 = zext i16 %112 to i32, !dbg !1082
  %114 = and i32 %113, 1024, !dbg !1085
  %115 = icmp ne i32 %114, 0, !dbg !1085
  br i1 %115, label %117, label %116, !dbg !1086

; <label>:116:                                    ; preds = %103
  store i32 0, i32* %2, align 4, !dbg !1087
  br label %163, !dbg !1087

; <label>:117:                                    ; preds = %103
  %118 = load i8*, i8** %5, align 8, !dbg !1088
  %119 = getelementptr inbounds i8, i8* %118, i32 -1, !dbg !1088
  store i8* %119, i8** %5, align 8, !dbg !1088
  br label %97, !dbg !1089, !llvm.loop !1090

; <label>:120:                                    ; preds = %97
  %121 = load i8*, i8** %4, align 8, !dbg !1091
  %122 = load i8*, i8** %5, align 8, !dbg !1093
  %123 = ptrtoint i8* %121 to i64, !dbg !1094
  %124 = ptrtoint i8* %122 to i64, !dbg !1094
  %125 = sub i64 %123, %124, !dbg !1094
  %126 = sub nsw i64 %125, 1, !dbg !1095
  %127 = icmp slt i64 %126, 2, !dbg !1096
  br i1 %127, label %128, label %129, !dbg !1097

; <label>:128:                                    ; preds = %120
  store i32 0, i32* %2, align 4, !dbg !1098
  br label %163, !dbg !1098

; <label>:129:                                    ; preds = %120
  %130 = load i8*, i8** %4, align 8, !dbg !1100
  %131 = load i8*, i8** %4, align 8, !dbg !1101
  %132 = call i64 @strlen(i8* %131) #7, !dbg !1102
  %133 = getelementptr inbounds i8, i8* %130, i64 %132, !dbg !1103
  store i8* %133, i8** %5, align 8, !dbg !1104
  br label %134, !dbg !1105

; <label>:134:                                    ; preds = %154, %129
  %135 = load i8*, i8** %5, align 8, !dbg !1106
  %136 = getelementptr inbounds i8, i8* %135, i64 -1, !dbg !1106
  %137 = load i8, i8* %136, align 1, !dbg !1106
  %138 = sext i8 %137 to i32, !dbg !1106
  %139 = icmp ne i32 %138, 46, !dbg !1107
  br i1 %139, label %140, label %157, !dbg !1108

; <label>:140:                                    ; preds = %134
  %141 = load i8*, i8** %5, align 8, !dbg !1109
  %142 = getelementptr inbounds i8, i8* %141, i64 -1, !dbg !1109
  %143 = load i8, i8* %142, align 1, !dbg !1109
  %144 = zext i8 %143 to i32, !dbg !1112
  %145 = sext i32 %144 to i64, !dbg !1113
  %146 = call i16** @__ctype_b_loc() #1, !dbg !1114
  %147 = load i16*, i16** %146, align 8, !dbg !1115
  %148 = getelementptr inbounds i16, i16* %147, i64 %145, !dbg !1113
  %149 = load i16, i16* %148, align 2, !dbg !1113
  %150 = zext i16 %149 to i32, !dbg !1113
  %151 = and i32 %150, 1024, !dbg !1116
  %152 = icmp ne i32 %151, 0, !dbg !1116
  br i1 %152, label %154, label %153, !dbg !1117

; <label>:153:                                    ; preds = %140
  store i32 0, i32* %2, align 4, !dbg !1118
  br label %163, !dbg !1118

; <label>:154:                                    ; preds = %140
  %155 = load i8*, i8** %5, align 8, !dbg !1119
  %156 = getelementptr inbounds i8, i8* %155, i32 -1, !dbg !1119
  store i8* %156, i8** %5, align 8, !dbg !1119
  br label %134, !dbg !1120, !llvm.loop !1121

; <label>:157:                                    ; preds = %134
  %158 = load i8*, i8** %5, align 8, !dbg !1122
  %159 = call i64 @strlen(i8* %158) #7, !dbg !1124
  %160 = icmp ult i64 %159, 2, !dbg !1125
  br i1 %160, label %161, label %162, !dbg !1126

; <label>:161:                                    ; preds = %157
  store i32 0, i32* %2, align 4, !dbg !1127
  br label %163, !dbg !1127

; <label>:162:                                    ; preds = %157
  store i32 1, i32* %2, align 4, !dbg !1129
  br label %163, !dbg !1129

; <label>:163:                                    ; preds = %162, %161, %153, %128, %116, %93, %76, %59, %41, %37, %33, %14
  %164 = load i32, i32* %2, align 4, !dbg !1130
  ret i32 %164, !dbg !1130
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind uwtable
define void @netsplit_init() #0 !dbg !1131 {
  %1 = call i32 @g_timeout_add(i32 1000, i32 (i8*)* bitcast (i32 ()* @split_check_old to i32 (i8*)*), i8* null), !dbg !1132
  store i32 %1, i32* @split_tag, align 4, !dbg !1133
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_join to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1134
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_join_last to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1135
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_quit to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1136
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_nick to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1137
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @sig_disconnected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1138
  ret void, !dbg !1139
}

declare i32 @g_timeout_add(i32, i32 (i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @split_check_old() #0 !dbg !1140 {
  %1 = alloca %struct._GSList*, align 8
  %2 = alloca %struct._IRC_SERVER_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %1, metadata !1143, metadata !742), !dbg !1144
  %3 = load %struct._GSList*, %struct._GSList** @servers, align 8, !dbg !1145
  store %struct._GSList* %3, %struct._GSList** %1, align 8, !dbg !1147
  br label %4, !dbg !1148

; <label>:4:                                      ; preds = %30, %0
  %5 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !1149
  %6 = icmp ne %struct._GSList* %5, null, !dbg !1152
  br i1 %6, label %7, label %34, !dbg !1153

; <label>:7:                                      ; preds = %4
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %2, metadata !1154, metadata !742), !dbg !1156
  %8 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !1157
  %9 = getelementptr inbounds %struct._GSList, %struct._GSList* %8, i32 0, i32 0, !dbg !1158
  %10 = load i8*, i8** %9, align 8, !dbg !1158
  %11 = bitcast i8* %10 to %struct._IRC_SERVER_REC*, !dbg !1157
  store %struct._IRC_SERVER_REC* %11, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1156
  %12 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1159
  %13 = bitcast %struct._IRC_SERVER_REC* %12 to i8*, !dbg !1159
  %14 = call i8* @module_check_cast(i8* %13, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)), !dbg !1161
  %15 = bitcast i8* %14 to %struct._SERVER_REC*, !dbg !1162
  %16 = bitcast %struct._SERVER_REC* %15 to i8*, !dbg !1163
  %17 = call i8* @chat_protocol_check_cast(i8* %16, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)), !dbg !1164
  %18 = bitcast i8* %17 to %struct._IRC_SERVER_REC*, !dbg !1166
  %19 = icmp ne %struct._IRC_SERVER_REC* %18, null, !dbg !1166
  br i1 %19, label %20, label %21, !dbg !1167

; <label>:20:                                     ; preds = %7
  br i1 false, label %22, label %23, !dbg !1168

; <label>:21:                                     ; preds = %7
  br i1 false, label %23, label %22, !dbg !1170

; <label>:22:                                     ; preds = %21, %20
  br label %30, !dbg !1172

; <label>:23:                                     ; preds = %21, %20
  %24 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1173
  %25 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %24, i32 0, i32 65, !dbg !1174
  %26 = load %struct._GHashTable*, %struct._GHashTable** %25, align 8, !dbg !1174
  %27 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1175
  %28 = bitcast %struct._IRC_SERVER_REC* %27 to i8*, !dbg !1175
  %29 = call i32 @g_hash_table_foreach_remove(%struct._GHashTable* %26, i32 (i8*, i8*, i8*)* bitcast (i32 (i8*, %struct.NETSPLIT_REC*, %struct._IRC_SERVER_REC*)* @split_server_check to i32 (i8*, i8*, i8*)*), i8* %28), !dbg !1176
  br label %30, !dbg !1177

; <label>:30:                                     ; preds = %23, %22
  %31 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !1178
  %32 = getelementptr inbounds %struct._GSList, %struct._GSList* %31, i32 0, i32 1, !dbg !1180
  %33 = load %struct._GSList*, %struct._GSList** %32, align 8, !dbg !1180
  store %struct._GSList* %33, %struct._GSList** %1, align 8, !dbg !1181
  br label %4, !dbg !1182, !llvm.loop !1183

; <label>:34:                                     ; preds = %4
  ret i32 1, !dbg !1185
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @event_join(%struct._IRC_SERVER_REC*, i8*, i8*, i8*) #0 !dbg !1186 {
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.NETSPLIT_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !1189, metadata !742), !dbg !1190
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1191, metadata !742), !dbg !1192
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1193, metadata !742), !dbg !1194
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1195, metadata !742), !dbg !1196
  call void @llvm.dbg.declare(metadata %struct.NETSPLIT_REC** %9, metadata !1197, metadata !742), !dbg !1198
  %10 = load i8*, i8** %7, align 8, !dbg !1199
  %11 = icmp eq i8* %10, null, !dbg !1201
  br i1 %11, label %12, label %13, !dbg !1202

; <label>:12:                                     ; preds = %4
  br label %35, !dbg !1203

; <label>:13:                                     ; preds = %4
  %14 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1204
  %15 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %14, i32 0, i32 65, !dbg !1205
  %16 = load %struct._GHashTable*, %struct._GHashTable** %15, align 8, !dbg !1205
  %17 = load i8*, i8** %7, align 8, !dbg !1206
  %18 = call i8* @g_hash_table_lookup(%struct._GHashTable* %16, i8* %17), !dbg !1207
  %19 = bitcast i8* %18 to %struct.NETSPLIT_REC*, !dbg !1207
  store %struct.NETSPLIT_REC* %19, %struct.NETSPLIT_REC** %9, align 8, !dbg !1208
  %20 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %9, align 8, !dbg !1209
  %21 = icmp ne %struct.NETSPLIT_REC* %20, null, !dbg !1211
  br i1 %21, label %22, label %35, !dbg !1212

; <label>:22:                                     ; preds = %13
  %23 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %9, align 8, !dbg !1213
  %24 = getelementptr inbounds %struct.NETSPLIT_REC, %struct.NETSPLIT_REC* %23, i32 0, i32 2, !dbg !1215
  %25 = load i8*, i8** %24, align 8, !dbg !1215
  %26 = load i8*, i8** %8, align 8, !dbg !1216
  %27 = call i32 @g_ascii_strcasecmp(i8* %25, i8* %26), !dbg !1217
  %28 = icmp eq i32 %27, 0, !dbg !1218
  br i1 %28, label %29, label %35, !dbg !1219

; <label>:29:                                     ; preds = %22
  %30 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1220
  %31 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %30, i32 0, i32 65, !dbg !1222
  %32 = load %struct._GHashTable*, %struct._GHashTable** %31, align 8, !dbg !1222
  %33 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %9, align 8, !dbg !1223
  %34 = bitcast %struct.NETSPLIT_REC* %33 to i8*, !dbg !1223
  call void @g_hash_table_foreach(%struct._GHashTable* %32, void (i8*, i8*, i8*)* bitcast (void (i8*, %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC*)* @split_set_timeout to void (i8*, i8*, i8*)*), i8* %34), !dbg !1224
  br label %35, !dbg !1225

; <label>:35:                                     ; preds = %12, %29, %22, %13
  ret void, !dbg !1226
}

; Function Attrs: nounwind uwtable
define internal void @event_join_last(%struct._IRC_SERVER_REC*, i8*, i8*, i8*) #0 !dbg !1227 {
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.NETSPLIT_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !1228, metadata !742), !dbg !1229
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1230, metadata !742), !dbg !1231
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1232, metadata !742), !dbg !1233
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1234, metadata !742), !dbg !1235
  call void @llvm.dbg.declare(metadata %struct.NETSPLIT_REC** %9, metadata !1236, metadata !742), !dbg !1237
  %10 = load i8*, i8** %7, align 8, !dbg !1238
  %11 = icmp eq i8* %10, null, !dbg !1240
  br i1 %11, label %12, label %13, !dbg !1241

; <label>:12:                                     ; preds = %4
  br label %32, !dbg !1242

; <label>:13:                                     ; preds = %4
  %14 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1243
  %15 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %14, i32 0, i32 65, !dbg !1244
  %16 = load %struct._GHashTable*, %struct._GHashTable** %15, align 8, !dbg !1244
  %17 = load i8*, i8** %7, align 8, !dbg !1245
  %18 = call i8* @g_hash_table_lookup(%struct._GHashTable* %16, i8* %17), !dbg !1246
  %19 = bitcast i8* %18 to %struct.NETSPLIT_REC*, !dbg !1246
  store %struct.NETSPLIT_REC* %19, %struct.NETSPLIT_REC** %9, align 8, !dbg !1247
  %20 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %9, align 8, !dbg !1248
  %21 = icmp ne %struct.NETSPLIT_REC* %20, null, !dbg !1250
  br i1 %21, label %22, label %32, !dbg !1251

; <label>:22:                                     ; preds = %13
  %23 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1252
  %24 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %23, i32 0, i32 65, !dbg !1254
  %25 = load %struct._GHashTable*, %struct._GHashTable** %24, align 8, !dbg !1254
  %26 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %9, align 8, !dbg !1255
  %27 = getelementptr inbounds %struct.NETSPLIT_REC, %struct.NETSPLIT_REC* %26, i32 0, i32 1, !dbg !1256
  %28 = load i8*, i8** %27, align 8, !dbg !1256
  %29 = call i32 @g_hash_table_remove(%struct._GHashTable* %25, i8* %28), !dbg !1257
  %30 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1258
  %31 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %9, align 8, !dbg !1259
  call void @netsplit_destroy(%struct._IRC_SERVER_REC* %30, %struct.NETSPLIT_REC* %31), !dbg !1260
  br label %32, !dbg !1261

; <label>:32:                                     ; preds = %12, %22, %13
  ret void, !dbg !1262
}

; Function Attrs: nounwind uwtable
define internal void @event_quit(%struct._IRC_SERVER_REC*, i8*, i8*, i8*) #0 !dbg !1263 {
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !1264, metadata !742), !dbg !1265
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1266, metadata !742), !dbg !1267
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1268, metadata !742), !dbg !1269
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1270, metadata !742), !dbg !1271
  br label %9, !dbg !1272, !llvm.loop !1273

; <label>:9:                                      ; preds = %4
  %10 = load i8*, i8** %6, align 8, !dbg !1274
  %11 = icmp ne i8* %10, null, !dbg !1278
  br i1 %11, label %12, label %13, !dbg !1274

; <label>:12:                                     ; preds = %9
  br label %14, !dbg !1279

; <label>:13:                                     ; preds = %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.event_quit, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0)), !dbg !1282
  br label %40, !dbg !1285

; <label>:14:                                     ; preds = %12
  br label %15, !dbg !1286

; <label>:15:                                     ; preds = %14
  %16 = load i8*, i8** %6, align 8, !dbg !1288
  %17 = load i8, i8* %16, align 1, !dbg !1290
  %18 = sext i8 %17 to i32, !dbg !1290
  %19 = icmp eq i32 %18, 58, !dbg !1291
  br i1 %19, label %20, label %23, !dbg !1292

; <label>:20:                                     ; preds = %15
  %21 = load i8*, i8** %6, align 8, !dbg !1293
  %22 = getelementptr inbounds i8, i8* %21, i32 1, !dbg !1293
  store i8* %22, i8** %6, align 8, !dbg !1293
  br label %23, !dbg !1295

; <label>:23:                                     ; preds = %20, %15
  %24 = load i8*, i8** %7, align 8, !dbg !1296
  %25 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1298
  %26 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %25, i32 0, i32 7, !dbg !1299
  %27 = load i8*, i8** %26, align 8, !dbg !1299
  %28 = call i32 @g_ascii_strcasecmp(i8* %24, i8* %27), !dbg !1300
  %29 = icmp ne i32 %28, 0, !dbg !1301
  br i1 %29, label %30, label %40, !dbg !1302

; <label>:30:                                     ; preds = %23
  %31 = load i8*, i8** %6, align 8, !dbg !1303
  %32 = call i32 @quitmsg_is_split(i8* %31), !dbg !1305
  %33 = icmp ne i32 %32, 0, !dbg !1305
  br i1 %33, label %34, label %40, !dbg !1306

; <label>:34:                                     ; preds = %30
  %35 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1307
  %36 = load i8*, i8** %7, align 8, !dbg !1309
  %37 = load i8*, i8** %8, align 8, !dbg !1310
  %38 = load i8*, i8** %6, align 8, !dbg !1311
  %39 = call %struct.NETSPLIT_REC* @netsplit_add(%struct._IRC_SERVER_REC* %35, i8* %36, i8* %37, i8* %38), !dbg !1312
  br label %40, !dbg !1313

; <label>:40:                                     ; preds = %13, %34, %30, %23
  ret void, !dbg !1314
}

; Function Attrs: nounwind uwtable
define internal void @event_nick(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !1315 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.NETSPLIT_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1318, metadata !742), !dbg !1319
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1320, metadata !742), !dbg !1321
  call void @llvm.dbg.declare(metadata %struct.NETSPLIT_REC** %5, metadata !1322, metadata !742), !dbg !1323
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1324, metadata !742), !dbg !1325
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1326, metadata !742), !dbg !1327
  %8 = load i8*, i8** %4, align 8, !dbg !1328
  %9 = call i8* (i8*, i32, ...) @event_get_params(i8* %8, i32 1, i8** %7), !dbg !1329
  store i8* %9, i8** %6, align 8, !dbg !1330
  %10 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1331
  %11 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %10, i32 0, i32 65, !dbg !1332
  %12 = load %struct._GHashTable*, %struct._GHashTable** %11, align 8, !dbg !1332
  %13 = load i8*, i8** %7, align 8, !dbg !1333
  %14 = call i8* @g_hash_table_lookup(%struct._GHashTable* %12, i8* %13), !dbg !1334
  %15 = bitcast i8* %14 to %struct.NETSPLIT_REC*, !dbg !1334
  store %struct.NETSPLIT_REC* %15, %struct.NETSPLIT_REC** %5, align 8, !dbg !1335
  %16 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %5, align 8, !dbg !1336
  %17 = icmp ne %struct.NETSPLIT_REC* %16, null, !dbg !1338
  br i1 %17, label %18, label %28, !dbg !1339

; <label>:18:                                     ; preds = %2
  %19 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1340
  %20 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %19, i32 0, i32 65, !dbg !1342
  %21 = load %struct._GHashTable*, %struct._GHashTable** %20, align 8, !dbg !1342
  %22 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %5, align 8, !dbg !1343
  %23 = getelementptr inbounds %struct.NETSPLIT_REC, %struct.NETSPLIT_REC* %22, i32 0, i32 1, !dbg !1344
  %24 = load i8*, i8** %23, align 8, !dbg !1344
  %25 = call i32 @g_hash_table_remove(%struct._GHashTable* %21, i8* %24), !dbg !1345
  %26 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1346
  %27 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %5, align 8, !dbg !1347
  call void @netsplit_destroy(%struct._IRC_SERVER_REC* %26, %struct.NETSPLIT_REC* %27), !dbg !1348
  br label %28, !dbg !1349

; <label>:28:                                     ; preds = %18, %2
  %29 = load i8*, i8** %6, align 8, !dbg !1350
  call void @g_free(i8* %29), !dbg !1351
  ret void, !dbg !1352
}

; Function Attrs: nounwind uwtable
define internal void @sig_disconnected(%struct._IRC_SERVER_REC*) #0 !dbg !1353 {
  %2 = alloca %struct._IRC_SERVER_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %2, metadata !1356, metadata !742), !dbg !1357
  br label %3, !dbg !1358, !llvm.loop !1359

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1360
  %5 = icmp ne %struct._IRC_SERVER_REC* %4, null, !dbg !1364
  br i1 %5, label %6, label %7, !dbg !1360

; <label>:6:                                      ; preds = %3
  br label %8, !dbg !1365

; <label>:7:                                      ; preds = %3
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.sig_disconnected, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0)), !dbg !1368
  br label %32, !dbg !1371

; <label>:8:                                      ; preds = %6
  br label %9, !dbg !1372

; <label>:9:                                      ; preds = %8
  %10 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1374
  %11 = bitcast %struct._IRC_SERVER_REC* %10 to i8*, !dbg !1374
  %12 = call i8* @module_check_cast(i8* %11, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)), !dbg !1376
  %13 = bitcast i8* %12 to %struct._SERVER_REC*, !dbg !1377
  %14 = bitcast %struct._SERVER_REC* %13 to i8*, !dbg !1378
  %15 = call i8* @chat_protocol_check_cast(i8* %14, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)), !dbg !1379
  %16 = bitcast i8* %15 to %struct._IRC_SERVER_REC*, !dbg !1381
  %17 = icmp ne %struct._IRC_SERVER_REC* %16, null, !dbg !1381
  br i1 %17, label %18, label %19, !dbg !1382

; <label>:18:                                     ; preds = %9
  br i1 false, label %20, label %21, !dbg !1383

; <label>:19:                                     ; preds = %9
  br i1 false, label %21, label %20, !dbg !1385

; <label>:20:                                     ; preds = %19, %18
  br label %32, !dbg !1387

; <label>:21:                                     ; preds = %19, %18
  %22 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1388
  %23 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %22, i32 0, i32 65, !dbg !1389
  %24 = load %struct._GHashTable*, %struct._GHashTable** %23, align 8, !dbg !1389
  %25 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1390
  %26 = bitcast %struct._IRC_SERVER_REC* %25 to i8*, !dbg !1390
  call void @g_hash_table_foreach(%struct._GHashTable* %24, void (i8*, i8*, i8*)* bitcast (void (i8*, %struct.NETSPLIT_REC*, %struct._IRC_SERVER_REC*)* @netsplit_destroy_hash to void (i8*, i8*, i8*)*), i8* %26), !dbg !1391
  %27 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1392
  %28 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %27, i32 0, i32 65, !dbg !1393
  %29 = load %struct._GHashTable*, %struct._GHashTable** %28, align 8, !dbg !1393
  call void @g_hash_table_destroy(%struct._GHashTable* %29), !dbg !1394
  %30 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1395
  %31 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %30, i32 0, i32 65, !dbg !1396
  store %struct._GHashTable* null, %struct._GHashTable** %31, align 8, !dbg !1397
  br label %32, !dbg !1398

; <label>:32:                                     ; preds = %21, %20, %7
  ret void, !dbg !1399
}

; Function Attrs: nounwind uwtable
define void @netsplit_deinit() #0 !dbg !1401 {
  %1 = load i32, i32* @split_tag, align 4, !dbg !1402
  %2 = call i32 @g_source_remove(i32 %1), !dbg !1403
  call void @signal_remove_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_join to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1404
  call void @signal_remove_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_join_last to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1405
  call void @signal_remove_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_quit to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1406
  call void @signal_remove_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_nick to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1407
  call void @signal_remove_full(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @sig_disconnected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1408
  ret void, !dbg !1409
}

declare i32 @g_source_remove(i32) #2

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare i32 @g_hash_table_foreach_remove(%struct._GHashTable*, i32 (i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @split_server_check(i8*, %struct.NETSPLIT_REC*, %struct._IRC_SERVER_REC*) #0 !dbg !1410 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.NETSPLIT_REC*, align 8
  %7 = alloca %struct._IRC_SERVER_REC*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1413, metadata !742), !dbg !1414
  store %struct.NETSPLIT_REC* %1, %struct.NETSPLIT_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.NETSPLIT_REC** %6, metadata !1415, metadata !742), !dbg !1416
  store %struct._IRC_SERVER_REC* %2, %struct._IRC_SERVER_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %7, metadata !1417, metadata !742), !dbg !1418
  %8 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %6, align 8, !dbg !1419
  %9 = getelementptr inbounds %struct.NETSPLIT_REC, %struct.NETSPLIT_REC* %8, i32 0, i32 5, !dbg !1421
  %10 = load i64, i64* %9, align 8, !dbg !1421
  %11 = call i64 @time(i64* null) #8, !dbg !1422
  %12 = icmp sgt i64 %10, %11, !dbg !1423
  br i1 %12, label %13, label %14, !dbg !1424

; <label>:13:                                     ; preds = %3
  store i32 0, i32* %4, align 4, !dbg !1425
  br label %17, !dbg !1425

; <label>:14:                                     ; preds = %3
  %15 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %7, align 8, !dbg !1426
  %16 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %6, align 8, !dbg !1427
  call void @netsplit_destroy(%struct._IRC_SERVER_REC* %15, %struct.NETSPLIT_REC* %16), !dbg !1428
  store i32 1, i32* %4, align 4, !dbg !1429
  br label %17, !dbg !1429

; <label>:17:                                     ; preds = %14, %13
  %18 = load i32, i32* %4, align 4, !dbg !1430
  ret i32 %18, !dbg !1430
}

; Function Attrs: nounwind
declare i64 @time(i64*) #5

; Function Attrs: nounwind uwtable
define internal void @netsplit_destroy(%struct._IRC_SERVER_REC*, %struct.NETSPLIT_REC*) #0 !dbg !1431 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca %struct.NETSPLIT_REC*, align 8
  %5 = alloca %struct._GSList*, align 8
  %6 = alloca %struct.NETSPLIT_CHAN_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1434, metadata !742), !dbg !1435
  store %struct.NETSPLIT_REC* %1, %struct.NETSPLIT_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.NETSPLIT_REC** %4, metadata !1436, metadata !742), !dbg !1437
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !1438, metadata !742), !dbg !1439
  br label %7, !dbg !1440, !llvm.loop !1441

; <label>:7:                                      ; preds = %2
  %8 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1442
  %9 = bitcast %struct._IRC_SERVER_REC* %8 to i8*, !dbg !1442
  %10 = call i8* @module_check_cast(i8* %9, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)), !dbg !1446
  %11 = bitcast i8* %10 to %struct._SERVER_REC*, !dbg !1447
  %12 = bitcast %struct._SERVER_REC* %11 to i8*, !dbg !1448
  %13 = call i8* @chat_protocol_check_cast(i8* %12, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)), !dbg !1449
  %14 = bitcast i8* %13 to %struct._IRC_SERVER_REC*, !dbg !1451
  %15 = icmp ne %struct._IRC_SERVER_REC* %14, null, !dbg !1451
  br i1 %15, label %16, label %17, !dbg !1452

; <label>:16:                                     ; preds = %7
  br i1 false, label %19, label %18, !dbg !1453

; <label>:17:                                     ; preds = %7
  br i1 false, label %18, label %19, !dbg !1455

; <label>:18:                                     ; preds = %17, %16
  br label %20, !dbg !1457

; <label>:19:                                     ; preds = %17, %16
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.netsplit_destroy, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0)), !dbg !1460
  br label %76, !dbg !1463

; <label>:20:                                     ; preds = %18
  br label %21, !dbg !1464

; <label>:21:                                     ; preds = %20
  br label %22, !dbg !1466, !llvm.loop !1467

; <label>:22:                                     ; preds = %21
  %23 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %4, align 8, !dbg !1468
  %24 = icmp ne %struct.NETSPLIT_REC* %23, null, !dbg !1472
  br i1 %24, label %25, label %26, !dbg !1468

; <label>:25:                                     ; preds = %22
  br label %27, !dbg !1473

; <label>:26:                                     ; preds = %22
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.netsplit_destroy, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0)), !dbg !1476
  br label %76, !dbg !1479

; <label>:27:                                     ; preds = %25
  br label %28, !dbg !1480

; <label>:28:                                     ; preds = %27
  %29 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %4, align 8, !dbg !1482
  %30 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), i32 1, %struct.NETSPLIT_REC* %29), !dbg !1483
  %31 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %4, align 8, !dbg !1484
  %32 = getelementptr inbounds %struct.NETSPLIT_REC, %struct.NETSPLIT_REC* %31, i32 0, i32 3, !dbg !1486
  %33 = load %struct._GSList*, %struct._GSList** %32, align 8, !dbg !1486
  store %struct._GSList* %33, %struct._GSList** %5, align 8, !dbg !1487
  br label %34, !dbg !1488

; <label>:34:                                     ; preds = %47, %28
  %35 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1489
  %36 = icmp ne %struct._GSList* %35, null, !dbg !1492
  br i1 %36, label %37, label %51, !dbg !1493

; <label>:37:                                     ; preds = %34
  call void @llvm.dbg.declare(metadata %struct.NETSPLIT_CHAN_REC** %6, metadata !1494, metadata !742), !dbg !1496
  %38 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1497
  %39 = getelementptr inbounds %struct._GSList, %struct._GSList* %38, i32 0, i32 0, !dbg !1498
  %40 = load i8*, i8** %39, align 8, !dbg !1498
  %41 = bitcast i8* %40 to %struct.NETSPLIT_CHAN_REC*, !dbg !1497
  store %struct.NETSPLIT_CHAN_REC* %41, %struct.NETSPLIT_CHAN_REC** %6, align 8, !dbg !1496
  %42 = load %struct.NETSPLIT_CHAN_REC*, %struct.NETSPLIT_CHAN_REC** %6, align 8, !dbg !1499
  %43 = getelementptr inbounds %struct.NETSPLIT_CHAN_REC, %struct.NETSPLIT_CHAN_REC* %42, i32 0, i32 0, !dbg !1500
  %44 = load i8*, i8** %43, align 8, !dbg !1500
  call void @g_free(i8* %44), !dbg !1501
  %45 = load %struct.NETSPLIT_CHAN_REC*, %struct.NETSPLIT_CHAN_REC** %6, align 8, !dbg !1502
  %46 = bitcast %struct.NETSPLIT_CHAN_REC* %45 to i8*, !dbg !1502
  call void @g_free(i8* %46), !dbg !1503
  br label %47, !dbg !1504

; <label>:47:                                     ; preds = %37
  %48 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1505
  %49 = getelementptr inbounds %struct._GSList, %struct._GSList* %48, i32 0, i32 1, !dbg !1507
  %50 = load %struct._GSList*, %struct._GSList** %49, align 8, !dbg !1507
  store %struct._GSList* %50, %struct._GSList** %5, align 8, !dbg !1508
  br label %34, !dbg !1509, !llvm.loop !1510

; <label>:51:                                     ; preds = %34
  %52 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %4, align 8, !dbg !1512
  %53 = getelementptr inbounds %struct.NETSPLIT_REC, %struct.NETSPLIT_REC* %52, i32 0, i32 3, !dbg !1513
  %54 = load %struct._GSList*, %struct._GSList** %53, align 8, !dbg !1513
  call void @g_slist_free(%struct._GSList* %54), !dbg !1514
  %55 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %4, align 8, !dbg !1515
  %56 = getelementptr inbounds %struct.NETSPLIT_REC, %struct.NETSPLIT_REC* %55, i32 0, i32 0, !dbg !1517
  %57 = load %struct.NETSPLIT_SERVER_REC*, %struct.NETSPLIT_SERVER_REC** %56, align 8, !dbg !1517
  %58 = getelementptr inbounds %struct.NETSPLIT_SERVER_REC, %struct.NETSPLIT_SERVER_REC* %57, i32 0, i32 2, !dbg !1518
  %59 = load i32, i32* %58, align 8, !dbg !1519
  %60 = add nsw i32 %59, -1, !dbg !1519
  store i32 %60, i32* %58, align 8, !dbg !1519
  %61 = icmp eq i32 %60, 0, !dbg !1520
  br i1 %61, label %62, label %67, !dbg !1521

; <label>:62:                                     ; preds = %51
  %63 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1522
  %64 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %4, align 8, !dbg !1523
  %65 = getelementptr inbounds %struct.NETSPLIT_REC, %struct.NETSPLIT_REC* %64, i32 0, i32 0, !dbg !1524
  %66 = load %struct.NETSPLIT_SERVER_REC*, %struct.NETSPLIT_SERVER_REC** %65, align 8, !dbg !1524
  call void @netsplit_server_destroy(%struct._IRC_SERVER_REC* %63, %struct.NETSPLIT_SERVER_REC* %66), !dbg !1525
  br label %67, !dbg !1525

; <label>:67:                                     ; preds = %62, %51
  %68 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %4, align 8, !dbg !1526
  %69 = getelementptr inbounds %struct.NETSPLIT_REC, %struct.NETSPLIT_REC* %68, i32 0, i32 1, !dbg !1527
  %70 = load i8*, i8** %69, align 8, !dbg !1527
  call void @g_free(i8* %70), !dbg !1528
  %71 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %4, align 8, !dbg !1529
  %72 = getelementptr inbounds %struct.NETSPLIT_REC, %struct.NETSPLIT_REC* %71, i32 0, i32 2, !dbg !1530
  %73 = load i8*, i8** %72, align 8, !dbg !1530
  call void @g_free(i8* %73), !dbg !1531
  %74 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %4, align 8, !dbg !1532
  %75 = bitcast %struct.NETSPLIT_REC* %74 to i8*, !dbg !1532
  call void @g_free(i8* %75), !dbg !1533
  br label %76, !dbg !1534

; <label>:76:                                     ; preds = %67, %26, %19
  ret void, !dbg !1535
}

declare i32 @signal_emit(i8*, i32, ...) #2

declare void @g_free(i8*) #2

declare void @g_slist_free(%struct._GSList*) #2

; Function Attrs: nounwind uwtable
define internal void @netsplit_server_destroy(%struct._IRC_SERVER_REC*, %struct.NETSPLIT_SERVER_REC*) #0 !dbg !1537 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca %struct.NETSPLIT_SERVER_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1540, metadata !742), !dbg !1541
  store %struct.NETSPLIT_SERVER_REC* %1, %struct.NETSPLIT_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.NETSPLIT_SERVER_REC** %4, metadata !1542, metadata !742), !dbg !1543
  br label %5, !dbg !1544, !llvm.loop !1545

; <label>:5:                                      ; preds = %2
  %6 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1546
  %7 = bitcast %struct._IRC_SERVER_REC* %6 to i8*, !dbg !1546
  %8 = call i8* @module_check_cast(i8* %7, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)), !dbg !1550
  %9 = bitcast i8* %8 to %struct._SERVER_REC*, !dbg !1551
  %10 = bitcast %struct._SERVER_REC* %9 to i8*, !dbg !1552
  %11 = call i8* @chat_protocol_check_cast(i8* %10, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)), !dbg !1553
  %12 = bitcast i8* %11 to %struct._IRC_SERVER_REC*, !dbg !1555
  %13 = icmp ne %struct._IRC_SERVER_REC* %12, null, !dbg !1555
  br i1 %13, label %14, label %15, !dbg !1556

; <label>:14:                                     ; preds = %5
  br i1 false, label %17, label %16, !dbg !1557

; <label>:15:                                     ; preds = %5
  br i1 false, label %16, label %17, !dbg !1559

; <label>:16:                                     ; preds = %15, %14
  br label %18, !dbg !1561

; <label>:17:                                     ; preds = %15, %14
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.netsplit_server_destroy, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0)), !dbg !1564
  br label %39, !dbg !1567

; <label>:18:                                     ; preds = %16
  br label %19, !dbg !1568

; <label>:19:                                     ; preds = %18
  %20 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1570
  %21 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %20, i32 0, i32 66, !dbg !1571
  %22 = load %struct._GSList*, %struct._GSList** %21, align 8, !dbg !1571
  %23 = load %struct.NETSPLIT_SERVER_REC*, %struct.NETSPLIT_SERVER_REC** %4, align 8, !dbg !1572
  %24 = bitcast %struct.NETSPLIT_SERVER_REC* %23 to i8*, !dbg !1572
  %25 = call %struct._GSList* @g_slist_remove(%struct._GSList* %22, i8* %24), !dbg !1573
  %26 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1574
  %27 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %26, i32 0, i32 66, !dbg !1575
  store %struct._GSList* %25, %struct._GSList** %27, align 8, !dbg !1576
  %28 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1577
  %29 = load %struct.NETSPLIT_SERVER_REC*, %struct.NETSPLIT_SERVER_REC** %4, align 8, !dbg !1578
  %30 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0), i32 2, %struct._IRC_SERVER_REC* %28, %struct.NETSPLIT_SERVER_REC* %29), !dbg !1579
  %31 = load %struct.NETSPLIT_SERVER_REC*, %struct.NETSPLIT_SERVER_REC** %4, align 8, !dbg !1580
  %32 = getelementptr inbounds %struct.NETSPLIT_SERVER_REC, %struct.NETSPLIT_SERVER_REC* %31, i32 0, i32 0, !dbg !1581
  %33 = load i8*, i8** %32, align 8, !dbg !1581
  call void @g_free(i8* %33), !dbg !1582
  %34 = load %struct.NETSPLIT_SERVER_REC*, %struct.NETSPLIT_SERVER_REC** %4, align 8, !dbg !1583
  %35 = getelementptr inbounds %struct.NETSPLIT_SERVER_REC, %struct.NETSPLIT_SERVER_REC* %34, i32 0, i32 1, !dbg !1584
  %36 = load i8*, i8** %35, align 8, !dbg !1584
  call void @g_free(i8* %36), !dbg !1585
  %37 = load %struct.NETSPLIT_SERVER_REC*, %struct.NETSPLIT_SERVER_REC** %4, align 8, !dbg !1586
  %38 = bitcast %struct.NETSPLIT_SERVER_REC* %37 to i8*, !dbg !1586
  call void @g_free(i8* %38), !dbg !1587
  br label %39, !dbg !1588

; <label>:39:                                     ; preds = %19, %17
  ret void, !dbg !1589
}

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #2

declare void @g_hash_table_foreach(%struct._GHashTable*, void (i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @split_set_timeout(i8*, %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC*) #0 !dbg !1591 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.NETSPLIT_REC*, align 8
  %6 = alloca %struct.NETSPLIT_REC*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1594, metadata !742), !dbg !1595
  store %struct.NETSPLIT_REC* %1, %struct.NETSPLIT_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.NETSPLIT_REC** %5, metadata !1596, metadata !742), !dbg !1597
  store %struct.NETSPLIT_REC* %2, %struct.NETSPLIT_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.NETSPLIT_REC** %6, metadata !1598, metadata !742), !dbg !1599
  %7 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %5, align 8, !dbg !1600
  %8 = getelementptr inbounds %struct.NETSPLIT_REC, %struct.NETSPLIT_REC* %7, i32 0, i32 0, !dbg !1602
  %9 = load %struct.NETSPLIT_SERVER_REC*, %struct.NETSPLIT_SERVER_REC** %8, align 8, !dbg !1602
  %10 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %6, align 8, !dbg !1603
  %11 = getelementptr inbounds %struct.NETSPLIT_REC, %struct.NETSPLIT_REC* %10, i32 0, i32 0, !dbg !1604
  %12 = load %struct.NETSPLIT_SERVER_REC*, %struct.NETSPLIT_SERVER_REC** %11, align 8, !dbg !1604
  %13 = icmp eq %struct.NETSPLIT_SERVER_REC* %9, %12, !dbg !1605
  br i1 %13, label %14, label %19, !dbg !1606

; <label>:14:                                     ; preds = %3
  %15 = call i64 @time(i64* null) #8, !dbg !1607
  %16 = add nsw i64 %15, 60, !dbg !1608
  %17 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %5, align 8, !dbg !1609
  %18 = getelementptr inbounds %struct.NETSPLIT_REC, %struct.NETSPLIT_REC* %17, i32 0, i32 5, !dbg !1610
  store i64 %16, i64* %18, align 8, !dbg !1611
  br label %19, !dbg !1609

; <label>:19:                                     ; preds = %14, %3
  ret void, !dbg !1612
}

declare i32 @g_hash_table_remove(%struct._GHashTable*, i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct.NETSPLIT_REC* @netsplit_add(%struct._IRC_SERVER_REC*, i8*, i8*, i8*) #0 !dbg !1613 {
  %5 = alloca %struct.NETSPLIT_REC*, align 8
  %6 = alloca %struct._IRC_SERVER_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.NETSPLIT_REC*, align 8
  %11 = alloca %struct.NETSPLIT_CHAN_REC*, align 8
  %12 = alloca %struct._NICK_REC*, align 8
  %13 = alloca %struct._GSList*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct._CHANNEL_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %6, metadata !1616, metadata !742), !dbg !1617
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1618, metadata !742), !dbg !1619
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1620, metadata !742), !dbg !1621
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1622, metadata !742), !dbg !1623
  call void @llvm.dbg.declare(metadata %struct.NETSPLIT_REC** %10, metadata !1624, metadata !742), !dbg !1625
  call void @llvm.dbg.declare(metadata %struct.NETSPLIT_CHAN_REC** %11, metadata !1626, metadata !742), !dbg !1627
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %12, metadata !1628, metadata !742), !dbg !1629
  call void @llvm.dbg.declare(metadata %struct._GSList** %13, metadata !1630, metadata !742), !dbg !1631
  call void @llvm.dbg.declare(metadata i8** %14, metadata !1632, metadata !742), !dbg !1633
  call void @llvm.dbg.declare(metadata i8** %15, metadata !1634, metadata !742), !dbg !1635
  br label %17, !dbg !1636, !llvm.loop !1637

; <label>:17:                                     ; preds = %4
  %18 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1638
  %19 = bitcast %struct._IRC_SERVER_REC* %18 to i8*, !dbg !1638
  %20 = call i8* @module_check_cast(i8* %19, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)), !dbg !1642
  %21 = bitcast i8* %20 to %struct._SERVER_REC*, !dbg !1643
  %22 = bitcast %struct._SERVER_REC* %21 to i8*, !dbg !1644
  %23 = call i8* @chat_protocol_check_cast(i8* %22, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)), !dbg !1645
  %24 = bitcast i8* %23 to %struct._IRC_SERVER_REC*, !dbg !1647
  %25 = icmp ne %struct._IRC_SERVER_REC* %24, null, !dbg !1647
  br i1 %25, label %26, label %27, !dbg !1648

; <label>:26:                                     ; preds = %17
  br i1 false, label %29, label %28, !dbg !1649

; <label>:27:                                     ; preds = %17
  br i1 false, label %28, label %29, !dbg !1651

; <label>:28:                                     ; preds = %27, %26
  br label %30, !dbg !1653

; <label>:29:                                     ; preds = %27, %26
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.netsplit_add, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0)), !dbg !1656
  store %struct.NETSPLIT_REC* null, %struct.NETSPLIT_REC** %5, align 8, !dbg !1659
  br label %192, !dbg !1659

; <label>:30:                                     ; preds = %28
  br label %31, !dbg !1660

; <label>:31:                                     ; preds = %30
  br label %32, !dbg !1662, !llvm.loop !1663

; <label>:32:                                     ; preds = %31
  %33 = load i8*, i8** %7, align 8, !dbg !1664
  %34 = icmp ne i8* %33, null, !dbg !1668
  br i1 %34, label %35, label %36, !dbg !1664

; <label>:35:                                     ; preds = %32
  br label %37, !dbg !1669

; <label>:36:                                     ; preds = %32
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.netsplit_add, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0)), !dbg !1672
  store %struct.NETSPLIT_REC* null, %struct.NETSPLIT_REC** %5, align 8, !dbg !1675
  br label %192, !dbg !1675

; <label>:37:                                     ; preds = %35
  br label %38, !dbg !1676

; <label>:38:                                     ; preds = %37
  br label %39, !dbg !1678, !llvm.loop !1679

; <label>:39:                                     ; preds = %38
  %40 = load i8*, i8** %8, align 8, !dbg !1680
  %41 = icmp ne i8* %40, null, !dbg !1684
  br i1 %41, label %42, label %43, !dbg !1680

; <label>:42:                                     ; preds = %39
  br label %44, !dbg !1685

; <label>:43:                                     ; preds = %39
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.netsplit_add, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0)), !dbg !1688
  store %struct.NETSPLIT_REC* null, %struct.NETSPLIT_REC** %5, align 8, !dbg !1691
  br label %192, !dbg !1691

; <label>:44:                                     ; preds = %42
  br label %45, !dbg !1692

; <label>:45:                                     ; preds = %44
  %46 = load i8*, i8** %9, align 8, !dbg !1694
  %47 = call noalias i8* @g_strdup(i8* %46), !dbg !1695
  store i8* %47, i8** %15, align 8, !dbg !1696
  %48 = load i8*, i8** %15, align 8, !dbg !1697
  %49 = call i8* @strchr(i8* %48, i32 32) #7, !dbg !1698
  store i8* %49, i8** %14, align 8, !dbg !1699
  %50 = load i8*, i8** %14, align 8, !dbg !1700
  %51 = icmp eq i8* %50, null, !dbg !1702
  br i1 %51, label %52, label %54, !dbg !1703

; <label>:52:                                     ; preds = %45
  %53 = load i8*, i8** %15, align 8, !dbg !1704
  call void @g_free(i8* %53), !dbg !1706
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i32 0, i32 0)), !dbg !1707
  store %struct.NETSPLIT_REC* null, %struct.NETSPLIT_REC** %5, align 8, !dbg !1708
  br label %192, !dbg !1708

; <label>:54:                                     ; preds = %45
  %55 = load i8*, i8** %14, align 8, !dbg !1709
  %56 = getelementptr inbounds i8, i8* %55, i32 1, !dbg !1709
  store i8* %56, i8** %14, align 8, !dbg !1709
  store i8 0, i8* %55, align 1, !dbg !1710
  %57 = call noalias i8* @g_malloc0_n(i64 1, i64 48), !dbg !1711
  %58 = bitcast i8* %57 to %struct.NETSPLIT_REC*, !dbg !1712
  store %struct.NETSPLIT_REC* %58, %struct.NETSPLIT_REC** %10, align 8, !dbg !1713
  %59 = load i8*, i8** %7, align 8, !dbg !1714
  %60 = call noalias i8* @g_strdup(i8* %59), !dbg !1715
  %61 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %10, align 8, !dbg !1716
  %62 = getelementptr inbounds %struct.NETSPLIT_REC, %struct.NETSPLIT_REC* %61, i32 0, i32 1, !dbg !1717
  store i8* %60, i8** %62, align 8, !dbg !1718
  %63 = load i8*, i8** %8, align 8, !dbg !1719
  %64 = call noalias i8* @g_strdup(i8* %63), !dbg !1720
  %65 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %10, align 8, !dbg !1721
  %66 = getelementptr inbounds %struct.NETSPLIT_REC, %struct.NETSPLIT_REC* %65, i32 0, i32 2, !dbg !1722
  store i8* %64, i8** %66, align 8, !dbg !1723
  %67 = call i64 @time(i64* null) #8, !dbg !1724
  %68 = add nsw i64 %67, 3600, !dbg !1725
  %69 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %10, align 8, !dbg !1726
  %70 = getelementptr inbounds %struct.NETSPLIT_REC, %struct.NETSPLIT_REC* %69, i32 0, i32 5, !dbg !1727
  store i64 %68, i64* %70, align 8, !dbg !1728
  %71 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1729
  %72 = load i8*, i8** %15, align 8, !dbg !1730
  %73 = load i8*, i8** %14, align 8, !dbg !1731
  %74 = call %struct.NETSPLIT_SERVER_REC* @netsplit_server_create(%struct._IRC_SERVER_REC* %71, i8* %72, i8* %73), !dbg !1732
  %75 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %10, align 8, !dbg !1733
  %76 = getelementptr inbounds %struct.NETSPLIT_REC, %struct.NETSPLIT_REC* %75, i32 0, i32 0, !dbg !1734
  store %struct.NETSPLIT_SERVER_REC* %74, %struct.NETSPLIT_SERVER_REC** %76, align 8, !dbg !1735
  %77 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %10, align 8, !dbg !1736
  %78 = getelementptr inbounds %struct.NETSPLIT_REC, %struct.NETSPLIT_REC* %77, i32 0, i32 0, !dbg !1737
  %79 = load %struct.NETSPLIT_SERVER_REC*, %struct.NETSPLIT_SERVER_REC** %78, align 8, !dbg !1737
  %80 = getelementptr inbounds %struct.NETSPLIT_SERVER_REC, %struct.NETSPLIT_SERVER_REC* %79, i32 0, i32 2, !dbg !1738
  %81 = load i32, i32* %80, align 8, !dbg !1739
  %82 = add nsw i32 %81, 1, !dbg !1739
  store i32 %82, i32* %80, align 8, !dbg !1739
  %83 = load i8*, i8** %15, align 8, !dbg !1740
  call void @g_free(i8* %83), !dbg !1741
  %84 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1742
  %85 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %84, i32 0, i32 23, !dbg !1744
  %86 = load %struct._GSList*, %struct._GSList** %85, align 8, !dbg !1744
  store %struct._GSList* %86, %struct._GSList** %13, align 8, !dbg !1745
  br label %87, !dbg !1746

; <label>:87:                                     ; preds = %168, %54
  %88 = load %struct._GSList*, %struct._GSList** %13, align 8, !dbg !1747
  %89 = icmp ne %struct._GSList* %88, null, !dbg !1750
  br i1 %89, label %90, label %172, !dbg !1751

; <label>:90:                                     ; preds = %87
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %16, metadata !1752, metadata !742), !dbg !1754
  %91 = load %struct._GSList*, %struct._GSList** %13, align 8, !dbg !1755
  %92 = getelementptr inbounds %struct._GSList, %struct._GSList* %91, i32 0, i32 0, !dbg !1756
  %93 = load i8*, i8** %92, align 8, !dbg !1756
  %94 = bitcast i8* %93 to %struct._CHANNEL_REC*, !dbg !1755
  store %struct._CHANNEL_REC* %94, %struct._CHANNEL_REC** %16, align 8, !dbg !1754
  %95 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %16, align 8, !dbg !1757
  %96 = load i8*, i8** %7, align 8, !dbg !1758
  %97 = call %struct._NICK_REC* @nicklist_find(%struct._CHANNEL_REC* %95, i8* %96), !dbg !1759
  store %struct._NICK_REC* %97, %struct._NICK_REC** %12, align 8, !dbg !1760
  %98 = load %struct._NICK_REC*, %struct._NICK_REC** %12, align 8, !dbg !1761
  %99 = icmp eq %struct._NICK_REC* %98, null, !dbg !1763
  br i1 %99, label %100, label %101, !dbg !1764

; <label>:100:                                    ; preds = %90
  br label %168, !dbg !1765

; <label>:101:                                    ; preds = %90
  %102 = call noalias i8* @g_malloc0_n(i64 1, i64 24), !dbg !1766
  %103 = bitcast i8* %102 to %struct.NETSPLIT_CHAN_REC*, !dbg !1767
  store %struct.NETSPLIT_CHAN_REC* %103, %struct.NETSPLIT_CHAN_REC** %11, align 8, !dbg !1768
  %104 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %16, align 8, !dbg !1769
  %105 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %104, i32 0, i32 5, !dbg !1770
  %106 = load i8*, i8** %105, align 8, !dbg !1770
  %107 = call noalias i8* @g_strdup(i8* %106), !dbg !1771
  %108 = load %struct.NETSPLIT_CHAN_REC*, %struct.NETSPLIT_CHAN_REC** %11, align 8, !dbg !1772
  %109 = getelementptr inbounds %struct.NETSPLIT_CHAN_REC, %struct.NETSPLIT_CHAN_REC* %108, i32 0, i32 0, !dbg !1773
  store i8* %107, i8** %109, align 8, !dbg !1774
  %110 = load %struct._NICK_REC*, %struct._NICK_REC** %12, align 8, !dbg !1775
  %111 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %110, i32 0, i32 7, !dbg !1776
  %112 = load i8, i8* %111, align 4, !dbg !1776
  %113 = lshr i8 %112, 3, !dbg !1776
  %114 = and i8 %113, 1, !dbg !1776
  %115 = zext i8 %114 to i32, !dbg !1776
  %116 = load %struct.NETSPLIT_CHAN_REC*, %struct.NETSPLIT_CHAN_REC** %11, align 8, !dbg !1777
  %117 = getelementptr inbounds %struct.NETSPLIT_CHAN_REC, %struct.NETSPLIT_CHAN_REC* %116, i32 0, i32 1, !dbg !1778
  %118 = trunc i32 %115 to i8, !dbg !1779
  %119 = load i8, i8* %117, align 8, !dbg !1779
  %120 = and i8 %118, 1, !dbg !1779
  %121 = and i8 %119, -2, !dbg !1779
  %122 = or i8 %121, %120, !dbg !1779
  store i8 %122, i8* %117, align 8, !dbg !1779
  %123 = zext i8 %120 to i32, !dbg !1779
  %124 = load %struct._NICK_REC*, %struct._NICK_REC** %12, align 8, !dbg !1780
  %125 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %124, i32 0, i32 7, !dbg !1781
  %126 = load i8, i8* %125, align 4, !dbg !1781
  %127 = lshr i8 %126, 4, !dbg !1781
  %128 = and i8 %127, 1, !dbg !1781
  %129 = zext i8 %128 to i32, !dbg !1781
  %130 = load %struct.NETSPLIT_CHAN_REC*, %struct.NETSPLIT_CHAN_REC** %11, align 8, !dbg !1782
  %131 = getelementptr inbounds %struct.NETSPLIT_CHAN_REC, %struct.NETSPLIT_CHAN_REC* %130, i32 0, i32 1, !dbg !1783
  %132 = trunc i32 %129 to i8, !dbg !1784
  %133 = load i8, i8* %131, align 8, !dbg !1784
  %134 = and i8 %132, 1, !dbg !1784
  %135 = shl i8 %134, 1, !dbg !1784
  %136 = and i8 %133, -3, !dbg !1784
  %137 = or i8 %136, %135, !dbg !1784
  store i8 %137, i8* %131, align 8, !dbg !1784
  %138 = zext i8 %134 to i32, !dbg !1784
  %139 = load %struct._NICK_REC*, %struct._NICK_REC** %12, align 8, !dbg !1785
  %140 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %139, i32 0, i32 7, !dbg !1786
  %141 = load i8, i8* %140, align 4, !dbg !1786
  %142 = lshr i8 %141, 5, !dbg !1786
  %143 = and i8 %142, 1, !dbg !1786
  %144 = zext i8 %143 to i32, !dbg !1786
  %145 = load %struct.NETSPLIT_CHAN_REC*, %struct.NETSPLIT_CHAN_REC** %11, align 8, !dbg !1787
  %146 = getelementptr inbounds %struct.NETSPLIT_CHAN_REC, %struct.NETSPLIT_CHAN_REC* %145, i32 0, i32 1, !dbg !1788
  %147 = trunc i32 %144 to i8, !dbg !1789
  %148 = load i8, i8* %146, align 8, !dbg !1789
  %149 = and i8 %147, 1, !dbg !1789
  %150 = shl i8 %149, 2, !dbg !1789
  %151 = and i8 %148, -5, !dbg !1789
  %152 = or i8 %151, %150, !dbg !1789
  store i8 %152, i8* %146, align 8, !dbg !1789
  %153 = zext i8 %149 to i32, !dbg !1789
  %154 = load %struct.NETSPLIT_CHAN_REC*, %struct.NETSPLIT_CHAN_REC** %11, align 8, !dbg !1790
  %155 = getelementptr inbounds %struct.NETSPLIT_CHAN_REC, %struct.NETSPLIT_CHAN_REC* %154, i32 0, i32 2, !dbg !1791
  %156 = getelementptr inbounds [8 x i8], [8 x i8]* %155, i32 0, i32 0, !dbg !1792
  %157 = load %struct._NICK_REC*, %struct._NICK_REC** %12, align 8, !dbg !1793
  %158 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %157, i32 0, i32 8, !dbg !1794
  %159 = getelementptr inbounds [8 x i8], [8 x i8]* %158, i32 0, i32 0, !dbg !1792
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %156, i8* %159, i64 8, i32 1, i1 false), !dbg !1792
  %160 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %10, align 8, !dbg !1795
  %161 = getelementptr inbounds %struct.NETSPLIT_REC, %struct.NETSPLIT_REC* %160, i32 0, i32 3, !dbg !1796
  %162 = load %struct._GSList*, %struct._GSList** %161, align 8, !dbg !1796
  %163 = load %struct.NETSPLIT_CHAN_REC*, %struct.NETSPLIT_CHAN_REC** %11, align 8, !dbg !1797
  %164 = bitcast %struct.NETSPLIT_CHAN_REC* %163 to i8*, !dbg !1797
  %165 = call %struct._GSList* @g_slist_append(%struct._GSList* %162, i8* %164), !dbg !1798
  %166 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %10, align 8, !dbg !1799
  %167 = getelementptr inbounds %struct.NETSPLIT_REC, %struct.NETSPLIT_REC* %166, i32 0, i32 3, !dbg !1800
  store %struct._GSList* %165, %struct._GSList** %167, align 8, !dbg !1801
  br label %168, !dbg !1802

; <label>:168:                                    ; preds = %101, %100
  %169 = load %struct._GSList*, %struct._GSList** %13, align 8, !dbg !1803
  %170 = getelementptr inbounds %struct._GSList, %struct._GSList* %169, i32 0, i32 1, !dbg !1805
  %171 = load %struct._GSList*, %struct._GSList** %170, align 8, !dbg !1805
  store %struct._GSList* %171, %struct._GSList** %13, align 8, !dbg !1806
  br label %87, !dbg !1807, !llvm.loop !1808

; <label>:172:                                    ; preds = %87
  %173 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %10, align 8, !dbg !1810
  %174 = getelementptr inbounds %struct.NETSPLIT_REC, %struct.NETSPLIT_REC* %173, i32 0, i32 3, !dbg !1812
  %175 = load %struct._GSList*, %struct._GSList** %174, align 8, !dbg !1812
  %176 = icmp eq %struct._GSList* %175, null, !dbg !1813
  br i1 %176, label %177, label %179, !dbg !1814

; <label>:177:                                    ; preds = %172
  %178 = load i8*, i8** %7, align 8, !dbg !1815
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.17, i32 0, i32 0), i8* %178), !dbg !1816
  br label %179, !dbg !1816

; <label>:179:                                    ; preds = %177, %172
  %180 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1817
  %181 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %180, i32 0, i32 65, !dbg !1818
  %182 = load %struct._GHashTable*, %struct._GHashTable** %181, align 8, !dbg !1818
  %183 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %10, align 8, !dbg !1819
  %184 = getelementptr inbounds %struct.NETSPLIT_REC, %struct.NETSPLIT_REC* %183, i32 0, i32 1, !dbg !1820
  %185 = load i8*, i8** %184, align 8, !dbg !1820
  %186 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %10, align 8, !dbg !1821
  %187 = bitcast %struct.NETSPLIT_REC* %186 to i8*, !dbg !1821
  %188 = call i32 @g_hash_table_insert(%struct._GHashTable* %182, i8* %185, i8* %187), !dbg !1822
  %189 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %10, align 8, !dbg !1823
  %190 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i32 1, %struct.NETSPLIT_REC* %189), !dbg !1824
  %191 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %10, align 8, !dbg !1825
  store %struct.NETSPLIT_REC* %191, %struct.NETSPLIT_REC** %5, align 8, !dbg !1826
  br label %192, !dbg !1826

; <label>:192:                                    ; preds = %179, %52, %43, %36, %29
  %193 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %5, align 8, !dbg !1827
  ret %struct.NETSPLIT_REC* %193, !dbg !1827
}

declare noalias i8* @g_strdup(i8*) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

declare void @g_log(i8*, i32, i8*, ...) #2

declare noalias i8* @g_malloc0_n(i64, i64) #2

; Function Attrs: nounwind uwtable
define internal %struct.NETSPLIT_SERVER_REC* @netsplit_server_create(%struct._IRC_SERVER_REC*, i8*, i8*) #0 !dbg !1828 {
  %4 = alloca %struct.NETSPLIT_SERVER_REC*, align 8
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.NETSPLIT_SERVER_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !1831, metadata !742), !dbg !1832
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1833, metadata !742), !dbg !1834
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1835, metadata !742), !dbg !1836
  call void @llvm.dbg.declare(metadata %struct.NETSPLIT_SERVER_REC** %8, metadata !1837, metadata !742), !dbg !1838
  br label %9, !dbg !1839, !llvm.loop !1840

; <label>:9:                                      ; preds = %3
  %10 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1841
  %11 = bitcast %struct._IRC_SERVER_REC* %10 to i8*, !dbg !1841
  %12 = call i8* @module_check_cast(i8* %11, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)), !dbg !1845
  %13 = bitcast i8* %12 to %struct._SERVER_REC*, !dbg !1846
  %14 = bitcast %struct._SERVER_REC* %13 to i8*, !dbg !1847
  %15 = call i8* @chat_protocol_check_cast(i8* %14, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)), !dbg !1848
  %16 = bitcast i8* %15 to %struct._IRC_SERVER_REC*, !dbg !1850
  %17 = icmp ne %struct._IRC_SERVER_REC* %16, null, !dbg !1850
  br i1 %17, label %18, label %19, !dbg !1851

; <label>:18:                                     ; preds = %9
  br i1 false, label %21, label %20, !dbg !1852

; <label>:19:                                     ; preds = %9
  br i1 false, label %20, label %21, !dbg !1854

; <label>:20:                                     ; preds = %19, %18
  br label %22, !dbg !1856

; <label>:21:                                     ; preds = %19, %18
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.netsplit_server_create, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0)), !dbg !1859
  store %struct.NETSPLIT_SERVER_REC* null, %struct.NETSPLIT_SERVER_REC** %4, align 8, !dbg !1862
  br label %61, !dbg !1862

; <label>:22:                                     ; preds = %20
  br label %23, !dbg !1863

; <label>:23:                                     ; preds = %22
  %24 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1865
  %25 = load i8*, i8** %6, align 8, !dbg !1866
  %26 = load i8*, i8** %7, align 8, !dbg !1867
  %27 = call %struct.NETSPLIT_SERVER_REC* @netsplit_server_find(%struct._IRC_SERVER_REC* %24, i8* %25, i8* %26), !dbg !1868
  store %struct.NETSPLIT_SERVER_REC* %27, %struct.NETSPLIT_SERVER_REC** %8, align 8, !dbg !1869
  %28 = load %struct.NETSPLIT_SERVER_REC*, %struct.NETSPLIT_SERVER_REC** %8, align 8, !dbg !1870
  %29 = icmp ne %struct.NETSPLIT_SERVER_REC* %28, null, !dbg !1872
  br i1 %29, label %30, label %35, !dbg !1873

; <label>:30:                                     ; preds = %23
  %31 = call i64 @time(i64* null) #8, !dbg !1874
  %32 = load %struct.NETSPLIT_SERVER_REC*, %struct.NETSPLIT_SERVER_REC** %8, align 8, !dbg !1876
  %33 = getelementptr inbounds %struct.NETSPLIT_SERVER_REC, %struct.NETSPLIT_SERVER_REC* %32, i32 0, i32 4, !dbg !1877
  store i64 %31, i64* %33, align 8, !dbg !1878
  %34 = load %struct.NETSPLIT_SERVER_REC*, %struct.NETSPLIT_SERVER_REC** %8, align 8, !dbg !1879
  store %struct.NETSPLIT_SERVER_REC* %34, %struct.NETSPLIT_SERVER_REC** %4, align 8, !dbg !1880
  br label %61, !dbg !1880

; <label>:35:                                     ; preds = %23
  %36 = call noalias i8* @g_malloc0_n(i64 1, i64 32), !dbg !1881
  %37 = bitcast i8* %36 to %struct.NETSPLIT_SERVER_REC*, !dbg !1882
  store %struct.NETSPLIT_SERVER_REC* %37, %struct.NETSPLIT_SERVER_REC** %8, align 8, !dbg !1883
  %38 = call i64 @time(i64* null) #8, !dbg !1884
  %39 = load %struct.NETSPLIT_SERVER_REC*, %struct.NETSPLIT_SERVER_REC** %8, align 8, !dbg !1885
  %40 = getelementptr inbounds %struct.NETSPLIT_SERVER_REC, %struct.NETSPLIT_SERVER_REC* %39, i32 0, i32 4, !dbg !1886
  store i64 %38, i64* %40, align 8, !dbg !1887
  %41 = load i8*, i8** %6, align 8, !dbg !1888
  %42 = call noalias i8* @g_strdup(i8* %41), !dbg !1889
  %43 = load %struct.NETSPLIT_SERVER_REC*, %struct.NETSPLIT_SERVER_REC** %8, align 8, !dbg !1890
  %44 = getelementptr inbounds %struct.NETSPLIT_SERVER_REC, %struct.NETSPLIT_SERVER_REC* %43, i32 0, i32 0, !dbg !1891
  store i8* %42, i8** %44, align 8, !dbg !1892
  %45 = load i8*, i8** %7, align 8, !dbg !1893
  %46 = call noalias i8* @g_strdup(i8* %45), !dbg !1894
  %47 = load %struct.NETSPLIT_SERVER_REC*, %struct.NETSPLIT_SERVER_REC** %8, align 8, !dbg !1895
  %48 = getelementptr inbounds %struct.NETSPLIT_SERVER_REC, %struct.NETSPLIT_SERVER_REC* %47, i32 0, i32 1, !dbg !1896
  store i8* %46, i8** %48, align 8, !dbg !1897
  %49 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1898
  %50 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %49, i32 0, i32 66, !dbg !1899
  %51 = load %struct._GSList*, %struct._GSList** %50, align 8, !dbg !1899
  %52 = load %struct.NETSPLIT_SERVER_REC*, %struct.NETSPLIT_SERVER_REC** %8, align 8, !dbg !1900
  %53 = bitcast %struct.NETSPLIT_SERVER_REC* %52 to i8*, !dbg !1900
  %54 = call %struct._GSList* @g_slist_append(%struct._GSList* %51, i8* %53), !dbg !1901
  %55 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1902
  %56 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %55, i32 0, i32 66, !dbg !1903
  store %struct._GSList* %54, %struct._GSList** %56, align 8, !dbg !1904
  %57 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1905
  %58 = load %struct.NETSPLIT_SERVER_REC*, %struct.NETSPLIT_SERVER_REC** %8, align 8, !dbg !1906
  %59 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i32 0, i32 0), i32 2, %struct._IRC_SERVER_REC* %57, %struct.NETSPLIT_SERVER_REC* %58), !dbg !1907
  %60 = load %struct.NETSPLIT_SERVER_REC*, %struct.NETSPLIT_SERVER_REC** %8, align 8, !dbg !1908
  store %struct.NETSPLIT_SERVER_REC* %60, %struct.NETSPLIT_SERVER_REC** %4, align 8, !dbg !1909
  br label %61, !dbg !1909

; <label>:61:                                     ; preds = %35, %30, %21
  %62 = load %struct.NETSPLIT_SERVER_REC*, %struct.NETSPLIT_SERVER_REC** %4, align 8, !dbg !1910
  ret %struct.NETSPLIT_SERVER_REC* %62, !dbg !1910
}

declare %struct._NICK_REC* @nicklist_find(%struct._CHANNEL_REC*, i8*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #6

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #2

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct.NETSPLIT_SERVER_REC* @netsplit_server_find(%struct._IRC_SERVER_REC*, i8*, i8*) #0 !dbg !1911 {
  %4 = alloca %struct.NETSPLIT_SERVER_REC*, align 8
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct._GSList*, align 8
  %9 = alloca %struct.NETSPLIT_SERVER_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !1912, metadata !742), !dbg !1913
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1914, metadata !742), !dbg !1915
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1916, metadata !742), !dbg !1917
  call void @llvm.dbg.declare(metadata %struct._GSList** %8, metadata !1918, metadata !742), !dbg !1919
  br label %10, !dbg !1920, !llvm.loop !1921

; <label>:10:                                     ; preds = %3
  %11 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1922
  %12 = bitcast %struct._IRC_SERVER_REC* %11 to i8*, !dbg !1922
  %13 = call i8* @module_check_cast(i8* %12, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)), !dbg !1926
  %14 = bitcast i8* %13 to %struct._SERVER_REC*, !dbg !1927
  %15 = bitcast %struct._SERVER_REC* %14 to i8*, !dbg !1928
  %16 = call i8* @chat_protocol_check_cast(i8* %15, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)), !dbg !1929
  %17 = bitcast i8* %16 to %struct._IRC_SERVER_REC*, !dbg !1931
  %18 = icmp ne %struct._IRC_SERVER_REC* %17, null, !dbg !1931
  br i1 %18, label %19, label %20, !dbg !1932

; <label>:19:                                     ; preds = %10
  br i1 false, label %22, label %21, !dbg !1933

; <label>:20:                                     ; preds = %10
  br i1 false, label %21, label %22, !dbg !1935

; <label>:21:                                     ; preds = %20, %19
  br label %23, !dbg !1937

; <label>:22:                                     ; preds = %20, %19
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.netsplit_server_find, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0)), !dbg !1940
  store %struct.NETSPLIT_SERVER_REC* null, %struct.NETSPLIT_SERVER_REC** %4, align 8, !dbg !1943
  br label %57, !dbg !1943

; <label>:23:                                     ; preds = %21
  br label %24, !dbg !1944

; <label>:24:                                     ; preds = %23
  %25 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1946
  %26 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %25, i32 0, i32 66, !dbg !1948
  %27 = load %struct._GSList*, %struct._GSList** %26, align 8, !dbg !1948
  store %struct._GSList* %27, %struct._GSList** %8, align 8, !dbg !1949
  br label %28, !dbg !1950

; <label>:28:                                     ; preds = %52, %24
  %29 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !1951
  %30 = icmp ne %struct._GSList* %29, null, !dbg !1954
  br i1 %30, label %31, label %56, !dbg !1955

; <label>:31:                                     ; preds = %28
  call void @llvm.dbg.declare(metadata %struct.NETSPLIT_SERVER_REC** %9, metadata !1956, metadata !742), !dbg !1958
  %32 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !1959
  %33 = getelementptr inbounds %struct._GSList, %struct._GSList* %32, i32 0, i32 0, !dbg !1960
  %34 = load i8*, i8** %33, align 8, !dbg !1960
  %35 = bitcast i8* %34 to %struct.NETSPLIT_SERVER_REC*, !dbg !1959
  store %struct.NETSPLIT_SERVER_REC* %35, %struct.NETSPLIT_SERVER_REC** %9, align 8, !dbg !1958
  %36 = load %struct.NETSPLIT_SERVER_REC*, %struct.NETSPLIT_SERVER_REC** %9, align 8, !dbg !1961
  %37 = getelementptr inbounds %struct.NETSPLIT_SERVER_REC, %struct.NETSPLIT_SERVER_REC* %36, i32 0, i32 0, !dbg !1963
  %38 = load i8*, i8** %37, align 8, !dbg !1963
  %39 = load i8*, i8** %6, align 8, !dbg !1964
  %40 = call i32 @g_ascii_strcasecmp(i8* %38, i8* %39), !dbg !1965
  %41 = icmp eq i32 %40, 0, !dbg !1966
  br i1 %41, label %42, label %51, !dbg !1967

; <label>:42:                                     ; preds = %31
  %43 = load %struct.NETSPLIT_SERVER_REC*, %struct.NETSPLIT_SERVER_REC** %9, align 8, !dbg !1968
  %44 = getelementptr inbounds %struct.NETSPLIT_SERVER_REC, %struct.NETSPLIT_SERVER_REC* %43, i32 0, i32 1, !dbg !1969
  %45 = load i8*, i8** %44, align 8, !dbg !1969
  %46 = load i8*, i8** %7, align 8, !dbg !1970
  %47 = call i32 @g_ascii_strcasecmp(i8* %45, i8* %46), !dbg !1971
  %48 = icmp eq i32 %47, 0, !dbg !1972
  br i1 %48, label %49, label %51, !dbg !1973

; <label>:49:                                     ; preds = %42
  %50 = load %struct.NETSPLIT_SERVER_REC*, %struct.NETSPLIT_SERVER_REC** %9, align 8, !dbg !1975
  store %struct.NETSPLIT_SERVER_REC* %50, %struct.NETSPLIT_SERVER_REC** %4, align 8, !dbg !1976
  br label %57, !dbg !1976

; <label>:51:                                     ; preds = %42, %31
  br label %52, !dbg !1977

; <label>:52:                                     ; preds = %51
  %53 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !1978
  %54 = getelementptr inbounds %struct._GSList, %struct._GSList* %53, i32 0, i32 1, !dbg !1980
  %55 = load %struct._GSList*, %struct._GSList** %54, align 8, !dbg !1980
  store %struct._GSList* %55, %struct._GSList** %8, align 8, !dbg !1981
  br label %28, !dbg !1982, !llvm.loop !1983

; <label>:56:                                     ; preds = %28
  store %struct.NETSPLIT_SERVER_REC* null, %struct.NETSPLIT_SERVER_REC** %4, align 8, !dbg !1985
  br label %57, !dbg !1985

; <label>:57:                                     ; preds = %56, %49, %22
  %58 = load %struct.NETSPLIT_SERVER_REC*, %struct.NETSPLIT_SERVER_REC** %4, align 8, !dbg !1986
  ret %struct.NETSPLIT_SERVER_REC* %58, !dbg !1986
}

declare i8* @event_get_params(i8*, i32, ...) #2

; Function Attrs: nounwind uwtable
define internal void @netsplit_destroy_hash(i8*, %struct.NETSPLIT_REC*, %struct._IRC_SERVER_REC*) #0 !dbg !1987 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.NETSPLIT_REC*, align 8
  %6 = alloca %struct._IRC_SERVER_REC*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1990, metadata !742), !dbg !1991
  store %struct.NETSPLIT_REC* %1, %struct.NETSPLIT_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.NETSPLIT_REC** %5, metadata !1992, metadata !742), !dbg !1993
  store %struct._IRC_SERVER_REC* %2, %struct._IRC_SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %6, metadata !1994, metadata !742), !dbg !1995
  %7 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1996
  %8 = load %struct.NETSPLIT_REC*, %struct.NETSPLIT_REC** %5, align 8, !dbg !1997
  call void @netsplit_destroy(%struct._IRC_SERVER_REC* %7, %struct.NETSPLIT_REC* %8), !dbg !1998
  ret void, !dbg !1999
}

declare void @g_hash_table_destroy(%struct._GHashTable*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!734, !735}
!llvm.ident = !{!736}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !62, globals: !731)
!1 = !DIFile(filename: "line155-netsplit.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !10, !15, !24, !35, !50}
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
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 46, size: 32, align: 32, elements: !37)
!36 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/lichi/Desktop/irssi/task1")
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49}
!38 = !DIEnumerator(name: "_ISupper", value: 256)
!39 = !DIEnumerator(name: "_ISlower", value: 512)
!40 = !DIEnumerator(name: "_ISalpha", value: 1024)
!41 = !DIEnumerator(name: "_ISdigit", value: 2048)
!42 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!43 = !DIEnumerator(name: "_ISspace", value: 8192)
!44 = !DIEnumerator(name: "_ISprint", value: 16384)
!45 = !DIEnumerator(name: "_ISgraph", value: 32768)
!46 = !DIEnumerator(name: "_ISblank", value: 1)
!47 = !DIEnumerator(name: "_IScntrl", value: 2)
!48 = !DIEnumerator(name: "_ISpunct", value: 4)
!49 = !DIEnumerator(name: "_ISalnum", value: 8)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !51, line: 51, size: 32, align: 32, elements: !52)
!51 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/irssi/task1")
!52 = !{!53, !54, !55, !56, !57, !58, !59, !60, !61}
!53 = !DIEnumerator(name: "G_LOG_FLAG_RECURSION", value: 1)
!54 = !DIEnumerator(name: "G_LOG_FLAG_FATAL", value: 2)
!55 = !DIEnumerator(name: "G_LOG_LEVEL_ERROR", value: 4)
!56 = !DIEnumerator(name: "G_LOG_LEVEL_CRITICAL", value: 8)
!57 = !DIEnumerator(name: "G_LOG_LEVEL_WARNING", value: 16)
!58 = !DIEnumerator(name: "G_LOG_LEVEL_MESSAGE", value: 32)
!59 = !DIEnumerator(name: "G_LOG_LEVEL_INFO", value: 64)
!60 = !DIEnumerator(name: "G_LOG_LEVEL_DEBUG", value: 128)
!61 = !DIEnumerator(name: "G_LOG_LEVEL_MASK", value: -4)
!62 = !{!63, !377, !132, !465, !178, !71, !686, !91, !194, !687, !694, !698, !702, !722, !708}
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_REC", file: !65, line: 6, baseType: !66)
!65 = !DIFile(filename: "irc.h", directory: "/home/lichi/Desktop/irssi/task1")
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_REC", file: !67, line: 42, size: 39168, align: 64, elements: !68)
!67 = !DIFile(filename: "irc-servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!68 = !{!69, !72, !73, !74, !322, !327, !328, !329, !330, !331, !332, !333, !334, !335, !339, !340, !344, !345, !346, !350, !355, !356, !357, !358, !359, !360, !361, !362, !369, !370, !371, !372, !373, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !683, !685}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !66, file: !70, line: 3, baseType: !71, size: 32, align: 32)
!70 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!71 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !66, file: !70, line: 4, baseType: !71, size: 32, align: 32, offset: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !66, file: !70, line: 6, baseType: !71, size: 32, align: 32, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !66, file: !70, line: 8, baseType: !75, size: 64, align: 64, offset: 128)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, align: 64)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_CONNECT_REC", file: !65, line: 5, baseType: !77)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_CONNECT_REC", file: !67, line: 24, size: 2496, align: 64, elements: !78)
!78 = !{!79, !81, !82, !83, !86, !87, !88, !89, !90, !92, !93, !94, !95, !96, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !77, file: !80, line: 3, baseType: !71, size: 32, align: 32)
!80 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!81 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !77, file: !80, line: 4, baseType: !71, size: 32, align: 32, offset: 32)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !77, file: !80, line: 6, baseType: !71, size: 32, align: 32, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !77, file: !80, line: 9, baseType: !84, size: 64, align: 64, offset: 128)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!85 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !77, file: !80, line: 10, baseType: !71, size: 32, align: 32, offset: 192)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !77, file: !80, line: 11, baseType: !84, size: 64, align: 64, offset: 256)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !77, file: !80, line: 11, baseType: !84, size: 64, align: 64, offset: 320)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !77, file: !80, line: 11, baseType: !84, size: 64, align: 64, offset: 384)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !77, file: !80, line: 13, baseType: !91, size: 16, align: 16, offset: 448)
!91 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !77, file: !80, line: 14, baseType: !84, size: 64, align: 64, offset: 512)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !77, file: !80, line: 15, baseType: !84, size: 64, align: 64, offset: 576)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !77, file: !80, line: 16, baseType: !71, size: 32, align: 32, offset: 640)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !77, file: !80, line: 17, baseType: !84, size: 64, align: 64, offset: 704)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !77, file: !80, line: 19, baseType: !97, size: 64, align: 64, offset: 768)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64, align: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !99, line: 99, baseType: !100)
!99 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!100 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !99, line: 99, flags: DIFlagFwdDecl)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !77, file: !80, line: 19, baseType: !97, size: 64, align: 64, offset: 832)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !77, file: !80, line: 21, baseType: !84, size: 64, align: 64, offset: 896)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !77, file: !80, line: 22, baseType: !84, size: 64, align: 64, offset: 960)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !77, file: !80, line: 23, baseType: !84, size: 64, align: 64, offset: 1024)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !77, file: !80, line: 24, baseType: !84, size: 64, align: 64, offset: 1088)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !77, file: !80, line: 26, baseType: !84, size: 64, align: 64, offset: 1152)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !77, file: !80, line: 27, baseType: !84, size: 64, align: 64, offset: 1216)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !77, file: !80, line: 28, baseType: !84, size: 64, align: 64, offset: 1280)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !77, file: !80, line: 29, baseType: !84, size: 64, align: 64, offset: 1344)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !77, file: !80, line: 30, baseType: !84, size: 64, align: 64, offset: 1408)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !77, file: !80, line: 31, baseType: !84, size: 64, align: 64, offset: 1472)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !77, file: !80, line: 32, baseType: !84, size: 64, align: 64, offset: 1536)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !77, file: !80, line: 33, baseType: !84, size: 64, align: 64, offset: 1600)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !77, file: !80, line: 35, baseType: !115, size: 64, align: 64, offset: 1664)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !117)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !118)
!118 = !{!119, !122, !267, !268, !273, !274, !275, !276, !277, !286, !287, !288, !292, !293, !294, !295, !296, !297, !298, !299}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !117, file: !4, line: 100, baseType: !120, size: 32, align: 32)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !121, line: 49, baseType: !71)
!121 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!122 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !117, file: !4, line: 101, baseType: !123, size: 64, align: 64, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64, align: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !125)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !126)
!126 = !{!127, !151, !157, !164, !168, !254, !258, !263}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !125, file: !4, line: 133, baseType: !128, size: 64, align: 64)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64, align: 64)
!129 = !DISubroutineType(types: !130)
!130 = !{!131, !115, !132, !134, !137, !138}
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64, align: 64)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !121, line: 46, baseType: !85)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !135, line: 66, baseType: !136)
!135 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!136 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64, align: 64)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64, align: 64)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, align: 64)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !141, line: 42, baseType: !142)
!141 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !141, line: 44, size: 128, align: 64, elements: !143)
!143 = !{!144, !149, !150}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !142, file: !141, line: 46, baseType: !145, size: 32, align: 32)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !146, line: 36, baseType: !147)
!146 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !135, line: 45, baseType: !148)
!148 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !142, file: !141, line: 47, baseType: !120, size: 32, align: 32, offset: 32)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !142, file: !141, line: 48, baseType: !132, size: 64, align: 64, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !125, file: !4, line: 138, baseType: !152, size: 64, align: 64, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64, align: 64)
!153 = !DISubroutineType(types: !154)
!154 = !{!131, !115, !155, !134, !137, !138}
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64, align: 64)
!156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !125, file: !4, line: 143, baseType: !158, size: 64, align: 64, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64, align: 64)
!159 = !DISubroutineType(types: !160)
!160 = !{!131, !115, !161, !163, !138}
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !135, line: 51, baseType: !162)
!162 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !125, file: !4, line: 147, baseType: !165, size: 64, align: 64, offset: 192)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64, align: 64)
!166 = !DISubroutineType(types: !167)
!167 = !{!131, !115, !138}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !125, file: !4, line: 149, baseType: !169, size: 64, align: 64, offset: 256)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64, align: 64)
!170 = !DISubroutineType(types: !171)
!171 = !{!172, !115, !253}
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64, align: 64)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !174)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !175)
!175 = !{!176, !179, !200, !229, !231, !235, !236, !237, !238, !246, !247, !248, !249}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !174, file: !16, line: 174, baseType: !177, size: 64, align: 64)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !121, line: 77, baseType: !178)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !174, file: !16, line: 175, baseType: !180, size: 64, align: 64, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64, align: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !182)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !183)
!183 = !{!184, !188, !189}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !182, file: !16, line: 198, baseType: !185, size: 64, align: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64, align: 64)
!186 = !DISubroutineType(types: !187)
!187 = !{null, !177}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !182, file: !16, line: 199, baseType: !185, size: 64, align: 64, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !182, file: !16, line: 200, baseType: !190, size: 64, align: 64, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{null, !177, !172, !193, !199}
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64, align: 64)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !195)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64, align: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{!198, !177}
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !121, line: 50, baseType: !120)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64, align: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !174, file: !16, line: 177, baseType: !201, size: 64, align: 64, offset: 128)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64, align: 64)
!202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !204)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !205)
!205 = !{!206, !211, !215, !219, !223, !224}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !204, file: !16, line: 216, baseType: !207, size: 64, align: 64)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64, align: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{!198, !172, !210}
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !204, file: !16, line: 218, baseType: !212, size: 64, align: 64, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64, align: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{!198, !172}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !204, file: !16, line: 219, baseType: !216, size: 64, align: 64, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{!198, !172, !194, !177}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !204, file: !16, line: 222, baseType: !220, size: 64, align: 64, offset: 192)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64, align: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{null, !172}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !204, file: !16, line: 226, baseType: !194, size: 64, align: 64, offset: 256)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !204, file: !16, line: 227, baseType: !225, size: 64, align: 64, offset: 320)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !226)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{null}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !174, file: !16, line: 178, baseType: !230, size: 32, align: 32, offset: 192)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !121, line: 55, baseType: !148)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !174, file: !16, line: 180, baseType: !232, size: 64, align: 64, offset: 256)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !234)
!234 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !174, file: !16, line: 182, baseType: !120, size: 32, align: 32, offset: 320)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !174, file: !16, line: 183, baseType: !230, size: 32, align: 32, offset: 352)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !174, file: !16, line: 184, baseType: !230, size: 32, align: 32, offset: 384)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !174, file: !16, line: 186, baseType: !239, size: 64, align: 64, offset: 448)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64, align: 64)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !241, line: 37, baseType: !242)
!241 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !241, line: 39, size: 128, align: 64, elements: !243)
!243 = !{!244, !245}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !242, file: !241, line: 41, baseType: !177, size: 64, align: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !242, file: !241, line: 42, baseType: !239, size: 64, align: 64, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !174, file: !16, line: 188, baseType: !172, size: 64, align: 64, offset: 512)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !174, file: !16, line: 189, baseType: !172, size: 64, align: 64, offset: 576)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !174, file: !16, line: 191, baseType: !84, size: 64, align: 64, offset: 640)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !174, file: !16, line: 193, baseType: !250, size: 64, align: 64, offset: 704)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64, align: 64)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !252)
!252 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !125, file: !4, line: 151, baseType: !255, size: 64, align: 64, offset: 320)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64, align: 64)
!256 = !DISubroutineType(types: !257)
!257 = !{null, !115}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !125, file: !4, line: 152, baseType: !259, size: 64, align: 64, offset: 384)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64, align: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{!131, !115, !262, !138}
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !125, file: !4, line: 155, baseType: !264, size: 64, align: 64, offset: 448)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64, align: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!262, !115}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !117, file: !4, line: 103, baseType: !132, size: 64, align: 64, offset: 128)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !117, file: !4, line: 104, baseType: !269, size: 64, align: 64, offset: 192)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !270, line: 77, baseType: !271)
!270 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64, align: 64)
!272 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !270, line: 77, flags: DIFlagFwdDecl)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !117, file: !4, line: 105, baseType: !269, size: 64, align: 64, offset: 256)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !117, file: !4, line: 106, baseType: !132, size: 64, align: 64, offset: 320)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !117, file: !4, line: 107, baseType: !230, size: 32, align: 32, offset: 384)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !117, file: !4, line: 109, baseType: !134, size: 64, align: 64, offset: 448)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !117, file: !4, line: 110, baseType: !278, size: 64, align: 64, offset: 512)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64, align: 64)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !280, line: 39, baseType: !281)
!280 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !280, line: 41, size: 192, align: 64, elements: !282)
!282 = !{!283, !284, !285}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !281, file: !280, line: 43, baseType: !132, size: 64, align: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !281, file: !280, line: 44, baseType: !134, size: 64, align: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !281, file: !280, line: 45, baseType: !134, size: 64, align: 64, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !117, file: !4, line: 111, baseType: !278, size: 64, align: 64, offset: 576)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !117, file: !4, line: 112, baseType: !278, size: 64, align: 64, offset: 640)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !117, file: !4, line: 113, baseType: !289, size: 48, align: 8, offset: 704)
!289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 48, align: 8, elements: !290)
!290 = !{!291}
!291 = !DISubrange(count: 6)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !117, file: !4, line: 117, baseType: !230, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !117, file: !4, line: 118, baseType: !230, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !117, file: !4, line: 119, baseType: !230, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !117, file: !4, line: 120, baseType: !230, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !117, file: !4, line: 121, baseType: !230, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !117, file: !4, line: 122, baseType: !230, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !117, file: !4, line: 124, baseType: !177, size: 64, align: 64, offset: 768)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !117, file: !4, line: 125, baseType: !177, size: 64, align: 64, offset: 832)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !77, file: !80, line: 38, baseType: !148, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !77, file: !80, line: 39, baseType: !148, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !77, file: !80, line: 40, baseType: !148, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !77, file: !80, line: 41, baseType: !148, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !77, file: !80, line: 42, baseType: !148, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !77, file: !80, line: 43, baseType: !148, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !77, file: !80, line: 44, baseType: !148, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !77, file: !80, line: 45, baseType: !148, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !77, file: !80, line: 46, baseType: !84, size: 64, align: 64, offset: 1792)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !77, file: !80, line: 47, baseType: !84, size: 64, align: 64, offset: 1856)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !77, file: !67, line: 27, baseType: !84, size: 64, align: 64, offset: 1920)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_nick", scope: !77, file: !67, line: 28, baseType: !84, size: 64, align: 64, offset: 1984)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !77, file: !67, line: 30, baseType: !71, size: 32, align: 32, offset: 2048)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_username", scope: !77, file: !67, line: 31, baseType: !84, size: 64, align: 64, offset: 2112)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !77, file: !67, line: 32, baseType: !84, size: 64, align: 64, offset: 2176)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !77, file: !67, line: 34, baseType: !71, size: 32, align: 32, offset: 2240)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !77, file: !67, line: 35, baseType: !71, size: 32, align: 32, offset: 2272)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !77, file: !67, line: 36, baseType: !71, size: 32, align: 32, offset: 2304)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks", scope: !77, file: !67, line: 38, baseType: !71, size: 32, align: 32, offset: 2336)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !77, file: !67, line: 38, baseType: !71, size: 32, align: 32, offset: 2368)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes", scope: !77, file: !67, line: 38, baseType: !71, size: 32, align: 32, offset: 2400)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois", scope: !77, file: !67, line: 38, baseType: !71, size: 32, align: 32, offset: 2432)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !66, file: !70, line: 9, baseType: !323, size: 64, align: 64, offset: 192)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !324, line: 75, baseType: !325)
!324 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !326, line: 139, baseType: !162)
!326 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!327 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !66, file: !70, line: 10, baseType: !323, size: 64, align: 64, offset: 256)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !66, file: !70, line: 12, baseType: !84, size: 64, align: 64, offset: 320)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !66, file: !70, line: 13, baseType: !84, size: 64, align: 64, offset: 384)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !66, file: !70, line: 15, baseType: !148, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !66, file: !70, line: 16, baseType: !148, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !66, file: !70, line: 17, baseType: !148, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !66, file: !70, line: 18, baseType: !148, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !66, file: !70, line: 19, baseType: !148, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !66, file: !70, line: 21, baseType: !336, size: 64, align: 64, offset: 512)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64, align: 64)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !99, line: 102, baseType: !338)
!338 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !99, line: 102, flags: DIFlagFwdDecl)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !66, file: !70, line: 22, baseType: !71, size: 32, align: 32, offset: 576)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !66, file: !70, line: 25, baseType: !341, size: 128, align: 64, offset: 640)
!341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 128, align: 64, elements: !342)
!342 = !{!343}
!343 = !DISubrange(count: 2)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !66, file: !70, line: 26, baseType: !71, size: 32, align: 32, offset: 768)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !66, file: !70, line: 27, baseType: !71, size: 32, align: 32, offset: 800)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !66, file: !70, line: 29, baseType: !347, size: 64, align: 64, offset: 832)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64, align: 64)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !99, line: 103, baseType: !349)
!349 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !99, line: 103, flags: DIFlagFwdDecl)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !66, file: !70, line: 30, baseType: !351, size: 64, align: 64, offset: 896)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64, align: 64)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !353, line: 37, baseType: !354)
!353 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!354 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !353, line: 37, flags: DIFlagFwdDecl)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !66, file: !70, line: 32, baseType: !84, size: 64, align: 64, offset: 960)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !66, file: !70, line: 33, baseType: !84, size: 64, align: 64, offset: 1024)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !66, file: !70, line: 34, baseType: !84, size: 64, align: 64, offset: 1088)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !66, file: !70, line: 35, baseType: !148, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !66, file: !70, line: 36, baseType: !148, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !66, file: !70, line: 37, baseType: !148, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !66, file: !70, line: 38, baseType: !148, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !66, file: !70, line: 40, baseType: !363, size: 128, align: 64, offset: 1216)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !121, line: 504, baseType: !364)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !121, line: 506, size: 128, align: 64, elements: !365)
!365 = !{!366, !368}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !364, file: !121, line: 508, baseType: !367, size: 64, align: 64)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !121, line: 48, baseType: !162)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !364, file: !121, line: 509, baseType: !367, size: 64, align: 64, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !66, file: !70, line: 41, baseType: !323, size: 64, align: 64, offset: 1344)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !66, file: !70, line: 42, baseType: !71, size: 32, align: 32, offset: 1408)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !66, file: !70, line: 44, baseType: !239, size: 64, align: 64, offset: 1472)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !66, file: !70, line: 45, baseType: !239, size: 64, align: 64, offset: 1536)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !66, file: !70, line: 53, baseType: !374, size: 64, align: 64, offset: 1600)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64, align: 64)
!375 = !DISubroutineType(types: !376)
!376 = !{null, !377, !465, !71}
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64, align: 64)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !99, line: 107, baseType: !379)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !380, line: 30, size: 2240, align: 64, elements: !381)
!380 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!381 = !{!382, !383, !384, !385, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !461, !467, !471, !475, !480, !559, !566, !570}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !379, file: !70, line: 3, baseType: !71, size: 32, align: 32)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !379, file: !70, line: 4, baseType: !71, size: 32, align: 32, offset: 32)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !379, file: !70, line: 6, baseType: !71, size: 32, align: 32, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !379, file: !70, line: 8, baseType: !386, size: 64, align: 64, offset: 128)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64, align: 64)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !99, line: 113, baseType: !388)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !380, line: 25, size: 1920, align: 64, elements: !389)
!389 = !{!390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !388, file: !80, line: 3, baseType: !71, size: 32, align: 32)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !388, file: !80, line: 4, baseType: !71, size: 32, align: 32, offset: 32)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !388, file: !80, line: 6, baseType: !71, size: 32, align: 32, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !388, file: !80, line: 9, baseType: !84, size: 64, align: 64, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !388, file: !80, line: 10, baseType: !71, size: 32, align: 32, offset: 192)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !388, file: !80, line: 11, baseType: !84, size: 64, align: 64, offset: 256)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !388, file: !80, line: 11, baseType: !84, size: 64, align: 64, offset: 320)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !388, file: !80, line: 11, baseType: !84, size: 64, align: 64, offset: 384)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !388, file: !80, line: 13, baseType: !91, size: 16, align: 16, offset: 448)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !388, file: !80, line: 14, baseType: !84, size: 64, align: 64, offset: 512)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !388, file: !80, line: 15, baseType: !84, size: 64, align: 64, offset: 576)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !388, file: !80, line: 16, baseType: !71, size: 32, align: 32, offset: 640)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !388, file: !80, line: 17, baseType: !84, size: 64, align: 64, offset: 704)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !388, file: !80, line: 19, baseType: !97, size: 64, align: 64, offset: 768)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !388, file: !80, line: 19, baseType: !97, size: 64, align: 64, offset: 832)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !388, file: !80, line: 21, baseType: !84, size: 64, align: 64, offset: 896)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !388, file: !80, line: 22, baseType: !84, size: 64, align: 64, offset: 960)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !388, file: !80, line: 23, baseType: !84, size: 64, align: 64, offset: 1024)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !388, file: !80, line: 24, baseType: !84, size: 64, align: 64, offset: 1088)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !388, file: !80, line: 26, baseType: !84, size: 64, align: 64, offset: 1152)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !388, file: !80, line: 27, baseType: !84, size: 64, align: 64, offset: 1216)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !388, file: !80, line: 28, baseType: !84, size: 64, align: 64, offset: 1280)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !388, file: !80, line: 29, baseType: !84, size: 64, align: 64, offset: 1344)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !388, file: !80, line: 30, baseType: !84, size: 64, align: 64, offset: 1408)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !388, file: !80, line: 31, baseType: !84, size: 64, align: 64, offset: 1472)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !388, file: !80, line: 32, baseType: !84, size: 64, align: 64, offset: 1536)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !388, file: !80, line: 33, baseType: !84, size: 64, align: 64, offset: 1600)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !388, file: !80, line: 35, baseType: !115, size: 64, align: 64, offset: 1664)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !388, file: !80, line: 38, baseType: !148, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !388, file: !80, line: 39, baseType: !148, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !388, file: !80, line: 40, baseType: !148, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !388, file: !80, line: 41, baseType: !148, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !388, file: !80, line: 42, baseType: !148, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !388, file: !80, line: 43, baseType: !148, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !388, file: !80, line: 44, baseType: !148, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !388, file: !80, line: 45, baseType: !148, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !388, file: !80, line: 46, baseType: !84, size: 64, align: 64, offset: 1792)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !388, file: !80, line: 47, baseType: !84, size: 64, align: 64, offset: 1856)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !379, file: !70, line: 9, baseType: !323, size: 64, align: 64, offset: 192)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !379, file: !70, line: 10, baseType: !323, size: 64, align: 64, offset: 256)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !379, file: !70, line: 12, baseType: !84, size: 64, align: 64, offset: 320)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !379, file: !70, line: 13, baseType: !84, size: 64, align: 64, offset: 384)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !379, file: !70, line: 15, baseType: !148, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !379, file: !70, line: 16, baseType: !148, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !379, file: !70, line: 17, baseType: !148, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !379, file: !70, line: 18, baseType: !148, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !379, file: !70, line: 19, baseType: !148, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !379, file: !70, line: 21, baseType: !336, size: 64, align: 64, offset: 512)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !379, file: !70, line: 22, baseType: !71, size: 32, align: 32, offset: 576)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !379, file: !70, line: 25, baseType: !341, size: 128, align: 64, offset: 640)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !379, file: !70, line: 26, baseType: !71, size: 32, align: 32, offset: 768)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !379, file: !70, line: 27, baseType: !71, size: 32, align: 32, offset: 800)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !379, file: !70, line: 29, baseType: !347, size: 64, align: 64, offset: 832)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !379, file: !70, line: 30, baseType: !351, size: 64, align: 64, offset: 896)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !379, file: !70, line: 32, baseType: !84, size: 64, align: 64, offset: 960)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !379, file: !70, line: 33, baseType: !84, size: 64, align: 64, offset: 1024)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !379, file: !70, line: 34, baseType: !84, size: 64, align: 64, offset: 1088)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !379, file: !70, line: 35, baseType: !148, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !379, file: !70, line: 36, baseType: !148, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !379, file: !70, line: 37, baseType: !148, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !379, file: !70, line: 38, baseType: !148, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !379, file: !70, line: 40, baseType: !363, size: 128, align: 64, offset: 1216)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !379, file: !70, line: 41, baseType: !323, size: 64, align: 64, offset: 1344)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !379, file: !70, line: 42, baseType: !71, size: 32, align: 32, offset: 1408)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !379, file: !70, line: 44, baseType: !239, size: 64, align: 64, offset: 1472)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !379, file: !70, line: 45, baseType: !239, size: 64, align: 64, offset: 1536)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !379, file: !70, line: 53, baseType: !374, size: 64, align: 64, offset: 1600)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !379, file: !70, line: 55, baseType: !458, size: 64, align: 64, offset: 1664)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64, align: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!71, !377, !85}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !379, file: !70, line: 57, baseType: !462, size: 64, align: 64, offset: 1728)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64, align: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{!71, !377, !465}
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64, align: 64)
!466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !379, file: !70, line: 60, baseType: !468, size: 64, align: 64, offset: 1792)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64, align: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{!465, !377}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !379, file: !70, line: 62, baseType: !472, size: 64, align: 64, offset: 1856)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64, align: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{null, !377, !465, !465, !71}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !379, file: !70, line: 65, baseType: !476, size: 64, align: 64, offset: 1920)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64, align: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{!479, !377, !465, !465}
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64, align: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !379, file: !70, line: 69, baseType: !481, size: 64, align: 64, offset: 1984)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64, align: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!484, !377, !465}
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64, align: 64)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !99, line: 109, baseType: !486)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !487, line: 15, size: 1408, align: 64, elements: !488)
!487 = !DIFile(filename: "../../../src/core/channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!488 = !{!489, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !507, !511, !513, !514, !515, !516, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !486, file: !490, line: 3, baseType: !71, size: 32, align: 32)
!490 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!491 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !486, file: !490, line: 4, baseType: !71, size: 32, align: 32, offset: 32)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !486, file: !490, line: 5, baseType: !351, size: 64, align: 64, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !486, file: !490, line: 7, baseType: !178, size: 64, align: 64, offset: 128)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !486, file: !490, line: 8, baseType: !377, size: 64, align: 64, offset: 192)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !486, file: !490, line: 9, baseType: !84, size: 64, align: 64, offset: 256)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !486, file: !490, line: 10, baseType: !84, size: 64, align: 64, offset: 320)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !486, file: !490, line: 11, baseType: !323, size: 64, align: 64, offset: 384)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !486, file: !490, line: 12, baseType: !71, size: 32, align: 32, offset: 448)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !486, file: !490, line: 13, baseType: !84, size: 64, align: 64, offset: 512)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !486, file: !490, line: 15, baseType: !501, size: 64, align: 64, offset: 576)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64, align: 64)
!502 = !DISubroutineType(types: !503)
!503 = !{null, !504}
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64, align: 64)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !99, line: 108, baseType: !506)
!506 = !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !99, line: 108, flags: DIFlagFwdDecl)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !486, file: !490, line: 17, baseType: !508, size: 64, align: 64, offset: 640)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64, align: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!465, !504}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !486, file: !512, line: 5, baseType: !84, size: 64, align: 64, offset: 704)
!512 = !DIFile(filename: "../../../src/core/channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!513 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !486, file: !512, line: 6, baseType: !84, size: 64, align: 64, offset: 768)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !486, file: !512, line: 7, baseType: !323, size: 64, align: 64, offset: 832)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !486, file: !512, line: 9, baseType: !351, size: 64, align: 64, offset: 896)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !486, file: !512, line: 10, baseType: !517, size: 64, align: 64, offset: 960)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64, align: 64)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !99, line: 111, baseType: !519)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !520, line: 13, size: 576, align: 64, elements: !521)
!520 = !DIFile(filename: "../../../src/core/nicklist.h", directory: "/home/lichi/Desktop/irssi/task1")
!521 = !{!522, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !540, !541}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !519, file: !523, line: 3, baseType: !71, size: 32, align: 32)
!523 = !DIFile(filename: "../../../src/core/nick-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!524 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !519, file: !523, line: 4, baseType: !71, size: 32, align: 32, offset: 32)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "last_check", scope: !519, file: !523, line: 6, baseType: !323, size: 64, align: 64, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !519, file: !523, line: 8, baseType: !84, size: 64, align: 64, offset: 128)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !519, file: !523, line: 9, baseType: !84, size: 64, align: 64, offset: 192)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !519, file: !523, line: 10, baseType: !84, size: 64, align: 64, offset: 256)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "hops", scope: !519, file: !523, line: 11, baseType: !71, size: 32, align: 32, offset: 320)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "gone", scope: !519, file: !523, line: 14, baseType: !148, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "serverop", scope: !519, file: !523, line: 15, baseType: !148, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "send_massjoin", scope: !519, file: !523, line: 18, baseType: !148, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !519, file: !523, line: 19, baseType: !148, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !519, file: !523, line: 20, baseType: !148, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !519, file: !523, line: 21, baseType: !148, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !519, file: !523, line: 22, baseType: !537, size: 64, align: 8, offset: 360)
!537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 64, align: 8, elements: !538)
!538 = !{!539}
!539 = !DISubrange(count: 8)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !519, file: !523, line: 26, baseType: !178, size: 64, align: 64, offset: 448)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !519, file: !523, line: 28, baseType: !517, size: 64, align: 64, offset: 512)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !486, file: !512, line: 12, baseType: !148, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !486, file: !512, line: 13, baseType: !84, size: 64, align: 64, offset: 1088)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !486, file: !512, line: 14, baseType: !71, size: 32, align: 32, offset: 1152)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !486, file: !512, line: 15, baseType: !84, size: 64, align: 64, offset: 1216)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !486, file: !512, line: 17, baseType: !148, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !486, file: !512, line: 18, baseType: !148, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !486, file: !512, line: 19, baseType: !148, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !486, file: !512, line: 20, baseType: !148, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !486, file: !512, line: 22, baseType: !148, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !486, file: !512, line: 23, baseType: !148, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !486, file: !512, line: 24, baseType: !148, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !486, file: !512, line: 25, baseType: !148, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !486, file: !512, line: 26, baseType: !148, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !486, file: !512, line: 31, baseType: !556, size: 64, align: 64, offset: 1344)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64, align: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{!84, !484}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !379, file: !70, line: 70, baseType: !560, size: 64, align: 64, offset: 2048)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64, align: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{!563, !377, !465}
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64, align: 64)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !99, line: 110, baseType: !565)
!565 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !99, line: 110, flags: DIFlagFwdDecl)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !379, file: !70, line: 71, baseType: !567, size: 64, align: 64, offset: 2112)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64, align: 64)
!568 = !DISubroutineType(types: !569)
!569 = !{!71, !465, !465}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !379, file: !70, line: 73, baseType: !567, size: 64, align: 64, offset: 2176)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !66, file: !70, line: 55, baseType: !458, size: 64, align: 64, offset: 1664)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !66, file: !70, line: 57, baseType: !462, size: 64, align: 64, offset: 1728)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !66, file: !70, line: 60, baseType: !468, size: 64, align: 64, offset: 1792)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !66, file: !70, line: 62, baseType: !472, size: 64, align: 64, offset: 1856)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !66, file: !70, line: 65, baseType: !476, size: 64, align: 64, offset: 1920)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !66, file: !70, line: 69, baseType: !481, size: 64, align: 64, offset: 1984)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !66, file: !70, line: 70, baseType: !560, size: 64, align: 64, offset: 2048)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !66, file: !70, line: 71, baseType: !567, size: 64, align: 64, offset: 2112)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !66, file: !70, line: 73, baseType: !567, size: 64, align: 64, offset: 2176)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "redirects", scope: !66, file: !67, line: 46, baseType: !239, size: 64, align: 64, offset: 2240)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_queue", scope: !66, file: !67, line: 47, baseType: !239, size: 64, align: 64, offset: 2304)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_next", scope: !66, file: !67, line: 48, baseType: !583, size: 64, align: 64, offset: 2368)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64, align: 64)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "REDIRECT_REC", file: !65, line: 8, baseType: !585)
!585 = !DICompositeType(tag: DW_TAG_structure_type, name: "_REDIRECT_REC", file: !65, line: 8, flags: DIFlagFwdDecl)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_active", scope: !66, file: !67, line: 49, baseType: !239, size: 64, align: 64, offset: 2432)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "last_nick", scope: !66, file: !67, line: 51, baseType: !84, size: 64, align: 64, offset: 2496)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !66, file: !67, line: 53, baseType: !84, size: 64, align: 64, offset: 2560)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !66, file: !67, line: 54, baseType: !84, size: 64, align: 64, offset: 2624)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "wanted_usermode", scope: !66, file: !67, line: 55, baseType: !84, size: 64, align: 64, offset: 2688)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "userhost", scope: !66, file: !67, line: 56, baseType: !84, size: 64, align: 64, offset: 2752)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "channels_formed", scope: !66, file: !67, line: 57, baseType: !71, size: 32, align: 32, offset: 2816)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "whois_found", scope: !66, file: !67, line: 59, baseType: !148, size: 1, align: 32, offset: 2848, flags: DIFlagBitField, extraData: i64 2848)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "whowas_found", scope: !66, file: !67, line: 60, baseType: !148, size: 1, align: 32, offset: 2849, flags: DIFlagBitField, extraData: i64 2848)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "emode_known", scope: !66, file: !67, line: 62, baseType: !148, size: 1, align: 32, offset: 2850, flags: DIFlagBitField, extraData: i64 2848)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_mode", scope: !66, file: !67, line: 63, baseType: !148, size: 1, align: 32, offset: 2851, flags: DIFlagBitField, extraData: i64 2848)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_who", scope: !66, file: !67, line: 64, baseType: !148, size: 1, align: 32, offset: 2852, flags: DIFlagBitField, extraData: i64 2848)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "one_endofwho", scope: !66, file: !67, line: 65, baseType: !148, size: 1, align: 32, offset: 2853, flags: DIFlagBitField, extraData: i64 2848)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "disable_lag", scope: !66, file: !67, line: 66, baseType: !148, size: 1, align: 32, offset: 2854, flags: DIFlagBitField, extraData: i64 2848)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "nick_collision", scope: !66, file: !67, line: 67, baseType: !148, size: 1, align: 32, offset: 2855, flags: DIFlagBitField, extraData: i64 2848)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "motd_got", scope: !66, file: !67, line: 68, baseType: !148, size: 1, align: 32, offset: 2856, flags: DIFlagBitField, extraData: i64 2848)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "isupport_sent", scope: !66, file: !67, line: 69, baseType: !148, size: 1, align: 32, offset: 2857, flags: DIFlagBitField, extraData: i64 2848)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "cap_complete", scope: !66, file: !67, line: 70, baseType: !148, size: 1, align: 32, offset: 2858, flags: DIFlagBitField, extraData: i64 2848)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "cap_in_multiline", scope: !66, file: !67, line: 71, baseType: !148, size: 1, align: 32, offset: 2859, flags: DIFlagBitField, extraData: i64 2848)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_success", scope: !66, file: !67, line: 72, baseType: !148, size: 1, align: 32, offset: 2860, flags: DIFlagBitField, extraData: i64 2848)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks_in_cmd", scope: !66, file: !67, line: 74, baseType: !71, size: 32, align: 32, offset: 2880)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes_in_cmd", scope: !66, file: !67, line: 75, baseType: !71, size: 32, align: 32, offset: 2912)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois_in_cmd", scope: !66, file: !67, line: 76, baseType: !71, size: 32, align: 32, offset: 2944)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs_in_cmd", scope: !66, file: !67, line: 77, baseType: !71, size: 32, align: 32, offset: 2976)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "cap_supported", scope: !66, file: !67, line: 79, baseType: !351, size: 64, align: 64, offset: 3008)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "cap_active", scope: !66, file: !67, line: 80, baseType: !239, size: 64, align: 64, offset: 3072)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "cap_queue", scope: !66, file: !67, line: 81, baseType: !239, size: 64, align: 64, offset: 3136)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_buffer", scope: !66, file: !67, line: 83, baseType: !278, size: 64, align: 64, offset: 3200)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_timeout", scope: !66, file: !67, line: 84, baseType: !230, size: 32, align: 32, offset: 3264)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcount", scope: !66, file: !67, line: 87, baseType: !71, size: 32, align: 32, offset: 3296)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "cmdqueue", scope: !66, file: !67, line: 91, baseType: !239, size: 64, align: 64, offset: 3328)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "wait_cmd", scope: !66, file: !67, line: 92, baseType: !363, size: 128, align: 64, offset: 3392)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd", scope: !66, file: !67, line: 93, baseType: !363, size: 128, align: 64, offset: 3520)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !66, file: !67, line: 95, baseType: !71, size: 32, align: 32, offset: 3648)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !66, file: !67, line: 96, baseType: !71, size: 32, align: 32, offset: 3680)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !66, file: !67, line: 97, baseType: !71, size: 32, align: 32, offset: 3712)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "idles", scope: !66, file: !67, line: 100, baseType: !239, size: 64, align: 64, offset: 3776)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "ctcpqueue", scope: !66, file: !67, line: 103, baseType: !239, size: 64, align: 64, offset: 3840)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "knockoutlist", scope: !66, file: !67, line: 106, baseType: !239, size: 64, align: 64, offset: 3904)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "splits", scope: !66, file: !67, line: 108, baseType: !351, size: 64, align: 64, offset: 3968)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "split_servers", scope: !66, file: !67, line: 109, baseType: !239, size: 64, align: 64, offset: 4032)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "rejoin_channels", scope: !66, file: !67, line: 111, baseType: !239, size: 64, align: 64, offset: 4096)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "chanqueries", scope: !66, file: !67, line: 114, baseType: !178, size: 64, align: 64, offset: 4160)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "isupport", scope: !66, file: !67, line: 116, baseType: !351, size: 64, align: 64, offset: 4224)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !66, file: !67, line: 117, baseType: !631, size: 32768, align: 64, offset: 4288)
!631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !632, size: 32768, align: 64, elements: !681)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "modes_type", file: !633, line: 10, size: 128, align: 64, elements: !634)
!633 = !DIFile(filename: "modes.h", directory: "/home/lichi/Desktop/irssi/task1")
!634 = !{!635, !680}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !632, file: !633, line: 11, baseType: !636, size: 64, align: 64)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64, align: 64)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_func_t", file: !633, line: 7, baseType: !638)
!638 = !DISubroutineType(types: !639)
!639 = !{null, !640, !465, !85, !85, !84, !278}
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64, align: 64)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_CHANNEL_REC", file: !65, line: 7, baseType: !642)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_CHANNEL_REC", file: !643, line: 15, size: 1600, align: 64, elements: !644)
!643 = !DIFile(filename: "irc-channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!644 = !{!645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !642, file: !490, line: 3, baseType: !71, size: 32, align: 32)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !642, file: !490, line: 4, baseType: !71, size: 32, align: 32, offset: 32)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !642, file: !490, line: 5, baseType: !351, size: 64, align: 64, offset: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !642, file: !490, line: 7, baseType: !178, size: 64, align: 64, offset: 128)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !642, file: !490, line: 8, baseType: !63, size: 64, align: 64, offset: 192)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !642, file: !490, line: 9, baseType: !84, size: 64, align: 64, offset: 256)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !642, file: !490, line: 10, baseType: !84, size: 64, align: 64, offset: 320)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !642, file: !490, line: 11, baseType: !323, size: 64, align: 64, offset: 384)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !642, file: !490, line: 12, baseType: !71, size: 32, align: 32, offset: 448)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !642, file: !490, line: 13, baseType: !84, size: 64, align: 64, offset: 512)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !642, file: !490, line: 15, baseType: !501, size: 64, align: 64, offset: 576)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !642, file: !490, line: 17, baseType: !508, size: 64, align: 64, offset: 640)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !642, file: !512, line: 5, baseType: !84, size: 64, align: 64, offset: 704)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !642, file: !512, line: 6, baseType: !84, size: 64, align: 64, offset: 768)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !642, file: !512, line: 7, baseType: !323, size: 64, align: 64, offset: 832)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !642, file: !512, line: 9, baseType: !351, size: 64, align: 64, offset: 896)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !642, file: !512, line: 10, baseType: !517, size: 64, align: 64, offset: 960)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !642, file: !512, line: 12, baseType: !148, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !642, file: !512, line: 13, baseType: !84, size: 64, align: 64, offset: 1088)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !642, file: !512, line: 14, baseType: !71, size: 32, align: 32, offset: 1152)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !642, file: !512, line: 15, baseType: !84, size: 64, align: 64, offset: 1216)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !642, file: !512, line: 17, baseType: !148, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !642, file: !512, line: 18, baseType: !148, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !642, file: !512, line: 19, baseType: !148, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !642, file: !512, line: 20, baseType: !148, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !642, file: !512, line: 22, baseType: !148, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !642, file: !512, line: 23, baseType: !148, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !642, file: !512, line: 24, baseType: !148, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !642, file: !512, line: 25, baseType: !148, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !642, file: !512, line: 26, baseType: !148, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !642, file: !512, line: 31, baseType: !556, size: 64, align: 64, offset: 1344)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "banlist", scope: !642, file: !643, line: 18, baseType: !239, size: 64, align: 64, offset: 1408)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "massjoin_start", scope: !642, file: !643, line: 20, baseType: !323, size: 64, align: 64, offset: 1472)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "massjoins", scope: !642, file: !643, line: 21, baseType: !71, size: 32, align: 32, offset: 1536)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "last_massjoins", scope: !642, file: !643, line: 22, baseType: !71, size: 32, align: 32, offset: 1568)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !632, file: !633, line: 12, baseType: !85, size: 8, align: 8, offset: 64)
!681 = !{!682}
!682 = !DISubrange(count: 256)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !66, file: !67, line: 118, baseType: !684, size: 2048, align: 8, offset: 37056)
!684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 2048, align: 8, elements: !681)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "nick_comp_func", scope: !66, file: !67, line: 120, baseType: !567, size: 64, align: 64, offset: 39104)
!686 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !688, line: 9, baseType: !689)
!688 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64, align: 64)
!690 = !DISubroutineType(types: !691)
!691 = !{null, !692, !692, !692, !692, !692, !692}
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64, align: 64)
!693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHRFunc", file: !353, line: 39, baseType: !695)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64, align: 64)
!696 = !DISubroutineType(types: !697)
!697 = !{!198, !177, !177, !177}
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHFunc", file: !121, line: 91, baseType: !699)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64, align: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{null, !177, !177, !177}
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64, align: 64)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "NETSPLIT_REC", file: !704, line: 24, baseType: !705)
!704 = !DIFile(filename: "netsplit.h", directory: "/home/lichi/Desktop/irssi/task1")
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !704, line: 15, size: 384, align: 64, elements: !706)
!706 = !{!707, !717, !718, !719, !720, !721}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !705, file: !704, line: 16, baseType: !708, size: 64, align: 64)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64, align: 64)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "NETSPLIT_SERVER_REC", file: !704, line: 13, baseType: !710)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !704, line: 6, size: 256, align: 64, elements: !711)
!711 = !{!712, !713, !714, !715, !716}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !710, file: !704, line: 7, baseType: !84, size: 64, align: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "destserver", scope: !710, file: !704, line: 8, baseType: !84, size: 64, align: 64, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !710, file: !704, line: 9, baseType: !71, size: 32, align: 32, offset: 128)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "prints", scope: !710, file: !704, line: 10, baseType: !71, size: 32, align: 32, offset: 160)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !710, file: !704, line: 12, baseType: !323, size: 64, align: 64, offset: 192)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !705, file: !704, line: 18, baseType: !84, size: 64, align: 64, offset: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !705, file: !704, line: 19, baseType: !84, size: 64, align: 64, offset: 128)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !705, file: !704, line: 20, baseType: !239, size: 64, align: 64, offset: 192)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !705, file: !704, line: 22, baseType: !148, size: 1, align: 32, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !705, file: !704, line: 23, baseType: !323, size: 64, align: 64, offset: 320)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64, align: 64)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "NETSPLIT_CHAN_REC", file: !704, line: 32, baseType: !724)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !704, line: 26, size: 192, align: 64, elements: !725)
!725 = !{!726, !727, !728, !729, !730}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !724, file: !704, line: 27, baseType: !84, size: 64, align: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !724, file: !704, line: 28, baseType: !148, size: 1, align: 32, offset: 64, flags: DIFlagBitField, extraData: i64 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !724, file: !704, line: 29, baseType: !148, size: 1, align: 32, offset: 65, flags: DIFlagBitField, extraData: i64 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !724, file: !704, line: 30, baseType: !148, size: 1, align: 32, offset: 66, flags: DIFlagBitField, extraData: i64 64)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !724, file: !704, line: 31, baseType: !537, size: 64, align: 8, offset: 72)
!731 = !{!732}
!732 = distinct !DIGlobalVariable(name: "split_tag", scope: !0, file: !733, line: 33, type: !71, isLocal: true, isDefinition: true, variable: i32* @split_tag)
!733 = !DIFile(filename: "netsplit.c", directory: "/home/lichi/Desktop/irssi/task1")
!734 = !{i32 2, !"Dwarf Version", i32 4}
!735 = !{i32 2, !"Debug Info Version", i32 3}
!736 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!737 = distinct !DISubprogram(name: "netsplit_find", scope: !733, file: !733, line: 182, type: !738, isLocal: false, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !740)
!738 = !DISubroutineType(types: !739)
!739 = !{!702, !63, !465, !465}
!740 = !{}
!741 = !DILocalVariable(name: "server", arg: 1, scope: !737, file: !733, line: 182, type: !63)
!742 = !DIExpression()
!743 = !DILocation(line: 182, column: 45, scope: !737)
!744 = !DILocalVariable(name: "nick", arg: 2, scope: !737, file: !733, line: 182, type: !465)
!745 = !DILocation(line: 182, column: 65, scope: !737)
!746 = !DILocalVariable(name: "address", arg: 3, scope: !737, file: !733, line: 183, type: !465)
!747 = !DILocation(line: 183, column: 20, scope: !737)
!748 = !DILocalVariable(name: "rec", scope: !737, file: !733, line: 185, type: !702)
!749 = !DILocation(line: 185, column: 16, scope: !737)
!750 = !DILocation(line: 187, column: 2, scope: !737)
!751 = distinct !{!751, !750}
!752 = !DILocation(line: 187, column: 90, scope: !753)
!753 = !DILexicalBlockFile(scope: !754, file: !733, discriminator: 1)
!754 = distinct !DILexicalBlock(scope: !755, file: !733, line: 187, column: 10)
!755 = distinct !DILexicalBlock(scope: !737, file: !733, line: 187, column: 4)
!756 = !DILocation(line: 187, column: 72, scope: !753)
!757 = !DILocation(line: 187, column: 57, scope: !753)
!758 = !DILocation(line: 187, column: 56, scope: !753)
!759 = !DILocation(line: 187, column: 31, scope: !760)
!760 = !DILexicalBlockFile(scope: !753, file: !733, discriminator: 7)
!761 = !DILocation(line: 187, column: 12, scope: !753)
!762 = !DILocation(line: 187, column: 10, scope: !753)
!763 = !DILocation(line: 187, column: 11, scope: !764)
!764 = !DILexicalBlockFile(scope: !754, file: !733, discriminator: 2)
!765 = !DILocation(line: 187, column: 10, scope: !766)
!766 = !DILexicalBlockFile(scope: !755, file: !733, discriminator: 3)
!767 = !DILocation(line: 187, column: 30, scope: !768)
!768 = !DILexicalBlockFile(scope: !769, file: !733, discriminator: 4)
!769 = distinct !DILexicalBlock(scope: !754, file: !733, line: 187, column: 28)
!770 = !DILocation(line: 187, column: 39, scope: !771)
!771 = !DILexicalBlockFile(scope: !772, file: !733, discriminator: 5)
!772 = distinct !DILexicalBlock(scope: !754, file: !733, line: 187, column: 37)
!773 = !DILocation(line: 187, column: 133, scope: !771)
!774 = !DILocation(line: 187, column: 7, scope: !775)
!775 = !DILexicalBlockFile(scope: !755, file: !733, discriminator: 6)
!776 = !DILocation(line: 188, column: 2, scope: !737)
!777 = distinct !{!777, !776}
!778 = !DILocation(line: 188, column: 10, scope: !779)
!779 = !DILexicalBlockFile(scope: !780, file: !733, discriminator: 1)
!780 = distinct !DILexicalBlock(scope: !781, file: !733, line: 188, column: 10)
!781 = distinct !DILexicalBlock(scope: !737, file: !733, line: 188, column: 4)
!782 = !DILocation(line: 188, column: 15, scope: !779)
!783 = !DILocation(line: 188, column: 5, scope: !784)
!784 = !DILexicalBlockFile(scope: !785, file: !733, discriminator: 2)
!785 = distinct !DILexicalBlock(scope: !780, file: !733, line: 188, column: 3)
!786 = !DILocation(line: 188, column: 14, scope: !787)
!787 = !DILexicalBlockFile(scope: !788, file: !733, discriminator: 3)
!788 = distinct !DILexicalBlock(scope: !780, file: !733, line: 188, column: 12)
!789 = !DILocation(line: 188, column: 99, scope: !787)
!790 = !DILocation(line: 188, column: 7, scope: !791)
!791 = !DILexicalBlockFile(scope: !781, file: !733, discriminator: 4)
!792 = !DILocation(line: 190, column: 28, scope: !737)
!793 = !DILocation(line: 190, column: 36, scope: !737)
!794 = !DILocation(line: 190, column: 44, scope: !737)
!795 = !DILocation(line: 190, column: 8, scope: !737)
!796 = !DILocation(line: 190, column: 6, scope: !737)
!797 = !DILocation(line: 191, column: 6, scope: !798)
!798 = distinct !DILexicalBlock(scope: !737, file: !733, line: 191, column: 6)
!799 = !DILocation(line: 191, column: 10, scope: !798)
!800 = !DILocation(line: 191, column: 6, scope: !737)
!801 = !DILocation(line: 191, column: 18, scope: !802)
!802 = !DILexicalBlockFile(scope: !798, file: !733, discriminator: 1)
!803 = !DILocation(line: 193, column: 10, scope: !737)
!804 = !DILocation(line: 193, column: 18, scope: !737)
!805 = !DILocation(line: 193, column: 25, scope: !737)
!806 = !DILocation(line: 194, column: 22, scope: !737)
!807 = !DILocation(line: 194, column: 27, scope: !737)
!808 = !DILocation(line: 194, column: 36, scope: !737)
!809 = !DILocation(line: 194, column: 3, scope: !737)
!810 = !DILocation(line: 194, column: 45, scope: !737)
!811 = !DILocation(line: 193, column: 9, scope: !812)
!812 = !DILexicalBlockFile(scope: !737, file: !733, discriminator: 1)
!813 = !DILocation(line: 194, column: 53, scope: !812)
!814 = !DILocation(line: 193, column: 9, scope: !815)
!815 = !DILexicalBlockFile(scope: !737, file: !733, discriminator: 2)
!816 = !DILocation(line: 193, column: 9, scope: !817)
!817 = !DILexicalBlockFile(scope: !737, file: !733, discriminator: 3)
!818 = !DILocation(line: 193, column: 9, scope: !819)
!819 = !DILexicalBlockFile(scope: !737, file: !733, discriminator: 4)
!820 = !DILocation(line: 193, column: 2, scope: !819)
!821 = !DILocation(line: 195, column: 1, scope: !737)
!822 = distinct !DISubprogram(name: "netsplit_find_channel", scope: !733, file: !733, line: 197, type: !823, isLocal: false, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !740)
!823 = !DISubroutineType(types: !824)
!824 = !{!722, !63, !465, !465, !465}
!825 = !DILocalVariable(name: "server", arg: 1, scope: !822, file: !733, line: 197, type: !63)
!826 = !DILocation(line: 197, column: 58, scope: !822)
!827 = !DILocalVariable(name: "nick", arg: 2, scope: !822, file: !733, line: 198, type: !465)
!828 = !DILocation(line: 198, column: 19, scope: !822)
!829 = !DILocalVariable(name: "address", arg: 3, scope: !822, file: !733, line: 198, type: !465)
!830 = !DILocation(line: 198, column: 37, scope: !822)
!831 = !DILocalVariable(name: "channel", arg: 4, scope: !822, file: !733, line: 199, type: !465)
!832 = !DILocation(line: 199, column: 19, scope: !822)
!833 = !DILocalVariable(name: "rec", scope: !822, file: !733, line: 201, type: !702)
!834 = !DILocation(line: 201, column: 16, scope: !822)
!835 = !DILocalVariable(name: "tmp", scope: !822, file: !733, line: 202, type: !239)
!836 = !DILocation(line: 202, column: 10, scope: !822)
!837 = !DILocation(line: 204, column: 2, scope: !822)
!838 = distinct !{!838, !837}
!839 = !DILocation(line: 204, column: 90, scope: !840)
!840 = !DILexicalBlockFile(scope: !841, file: !733, discriminator: 1)
!841 = distinct !DILexicalBlock(scope: !842, file: !733, line: 204, column: 10)
!842 = distinct !DILexicalBlock(scope: !822, file: !733, line: 204, column: 4)
!843 = !DILocation(line: 204, column: 72, scope: !840)
!844 = !DILocation(line: 204, column: 57, scope: !840)
!845 = !DILocation(line: 204, column: 56, scope: !840)
!846 = !DILocation(line: 204, column: 31, scope: !847)
!847 = !DILexicalBlockFile(scope: !840, file: !733, discriminator: 7)
!848 = !DILocation(line: 204, column: 12, scope: !840)
!849 = !DILocation(line: 204, column: 10, scope: !840)
!850 = !DILocation(line: 204, column: 11, scope: !851)
!851 = !DILexicalBlockFile(scope: !841, file: !733, discriminator: 2)
!852 = !DILocation(line: 204, column: 10, scope: !853)
!853 = !DILexicalBlockFile(scope: !842, file: !733, discriminator: 3)
!854 = !DILocation(line: 204, column: 30, scope: !855)
!855 = !DILexicalBlockFile(scope: !856, file: !733, discriminator: 4)
!856 = distinct !DILexicalBlock(scope: !841, file: !733, line: 204, column: 28)
!857 = !DILocation(line: 204, column: 39, scope: !858)
!858 = !DILexicalBlockFile(scope: !859, file: !733, discriminator: 5)
!859 = distinct !DILexicalBlock(scope: !841, file: !733, line: 204, column: 37)
!860 = !DILocation(line: 204, column: 133, scope: !858)
!861 = !DILocation(line: 204, column: 7, scope: !862)
!862 = !DILexicalBlockFile(scope: !842, file: !733, discriminator: 6)
!863 = !DILocation(line: 205, column: 2, scope: !822)
!864 = distinct !{!864, !863}
!865 = !DILocation(line: 205, column: 10, scope: !866)
!866 = !DILexicalBlockFile(scope: !867, file: !733, discriminator: 1)
!867 = distinct !DILexicalBlock(scope: !868, file: !733, line: 205, column: 10)
!868 = distinct !DILexicalBlock(scope: !822, file: !733, line: 205, column: 4)
!869 = !DILocation(line: 205, column: 15, scope: !866)
!870 = !DILocation(line: 205, column: 5, scope: !871)
!871 = !DILexicalBlockFile(scope: !872, file: !733, discriminator: 2)
!872 = distinct !DILexicalBlock(scope: !867, file: !733, line: 205, column: 3)
!873 = !DILocation(line: 205, column: 14, scope: !874)
!874 = !DILexicalBlockFile(scope: !875, file: !733, discriminator: 3)
!875 = distinct !DILexicalBlock(scope: !867, file: !733, line: 205, column: 12)
!876 = !DILocation(line: 205, column: 99, scope: !874)
!877 = !DILocation(line: 205, column: 7, scope: !878)
!878 = !DILexicalBlockFile(scope: !868, file: !733, discriminator: 4)
!879 = !DILocation(line: 206, column: 2, scope: !822)
!880 = distinct !{!880, !879}
!881 = !DILocation(line: 206, column: 10, scope: !882)
!882 = !DILexicalBlockFile(scope: !883, file: !733, discriminator: 1)
!883 = distinct !DILexicalBlock(scope: !884, file: !733, line: 206, column: 10)
!884 = distinct !DILexicalBlock(scope: !822, file: !733, line: 206, column: 4)
!885 = !DILocation(line: 206, column: 18, scope: !882)
!886 = !DILocation(line: 206, column: 5, scope: !887)
!887 = !DILexicalBlockFile(scope: !888, file: !733, discriminator: 2)
!888 = distinct !DILexicalBlock(scope: !883, file: !733, line: 206, column: 3)
!889 = !DILocation(line: 206, column: 14, scope: !890)
!890 = !DILexicalBlockFile(scope: !891, file: !733, discriminator: 3)
!891 = distinct !DILexicalBlock(scope: !883, file: !733, line: 206, column: 12)
!892 = !DILocation(line: 206, column: 102, scope: !890)
!893 = !DILocation(line: 206, column: 7, scope: !894)
!894 = !DILexicalBlockFile(scope: !884, file: !733, discriminator: 4)
!895 = !DILocation(line: 208, column: 22, scope: !822)
!896 = !DILocation(line: 208, column: 30, scope: !822)
!897 = !DILocation(line: 208, column: 36, scope: !822)
!898 = !DILocation(line: 208, column: 8, scope: !822)
!899 = !DILocation(line: 208, column: 6, scope: !822)
!900 = !DILocation(line: 209, column: 6, scope: !901)
!901 = distinct !DILexicalBlock(scope: !822, file: !733, line: 209, column: 6)
!902 = !DILocation(line: 209, column: 10, scope: !901)
!903 = !DILocation(line: 209, column: 6, scope: !822)
!904 = !DILocation(line: 209, column: 18, scope: !905)
!905 = !DILexicalBlockFile(scope: !901, file: !733, discriminator: 1)
!906 = !DILocation(line: 211, column: 13, scope: !907)
!907 = distinct !DILexicalBlock(scope: !822, file: !733, line: 211, column: 2)
!908 = !DILocation(line: 211, column: 18, scope: !907)
!909 = !DILocation(line: 211, column: 11, scope: !907)
!910 = !DILocation(line: 211, column: 7, scope: !907)
!911 = !DILocation(line: 211, column: 28, scope: !912)
!912 = !DILexicalBlockFile(scope: !913, file: !733, discriminator: 1)
!913 = distinct !DILexicalBlock(scope: !907, file: !733, line: 211, column: 2)
!914 = !DILocation(line: 211, column: 32, scope: !912)
!915 = !DILocation(line: 211, column: 2, scope: !912)
!916 = !DILocalVariable(name: "rec", scope: !917, file: !733, line: 212, type: !722)
!917 = distinct !DILexicalBlock(scope: !913, file: !733, line: 211, column: 57)
!918 = !DILocation(line: 212, column: 22, scope: !917)
!919 = !DILocation(line: 212, column: 28, scope: !917)
!920 = !DILocation(line: 212, column: 33, scope: !917)
!921 = !DILocation(line: 214, column: 26, scope: !922)
!922 = distinct !DILexicalBlock(scope: !917, file: !733, line: 214, column: 7)
!923 = !DILocation(line: 214, column: 31, scope: !922)
!924 = !DILocation(line: 214, column: 37, scope: !922)
!925 = !DILocation(line: 214, column: 7, scope: !922)
!926 = !DILocation(line: 214, column: 46, scope: !922)
!927 = !DILocation(line: 214, column: 7, scope: !917)
!928 = !DILocation(line: 215, column: 11, scope: !922)
!929 = !DILocation(line: 215, column: 4, scope: !922)
!930 = !DILocation(line: 216, column: 2, scope: !917)
!931 = !DILocation(line: 211, column: 46, scope: !932)
!932 = !DILexicalBlockFile(scope: !913, file: !733, discriminator: 2)
!933 = !DILocation(line: 211, column: 51, scope: !932)
!934 = !DILocation(line: 211, column: 44, scope: !932)
!935 = !DILocation(line: 211, column: 2, scope: !932)
!936 = distinct !{!936, !937}
!937 = !DILocation(line: 211, column: 2, scope: !822)
!938 = !DILocation(line: 218, column: 2, scope: !822)
!939 = !DILocation(line: 219, column: 1, scope: !822)
!940 = distinct !DISubprogram(name: "quitmsg_is_split", scope: !733, file: !733, line: 222, type: !941, isLocal: false, isDefinition: true, scopeLine: 223, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !740)
!941 = !DISubroutineType(types: !942)
!942 = !{!71, !465}
!943 = !DILocalVariable(name: "msg", arg: 1, scope: !940, file: !733, line: 222, type: !465)
!944 = !DILocation(line: 222, column: 34, scope: !940)
!945 = !DILocalVariable(name: "host2", scope: !940, file: !733, line: 224, type: !465)
!946 = !DILocation(line: 224, column: 14, scope: !940)
!947 = !DILocalVariable(name: "p", scope: !940, file: !733, line: 224, type: !465)
!948 = !DILocation(line: 224, column: 22, scope: !940)
!949 = !DILocalVariable(name: "prev", scope: !940, file: !733, line: 225, type: !71)
!950 = !DILocation(line: 225, column: 13, scope: !940)
!951 = !DILocalVariable(name: "len", scope: !940, file: !733, line: 225, type: !71)
!952 = !DILocation(line: 225, column: 19, scope: !940)
!953 = !DILocalVariable(name: "host1_dot", scope: !940, file: !733, line: 225, type: !71)
!954 = !DILocation(line: 225, column: 24, scope: !940)
!955 = !DILocalVariable(name: "host2_dot", scope: !940, file: !733, line: 225, type: !71)
!956 = !DILocation(line: 225, column: 35, scope: !940)
!957 = !DILocation(line: 227, column: 2, scope: !940)
!958 = distinct !{!958, !957}
!959 = !DILocation(line: 227, column: 10, scope: !960)
!960 = !DILexicalBlockFile(scope: !961, file: !733, discriminator: 1)
!961 = distinct !DILexicalBlock(scope: !962, file: !733, line: 227, column: 10)
!962 = distinct !DILexicalBlock(scope: !940, file: !733, line: 227, column: 4)
!963 = !DILocation(line: 227, column: 14, scope: !960)
!964 = !DILocation(line: 227, column: 5, scope: !965)
!965 = !DILexicalBlockFile(scope: !966, file: !733, discriminator: 2)
!966 = distinct !DILexicalBlock(scope: !961, file: !733, line: 227, column: 3)
!967 = !DILocation(line: 227, column: 14, scope: !968)
!968 = !DILexicalBlockFile(scope: !969, file: !733, discriminator: 3)
!969 = distinct !DILexicalBlock(scope: !961, file: !733, line: 227, column: 12)
!970 = !DILocation(line: 227, column: 98, scope: !968)
!971 = !DILocation(line: 227, column: 115, scope: !972)
!972 = !DILexicalBlockFile(scope: !962, file: !733, discriminator: 4)
!973 = !DILocation(line: 244, column: 8, scope: !940)
!974 = !DILocation(line: 245, column: 7, scope: !940)
!975 = !DILocation(line: 245, column: 19, scope: !940)
!976 = !DILocation(line: 245, column: 46, scope: !940)
!977 = !DILocation(line: 245, column: 34, scope: !940)
!978 = !DILocation(line: 246, column: 2, scope: !940)
!979 = !DILocation(line: 246, column: 10, scope: !980)
!980 = !DILexicalBlockFile(scope: !940, file: !733, discriminator: 1)
!981 = !DILocation(line: 246, column: 9, scope: !980)
!982 = !DILocation(line: 246, column: 14, scope: !980)
!983 = !DILocation(line: 246, column: 2, scope: !980)
!984 = !DILocation(line: 247, column: 8, scope: !985)
!985 = distinct !DILexicalBlock(scope: !986, file: !733, line: 247, column: 7)
!986 = distinct !DILexicalBlock(scope: !940, file: !733, line: 246, column: 23)
!987 = !DILocation(line: 247, column: 7, scope: !985)
!988 = !DILocation(line: 247, column: 12, scope: !985)
!989 = !DILocation(line: 247, column: 7, scope: !986)
!990 = !DILocation(line: 248, column: 8, scope: !991)
!991 = distinct !DILexicalBlock(scope: !992, file: !733, line: 248, column: 8)
!992 = distinct !DILexicalBlock(scope: !985, file: !733, line: 247, column: 20)
!993 = !DILocation(line: 248, column: 13, scope: !991)
!994 = !DILocation(line: 248, column: 20, scope: !991)
!995 = !DILocation(line: 248, column: 23, scope: !996)
!996 = !DILexicalBlockFile(scope: !991, file: !733, discriminator: 1)
!997 = !DILocation(line: 248, column: 28, scope: !996)
!998 = !DILocation(line: 248, column: 8, scope: !996)
!999 = !DILocation(line: 251, column: 5, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !991, file: !733, line: 248, column: 37)
!1001 = !DILocation(line: 253, column: 8, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !992, file: !733, line: 253, column: 8)
!1003 = !DILocation(line: 253, column: 14, scope: !1002)
!1004 = !DILocation(line: 253, column: 8, scope: !992)
!1005 = !DILocation(line: 254, column: 5, scope: !1002)
!1006 = !DILocation(line: 255, column: 9, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !992, file: !733, line: 255, column: 8)
!1008 = !DILocation(line: 255, column: 8, scope: !992)
!1009 = !DILocation(line: 256, column: 33, scope: !1007)
!1010 = !DILocation(line: 257, column: 33, scope: !992)
!1011 = !DILocation(line: 257, column: 36, scope: !992)
!1012 = !DILocation(line: 257, column: 31, scope: !992)
!1013 = !DILocation(line: 257, column: 44, scope: !992)
!1014 = !DILocation(line: 258, column: 3, scope: !992)
!1015 = !DILocation(line: 258, column: 15, scope: !1016)
!1016 = !DILexicalBlockFile(scope: !1017, file: !733, discriminator: 1)
!1017 = distinct !DILexicalBlock(scope: !985, file: !733, line: 258, column: 14)
!1018 = !DILocation(line: 258, column: 14, scope: !1016)
!1019 = !DILocation(line: 258, column: 19, scope: !1016)
!1020 = !DILocation(line: 259, column: 8, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1022, file: !733, line: 259, column: 8)
!1022 = distinct !DILexicalBlock(scope: !1017, file: !733, line: 258, column: 27)
!1023 = !DILocation(line: 259, column: 13, scope: !1021)
!1024 = !DILocation(line: 259, column: 21, scope: !1021)
!1025 = !DILocation(line: 259, column: 24, scope: !1026)
!1026 = !DILexicalBlockFile(scope: !1021, file: !733, discriminator: 1)
!1027 = !DILocation(line: 259, column: 29, scope: !1026)
!1028 = !DILocation(line: 259, column: 36, scope: !1026)
!1029 = !DILocation(line: 259, column: 39, scope: !1030)
!1030 = !DILexicalBlockFile(scope: !1021, file: !733, discriminator: 2)
!1031 = !DILocation(line: 259, column: 44, scope: !1030)
!1032 = !DILocation(line: 259, column: 8, scope: !1030)
!1033 = !DILocation(line: 262, column: 5, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1021, file: !733, line: 259, column: 52)
!1035 = !DILocation(line: 265, column: 8, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1022, file: !733, line: 265, column: 8)
!1037 = !DILocation(line: 265, column: 14, scope: !1036)
!1038 = !DILocation(line: 265, column: 8, scope: !1022)
!1039 = !DILocation(line: 266, column: 15, scope: !1036)
!1040 = !DILocation(line: 266, column: 5, scope: !1036)
!1041 = !DILocation(line: 268, column: 43, scope: !1036)
!1042 = !DILocation(line: 269, column: 3, scope: !1022)
!1043 = !DILocation(line: 269, column: 15, scope: !1044)
!1044 = !DILexicalBlockFile(scope: !1045, file: !733, discriminator: 1)
!1045 = distinct !DILexicalBlock(scope: !1017, file: !733, line: 269, column: 14)
!1046 = !DILocation(line: 269, column: 14, scope: !1044)
!1047 = !DILocation(line: 269, column: 19, scope: !1044)
!1048 = !DILocation(line: 269, column: 26, scope: !1044)
!1049 = !DILocation(line: 269, column: 30, scope: !1050)
!1050 = !DILexicalBlockFile(scope: !1045, file: !733, discriminator: 2)
!1051 = !DILocation(line: 269, column: 29, scope: !1050)
!1052 = !DILocation(line: 269, column: 34, scope: !1050)
!1053 = !DILocation(line: 269, column: 14, scope: !1050)
!1054 = !DILocation(line: 270, column: 4, scope: !1045)
!1055 = !DILocation(line: 272, column: 11, scope: !986)
!1056 = !DILocation(line: 272, column: 10, scope: !986)
!1057 = !DILocation(line: 272, column: 8, scope: !986)
!1058 = !DILocation(line: 273, column: 20, scope: !986)
!1059 = !DILocation(line: 273, column: 27, scope: !986)
!1060 = !DILocation(line: 246, column: 2, scope: !1061)
!1061 = !DILexicalBlockFile(scope: !940, file: !733, discriminator: 2)
!1062 = distinct !{!1062, !978}
!1063 = !DILocation(line: 276, column: 7, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !940, file: !733, line: 276, column: 6)
!1065 = !DILocation(line: 276, column: 17, scope: !1064)
!1066 = !DILocation(line: 276, column: 20, scope: !1067)
!1067 = !DILexicalBlockFile(scope: !1064, file: !733, discriminator: 1)
!1068 = !DILocation(line: 276, column: 25, scope: !1067)
!1069 = !DILocation(line: 276, column: 6, scope: !1067)
!1070 = !DILocation(line: 277, column: 17, scope: !1064)
!1071 = !DILocation(line: 280, column: 6, scope: !940)
!1072 = !DILocation(line: 280, column: 11, scope: !940)
!1073 = !DILocation(line: 280, column: 4, scope: !940)
!1074 = !DILocation(line: 281, column: 2, scope: !940)
!1075 = !DILocation(line: 281, column: 9, scope: !980)
!1076 = !DILocation(line: 281, column: 15, scope: !980)
!1077 = !DILocation(line: 281, column: 2, scope: !980)
!1078 = !DILocation(line: 282, column: 30, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1080, file: !733, line: 282, column: 7)
!1080 = distinct !DILexicalBlock(scope: !940, file: !733, line: 281, column: 23)
!1081 = !DILocation(line: 282, column: 7, scope: !1079)
!1082 = !DILocation(line: 282, column: 8, scope: !1079)
!1083 = !DILocation(line: 282, column: 10, scope: !1079)
!1084 = !DILocation(line: 282, column: 9, scope: !1079)
!1085 = !DILocation(line: 282, column: 11, scope: !1079)
!1086 = !DILocation(line: 282, column: 7, scope: !1080)
!1087 = !DILocation(line: 283, column: 25, scope: !1079)
!1088 = !DILocation(line: 284, column: 4, scope: !1080)
!1089 = !DILocation(line: 281, column: 2, scope: !1061)
!1090 = distinct !{!1090, !1074}
!1091 = !DILocation(line: 286, column: 6, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !940, file: !733, line: 286, column: 6)
!1093 = !DILocation(line: 286, column: 12, scope: !1092)
!1094 = !DILocation(line: 286, column: 11, scope: !1092)
!1095 = !DILocation(line: 286, column: 13, scope: !1092)
!1096 = !DILocation(line: 286, column: 16, scope: !1092)
!1097 = !DILocation(line: 286, column: 6, scope: !940)
!1098 = !DILocation(line: 286, column: 21, scope: !1099)
!1099 = !DILexicalBlockFile(scope: !1092, file: !733, discriminator: 1)
!1100 = !DILocation(line: 289, column: 6, scope: !940)
!1101 = !DILocation(line: 289, column: 19, scope: !940)
!1102 = !DILocation(line: 289, column: 12, scope: !940)
!1103 = !DILocation(line: 289, column: 11, scope: !940)
!1104 = !DILocation(line: 289, column: 4, scope: !940)
!1105 = !DILocation(line: 290, column: 2, scope: !940)
!1106 = !DILocation(line: 290, column: 9, scope: !980)
!1107 = !DILocation(line: 290, column: 15, scope: !980)
!1108 = !DILocation(line: 290, column: 2, scope: !980)
!1109 = !DILocation(line: 291, column: 30, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1111, file: !733, line: 291, column: 7)
!1111 = distinct !DILexicalBlock(scope: !940, file: !733, line: 290, column: 23)
!1112 = !DILocation(line: 291, column: 7, scope: !1110)
!1113 = !DILocation(line: 291, column: 8, scope: !1110)
!1114 = !DILocation(line: 291, column: 10, scope: !1110)
!1115 = !DILocation(line: 291, column: 9, scope: !1110)
!1116 = !DILocation(line: 291, column: 11, scope: !1110)
!1117 = !DILocation(line: 291, column: 7, scope: !1111)
!1118 = !DILocation(line: 292, column: 25, scope: !1110)
!1119 = !DILocation(line: 293, column: 4, scope: !1111)
!1120 = !DILocation(line: 290, column: 2, scope: !1061)
!1121 = distinct !{!1121, !1105}
!1122 = !DILocation(line: 295, column: 13, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !940, file: !733, line: 295, column: 6)
!1124 = !DILocation(line: 295, column: 6, scope: !1123)
!1125 = !DILocation(line: 295, column: 16, scope: !1123)
!1126 = !DILocation(line: 295, column: 6, scope: !940)
!1127 = !DILocation(line: 295, column: 21, scope: !1128)
!1128 = !DILexicalBlockFile(scope: !1123, file: !733, discriminator: 1)
!1129 = !DILocation(line: 297, column: 9, scope: !940)
!1130 = !DILocation(line: 298, column: 1, scope: !940)
!1131 = distinct !DISubprogram(name: "netsplit_init", scope: !733, file: !733, line: 419, type: !227, isLocal: false, isDefinition: true, scopeLine: 420, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !740)
!1132 = !DILocation(line: 421, column: 14, scope: !1131)
!1133 = !DILocation(line: 421, column: 12, scope: !1131)
!1134 = !DILocation(line: 422, column: 2, scope: !1131)
!1135 = !DILocation(line: 423, column: 2, scope: !1131)
!1136 = !DILocation(line: 424, column: 2, scope: !1131)
!1137 = !DILocation(line: 425, column: 2, scope: !1131)
!1138 = !DILocation(line: 426, column: 2, scope: !1131)
!1139 = !DILocation(line: 427, column: 1, scope: !1131)
!1140 = distinct !DISubprogram(name: "split_check_old", scope: !733, file: !733, line: 401, type: !1141, isLocal: true, isDefinition: true, scopeLine: 402, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !740)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{!71}
!1143 = !DILocalVariable(name: "tmp", scope: !1140, file: !733, line: 403, type: !239)
!1144 = !DILocation(line: 403, column: 10, scope: !1140)
!1145 = !DILocation(line: 405, column: 13, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1140, file: !733, line: 405, column: 2)
!1147 = !DILocation(line: 405, column: 11, scope: !1146)
!1148 = !DILocation(line: 405, column: 7, scope: !1146)
!1149 = !DILocation(line: 405, column: 22, scope: !1150)
!1150 = !DILexicalBlockFile(scope: !1151, file: !733, discriminator: 1)
!1151 = distinct !DILexicalBlock(scope: !1146, file: !733, line: 405, column: 2)
!1152 = !DILocation(line: 405, column: 26, scope: !1150)
!1153 = !DILocation(line: 405, column: 2, scope: !1150)
!1154 = !DILocalVariable(name: "server", scope: !1155, file: !733, line: 406, type: !63)
!1155 = distinct !DILexicalBlock(scope: !1151, file: !733, line: 405, column: 51)
!1156 = !DILocation(line: 406, column: 19, scope: !1155)
!1157 = !DILocation(line: 406, column: 28, scope: !1155)
!1158 = !DILocation(line: 406, column: 33, scope: !1155)
!1159 = !DILocation(line: 408, column: 88, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1155, file: !733, line: 408, column: 7)
!1161 = !DILocation(line: 408, column: 70, scope: !1160)
!1162 = !DILocation(line: 408, column: 55, scope: !1160)
!1163 = !DILocation(line: 408, column: 54, scope: !1160)
!1164 = !DILocation(line: 408, column: 29, scope: !1165)
!1165 = !DILexicalBlockFile(scope: !1160, file: !733, discriminator: 3)
!1166 = !DILocation(line: 408, column: 10, scope: !1160)
!1167 = !DILocation(line: 408, column: 7, scope: !1155)
!1168 = !DILocation(line: 408, column: 9, scope: !1169)
!1169 = !DILexicalBlockFile(scope: !1160, file: !733, discriminator: 1)
!1170 = !DILocation(line: 408, column: 7, scope: !1171)
!1171 = !DILexicalBlockFile(scope: !1155, file: !733, discriminator: 2)
!1172 = !DILocation(line: 409, column: 4, scope: !1160)
!1173 = !DILocation(line: 411, column: 31, scope: !1155)
!1174 = !DILocation(line: 411, column: 39, scope: !1155)
!1175 = !DILocation(line: 413, column: 10, scope: !1155)
!1176 = !DILocation(line: 411, column: 3, scope: !1155)
!1177 = !DILocation(line: 414, column: 2, scope: !1155)
!1178 = !DILocation(line: 405, column: 40, scope: !1179)
!1179 = !DILexicalBlockFile(scope: !1151, file: !733, discriminator: 2)
!1180 = !DILocation(line: 405, column: 45, scope: !1179)
!1181 = !DILocation(line: 405, column: 38, scope: !1179)
!1182 = !DILocation(line: 405, column: 2, scope: !1179)
!1183 = distinct !{!1183, !1184}
!1184 = !DILocation(line: 405, column: 2, scope: !1140)
!1185 = !DILocation(line: 416, column: 2, scope: !1140)
!1186 = distinct !DISubprogram(name: "event_join", scope: !733, file: !733, line: 307, type: !1187, isLocal: true, isDefinition: true, scopeLine: 309, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !740)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{null, !63, !465, !465, !465}
!1189 = !DILocalVariable(name: "server", arg: 1, scope: !1186, file: !733, line: 307, type: !63)
!1190 = !DILocation(line: 307, column: 40, scope: !1186)
!1191 = !DILocalVariable(name: "data", arg: 2, scope: !1186, file: !733, line: 307, type: !465)
!1192 = !DILocation(line: 307, column: 60, scope: !1186)
!1193 = !DILocalVariable(name: "nick", arg: 3, scope: !1186, file: !733, line: 308, type: !465)
!1194 = !DILocation(line: 308, column: 22, scope: !1186)
!1195 = !DILocalVariable(name: "address", arg: 4, scope: !1186, file: !733, line: 308, type: !465)
!1196 = !DILocation(line: 308, column: 40, scope: !1186)
!1197 = !DILocalVariable(name: "rec", scope: !1186, file: !733, line: 310, type: !702)
!1198 = !DILocation(line: 310, column: 16, scope: !1186)
!1199 = !DILocation(line: 312, column: 6, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1186, file: !733, line: 312, column: 6)
!1201 = !DILocation(line: 312, column: 11, scope: !1200)
!1202 = !DILocation(line: 312, column: 6, scope: !1186)
!1203 = !DILocation(line: 313, column: 3, scope: !1200)
!1204 = !DILocation(line: 316, column: 28, scope: !1186)
!1205 = !DILocation(line: 316, column: 36, scope: !1186)
!1206 = !DILocation(line: 316, column: 44, scope: !1186)
!1207 = !DILocation(line: 316, column: 8, scope: !1186)
!1208 = !DILocation(line: 316, column: 6, scope: !1186)
!1209 = !DILocation(line: 318, column: 6, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1186, file: !733, line: 318, column: 6)
!1211 = !DILocation(line: 318, column: 10, scope: !1210)
!1212 = !DILocation(line: 318, column: 17, scope: !1210)
!1213 = !DILocation(line: 318, column: 39, scope: !1214)
!1214 = !DILexicalBlockFile(scope: !1210, file: !733, discriminator: 1)
!1215 = !DILocation(line: 318, column: 44, scope: !1214)
!1216 = !DILocation(line: 318, column: 53, scope: !1214)
!1217 = !DILocation(line: 318, column: 20, scope: !1214)
!1218 = !DILocation(line: 318, column: 62, scope: !1214)
!1219 = !DILocation(line: 318, column: 6, scope: !1214)
!1220 = !DILocation(line: 325, column: 24, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1210, file: !733, line: 318, column: 68)
!1222 = !DILocation(line: 325, column: 32, scope: !1221)
!1223 = !DILocation(line: 326, column: 38, scope: !1221)
!1224 = !DILocation(line: 325, column: 3, scope: !1221)
!1225 = !DILocation(line: 327, column: 2, scope: !1221)
!1226 = !DILocation(line: 328, column: 1, scope: !1186)
!1227 = distinct !DISubprogram(name: "event_join_last", scope: !733, file: !733, line: 332, type: !1187, isLocal: true, isDefinition: true, scopeLine: 334, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !740)
!1228 = !DILocalVariable(name: "server", arg: 1, scope: !1227, file: !733, line: 332, type: !63)
!1229 = !DILocation(line: 332, column: 45, scope: !1227)
!1230 = !DILocalVariable(name: "data", arg: 2, scope: !1227, file: !733, line: 332, type: !465)
!1231 = !DILocation(line: 332, column: 65, scope: !1227)
!1232 = !DILocalVariable(name: "nick", arg: 3, scope: !1227, file: !733, line: 333, type: !465)
!1233 = !DILocation(line: 333, column: 20, scope: !1227)
!1234 = !DILocalVariable(name: "address", arg: 4, scope: !1227, file: !733, line: 333, type: !465)
!1235 = !DILocation(line: 333, column: 38, scope: !1227)
!1236 = !DILocalVariable(name: "rec", scope: !1227, file: !733, line: 335, type: !702)
!1237 = !DILocation(line: 335, column: 16, scope: !1227)
!1238 = !DILocation(line: 337, column: 6, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1227, file: !733, line: 337, column: 6)
!1240 = !DILocation(line: 337, column: 11, scope: !1239)
!1241 = !DILocation(line: 337, column: 6, scope: !1227)
!1242 = !DILocation(line: 338, column: 3, scope: !1239)
!1243 = !DILocation(line: 340, column: 28, scope: !1227)
!1244 = !DILocation(line: 340, column: 36, scope: !1227)
!1245 = !DILocation(line: 340, column: 44, scope: !1227)
!1246 = !DILocation(line: 340, column: 8, scope: !1227)
!1247 = !DILocation(line: 340, column: 6, scope: !1227)
!1248 = !DILocation(line: 341, column: 6, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1227, file: !733, line: 341, column: 6)
!1250 = !DILocation(line: 341, column: 10, scope: !1249)
!1251 = !DILocation(line: 341, column: 6, scope: !1227)
!1252 = !DILocation(line: 342, column: 23, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1249, file: !733, line: 341, column: 18)
!1254 = !DILocation(line: 342, column: 31, scope: !1253)
!1255 = !DILocation(line: 342, column: 39, scope: !1253)
!1256 = !DILocation(line: 342, column: 44, scope: !1253)
!1257 = !DILocation(line: 342, column: 3, scope: !1253)
!1258 = !DILocation(line: 343, column: 20, scope: !1253)
!1259 = !DILocation(line: 343, column: 28, scope: !1253)
!1260 = !DILocation(line: 343, column: 3, scope: !1253)
!1261 = !DILocation(line: 344, column: 2, scope: !1253)
!1262 = !DILocation(line: 345, column: 1, scope: !1227)
!1263 = distinct !DISubprogram(name: "event_quit", scope: !733, file: !733, line: 347, type: !1187, isLocal: true, isDefinition: true, scopeLine: 349, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !740)
!1264 = !DILocalVariable(name: "server", arg: 1, scope: !1263, file: !733, line: 347, type: !63)
!1265 = !DILocation(line: 347, column: 40, scope: !1263)
!1266 = !DILocalVariable(name: "data", arg: 2, scope: !1263, file: !733, line: 347, type: !465)
!1267 = !DILocation(line: 347, column: 60, scope: !1263)
!1268 = !DILocalVariable(name: "nick", arg: 3, scope: !1263, file: !733, line: 348, type: !465)
!1269 = !DILocation(line: 348, column: 22, scope: !1263)
!1270 = !DILocalVariable(name: "address", arg: 4, scope: !1263, file: !733, line: 348, type: !465)
!1271 = !DILocation(line: 348, column: 40, scope: !1263)
!1272 = !DILocation(line: 350, column: 2, scope: !1263)
!1273 = distinct !{!1273, !1272}
!1274 = !DILocation(line: 350, column: 10, scope: !1275)
!1275 = !DILexicalBlockFile(scope: !1276, file: !733, discriminator: 1)
!1276 = distinct !DILexicalBlock(scope: !1277, file: !733, line: 350, column: 10)
!1277 = distinct !DILexicalBlock(scope: !1263, file: !733, line: 350, column: 4)
!1278 = !DILocation(line: 350, column: 15, scope: !1275)
!1279 = !DILocation(line: 350, column: 5, scope: !1280)
!1280 = !DILexicalBlockFile(scope: !1281, file: !733, discriminator: 2)
!1281 = distinct !DILexicalBlock(scope: !1276, file: !733, line: 350, column: 3)
!1282 = !DILocation(line: 350, column: 14, scope: !1283)
!1283 = !DILexicalBlockFile(scope: !1284, file: !733, discriminator: 3)
!1284 = distinct !DILexicalBlock(scope: !1276, file: !733, line: 350, column: 12)
!1285 = !DILocation(line: 350, column: 99, scope: !1283)
!1286 = !DILocation(line: 350, column: 110, scope: !1287)
!1287 = !DILexicalBlockFile(scope: !1277, file: !733, discriminator: 4)
!1288 = !DILocation(line: 352, column: 7, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1263, file: !733, line: 352, column: 6)
!1290 = !DILocation(line: 352, column: 6, scope: !1289)
!1291 = !DILocation(line: 352, column: 12, scope: !1289)
!1292 = !DILocation(line: 352, column: 6, scope: !1263)
!1293 = !DILocation(line: 352, column: 24, scope: !1294)
!1294 = !DILexicalBlockFile(scope: !1289, file: !733, discriminator: 1)
!1295 = !DILocation(line: 352, column: 20, scope: !1294)
!1296 = !DILocation(line: 353, column: 25, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1263, file: !733, line: 353, column: 6)
!1298 = !DILocation(line: 353, column: 31, scope: !1297)
!1299 = !DILocation(line: 353, column: 39, scope: !1297)
!1300 = !DILocation(line: 353, column: 6, scope: !1297)
!1301 = !DILocation(line: 353, column: 45, scope: !1297)
!1302 = !DILocation(line: 353, column: 50, scope: !1297)
!1303 = !DILocation(line: 353, column: 70, scope: !1304)
!1304 = !DILexicalBlockFile(scope: !1297, file: !733, discriminator: 1)
!1305 = !DILocation(line: 353, column: 53, scope: !1304)
!1306 = !DILocation(line: 353, column: 6, scope: !1304)
!1307 = !DILocation(line: 355, column: 16, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1297, file: !733, line: 353, column: 77)
!1309 = !DILocation(line: 355, column: 24, scope: !1308)
!1310 = !DILocation(line: 355, column: 30, scope: !1308)
!1311 = !DILocation(line: 355, column: 39, scope: !1308)
!1312 = !DILocation(line: 355, column: 3, scope: !1308)
!1313 = !DILocation(line: 356, column: 2, scope: !1308)
!1314 = !DILocation(line: 357, column: 1, scope: !1263)
!1315 = distinct !DISubprogram(name: "event_nick", scope: !733, file: !733, line: 359, type: !1316, isLocal: true, isDefinition: true, scopeLine: 360, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !740)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{null, !63, !465}
!1318 = !DILocalVariable(name: "server", arg: 1, scope: !1315, file: !733, line: 359, type: !63)
!1319 = !DILocation(line: 359, column: 40, scope: !1315)
!1320 = !DILocalVariable(name: "data", arg: 2, scope: !1315, file: !733, line: 359, type: !465)
!1321 = !DILocation(line: 359, column: 60, scope: !1315)
!1322 = !DILocalVariable(name: "rec", scope: !1315, file: !733, line: 361, type: !702)
!1323 = !DILocation(line: 361, column: 16, scope: !1315)
!1324 = !DILocalVariable(name: "params", scope: !1315, file: !733, line: 362, type: !84)
!1325 = !DILocation(line: 362, column: 8, scope: !1315)
!1326 = !DILocalVariable(name: "nick", scope: !1315, file: !733, line: 362, type: !84)
!1327 = !DILocation(line: 362, column: 17, scope: !1315)
!1328 = !DILocation(line: 364, column: 28, scope: !1315)
!1329 = !DILocation(line: 364, column: 11, scope: !1315)
!1330 = !DILocation(line: 364, column: 9, scope: !1315)
!1331 = !DILocation(line: 368, column: 35, scope: !1315)
!1332 = !DILocation(line: 368, column: 43, scope: !1315)
!1333 = !DILocation(line: 368, column: 51, scope: !1315)
!1334 = !DILocation(line: 368, column: 15, scope: !1315)
!1335 = !DILocation(line: 368, column: 13, scope: !1315)
!1336 = !DILocation(line: 369, column: 6, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1315, file: !733, line: 369, column: 6)
!1338 = !DILocation(line: 369, column: 10, scope: !1337)
!1339 = !DILocation(line: 369, column: 6, scope: !1315)
!1340 = !DILocation(line: 370, column: 30, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1337, file: !733, line: 369, column: 18)
!1342 = !DILocation(line: 370, column: 38, scope: !1341)
!1343 = !DILocation(line: 370, column: 46, scope: !1341)
!1344 = !DILocation(line: 370, column: 51, scope: !1341)
!1345 = !DILocation(line: 370, column: 10, scope: !1341)
!1346 = !DILocation(line: 371, column: 20, scope: !1341)
!1347 = !DILocation(line: 371, column: 28, scope: !1341)
!1348 = !DILocation(line: 371, column: 3, scope: !1341)
!1349 = !DILocation(line: 372, column: 2, scope: !1341)
!1350 = !DILocation(line: 374, column: 16, scope: !1315)
!1351 = !DILocation(line: 374, column: 9, scope: !1315)
!1352 = !DILocation(line: 375, column: 1, scope: !1315)
!1353 = distinct !DISubprogram(name: "sig_disconnected", scope: !733, file: !733, line: 377, type: !1354, isLocal: true, isDefinition: true, scopeLine: 378, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !740)
!1354 = !DISubroutineType(types: !1355)
!1355 = !{null, !63}
!1356 = !DILocalVariable(name: "server", arg: 1, scope: !1353, file: !733, line: 377, type: !63)
!1357 = !DILocation(line: 377, column: 46, scope: !1353)
!1358 = !DILocation(line: 379, column: 2, scope: !1353)
!1359 = distinct !{!1359, !1358}
!1360 = !DILocation(line: 379, column: 10, scope: !1361)
!1361 = !DILexicalBlockFile(scope: !1362, file: !733, discriminator: 1)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !733, line: 379, column: 10)
!1363 = distinct !DILexicalBlock(scope: !1353, file: !733, line: 379, column: 4)
!1364 = !DILocation(line: 379, column: 17, scope: !1361)
!1365 = !DILocation(line: 379, column: 5, scope: !1366)
!1366 = !DILexicalBlockFile(scope: !1367, file: !733, discriminator: 2)
!1367 = distinct !DILexicalBlock(scope: !1362, file: !733, line: 379, column: 3)
!1368 = !DILocation(line: 379, column: 14, scope: !1369)
!1369 = !DILexicalBlockFile(scope: !1370, file: !733, discriminator: 3)
!1370 = distinct !DILexicalBlock(scope: !1362, file: !733, line: 379, column: 12)
!1371 = !DILocation(line: 379, column: 101, scope: !1369)
!1372 = !DILocation(line: 379, column: 112, scope: !1373)
!1373 = !DILexicalBlockFile(scope: !1363, file: !733, discriminator: 4)
!1374 = !DILocation(line: 381, column: 87, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1353, file: !733, line: 381, column: 6)
!1376 = !DILocation(line: 381, column: 69, scope: !1375)
!1377 = !DILocation(line: 381, column: 54, scope: !1375)
!1378 = !DILocation(line: 381, column: 53, scope: !1375)
!1379 = !DILocation(line: 381, column: 28, scope: !1380)
!1380 = !DILexicalBlockFile(scope: !1375, file: !733, discriminator: 3)
!1381 = !DILocation(line: 381, column: 9, scope: !1375)
!1382 = !DILocation(line: 381, column: 6, scope: !1353)
!1383 = !DILocation(line: 381, column: 8, scope: !1384)
!1384 = !DILexicalBlockFile(scope: !1375, file: !733, discriminator: 1)
!1385 = !DILocation(line: 381, column: 6, scope: !1386)
!1386 = !DILexicalBlockFile(scope: !1353, file: !733, discriminator: 2)
!1387 = !DILocation(line: 382, column: 3, scope: !1375)
!1388 = !DILocation(line: 384, column: 23, scope: !1353)
!1389 = !DILocation(line: 384, column: 31, scope: !1353)
!1390 = !DILocation(line: 385, column: 41, scope: !1353)
!1391 = !DILocation(line: 384, column: 2, scope: !1353)
!1392 = !DILocation(line: 386, column: 23, scope: !1353)
!1393 = !DILocation(line: 386, column: 31, scope: !1353)
!1394 = !DILocation(line: 386, column: 2, scope: !1353)
!1395 = !DILocation(line: 387, column: 9, scope: !1353)
!1396 = !DILocation(line: 387, column: 17, scope: !1353)
!1397 = !DILocation(line: 387, column: 24, scope: !1353)
!1398 = !DILocation(line: 388, column: 1, scope: !1353)
!1399 = !DILocation(line: 388, column: 1, scope: !1400)
!1400 = !DILexicalBlockFile(scope: !1353, file: !733, discriminator: 1)
!1401 = distinct !DISubprogram(name: "netsplit_deinit", scope: !733, file: !733, line: 429, type: !227, isLocal: false, isDefinition: true, scopeLine: 430, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !740)
!1402 = !DILocation(line: 431, column: 18, scope: !1401)
!1403 = !DILocation(line: 431, column: 2, scope: !1401)
!1404 = !DILocation(line: 432, column: 2, scope: !1401)
!1405 = !DILocation(line: 433, column: 2, scope: !1401)
!1406 = !DILocation(line: 434, column: 2, scope: !1401)
!1407 = !DILocation(line: 435, column: 2, scope: !1401)
!1408 = !DILocation(line: 436, column: 2, scope: !1401)
!1409 = !DILocation(line: 437, column: 1, scope: !1401)
!1410 = distinct !DISubprogram(name: "split_server_check", scope: !733, file: !733, line: 390, type: !1411, isLocal: true, isDefinition: true, scopeLine: 392, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !740)
!1411 = !DISubroutineType(types: !1412)
!1412 = !{!71, !178, !702, !63}
!1413 = !DILocalVariable(name: "key", arg: 1, scope: !1410, file: !733, line: 390, type: !178)
!1414 = !DILocation(line: 390, column: 37, scope: !1410)
!1415 = !DILocalVariable(name: "rec", arg: 2, scope: !1410, file: !733, line: 390, type: !702)
!1416 = !DILocation(line: 390, column: 56, scope: !1410)
!1417 = !DILocalVariable(name: "server", arg: 3, scope: !1410, file: !733, line: 391, type: !63)
!1418 = !DILocation(line: 391, column: 26, scope: !1410)
!1419 = !DILocation(line: 394, column: 6, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1410, file: !733, line: 394, column: 6)
!1421 = !DILocation(line: 394, column: 11, scope: !1420)
!1422 = !DILocation(line: 394, column: 21, scope: !1420)
!1423 = !DILocation(line: 394, column: 19, scope: !1420)
!1424 = !DILocation(line: 394, column: 6, scope: !1410)
!1425 = !DILocation(line: 395, column: 3, scope: !1420)
!1426 = !DILocation(line: 397, column: 19, scope: !1410)
!1427 = !DILocation(line: 397, column: 27, scope: !1410)
!1428 = !DILocation(line: 397, column: 2, scope: !1410)
!1429 = !DILocation(line: 398, column: 2, scope: !1410)
!1430 = !DILocation(line: 399, column: 1, scope: !1410)
!1431 = distinct !DISubprogram(name: "netsplit_destroy", scope: !733, file: !733, line: 152, type: !1432, isLocal: true, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !740)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{null, !63, !702}
!1434 = !DILocalVariable(name: "server", arg: 1, scope: !1431, file: !733, line: 152, type: !63)
!1435 = !DILocation(line: 152, column: 46, scope: !1431)
!1436 = !DILocalVariable(name: "rec", arg: 2, scope: !1431, file: !733, line: 152, type: !702)
!1437 = !DILocation(line: 152, column: 68, scope: !1431)
!1438 = !DILocalVariable(name: "tmp", scope: !1431, file: !733, line: 154, type: !239)
!1439 = !DILocation(line: 154, column: 10, scope: !1431)
!1440 = !DILocation(line: 156, column: 2, scope: !1431)
!1441 = distinct !{!1441, !1440}
!1442 = !DILocation(line: 156, column: 90, scope: !1443)
!1443 = !DILexicalBlockFile(scope: !1444, file: !733, discriminator: 1)
!1444 = distinct !DILexicalBlock(scope: !1445, file: !733, line: 156, column: 10)
!1445 = distinct !DILexicalBlock(scope: !1431, file: !733, line: 156, column: 4)
!1446 = !DILocation(line: 156, column: 72, scope: !1443)
!1447 = !DILocation(line: 156, column: 57, scope: !1443)
!1448 = !DILocation(line: 156, column: 56, scope: !1443)
!1449 = !DILocation(line: 156, column: 31, scope: !1450)
!1450 = !DILexicalBlockFile(scope: !1443, file: !733, discriminator: 7)
!1451 = !DILocation(line: 156, column: 12, scope: !1443)
!1452 = !DILocation(line: 156, column: 10, scope: !1443)
!1453 = !DILocation(line: 156, column: 11, scope: !1454)
!1454 = !DILexicalBlockFile(scope: !1444, file: !733, discriminator: 2)
!1455 = !DILocation(line: 156, column: 10, scope: !1456)
!1456 = !DILexicalBlockFile(scope: !1445, file: !733, discriminator: 3)
!1457 = !DILocation(line: 156, column: 30, scope: !1458)
!1458 = !DILexicalBlockFile(scope: !1459, file: !733, discriminator: 4)
!1459 = distinct !DILexicalBlock(scope: !1444, file: !733, line: 156, column: 28)
!1460 = !DILocation(line: 156, column: 39, scope: !1461)
!1461 = !DILexicalBlockFile(scope: !1462, file: !733, discriminator: 5)
!1462 = distinct !DILexicalBlock(scope: !1444, file: !733, line: 156, column: 37)
!1463 = !DILocation(line: 156, column: 133, scope: !1461)
!1464 = !DILocation(line: 156, column: 144, scope: !1465)
!1465 = !DILexicalBlockFile(scope: !1445, file: !733, discriminator: 6)
!1466 = !DILocation(line: 157, column: 2, scope: !1431)
!1467 = distinct !{!1467, !1466}
!1468 = !DILocation(line: 157, column: 10, scope: !1469)
!1469 = !DILexicalBlockFile(scope: !1470, file: !733, discriminator: 1)
!1470 = distinct !DILexicalBlock(scope: !1471, file: !733, line: 157, column: 10)
!1471 = distinct !DILexicalBlock(scope: !1431, file: !733, line: 157, column: 4)
!1472 = !DILocation(line: 157, column: 14, scope: !1469)
!1473 = !DILocation(line: 157, column: 5, scope: !1474)
!1474 = !DILexicalBlockFile(scope: !1475, file: !733, discriminator: 2)
!1475 = distinct !DILexicalBlock(scope: !1470, file: !733, line: 157, column: 3)
!1476 = !DILocation(line: 157, column: 14, scope: !1477)
!1477 = !DILexicalBlockFile(scope: !1478, file: !733, discriminator: 3)
!1478 = distinct !DILexicalBlock(scope: !1470, file: !733, line: 157, column: 12)
!1479 = !DILocation(line: 157, column: 98, scope: !1477)
!1480 = !DILocation(line: 157, column: 109, scope: !1481)
!1481 = !DILexicalBlockFile(scope: !1471, file: !733, discriminator: 4)
!1482 = !DILocation(line: 159, column: 36, scope: !1431)
!1483 = !DILocation(line: 159, column: 2, scope: !1431)
!1484 = !DILocation(line: 160, column: 13, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1431, file: !733, line: 160, column: 2)
!1486 = !DILocation(line: 160, column: 18, scope: !1485)
!1487 = !DILocation(line: 160, column: 11, scope: !1485)
!1488 = !DILocation(line: 160, column: 7, scope: !1485)
!1489 = !DILocation(line: 160, column: 28, scope: !1490)
!1490 = !DILexicalBlockFile(scope: !1491, file: !733, discriminator: 1)
!1491 = distinct !DILexicalBlock(scope: !1485, file: !733, line: 160, column: 2)
!1492 = !DILocation(line: 160, column: 32, scope: !1490)
!1493 = !DILocation(line: 160, column: 2, scope: !1490)
!1494 = !DILocalVariable(name: "rec", scope: !1495, file: !733, line: 161, type: !722)
!1495 = distinct !DILexicalBlock(scope: !1491, file: !733, line: 160, column: 57)
!1496 = !DILocation(line: 161, column: 22, scope: !1495)
!1497 = !DILocation(line: 161, column: 28, scope: !1495)
!1498 = !DILocation(line: 161, column: 33, scope: !1495)
!1499 = !DILocation(line: 163, column: 10, scope: !1495)
!1500 = !DILocation(line: 163, column: 15, scope: !1495)
!1501 = !DILocation(line: 163, column: 3, scope: !1495)
!1502 = !DILocation(line: 164, column: 10, scope: !1495)
!1503 = !DILocation(line: 164, column: 3, scope: !1495)
!1504 = !DILocation(line: 165, column: 2, scope: !1495)
!1505 = !DILocation(line: 160, column: 46, scope: !1506)
!1506 = !DILexicalBlockFile(scope: !1491, file: !733, discriminator: 2)
!1507 = !DILocation(line: 160, column: 51, scope: !1506)
!1508 = !DILocation(line: 160, column: 44, scope: !1506)
!1509 = !DILocation(line: 160, column: 2, scope: !1506)
!1510 = distinct !{!1510, !1511}
!1511 = !DILocation(line: 160, column: 2, scope: !1431)
!1512 = !DILocation(line: 166, column: 15, scope: !1431)
!1513 = !DILocation(line: 166, column: 20, scope: !1431)
!1514 = !DILocation(line: 166, column: 2, scope: !1431)
!1515 = !DILocation(line: 168, column: 8, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1431, file: !733, line: 168, column: 6)
!1517 = !DILocation(line: 168, column: 13, scope: !1516)
!1518 = !DILocation(line: 168, column: 21, scope: !1516)
!1519 = !DILocation(line: 168, column: 6, scope: !1516)
!1520 = !DILocation(line: 168, column: 27, scope: !1516)
!1521 = !DILocation(line: 168, column: 6, scope: !1431)
!1522 = !DILocation(line: 169, column: 27, scope: !1516)
!1523 = !DILocation(line: 169, column: 35, scope: !1516)
!1524 = !DILocation(line: 169, column: 40, scope: !1516)
!1525 = !DILocation(line: 169, column: 3, scope: !1516)
!1526 = !DILocation(line: 171, column: 9, scope: !1431)
!1527 = !DILocation(line: 171, column: 14, scope: !1431)
!1528 = !DILocation(line: 171, column: 2, scope: !1431)
!1529 = !DILocation(line: 172, column: 9, scope: !1431)
!1530 = !DILocation(line: 172, column: 14, scope: !1431)
!1531 = !DILocation(line: 172, column: 2, scope: !1431)
!1532 = !DILocation(line: 173, column: 9, scope: !1431)
!1533 = !DILocation(line: 173, column: 2, scope: !1431)
!1534 = !DILocation(line: 174, column: 1, scope: !1431)
!1535 = !DILocation(line: 174, column: 1, scope: !1536)
!1536 = !DILexicalBlockFile(scope: !1431, file: !733, discriminator: 1)
!1537 = distinct !DISubprogram(name: "netsplit_server_destroy", scope: !733, file: !733, line: 79, type: !1538, isLocal: true, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !740)
!1538 = !DISubroutineType(types: !1539)
!1539 = !{null, !63, !708}
!1540 = !DILocalVariable(name: "server", arg: 1, scope: !1537, file: !733, line: 79, type: !63)
!1541 = !DILocation(line: 79, column: 53, scope: !1537)
!1542 = !DILocalVariable(name: "rec", arg: 2, scope: !1537, file: !733, line: 80, type: !708)
!1543 = !DILocation(line: 80, column: 30, scope: !1537)
!1544 = !DILocation(line: 82, column: 2, scope: !1537)
!1545 = distinct !{!1545, !1544}
!1546 = !DILocation(line: 82, column: 90, scope: !1547)
!1547 = !DILexicalBlockFile(scope: !1548, file: !733, discriminator: 1)
!1548 = distinct !DILexicalBlock(scope: !1549, file: !733, line: 82, column: 10)
!1549 = distinct !DILexicalBlock(scope: !1537, file: !733, line: 82, column: 4)
!1550 = !DILocation(line: 82, column: 72, scope: !1547)
!1551 = !DILocation(line: 82, column: 57, scope: !1547)
!1552 = !DILocation(line: 82, column: 56, scope: !1547)
!1553 = !DILocation(line: 82, column: 31, scope: !1554)
!1554 = !DILexicalBlockFile(scope: !1547, file: !733, discriminator: 7)
!1555 = !DILocation(line: 82, column: 12, scope: !1547)
!1556 = !DILocation(line: 82, column: 10, scope: !1547)
!1557 = !DILocation(line: 82, column: 11, scope: !1558)
!1558 = !DILexicalBlockFile(scope: !1548, file: !733, discriminator: 2)
!1559 = !DILocation(line: 82, column: 10, scope: !1560)
!1560 = !DILexicalBlockFile(scope: !1549, file: !733, discriminator: 3)
!1561 = !DILocation(line: 82, column: 30, scope: !1562)
!1562 = !DILexicalBlockFile(scope: !1563, file: !733, discriminator: 4)
!1563 = distinct !DILexicalBlock(scope: !1548, file: !733, line: 82, column: 28)
!1564 = !DILocation(line: 82, column: 39, scope: !1565)
!1565 = !DILexicalBlockFile(scope: !1566, file: !733, discriminator: 5)
!1566 = distinct !DILexicalBlock(scope: !1548, file: !733, line: 82, column: 37)
!1567 = !DILocation(line: 82, column: 133, scope: !1565)
!1568 = !DILocation(line: 82, column: 144, scope: !1569)
!1569 = !DILexicalBlockFile(scope: !1549, file: !733, discriminator: 6)
!1570 = !DILocation(line: 84, column: 41, scope: !1537)
!1571 = !DILocation(line: 84, column: 49, scope: !1537)
!1572 = !DILocation(line: 84, column: 64, scope: !1537)
!1573 = !DILocation(line: 84, column: 26, scope: !1537)
!1574 = !DILocation(line: 84, column: 2, scope: !1537)
!1575 = !DILocation(line: 84, column: 10, scope: !1537)
!1576 = !DILocation(line: 84, column: 24, scope: !1537)
!1577 = !DILocation(line: 86, column: 43, scope: !1537)
!1578 = !DILocation(line: 86, column: 51, scope: !1537)
!1579 = !DILocation(line: 86, column: 2, scope: !1537)
!1580 = !DILocation(line: 88, column: 16, scope: !1537)
!1581 = !DILocation(line: 88, column: 21, scope: !1537)
!1582 = !DILocation(line: 88, column: 9, scope: !1537)
!1583 = !DILocation(line: 89, column: 9, scope: !1537)
!1584 = !DILocation(line: 89, column: 14, scope: !1537)
!1585 = !DILocation(line: 89, column: 2, scope: !1537)
!1586 = !DILocation(line: 90, column: 9, scope: !1537)
!1587 = !DILocation(line: 90, column: 2, scope: !1537)
!1588 = !DILocation(line: 91, column: 1, scope: !1537)
!1589 = !DILocation(line: 91, column: 1, scope: !1590)
!1590 = !DILexicalBlockFile(scope: !1537, file: !733, discriminator: 1)
!1591 = distinct !DISubprogram(name: "split_set_timeout", scope: !733, file: !733, line: 300, type: !1592, isLocal: true, isDefinition: true, scopeLine: 301, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !740)
!1592 = !DISubroutineType(types: !1593)
!1593 = !{null, !178, !702, !702}
!1594 = !DILocalVariable(name: "key", arg: 1, scope: !1591, file: !733, line: 300, type: !178)
!1595 = !DILocation(line: 300, column: 37, scope: !1591)
!1596 = !DILocalVariable(name: "rec", arg: 2, scope: !1591, file: !733, line: 300, type: !702)
!1597 = !DILocation(line: 300, column: 56, scope: !1591)
!1598 = !DILocalVariable(name: "orig", arg: 3, scope: !1591, file: !733, line: 300, type: !702)
!1599 = !DILocation(line: 300, column: 75, scope: !1591)
!1600 = !DILocation(line: 303, column: 6, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1591, file: !733, line: 303, column: 6)
!1602 = !DILocation(line: 303, column: 11, scope: !1601)
!1603 = !DILocation(line: 303, column: 21, scope: !1601)
!1604 = !DILocation(line: 303, column: 27, scope: !1601)
!1605 = !DILocation(line: 303, column: 18, scope: !1601)
!1606 = !DILocation(line: 303, column: 6, scope: !1591)
!1607 = !DILocation(line: 304, column: 18, scope: !1601)
!1608 = !DILocation(line: 304, column: 27, scope: !1601)
!1609 = !DILocation(line: 304, column: 3, scope: !1601)
!1610 = !DILocation(line: 304, column: 8, scope: !1601)
!1611 = !DILocation(line: 304, column: 16, scope: !1601)
!1612 = !DILocation(line: 305, column: 1, scope: !1591)
!1613 = distinct !DISubprogram(name: "netsplit_add", scope: !733, file: !733, line: 93, type: !1614, isLocal: true, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !740)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{!702, !63, !465, !465, !465}
!1616 = !DILocalVariable(name: "server", arg: 1, scope: !1613, file: !733, line: 93, type: !63)
!1617 = !DILocation(line: 93, column: 51, scope: !1613)
!1618 = !DILocalVariable(name: "nick", arg: 2, scope: !1613, file: !733, line: 93, type: !465)
!1619 = !DILocation(line: 93, column: 71, scope: !1613)
!1620 = !DILocalVariable(name: "address", arg: 3, scope: !1613, file: !733, line: 94, type: !465)
!1621 = !DILocation(line: 94, column: 19, scope: !1613)
!1622 = !DILocalVariable(name: "servers", arg: 4, scope: !1613, file: !733, line: 94, type: !465)
!1623 = !DILocation(line: 94, column: 40, scope: !1613)
!1624 = !DILocalVariable(name: "rec", scope: !1613, file: !733, line: 96, type: !702)
!1625 = !DILocation(line: 96, column: 16, scope: !1613)
!1626 = !DILocalVariable(name: "splitchan", scope: !1613, file: !733, line: 97, type: !722)
!1627 = !DILocation(line: 97, column: 21, scope: !1613)
!1628 = !DILocalVariable(name: "nickrec", scope: !1613, file: !733, line: 98, type: !517)
!1629 = !DILocation(line: 98, column: 12, scope: !1613)
!1630 = !DILocalVariable(name: "tmp", scope: !1613, file: !733, line: 99, type: !239)
!1631 = !DILocation(line: 99, column: 10, scope: !1613)
!1632 = !DILocalVariable(name: "p", scope: !1613, file: !733, line: 100, type: !84)
!1633 = !DILocation(line: 100, column: 8, scope: !1613)
!1634 = !DILocalVariable(name: "dupservers", scope: !1613, file: !733, line: 100, type: !84)
!1635 = !DILocation(line: 100, column: 12, scope: !1613)
!1636 = !DILocation(line: 102, column: 2, scope: !1613)
!1637 = distinct !{!1637, !1636}
!1638 = !DILocation(line: 102, column: 90, scope: !1639)
!1639 = !DILexicalBlockFile(scope: !1640, file: !733, discriminator: 1)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !733, line: 102, column: 10)
!1641 = distinct !DILexicalBlock(scope: !1613, file: !733, line: 102, column: 4)
!1642 = !DILocation(line: 102, column: 72, scope: !1639)
!1643 = !DILocation(line: 102, column: 57, scope: !1639)
!1644 = !DILocation(line: 102, column: 56, scope: !1639)
!1645 = !DILocation(line: 102, column: 31, scope: !1646)
!1646 = !DILexicalBlockFile(scope: !1639, file: !733, discriminator: 7)
!1647 = !DILocation(line: 102, column: 12, scope: !1639)
!1648 = !DILocation(line: 102, column: 10, scope: !1639)
!1649 = !DILocation(line: 102, column: 11, scope: !1650)
!1650 = !DILexicalBlockFile(scope: !1640, file: !733, discriminator: 2)
!1651 = !DILocation(line: 102, column: 10, scope: !1652)
!1652 = !DILexicalBlockFile(scope: !1641, file: !733, discriminator: 3)
!1653 = !DILocation(line: 102, column: 30, scope: !1654)
!1654 = !DILexicalBlockFile(scope: !1655, file: !733, discriminator: 4)
!1655 = distinct !DILexicalBlock(scope: !1640, file: !733, line: 102, column: 28)
!1656 = !DILocation(line: 102, column: 39, scope: !1657)
!1657 = !DILexicalBlockFile(scope: !1658, file: !733, discriminator: 5)
!1658 = distinct !DILexicalBlock(scope: !1640, file: !733, line: 102, column: 37)
!1659 = !DILocation(line: 102, column: 133, scope: !1657)
!1660 = !DILocation(line: 102, column: 7, scope: !1661)
!1661 = !DILexicalBlockFile(scope: !1641, file: !733, discriminator: 6)
!1662 = !DILocation(line: 103, column: 2, scope: !1613)
!1663 = distinct !{!1663, !1662}
!1664 = !DILocation(line: 103, column: 10, scope: !1665)
!1665 = !DILexicalBlockFile(scope: !1666, file: !733, discriminator: 1)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !733, line: 103, column: 10)
!1667 = distinct !DILexicalBlock(scope: !1613, file: !733, line: 103, column: 4)
!1668 = !DILocation(line: 103, column: 15, scope: !1665)
!1669 = !DILocation(line: 103, column: 5, scope: !1670)
!1670 = !DILexicalBlockFile(scope: !1671, file: !733, discriminator: 2)
!1671 = distinct !DILexicalBlock(scope: !1666, file: !733, line: 103, column: 3)
!1672 = !DILocation(line: 103, column: 14, scope: !1673)
!1673 = !DILexicalBlockFile(scope: !1674, file: !733, discriminator: 3)
!1674 = distinct !DILexicalBlock(scope: !1666, file: !733, line: 103, column: 12)
!1675 = !DILocation(line: 103, column: 99, scope: !1673)
!1676 = !DILocation(line: 103, column: 7, scope: !1677)
!1677 = !DILexicalBlockFile(scope: !1667, file: !733, discriminator: 4)
!1678 = !DILocation(line: 104, column: 2, scope: !1613)
!1679 = distinct !{!1679, !1678}
!1680 = !DILocation(line: 104, column: 10, scope: !1681)
!1681 = !DILexicalBlockFile(scope: !1682, file: !733, discriminator: 1)
!1682 = distinct !DILexicalBlock(scope: !1683, file: !733, line: 104, column: 10)
!1683 = distinct !DILexicalBlock(scope: !1613, file: !733, line: 104, column: 4)
!1684 = !DILocation(line: 104, column: 18, scope: !1681)
!1685 = !DILocation(line: 104, column: 5, scope: !1686)
!1686 = !DILexicalBlockFile(scope: !1687, file: !733, discriminator: 2)
!1687 = distinct !DILexicalBlock(scope: !1682, file: !733, line: 104, column: 3)
!1688 = !DILocation(line: 104, column: 14, scope: !1689)
!1689 = !DILexicalBlockFile(scope: !1690, file: !733, discriminator: 3)
!1690 = distinct !DILexicalBlock(scope: !1682, file: !733, line: 104, column: 12)
!1691 = !DILocation(line: 104, column: 102, scope: !1689)
!1692 = !DILocation(line: 104, column: 7, scope: !1693)
!1693 = !DILexicalBlockFile(scope: !1683, file: !733, discriminator: 4)
!1694 = !DILocation(line: 107, column: 24, scope: !1613)
!1695 = !DILocation(line: 107, column: 15, scope: !1613)
!1696 = !DILocation(line: 107, column: 13, scope: !1613)
!1697 = !DILocation(line: 108, column: 13, scope: !1613)
!1698 = !DILocation(line: 108, column: 6, scope: !1613)
!1699 = !DILocation(line: 108, column: 4, scope: !1613)
!1700 = !DILocation(line: 109, column: 6, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1613, file: !733, line: 109, column: 6)
!1702 = !DILocation(line: 109, column: 8, scope: !1701)
!1703 = !DILocation(line: 109, column: 6, scope: !1613)
!1704 = !DILocation(line: 110, column: 10, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1701, file: !733, line: 109, column: 16)
!1706 = !DILocation(line: 110, column: 3, scope: !1705)
!1707 = !DILocation(line: 111, column: 3, scope: !1705)
!1708 = !DILocation(line: 112, column: 3, scope: !1705)
!1709 = !DILocation(line: 114, column: 4, scope: !1613)
!1710 = !DILocation(line: 114, column: 7, scope: !1613)
!1711 = !DILocation(line: 116, column: 26, scope: !1613)
!1712 = !DILocation(line: 116, column: 9, scope: !1613)
!1713 = !DILocation(line: 116, column: 6, scope: !1613)
!1714 = !DILocation(line: 117, column: 23, scope: !1613)
!1715 = !DILocation(line: 117, column: 14, scope: !1613)
!1716 = !DILocation(line: 117, column: 2, scope: !1613)
!1717 = !DILocation(line: 117, column: 7, scope: !1613)
!1718 = !DILocation(line: 117, column: 12, scope: !1613)
!1719 = !DILocation(line: 118, column: 26, scope: !1613)
!1720 = !DILocation(line: 118, column: 17, scope: !1613)
!1721 = !DILocation(line: 118, column: 2, scope: !1613)
!1722 = !DILocation(line: 118, column: 7, scope: !1613)
!1723 = !DILocation(line: 118, column: 15, scope: !1613)
!1724 = !DILocation(line: 119, column: 17, scope: !1613)
!1725 = !DILocation(line: 119, column: 26, scope: !1613)
!1726 = !DILocation(line: 119, column: 2, scope: !1613)
!1727 = !DILocation(line: 119, column: 7, scope: !1613)
!1728 = !DILocation(line: 119, column: 15, scope: !1613)
!1729 = !DILocation(line: 121, column: 39, scope: !1613)
!1730 = !DILocation(line: 121, column: 47, scope: !1613)
!1731 = !DILocation(line: 121, column: 59, scope: !1613)
!1732 = !DILocation(line: 121, column: 16, scope: !1613)
!1733 = !DILocation(line: 121, column: 2, scope: !1613)
!1734 = !DILocation(line: 121, column: 7, scope: !1613)
!1735 = !DILocation(line: 121, column: 14, scope: !1613)
!1736 = !DILocation(line: 122, column: 2, scope: !1613)
!1737 = !DILocation(line: 122, column: 7, scope: !1613)
!1738 = !DILocation(line: 122, column: 15, scope: !1613)
!1739 = !DILocation(line: 122, column: 20, scope: !1613)
!1740 = !DILocation(line: 123, column: 9, scope: !1613)
!1741 = !DILocation(line: 123, column: 2, scope: !1613)
!1742 = !DILocation(line: 126, column: 13, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1613, file: !733, line: 126, column: 2)
!1744 = !DILocation(line: 126, column: 21, scope: !1743)
!1745 = !DILocation(line: 126, column: 11, scope: !1743)
!1746 = !DILocation(line: 126, column: 7, scope: !1743)
!1747 = !DILocation(line: 126, column: 31, scope: !1748)
!1748 = !DILexicalBlockFile(scope: !1749, file: !733, discriminator: 1)
!1749 = distinct !DILexicalBlock(scope: !1743, file: !733, line: 126, column: 2)
!1750 = !DILocation(line: 126, column: 35, scope: !1748)
!1751 = !DILocation(line: 126, column: 2, scope: !1748)
!1752 = !DILocalVariable(name: "channel", scope: !1753, file: !733, line: 127, type: !484)
!1753 = distinct !DILexicalBlock(scope: !1749, file: !733, line: 126, column: 60)
!1754 = !DILocation(line: 127, column: 16, scope: !1753)
!1755 = !DILocation(line: 127, column: 26, scope: !1753)
!1756 = !DILocation(line: 127, column: 31, scope: !1753)
!1757 = !DILocation(line: 129, column: 27, scope: !1753)
!1758 = !DILocation(line: 129, column: 36, scope: !1753)
!1759 = !DILocation(line: 129, column: 13, scope: !1753)
!1760 = !DILocation(line: 129, column: 11, scope: !1753)
!1761 = !DILocation(line: 130, column: 7, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1753, file: !733, line: 130, column: 7)
!1763 = !DILocation(line: 130, column: 15, scope: !1762)
!1764 = !DILocation(line: 130, column: 7, scope: !1753)
!1765 = !DILocation(line: 131, column: 4, scope: !1762)
!1766 = !DILocation(line: 133, column: 38, scope: !1753)
!1767 = !DILocation(line: 133, column: 16, scope: !1753)
!1768 = !DILocation(line: 133, column: 13, scope: !1753)
!1769 = !DILocation(line: 134, column: 30, scope: !1753)
!1770 = !DILocation(line: 134, column: 39, scope: !1753)
!1771 = !DILocation(line: 134, column: 21, scope: !1753)
!1772 = !DILocation(line: 134, column: 3, scope: !1753)
!1773 = !DILocation(line: 134, column: 14, scope: !1753)
!1774 = !DILocation(line: 134, column: 19, scope: !1753)
!1775 = !DILocation(line: 135, column: 19, scope: !1753)
!1776 = !DILocation(line: 135, column: 28, scope: !1753)
!1777 = !DILocation(line: 135, column: 3, scope: !1753)
!1778 = !DILocation(line: 135, column: 14, scope: !1753)
!1779 = !DILocation(line: 135, column: 17, scope: !1753)
!1780 = !DILocation(line: 136, column: 23, scope: !1753)
!1781 = !DILocation(line: 136, column: 32, scope: !1753)
!1782 = !DILocation(line: 136, column: 3, scope: !1753)
!1783 = !DILocation(line: 136, column: 14, scope: !1753)
!1784 = !DILocation(line: 136, column: 21, scope: !1753)
!1785 = !DILocation(line: 137, column: 22, scope: !1753)
!1786 = !DILocation(line: 137, column: 31, scope: !1753)
!1787 = !DILocation(line: 137, column: 3, scope: !1753)
!1788 = !DILocation(line: 137, column: 14, scope: !1753)
!1789 = !DILocation(line: 137, column: 20, scope: !1753)
!1790 = !DILocation(line: 138, column: 10, scope: !1753)
!1791 = !DILocation(line: 138, column: 21, scope: !1753)
!1792 = !DILocation(line: 138, column: 3, scope: !1753)
!1793 = !DILocation(line: 138, column: 31, scope: !1753)
!1794 = !DILocation(line: 138, column: 40, scope: !1753)
!1795 = !DILocation(line: 140, column: 34, scope: !1753)
!1796 = !DILocation(line: 140, column: 39, scope: !1753)
!1797 = !DILocation(line: 140, column: 49, scope: !1753)
!1798 = !DILocation(line: 140, column: 19, scope: !1753)
!1799 = !DILocation(line: 140, column: 3, scope: !1753)
!1800 = !DILocation(line: 140, column: 8, scope: !1753)
!1801 = !DILocation(line: 140, column: 17, scope: !1753)
!1802 = !DILocation(line: 141, column: 2, scope: !1753)
!1803 = !DILocation(line: 126, column: 49, scope: !1804)
!1804 = !DILexicalBlockFile(scope: !1749, file: !733, discriminator: 2)
!1805 = !DILocation(line: 126, column: 54, scope: !1804)
!1806 = !DILocation(line: 126, column: 47, scope: !1804)
!1807 = !DILocation(line: 126, column: 2, scope: !1804)
!1808 = distinct !{!1808, !1809}
!1809 = !DILocation(line: 126, column: 2, scope: !1613)
!1810 = !DILocation(line: 143, column: 6, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1613, file: !733, line: 143, column: 6)
!1812 = !DILocation(line: 143, column: 11, scope: !1811)
!1813 = !DILocation(line: 143, column: 20, scope: !1811)
!1814 = !DILocation(line: 143, column: 6, scope: !1613)
!1815 = !DILocation(line: 144, column: 94, scope: !1811)
!1816 = !DILocation(line: 144, column: 3, scope: !1811)
!1817 = !DILocation(line: 146, column: 22, scope: !1613)
!1818 = !DILocation(line: 146, column: 30, scope: !1613)
!1819 = !DILocation(line: 146, column: 38, scope: !1613)
!1820 = !DILocation(line: 146, column: 43, scope: !1613)
!1821 = !DILocation(line: 146, column: 49, scope: !1613)
!1822 = !DILocation(line: 146, column: 2, scope: !1613)
!1823 = !DILocation(line: 148, column: 33, scope: !1613)
!1824 = !DILocation(line: 148, column: 2, scope: !1613)
!1825 = !DILocation(line: 149, column: 9, scope: !1613)
!1826 = !DILocation(line: 149, column: 2, scope: !1613)
!1827 = !DILocation(line: 150, column: 1, scope: !1613)
!1828 = distinct !DISubprogram(name: "netsplit_server_create", scope: !733, file: !733, line: 54, type: !1829, isLocal: true, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !740)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{!708, !63, !465, !465}
!1831 = !DILocalVariable(name: "server", arg: 1, scope: !1828, file: !733, line: 54, type: !63)
!1832 = !DILocation(line: 54, column: 68, scope: !1828)
!1833 = !DILocalVariable(name: "servername", arg: 2, scope: !1828, file: !733, line: 55, type: !465)
!1834 = !DILocation(line: 55, column: 22, scope: !1828)
!1835 = !DILocalVariable(name: "destserver", arg: 3, scope: !1828, file: !733, line: 56, type: !465)
!1836 = !DILocation(line: 56, column: 22, scope: !1828)
!1837 = !DILocalVariable(name: "rec", scope: !1828, file: !733, line: 58, type: !708)
!1838 = !DILocation(line: 58, column: 23, scope: !1828)
!1839 = !DILocation(line: 60, column: 2, scope: !1828)
!1840 = distinct !{!1840, !1839}
!1841 = !DILocation(line: 60, column: 90, scope: !1842)
!1842 = !DILexicalBlockFile(scope: !1843, file: !733, discriminator: 1)
!1843 = distinct !DILexicalBlock(scope: !1844, file: !733, line: 60, column: 10)
!1844 = distinct !DILexicalBlock(scope: !1828, file: !733, line: 60, column: 4)
!1845 = !DILocation(line: 60, column: 72, scope: !1842)
!1846 = !DILocation(line: 60, column: 57, scope: !1842)
!1847 = !DILocation(line: 60, column: 56, scope: !1842)
!1848 = !DILocation(line: 60, column: 31, scope: !1849)
!1849 = !DILexicalBlockFile(scope: !1842, file: !733, discriminator: 7)
!1850 = !DILocation(line: 60, column: 12, scope: !1842)
!1851 = !DILocation(line: 60, column: 10, scope: !1842)
!1852 = !DILocation(line: 60, column: 11, scope: !1853)
!1853 = !DILexicalBlockFile(scope: !1843, file: !733, discriminator: 2)
!1854 = !DILocation(line: 60, column: 10, scope: !1855)
!1855 = !DILexicalBlockFile(scope: !1844, file: !733, discriminator: 3)
!1856 = !DILocation(line: 60, column: 30, scope: !1857)
!1857 = !DILexicalBlockFile(scope: !1858, file: !733, discriminator: 4)
!1858 = distinct !DILexicalBlock(scope: !1843, file: !733, line: 60, column: 28)
!1859 = !DILocation(line: 60, column: 39, scope: !1860)
!1860 = !DILexicalBlockFile(scope: !1861, file: !733, discriminator: 5)
!1861 = distinct !DILexicalBlock(scope: !1843, file: !733, line: 60, column: 37)
!1862 = !DILocation(line: 60, column: 133, scope: !1860)
!1863 = !DILocation(line: 60, column: 7, scope: !1864)
!1864 = !DILexicalBlockFile(scope: !1844, file: !733, discriminator: 6)
!1865 = !DILocation(line: 62, column: 29, scope: !1828)
!1866 = !DILocation(line: 62, column: 37, scope: !1828)
!1867 = !DILocation(line: 62, column: 49, scope: !1828)
!1868 = !DILocation(line: 62, column: 8, scope: !1828)
!1869 = !DILocation(line: 62, column: 6, scope: !1828)
!1870 = !DILocation(line: 63, column: 6, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1828, file: !733, line: 63, column: 6)
!1872 = !DILocation(line: 63, column: 10, scope: !1871)
!1873 = !DILocation(line: 63, column: 6, scope: !1828)
!1874 = !DILocation(line: 64, column: 15, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1871, file: !733, line: 63, column: 18)
!1876 = !DILocation(line: 64, column: 3, scope: !1875)
!1877 = !DILocation(line: 64, column: 8, scope: !1875)
!1878 = !DILocation(line: 64, column: 13, scope: !1875)
!1879 = !DILocation(line: 65, column: 10, scope: !1875)
!1880 = !DILocation(line: 65, column: 3, scope: !1875)
!1881 = !DILocation(line: 68, column: 33, scope: !1828)
!1882 = !DILocation(line: 68, column: 9, scope: !1828)
!1883 = !DILocation(line: 68, column: 6, scope: !1828)
!1884 = !DILocation(line: 69, column: 14, scope: !1828)
!1885 = !DILocation(line: 69, column: 2, scope: !1828)
!1886 = !DILocation(line: 69, column: 7, scope: !1828)
!1887 = !DILocation(line: 69, column: 12, scope: !1828)
!1888 = !DILocation(line: 70, column: 25, scope: !1828)
!1889 = !DILocation(line: 70, column: 16, scope: !1828)
!1890 = !DILocation(line: 70, column: 2, scope: !1828)
!1891 = !DILocation(line: 70, column: 7, scope: !1828)
!1892 = !DILocation(line: 70, column: 14, scope: !1828)
!1893 = !DILocation(line: 71, column: 29, scope: !1828)
!1894 = !DILocation(line: 71, column: 20, scope: !1828)
!1895 = !DILocation(line: 71, column: 2, scope: !1828)
!1896 = !DILocation(line: 71, column: 7, scope: !1828)
!1897 = !DILocation(line: 71, column: 18, scope: !1828)
!1898 = !DILocation(line: 73, column: 41, scope: !1828)
!1899 = !DILocation(line: 73, column: 49, scope: !1828)
!1900 = !DILocation(line: 73, column: 64, scope: !1828)
!1901 = !DILocation(line: 73, column: 26, scope: !1828)
!1902 = !DILocation(line: 73, column: 2, scope: !1828)
!1903 = !DILocation(line: 73, column: 10, scope: !1828)
!1904 = !DILocation(line: 73, column: 24, scope: !1828)
!1905 = !DILocation(line: 74, column: 40, scope: !1828)
!1906 = !DILocation(line: 74, column: 48, scope: !1828)
!1907 = !DILocation(line: 74, column: 2, scope: !1828)
!1908 = !DILocation(line: 76, column: 9, scope: !1828)
!1909 = !DILocation(line: 76, column: 2, scope: !1828)
!1910 = !DILocation(line: 77, column: 1, scope: !1828)
!1911 = distinct !DISubprogram(name: "netsplit_server_find", scope: !733, file: !733, line: 35, type: !1829, isLocal: true, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !740)
!1912 = !DILocalVariable(name: "server", arg: 1, scope: !1911, file: !733, line: 35, type: !63)
!1913 = !DILocation(line: 35, column: 66, scope: !1911)
!1914 = !DILocalVariable(name: "servername", arg: 2, scope: !1911, file: !733, line: 36, type: !465)
!1915 = !DILocation(line: 36, column: 20, scope: !1911)
!1916 = !DILocalVariable(name: "destserver", arg: 3, scope: !1911, file: !733, line: 37, type: !465)
!1917 = !DILocation(line: 37, column: 20, scope: !1911)
!1918 = !DILocalVariable(name: "tmp", scope: !1911, file: !733, line: 39, type: !239)
!1919 = !DILocation(line: 39, column: 10, scope: !1911)
!1920 = !DILocation(line: 41, column: 2, scope: !1911)
!1921 = distinct !{!1921, !1920}
!1922 = !DILocation(line: 41, column: 90, scope: !1923)
!1923 = !DILexicalBlockFile(scope: !1924, file: !733, discriminator: 1)
!1924 = distinct !DILexicalBlock(scope: !1925, file: !733, line: 41, column: 10)
!1925 = distinct !DILexicalBlock(scope: !1911, file: !733, line: 41, column: 4)
!1926 = !DILocation(line: 41, column: 72, scope: !1923)
!1927 = !DILocation(line: 41, column: 57, scope: !1923)
!1928 = !DILocation(line: 41, column: 56, scope: !1923)
!1929 = !DILocation(line: 41, column: 31, scope: !1930)
!1930 = !DILexicalBlockFile(scope: !1923, file: !733, discriminator: 7)
!1931 = !DILocation(line: 41, column: 12, scope: !1923)
!1932 = !DILocation(line: 41, column: 10, scope: !1923)
!1933 = !DILocation(line: 41, column: 11, scope: !1934)
!1934 = !DILexicalBlockFile(scope: !1924, file: !733, discriminator: 2)
!1935 = !DILocation(line: 41, column: 10, scope: !1936)
!1936 = !DILexicalBlockFile(scope: !1925, file: !733, discriminator: 3)
!1937 = !DILocation(line: 41, column: 30, scope: !1938)
!1938 = !DILexicalBlockFile(scope: !1939, file: !733, discriminator: 4)
!1939 = distinct !DILexicalBlock(scope: !1924, file: !733, line: 41, column: 28)
!1940 = !DILocation(line: 41, column: 39, scope: !1941)
!1941 = !DILexicalBlockFile(scope: !1942, file: !733, discriminator: 5)
!1942 = distinct !DILexicalBlock(scope: !1924, file: !733, line: 41, column: 37)
!1943 = !DILocation(line: 41, column: 133, scope: !1941)
!1944 = !DILocation(line: 41, column: 7, scope: !1945)
!1945 = !DILexicalBlockFile(scope: !1925, file: !733, discriminator: 6)
!1946 = !DILocation(line: 43, column: 13, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1911, file: !733, line: 43, column: 2)
!1948 = !DILocation(line: 43, column: 21, scope: !1947)
!1949 = !DILocation(line: 43, column: 11, scope: !1947)
!1950 = !DILocation(line: 43, column: 7, scope: !1947)
!1951 = !DILocation(line: 43, column: 36, scope: !1952)
!1952 = !DILexicalBlockFile(scope: !1953, file: !733, discriminator: 1)
!1953 = distinct !DILexicalBlock(scope: !1947, file: !733, line: 43, column: 2)
!1954 = !DILocation(line: 43, column: 40, scope: !1952)
!1955 = !DILocation(line: 43, column: 2, scope: !1952)
!1956 = !DILocalVariable(name: "rec", scope: !1957, file: !733, line: 44, type: !708)
!1957 = distinct !DILexicalBlock(scope: !1953, file: !733, line: 43, column: 65)
!1958 = !DILocation(line: 44, column: 24, scope: !1957)
!1959 = !DILocation(line: 44, column: 30, scope: !1957)
!1960 = !DILocation(line: 44, column: 35, scope: !1957)
!1961 = !DILocation(line: 46, column: 26, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1957, file: !733, line: 46, column: 7)
!1963 = !DILocation(line: 46, column: 31, scope: !1962)
!1964 = !DILocation(line: 46, column: 39, scope: !1962)
!1965 = !DILocation(line: 46, column: 7, scope: !1962)
!1966 = !DILocation(line: 46, column: 51, scope: !1962)
!1967 = !DILocation(line: 46, column: 56, scope: !1962)
!1968 = !DILocation(line: 47, column: 26, scope: !1962)
!1969 = !DILocation(line: 47, column: 31, scope: !1962)
!1970 = !DILocation(line: 47, column: 43, scope: !1962)
!1971 = !DILocation(line: 47, column: 7, scope: !1962)
!1972 = !DILocation(line: 47, column: 55, scope: !1962)
!1973 = !DILocation(line: 46, column: 7, scope: !1974)
!1974 = !DILexicalBlockFile(scope: !1957, file: !733, discriminator: 1)
!1975 = !DILocation(line: 48, column: 11, scope: !1962)
!1976 = !DILocation(line: 48, column: 4, scope: !1962)
!1977 = !DILocation(line: 49, column: 2, scope: !1957)
!1978 = !DILocation(line: 43, column: 54, scope: !1979)
!1979 = !DILexicalBlockFile(scope: !1953, file: !733, discriminator: 2)
!1980 = !DILocation(line: 43, column: 59, scope: !1979)
!1981 = !DILocation(line: 43, column: 52, scope: !1979)
!1982 = !DILocation(line: 43, column: 2, scope: !1979)
!1983 = distinct !{!1983, !1984}
!1984 = !DILocation(line: 43, column: 2, scope: !1911)
!1985 = !DILocation(line: 51, column: 2, scope: !1911)
!1986 = !DILocation(line: 52, column: 1, scope: !1911)
!1987 = distinct !DISubprogram(name: "netsplit_destroy_hash", scope: !733, file: !733, line: 176, type: !1988, isLocal: true, isDefinition: true, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !740)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{null, !178, !702, !63}
!1990 = !DILocalVariable(name: "key", arg: 1, scope: !1987, file: !733, line: 176, type: !178)
!1991 = !DILocation(line: 176, column: 41, scope: !1987)
!1992 = !DILocalVariable(name: "rec", arg: 2, scope: !1987, file: !733, line: 176, type: !702)
!1993 = !DILocation(line: 176, column: 60, scope: !1987)
!1994 = !DILocalVariable(name: "server", arg: 3, scope: !1987, file: !733, line: 177, type: !63)
!1995 = !DILocation(line: 177, column: 23, scope: !1987)
!1996 = !DILocation(line: 179, column: 19, scope: !1987)
!1997 = !DILocation(line: 179, column: 27, scope: !1987)
!1998 = !DILocation(line: 179, column: 2, scope: !1987)
!1999 = !DILocation(line: 180, column: 1, scope: !1987)
