; ModuleID = './line310-fe-ctcp.o.i'
source_filename = "./line310-fe-ctcp.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IRC_SERVER_REC = type opaque
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
%struct._WI_ITEM_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, {}*, i8* (%struct._WI_ITEM_REC*)* }
%struct._NICK_REC = type opaque
%struct._QUERY_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, i8 }

@.str = private unnamed_addr constant [14 x i8] c"fe-common/irc\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"default ctcp msg\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"ctcp msg ping\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"ctcp msg version\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"ctcp msg time\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"ctcp msg userinfo\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"ctcp msg clientinfo\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"default ctcp reply\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"ctcp reply ping\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"message irc ctcp\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"PING\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"VERSION\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"TIME\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"USERINFO\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"CLIENTINFO\00", align 1
@__func__.ctcp_default_reply = private unnamed_addr constant [19 x i8] c"ctcp_default_reply\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"data != NULL\00", align 1
@__func__.ctcp_ping_reply = private unnamed_addr constant [16 x i8] c"ctcp_ping_reply\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"%ld %ld\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"PING \00", align 1

; Function Attrs: nounwind uwtable
define void @fe_ctcp_init() #0 !dbg !630 {
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*)* @ctcp_default_msg to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !633
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*)* @ctcp_ping_msg to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !634
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*)* @ctcp_version_msg to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !635
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*)* @ctcp_time_msg to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !636
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*)* @ctcp_userinfo_msg to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !637
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*)* @ctcp_clientinfo_msg to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !638
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*)* @ctcp_default_reply to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !639
  call void @signal_add_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*)* @ctcp_ping_reply to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !640
  ret void, !dbg !641
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @ctcp_default_msg(%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*) #0 !dbg !642 {
  %6 = alloca %struct._IRC_SERVER_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %6, metadata !649, metadata !650), !dbg !651
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !652, metadata !650), !dbg !653
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !654, metadata !650), !dbg !655
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !656, metadata !650), !dbg !657
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !658, metadata !650), !dbg !659
  call void @llvm.dbg.declare(metadata i8** %11, metadata !660, metadata !650), !dbg !661
  call void @llvm.dbg.declare(metadata i8** %12, metadata !662, metadata !650), !dbg !663
  %13 = load i8*, i8** %7, align 8, !dbg !664
  %14 = call i8* @strchr(i8* %13, i32 32) #5, !dbg !665
  store i8* %14, i8** %11, align 8, !dbg !666
  %15 = load i8*, i8** %11, align 8, !dbg !667
  %16 = icmp eq i8* %15, null, !dbg !669
  br i1 %16, label %17, label %20, !dbg !670

; <label>:17:                                     ; preds = %5
  %18 = load i8*, i8** %7, align 8, !dbg !671
  %19 = call noalias i8* @g_strdup(i8* %18), !dbg !673
  store i8* %19, i8** %12, align 8, !dbg !674
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0), i8** %7, align 8, !dbg !675
  br label %32, !dbg !676

; <label>:20:                                     ; preds = %5
  %21 = load i8*, i8** %7, align 8, !dbg !677
  %22 = load i8*, i8** %11, align 8, !dbg !679
  %23 = load i8*, i8** %7, align 8, !dbg !680
  %24 = ptrtoint i8* %22 to i64, !dbg !681
  %25 = ptrtoint i8* %23 to i64, !dbg !681
  %26 = sub i64 %24, %25, !dbg !681
  %27 = trunc i64 %26 to i32, !dbg !682
  %28 = sext i32 %27 to i64, !dbg !682
  %29 = call noalias i8* @g_strndup(i8* %21, i64 %28), !dbg !683
  store i8* %29, i8** %12, align 8, !dbg !684
  %30 = load i8*, i8** %11, align 8, !dbg !685
  %31 = getelementptr inbounds i8, i8* %30, i64 1, !dbg !686
  store i8* %31, i8** %7, align 8, !dbg !687
  br label %32

; <label>:32:                                     ; preds = %20, %17
  %33 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !688
  %34 = bitcast %struct._IRC_SERVER_REC* %33 to i8*, !dbg !688
  %35 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !689
  %36 = bitcast %struct._IRC_SERVER_REC* %35 to i8*, !dbg !689
  %37 = call i8* @module_check_cast(i8* %36, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !690
  %38 = bitcast i8* %37 to %struct._SERVER_REC*, !dbg !691
  %39 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %38, i32 0, i32 27, !dbg !692
  %40 = load i32 (%struct._SERVER_REC*, i8*)*, i32 (%struct._SERVER_REC*, i8*)** %39, align 8, !dbg !692
  %41 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !693
  %42 = bitcast %struct._IRC_SERVER_REC* %41 to i8*, !dbg !693
  %43 = call i8* @module_check_cast(i8* %42, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !694
  %44 = bitcast i8* %43 to %struct._SERVER_REC*, !dbg !696
  %45 = load i8*, i8** %10, align 8, !dbg !697
  %46 = call i32 %40(%struct._SERVER_REC* %44, i8* %45), !dbg !698
  %47 = icmp ne i32 %46, 0, !dbg !700
  br i1 %47, label %48, label %50, !dbg !701

; <label>:48:                                     ; preds = %32
  %49 = load i8*, i8** %10, align 8, !dbg !702
  br label %52, !dbg !704

; <label>:50:                                     ; preds = %32
  %51 = load i8*, i8** %8, align 8, !dbg !705
  br label %52, !dbg !707

; <label>:52:                                     ; preds = %50, %48
  %53 = phi i8* [ %49, %48 ], [ %51, %50 ], !dbg !708
  %54 = load i8*, i8** %8, align 8, !dbg !710
  %55 = load i8*, i8** %9, align 8, !dbg !711
  %56 = load i8*, i8** %12, align 8, !dbg !712
  %57 = load i8*, i8** %7, align 8, !dbg !713
  %58 = load i8*, i8** %10, align 8, !dbg !714
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %34, i8* %53, i32 32, i32 105, i8* %54, i8* %55, i8* %56, i8* %57, i8* %58), !dbg !715
  %59 = load i8*, i8** %12, align 8, !dbg !716
  call void @g_free(i8* %59), !dbg !717
  ret void, !dbg !718
}

; Function Attrs: nounwind uwtable
define internal void @ctcp_ping_msg(%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*) #0 !dbg !719 {
  %6 = alloca %struct._IRC_SERVER_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %6, metadata !720, metadata !650), !dbg !721
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !722, metadata !650), !dbg !723
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !724, metadata !650), !dbg !725
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !726, metadata !650), !dbg !727
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !728, metadata !650), !dbg !729
  %11 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !730
  %12 = load i8*, i8** %7, align 8, !dbg !731
  %13 = load i8*, i8** %8, align 8, !dbg !732
  %14 = load i8*, i8** %9, align 8, !dbg !733
  %15 = load i8*, i8** %10, align 8, !dbg !734
  %16 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i32 6, %struct._IRC_SERVER_REC* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* %12, i8* %13, i8* %14, i8* %15), !dbg !735
  ret void, !dbg !736
}

; Function Attrs: nounwind uwtable
define internal void @ctcp_version_msg(%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*) #0 !dbg !737 {
  %6 = alloca %struct._IRC_SERVER_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %6, metadata !738, metadata !650), !dbg !739
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !740, metadata !650), !dbg !741
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !742, metadata !650), !dbg !743
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !744, metadata !650), !dbg !745
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !746, metadata !650), !dbg !747
  %11 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !748
  %12 = load i8*, i8** %7, align 8, !dbg !749
  %13 = load i8*, i8** %8, align 8, !dbg !750
  %14 = load i8*, i8** %9, align 8, !dbg !751
  %15 = load i8*, i8** %10, align 8, !dbg !752
  %16 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i32 6, %struct._IRC_SERVER_REC* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8* %12, i8* %13, i8* %14, i8* %15), !dbg !753
  ret void, !dbg !754
}

; Function Attrs: nounwind uwtable
define internal void @ctcp_time_msg(%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*) #0 !dbg !755 {
  %6 = alloca %struct._IRC_SERVER_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %6, metadata !756, metadata !650), !dbg !757
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !758, metadata !650), !dbg !759
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !760, metadata !650), !dbg !761
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !762, metadata !650), !dbg !763
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !764, metadata !650), !dbg !765
  %11 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !766
  %12 = load i8*, i8** %7, align 8, !dbg !767
  %13 = load i8*, i8** %8, align 8, !dbg !768
  %14 = load i8*, i8** %9, align 8, !dbg !769
  %15 = load i8*, i8** %10, align 8, !dbg !770
  %16 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i32 6, %struct._IRC_SERVER_REC* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* %12, i8* %13, i8* %14, i8* %15), !dbg !771
  ret void, !dbg !772
}

; Function Attrs: nounwind uwtable
define internal void @ctcp_userinfo_msg(%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*) #0 !dbg !773 {
  %6 = alloca %struct._IRC_SERVER_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %6, metadata !774, metadata !650), !dbg !775
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !776, metadata !650), !dbg !777
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !778, metadata !650), !dbg !779
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !780, metadata !650), !dbg !781
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !782, metadata !650), !dbg !783
  %11 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !784
  %12 = load i8*, i8** %7, align 8, !dbg !785
  %13 = load i8*, i8** %8, align 8, !dbg !786
  %14 = load i8*, i8** %9, align 8, !dbg !787
  %15 = load i8*, i8** %10, align 8, !dbg !788
  %16 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i32 6, %struct._IRC_SERVER_REC* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* %12, i8* %13, i8* %14, i8* %15), !dbg !789
  ret void, !dbg !790
}

