; ModuleID = './line127-irc-expandos.o.i'
source_filename = "./line127-irc-expandos.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct._GHashTable = type opaque
%struct._GTimeVal = type { i64, i64 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)* }
%struct._WI_ITEM_REC = type opaque
%struct._NICK_REC = type { i32, i32, i64, i8*, i8*, i8*, i32, i8, [8 x i8], i8*, %struct._NICK_REC* }
%struct._QUERY_REC = type opaque
%struct._IRC_SERVER_REC = type { i32, i32, i32, %struct._IRC_SERVER_CONNECT_REC*, i64, i64, i8*, i8*, i8, %struct._NET_SENDBUF_REC*, i32, [2 x %struct._GIOChannel*], i32, i32, %struct._RAWLOG_REC*, %struct._GHashTable*, i8*, i8*, i8*, i8, %struct._GTimeVal, i64, i32, %struct._GSList*, %struct._GSList*, void (%struct._SERVER_REC*, i8*, i32)*, i32 (%struct._SERVER_REC*, i8)*, i32 (%struct._SERVER_REC*, i8*)*, i8* (%struct._SERVER_REC*)*, void (%struct._SERVER_REC*, i8*, i8*, i32)*, i8** (%struct._SERVER_REC*, i8*, i8*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)*, %struct._QUERY_REC* (%struct._SERVER_REC*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)*, %struct._GSList*, %struct._GSList*, %struct._REDIRECT_REC*, %struct._GSList*, i8*, i8*, i8*, i8*, i8*, i32, i16, i32, i32, i32, i32, %struct._GHashTable*, %struct._GSList*, %struct._GSList*, %struct._GString*, i32, i32, %struct._GSList*, %struct._GTimeVal, %struct._GTimeVal, i32, i32, i32, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GHashTable*, %struct._GSList*, %struct._GSList*, i8*, %struct._GHashTable*, [256 x %struct.modes_type], [256 x i8], i32 (i8*, i8*)* }
%struct._IRC_SERVER_CONNECT_REC = type { i32, i32, i32, i8*, i32, i8*, i8*, i8*, i16, i8*, i8*, i32, i8*, %struct._IPADDR*, %struct._IPADDR*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._GIOChannel*, i8, i8*, i8*, i8*, i8*, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct._REDIRECT_REC = type opaque
%struct.modes_type = type { void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, i8 }
%struct._IRC_CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._IRC_SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)*, %struct._GSList*, i64, i32, i32 }

@last_join = internal global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"event join\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"server event\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"window changed\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"window server changed\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"usermode\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"user mode changed\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"cumode\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"window item changed\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"nick mode changed\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"channel joined\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"cumode_space\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"event invite\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"irc/core\00", align 1
@current_server_event = external global i8*, align 8
@.str.19 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"IRC\00", align 1
@.str.21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"user_name\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"WINDOW ITEM TYPE\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"CHANNEL\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"NICK\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c" \00", align 1
@__func__.event_join = private unnamed_addr constant [11 x i8] c"event_join\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"nick != NULL\00", align 1

; Function Attrs: nounwind uwtable
define void @irc_expandos_init() #0 !dbg !680 {
  store i8* null, i8** @last_join, align 8, !dbg !682
  call void (i8*, i8* (%struct._SERVER_REC*, i8*, i32*)*, ...) @expando_create(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_lastjoin, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i32 2, i8* null), !dbg !683
  call void (i8*, i8* (%struct._SERVER_REC*, i8*, i32*)*, ...) @expando_create(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_server_numeric, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 2, i8* null), !dbg !684
  call void (i8*, i8* (%struct._SERVER_REC*, i8*, i32*)*, ...) @expando_create(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_servername, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i32 3, i8* null), !dbg !685
  call void (i8*, i8* (%struct._SERVER_REC*, i8*, i32*)*, ...) @expando_create(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_userhost, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i32 3, i8* null), !dbg !686
  call void (i8*, i8* (%struct._SERVER_REC*, i8*, i32*)*, ...) @expando_create(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_hostname, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i32 3, i8* null), !dbg !687
  call void (i8*, i8* (%struct._SERVER_REC*, i8*, i32*)*, ...) @expando_create(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_usermode, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), i32 2, i8* null), !dbg !688
  call void (i8*, i8* (%struct._SERVER_REC*, i8*, i32*)*, ...) @expando_create(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_cumode, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i32 4, i8* null), !dbg !689
  call void (i8*, i8* (%struct._SERVER_REC*, i8*, i32*)*, ...) @expando_create(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_cumode_space, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i32 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i32 0, i32 0), i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i32 4, i8* null), !dbg !690
  call void @expando_add_signal(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), i32 2), !dbg !691
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_join to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !692
  ret void, !dbg !693
}

declare void @expando_create(i8*, i8* (%struct._SERVER_REC*, i8*, i32*)*, ...) #1

; Function Attrs: nounwind uwtable
define internal i8* @expando_lastjoin(%struct._SERVER_REC*, i8*, i32*) #0 !dbg !694 {
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !698, metadata !699), !dbg !700
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !701, metadata !699), !dbg !702
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !703, metadata !699), !dbg !704
  %7 = load i8*, i8** @last_join, align 8, !dbg !705
  ret i8* %7, !dbg !706
}

; Function Attrs: nounwind uwtable
define internal i8* @expando_server_numeric(%struct._SERVER_REC*, i8*, i32*) #0 !dbg !707 {
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !708, metadata !699), !dbg !709
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !710, metadata !699), !dbg !711
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !712, metadata !699), !dbg !713
  %7 = load i8*, i8** @current_server_event, align 8, !dbg !714
  %8 = icmp eq i8* %7, null, !dbg !715
  br i1 %8, label %13, label %9, !dbg !716

; <label>:9:                                      ; preds = %3
  %10 = load i8*, i8** @current_server_event, align 8, !dbg !717
  %11 = call i32 @is_numeric(i8* %10, i8 signext 0), !dbg !718
  %12 = icmp ne i32 %11, 0, !dbg !718
  br i1 %12, label %14, label %13, !dbg !719

; <label>:13:                                     ; preds = %9, %3
  br label %16, !dbg !721

; <label>:14:                                     ; preds = %9
  %15 = load i8*, i8** @current_server_event, align 8, !dbg !723
  br label %16, !dbg !724

; <label>:16:                                     ; preds = %14, %13
  %17 = phi i8* [ null, %13 ], [ %15, %14 ], !dbg !726
  ret i8* %17, !dbg !728
}

; Function Attrs: nounwind uwtable
define internal i8* @expando_servername(%struct._SERVER_REC*, i8*, i32*) #0 !dbg !729 {
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct._IRC_SERVER_REC*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !730, metadata !699), !dbg !731
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !732, metadata !699), !dbg !733
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !734, metadata !699), !dbg !735
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %7, metadata !736, metadata !699), !dbg !737
  %8 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !738
  %9 = bitcast %struct._SERVER_REC* %8 to i8*, !dbg !738
  %10 = call i8* @module_check_cast(i8* %9, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0)), !dbg !739
  %11 = bitcast i8* %10 to %struct._SERVER_REC*, !dbg !740
  %12 = bitcast %struct._SERVER_REC* %11 to i8*, !dbg !741
  %13 = call i8* @chat_protocol_check_cast(i8* %12, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0)), !dbg !742
  %14 = bitcast i8* %13 to %struct._IRC_SERVER_REC*, !dbg !744
  store %struct._IRC_SERVER_REC* %14, %struct._IRC_SERVER_REC** %7, align 8, !dbg !737
  %15 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %7, align 8, !dbg !745
  %16 = icmp eq %struct._IRC_SERVER_REC* %15, null, !dbg !746
  br i1 %16, label %17, label %18, !dbg !745

; <label>:17:                                     ; preds = %3
  br label %22, !dbg !747

; <label>:18:                                     ; preds = %3
  %19 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %7, align 8, !dbg !748
  %20 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %19, i32 0, i32 40, !dbg !750
  %21 = load i8*, i8** %20, align 8, !dbg !750
  br label %22, !dbg !751

; <label>:22:                                     ; preds = %18, %17
  %23 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i32 0, i32 0), %17 ], [ %21, %18 ], !dbg !752
  ret i8* %23, !dbg !754
}

; Function Attrs: nounwind uwtable
define internal i8* @expando_userhost(%struct._SERVER_REC*, i8*, i32*) #0 !dbg !755 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct._IRC_SERVER_REC*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [65 x i8], align 16
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !756, metadata !699), !dbg !757
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !758, metadata !699), !dbg !759
  store i32* %2, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !760, metadata !699), !dbg !761
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %8, metadata !762, metadata !699), !dbg !763
  call void @llvm.dbg.declare(metadata i8** %9, metadata !764, metadata !699), !dbg !765
  call void @llvm.dbg.declare(metadata [65 x i8]* %10, metadata !766, metadata !699), !dbg !770
  %11 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !771
  %12 = bitcast %struct._SERVER_REC* %11 to i8*, !dbg !771
  %13 = call i8* @module_check_cast(i8* %12, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0)), !dbg !772
  %14 = bitcast i8* %13 to %struct._SERVER_REC*, !dbg !773
  %15 = bitcast %struct._SERVER_REC* %14 to i8*, !dbg !774
  %16 = call i8* @chat_protocol_check_cast(i8* %15, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0)), !dbg !775
  %17 = bitcast i8* %16 to %struct._IRC_SERVER_REC*, !dbg !777
  store %struct._IRC_SERVER_REC* %17, %struct._IRC_SERVER_REC** %8, align 8, !dbg !778
  %18 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %8, align 8, !dbg !779
  %19 = icmp ne %struct._IRC_SERVER_REC* %18, null, !dbg !781
  br i1 %19, label %20, label %29, !dbg !782

; <label>:20:                                     ; preds = %3
  %21 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %8, align 8, !dbg !783
  %22 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %21, i32 0, i32 43, !dbg !785
  %23 = load i8*, i8** %22, align 8, !dbg !785
  %24 = icmp ne i8* %23, null, !dbg !786
  br i1 %24, label %25, label %29, !dbg !787

; <label>:25:                                     ; preds = %20
  %26 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %8, align 8, !dbg !788
  %27 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %26, i32 0, i32 43, !dbg !789
  %28 = load i8*, i8** %27, align 8, !dbg !789
  store i8* %28, i8** %4, align 8, !dbg !790
  br label %57, !dbg !790

; <label>:29:                                     ; preds = %20, %3
  %30 = load i32*, i32** %7, align 8, !dbg !791
  store i32 1, i32* %30, align 4, !dbg !792
  %31 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %8, align 8, !dbg !793
  %32 = icmp eq %struct._IRC_SERVER_REC* %31, null, !dbg !795
  br i1 %32, label %33, label %35, !dbg !796

; <label>:33:                                     ; preds = %29
  %34 = call i8* @settings_get_str(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0)), !dbg !797
  store i8* %34, i8** %9, align 8, !dbg !798
  br label %41, !dbg !799

; <label>:35:                                     ; preds = %29
  %36 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %8, align 8, !dbg !800
  %37 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %36, i32 0, i32 3, !dbg !801
  %38 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %37, align 8, !dbg !801
  %39 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %38, i32 0, i32 17, !dbg !802
  %40 = load i8*, i8** %39, align 8, !dbg !802
  store i8* %40, i8** %9, align 8, !dbg !803
  br label %41

; <label>:41:                                     ; preds = %35, %33
  %42 = getelementptr inbounds [65 x i8], [65 x i8]* %10, i32 0, i32 0, !dbg !804
  %43 = call i32 @gethostname(i8* %42, i64 65) #4, !dbg !806
  %44 = icmp ne i32 %43, 0, !dbg !807
  br i1 %44, label %50, label %45, !dbg !808

; <label>:45:                                     ; preds = %41
  %46 = getelementptr inbounds [65 x i8], [65 x i8]* %10, i32 0, i32 0, !dbg !809
  %47 = load i8, i8* %46, align 16, !dbg !809
  %48 = sext i8 %47 to i32, !dbg !809
  %49 = icmp eq i32 %48, 0, !dbg !811
  br i1 %49, label %50, label %53, !dbg !812

; <label>:50:                                     ; preds = %45, %41
  %51 = getelementptr inbounds [65 x i8], [65 x i8]* %10, i32 0, i32 0, !dbg !813
  %52 = call i8* @strcpy(i8* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0)) #4, !dbg !814
  br label %53, !dbg !814

; <label>:53:                                     ; preds = %50, %45
  %54 = load i8*, i8** %9, align 8, !dbg !815
  %55 = getelementptr inbounds [65 x i8], [65 x i8]* %10, i32 0, i32 0, !dbg !816
  %56 = call noalias i8* (i8*, ...) @g_strconcat(i8* %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0), i8* %55, i8* null), !dbg !817
  store i8* %56, i8** %4, align 8, !dbg !818
  br label %57, !dbg !818