; Function Attrs: nounwind uwtable
define internal void @ctcp_clientinfo_msg(%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*) #0 !dbg !791 {
  %6 = alloca %struct._IRC_SERVER_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %6, metadata !792, metadata !650), !dbg !793
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !794, metadata !650), !dbg !795
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !796, metadata !650), !dbg !797
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !798, metadata !650), !dbg !799
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !800, metadata !650), !dbg !801
  %11 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !802
  %12 = load i8*, i8** %7, align 8, !dbg !803
  %13 = load i8*, i8** %8, align 8, !dbg !804
  %14 = load i8*, i8** %9, align 8, !dbg !805
  %15 = load i8*, i8** %10, align 8, !dbg !806
  %16 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0), i32 6, %struct._IRC_SERVER_REC* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), i8* %12, i8* %13, i8* %14, i8* %15), !dbg !807
  ret void, !dbg !808
}

; Function Attrs: nounwind uwtable
define internal void @ctcp_default_reply(%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*) #0 !dbg !809 {
  %6 = alloca %struct._IRC_SERVER_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %6, metadata !810, metadata !650), !dbg !811
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !812, metadata !650), !dbg !813
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !814, metadata !650), !dbg !815
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !816, metadata !650), !dbg !817
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !818, metadata !650), !dbg !819
  call void @llvm.dbg.declare(metadata i8** %11, metadata !820, metadata !650), !dbg !821
  call void @llvm.dbg.declare(metadata i8** %12, metadata !822, metadata !650), !dbg !823
  call void @llvm.dbg.declare(metadata i8** %13, metadata !824, metadata !650), !dbg !825
  br label %14, !dbg !826, !llvm.loop !827

; <label>:14:                                     ; preds = %5
  %15 = load i8*, i8** %7, align 8, !dbg !828
  %16 = icmp ne i8* %15, null, !dbg !832
  br i1 %16, label %17, label %18, !dbg !828

; <label>:17:                                     ; preds = %14
  br label %19, !dbg !833

; <label>:18:                                     ; preds = %14
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.ctcp_default_reply, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0)), !dbg !836
  br label %73, !dbg !839

; <label>:19:                                     ; preds = %17
  br label %20, !dbg !840

; <label>:20:                                     ; preds = %19
  %21 = load i8*, i8** %7, align 8, !dbg !842
  %22 = call noalias i8* @g_strdup(i8* %21), !dbg !843
  store i8* %22, i8** %12, align 8, !dbg !844
  %23 = load i8*, i8** %12, align 8, !dbg !845
  %24 = call i8* @strchr(i8* %23, i32 32) #5, !dbg !846
  store i8* %24, i8** %13, align 8, !dbg !847
  %25 = load i8*, i8** %13, align 8, !dbg !848
  %26 = icmp eq i8* %25, null, !dbg !850
  br i1 %26, label %27, label %28, !dbg !851

; <label>:27:                                     ; preds = %20
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0), i8** %11, align 8, !dbg !852
  br label %32, !dbg !853

; <label>:28:                                     ; preds = %20
  %29 = load i8*, i8** %13, align 8, !dbg !854
  store i8 0, i8* %29, align 1, !dbg !856
  %30 = load i8*, i8** %13, align 8, !dbg !857
  %31 = getelementptr inbounds i8, i8* %30, i64 1, !dbg !858
  store i8* %31, i8** %11, align 8, !dbg !859
  br label %32

; <label>:32:                                     ; preds = %28, %27
  %33 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !860
  %34 = bitcast %struct._IRC_SERVER_REC* %33 to i8*, !dbg !860
  %35 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !861
  %36 = bitcast %struct._IRC_SERVER_REC* %35 to i8*, !dbg !861
  %37 = call i8* @module_check_cast(i8* %36, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !862
  %38 = bitcast i8* %37 to %struct._SERVER_REC*, !dbg !863
  %39 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %38, i32 0, i32 27, !dbg !864
  %40 = load i32 (%struct._SERVER_REC*, i8*)*, i32 (%struct._SERVER_REC*, i8*)** %39, align 8, !dbg !864
  %41 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !865
  %42 = bitcast %struct._IRC_SERVER_REC* %41 to i8*, !dbg !865
  %43 = call i8* @module_check_cast(i8* %42, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !866
  %44 = bitcast i8* %43 to %struct._SERVER_REC*, !dbg !868
  %45 = load i8*, i8** %10, align 8, !dbg !869
  %46 = call i32 %40(%struct._SERVER_REC* %44, i8* %45), !dbg !870
  %47 = icmp ne i32 %46, 0, !dbg !872
  br i1 %47, label %48, label %50, !dbg !873

; <label>:48:                                     ; preds = %32
  %49 = load i8*, i8** %10, align 8, !dbg !874
  br label %52, !dbg !876

; <label>:50:                                     ; preds = %32
  %51 = load i8*, i8** %8, align 8, !dbg !877
  br label %52, !dbg !879

; <label>:52:                                     ; preds = %50, %48
  %53 = phi i8* [ %49, %48 ], [ %51, %50 ], !dbg !880
  %54 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !882
  %55 = bitcast %struct._IRC_SERVER_REC* %54 to i8*, !dbg !882
  %56 = call i8* @module_check_cast(i8* %55, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !883
  %57 = bitcast i8* %56 to %struct._SERVER_REC*, !dbg !884
  %58 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %57, i32 0, i32 27, !dbg !885
  %59 = load i32 (%struct._SERVER_REC*, i8*)*, i32 (%struct._SERVER_REC*, i8*)** %58, align 8, !dbg !885
  %60 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !884
  %61 = bitcast %struct._IRC_SERVER_REC* %60 to i8*, !dbg !884
  %62 = call i8* @module_check_cast(i8* %61, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !886
  %63 = bitcast i8* %62 to %struct._SERVER_REC*, !dbg !888
  %64 = load i8*, i8** %10, align 8, !dbg !889
  %65 = call i32 %59(%struct._SERVER_REC* %63, i8* %64), !dbg !890
  %66 = icmp ne i32 %65, 0, !dbg !892
  %67 = select i1 %66, i32 102, i32 101, !dbg !892
  %68 = load i8*, i8** %12, align 8, !dbg !893
  %69 = load i8*, i8** %8, align 8, !dbg !894
  %70 = load i8*, i8** %11, align 8, !dbg !895
  %71 = load i8*, i8** %10, align 8, !dbg !896
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %34, i8* %53, i32 32, i32 %67, i8* %68, i8* %69, i8* %70, i8* %71), !dbg !897
  %72 = load i8*, i8** %12, align 8, !dbg !899
  call void @g_free(i8* %72), !dbg !900
  br label %73, !dbg !901

; <label>:73:                                     ; preds = %52, %18
  ret void, !dbg !902
}

; Function Attrs: nounwind uwtable
define internal void @ctcp_ping_reply(%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*) #0 !dbg !903 {
  %6 = alloca %struct._IRC_SERVER_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct._GTimeVal, align 8
  %12 = alloca %struct._GTimeVal, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %6, metadata !904, metadata !650), !dbg !905
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !906, metadata !650), !dbg !907
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !908, metadata !650), !dbg !909
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !910, metadata !650), !dbg !911
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !912, metadata !650), !dbg !913
  call void @llvm.dbg.declare(metadata %struct._GTimeVal* %11, metadata !914, metadata !650), !dbg !915
  call void @llvm.dbg.declare(metadata %struct._GTimeVal* %12, metadata !916, metadata !650), !dbg !917
  call void @llvm.dbg.declare(metadata i64* %13, metadata !918, metadata !650), !dbg !919
  br label %15, !dbg !920, !llvm.loop !921

; <label>:15:                                     ; preds = %5
  %16 = load i8*, i8** %7, align 8, !dbg !922
  %17 = icmp ne i8* %16, null, !dbg !926
  br i1 %17, label %18, label %19, !dbg !922

; <label>:18:                                     ; preds = %15
  br label %20, !dbg !927

; <label>:19:                                     ; preds = %15
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.ctcp_ping_reply, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0)), !dbg !930
  br label %64, !dbg !933

; <label>:20:                                     ; preds = %18
  br label %21, !dbg !934

; <label>:21:                                     ; preds = %20
  %22 = load i8*, i8** %7, align 8, !dbg !936
  %23 = getelementptr inbounds %struct._GTimeVal, %struct._GTimeVal* %12, i32 0, i32 0, !dbg !938
  %24 = getelementptr inbounds %struct._GTimeVal, %struct._GTimeVal* %12, i32 0, i32 1, !dbg !939
  %25 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i64* %23, i64* %24) #6, !dbg !940
  %26 = icmp slt i32 %25, 1, !dbg !941
  br i1 %26, label %27, label %36, !dbg !942

; <label>:27:                                     ; preds = %21
  call void @llvm.dbg.declare(metadata i8** %14, metadata !943, metadata !650), !dbg !945
  %28 = load i8*, i8** %7, align 8, !dbg !946
  %29 = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* %28, i8* null), !dbg !947
  store i8* %29, i8** %14, align 8, !dbg !945
  %30 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !948
  %31 = load i8*, i8** %14, align 8, !dbg !949
  %32 = load i8*, i8** %8, align 8, !dbg !950
  %33 = load i8*, i8** %9, align 8, !dbg !951
  %34 = load i8*, i8** %10, align 8, !dbg !952
  call void @ctcp_default_reply(%struct._IRC_SERVER_REC* %30, i8* %31, i8* %32, i8* %33, i8* %34), !dbg !953
  %35 = load i8*, i8** %14, align 8, !dbg !954
  call void @g_free(i8* %35), !dbg !955
  br label %64, !dbg !956