; <label>:57:                                     ; preds = %53, %25
  %58 = load i8*, i8** %4, align 8, !dbg !819
  ret i8* %58, !dbg !819
}

; Function Attrs: nounwind uwtable
define internal i8* @expando_hostname(%struct._SERVER_REC*, i8*, i32*) #0 !dbg !820 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct._IRC_SERVER_REC*, align 8
  %9 = alloca [65 x i8], align 16
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !821, metadata !699), !dbg !822
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !823, metadata !699), !dbg !824
  store i32* %2, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !825, metadata !699), !dbg !826
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %8, metadata !827, metadata !699), !dbg !828
  call void @llvm.dbg.declare(metadata [65 x i8]* %9, metadata !829, metadata !699), !dbg !830
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !831, metadata !699), !dbg !832
  call void @llvm.dbg.declare(metadata i8** %11, metadata !833, metadata !699), !dbg !834
  %12 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !835
  %13 = bitcast %struct._SERVER_REC* %12 to i8*, !dbg !835
  %14 = call i8* @module_check_cast(i8* %13, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0)), !dbg !836
  %15 = bitcast i8* %14 to %struct._SERVER_REC*, !dbg !837
  %16 = bitcast %struct._SERVER_REC* %15 to i8*, !dbg !838
  %17 = call i8* @chat_protocol_check_cast(i8* %16, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0)), !dbg !839
  %18 = bitcast i8* %17 to %struct._IRC_SERVER_REC*, !dbg !841
  store %struct._IRC_SERVER_REC* %18, %struct._IRC_SERVER_REC** %8, align 8, !dbg !842
  %19 = load i32*, i32** %7, align 8, !dbg !843
  store i32 1, i32* %19, align 4, !dbg !844
  %20 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %8, align 8, !dbg !845
  %21 = icmp ne %struct._IRC_SERVER_REC* %20, null, !dbg !847
  br i1 %21, label %22, label %38, !dbg !848

; <label>:22:                                     ; preds = %3
  %23 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %8, align 8, !dbg !849
  %24 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %23, i32 0, i32 43, !dbg !851
  %25 = load i8*, i8** %24, align 8, !dbg !851
  %26 = icmp ne i8* %25, null, !dbg !852
  br i1 %26, label %27, label %38, !dbg !853

; <label>:27:                                     ; preds = %22
  %28 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %8, align 8, !dbg !854
  %29 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %28, i32 0, i32 43, !dbg !856
  %30 = load i8*, i8** %29, align 8, !dbg !856
  %31 = call noalias i8** @g_strsplit(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0), i32 -1), !dbg !857
  store i8** %31, i8*** %10, align 8, !dbg !858
  %32 = load i8**, i8*** %10, align 8, !dbg !859
  %33 = getelementptr inbounds i8*, i8** %32, i64 1, !dbg !859
  %34 = load i8*, i8** %33, align 8, !dbg !859
  %35 = call noalias i8* @g_strdup(i8* %34), !dbg !860
  store i8* %35, i8** %11, align 8, !dbg !861
  %36 = load i8**, i8*** %10, align 8, !dbg !862
  call void @g_strfreev(i8** %36), !dbg !863
  %37 = load i8*, i8** %11, align 8, !dbg !864
  store i8* %37, i8** %4, align 8, !dbg !865
  br label %53, !dbg !865

; <label>:38:                                     ; preds = %22, %3
  %39 = getelementptr inbounds [65 x i8], [65 x i8]* %9, i32 0, i32 0, !dbg !866
  %40 = call i32 @gethostname(i8* %39, i64 65) #4, !dbg !868
  %41 = icmp ne i32 %40, 0, !dbg !869
  br i1 %41, label %47, label %42, !dbg !870

; <label>:42:                                     ; preds = %38
  %43 = getelementptr inbounds [65 x i8], [65 x i8]* %9, i32 0, i32 0, !dbg !871
  %44 = load i8, i8* %43, align 16, !dbg !871
  %45 = sext i8 %44 to i32, !dbg !871
  %46 = icmp eq i32 %45, 0, !dbg !873
  br i1 %46, label %47, label %50, !dbg !874

; <label>:47:                                     ; preds = %42, %38
  %48 = getelementptr inbounds [65 x i8], [65 x i8]* %9, i32 0, i32 0, !dbg !875
  %49 = call i8* @strcpy(i8* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0)) #4, !dbg !876
  br label %50, !dbg !876

; <label>:50:                                     ; preds = %47, %42
  %51 = getelementptr inbounds [65 x i8], [65 x i8]* %9, i32 0, i32 0, !dbg !877
  %52 = call noalias i8* @g_strdup(i8* %51), !dbg !878
  store i8* %52, i8** %4, align 8, !dbg !879
  br label %53, !dbg !879

; <label>:53:                                     ; preds = %50, %27
  %54 = load i8*, i8** %4, align 8, !dbg !880
  ret i8* %54, !dbg !880
}

; Function Attrs: nounwind uwtable
define internal i8* @expando_usermode(%struct._SERVER_REC*, i8*, i32*) #0 !dbg !881 {
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !882, metadata !699), !dbg !883
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !884, metadata !699), !dbg !885
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !886, metadata !699), !dbg !887
  %7 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !888
  %8 = bitcast %struct._SERVER_REC* %7 to i8*, !dbg !888
  %9 = call i8* @module_check_cast(i8* %8, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0)), !dbg !889
  %10 = bitcast i8* %9 to %struct._SERVER_REC*, !dbg !890
  %11 = bitcast %struct._SERVER_REC* %10 to i8*, !dbg !891
  %12 = call i8* @chat_protocol_check_cast(i8* %11, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0)), !dbg !892
  %13 = bitcast i8* %12 to %struct._IRC_SERVER_REC*, !dbg !894
  %14 = icmp ne %struct._IRC_SERVER_REC* %13, null, !dbg !894
  br i1 %14, label %15, label %16, !dbg !895

; <label>:15:                                     ; preds = %3
  br i1 false, label %27, label %17, !dbg !896

; <label>:16:                                     ; preds = %3
  br i1 false, label %17, label %27, !dbg !898

; <label>:17:                                     ; preds = %16, %15
  %18 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !900
  %19 = bitcast %struct._SERVER_REC* %18 to i8*, !dbg !900
  %20 = call i8* @module_check_cast(i8* %19, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0)), !dbg !902
  %21 = bitcast i8* %20 to %struct._SERVER_REC*, !dbg !903
  %22 = bitcast %struct._SERVER_REC* %21 to i8*, !dbg !904
  %23 = call i8* @chat_protocol_check_cast(i8* %22, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0)), !dbg !905
  %24 = bitcast i8* %23 to %struct._IRC_SERVER_REC*, !dbg !907
  %25 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %24, i32 0, i32 41, !dbg !908
  %26 = load i8*, i8** %25, align 8, !dbg !908
  br label %28, !dbg !909

; <label>:27:                                     ; preds = %16, %15
  br label %28, !dbg !910

; <label>:28:                                     ; preds = %27, %17
  %29 = phi i8* [ %26, %17 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i32 0, i32 0), %27 ], !dbg !912
  ret i8* %29, !dbg !914
}

; Function Attrs: nounwind uwtable
define internal i8* @expando_cumode(%struct._SERVER_REC*, i8*, i32*) #0 !dbg !915 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !916, metadata !699), !dbg !917
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !918, metadata !699), !dbg !919
  store i32* %2, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !920, metadata !699), !dbg !921
  %10 = load i8*, i8** %6, align 8, !dbg !922
  %11 = call i8* @module_check_cast_module(i8* %10, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0)), !dbg !924
  %12 = bitcast i8* %11 to %struct._CHANNEL_REC*, !dbg !925
  %13 = bitcast %struct._CHANNEL_REC* %12 to i8*, !dbg !926
  %14 = call i8* @chat_protocol_check_cast(i8* %13, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0)), !dbg !927
  %15 = bitcast i8* %14 to %struct._IRC_CHANNEL_REC*, !dbg !929
  %16 = icmp ne %struct._IRC_CHANNEL_REC* %15, null, !dbg !929
  br i1 %16, label %17, label %18, !dbg !930

; <label>:17:                                     ; preds = %3
  br i1 false, label %51, label %19, !dbg !931

; <label>:18:                                     ; preds = %3
  br i1 false, label %19, label %51, !dbg !933

; <label>:19:                                     ; preds = %18, %17
  %20 = load i8*, i8** %6, align 8, !dbg !935
  %21 = call i8* @module_check_cast_module(i8* %20, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0)), !dbg !937
  %22 = bitcast i8* %21 to %struct._CHANNEL_REC*, !dbg !938
  %23 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %22, i32 0, i32 16, !dbg !939
  %24 = load %struct._NICK_REC*, %struct._NICK_REC** %23, align 8, !dbg !939
  %25 = icmp ne %struct._NICK_REC* %24, null, !dbg !940
  br i1 %25, label %26, label %51, !dbg !941

; <label>:26:                                     ; preds = %19
  call void @llvm.dbg.declare(metadata i8* %8, metadata !942, metadata !699), !dbg !944
  %27 = load i8*, i8** %6, align 8, !dbg !945
  %28 = call i8* @module_check_cast_module(i8* %27, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0)), !dbg !946
  %29 = bitcast i8* %28 to %struct._CHANNEL_REC*, !dbg !947
  %30 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %29, i32 0, i32 16, !dbg !948
  %31 = load %struct._NICK_REC*, %struct._NICK_REC** %30, align 8, !dbg !948
  %32 = bitcast %struct._NICK_REC* %31 to i8*, !dbg !949
  %33 = call i8* @module_check_cast(i8* %32, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0)), !dbg !950
  %34 = bitcast i8* %33 to %struct._NICK_REC*, !dbg !952
  %35 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %34, i32 0, i32 8, !dbg !953
  %36 = getelementptr inbounds [8 x i8], [8 x i8]* %35, i64 0, i64 0, !dbg !954
  %37 = load i8, i8* %36, align 1, !dbg !954
  store i8 %37, i8* %8, align 1, !dbg !944
  %38 = load i8, i8* %8, align 1, !dbg !955
  %39 = sext i8 %38 to i32, !dbg !955
  %40 = icmp ne i32 %39, 0, !dbg !957
  br i1 %40, label %41, label %50, !dbg !958

; <label>:41:                                     ; preds = %26
  call void @llvm.dbg.declare(metadata i8** %9, metadata !959, metadata !699), !dbg !961
  %42 = call noalias i8* @g_malloc(i64 2), !dbg !962
  store i8* %42, i8** %9, align 8, !dbg !961
  %43 = load i8, i8* %8, align 1, !dbg !963
  %44 = load i8*, i8** %9, align 8, !dbg !964
  %45 = getelementptr inbounds i8, i8* %44, i64 0, !dbg !964
  store i8 %43, i8* %45, align 1, !dbg !965
  %46 = load i8*, i8** %9, align 8, !dbg !966
  %47 = getelementptr inbounds i8, i8* %46, i64 1, !dbg !966
  store i8 0, i8* %47, align 1, !dbg !967
  %48 = load i32*, i32** %7, align 8, !dbg !968
  store i32 1, i32* %48, align 4, !dbg !969
  %49 = load i8*, i8** %9, align 8, !dbg !970
  store i8* %49, i8** %4, align 8, !dbg !971
  br label %52, !dbg !971

; <label>:50:                                     ; preds = %26
  br label %51, !dbg !972

; <label>:51:                                     ; preds = %50, %19, %18, %17
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i32 0, i32 0), i8** %4, align 8, !dbg !973
  br label %52, !dbg !973

; <label>:52:                                     ; preds = %51, %41
  %53 = load i8*, i8** %4, align 8, !dbg !974
  ret i8* %53, !dbg !974
}

; Function Attrs: nounwind uwtable
define internal i8* @expando_cumode_space(%struct._SERVER_REC*, i8*, i32*) #0 !dbg !975 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !976, metadata !699), !dbg !977
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !978, metadata !699), !dbg !979
  store i32* %2, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !980, metadata !699), !dbg !981
  call void @llvm.dbg.declare(metadata i8** %8, metadata !982, metadata !699), !dbg !983
  %9 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !984
  %10 = bitcast %struct._SERVER_REC* %9 to i8*, !dbg !984
  %11 = call i8* @module_check_cast(i8* %10, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0)), !dbg !986
  %12 = bitcast i8* %11 to %struct._SERVER_REC*, !dbg !987
  %13 = bitcast %struct._SERVER_REC* %12 to i8*, !dbg !988
  %14 = call i8* @chat_protocol_check_cast(i8* %13, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0)), !dbg !989
  %15 = bitcast i8* %14 to %struct._IRC_SERVER_REC*, !dbg !991
  %16 = icmp ne %struct._IRC_SERVER_REC* %15, null, !dbg !991
  br i1 %16, label %17, label %18, !dbg !992

; <label>:17:                                     ; preds = %3
  br i1 false, label %19, label %20, !dbg !993

; <label>:18:                                     ; preds = %3
  br i1 false, label %20, label %19, !dbg !995

; <label>:19:                                     ; preds = %18, %17
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.21, i32 0, i32 0), i8** %4, align 8, !dbg !997
  br label %34, !dbg !997

; <label>:20:                                     ; preds = %18, %17
  %21 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !998
  %22 = load i8*, i8** %6, align 8, !dbg !999
  %23 = load i32*, i32** %7, align 8, !dbg !1000
  %24 = call i8* @expando_cumode(%struct._SERVER_REC* %21, i8* %22, i32* %23), !dbg !1001
  store i8* %24, i8** %8, align 8, !dbg !1002
  %25 = load i8*, i8** %8, align 8, !dbg !1003
  %26 = load i8, i8* %25, align 1, !dbg !1004
  %27 = sext i8 %26 to i32, !dbg !1004
  %28 = icmp eq i32 %27, 0, !dbg !1005
  br i1 %28, label %29, label %30, !dbg !1004

; <label>:29:                                     ; preds = %20
  br label %32, !dbg !1006

; <label>:30:                                     ; preds = %20
  %31 = load i8*, i8** %8, align 8, !dbg !1008
  br label %32, !dbg !1009

; <label>:32:                                     ; preds = %30, %29
  %33 = phi i8* [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i32 0, i32 0), %29 ], [ %31, %30 ], !dbg !1010
  store i8* %33, i8** %4, align 8, !dbg !1012
  br label %34, !dbg !1012

; <label>:34:                                     ; preds = %32, %19
  %35 = load i8*, i8** %4, align 8, !dbg !1013
  ret i8* %35, !dbg !1013
}

declare void @expando_add_signal(i8*, i8*, i32) #1

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @event_join(%struct._IRC_SERVER_REC*, i8*, i8*, i8*) #0 !dbg !1014 {
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !1017, metadata !699), !dbg !1018
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1019, metadata !699), !dbg !1020
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1021, metadata !699), !dbg !1022
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1023, metadata !699), !dbg !1024
  br label %9, !dbg !1025, !llvm.loop !1026

; <label>:9:                                      ; preds = %4
  %10 = load i8*, i8** %7, align 8, !dbg !1027
  %11 = icmp ne i8* %10, null, !dbg !1031
  br i1 %11, label %12, label %13, !dbg !1027

; <label>:12:                                     ; preds = %9
  br label %14, !dbg !1032

; <label>:13:                                     ; preds = %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.event_join, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0)), !dbg !1035
  br label %26, !dbg !1038

; <label>:14:                                     ; preds = %12
  br label %15, !dbg !1039

; <label>:15:                                     ; preds = %14
  %16 = load i8*, i8** %7, align 8, !dbg !1041
  %17 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1043
  %18 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %17, i32 0, i32 7, !dbg !1044
  %19 = load i8*, i8** %18, align 8, !dbg !1044
  %20 = call i32 @g_ascii_strcasecmp(i8* %16, i8* %19), !dbg !1045
  %21 = icmp ne i32 %20, 0, !dbg !1046
  br i1 %21, label %22, label %26, !dbg !1047

; <label>:22:                                     ; preds = %15
  %23 = load i8*, i8** @last_join, align 8, !dbg !1048
  call void @g_free(i8* %23), !dbg !1050
  %24 = load i8*, i8** %7, align 8, !dbg !1051
  %25 = call noalias i8* @g_strdup(i8* %24), !dbg !1052
  store i8* %25, i8** @last_join, align 8, !dbg !1053
  br label %26, !dbg !1054

; <label>:26:                                     ; preds = %13, %22, %15
  ret void, !dbg !1055
}

; Function Attrs: nounwind uwtable
define void @irc_expandos_deinit() #0 !dbg !1056 {
  %1 = load i8*, i8** @last_join, align 8, !dbg !1057
  call void @g_free(i8* %1), !dbg !1058
  call void @expando_destroy(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_lastjoin), !dbg !1059
  call void @expando_destroy(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_server_numeric), !dbg !1060
  call void @expando_destroy(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_servername), !dbg !1061
  call void @expando_destroy(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_userhost), !dbg !1062
  call void @expando_destroy(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_hostname), !dbg !1063
  call void @expando_destroy(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_usermode), !dbg !1064
  call void @expando_destroy(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_cumode), !dbg !1065
  call void @signal_remove_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_join to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1066
  ret void, !dbg !1067
}

declare void @g_free(i8*) #1

declare void @expando_destroy(i8*, i8* (%struct._SERVER_REC*, i8*, i32*)*) #1

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare i32 @is_numeric(i8*, i8 signext) #1

declare i8* @chat_protocol_check_cast(i8*, i32, i8*) #1

declare i8* @module_check_cast(i8*, i32, i8*) #1

declare i8* @settings_get_str(i8*) #1

; Function Attrs: nounwind
declare i32 @gethostname(i8*, i64) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

declare noalias i8* @g_strconcat(i8*, ...) #1

declare noalias i8** @g_strsplit(i8*, i8*, i32) #1

declare noalias i8* @g_strdup(i8*) #1

declare void @g_strfreev(i8**) #1

declare i8* @module_check_cast_module(i8*, i32, i8*, i8*) #1