; <label>:36:                                     ; preds = %21
  call void @g_get_current_time(%struct._GTimeVal* %11), !dbg !957
  %37 = call i64 @get_timeval_diff(%struct._GTimeVal* %11, %struct._GTimeVal* %12), !dbg !958
  store i64 %37, i64* %13, align 8, !dbg !959
  %38 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !960
  %39 = bitcast %struct._IRC_SERVER_REC* %38 to i8*, !dbg !960
  %40 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !961
  %41 = bitcast %struct._IRC_SERVER_REC* %40 to i8*, !dbg !961
  %42 = call i8* @module_check_cast(i8* %41, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !962
  %43 = bitcast i8* %42 to %struct._SERVER_REC*, !dbg !963
  %44 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %43, i32 0, i32 27, !dbg !964
  %45 = load i32 (%struct._SERVER_REC*, i8*)*, i32 (%struct._SERVER_REC*, i8*)** %44, align 8, !dbg !964
  %46 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !965
  %47 = bitcast %struct._IRC_SERVER_REC* %46 to i8*, !dbg !965
  %48 = call i8* @module_check_cast(i8* %47, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)), !dbg !966
  %49 = bitcast i8* %48 to %struct._SERVER_REC*, !dbg !968
  %50 = load i8*, i8** %10, align 8, !dbg !969
  %51 = call i32 %45(%struct._SERVER_REC* %49, i8* %50), !dbg !970
  %52 = icmp ne i32 %51, 0, !dbg !972
  br i1 %52, label %53, label %55, !dbg !973

; <label>:53:                                     ; preds = %36
  %54 = load i8*, i8** %10, align 8, !dbg !974
  br label %57, !dbg !976

; <label>:55:                                     ; preds = %36
  %56 = load i8*, i8** %8, align 8, !dbg !977
  br label %57, !dbg !979

; <label>:57:                                     ; preds = %55, %53
  %58 = phi i8* [ %54, %53 ], [ %56, %55 ], !dbg !980
  %59 = load i8*, i8** %8, align 8, !dbg !982
  %60 = load i64, i64* %13, align 8, !dbg !983
  %61 = sdiv i64 %60, 1000, !dbg !984
  %62 = load i64, i64* %13, align 8, !dbg !985
  %63 = srem i64 %62, 1000, !dbg !986
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* %39, i8* %58, i32 32, i32 103, i8* %59, i64 %61, i64 %63), !dbg !987
  br label %64, !dbg !988

; <label>:64:                                     ; preds = %57, %27, %19
  ret void, !dbg !989
}

; Function Attrs: nounwind uwtable
define void @fe_ctcp_deinit() #0 !dbg !990 {
  call void @signal_remove_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*)* @ctcp_default_msg to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !991
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*)* @ctcp_ping_msg to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !992
  call void @signal_remove_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*)* @ctcp_version_msg to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !993
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*)* @ctcp_time_msg to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !994
  call void @signal_remove_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*)* @ctcp_userinfo_msg to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !995
  call void @signal_remove_full(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*)* @ctcp_clientinfo_msg to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !996
  call void @signal_remove_full(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*)* @ctcp_default_reply to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !997
  call void @signal_remove_full(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*)* @ctcp_ping_reply to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !998
  ret void, !dbg !999
}

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

declare noalias i8* @g_strdup(i8*) #1

declare noalias i8* @g_strndup(i8*, i64) #1

declare void @printformat_module(i8*, i8*, i8*, i32, i32, ...) #1

declare i8* @module_check_cast(i8*, i32, i8*) #1

declare void @g_free(i8*) #1

declare i32 @signal_emit(i8*, i32, ...) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #4

declare noalias i8* @g_strconcat(i8*, ...) #1

declare void @g_get_current_time(%struct._GTimeVal*) #1

declare i64 @get_timeval_diff(%struct._GTimeVal*, %struct._GTimeVal*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!627, !628}
!llvm.ident = !{!629}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !192)
!1 = !DIFile(filename: "line310-fe-ctcp.o.i", directory: "/home/lichi/Desktop/irssi/task1")
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
!192 = !{!193, !200, !201, !202, !269, !501}
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !194, line: 9, baseType: !195)
!194 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64, align: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{null, !198, !198, !198, !198, !198, !198}
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64, align: 64)
!199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!201 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !204, line: 107, baseType: !205)
!204 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !206, line: 30, size: 2240, align: 64, elements: !207)
!206 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!207 = !{!208, !210, !211, !212, !446, !451, !452, !453, !454, !455, !456, !457, !458, !459, !463, !464, !468, !469, !470, !474, !479, !480, !481, !482, !483, !484, !485, !486, !493, !494, !495, !496, !497, !503, !507, !511, !515, !519, !524, !595, !622, !626}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !205, file: !209, line: 3, baseType: !201, size: 32, align: 32)
!209 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!210 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !205, file: !209, line: 4, baseType: !201, size: 32, align: 32, offset: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !205, file: !209, line: 6, baseType: !201, size: 32, align: 32, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !205, file: !209, line: 8, baseType: !213, size: 64, align: 64, offset: 128)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64, align: 64)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !204, line: 113, baseType: !215)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !206, line: 25, size: 1920, align: 64, elements: !216)
!216 = !{!217, !219, !220, !221, !224, !225, !226, !227, !228, !230, !231, !232, !233, !234, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !215, file: !218, line: 3, baseType: !201, size: 32, align: 32)
!218 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!219 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !215, file: !218, line: 4, baseType: !201, size: 32, align: 32, offset: 32)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !215, file: !218, line: 6, baseType: !201, size: 32, align: 32, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !215, file: !218, line: 9, baseType: !222, size: 64, align: 64, offset: 128)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64, align: 64)
!223 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !215, file: !218, line: 10, baseType: !201, size: 32, align: 32, offset: 192)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !215, file: !218, line: 11, baseType: !222, size: 64, align: 64, offset: 256)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !215, file: !218, line: 11, baseType: !222, size: 64, align: 64, offset: 320)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !215, file: !218, line: 11, baseType: !222, size: 64, align: 64, offset: 384)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !215, file: !218, line: 13, baseType: !229, size: 16, align: 16, offset: 448)
!229 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !215, file: !218, line: 14, baseType: !222, size: 64, align: 64, offset: 512)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !215, file: !218, line: 15, baseType: !222, size: 64, align: 64, offset: 576)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !215, file: !218, line: 16, baseType: !201, size: 32, align: 32, offset: 640)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !215, file: !218, line: 17, baseType: !222, size: 64, align: 64, offset: 704)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !215, file: !218, line: 19, baseType: !235, size: 64, align: 64, offset: 768)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64, align: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !204, line: 99, baseType: !237)
!237 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !204, line: 99, flags: DIFlagFwdDecl)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !215, file: !218, line: 19, baseType: !235, size: 64, align: 64, offset: 832)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !215, file: !218, line: 21, baseType: !222, size: 64, align: 64, offset: 896)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !215, file: !218, line: 22, baseType: !222, size: 64, align: 64, offset: 960)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !215, file: !218, line: 23, baseType: !222, size: 64, align: 64, offset: 1024)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !215, file: !218, line: 24, baseType: !222, size: 64, align: 64, offset: 1088)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !215, file: !218, line: 26, baseType: !222, size: 64, align: 64, offset: 1152)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !215, file: !218, line: 27, baseType: !222, size: 64, align: 64, offset: 1216)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !215, file: !218, line: 28, baseType: !222, size: 64, align: 64, offset: 1280)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !215, file: !218, line: 29, baseType: !222, size: 64, align: 64, offset: 1344)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !215, file: !218, line: 30, baseType: !222, size: 64, align: 64, offset: 1408)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !215, file: !218, line: 31, baseType: !222, size: 64, align: 64, offset: 1472)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !215, file: !218, line: 32, baseType: !222, size: 64, align: 64, offset: 1536)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !215, file: !218, line: 33, baseType: !222, size: 64, align: 64, offset: 1600)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !215, file: !218, line: 35, baseType: !252, size: 64, align: 64, offset: 1664)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64, align: 64)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !254)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !255)
!255 = !{!256, !259, !403, !404, !409, !410, !411, !412, !413, !422, !423, !424, !428, !429, !430, !431, !432, !433, !434, !435}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !254, file: !4, line: 100, baseType: !257, size: 32, align: 32)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !258, line: 49, baseType: !201)
!258 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!259 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !254, file: !4, line: 101, baseType: !260, size: 64, align: 64, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !262)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !263)
!263 = !{!264, !288, !294, !301, !305, !390, !394, !399}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !262, file: !4, line: 133, baseType: !265, size: 64, align: 64)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64, align: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{!268, !252, !269, !271, !274, !275}
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64, align: 64)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !258, line: 46, baseType: !223)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !272, line: 66, baseType: !273)
!272 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!273 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64, align: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64, align: 64)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !278, line: 42, baseType: !279)
!278 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !278, line: 44, size: 128, align: 64, elements: !280)
!280 = !{!281, !286, !287}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !279, file: !278, line: 46, baseType: !282, size: 32, align: 32)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !283, line: 36, baseType: !284)
!283 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !272, line: 45, baseType: !285)
!285 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !279, file: !278, line: 47, baseType: !257, size: 32, align: 32, offset: 32)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !279, file: !278, line: 48, baseType: !269, size: 64, align: 64, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !262, file: !4, line: 138, baseType: !289, size: 64, align: 64, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!290 = !DISubroutineType(types: !291)
!291 = !{!268, !252, !292, !271, !274, !275}
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64, align: 64)
!293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !270)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !262, file: !4, line: 143, baseType: !295, size: 64, align: 64, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64, align: 64)
!296 = !DISubroutineType(types: !297)
!297 = !{!268, !252, !298, !300, !275}
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !272, line: 51, baseType: !299)
!299 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !262, file: !4, line: 147, baseType: !302, size: 64, align: 64, offset: 192)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64, align: 64)
!303 = !DISubroutineType(types: !304)
!304 = !{!268, !252, !275}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !262, file: !4, line: 149, baseType: !306, size: 64, align: 64, offset: 256)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64, align: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!309, !252, !389}
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64, align: 64)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !311)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !312)
!312 = !{!313, !315, !336, !365, !367, !371, !372, !373, !374, !382, !383, !384, !385}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !311, file: !16, line: 174, baseType: !314, size: 64, align: 64)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !258, line: 77, baseType: !200)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !311, file: !16, line: 175, baseType: !316, size: 64, align: 64, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64, align: 64)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !318)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !319)
!319 = !{!320, !324, !325}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !318, file: !16, line: 198, baseType: !321, size: 64, align: 64)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64, align: 64)
!322 = !DISubroutineType(types: !323)
!323 = !{null, !314}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !318, file: !16, line: 199, baseType: !321, size: 64, align: 64, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !318, file: !16, line: 200, baseType: !326, size: 64, align: 64, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64, align: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{null, !314, !309, !329, !335}
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64, align: 64)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64, align: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{!334, !314}
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !258, line: 50, baseType: !257)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64, align: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !311, file: !16, line: 177, baseType: !337, size: 64, align: 64, offset: 128)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64, align: 64)
!338 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !340)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !341)
!341 = !{!342, !347, !351, !355, !359, !360}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !340, file: !16, line: 216, baseType: !343, size: 64, align: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64, align: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{!334, !309, !346}
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64, align: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !340, file: !16, line: 218, baseType: !348, size: 64, align: 64, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64, align: 64)
!349 = !DISubroutineType(types: !350)
!350 = !{!334, !309}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !340, file: !16, line: 219, baseType: !352, size: 64, align: 64, offset: 128)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64, align: 64)
!353 = !DISubroutineType(types: !354)
!354 = !{!334, !309, !330, !314}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !340, file: !16, line: 222, baseType: !356, size: 64, align: 64, offset: 192)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64, align: 64)
!357 = !DISubroutineType(types: !358)
!358 = !{null, !309}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !340, file: !16, line: 226, baseType: !330, size: 64, align: 64, offset: 256)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !340, file: !16, line: 227, baseType: !361, size: 64, align: 64, offset: 320)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !362)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64, align: 64)
!363 = !DISubroutineType(types: !364)
!364 = !{null}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !311, file: !16, line: 178, baseType: !366, size: 32, align: 32, offset: 192)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !258, line: 55, baseType: !285)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !311, file: !16, line: 180, baseType: !368, size: 64, align: 64, offset: 256)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64, align: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !370)
!370 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !311, file: !16, line: 182, baseType: !257, size: 32, align: 32, offset: 320)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !311, file: !16, line: 183, baseType: !366, size: 32, align: 32, offset: 352)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !311, file: !16, line: 184, baseType: !366, size: 32, align: 32, offset: 384)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !311, file: !16, line: 186, baseType: !375, size: 64, align: 64, offset: 448)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64, align: 64)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !377, line: 37, baseType: !378)
!377 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !377, line: 39, size: 128, align: 64, elements: !379)
!379 = !{!380, !381}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !378, file: !377, line: 41, baseType: !314, size: 64, align: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !378, file: !377, line: 42, baseType: !375, size: 64, align: 64, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !311, file: !16, line: 188, baseType: !309, size: 64, align: 64, offset: 512)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !311, file: !16, line: 189, baseType: !309, size: 64, align: 64, offset: 576)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !311, file: !16, line: 191, baseType: !222, size: 64, align: 64, offset: 640)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !311, file: !16, line: 193, baseType: !386, size: 64, align: 64, offset: 704)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64, align: 64)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !388)
!388 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !262, file: !4, line: 151, baseType: !391, size: 64, align: 64, offset: 320)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64, align: 64)
!392 = !DISubroutineType(types: !393)
!393 = !{null, !252}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !262, file: !4, line: 152, baseType: !395, size: 64, align: 64, offset: 384)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64, align: 64)
!396 = !DISubroutineType(types: !397)
!397 = !{!268, !252, !398, !275}
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !262, file: !4, line: 155, baseType: !400, size: 64, align: 64, offset: 448)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64, align: 64)
!401 = !DISubroutineType(types: !402)
!402 = !{!398, !252}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !254, file: !4, line: 103, baseType: !269, size: 64, align: 64, offset: 128)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !254, file: !4, line: 104, baseType: !405, size: 64, align: 64, offset: 192)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !406, line: 77, baseType: !407)
!406 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64, align: 64)
!408 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !406, line: 77, flags: DIFlagFwdDecl)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !254, file: !4, line: 105, baseType: !405, size: 64, align: 64, offset: 256)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !254, file: !4, line: 106, baseType: !269, size: 64, align: 64, offset: 320)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !254, file: !4, line: 107, baseType: !366, size: 32, align: 32, offset: 384)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !254, file: !4, line: 109, baseType: !271, size: 64, align: 64, offset: 448)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !254, file: !4, line: 110, baseType: !414, size: 64, align: 64, offset: 512)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64, align: 64)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !416, line: 39, baseType: !417)
!416 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !416, line: 41, size: 192, align: 64, elements: !418)
!418 = !{!419, !420, !421}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !417, file: !416, line: 43, baseType: !269, size: 64, align: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !417, file: !416, line: 44, baseType: !271, size: 64, align: 64, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !417, file: !416, line: 45, baseType: !271, size: 64, align: 64, offset: 128)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !254, file: !4, line: 111, baseType: !414, size: 64, align: 64, offset: 576)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !254, file: !4, line: 112, baseType: !414, size: 64, align: 64, offset: 640)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !254, file: !4, line: 113, baseType: !425, size: 48, align: 8, offset: 704)
!425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 48, align: 8, elements: !426)
!426 = !{!427}
!427 = !DISubrange(count: 6)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !254, file: !4, line: 117, baseType: !366, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !254, file: !4, line: 118, baseType: !366, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !254, file: !4, line: 119, baseType: !366, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !254, file: !4, line: 120, baseType: !366, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !254, file: !4, line: 121, baseType: !366, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !254, file: !4, line: 122, baseType: !366, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !254, file: !4, line: 124, baseType: !314, size: 64, align: 64, offset: 768)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !254, file: !4, line: 125, baseType: !314, size: 64, align: 64, offset: 832)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !215, file: !218, line: 38, baseType: !285, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !215, file: !218, line: 39, baseType: !285, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !215, file: !218, line: 40, baseType: !285, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !215, file: !218, line: 41, baseType: !285, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !215, file: !218, line: 42, baseType: !285, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !215, file: !218, line: 43, baseType: !285, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !215, file: !218, line: 44, baseType: !285, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !215, file: !218, line: 45, baseType: !285, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !215, file: !218, line: 46, baseType: !222, size: 64, align: 64, offset: 1792)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !215, file: !218, line: 47, baseType: !222, size: 64, align: 64, offset: 1856)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !205, file: !209, line: 9, baseType: !447, size: 64, align: 64, offset: 192)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !448, line: 75, baseType: !449)
!448 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !450, line: 139, baseType: !299)
!450 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!451 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !205, file: !209, line: 10, baseType: !447, size: 64, align: 64, offset: 256)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !205, file: !209, line: 12, baseType: !222, size: 64, align: 64, offset: 320)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !205, file: !209, line: 13, baseType: !222, size: 64, align: 64, offset: 384)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !205, file: !209, line: 15, baseType: !285, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !205, file: !209, line: 16, baseType: !285, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !205, file: !209, line: 17, baseType: !285, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !205, file: !209, line: 18, baseType: !285, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !205, file: !209, line: 19, baseType: !285, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !205, file: !209, line: 21, baseType: !460, size: 64, align: 64, offset: 512)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64, align: 64)
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !204, line: 102, baseType: !462)
!462 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !204, line: 102, flags: DIFlagFwdDecl)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !205, file: !209, line: 22, baseType: !201, size: 32, align: 32, offset: 576)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !205, file: !209, line: 25, baseType: !465, size: 128, align: 64, offset: 640)
!465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 128, align: 64, elements: !466)
!466 = !{!467}
!467 = !DISubrange(count: 2)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !205, file: !209, line: 26, baseType: !201, size: 32, align: 32, offset: 768)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !205, file: !209, line: 27, baseType: !201, size: 32, align: 32, offset: 800)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !205, file: !209, line: 29, baseType: !471, size: 64, align: 64, offset: 832)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64, align: 64)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !204, line: 103, baseType: !473)
!473 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !204, line: 103, flags: DIFlagFwdDecl)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !205, file: !209, line: 30, baseType: !475, size: 64, align: 64, offset: 896)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64, align: 64)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !477, line: 37, baseType: !478)
!477 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!478 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !477, line: 37, flags: DIFlagFwdDecl)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !205, file: !209, line: 32, baseType: !222, size: 64, align: 64, offset: 960)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !205, file: !209, line: 33, baseType: !222, size: 64, align: 64, offset: 1024)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !205, file: !209, line: 34, baseType: !222, size: 64, align: 64, offset: 1088)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !205, file: !209, line: 35, baseType: !285, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !205, file: !209, line: 36, baseType: !285, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !205, file: !209, line: 37, baseType: !285, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !205, file: !209, line: 38, baseType: !285, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !205, file: !209, line: 40, baseType: !487, size: 128, align: 64, offset: 1216)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !258, line: 504, baseType: !488)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !258, line: 506, size: 128, align: 64, elements: !489)
!489 = !{!490, !492}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !488, file: !258, line: 508, baseType: !491, size: 64, align: 64)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !258, line: 48, baseType: !299)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !488, file: !258, line: 509, baseType: !491, size: 64, align: 64, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !205, file: !209, line: 41, baseType: !447, size: 64, align: 64, offset: 1344)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !205, file: !209, line: 42, baseType: !201, size: 32, align: 32, offset: 1408)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !205, file: !209, line: 44, baseType: !375, size: 64, align: 64, offset: 1472)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !205, file: !209, line: 45, baseType: !375, size: 64, align: 64, offset: 1536)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !205, file: !209, line: 53, baseType: !498, size: 64, align: 64, offset: 1600)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64, align: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{null, !202, !501, !201}
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64, align: 64)
!502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !223)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !205, file: !209, line: 55, baseType: !504, size: 64, align: 64, offset: 1664)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64, align: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{!201, !202, !223}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !205, file: !209, line: 57, baseType: !508, size: 64, align: 64, offset: 1728)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64, align: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!201, !202, !501}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !205, file: !209, line: 60, baseType: !512, size: 64, align: 64, offset: 1792)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64, align: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!501, !202}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !205, file: !209, line: 62, baseType: !516, size: 64, align: 64, offset: 1856)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64, align: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{null, !202, !501, !501, !201}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !205, file: !209, line: 65, baseType: !520, size: 64, align: 64, offset: 1920)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64, align: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{!523, !202, !501, !501}
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !205, file: !209, line: 69, baseType: !525, size: 64, align: 64, offset: 1984)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64, align: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!528, !202, !501}
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64, align: 64)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !204, line: 109, baseType: !530)
!530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !531, line: 15, size: 1408, align: 64, elements: !532)
!531 = !DIFile(filename: "../../../src/core/channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!532 = !{!533, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !568, !569, !571, !572, !573, !574, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !530, file: !534, line: 3, baseType: !201, size: 32, align: 32)
!534 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!535 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !530, file: !534, line: 4, baseType: !201, size: 32, align: 32, offset: 32)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !530, file: !534, line: 5, baseType: !475, size: 64, align: 64, offset: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !530, file: !534, line: 7, baseType: !200, size: 64, align: 64, offset: 128)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !530, file: !534, line: 8, baseType: !202, size: 64, align: 64, offset: 192)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !530, file: !534, line: 9, baseType: !222, size: 64, align: 64, offset: 256)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !530, file: !534, line: 10, baseType: !222, size: 64, align: 64, offset: 320)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !530, file: !534, line: 11, baseType: !447, size: 64, align: 64, offset: 384)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !530, file: !534, line: 12, baseType: !201, size: 32, align: 32, offset: 448)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !530, file: !534, line: 13, baseType: !222, size: 64, align: 64, offset: 512)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !530, file: !534, line: 15, baseType: !545, size: 64, align: 64, offset: 576)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64, align: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{null, !548}
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64, align: 64)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !204, line: 108, baseType: !550)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !551, line: 5, size: 704, align: 64, elements: !552)
!551 = !DIFile(filename: "../../../src/core/window-item-def.h", directory: "/home/lichi/Desktop/irssi/task1")
!552 = !{!553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !550, file: !534, line: 3, baseType: !201, size: 32, align: 32)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !550, file: !534, line: 4, baseType: !201, size: 32, align: 32, offset: 32)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !550, file: !534, line: 5, baseType: !475, size: 64, align: 64, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !550, file: !534, line: 7, baseType: !200, size: 64, align: 64, offset: 128)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !550, file: !534, line: 8, baseType: !202, size: 64, align: 64, offset: 192)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !550, file: !534, line: 9, baseType: !222, size: 64, align: 64, offset: 256)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !550, file: !534, line: 10, baseType: !222, size: 64, align: 64, offset: 320)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !550, file: !534, line: 11, baseType: !447, size: 64, align: 64, offset: 384)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !550, file: !534, line: 12, baseType: !201, size: 32, align: 32, offset: 448)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !550, file: !534, line: 13, baseType: !222, size: 64, align: 64, offset: 512)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !550, file: !534, line: 15, baseType: !545, size: 64, align: 64, offset: 576)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !550, file: !534, line: 17, baseType: !565, size: 64, align: 64, offset: 640)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64, align: 64)
!566 = !DISubroutineType(types: !567)
!567 = !{!501, !548}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !530, file: !534, line: 17, baseType: !565, size: 64, align: 64, offset: 640)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !530, file: !570, line: 5, baseType: !222, size: 64, align: 64, offset: 704)
!570 = !DIFile(filename: "../../../src/core/channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!571 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !530, file: !570, line: 6, baseType: !222, size: 64, align: 64, offset: 768)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !530, file: !570, line: 7, baseType: !447, size: 64, align: 64, offset: 832)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !530, file: !570, line: 9, baseType: !475, size: 64, align: 64, offset: 896)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !530, file: !570, line: 10, baseType: !575, size: 64, align: 64, offset: 960)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64, align: 64)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !204, line: 111, baseType: !577)
!577 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !204, line: 111, flags: DIFlagFwdDecl)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !530, file: !570, line: 12, baseType: !285, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !530, file: !570, line: 13, baseType: !222, size: 64, align: 64, offset: 1088)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !530, file: !570, line: 14, baseType: !201, size: 32, align: 32, offset: 1152)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !530, file: !570, line: 15, baseType: !222, size: 64, align: 64, offset: 1216)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !530, file: !570, line: 17, baseType: !285, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !530, file: !570, line: 18, baseType: !285, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !530, file: !570, line: 19, baseType: !285, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !530, file: !570, line: 20, baseType: !285, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !530, file: !570, line: 22, baseType: !285, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !530, file: !570, line: 23, baseType: !285, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !530, file: !570, line: 24, baseType: !285, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !530, file: !570, line: 25, baseType: !285, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !530, file: !570, line: 26, baseType: !285, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !530, file: !570, line: 31, baseType: !592, size: 64, align: 64, offset: 1344)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64, align: 64)
!593 = !DISubroutineType(types: !594)
!594 = !{!222, !528}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !205, file: !209, line: 70, baseType: !596, size: 64, align: 64, offset: 2048)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64, align: 64)
!597 = !DISubroutineType(types: !598)
!598 = !{!599, !202, !501}
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64, align: 64)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !204, line: 110, baseType: !601)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !602, line: 15, size: 960, align: 64, elements: !603)
!602 = !DIFile(filename: "../../../src/core/queries.h", directory: "/home/lichi/Desktop/irssi/task1")
!603 = !{!604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !618, !619, !620, !621}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !601, file: !534, line: 3, baseType: !201, size: 32, align: 32)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !601, file: !534, line: 4, baseType: !201, size: 32, align: 32, offset: 32)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !601, file: !534, line: 5, baseType: !475, size: 64, align: 64, offset: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !601, file: !534, line: 7, baseType: !200, size: 64, align: 64, offset: 128)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !601, file: !534, line: 8, baseType: !202, size: 64, align: 64, offset: 192)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !601, file: !534, line: 9, baseType: !222, size: 64, align: 64, offset: 256)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !601, file: !534, line: 10, baseType: !222, size: 64, align: 64, offset: 320)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !601, file: !534, line: 11, baseType: !447, size: 64, align: 64, offset: 384)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !601, file: !534, line: 12, baseType: !201, size: 32, align: 32, offset: 448)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !601, file: !534, line: 13, baseType: !222, size: 64, align: 64, offset: 512)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !601, file: !534, line: 15, baseType: !545, size: 64, align: 64, offset: 576)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !601, file: !534, line: 17, baseType: !565, size: 64, align: 64, offset: 640)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !601, file: !617, line: 5, baseType: !222, size: 64, align: 64, offset: 704)
!617 = !DIFile(filename: "../../../src/core/query-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!618 = !DIDerivedType(tag: DW_TAG_member, name: "server_tag", scope: !601, file: !617, line: 6, baseType: !222, size: 64, align: 64, offset: 768)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "last_unread_msg", scope: !601, file: !617, line: 7, baseType: !447, size: 64, align: 64, offset: 832)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "unwanted", scope: !601, file: !617, line: 9, baseType: !285, size: 1, align: 32, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !601, file: !617, line: 11, baseType: !285, size: 1, align: 32, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !205, file: !209, line: 71, baseType: !623, size: 64, align: 64, offset: 2112)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64, align: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{!201, !501, !501}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !205, file: !209, line: 73, baseType: !623, size: 64, align: 64, offset: 2176)
!627 = !{i32 2, !"Dwarf Version", i32 4}
!628 = !{i32 2, !"Debug Info Version", i32 3}
!629 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!630 = distinct !DISubprogram(name: "fe_ctcp_init", scope: !631, file: !631, line: 144, type: !363, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !632)
!631 = !DIFile(filename: "fe-ctcp.c", directory: "/home/lichi/Desktop/irssi/task1")
!632 = !{}
!633 = !DILocation(line: 146, column: 2, scope: !630)
!634 = !DILocation(line: 147, column: 2, scope: !630)
!635 = !DILocation(line: 148, column: 2, scope: !630)
!636 = !DILocation(line: 149, column: 2, scope: !630)
!637 = !DILocation(line: 150, column: 2, scope: !630)
!638 = !DILocation(line: 151, column: 2, scope: !630)
!639 = !DILocation(line: 152, column: 2, scope: !630)
!640 = !DILocation(line: 153, column: 2, scope: !630)
!641 = !DILocation(line: 154, column: 1, scope: !630)
!642 = distinct !DISubprogram(name: "ctcp_default_msg", scope: !631, file: !631, line: 36, type: !643, isLocal: true, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !632)
!643 = !DISubroutineType(types: !644)
!644 = !{null, !645, !501, !501, !501, !501}
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64, align: 64)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_REC", file: !647, line: 6, baseType: !648)
!647 = !DIFile(filename: "../../../src/irc/core/irc.h", directory: "/home/lichi/Desktop/irssi/task1")
!648 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_REC", file: !647, line: 6, flags: DIFlagFwdDecl)
!649 = !DILocalVariable(name: "server", arg: 1, scope: !642, file: !631, line: 36, type: !645)
!650 = !DIExpression()
!651 = !DILocation(line: 36, column: 46, scope: !642)
!652 = !DILocalVariable(name: "data", arg: 2, scope: !642, file: !631, line: 36, type: !501)
!653 = !DILocation(line: 36, column: 66, scope: !642)
!654 = !DILocalVariable(name: "nick", arg: 3, scope: !642, file: !631, line: 37, type: !501)
!655 = !DILocation(line: 37, column: 21, scope: !642)
!656 = !DILocalVariable(name: "addr", arg: 4, scope: !642, file: !631, line: 37, type: !501)
!657 = !DILocation(line: 37, column: 39, scope: !642)
!658 = !DILocalVariable(name: "target", arg: 5, scope: !642, file: !631, line: 38, type: !501)
!659 = !DILocation(line: 38, column: 21, scope: !642)
!660 = !DILocalVariable(name: "p", scope: !642, file: !631, line: 40, type: !501)
!661 = !DILocation(line: 40, column: 21, scope: !642)
!662 = !DILocalVariable(name: "cmd", scope: !642, file: !631, line: 41, type: !222)
!663 = !DILocation(line: 41, column: 8, scope: !642)
!664 = !DILocation(line: 43, column: 13, scope: !642)
!665 = !DILocation(line: 43, column: 6, scope: !642)
!666 = !DILocation(line: 43, column: 4, scope: !642)
!667 = !DILocation(line: 44, column: 6, scope: !668)
!668 = distinct !DILexicalBlock(scope: !642, file: !631, line: 44, column: 6)
!669 = !DILocation(line: 44, column: 8, scope: !668)
!670 = !DILocation(line: 44, column: 6, scope: !642)
!671 = !DILocation(line: 45, column: 18, scope: !672)
!672 = distinct !DILexicalBlock(scope: !668, file: !631, line: 44, column: 16)
!673 = !DILocation(line: 45, column: 9, scope: !672)
!674 = !DILocation(line: 45, column: 7, scope: !672)
!675 = !DILocation(line: 46, column: 22, scope: !672)
!676 = !DILocation(line: 47, column: 2, scope: !672)
!677 = !DILocation(line: 48, column: 19, scope: !678)
!678 = distinct !DILexicalBlock(scope: !668, file: !631, line: 47, column: 9)
!679 = !DILocation(line: 48, column: 32, scope: !678)
!680 = !DILocation(line: 48, column: 34, scope: !678)
!681 = !DILocation(line: 48, column: 33, scope: !678)
!682 = !DILocation(line: 48, column: 25, scope: !678)
!683 = !DILocation(line: 48, column: 9, scope: !678)
!684 = !DILocation(line: 48, column: 7, scope: !678)
!685 = !DILocation(line: 49, column: 24, scope: !678)
!686 = !DILocation(line: 49, column: 25, scope: !678)
!687 = !DILocation(line: 49, column: 22, scope: !678)
!688 = !DILocation(line: 52, column: 38, scope: !642)
!689 = !DILocation(line: 52, column: 82, scope: !642)
!690 = !DILocation(line: 52, column: 64, scope: !642)
!691 = !DILocation(line: 52, column: 49, scope: !642)
!692 = !DILocation(line: 52, column: 16, scope: !642)
!693 = !DILocation(line: 52, column: 60, scope: !642)
!694 = !DILocation(line: 52, column: 42, scope: !695)
!695 = !DILexicalBlockFile(scope: !642, file: !631, discriminator: 4)
!696 = !DILocation(line: 52, column: 27, scope: !642)
!697 = !DILocation(line: 52, column: 15, scope: !642)
!698 = !DILocation(line: 52, column: 47, scope: !699)
!699 = !DILexicalBlockFile(scope: !642, file: !631, discriminator: 5)
!700 = !DILocation(line: 52, column: 47, scope: !642)
!701 = !DILocation(line: 52, column: 46, scope: !642)
!702 = !DILocation(line: 52, column: 26, scope: !703)
!703 = !DILexicalBlockFile(scope: !642, file: !631, discriminator: 1)
!704 = !DILocation(line: 52, column: 46, scope: !703)
!705 = !DILocation(line: 52, column: 35, scope: !706)
!706 = !DILexicalBlockFile(scope: !642, file: !631, discriminator: 2)
!707 = !DILocation(line: 52, column: 46, scope: !706)
!708 = !DILocation(line: 52, column: 46, scope: !709)
!709 = !DILexicalBlockFile(scope: !642, file: !631, discriminator: 3)
!710 = !DILocation(line: 52, column: 88, scope: !709)
!711 = !DILocation(line: 52, column: 94, scope: !709)
!712 = !DILocation(line: 52, column: 100, scope: !709)
!713 = !DILocation(line: 52, column: 105, scope: !709)
!714 = !DILocation(line: 52, column: 111, scope: !709)
!715 = !DILocation(line: 52, column: 2, scope: !709)
!716 = !DILocation(line: 55, column: 16, scope: !642)
!717 = !DILocation(line: 55, column: 9, scope: !642)
!718 = !DILocation(line: 56, column: 1, scope: !642)
!719 = distinct !DISubprogram(name: "ctcp_ping_msg", scope: !631, file: !631, line: 58, type: !643, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !632)
!720 = !DILocalVariable(name: "server", arg: 1, scope: !719, file: !631, line: 58, type: !645)
!721 = !DILocation(line: 58, column: 43, scope: !719)
!722 = !DILocalVariable(name: "data", arg: 2, scope: !719, file: !631, line: 58, type: !501)
!723 = !DILocation(line: 58, column: 63, scope: !719)
!724 = !DILocalVariable(name: "nick", arg: 3, scope: !719, file: !631, line: 59, type: !501)
!725 = !DILocation(line: 59, column: 18, scope: !719)
!726 = !DILocalVariable(name: "addr", arg: 4, scope: !719, file: !631, line: 59, type: !501)
!727 = !DILocation(line: 59, column: 36, scope: !719)
!728 = !DILocalVariable(name: "target", arg: 5, scope: !719, file: !631, line: 60, type: !501)
!729 = !DILocation(line: 60, column: 18, scope: !719)
!730 = !DILocation(line: 62, column: 37, scope: !719)
!731 = !DILocation(line: 63, column: 7, scope: !719)
!732 = !DILocation(line: 63, column: 13, scope: !719)
!733 = !DILocation(line: 63, column: 19, scope: !719)
!734 = !DILocation(line: 63, column: 25, scope: !719)
!735 = !DILocation(line: 62, column: 2, scope: !719)
!736 = !DILocation(line: 64, column: 1, scope: !719)
!737 = distinct !DISubprogram(name: "ctcp_version_msg", scope: !631, file: !631, line: 66, type: !643, isLocal: true, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !632)
!738 = !DILocalVariable(name: "server", arg: 1, scope: !737, file: !631, line: 66, type: !645)
!739 = !DILocation(line: 66, column: 46, scope: !737)
!740 = !DILocalVariable(name: "data", arg: 2, scope: !737, file: !631, line: 66, type: !501)
!741 = !DILocation(line: 66, column: 66, scope: !737)
!742 = !DILocalVariable(name: "nick", arg: 3, scope: !737, file: !631, line: 67, type: !501)
!743 = !DILocation(line: 67, column: 21, scope: !737)
!744 = !DILocalVariable(name: "addr", arg: 4, scope: !737, file: !631, line: 67, type: !501)
!745 = !DILocation(line: 67, column: 39, scope: !737)
!746 = !DILocalVariable(name: "target", arg: 5, scope: !737, file: !631, line: 68, type: !501)
!747 = !DILocation(line: 68, column: 21, scope: !737)
!748 = !DILocation(line: 70, column: 37, scope: !737)
!749 = !DILocation(line: 71, column: 7, scope: !737)
!750 = !DILocation(line: 71, column: 13, scope: !737)
!751 = !DILocation(line: 71, column: 19, scope: !737)
!752 = !DILocation(line: 71, column: 25, scope: !737)
!753 = !DILocation(line: 70, column: 2, scope: !737)
!754 = !DILocation(line: 72, column: 1, scope: !737)
!755 = distinct !DISubprogram(name: "ctcp_time_msg", scope: !631, file: !631, line: 74, type: !643, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !632)
!756 = !DILocalVariable(name: "server", arg: 1, scope: !755, file: !631, line: 74, type: !645)
!757 = !DILocation(line: 74, column: 43, scope: !755)
!758 = !DILocalVariable(name: "data", arg: 2, scope: !755, file: !631, line: 74, type: !501)
!759 = !DILocation(line: 74, column: 63, scope: !755)
!760 = !DILocalVariable(name: "nick", arg: 3, scope: !755, file: !631, line: 75, type: !501)
!761 = !DILocation(line: 75, column: 18, scope: !755)
!762 = !DILocalVariable(name: "addr", arg: 4, scope: !755, file: !631, line: 75, type: !501)
!763 = !DILocation(line: 75, column: 36, scope: !755)
!764 = !DILocalVariable(name: "target", arg: 5, scope: !755, file: !631, line: 76, type: !501)
!765 = !DILocation(line: 76, column: 18, scope: !755)
!766 = !DILocation(line: 78, column: 37, scope: !755)
!767 = !DILocation(line: 79, column: 7, scope: !755)
!768 = !DILocation(line: 79, column: 13, scope: !755)
!769 = !DILocation(line: 79, column: 19, scope: !755)
!770 = !DILocation(line: 79, column: 25, scope: !755)
!771 = !DILocation(line: 78, column: 2, scope: !755)
!772 = !DILocation(line: 80, column: 1, scope: !755)
!773 = distinct !DISubprogram(name: "ctcp_userinfo_msg", scope: !631, file: !631, line: 82, type: !643, isLocal: true, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !632)
!774 = !DILocalVariable(name: "server", arg: 1, scope: !773, file: !631, line: 82, type: !645)
!775 = !DILocation(line: 82, column: 47, scope: !773)
!776 = !DILocalVariable(name: "data", arg: 2, scope: !773, file: !631, line: 82, type: !501)
!777 = !DILocation(line: 82, column: 67, scope: !773)
!778 = !DILocalVariable(name: "nick", arg: 3, scope: !773, file: !631, line: 83, type: !501)
!779 = !DILocation(line: 83, column: 18, scope: !773)
!780 = !DILocalVariable(name: "addr", arg: 4, scope: !773, file: !631, line: 83, type: !501)
!781 = !DILocation(line: 83, column: 36, scope: !773)
!782 = !DILocalVariable(name: "target", arg: 5, scope: !773, file: !631, line: 84, type: !501)
!783 = !DILocation(line: 84, column: 18, scope: !773)
!784 = !DILocation(line: 86, column: 37, scope: !773)
!785 = !DILocation(line: 87, column: 7, scope: !773)
!786 = !DILocation(line: 87, column: 13, scope: !773)
!787 = !DILocation(line: 87, column: 19, scope: !773)
!788 = !DILocation(line: 87, column: 25, scope: !773)
!789 = !DILocation(line: 86, column: 2, scope: !773)
!790 = !DILocation(line: 88, column: 1, scope: !773)
!791 = distinct !DISubprogram(name: "ctcp_clientinfo_msg", scope: !631, file: !631, line: 90, type: !643, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !632)
!792 = !DILocalVariable(name: "server", arg: 1, scope: !791, file: !631, line: 90, type: !645)
!793 = !DILocation(line: 90, column: 49, scope: !791)
!794 = !DILocalVariable(name: "data", arg: 2, scope: !791, file: !631, line: 90, type: !501)
!795 = !DILocation(line: 90, column: 69, scope: !791)
!796 = !DILocalVariable(name: "nick", arg: 3, scope: !791, file: !631, line: 91, type: !501)
!797 = !DILocation(line: 91, column: 18, scope: !791)
!798 = !DILocalVariable(name: "addr", arg: 4, scope: !791, file: !631, line: 91, type: !501)
!799 = !DILocation(line: 91, column: 36, scope: !791)
!800 = !DILocalVariable(name: "target", arg: 5, scope: !791, file: !631, line: 92, type: !501)
!801 = !DILocation(line: 92, column: 18, scope: !791)
!802 = !DILocation(line: 94, column: 37, scope: !791)
!803 = !DILocation(line: 95, column: 7, scope: !791)
!804 = !DILocation(line: 95, column: 13, scope: !791)
!805 = !DILocation(line: 95, column: 19, scope: !791)
!806 = !DILocation(line: 95, column: 25, scope: !791)
!807 = !DILocation(line: 94, column: 2, scope: !791)
!808 = !DILocation(line: 96, column: 1, scope: !791)
!809 = distinct !DISubprogram(name: "ctcp_default_reply", scope: !631, file: !631, line: 98, type: !643, isLocal: true, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !632)
!810 = !DILocalVariable(name: "server", arg: 1, scope: !809, file: !631, line: 98, type: !645)
!811 = !DILocation(line: 98, column: 48, scope: !809)
!812 = !DILocalVariable(name: "data", arg: 2, scope: !809, file: !631, line: 98, type: !501)
!813 = !DILocation(line: 98, column: 68, scope: !809)
!814 = !DILocalVariable(name: "nick", arg: 3, scope: !809, file: !631, line: 99, type: !501)
!815 = !DILocation(line: 99, column: 23, scope: !809)
!816 = !DILocalVariable(name: "addr", arg: 4, scope: !809, file: !631, line: 99, type: !501)
!817 = !DILocation(line: 99, column: 41, scope: !809)
!818 = !DILocalVariable(name: "target", arg: 5, scope: !809, file: !631, line: 100, type: !501)
!819 = !DILocation(line: 100, column: 23, scope: !809)
!820 = !DILocalVariable(name: "ctcpdata", scope: !809, file: !631, line: 102, type: !501)
!821 = !DILocation(line: 102, column: 14, scope: !809)
!822 = !DILocalVariable(name: "ctcp", scope: !809, file: !631, line: 103, type: !222)
!823 = !DILocation(line: 103, column: 8, scope: !809)
!824 = !DILocalVariable(name: "ptr", scope: !809, file: !631, line: 103, type: !222)
!825 = !DILocation(line: 103, column: 15, scope: !809)
!826 = !DILocation(line: 105, column: 2, scope: !809)
!827 = distinct !{!827, !826}
!828 = !DILocation(line: 105, column: 10, scope: !829)
!829 = !DILexicalBlockFile(scope: !830, file: !631, discriminator: 1)
!830 = distinct !DILexicalBlock(scope: !831, file: !631, line: 105, column: 10)
!831 = distinct !DILexicalBlock(scope: !809, file: !631, line: 105, column: 4)
!832 = !DILocation(line: 105, column: 15, scope: !829)
!833 = !DILocation(line: 105, column: 5, scope: !834)
!834 = !DILexicalBlockFile(scope: !835, file: !631, discriminator: 2)
!835 = distinct !DILexicalBlock(scope: !830, file: !631, line: 105, column: 3)
!836 = !DILocation(line: 105, column: 14, scope: !837)
!837 = !DILexicalBlockFile(scope: !838, file: !631, discriminator: 3)
!838 = distinct !DILexicalBlock(scope: !830, file: !631, line: 105, column: 12)
!839 = !DILocation(line: 105, column: 99, scope: !837)
!840 = !DILocation(line: 105, column: 110, scope: !841)
!841 = !DILexicalBlockFile(scope: !831, file: !631, discriminator: 4)
!842 = !DILocation(line: 107, column: 18, scope: !809)
!843 = !DILocation(line: 107, column: 9, scope: !809)
!844 = !DILocation(line: 107, column: 7, scope: !809)
!845 = !DILocation(line: 108, column: 15, scope: !809)
!846 = !DILocation(line: 108, column: 8, scope: !809)
!847 = !DILocation(line: 108, column: 6, scope: !809)
!848 = !DILocation(line: 109, column: 6, scope: !849)
!849 = distinct !DILexicalBlock(scope: !809, file: !631, line: 109, column: 6)
!850 = !DILocation(line: 109, column: 10, scope: !849)
!851 = !DILocation(line: 109, column: 6, scope: !809)
!852 = !DILocation(line: 110, column: 12, scope: !849)
!853 = !DILocation(line: 110, column: 3, scope: !849)
!854 = !DILocation(line: 112, column: 4, scope: !855)
!855 = distinct !DILexicalBlock(scope: !849, file: !631, line: 111, column: 7)
!856 = !DILocation(line: 112, column: 8, scope: !855)
!857 = !DILocation(line: 113, column: 14, scope: !855)
!858 = !DILocation(line: 113, column: 17, scope: !855)
!859 = !DILocation(line: 113, column: 12, scope: !855)
!860 = !DILocation(line: 116, column: 38, scope: !809)
!861 = !DILocation(line: 116, column: 82, scope: !809)
!862 = !DILocation(line: 116, column: 64, scope: !809)
!863 = !DILocation(line: 116, column: 49, scope: !809)
!864 = !DILocation(line: 116, column: 16, scope: !809)
!865 = !DILocation(line: 116, column: 60, scope: !809)
!866 = !DILocation(line: 116, column: 42, scope: !867)
!867 = !DILexicalBlockFile(scope: !809, file: !631, discriminator: 4)
!868 = !DILocation(line: 116, column: 27, scope: !809)
!869 = !DILocation(line: 116, column: 15, scope: !809)
!870 = !DILocation(line: 116, column: 47, scope: !871)
!871 = !DILexicalBlockFile(scope: !809, file: !631, discriminator: 5)
!872 = !DILocation(line: 116, column: 47, scope: !809)
!873 = !DILocation(line: 116, column: 46, scope: !809)
!874 = !DILocation(line: 116, column: 26, scope: !875)
!875 = !DILexicalBlockFile(scope: !809, file: !631, discriminator: 1)
!876 = !DILocation(line: 116, column: 46, scope: !875)
!877 = !DILocation(line: 116, column: 35, scope: !878)
!878 = !DILexicalBlockFile(scope: !809, file: !631, discriminator: 2)
!879 = !DILocation(line: 116, column: 46, scope: !878)
!880 = !DILocation(line: 116, column: 46, scope: !881)
!881 = !DILexicalBlockFile(scope: !809, file: !631, discriminator: 3)
!882 = !DILocation(line: 116, column: 93, scope: !881)
!883 = !DILocation(line: 116, column: 75, scope: !881)
!884 = !DILocation(line: 116, column: 60, scope: !881)
!885 = !DILocation(line: 116, column: 16, scope: !881)
!886 = !DILocation(line: 116, column: 42, scope: !887)
!887 = !DILexicalBlockFile(scope: !881, file: !631, discriminator: 6)
!888 = !DILocation(line: 116, column: 27, scope: !881)
!889 = !DILocation(line: 116, column: 15, scope: !881)
!890 = !DILocation(line: 116, column: 58, scope: !891)
!891 = !DILexicalBlockFile(scope: !881, file: !631, discriminator: 7)
!892 = !DILocation(line: 116, column: 57, scope: !881)
!893 = !DILocation(line: 116, column: 73, scope: !881)
!894 = !DILocation(line: 116, column: 79, scope: !881)
!895 = !DILocation(line: 116, column: 85, scope: !881)
!896 = !DILocation(line: 116, column: 95, scope: !881)
!897 = !DILocation(line: 116, column: 2, scope: !898)
!898 = !DILexicalBlockFile(scope: !881, file: !631, discriminator: 8)
!899 = !DILocation(line: 119, column: 9, scope: !809)
!900 = !DILocation(line: 119, column: 2, scope: !809)
!901 = !DILocation(line: 120, column: 1, scope: !809)
!902 = !DILocation(line: 120, column: 1, scope: !875)
!903 = distinct !DISubprogram(name: "ctcp_ping_reply", scope: !631, file: !631, line: 122, type: !643, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !632)
!904 = !DILocalVariable(name: "server", arg: 1, scope: !903, file: !631, line: 122, type: !645)
!905 = !DILocation(line: 122, column: 45, scope: !903)
!906 = !DILocalVariable(name: "data", arg: 2, scope: !903, file: !631, line: 122, type: !501)
!907 = !DILocation(line: 122, column: 65, scope: !903)
!908 = !DILocalVariable(name: "nick", arg: 3, scope: !903, file: !631, line: 123, type: !501)
!909 = !DILocation(line: 123, column: 20, scope: !903)
!910 = !DILocalVariable(name: "addr", arg: 4, scope: !903, file: !631, line: 123, type: !501)
!911 = !DILocation(line: 123, column: 38, scope: !903)
!912 = !DILocalVariable(name: "target", arg: 5, scope: !903, file: !631, line: 124, type: !501)
!913 = !DILocation(line: 124, column: 20, scope: !903)
!914 = !DILocalVariable(name: "tv", scope: !903, file: !631, line: 126, type: !487)
!915 = !DILocation(line: 126, column: 11, scope: !903)
!916 = !DILocalVariable(name: "tv2", scope: !903, file: !631, line: 126, type: !487)
!917 = !DILocation(line: 126, column: 15, scope: !903)
!918 = !DILocalVariable(name: "usecs", scope: !903, file: !631, line: 127, type: !299)
!919 = !DILocation(line: 127, column: 7, scope: !903)
!920 = !DILocation(line: 129, column: 2, scope: !903)
!921 = distinct !{!921, !920}
!922 = !DILocation(line: 129, column: 10, scope: !923)
!923 = !DILexicalBlockFile(scope: !924, file: !631, discriminator: 1)
!924 = distinct !DILexicalBlock(scope: !925, file: !631, line: 129, column: 10)
!925 = distinct !DILexicalBlock(scope: !903, file: !631, line: 129, column: 4)
!926 = !DILocation(line: 129, column: 15, scope: !923)
!927 = !DILocation(line: 129, column: 5, scope: !928)
!928 = !DILexicalBlockFile(scope: !929, file: !631, discriminator: 2)
!929 = distinct !DILexicalBlock(scope: !924, file: !631, line: 129, column: 3)
!930 = !DILocation(line: 129, column: 14, scope: !931)
!931 = !DILexicalBlockFile(scope: !932, file: !631, discriminator: 3)
!932 = distinct !DILexicalBlock(scope: !924, file: !631, line: 129, column: 12)
!933 = !DILocation(line: 129, column: 99, scope: !931)
!934 = !DILocation(line: 129, column: 110, scope: !935)
!935 = !DILexicalBlockFile(scope: !925, file: !631, discriminator: 4)
!936 = !DILocation(line: 131, column: 13, scope: !937)
!937 = distinct !DILexicalBlock(scope: !903, file: !631, line: 131, column: 6)
!938 = !DILocation(line: 131, column: 35, scope: !937)
!939 = !DILocation(line: 131, column: 48, scope: !937)
!940 = !DILocation(line: 131, column: 6, scope: !937)
!941 = !DILocation(line: 131, column: 57, scope: !937)
!942 = !DILocation(line: 131, column: 6, scope: !903)
!943 = !DILocalVariable(name: "tmp", scope: !944, file: !631, line: 132, type: !222)
!944 = distinct !DILexicalBlock(scope: !937, file: !631, line: 131, column: 62)
!945 = !DILocation(line: 132, column: 23, scope: !944)
!946 = !DILocation(line: 132, column: 50, scope: !944)
!947 = !DILocation(line: 132, column: 29, scope: !944)
!948 = !DILocation(line: 133, column: 22, scope: !944)
!949 = !DILocation(line: 133, column: 30, scope: !944)
!950 = !DILocation(line: 133, column: 35, scope: !944)
!951 = !DILocation(line: 133, column: 41, scope: !944)
!952 = !DILocation(line: 133, column: 47, scope: !944)
!953 = !DILocation(line: 133, column: 3, scope: !944)
!954 = !DILocation(line: 134, column: 10, scope: !944)
!955 = !DILocation(line: 134, column: 3, scope: !944)
!956 = !DILocation(line: 135, column: 3, scope: !944)
!957 = !DILocation(line: 138, column: 9, scope: !903)
!958 = !DILocation(line: 139, column: 10, scope: !903)
!959 = !DILocation(line: 139, column: 8, scope: !903)
!960 = !DILocation(line: 140, column: 45, scope: !903)
!961 = !DILocation(line: 140, column: 89, scope: !903)
!962 = !DILocation(line: 140, column: 71, scope: !903)
!963 = !DILocation(line: 140, column: 56, scope: !903)
!964 = !DILocation(line: 140, column: 23, scope: !903)
!965 = !DILocation(line: 140, column: 67, scope: !903)
!966 = !DILocation(line: 140, column: 49, scope: !967)
!967 = !DILexicalBlockFile(scope: !903, file: !631, discriminator: 4)
!968 = !DILocation(line: 140, column: 34, scope: !903)
!969 = !DILocation(line: 140, column: 22, scope: !903)
!970 = !DILocation(line: 140, column: 54, scope: !971)
!971 = !DILexicalBlockFile(scope: !903, file: !631, discriminator: 5)
!972 = !DILocation(line: 140, column: 54, scope: !903)
!973 = !DILocation(line: 140, column: 53, scope: !903)
!974 = !DILocation(line: 140, column: 33, scope: !975)
!975 = !DILexicalBlockFile(scope: !903, file: !631, discriminator: 1)
!976 = !DILocation(line: 140, column: 53, scope: !975)
!977 = !DILocation(line: 140, column: 42, scope: !978)
!978 = !DILexicalBlockFile(scope: !903, file: !631, discriminator: 2)
!979 = !DILocation(line: 140, column: 53, scope: !978)
!980 = !DILocation(line: 140, column: 53, scope: !981)
!981 = !DILexicalBlockFile(scope: !903, file: !631, discriminator: 3)
!982 = !DILocation(line: 140, column: 88, scope: !981)
!983 = !DILocation(line: 140, column: 94, scope: !981)
!984 = !DILocation(line: 140, column: 99, scope: !981)
!985 = !DILocation(line: 140, column: 106, scope: !981)
!986 = !DILocation(line: 140, column: 111, scope: !981)
!987 = !DILocation(line: 140, column: 9, scope: !981)
!988 = !DILocation(line: 142, column: 1, scope: !903)
!989 = !DILocation(line: 142, column: 1, scope: !975)
!990 = distinct !DISubprogram(name: "fe_ctcp_deinit", scope: !631, file: !631, line: 156, type: !363, isLocal: false, isDefinition: true, scopeLine: 157, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !632)
!991 = !DILocation(line: 158, column: 2, scope: !990)
!992 = !DILocation(line: 159, column: 2, scope: !990)
!993 = !DILocation(line: 160, column: 2, scope: !990)
!994 = !DILocation(line: 161, column: 2, scope: !990)
!995 = !DILocation(line: 162, column: 2, scope: !990)
!996 = !DILocation(line: 163, column: 2, scope: !990)
!997 = !DILocation(line: 164, column: 2, scope: !990)
!998 = !DILocation(line: 165, column: 2, scope: !990)
!999 = !DILocation(line: 166, column: 1, scope: !990)