declare noalias i8* @g_malloc(i64) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i32 @g_ascii_strcasecmp(i8*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!677, !678}
!llvm.ident = !{!679}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !43, globals: !674)
!1 = !DIFile(filename: "line127-irc-expandos.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !11, !18, !23, !32}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 7, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../../src/core/expandos.h", directory: "/home/lichi/Desktop/irssi/task1")
!5 = !{!6, !7, !8, !9, !10}
!6 = !DIEnumerator(name: "EXPANDO_ARG_NONE", value: 1)
!7 = !DIEnumerator(name: "EXPANDO_ARG_SERVER", value: 2)
!8 = !DIEnumerator(name: "EXPANDO_ARG_WINDOW", value: 3)
!9 = !DIEnumerator(name: "EXPANDO_ARG_WINDOW_ITEM", value: 4)
!10 = !DIEnumerator(name: "EXPANDO_NEVER", value: 5)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 69, size: 32, align: 32, elements: !13)
!12 = !DIFile(filename: "/usr/include/glib-2.0/glib/giochannel.h", directory: "/home/lichi/Desktop/irssi/task1")
!13 = !{!14, !15, !16, !17}
!14 = !DIEnumerator(name: "G_IO_STATUS_ERROR", value: 0)
!15 = !DIEnumerator(name: "G_IO_STATUS_NORMAL", value: 1)
!16 = !DIEnumerator(name: "G_IO_STATUS_EOF", value: 2)
!17 = !DIEnumerator(name: "G_IO_STATUS_AGAIN", value: 3)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 77, size: 32, align: 32, elements: !19)
!19 = !{!20, !21, !22}
!20 = !DIEnumerator(name: "G_SEEK_CUR", value: 0)
!21 = !DIEnumerator(name: "G_SEEK_SET", value: 1)
!22 = !DIEnumerator(name: "G_SEEK_END", value: 2)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !24, line: 31, size: 32, align: 32, elements: !25)
!24 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/irssi/task1")
!25 = !{!26, !27, !28, !29, !30, !31}
!26 = !DIEnumerator(name: "G_IO_IN", value: 1)
!27 = !DIEnumerator(name: "G_IO_OUT", value: 4)
!28 = !DIEnumerator(name: "G_IO_PRI", value: 2)
!29 = !DIEnumerator(name: "G_IO_ERR", value: 8)
!30 = !DIEnumerator(name: "G_IO_HUP", value: 16)
!31 = !DIEnumerator(name: "G_IO_NVAL", value: 32)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 84, size: 32, align: 32, elements: !33)
!33 = !{!34, !35, !36, !37, !38, !39, !40, !41, !42}
!34 = !DIEnumerator(name: "G_IO_FLAG_APPEND", value: 1)
!35 = !DIEnumerator(name: "G_IO_FLAG_NONBLOCK", value: 2)
!36 = !DIEnumerator(name: "G_IO_FLAG_IS_READABLE", value: 4)
!37 = !DIEnumerator(name: "G_IO_FLAG_IS_WRITABLE", value: 8)
!38 = !DIEnumerator(name: "G_IO_FLAG_IS_WRITEABLE", value: 8)
!39 = !DIEnumerator(name: "G_IO_FLAG_IS_SEEKABLE", value: 16)
!40 = !DIEnumerator(name: "G_IO_FLAG_MASK", value: 31)
!41 = !DIEnumerator(name: "G_IO_FLAG_GET_MASK", value: 31)
!42 = !DIEnumerator(name: "G_IO_FLAG_SET_MASK", value: 3)
!43 = !{!44, !45, !52, !365, !628, !472, !505, !121, !453}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
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
!57 = !{!58, !61, !62, !63, !310, !315, !316, !317, !318, !319, !320, !321, !322, !323, !327, !328, !332, !333, !334, !338, !343, !344, !345, !346, !347, !348, !349, !350, !357, !358, !359, !360, !361, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !671, !673}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !55, file: !59, line: 3, baseType: !60, size: 32, align: 32)
!59 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!60 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !55, file: !59, line: 4, baseType: !60, size: 32, align: 32, offset: 32)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !55, file: !59, line: 6, baseType: !60, size: 32, align: 32, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !55, file: !59, line: 8, baseType: !64, size: 64, align: 64, offset: 128)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_CONNECT_REC", file: !54, line: 5, baseType: !66)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_CONNECT_REC", file: !56, line: 24, size: 2496, align: 64, elements: !67)
!67 = !{!68, !70, !71, !72, !75, !76, !77, !78, !79, !81, !82, !83, !84, !85, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !66, file: !69, line: 3, baseType: !60, size: 32, align: 32)
!69 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!70 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !66, file: !69, line: 4, baseType: !60, size: 32, align: 32, offset: 32)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !66, file: !69, line: 6, baseType: !60, size: 32, align: 32, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !66, file: !69, line: 9, baseType: !73, size: 64, align: 64, offset: 128)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!74 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !66, file: !69, line: 10, baseType: !60, size: 32, align: 32, offset: 192)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !66, file: !69, line: 11, baseType: !73, size: 64, align: 64, offset: 256)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !66, file: !69, line: 11, baseType: !73, size: 64, align: 64, offset: 320)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !66, file: !69, line: 11, baseType: !73, size: 64, align: 64, offset: 384)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !66, file: !69, line: 13, baseType: !80, size: 16, align: 16, offset: 448)
!80 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !66, file: !69, line: 14, baseType: !73, size: 64, align: 64, offset: 512)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !66, file: !69, line: 15, baseType: !73, size: 64, align: 64, offset: 576)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !66, file: !69, line: 16, baseType: !60, size: 32, align: 32, offset: 640)
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
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !12, line: 41, baseType: !106)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !12, line: 97, size: 896, align: 64, elements: !107)
!107 = !{!108, !111, !255, !256, !261, !262, !263, !264, !265, !274, !275, !276, !280, !281, !282, !283, !284, !285, !286, !287}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !106, file: !12, line: 100, baseType: !109, size: 32, align: 32)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !110, line: 49, baseType: !60)
!110 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!111 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !106, file: !12, line: 101, baseType: !112, size: 64, align: 64, offset: 64)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64, align: 64)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !12, line: 42, baseType: !114)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !12, line: 131, size: 512, align: 64, elements: !115)
!115 = !{!116, !140, !146, !153, !157, !242, !246, !251}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !114, file: !12, line: 133, baseType: !117, size: 64, align: 64)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64, align: 64)
!118 = !DISubroutineType(types: !119)
!119 = !{!120, !104, !121, !123, !126, !127}
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !12, line: 75, baseType: !11)
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
!140 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !114, file: !12, line: 138, baseType: !141, size: 64, align: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64, align: 64)
!142 = !DISubroutineType(types: !143)
!143 = !{!120, !104, !144, !123, !126, !127}
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64, align: 64)
!145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !114, file: !12, line: 143, baseType: !147, size: 64, align: 64, offset: 128)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64, align: 64)
!148 = !DISubroutineType(types: !149)
!149 = !{!120, !104, !150, !152, !127}
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !124, line: 51, baseType: !151)
!151 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !12, line: 82, baseType: !18)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !114, file: !12, line: 147, baseType: !154, size: 64, align: 64, offset: 192)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64, align: 64)
!155 = !DISubroutineType(types: !156)
!156 = !{!120, !104, !127}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !114, file: !12, line: 149, baseType: !158, size: 64, align: 64, offset: 256)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64, align: 64)
!159 = !DISubroutineType(types: !160)
!160 = !{!161, !104, !241}
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64, align: 64)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !24, line: 64, baseType: !163)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !24, line: 171, size: 768, align: 64, elements: !164)
!164 = !{!165, !167, !188, !217, !219, !223, !224, !225, !226, !234, !235, !236, !237}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !163, file: !24, line: 174, baseType: !166, size: 64, align: 64)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !110, line: 77, baseType: !44)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !163, file: !24, line: 175, baseType: !168, size: 64, align: 64, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64, align: 64)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !24, line: 77, baseType: !170)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !24, line: 196, size: 192, align: 64, elements: !171)
!171 = !{!172, !176, !177}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !170, file: !24, line: 198, baseType: !173, size: 64, align: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64, align: 64)
!174 = !DISubroutineType(types: !175)
!175 = !{null, !166}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !170, file: !24, line: 199, baseType: !173, size: 64, align: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !170, file: !24, line: 200, baseType: !178, size: 64, align: 64, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64, align: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{null, !166, !161, !181, !187}
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64, align: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !24, line: 155, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!186, !166}
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !110, line: 50, baseType: !109)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64, align: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !163, file: !24, line: 177, baseType: !189, size: 64, align: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64, align: 64)
!190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !191)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !24, line: 130, baseType: !192)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !24, line: 214, size: 384, align: 64, elements: !193)
!193 = !{!194, !199, !203, !207, !211, !212}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !192, file: !24, line: 216, baseType: !195, size: 64, align: 64)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64, align: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{!186, !161, !198}
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64, align: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !192, file: !24, line: 218, baseType: !200, size: 64, align: 64, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64, align: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{!186, !161}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !192, file: !24, line: 219, baseType: !204, size: 64, align: 64, offset: 128)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64, align: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!186, !161, !182, !166}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !192, file: !24, line: 222, baseType: !208, size: 64, align: 64, offset: 192)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64, align: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{null, !161}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !192, file: !24, line: 226, baseType: !182, size: 64, align: 64, offset: 256)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !192, file: !24, line: 227, baseType: !213, size: 64, align: 64, offset: 320)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !24, line: 212, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64, align: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{null}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !163, file: !24, line: 178, baseType: !218, size: 32, align: 32, offset: 192)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !110, line: 55, baseType: !137)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !163, file: !24, line: 180, baseType: !220, size: 64, align: 64, offset: 256)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64, align: 64)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !24, line: 48, baseType: !222)
!222 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !24, line: 48, flags: DIFlagFwdDecl)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !163, file: !24, line: 182, baseType: !109, size: 32, align: 32, offset: 320)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !163, file: !24, line: 183, baseType: !218, size: 32, align: 32, offset: 352)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !163, file: !24, line: 184, baseType: !218, size: 32, align: 32, offset: 384)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !163, file: !24, line: 186, baseType: !227, size: 64, align: 64, offset: 448)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64, align: 64)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !229, line: 37, baseType: !230)
!229 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !229, line: 39, size: 128, align: 64, elements: !231)
!231 = !{!232, !233}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !230, file: !229, line: 41, baseType: !166, size: 64, align: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !230, file: !229, line: 42, baseType: !227, size: 64, align: 64, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !163, file: !24, line: 188, baseType: !161, size: 64, align: 64, offset: 512)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !163, file: !24, line: 189, baseType: !161, size: 64, align: 64, offset: 576)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !163, file: !24, line: 191, baseType: !73, size: 64, align: 64, offset: 640)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !163, file: !24, line: 193, baseType: !238, size: 64, align: 64, offset: 704)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64, align: 64)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !24, line: 65, baseType: !240)
!240 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !24, line: 65, flags: DIFlagFwdDecl)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !24, line: 39, baseType: !23)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !114, file: !12, line: 151, baseType: !243, size: 64, align: 64, offset: 320)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64, align: 64)
!244 = !DISubroutineType(types: !245)
!245 = !{null, !104}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !114, file: !12, line: 152, baseType: !247, size: 64, align: 64, offset: 384)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64, align: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{!120, !104, !250, !127}
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !12, line: 95, baseType: !32)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !114, file: !12, line: 155, baseType: !252, size: 64, align: 64, offset: 448)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64, align: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{!250, !104}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !106, file: !12, line: 103, baseType: !121, size: 64, align: 64, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !106, file: !12, line: 104, baseType: !257, size: 64, align: 64, offset: 192)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !258, line: 77, baseType: !259)
!258 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64, align: 64)
!260 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !258, line: 77, flags: DIFlagFwdDecl)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !106, file: !12, line: 105, baseType: !257, size: 64, align: 64, offset: 256)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !106, file: !12, line: 106, baseType: !121, size: 64, align: 64, offset: 320)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !106, file: !12, line: 107, baseType: !218, size: 32, align: 32, offset: 384)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !106, file: !12, line: 109, baseType: !123, size: 64, align: 64, offset: 448)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !106, file: !12, line: 110, baseType: !266, size: 64, align: 64, offset: 512)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64, align: 64)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !268, line: 39, baseType: !269)
!268 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !268, line: 41, size: 192, align: 64, elements: !270)
!270 = !{!271, !272, !273}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !269, file: !268, line: 43, baseType: !121, size: 64, align: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !269, file: !268, line: 44, baseType: !123, size: 64, align: 64, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !269, file: !268, line: 45, baseType: !123, size: 64, align: 64, offset: 128)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !106, file: !12, line: 111, baseType: !266, size: 64, align: 64, offset: 576)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !106, file: !12, line: 112, baseType: !266, size: 64, align: 64, offset: 640)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !106, file: !12, line: 113, baseType: !277, size: 48, align: 8, offset: 704)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 48, align: 8, elements: !278)
!278 = !{!279}
!279 = !DISubrange(count: 6)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !106, file: !12, line: 117, baseType: !218, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !106, file: !12, line: 118, baseType: !218, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !106, file: !12, line: 119, baseType: !218, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !106, file: !12, line: 120, baseType: !218, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !106, file: !12, line: 121, baseType: !218, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !106, file: !12, line: 122, baseType: !218, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !106, file: !12, line: 124, baseType: !166, size: 64, align: 64, offset: 768)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !106, file: !12, line: 125, baseType: !166, size: 64, align: 64, offset: 832)
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
!298 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !66, file: !56, line: 27, baseType: !73, size: 64, align: 64, offset: 1920)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_nick", scope: !66, file: !56, line: 28, baseType: !73, size: 64, align: 64, offset: 1984)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !66, file: !56, line: 30, baseType: !60, size: 32, align: 32, offset: 2048)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_username", scope: !66, file: !56, line: 31, baseType: !73, size: 64, align: 64, offset: 2112)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !66, file: !56, line: 32, baseType: !73, size: 64, align: 64, offset: 2176)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !66, file: !56, line: 34, baseType: !60, size: 32, align: 32, offset: 2240)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !66, file: !56, line: 35, baseType: !60, size: 32, align: 32, offset: 2272)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !66, file: !56, line: 36, baseType: !60, size: 32, align: 32, offset: 2304)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks", scope: !66, file: !56, line: 38, baseType: !60, size: 32, align: 32, offset: 2336)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !66, file: !56, line: 38, baseType: !60, size: 32, align: 32, offset: 2368)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes", scope: !66, file: !56, line: 38, baseType: !60, size: 32, align: 32, offset: 2400)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois", scope: !66, file: !56, line: 38, baseType: !60, size: 32, align: 32, offset: 2432)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !55, file: !59, line: 9, baseType: !311, size: 64, align: 64, offset: 192)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !312, line: 75, baseType: !313)
!312 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !314, line: 139, baseType: !151)
!314 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!315 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !55, file: !59, line: 10, baseType: !311, size: 64, align: 64, offset: 256)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !55, file: !59, line: 12, baseType: !73, size: 64, align: 64, offset: 320)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !55, file: !59, line: 13, baseType: !73, size: 64, align: 64, offset: 384)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !55, file: !59, line: 15, baseType: !137, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !55, file: !59, line: 16, baseType: !137, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !55, file: !59, line: 17, baseType: !137, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !55, file: !59, line: 18, baseType: !137, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !55, file: !59, line: 19, baseType: !137, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !55, file: !59, line: 21, baseType: !324, size: 64, align: 64, offset: 512)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64, align: 64)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !88, line: 102, baseType: !326)
!326 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !88, line: 102, flags: DIFlagFwdDecl)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !55, file: !59, line: 22, baseType: !60, size: 32, align: 32, offset: 576)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !55, file: !59, line: 25, baseType: !329, size: 128, align: 64, offset: 640)
!329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 128, align: 64, elements: !330)
!330 = !{!331}
!331 = !DISubrange(count: 2)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !55, file: !59, line: 26, baseType: !60, size: 32, align: 32, offset: 768)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !55, file: !59, line: 27, baseType: !60, size: 32, align: 32, offset: 800)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !55, file: !59, line: 29, baseType: !335, size: 64, align: 64, offset: 832)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64, align: 64)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !88, line: 103, baseType: !337)
!337 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !88, line: 103, flags: DIFlagFwdDecl)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !55, file: !59, line: 30, baseType: !339, size: 64, align: 64, offset: 896)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64, align: 64)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !341, line: 37, baseType: !342)
!341 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!342 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !341, line: 37, flags: DIFlagFwdDecl)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !55, file: !59, line: 32, baseType: !73, size: 64, align: 64, offset: 960)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !55, file: !59, line: 33, baseType: !73, size: 64, align: 64, offset: 1024)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !55, file: !59, line: 34, baseType: !73, size: 64, align: 64, offset: 1088)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !55, file: !59, line: 35, baseType: !137, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !55, file: !59, line: 36, baseType: !137, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !55, file: !59, line: 37, baseType: !137, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !55, file: !59, line: 38, baseType: !137, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !55, file: !59, line: 40, baseType: !351, size: 128, align: 64, offset: 1216)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !110, line: 504, baseType: !352)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !110, line: 506, size: 128, align: 64, elements: !353)
!353 = !{!354, !356}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !352, file: !110, line: 508, baseType: !355, size: 64, align: 64)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !110, line: 48, baseType: !151)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !352, file: !110, line: 509, baseType: !355, size: 64, align: 64, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !55, file: !59, line: 41, baseType: !311, size: 64, align: 64, offset: 1344)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !55, file: !59, line: 42, baseType: !60, size: 32, align: 32, offset: 1408)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !55, file: !59, line: 44, baseType: !227, size: 64, align: 64, offset: 1472)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !55, file: !59, line: 45, baseType: !227, size: 64, align: 64, offset: 1536)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !55, file: !59, line: 53, baseType: !362, size: 64, align: 64, offset: 1600)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64, align: 64)
!363 = !DISubroutineType(types: !364)
!364 = !{null, !365, !453, !60}
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64, align: 64)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !88, line: 107, baseType: !367)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !368, line: 30, size: 2240, align: 64, elements: !369)
!368 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!369 = !{!370, !371, !372, !373, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !449, !455, !459, !463, !468, !547, !554, !558}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !367, file: !59, line: 3, baseType: !60, size: 32, align: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !367, file: !59, line: 4, baseType: !60, size: 32, align: 32, offset: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !367, file: !59, line: 6, baseType: !60, size: 32, align: 32, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !367, file: !59, line: 8, baseType: !374, size: 64, align: 64, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64, align: 64)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !88, line: 113, baseType: !376)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !368, line: 25, size: 1920, align: 64, elements: !377)
!377 = !{!378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !376, file: !69, line: 3, baseType: !60, size: 32, align: 32)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !376, file: !69, line: 4, baseType: !60, size: 32, align: 32, offset: 32)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !376, file: !69, line: 6, baseType: !60, size: 32, align: 32, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !376, file: !69, line: 9, baseType: !73, size: 64, align: 64, offset: 128)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !376, file: !69, line: 10, baseType: !60, size: 32, align: 32, offset: 192)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !376, file: !69, line: 11, baseType: !73, size: 64, align: 64, offset: 256)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !376, file: !69, line: 11, baseType: !73, size: 64, align: 64, offset: 320)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !376, file: !69, line: 11, baseType: !73, size: 64, align: 64, offset: 384)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !376, file: !69, line: 13, baseType: !80, size: 16, align: 16, offset: 448)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !376, file: !69, line: 14, baseType: !73, size: 64, align: 64, offset: 512)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !376, file: !69, line: 15, baseType: !73, size: 64, align: 64, offset: 576)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !376, file: !69, line: 16, baseType: !60, size: 32, align: 32, offset: 640)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !376, file: !69, line: 17, baseType: !73, size: 64, align: 64, offset: 704)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !376, file: !69, line: 19, baseType: !86, size: 64, align: 64, offset: 768)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !376, file: !69, line: 19, baseType: !86, size: 64, align: 64, offset: 832)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !376, file: !69, line: 21, baseType: !73, size: 64, align: 64, offset: 896)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !376, file: !69, line: 22, baseType: !73, size: 64, align: 64, offset: 960)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !376, file: !69, line: 23, baseType: !73, size: 64, align: 64, offset: 1024)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !376, file: !69, line: 24, baseType: !73, size: 64, align: 64, offset: 1088)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !376, file: !69, line: 26, baseType: !73, size: 64, align: 64, offset: 1152)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !376, file: !69, line: 27, baseType: !73, size: 64, align: 64, offset: 1216)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !376, file: !69, line: 28, baseType: !73, size: 64, align: 64, offset: 1280)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !376, file: !69, line: 29, baseType: !73, size: 64, align: 64, offset: 1344)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !376, file: !69, line: 30, baseType: !73, size: 64, align: 64, offset: 1408)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !376, file: !69, line: 31, baseType: !73, size: 64, align: 64, offset: 1472)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !376, file: !69, line: 32, baseType: !73, size: 64, align: 64, offset: 1536)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !376, file: !69, line: 33, baseType: !73, size: 64, align: 64, offset: 1600)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !376, file: !69, line: 35, baseType: !104, size: 64, align: 64, offset: 1664)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !376, file: !69, line: 38, baseType: !137, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !376, file: !69, line: 39, baseType: !137, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !376, file: !69, line: 40, baseType: !137, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !376, file: !69, line: 41, baseType: !137, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !376, file: !69, line: 42, baseType: !137, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !376, file: !69, line: 43, baseType: !137, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !376, file: !69, line: 44, baseType: !137, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !376, file: !69, line: 45, baseType: !137, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !376, file: !69, line: 46, baseType: !73, size: 64, align: 64, offset: 1792)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !376, file: !69, line: 47, baseType: !73, size: 64, align: 64, offset: 1856)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !367, file: !59, line: 9, baseType: !311, size: 64, align: 64, offset: 192)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !367, file: !59, line: 10, baseType: !311, size: 64, align: 64, offset: 256)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !367, file: !59, line: 12, baseType: !73, size: 64, align: 64, offset: 320)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !367, file: !59, line: 13, baseType: !73, size: 64, align: 64, offset: 384)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !367, file: !59, line: 15, baseType: !137, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !367, file: !59, line: 16, baseType: !137, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !367, file: !59, line: 17, baseType: !137, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !367, file: !59, line: 18, baseType: !137, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !367, file: !59, line: 19, baseType: !137, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !367, file: !59, line: 21, baseType: !324, size: 64, align: 64, offset: 512)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !367, file: !59, line: 22, baseType: !60, size: 32, align: 32, offset: 576)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !367, file: !59, line: 25, baseType: !329, size: 128, align: 64, offset: 640)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !367, file: !59, line: 26, baseType: !60, size: 32, align: 32, offset: 768)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !367, file: !59, line: 27, baseType: !60, size: 32, align: 32, offset: 800)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !367, file: !59, line: 29, baseType: !335, size: 64, align: 64, offset: 832)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !367, file: !59, line: 30, baseType: !339, size: 64, align: 64, offset: 896)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !367, file: !59, line: 32, baseType: !73, size: 64, align: 64, offset: 960)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !367, file: !59, line: 33, baseType: !73, size: 64, align: 64, offset: 1024)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !367, file: !59, line: 34, baseType: !73, size: 64, align: 64, offset: 1088)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !367, file: !59, line: 35, baseType: !137, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !367, file: !59, line: 36, baseType: !137, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !367, file: !59, line: 37, baseType: !137, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !367, file: !59, line: 38, baseType: !137, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !367, file: !59, line: 40, baseType: !351, size: 128, align: 64, offset: 1216)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !367, file: !59, line: 41, baseType: !311, size: 64, align: 64, offset: 1344)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !367, file: !59, line: 42, baseType: !60, size: 32, align: 32, offset: 1408)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !367, file: !59, line: 44, baseType: !227, size: 64, align: 64, offset: 1472)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !367, file: !59, line: 45, baseType: !227, size: 64, align: 64, offset: 1536)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !367, file: !59, line: 53, baseType: !362, size: 64, align: 64, offset: 1600)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !367, file: !59, line: 55, baseType: !446, size: 64, align: 64, offset: 1664)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64, align: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{!60, !365, !74}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !367, file: !59, line: 57, baseType: !450, size: 64, align: 64, offset: 1728)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64, align: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{!60, !365, !453}
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64, align: 64)
!454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !367, file: !59, line: 60, baseType: !456, size: 64, align: 64, offset: 1792)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64, align: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{!453, !365}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !367, file: !59, line: 62, baseType: !460, size: 64, align: 64, offset: 1856)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64, align: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{null, !365, !453, !453, !60}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !367, file: !59, line: 65, baseType: !464, size: 64, align: 64, offset: 1920)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64, align: 64)
!465 = !DISubroutineType(types: !466)
!466 = !{!467, !365, !453, !453}
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !367, file: !59, line: 69, baseType: !469, size: 64, align: 64, offset: 1984)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64, align: 64)
!470 = !DISubroutineType(types: !471)
!471 = !{!472, !365, !453}
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64, align: 64)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !88, line: 109, baseType: !474)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !475, line: 15, size: 1408, align: 64, elements: !476)
!475 = !DIFile(filename: "../../../src/core/channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!476 = !{!477, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !495, !499, !501, !502, !503, !504, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !474, file: !478, line: 3, baseType: !60, size: 32, align: 32)
!478 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!479 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !474, file: !478, line: 4, baseType: !60, size: 32, align: 32, offset: 32)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !474, file: !478, line: 5, baseType: !339, size: 64, align: 64, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !474, file: !478, line: 7, baseType: !44, size: 64, align: 64, offset: 128)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !474, file: !478, line: 8, baseType: !365, size: 64, align: 64, offset: 192)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !474, file: !478, line: 9, baseType: !73, size: 64, align: 64, offset: 256)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !474, file: !478, line: 10, baseType: !73, size: 64, align: 64, offset: 320)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !474, file: !478, line: 11, baseType: !311, size: 64, align: 64, offset: 384)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !474, file: !478, line: 12, baseType: !60, size: 32, align: 32, offset: 448)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !474, file: !478, line: 13, baseType: !73, size: 64, align: 64, offset: 512)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !474, file: !478, line: 15, baseType: !489, size: 64, align: 64, offset: 576)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64, align: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{null, !492}
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64, align: 64)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !88, line: 108, baseType: !494)
!494 = !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !88, line: 108, flags: DIFlagFwdDecl)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !474, file: !478, line: 17, baseType: !496, size: 64, align: 64, offset: 640)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64, align: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{!453, !492}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !474, file: !500, line: 5, baseType: !73, size: 64, align: 64, offset: 704)
!500 = !DIFile(filename: "../../../src/core/channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!501 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !474, file: !500, line: 6, baseType: !73, size: 64, align: 64, offset: 768)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !474, file: !500, line: 7, baseType: !311, size: 64, align: 64, offset: 832)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !474, file: !500, line: 9, baseType: !339, size: 64, align: 64, offset: 896)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !474, file: !500, line: 10, baseType: !505, size: 64, align: 64, offset: 960)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64, align: 64)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !88, line: 111, baseType: !507)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !508, line: 13, size: 576, align: 64, elements: !509)
!508 = !DIFile(filename: "../../../src/core/nicklist.h", directory: "/home/lichi/Desktop/irssi/task1")
!509 = !{!510, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !528, !529}
!510 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !507, file: !511, line: 3, baseType: !60, size: 32, align: 32)
!511 = !DIFile(filename: "../../../src/core/nick-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!512 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !507, file: !511, line: 4, baseType: !60, size: 32, align: 32, offset: 32)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "last_check", scope: !507, file: !511, line: 6, baseType: !311, size: 64, align: 64, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !507, file: !511, line: 8, baseType: !73, size: 64, align: 64, offset: 128)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !507, file: !511, line: 9, baseType: !73, size: 64, align: 64, offset: 192)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !507, file: !511, line: 10, baseType: !73, size: 64, align: 64, offset: 256)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "hops", scope: !507, file: !511, line: 11, baseType: !60, size: 32, align: 32, offset: 320)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "gone", scope: !507, file: !511, line: 14, baseType: !137, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "serverop", scope: !507, file: !511, line: 15, baseType: !137, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "send_massjoin", scope: !507, file: !511, line: 18, baseType: !137, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !507, file: !511, line: 19, baseType: !137, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !507, file: !511, line: 20, baseType: !137, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !507, file: !511, line: 21, baseType: !137, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !507, file: !511, line: 22, baseType: !525, size: 64, align: 8, offset: 360)
!525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 64, align: 8, elements: !526)
!526 = !{!527}
!527 = !DISubrange(count: 8)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !507, file: !511, line: 26, baseType: !44, size: 64, align: 64, offset: 448)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !507, file: !511, line: 28, baseType: !505, size: 64, align: 64, offset: 512)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !474, file: !500, line: 12, baseType: !137, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !474, file: !500, line: 13, baseType: !73, size: 64, align: 64, offset: 1088)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !474, file: !500, line: 14, baseType: !60, size: 32, align: 32, offset: 1152)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !474, file: !500, line: 15, baseType: !73, size: 64, align: 64, offset: 1216)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !474, file: !500, line: 17, baseType: !137, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !474, file: !500, line: 18, baseType: !137, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !474, file: !500, line: 19, baseType: !137, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !474, file: !500, line: 20, baseType: !137, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !474, file: !500, line: 22, baseType: !137, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !474, file: !500, line: 23, baseType: !137, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !474, file: !500, line: 24, baseType: !137, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !474, file: !500, line: 25, baseType: !137, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !474, file: !500, line: 26, baseType: !137, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !474, file: !500, line: 31, baseType: !544, size: 64, align: 64, offset: 1344)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64, align: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!73, !472}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !367, file: !59, line: 70, baseType: !548, size: 64, align: 64, offset: 2048)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64, align: 64)
!549 = !DISubroutineType(types: !550)
!550 = !{!551, !365, !453}
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64, align: 64)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !88, line: 110, baseType: !553)
!553 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !88, line: 110, flags: DIFlagFwdDecl)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !367, file: !59, line: 71, baseType: !555, size: 64, align: 64, offset: 2112)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64, align: 64)
!556 = !DISubroutineType(types: !557)
!557 = !{!60, !453, !453}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !367, file: !59, line: 73, baseType: !555, size: 64, align: 64, offset: 2176)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !55, file: !59, line: 55, baseType: !446, size: 64, align: 64, offset: 1664)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !55, file: !59, line: 57, baseType: !450, size: 64, align: 64, offset: 1728)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !55, file: !59, line: 60, baseType: !456, size: 64, align: 64, offset: 1792)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !55, file: !59, line: 62, baseType: !460, size: 64, align: 64, offset: 1856)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !55, file: !59, line: 65, baseType: !464, size: 64, align: 64, offset: 1920)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !55, file: !59, line: 69, baseType: !469, size: 64, align: 64, offset: 1984)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !55, file: !59, line: 70, baseType: !548, size: 64, align: 64, offset: 2048)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !55, file: !59, line: 71, baseType: !555, size: 64, align: 64, offset: 2112)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !55, file: !59, line: 73, baseType: !555, size: 64, align: 64, offset: 2176)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "redirects", scope: !55, file: !56, line: 46, baseType: !227, size: 64, align: 64, offset: 2240)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_queue", scope: !55, file: !56, line: 47, baseType: !227, size: 64, align: 64, offset: 2304)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_next", scope: !55, file: !56, line: 48, baseType: !571, size: 64, align: 64, offset: 2368)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64, align: 64)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "REDIRECT_REC", file: !54, line: 8, baseType: !573)
!573 = !DICompositeType(tag: DW_TAG_structure_type, name: "_REDIRECT_REC", file: !54, line: 8, flags: DIFlagFwdDecl)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_active", scope: !55, file: !56, line: 49, baseType: !227, size: 64, align: 64, offset: 2432)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "last_nick", scope: !55, file: !56, line: 51, baseType: !73, size: 64, align: 64, offset: 2496)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !55, file: !56, line: 53, baseType: !73, size: 64, align: 64, offset: 2560)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !55, file: !56, line: 54, baseType: !73, size: 64, align: 64, offset: 2624)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "wanted_usermode", scope: !55, file: !56, line: 55, baseType: !73, size: 64, align: 64, offset: 2688)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "userhost", scope: !55, file: !56, line: 56, baseType: !73, size: 64, align: 64, offset: 2752)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "channels_formed", scope: !55, file: !56, line: 57, baseType: !60, size: 32, align: 32, offset: 2816)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "whois_found", scope: !55, file: !56, line: 59, baseType: !137, size: 1, align: 32, offset: 2848, flags: DIFlagBitField, extraData: i64 2848)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "whowas_found", scope: !55, file: !56, line: 60, baseType: !137, size: 1, align: 32, offset: 2849, flags: DIFlagBitField, extraData: i64 2848)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "emode_known", scope: !55, file: !56, line: 62, baseType: !137, size: 1, align: 32, offset: 2850, flags: DIFlagBitField, extraData: i64 2848)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_mode", scope: !55, file: !56, line: 63, baseType: !137, size: 1, align: 32, offset: 2851, flags: DIFlagBitField, extraData: i64 2848)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_who", scope: !55, file: !56, line: 64, baseType: !137, size: 1, align: 32, offset: 2852, flags: DIFlagBitField, extraData: i64 2848)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "one_endofwho", scope: !55, file: !56, line: 65, baseType: !137, size: 1, align: 32, offset: 2853, flags: DIFlagBitField, extraData: i64 2848)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "disable_lag", scope: !55, file: !56, line: 66, baseType: !137, size: 1, align: 32, offset: 2854, flags: DIFlagBitField, extraData: i64 2848)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "nick_collision", scope: !55, file: !56, line: 67, baseType: !137, size: 1, align: 32, offset: 2855, flags: DIFlagBitField, extraData: i64 2848)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "motd_got", scope: !55, file: !56, line: 68, baseType: !137, size: 1, align: 32, offset: 2856, flags: DIFlagBitField, extraData: i64 2848)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "isupport_sent", scope: !55, file: !56, line: 69, baseType: !137, size: 1, align: 32, offset: 2857, flags: DIFlagBitField, extraData: i64 2848)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "cap_complete", scope: !55, file: !56, line: 70, baseType: !137, size: 1, align: 32, offset: 2858, flags: DIFlagBitField, extraData: i64 2848)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "cap_in_multiline", scope: !55, file: !56, line: 71, baseType: !137, size: 1, align: 32, offset: 2859, flags: DIFlagBitField, extraData: i64 2848)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_success", scope: !55, file: !56, line: 72, baseType: !137, size: 1, align: 32, offset: 2860, flags: DIFlagBitField, extraData: i64 2848)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks_in_cmd", scope: !55, file: !56, line: 74, baseType: !60, size: 32, align: 32, offset: 2880)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes_in_cmd", scope: !55, file: !56, line: 75, baseType: !60, size: 32, align: 32, offset: 2912)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois_in_cmd", scope: !55, file: !56, line: 76, baseType: !60, size: 32, align: 32, offset: 2944)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs_in_cmd", scope: !55, file: !56, line: 77, baseType: !60, size: 32, align: 32, offset: 2976)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "cap_supported", scope: !55, file: !56, line: 79, baseType: !339, size: 64, align: 64, offset: 3008)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "cap_active", scope: !55, file: !56, line: 80, baseType: !227, size: 64, align: 64, offset: 3072)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "cap_queue", scope: !55, file: !56, line: 81, baseType: !227, size: 64, align: 64, offset: 3136)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_buffer", scope: !55, file: !56, line: 83, baseType: !266, size: 64, align: 64, offset: 3200)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_timeout", scope: !55, file: !56, line: 84, baseType: !218, size: 32, align: 32, offset: 3264)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcount", scope: !55, file: !56, line: 87, baseType: !60, size: 32, align: 32, offset: 3296)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "cmdqueue", scope: !55, file: !56, line: 91, baseType: !227, size: 64, align: 64, offset: 3328)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "wait_cmd", scope: !55, file: !56, line: 92, baseType: !351, size: 128, align: 64, offset: 3392)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd", scope: !55, file: !56, line: 93, baseType: !351, size: 128, align: 64, offset: 3520)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !55, file: !56, line: 95, baseType: !60, size: 32, align: 32, offset: 3648)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !55, file: !56, line: 96, baseType: !60, size: 32, align: 32, offset: 3680)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !55, file: !56, line: 97, baseType: !60, size: 32, align: 32, offset: 3712)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "idles", scope: !55, file: !56, line: 100, baseType: !227, size: 64, align: 64, offset: 3776)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "ctcpqueue", scope: !55, file: !56, line: 103, baseType: !227, size: 64, align: 64, offset: 3840)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "knockoutlist", scope: !55, file: !56, line: 106, baseType: !227, size: 64, align: 64, offset: 3904)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "splits", scope: !55, file: !56, line: 108, baseType: !339, size: 64, align: 64, offset: 3968)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "split_servers", scope: !55, file: !56, line: 109, baseType: !227, size: 64, align: 64, offset: 4032)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "rejoin_channels", scope: !55, file: !56, line: 111, baseType: !227, size: 64, align: 64, offset: 4096)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "chanqueries", scope: !55, file: !56, line: 114, baseType: !44, size: 64, align: 64, offset: 4160)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "isupport", scope: !55, file: !56, line: 116, baseType: !339, size: 64, align: 64, offset: 4224)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !55, file: !56, line: 117, baseType: !619, size: 32768, align: 64, offset: 4288)
!619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !620, size: 32768, align: 64, elements: !669)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "modes_type", file: !621, line: 10, size: 128, align: 64, elements: !622)
!621 = !DIFile(filename: "modes.h", directory: "/home/lichi/Desktop/irssi/task1")
!622 = !{!623, !668}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !620, file: !621, line: 11, baseType: !624, size: 64, align: 64)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64, align: 64)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_func_t", file: !621, line: 7, baseType: !626)
!626 = !DISubroutineType(types: !627)
!627 = !{null, !628, !453, !74, !74, !73, !266}
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64, align: 64)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_CHANNEL_REC", file: !54, line: 7, baseType: !630)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_CHANNEL_REC", file: !631, line: 15, size: 1600, align: 64, elements: !632)
!631 = !DIFile(filename: "irc-channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!632 = !{!633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !630, file: !478, line: 3, baseType: !60, size: 32, align: 32)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !630, file: !478, line: 4, baseType: !60, size: 32, align: 32, offset: 32)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !630, file: !478, line: 5, baseType: !339, size: 64, align: 64, offset: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !630, file: !478, line: 7, baseType: !44, size: 64, align: 64, offset: 128)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !630, file: !478, line: 8, baseType: !52, size: 64, align: 64, offset: 192)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !630, file: !478, line: 9, baseType: !73, size: 64, align: 64, offset: 256)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !630, file: !478, line: 10, baseType: !73, size: 64, align: 64, offset: 320)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !630, file: !478, line: 11, baseType: !311, size: 64, align: 64, offset: 384)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !630, file: !478, line: 12, baseType: !60, size: 32, align: 32, offset: 448)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !630, file: !478, line: 13, baseType: !73, size: 64, align: 64, offset: 512)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !630, file: !478, line: 15, baseType: !489, size: 64, align: 64, offset: 576)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !630, file: !478, line: 17, baseType: !496, size: 64, align: 64, offset: 640)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !630, file: !500, line: 5, baseType: !73, size: 64, align: 64, offset: 704)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !630, file: !500, line: 6, baseType: !73, size: 64, align: 64, offset: 768)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !630, file: !500, line: 7, baseType: !311, size: 64, align: 64, offset: 832)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !630, file: !500, line: 9, baseType: !339, size: 64, align: 64, offset: 896)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !630, file: !500, line: 10, baseType: !505, size: 64, align: 64, offset: 960)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !630, file: !500, line: 12, baseType: !137, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !630, file: !500, line: 13, baseType: !73, size: 64, align: 64, offset: 1088)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !630, file: !500, line: 14, baseType: !60, size: 32, align: 32, offset: 1152)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !630, file: !500, line: 15, baseType: !73, size: 64, align: 64, offset: 1216)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !630, file: !500, line: 17, baseType: !137, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !630, file: !500, line: 18, baseType: !137, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !630, file: !500, line: 19, baseType: !137, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !630, file: !500, line: 20, baseType: !137, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !630, file: !500, line: 22, baseType: !137, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !630, file: !500, line: 23, baseType: !137, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !630, file: !500, line: 24, baseType: !137, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !630, file: !500, line: 25, baseType: !137, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !630, file: !500, line: 26, baseType: !137, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !630, file: !500, line: 31, baseType: !544, size: 64, align: 64, offset: 1344)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "banlist", scope: !630, file: !631, line: 18, baseType: !227, size: 64, align: 64, offset: 1408)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "massjoin_start", scope: !630, file: !631, line: 20, baseType: !311, size: 64, align: 64, offset: 1472)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "massjoins", scope: !630, file: !631, line: 21, baseType: !60, size: 32, align: 32, offset: 1536)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "last_massjoins", scope: !630, file: !631, line: 22, baseType: !60, size: 32, align: 32, offset: 1568)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !620, file: !621, line: 12, baseType: !74, size: 8, align: 8, offset: 64)
!669 = !{!670}
!670 = !DISubrange(count: 256)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !55, file: !56, line: 118, baseType: !672, size: 2048, align: 8, offset: 37056)
!672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 2048, align: 8, elements: !669)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "nick_comp_func", scope: !55, file: !56, line: 120, baseType: !555, size: 64, align: 64, offset: 39104)
!674 = !{!675}
!675 = distinct !DIGlobalVariable(name: "last_join", scope: !0, file: !676, line: 34, type: !73, isLocal: true, isDefinition: true, variable: i8** @last_join)
!676 = !DIFile(filename: "irc-expandos.c", directory: "/home/lichi/Desktop/irssi/task1")
!677 = !{i32 2, !"Dwarf Version", i32 4}
!678 = !{i32 2, !"Debug Info Version", i32 3}
!679 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!680 = distinct !DISubprogram(name: "irc_expandos_init", scope: !676, file: !676, line: 155, type: !215, isLocal: false, isDefinition: true, scopeLine: 156, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !681)
!681 = !{}
!682 = !DILocation(line: 157, column: 12, scope: !680)
!683 = !DILocation(line: 159, column: 2, scope: !680)
!684 = !DILocation(line: 161, column: 2, scope: !680)
!685 = !DILocation(line: 163, column: 2, scope: !680)
!686 = !DILocation(line: 166, column: 2, scope: !680)
!687 = !DILocation(line: 169, column: 2, scope: !680)
!688 = !DILocation(line: 172, column: 2, scope: !680)
!689 = !DILocation(line: 176, column: 2, scope: !680)
!690 = !DILocation(line: 181, column: 2, scope: !680)
!691 = !DILocation(line: 187, column: 9, scope: !680)
!692 = !DILocation(line: 189, column: 2, scope: !680)
!693 = !DILocation(line: 190, column: 1, scope: !680)
!694 = distinct !DISubprogram(name: "expando_lastjoin", scope: !676, file: !676, line: 37, type: !695, isLocal: true, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !681)
!695 = !DISubroutineType(types: !696)
!696 = !{!73, !365, !44, !697}
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!698 = !DILocalVariable(name: "server", arg: 1, scope: !694, file: !676, line: 37, type: !365)
!699 = !DIExpression()
!700 = !DILocation(line: 37, column: 43, scope: !694)
!701 = !DILocalVariable(name: "item", arg: 2, scope: !694, file: !676, line: 37, type: !44)
!702 = !DILocation(line: 37, column: 57, scope: !694)
!703 = !DILocalVariable(name: "free_ret", arg: 3, scope: !694, file: !676, line: 37, type: !697)
!704 = !DILocation(line: 37, column: 68, scope: !694)
!705 = !DILocation(line: 39, column: 9, scope: !694)
!706 = !DILocation(line: 39, column: 2, scope: !694)
!707 = distinct !DISubprogram(name: "expando_server_numeric", scope: !676, file: !676, line: 43, type: !695, isLocal: true, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !681)
!708 = !DILocalVariable(name: "server", arg: 1, scope: !707, file: !676, line: 43, type: !365)
!709 = !DILocation(line: 43, column: 49, scope: !707)
!710 = !DILocalVariable(name: "item", arg: 2, scope: !707, file: !676, line: 43, type: !44)
!711 = !DILocation(line: 43, column: 63, scope: !707)
!712 = !DILocalVariable(name: "free_ret", arg: 3, scope: !707, file: !676, line: 43, type: !697)
!713 = !DILocation(line: 43, column: 74, scope: !707)
!714 = !DILocation(line: 45, column: 9, scope: !707)
!715 = !DILocation(line: 45, column: 30, scope: !707)
!716 = !DILocation(line: 45, column: 37, scope: !707)
!717 = !DILocation(line: 46, column: 15, scope: !707)
!718 = !DILocation(line: 46, column: 4, scope: !707)
!719 = !DILocation(line: 45, column: 9, scope: !720)
!720 = !DILexicalBlockFile(scope: !707, file: !676, discriminator: 1)
!721 = !DILocation(line: 45, column: 9, scope: !722)
!722 = !DILexicalBlockFile(scope: !707, file: !676, discriminator: 2)
!723 = !DILocation(line: 47, column: 3, scope: !707)
!724 = !DILocation(line: 45, column: 9, scope: !725)
!725 = !DILexicalBlockFile(scope: !707, file: !676, discriminator: 3)
!726 = !DILocation(line: 45, column: 9, scope: !727)
!727 = !DILexicalBlockFile(scope: !707, file: !676, discriminator: 4)
!728 = !DILocation(line: 45, column: 2, scope: !727)
!729 = distinct !DISubprogram(name: "expando_servername", scope: !676, file: !676, line: 51, type: !695, isLocal: true, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !681)
!730 = !DILocalVariable(name: "server", arg: 1, scope: !729, file: !676, line: 51, type: !365)
!731 = !DILocation(line: 51, column: 45, scope: !729)
!732 = !DILocalVariable(name: "item", arg: 2, scope: !729, file: !676, line: 51, type: !44)
!733 = !DILocation(line: 51, column: 59, scope: !729)
!734 = !DILocalVariable(name: "free_ret", arg: 3, scope: !729, file: !676, line: 51, type: !697)
!735 = !DILocation(line: 51, column: 70, scope: !729)
!736 = !DILocalVariable(name: "ircserver", scope: !729, file: !676, line: 53, type: !52)
!737 = !DILocation(line: 53, column: 18, scope: !729)
!738 = !DILocation(line: 53, column: 109, scope: !729)
!739 = !DILocation(line: 53, column: 91, scope: !729)
!740 = !DILocation(line: 53, column: 76, scope: !729)
!741 = !DILocation(line: 53, column: 75, scope: !729)
!742 = !DILocation(line: 53, column: 50, scope: !743)
!743 = !DILexicalBlockFile(scope: !729, file: !676, discriminator: 1)
!744 = !DILocation(line: 53, column: 31, scope: !729)
!745 = !DILocation(line: 55, column: 9, scope: !729)
!746 = !DILocation(line: 55, column: 19, scope: !729)
!747 = !DILocation(line: 55, column: 9, scope: !743)
!748 = !DILocation(line: 55, column: 33, scope: !749)
!749 = !DILexicalBlockFile(scope: !729, file: !676, discriminator: 2)
!750 = !DILocation(line: 55, column: 44, scope: !749)
!751 = !DILocation(line: 55, column: 9, scope: !749)
!752 = !DILocation(line: 55, column: 9, scope: !753)
!753 = !DILexicalBlockFile(scope: !729, file: !676, discriminator: 3)
!754 = !DILocation(line: 55, column: 2, scope: !753)
!755 = distinct !DISubprogram(name: "expando_userhost", scope: !676, file: !676, line: 59, type: !695, isLocal: true, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !681)
!756 = !DILocalVariable(name: "server", arg: 1, scope: !755, file: !676, line: 59, type: !365)
!757 = !DILocation(line: 59, column: 43, scope: !755)
!758 = !DILocalVariable(name: "item", arg: 2, scope: !755, file: !676, line: 59, type: !44)
!759 = !DILocation(line: 59, column: 57, scope: !755)
!760 = !DILocalVariable(name: "free_ret", arg: 3, scope: !755, file: !676, line: 59, type: !697)
!761 = !DILocation(line: 59, column: 68, scope: !755)
!762 = !DILocalVariable(name: "ircserver", scope: !755, file: !676, line: 61, type: !52)
!763 = !DILocation(line: 61, column: 18, scope: !755)
!764 = !DILocalVariable(name: "username", scope: !755, file: !676, line: 62, type: !453)
!765 = !DILocation(line: 62, column: 14, scope: !755)
!766 = !DILocalVariable(name: "hostname", scope: !755, file: !676, line: 63, type: !767)
!767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 520, align: 8, elements: !768)
!768 = !{!769}
!769 = !DISubrange(count: 65)
!770 = !DILocation(line: 63, column: 7, scope: !755)
!771 = !DILocation(line: 65, column: 93, scope: !755)
!772 = !DILocation(line: 65, column: 75, scope: !755)
!773 = !DILocation(line: 65, column: 60, scope: !755)
!774 = !DILocation(line: 65, column: 59, scope: !755)
!775 = !DILocation(line: 65, column: 34, scope: !776)
!776 = !DILexicalBlockFile(scope: !755, file: !676, discriminator: 1)
!777 = !DILocation(line: 65, column: 15, scope: !755)
!778 = !DILocation(line: 65, column: 12, scope: !755)
!779 = !DILocation(line: 68, column: 6, scope: !780)
!780 = distinct !DILexicalBlock(scope: !755, file: !676, line: 68, column: 6)
!781 = !DILocation(line: 68, column: 16, scope: !780)
!782 = !DILocation(line: 68, column: 23, scope: !780)
!783 = !DILocation(line: 68, column: 26, scope: !784)
!784 = !DILexicalBlockFile(scope: !780, file: !676, discriminator: 1)
!785 = !DILocation(line: 68, column: 37, scope: !784)
!786 = !DILocation(line: 68, column: 46, scope: !784)
!787 = !DILocation(line: 68, column: 6, scope: !784)
!788 = !DILocation(line: 69, column: 10, scope: !780)
!789 = !DILocation(line: 69, column: 21, scope: !780)
!790 = !DILocation(line: 69, column: 3, scope: !780)
!791 = !DILocation(line: 72, column: 3, scope: !755)
!792 = !DILocation(line: 72, column: 12, scope: !755)
!793 = !DILocation(line: 73, column: 6, scope: !794)
!794 = distinct !DILexicalBlock(scope: !755, file: !676, line: 73, column: 6)
!795 = !DILocation(line: 73, column: 16, scope: !794)
!796 = !DILocation(line: 73, column: 6, scope: !755)
!797 = !DILocation(line: 74, column: 14, scope: !794)
!798 = !DILocation(line: 74, column: 12, scope: !794)
!799 = !DILocation(line: 74, column: 3, scope: !794)
!800 = !DILocation(line: 76, column: 14, scope: !794)
!801 = !DILocation(line: 76, column: 25, scope: !794)
!802 = !DILocation(line: 76, column: 34, scope: !794)
!803 = !DILocation(line: 76, column: 12, scope: !794)
!804 = !DILocation(line: 78, column: 18, scope: !805)
!805 = distinct !DILexicalBlock(scope: !755, file: !676, line: 78, column: 6)
!806 = !DILocation(line: 78, column: 6, scope: !805)
!807 = !DILocation(line: 78, column: 46, scope: !805)
!808 = !DILocation(line: 78, column: 51, scope: !805)
!809 = !DILocation(line: 78, column: 54, scope: !810)
!810 = !DILexicalBlockFile(scope: !805, file: !676, discriminator: 1)
!811 = !DILocation(line: 78, column: 64, scope: !810)
!812 = !DILocation(line: 78, column: 6, scope: !810)
!813 = !DILocation(line: 79, column: 10, scope: !805)
!814 = !DILocation(line: 79, column: 3, scope: !805)
!815 = !DILocation(line: 80, column: 21, scope: !755)
!816 = !DILocation(line: 80, column: 36, scope: !755)
!817 = !DILocation(line: 80, column: 9, scope: !755)
!818 = !DILocation(line: 80, column: 2, scope: !755)
!819 = !DILocation(line: 81, column: 1, scope: !755)
!820 = distinct !DISubprogram(name: "expando_hostname", scope: !676, file: !676, line: 84, type: !695, isLocal: true, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !681)
!821 = !DILocalVariable(name: "server", arg: 1, scope: !820, file: !676, line: 84, type: !365)
!822 = !DILocation(line: 84, column: 43, scope: !820)
!823 = !DILocalVariable(name: "item", arg: 2, scope: !820, file: !676, line: 84, type: !44)
!824 = !DILocation(line: 84, column: 57, scope: !820)
!825 = !DILocalVariable(name: "free_ret", arg: 3, scope: !820, file: !676, line: 84, type: !697)
!826 = !DILocation(line: 84, column: 68, scope: !820)
!827 = !DILocalVariable(name: "ircserver", scope: !820, file: !676, line: 86, type: !52)
!828 = !DILocation(line: 86, column: 18, scope: !820)
!829 = !DILocalVariable(name: "hostname", scope: !820, file: !676, line: 87, type: !767)
!830 = !DILocation(line: 87, column: 7, scope: !820)
!831 = !DILocalVariable(name: "list", scope: !820, file: !676, line: 88, type: !467)
!832 = !DILocation(line: 88, column: 9, scope: !820)
!833 = !DILocalVariable(name: "hostname_split", scope: !820, file: !676, line: 89, type: !73)
!834 = !DILocation(line: 89, column: 8, scope: !820)
!835 = !DILocation(line: 91, column: 93, scope: !820)
!836 = !DILocation(line: 91, column: 75, scope: !820)
!837 = !DILocation(line: 91, column: 60, scope: !820)
!838 = !DILocation(line: 91, column: 59, scope: !820)
!839 = !DILocation(line: 91, column: 34, scope: !840)
!840 = !DILexicalBlockFile(scope: !820, file: !676, discriminator: 1)
!841 = !DILocation(line: 91, column: 15, scope: !820)
!842 = !DILocation(line: 91, column: 12, scope: !820)
!843 = !DILocation(line: 93, column: 3, scope: !820)
!844 = !DILocation(line: 93, column: 12, scope: !820)
!845 = !DILocation(line: 96, column: 6, scope: !846)
!846 = distinct !DILexicalBlock(scope: !820, file: !676, line: 96, column: 6)
!847 = !DILocation(line: 96, column: 16, scope: !846)
!848 = !DILocation(line: 96, column: 23, scope: !846)
!849 = !DILocation(line: 96, column: 26, scope: !850)
!850 = !DILexicalBlockFile(scope: !846, file: !676, discriminator: 1)
!851 = !DILocation(line: 96, column: 37, scope: !850)
!852 = !DILocation(line: 96, column: 46, scope: !850)
!853 = !DILocation(line: 96, column: 6, scope: !850)
!854 = !DILocation(line: 97, column: 21, scope: !855)
!855 = distinct !DILexicalBlock(scope: !846, file: !676, line: 96, column: 55)
!856 = !DILocation(line: 97, column: 32, scope: !855)
!857 = !DILocation(line: 97, column: 10, scope: !855)
!858 = !DILocation(line: 97, column: 8, scope: !855)
!859 = !DILocation(line: 98, column: 29, scope: !855)
!860 = !DILocation(line: 98, column: 20, scope: !855)
!861 = !DILocation(line: 98, column: 18, scope: !855)
!862 = !DILocation(line: 99, column: 14, scope: !855)
!863 = !DILocation(line: 99, column: 3, scope: !855)
!864 = !DILocation(line: 100, column: 10, scope: !855)
!865 = !DILocation(line: 100, column: 3, scope: !855)
!866 = !DILocation(line: 104, column: 18, scope: !867)
!867 = distinct !DILexicalBlock(scope: !820, file: !676, line: 104, column: 6)
!868 = !DILocation(line: 104, column: 6, scope: !867)
!869 = !DILocation(line: 104, column: 46, scope: !867)
!870 = !DILocation(line: 104, column: 51, scope: !867)
!871 = !DILocation(line: 104, column: 54, scope: !872)
!872 = !DILexicalBlockFile(scope: !867, file: !676, discriminator: 1)
!873 = !DILocation(line: 104, column: 64, scope: !872)
!874 = !DILocation(line: 104, column: 6, scope: !872)
!875 = !DILocation(line: 105, column: 10, scope: !867)
!876 = !DILocation(line: 105, column: 3, scope: !867)
!877 = !DILocation(line: 106, column: 18, scope: !820)
!878 = !DILocation(line: 106, column: 9, scope: !820)
!879 = !DILocation(line: 106, column: 2, scope: !820)
!880 = !DILocation(line: 107, column: 1, scope: !820)
!881 = distinct !DISubprogram(name: "expando_usermode", scope: !676, file: !676, line: 110, type: !695, isLocal: true, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !681)
!882 = !DILocalVariable(name: "server", arg: 1, scope: !881, file: !676, line: 110, type: !365)
!883 = !DILocation(line: 110, column: 43, scope: !881)
!884 = !DILocalVariable(name: "item", arg: 2, scope: !881, file: !676, line: 110, type: !44)
!885 = !DILocation(line: 110, column: 57, scope: !881)
!886 = !DILocalVariable(name: "free_ret", arg: 3, scope: !881, file: !676, line: 110, type: !697)
!887 = !DILocation(line: 110, column: 68, scope: !881)
!888 = !DILocation(line: 112, column: 89, scope: !881)
!889 = !DILocation(line: 112, column: 71, scope: !881)
!890 = !DILocation(line: 112, column: 56, scope: !881)
!891 = !DILocation(line: 112, column: 55, scope: !881)
!892 = !DILocation(line: 112, column: 30, scope: !893)
!893 = !DILexicalBlockFile(scope: !881, file: !676, discriminator: 6)
!894 = !DILocation(line: 112, column: 11, scope: !881)
!895 = !DILocation(line: 112, column: 9, scope: !881)
!896 = !DILocation(line: 112, column: 10, scope: !897)
!897 = !DILexicalBlockFile(scope: !881, file: !676, discriminator: 1)
!898 = !DILocation(line: 112, column: 9, scope: !899)
!899 = !DILexicalBlockFile(scope: !881, file: !676, discriminator: 2)
!900 = !DILocation(line: 112, column: 115, scope: !901)
!901 = !DILexicalBlockFile(scope: !881, file: !676, discriminator: 3)
!902 = !DILocation(line: 112, column: 97, scope: !901)
!903 = !DILocation(line: 112, column: 82, scope: !901)
!904 = !DILocation(line: 112, column: 81, scope: !901)
!905 = !DILocation(line: 112, column: 56, scope: !906)
!906 = !DILexicalBlockFile(scope: !901, file: !676, discriminator: 7)
!907 = !DILocation(line: 112, column: 37, scope: !901)
!908 = !DILocation(line: 112, column: 43, scope: !901)
!909 = !DILocation(line: 112, column: 9, scope: !901)
!910 = !DILocation(line: 112, column: 9, scope: !911)
!911 = !DILexicalBlockFile(scope: !881, file: !676, discriminator: 4)
!912 = !DILocation(line: 112, column: 9, scope: !913)
!913 = !DILexicalBlockFile(scope: !881, file: !676, discriminator: 5)
!914 = !DILocation(line: 112, column: 2, scope: !913)
!915 = distinct !DISubprogram(name: "expando_cumode", scope: !676, file: !676, line: 116, type: !695, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !681)
!916 = !DILocalVariable(name: "server", arg: 1, scope: !915, file: !676, line: 116, type: !365)
!917 = !DILocation(line: 116, column: 41, scope: !915)
!918 = !DILocalVariable(name: "item", arg: 2, scope: !915, file: !676, line: 116, type: !44)
!919 = !DILocation(line: 116, column: 55, scope: !915)
!920 = !DILocalVariable(name: "free_ret", arg: 3, scope: !915, file: !676, line: 116, type: !697)
!921 = !DILocation(line: 116, column: 66, scope: !915)
!922 = !DILocation(line: 118, column: 95, scope: !923)
!923 = distinct !DILexicalBlock(scope: !915, file: !676, line: 118, column: 6)
!924 = !DILocation(line: 118, column: 70, scope: !923)
!925 = !DILocation(line: 118, column: 54, scope: !923)
!926 = !DILocation(line: 118, column: 53, scope: !923)
!927 = !DILocation(line: 118, column: 28, scope: !928)
!928 = !DILexicalBlockFile(scope: !923, file: !676, discriminator: 4)
!929 = !DILocation(line: 118, column: 8, scope: !923)
!930 = !DILocation(line: 118, column: 31, scope: !923)
!931 = !DILocation(line: 118, column: 7, scope: !932)
!932 = !DILexicalBlockFile(scope: !923, file: !676, discriminator: 1)
!933 = !DILocation(line: 118, column: 31, scope: !934)
!934 = !DILexicalBlockFile(scope: !923, file: !676, discriminator: 2)
!935 = !DILocation(line: 118, column: 76, scope: !936)
!936 = !DILexicalBlockFile(scope: !923, file: !676, discriminator: 3)
!937 = !DILocation(line: 118, column: 51, scope: !936)
!938 = !DILocation(line: 118, column: 35, scope: !936)
!939 = !DILocation(line: 118, column: 64, scope: !936)
!940 = !DILocation(line: 118, column: 34, scope: !936)
!941 = !DILocation(line: 118, column: 6, scope: !936)
!942 = !DILocalVariable(name: "prefix", scope: !943, file: !676, line: 119, type: !74)
!943 = distinct !DILexicalBlock(scope: !923, file: !676, line: 118, column: 73)
!944 = !DILocation(line: 119, column: 8, scope: !943)
!945 = !DILocation(line: 119, column: 91, scope: !943)
!946 = !DILocation(line: 119, column: 66, scope: !943)
!947 = !DILocation(line: 119, column: 50, scope: !943)
!948 = !DILocation(line: 119, column: 51, scope: !943)
!949 = !DILocation(line: 119, column: 49, scope: !943)
!950 = !DILocation(line: 119, column: 31, scope: !951)
!951 = !DILexicalBlockFile(scope: !943, file: !676, discriminator: 1)
!952 = !DILocation(line: 119, column: 18, scope: !943)
!953 = !DILocation(line: 119, column: 28, scope: !943)
!954 = !DILocation(line: 119, column: 17, scope: !943)
!955 = !DILocation(line: 120, column: 7, scope: !956)
!956 = distinct !DILexicalBlock(scope: !943, file: !676, line: 120, column: 7)
!957 = !DILocation(line: 120, column: 14, scope: !956)
!958 = !DILocation(line: 120, column: 7, scope: !943)
!959 = !DILocalVariable(name: "cumode", scope: !960, file: !676, line: 121, type: !73)
!960 = distinct !DILexicalBlock(scope: !956, file: !676, line: 120, column: 23)
!961 = !DILocation(line: 121, column: 10, scope: !960)
!962 = !DILocation(line: 121, column: 19, scope: !960)
!963 = !DILocation(line: 122, column: 16, scope: !960)
!964 = !DILocation(line: 122, column: 4, scope: !960)
!965 = !DILocation(line: 122, column: 14, scope: !960)
!966 = !DILocation(line: 123, column: 4, scope: !960)
!967 = !DILocation(line: 123, column: 14, scope: !960)
!968 = !DILocation(line: 124, column: 5, scope: !960)
!969 = !DILocation(line: 124, column: 14, scope: !960)
!970 = !DILocation(line: 125, column: 11, scope: !960)
!971 = !DILocation(line: 125, column: 4, scope: !960)
!972 = !DILocation(line: 127, column: 2, scope: !943)
!973 = !DILocation(line: 128, column: 2, scope: !915)
!974 = !DILocation(line: 129, column: 1, scope: !915)
!975 = distinct !DISubprogram(name: "expando_cumode_space", scope: !676, file: !676, line: 133, type: !695, isLocal: true, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !681)
!976 = !DILocalVariable(name: "server", arg: 1, scope: !975, file: !676, line: 133, type: !365)
!977 = !DILocation(line: 133, column: 47, scope: !975)
!978 = !DILocalVariable(name: "item", arg: 2, scope: !975, file: !676, line: 133, type: !44)
!979 = !DILocation(line: 133, column: 61, scope: !975)
!980 = !DILocalVariable(name: "free_ret", arg: 3, scope: !975, file: !676, line: 133, type: !697)
!981 = !DILocation(line: 133, column: 72, scope: !975)
!982 = !DILocalVariable(name: "ret", scope: !975, file: !676, line: 135, type: !73)
!983 = !DILocation(line: 135, column: 8, scope: !975)
!984 = !DILocation(line: 137, column: 87, scope: !985)
!985 = distinct !DILexicalBlock(scope: !975, file: !676, line: 137, column: 6)
!986 = !DILocation(line: 137, column: 69, scope: !985)
!987 = !DILocation(line: 137, column: 54, scope: !985)
!988 = !DILocation(line: 137, column: 53, scope: !985)
!989 = !DILocation(line: 137, column: 28, scope: !990)
!990 = !DILexicalBlockFile(scope: !985, file: !676, discriminator: 3)
!991 = !DILocation(line: 137, column: 9, scope: !985)
!992 = !DILocation(line: 137, column: 6, scope: !975)
!993 = !DILocation(line: 137, column: 8, scope: !994)
!994 = !DILexicalBlockFile(scope: !985, file: !676, discriminator: 1)
!995 = !DILocation(line: 137, column: 6, scope: !996)
!996 = !DILexicalBlockFile(scope: !975, file: !676, discriminator: 2)
!997 = !DILocation(line: 138, column: 17, scope: !985)
!998 = !DILocation(line: 140, column: 23, scope: !975)
!999 = !DILocation(line: 140, column: 31, scope: !975)
!1000 = !DILocation(line: 140, column: 37, scope: !975)
!1001 = !DILocation(line: 140, column: 8, scope: !975)
!1002 = !DILocation(line: 140, column: 6, scope: !975)
!1003 = !DILocation(line: 141, column: 10, scope: !975)
!1004 = !DILocation(line: 141, column: 9, scope: !975)
!1005 = !DILocation(line: 141, column: 14, scope: !975)
!1006 = !DILocation(line: 141, column: 9, scope: !1007)
!1007 = !DILexicalBlockFile(scope: !975, file: !676, discriminator: 1)
!1008 = !DILocation(line: 141, column: 30, scope: !996)
!1009 = !DILocation(line: 141, column: 9, scope: !996)
!1010 = !DILocation(line: 141, column: 9, scope: !1011)
!1011 = !DILexicalBlockFile(scope: !975, file: !676, discriminator: 3)
!1012 = !DILocation(line: 141, column: 2, scope: !1011)
!1013 = !DILocation(line: 142, column: 1, scope: !975)
!1014 = distinct !DISubprogram(name: "event_join", scope: !676, file: !676, line: 144, type: !1015, isLocal: true, isDefinition: true, scopeLine: 146, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !681)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{null, !52, !453, !453, !453}
!1017 = !DILocalVariable(name: "server", arg: 1, scope: !1014, file: !676, line: 144, type: !52)
!1018 = !DILocation(line: 144, column: 40, scope: !1014)
!1019 = !DILocalVariable(name: "data", arg: 2, scope: !1014, file: !676, line: 144, type: !453)
!1020 = !DILocation(line: 144, column: 60, scope: !1014)
!1021 = !DILocalVariable(name: "nick", arg: 3, scope: !1014, file: !676, line: 145, type: !453)
!1022 = !DILocation(line: 145, column: 22, scope: !1014)
!1023 = !DILocalVariable(name: "address", arg: 4, scope: !1014, file: !676, line: 145, type: !453)
!1024 = !DILocation(line: 145, column: 40, scope: !1014)
!1025 = !DILocation(line: 147, column: 2, scope: !1014)
!1026 = distinct !{!1026, !1025}
!1027 = !DILocation(line: 147, column: 10, scope: !1028)
!1028 = !DILexicalBlockFile(scope: !1029, file: !676, discriminator: 1)
!1029 = distinct !DILexicalBlock(scope: !1030, file: !676, line: 147, column: 10)
!1030 = distinct !DILexicalBlock(scope: !1014, file: !676, line: 147, column: 4)
!1031 = !DILocation(line: 147, column: 15, scope: !1028)
!1032 = !DILocation(line: 147, column: 5, scope: !1033)
!1033 = !DILexicalBlockFile(scope: !1034, file: !676, discriminator: 2)
!1034 = distinct !DILexicalBlock(scope: !1029, file: !676, line: 147, column: 3)
!1035 = !DILocation(line: 147, column: 14, scope: !1036)
!1036 = !DILexicalBlockFile(scope: !1037, file: !676, discriminator: 3)
!1037 = distinct !DILexicalBlock(scope: !1029, file: !676, line: 147, column: 12)
!1038 = !DILocation(line: 147, column: 99, scope: !1036)
!1039 = !DILocation(line: 147, column: 110, scope: !1040)
!1040 = !DILexicalBlockFile(scope: !1030, file: !676, discriminator: 4)
!1041 = !DILocation(line: 149, column: 25, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1014, file: !676, line: 149, column: 6)
!1043 = !DILocation(line: 149, column: 31, scope: !1042)
!1044 = !DILocation(line: 149, column: 39, scope: !1042)
!1045 = !DILocation(line: 149, column: 6, scope: !1042)
!1046 = !DILocation(line: 149, column: 45, scope: !1042)
!1047 = !DILocation(line: 149, column: 6, scope: !1014)
!1048 = !DILocation(line: 150, column: 10, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1042, file: !676, line: 149, column: 51)
!1050 = !DILocation(line: 150, column: 3, scope: !1049)
!1051 = !DILocation(line: 151, column: 24, scope: !1049)
!1052 = !DILocation(line: 151, column: 15, scope: !1049)
!1053 = !DILocation(line: 151, column: 13, scope: !1049)
!1054 = !DILocation(line: 152, column: 2, scope: !1049)
!1055 = !DILocation(line: 153, column: 1, scope: !1014)
!1056 = distinct !DISubprogram(name: "irc_expandos_deinit", scope: !676, file: !676, line: 192, type: !215, isLocal: false, isDefinition: true, scopeLine: 193, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !681)
!1057 = !DILocation(line: 194, column: 9, scope: !1056)
!1058 = !DILocation(line: 194, column: 2, scope: !1056)
!1059 = !DILocation(line: 196, column: 2, scope: !1056)
!1060 = !DILocation(line: 197, column: 2, scope: !1056)
!1061 = !DILocation(line: 198, column: 2, scope: !1056)
!1062 = !DILocation(line: 199, column: 2, scope: !1056)
!1063 = !DILocation(line: 200, column: 2, scope: !1056)
!1064 = !DILocation(line: 201, column: 2, scope: !1056)
!1065 = !DILocation(line: 202, column: 2, scope: !1056)
!1066 = !DILocation(line: 204, column: 2, scope: !1056)
!1067 = !DILocation(line: 205, column: 1, scope: !1056)
