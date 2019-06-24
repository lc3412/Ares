; ModuleID = './line151-modes.o.i'
source_filename = "./line151-modes.o.i"
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
%struct._IRC_CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._IRC_SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)*, %struct._GSList*, i64, i32, i32 }
%struct._IRC_SERVER_REC = type { i32, i32, i32, %struct._IRC_SERVER_CONNECT_REC*, i64, i64, i8*, i8*, i8, %struct._NET_SENDBUF_REC*, i32, [2 x %struct._GIOChannel*], i32, i32, %struct._RAWLOG_REC*, %struct._GHashTable*, i8*, i8*, i8*, i8, %struct._GTimeVal, i64, i32, %struct._GSList*, %struct._GSList*, void (%struct._SERVER_REC*, i8*, i32)*, i32 (%struct._SERVER_REC*, i8)*, i32 (%struct._SERVER_REC*, i8*)*, i8* (%struct._SERVER_REC*)*, void (%struct._SERVER_REC*, i8*, i8*, i32)*, i8** (%struct._SERVER_REC*, i8*, i8*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)*, %struct._QUERY_REC* (%struct._SERVER_REC*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)*, %struct._GSList*, %struct._GSList*, %struct._REDIRECT_REC*, %struct._GSList*, i8*, i8*, i8*, i8*, i8*, i32, i16, i32, i32, i32, i32, %struct._GHashTable*, %struct._GSList*, %struct._GSList*, %struct._GString*, i32, i32, %struct._GSList*, %struct._GTimeVal, %struct._GTimeVal, i32, i32, i32, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GHashTable*, %struct._GSList*, %struct._GSList*, i8*, %struct._GHashTable*, [256 x %struct.modes_type], [256 x i8], i32 (i8*, i8*)* }
%struct._IRC_SERVER_CONNECT_REC = type { i32, i32, i32, i8*, i32, i8*, i8*, i8*, i16, i8*, i8*, i32, i8*, %struct._IPADDR*, %struct._IPADDR*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._GIOChannel*, i8, i8*, i8*, i8*, i8*, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct._REDIRECT_REC = type opaque
%struct.modes_type = type { {}*, i8 }
%struct.BAN_REC = type { i8*, i8*, i64 }

@.str = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"PREFIX\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"WINDOW ITEM TYPE\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"CHANNEL\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"IRC\00", align 1
@__func__.channel_mode_is_set = private unnamed_addr constant [20 x i8] c"channel_mode_is_set\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"IS_IRC_CHANNEL(channel)\00", align 1
@__func__.parse_channel_modes = private unnamed_addr constant [20 x i8] c"parse_channel_modes\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"mode != NULL\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"channel mode changed\00", align 1
@__func__.modes_join = private unnamed_addr constant [11 x i8] c"modes_join\00", align 1
@__func__.channel_set_singlemode = private unnamed_addr constant [23 x i8] c"channel_set_singlemode\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"nicks != NULL && mode != NULL\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"MODE %s %s\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@__func__.channel_set_mode = private unnamed_addr constant [17 x i8] c"channel_set_mode\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"IS_IRC_SERVER(server)\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"channel != NULL && mode != NULL\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"MODE %s %s%s\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"irc/core\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"misc\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"opermode\00", align 1
@.str.19 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"max_wildcard_modes\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"event 221\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"event 305\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"event 306\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"event 381\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"event mode\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"requested usermode change\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"op\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"deop\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"voice\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"devoice\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@__func__.mode_set_arg = private unnamed_addr constant [13 x i8] c"mode_set_arg\00", align 1
@.str.33 = private unnamed_addr constant [12 x i8] c"str != NULL\00", align 1
@.str.34 = private unnamed_addr constant [27 x i8] c"type == '-' || arg != NULL\00", align 1
@__func__.mode_set = private unnamed_addr constant [9 x i8] c"mode_set\00", align 1
@__func__.nick_mode_change = private unnamed_addr constant [17 x i8] c"nick_mode_change\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"nick != NULL\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c"nick mode changed\00", align 1
@__func__.mode_is_set = private unnamed_addr constant [12 x i8] c"mode_is_set\00", align 1
@__func__.event_user_mode = private unnamed_addr constant [16 x i8] c"event_user_mode\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"data != NULL\00", align 1
@__func__.parse_user_mode = private unnamed_addr constant [16 x i8] c"parse_user_mode\00", align 1
@.str.38 = private unnamed_addr constant [16 x i8] c"modestr != NULL\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"user mode changed\00", align 1
@__func__.event_unaway = private unnamed_addr constant [13 x i8] c"event_unaway\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"server != NULL\00", align 1
@.str.41 = private unnamed_addr constant [18 x i8] c"away mode changed\00", align 1
@__func__.event_away = private unnamed_addr constant [11 x i8] c"event_away\00", align 1
@__func__.event_mode = private unnamed_addr constant [11 x i8] c"event_mode\00", align 1
@__func__.sig_req_usermode_change = private unnamed_addr constant [24 x i8] c"sig_req_usermode_change\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"error command\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"+o\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@__func__.get_wildcard_nicks = private unnamed_addr constant [19 x i8] c"get_wildcard_nicks\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"output != NULL\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"mask != NULL\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"+v\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"MODE %s\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"mode user\00", align 1

; Function Attrs: nounwind uwtable
define void @prefix_add(i8*, i8 signext, %struct._SERVER_REC*) #0 !dbg !691 {
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct._SERVER_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [8 x i8], align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !696, metadata !697), !dbg !698
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !699, metadata !697), !dbg !700
  store %struct._SERVER_REC* %2, %struct._SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %6, metadata !701, metadata !697), !dbg !702
  call void @llvm.dbg.declare(metadata i8** %7, metadata !703, metadata !697), !dbg !704
  call void @llvm.dbg.declare(metadata [8 x i8]* %8, metadata !705, metadata !697), !dbg !706
  call void @llvm.dbg.declare(metadata i32* %9, metadata !707, metadata !697), !dbg !708
  store i32 0, i32* %9, align 4, !dbg !708
  call void @llvm.dbg.declare(metadata i32* %10, metadata !709, metadata !697), !dbg !710
  store i32 0, i32* %10, align 4, !dbg !710
  %11 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !711
  %12 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %11, i32 0, i32 28, !dbg !712
  %13 = load i8* (%struct._SERVER_REC*)*, i8* (%struct._SERVER_REC*)** %12, align 8, !dbg !712
  %14 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !713
  %15 = call i8* %13(%struct._SERVER_REC* %14), !dbg !711
  store i8* %15, i8** %7, align 8, !dbg !714
  br label %16, !dbg !715

; <label>:16:                                     ; preds = %75, %3
  %17 = load i8*, i8** %7, align 8, !dbg !716
  %18 = load i8, i8* %17, align 1, !dbg !718
  %19 = sext i8 %18 to i32, !dbg !718
  %20 = icmp ne i32 %19, 0, !dbg !719
  br i1 %20, label %21, label %32, !dbg !720

; <label>:21:                                     ; preds = %16
  %22 = load i32, i32* %10, align 4, !dbg !721
  %23 = zext i32 %22 to i64, !dbg !723
  %24 = load i8*, i8** %4, align 8, !dbg !723
  %25 = getelementptr inbounds i8, i8* %24, i64 %23, !dbg !723
  %26 = load i8, i8* %25, align 1, !dbg !723
  %27 = sext i8 %26 to i32, !dbg !723
  %28 = icmp ne i32 %27, 0, !dbg !724
  br i1 %28, label %29, label %32, !dbg !725

; <label>:29:                                     ; preds = %21
  %30 = load i32, i32* %9, align 4, !dbg !726
  %31 = icmp ult i32 %30, 6, !dbg !727
  br label %32

; <label>:32:                                     ; preds = %29, %21, %16
  %33 = phi i1 [ false, %21 ], [ false, %16 ], [ %31, %29 ]
  br i1 %33, label %34, label %78, !dbg !728

; <label>:34:                                     ; preds = %32
  %35 = load i32, i32* %10, align 4, !dbg !730
  %36 = zext i32 %35 to i64, !dbg !733
  %37 = load i8*, i8** %4, align 8, !dbg !733
  %38 = getelementptr inbounds i8, i8* %37, i64 %36, !dbg !733
  %39 = load i8, i8* %38, align 1, !dbg !733
  %40 = sext i8 %39 to i32, !dbg !733
  %41 = load i8, i8* %5, align 1, !dbg !734
  %42 = sext i8 %41 to i32, !dbg !734
  %43 = icmp eq i32 %40, %42, !dbg !735
  br i1 %43, label %44, label %45, !dbg !736

; <label>:44:                                     ; preds = %34
  br label %115, !dbg !737

; <label>:45:                                     ; preds = %34
  %46 = load i8*, i8** %7, align 8, !dbg !738
  %47 = load i8, i8* %46, align 1, !dbg !740
  %48 = sext i8 %47 to i32, !dbg !740
  %49 = load i8, i8* %5, align 1, !dbg !741
  %50 = sext i8 %49 to i32, !dbg !741
  %51 = icmp eq i32 %48, %50, !dbg !742
  br i1 %51, label %52, label %53, !dbg !743

; <label>:52:                                     ; preds = %45
  br label %78, !dbg !744

; <label>:53:                                     ; preds = %45
  %54 = load i8*, i8** %7, align 8, !dbg !745
  %55 = load i8, i8* %54, align 1, !dbg !747
  %56 = sext i8 %55 to i32, !dbg !747
  %57 = load i32, i32* %10, align 4, !dbg !748
  %58 = zext i32 %57 to i64, !dbg !749
  %59 = load i8*, i8** %4, align 8, !dbg !749
  %60 = getelementptr inbounds i8, i8* %59, i64 %58, !dbg !749
  %61 = load i8, i8* %60, align 1, !dbg !749
  %62 = sext i8 %61 to i32, !dbg !749
  %63 = icmp eq i32 %56, %62, !dbg !750
  br i1 %63, label %64, label %75, !dbg !751

; <label>:64:                                     ; preds = %53
  %65 = load i32, i32* %10, align 4, !dbg !752
  %66 = add i32 %65, 1, !dbg !752
  store i32 %66, i32* %10, align 4, !dbg !752
  %67 = zext i32 %65 to i64, !dbg !754
  %68 = load i8*, i8** %4, align 8, !dbg !754
  %69 = getelementptr inbounds i8, i8* %68, i64 %67, !dbg !754
  %70 = load i8, i8* %69, align 1, !dbg !754
  %71 = load i32, i32* %9, align 4, !dbg !755
  %72 = add i32 %71, 1, !dbg !755
  store i32 %72, i32* %9, align 4, !dbg !755
  %73 = zext i32 %71 to i64, !dbg !756
  %74 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 %73, !dbg !756
  store i8 %70, i8* %74, align 1, !dbg !757
  br label %75, !dbg !758

; <label>:75:                                     ; preds = %64, %53
  %76 = load i8*, i8** %7, align 8, !dbg !759
  %77 = getelementptr inbounds i8, i8* %76, i32 1, !dbg !759
  store i8* %77, i8** %7, align 8, !dbg !759
  br label %16, !dbg !760, !llvm.loop !762

; <label>:78:                                     ; preds = %52, %32
  %79 = load i8, i8* %5, align 1, !dbg !763
  %80 = load i32, i32* %9, align 4, !dbg !764
  %81 = add i32 %80, 1, !dbg !764
  store i32 %81, i32* %9, align 4, !dbg !764
  %82 = zext i32 %80 to i64, !dbg !765
  %83 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 %82, !dbg !765
  store i8 %79, i8* %83, align 1, !dbg !766
  br label %84, !dbg !767

; <label>:84:                                     ; preds = %97, %78
  %85 = load i32, i32* %10, align 4, !dbg !768
  %86 = zext i32 %85 to i64, !dbg !769
  %87 = load i8*, i8** %4, align 8, !dbg !769
  %88 = getelementptr inbounds i8, i8* %87, i64 %86, !dbg !769
  %89 = load i8, i8* %88, align 1, !dbg !769
  %90 = sext i8 %89 to i32, !dbg !769
  %91 = icmp ne i32 %90, 0, !dbg !770
  br i1 %91, label %92, label %95, !dbg !771

; <label>:92:                                     ; preds = %84
  %93 = load i32, i32* %9, align 4, !dbg !772
  %94 = icmp ult i32 %93, 7, !dbg !773
  br label %95

; <label>:95:                                     ; preds = %92, %84
  %96 = phi i1 [ false, %84 ], [ %94, %92 ]
  br i1 %96, label %97, label %108, !dbg !774

; <label>:97:                                     ; preds = %95
  %98 = load i32, i32* %10, align 4, !dbg !775
  %99 = add i32 %98, 1, !dbg !775
  store i32 %99, i32* %10, align 4, !dbg !775
  %100 = zext i32 %98 to i64, !dbg !776
  %101 = load i8*, i8** %4, align 8, !dbg !776
  %102 = getelementptr inbounds i8, i8* %101, i64 %100, !dbg !776
  %103 = load i8, i8* %102, align 1, !dbg !776
  %104 = load i32, i32* %9, align 4, !dbg !777
  %105 = add i32 %104, 1, !dbg !777
  store i32 %105, i32* %9, align 4, !dbg !777
  %106 = zext i32 %104 to i64, !dbg !778
  %107 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 %106, !dbg !778
  store i8 %103, i8* %107, align 1, !dbg !779
  br label %84, !dbg !780, !llvm.loop !781

; <label>:108:                                    ; preds = %95
  %109 = load i32, i32* %9, align 4, !dbg !782
  %110 = zext i32 %109 to i64, !dbg !783
  %111 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 %110, !dbg !783
  store i8 0, i8* %111, align 1, !dbg !784
  %112 = load i8*, i8** %4, align 8, !dbg !785
  %113 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i32 0, i32 0, !dbg !786
  %114 = call i8* @strcpy(i8* %112, i8* %113) #7, !dbg !787
  br label %115, !dbg !788

; <label>:115:                                    ; preds = %108, %44
  ret void, !dbg !789
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @prefix_del(i8*, i8 signext) #0 !dbg !790 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !793, metadata !697), !dbg !794
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !795, metadata !697), !dbg !796
  call void @llvm.dbg.declare(metadata i8** %5, metadata !797, metadata !697), !dbg !798
  %6 = load i8*, i8** %3, align 8, !dbg !799
  %7 = load i8, i8* %4, align 1, !dbg !800
  %8 = sext i8 %7 to i32, !dbg !800
  %9 = call i8* @strchr(i8* %6, i32 %8) #8, !dbg !801
  store i8* %9, i8** %5, align 8, !dbg !802
  %10 = load i8*, i8** %5, align 8, !dbg !803
  %11 = icmp ne i8* %10, null, !dbg !803
  br i1 %11, label %12, label %18, !dbg !805

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %5, align 8, !dbg !806
  %14 = load i8*, i8** %5, align 8, !dbg !807
  %15 = getelementptr inbounds i8, i8* %14, i64 1, !dbg !808
  %16 = load i8*, i8** %5, align 8, !dbg !809
  %17 = call i64 @strlen(i8* %16) #8, !dbg !810
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %13, i8* %15, i64 %17, i32 1, i1 false), !dbg !811
  br label %18, !dbg !813

; <label>:18:                                     ; preds = %12, %2
  ret void, !dbg !814
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define void @modes_type_a(%struct._IRC_CHANNEL_REC*, i8*, i8 signext, i8 signext, i8*, %struct._GString*) #0 !dbg !815 {
  %7 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca %struct._GString*, align 8
  store %struct._IRC_CHANNEL_REC* %0, %struct._IRC_CHANNEL_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %7, metadata !816, metadata !697), !dbg !817
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !818, metadata !697), !dbg !819
  store i8 %2, i8* %9, align 1
  call void @llvm.dbg.declare(metadata i8* %9, metadata !820, metadata !697), !dbg !821
  store i8 %3, i8* %10, align 1
  call void @llvm.dbg.declare(metadata i8* %10, metadata !822, metadata !697), !dbg !823
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !824, metadata !697), !dbg !825
  store %struct._GString* %5, %struct._GString** %12, align 8
  call void @llvm.dbg.declare(metadata %struct._GString** %12, metadata !826, metadata !697), !dbg !827
  %13 = load i8, i8* %10, align 1, !dbg !828
  %14 = sext i8 %13 to i32, !dbg !828
  %15 = icmp eq i32 %14, 98, !dbg !830
  br i1 %15, label %16, label %31, !dbg !831

; <label>:16:                                     ; preds = %6
  %17 = load i8, i8* %9, align 1, !dbg !832
  %18 = sext i8 %17 to i32, !dbg !832
  %19 = icmp eq i32 %18, 43, !dbg !835
  br i1 %19, label %20, label %26, !dbg !836

; <label>:20:                                     ; preds = %16
  %21 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !837
  %22 = load i8*, i8** %11, align 8, !dbg !838
  %23 = load i8*, i8** %8, align 8, !dbg !839
  %24 = call i64 @time(i64* null) #7, !dbg !840
  %25 = call %struct.BAN_REC* @banlist_add(%struct._IRC_CHANNEL_REC* %21, i8* %22, i8* %23, i64 %24), !dbg !841
  br label %30, !dbg !843

; <label>:26:                                     ; preds = %16
  %27 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !844
  %28 = load i8*, i8** %11, align 8, !dbg !845
  %29 = load i8*, i8** %8, align 8, !dbg !846
  call void @banlist_remove(%struct._IRC_CHANNEL_REC* %27, i8* %28, i8* %29), !dbg !847
  br label %30

; <label>:30:                                     ; preds = %26, %20
  br label %31, !dbg !848

; <label>:31:                                     ; preds = %30, %6
  ret void, !dbg !849
}

declare %struct.BAN_REC* @banlist_add(%struct._IRC_CHANNEL_REC*, i8*, i8*, i64) #5

; Function Attrs: nounwind
declare i64 @time(i64*) #2

declare void @banlist_remove(%struct._IRC_CHANNEL_REC*, i8*, i8*) #5

; Function Attrs: nounwind uwtable
define void @modes_type_b(%struct._IRC_CHANNEL_REC*, i8*, i8 signext, i8 signext, i8*, %struct._GString*) #0 !dbg !850 {
  %7 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca %struct._GString*, align 8
  store %struct._IRC_CHANNEL_REC* %0, %struct._IRC_CHANNEL_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %7, metadata !851, metadata !697), !dbg !852
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !853, metadata !697), !dbg !854
  store i8 %2, i8* %9, align 1
  call void @llvm.dbg.declare(metadata i8* %9, metadata !855, metadata !697), !dbg !856
  store i8 %3, i8* %10, align 1
  call void @llvm.dbg.declare(metadata i8* %10, metadata !857, metadata !697), !dbg !858
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !859, metadata !697), !dbg !860
  store %struct._GString* %5, %struct._GString** %12, align 8
  call void @llvm.dbg.declare(metadata %struct._GString** %12, metadata !861, metadata !697), !dbg !862
  %13 = load i8, i8* %10, align 1, !dbg !863
  %14 = sext i8 %13 to i32, !dbg !863
  %15 = icmp eq i32 %14, 107, !dbg !865
  br i1 %15, label %16, label %67, !dbg !866

; <label>:16:                                     ; preds = %6
  %17 = load i8*, i8** %11, align 8, !dbg !867
  %18 = load i8, i8* %17, align 1, !dbg !870
  %19 = sext i8 %18 to i32, !dbg !870
  %20 = icmp eq i32 %19, 0, !dbg !871
  br i1 %20, label %21, label %37, !dbg !872

; <label>:21:                                     ; preds = %16
  %22 = load i8, i8* %9, align 1, !dbg !873
  %23 = sext i8 %22 to i32, !dbg !873
  %24 = icmp eq i32 %23, 43, !dbg !875
  br i1 %24, label %25, label %37, !dbg !876

; <label>:25:                                     ; preds = %21
  %26 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !877
  %27 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %26, i32 0, i32 20, !dbg !878
  %28 = load i8*, i8** %27, align 8, !dbg !878
  %29 = icmp ne i8* %28, null, !dbg !879
  br i1 %29, label %30, label %34, !dbg !877

; <label>:30:                                     ; preds = %25
  %31 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !880
  %32 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %31, i32 0, i32 20, !dbg !881
  %33 = load i8*, i8** %32, align 8, !dbg !881
  br label %35, !dbg !882

; <label>:34:                                     ; preds = %25
  br label %35, !dbg !883

; <label>:35:                                     ; preds = %34, %30
  %36 = phi i8* [ %33, %30 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), %34 ], !dbg !885
  store i8* %36, i8** %11, align 8, !dbg !887
  br label %37, !dbg !888

; <label>:37:                                     ; preds = %35, %21, %16
  %38 = load i8*, i8** %11, align 8, !dbg !889
  %39 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !891
  %40 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %39, i32 0, i32 20, !dbg !892
  %41 = load i8*, i8** %40, align 8, !dbg !892
  %42 = icmp ne i8* %38, %41, !dbg !893
  br i1 %42, label %43, label %66, !dbg !894

; <label>:43:                                     ; preds = %37
  br label %44, !dbg !895, !llvm.loop !897

; <label>:44:                                     ; preds = %43
  %45 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !898
  %46 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %45, i32 0, i32 20, !dbg !902
  %47 = load i8*, i8** %46, align 8, !dbg !902
  %48 = icmp ne i8* %47, null, !dbg !898
  br i1 %48, label %49, label %55, !dbg !898

; <label>:49:                                     ; preds = %44
  %50 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !903
  %51 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %50, i32 0, i32 20, !dbg !906
  %52 = load i8*, i8** %51, align 8, !dbg !906
  call void @g_free(i8* %52), !dbg !907
  %53 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !908
  %54 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %53, i32 0, i32 20, !dbg !909
  store i8* null, i8** %54, align 8, !dbg !910
  br label %55, !dbg !911

; <label>:55:                                     ; preds = %49, %44
  br label %56, !dbg !912

; <label>:56:                                     ; preds = %55
  %57 = load i8, i8* %9, align 1, !dbg !914
  %58 = sext i8 %57 to i32, !dbg !914
  %59 = icmp eq i32 %58, 43, !dbg !916
  br i1 %59, label %60, label %65, !dbg !917

; <label>:60:                                     ; preds = %56
  %61 = load i8*, i8** %11, align 8, !dbg !918
  %62 = call noalias i8* @g_strdup(i8* %61), !dbg !919
  %63 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !920
  %64 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %63, i32 0, i32 20, !dbg !921
  store i8* %62, i8** %64, align 8, !dbg !922
  br label %65, !dbg !920

; <label>:65:                                     ; preds = %60, %56
  br label %66, !dbg !923

; <label>:66:                                     ; preds = %65, %37
  br label %67, !dbg !924

; <label>:67:                                     ; preds = %66, %6
  %68 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !925
  %69 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %68, i32 0, i32 4, !dbg !926
  %70 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %69, align 8, !dbg !926
  %71 = load %struct._GString*, %struct._GString** %12, align 8, !dbg !927
  %72 = load i8, i8* %9, align 1, !dbg !928
  %73 = load i8, i8* %10, align 1, !dbg !929
  %74 = load i8*, i8** %11, align 8, !dbg !930
  call void @mode_set_arg(%struct._IRC_SERVER_REC* %70, %struct._GString* %71, i8 signext %72, i8 signext %73, i8* %74, i32 0), !dbg !931
  ret void, !dbg !932
}

declare void @g_free(i8*) #5

declare noalias i8* @g_strdup(i8*) #5

; Function Attrs: nounwind uwtable
define internal void @mode_set_arg(%struct._IRC_SERVER_REC*, %struct._GString*, i8 signext, i8 signext, i8*, i32) #0 !dbg !933 {
  %7 = alloca %struct._IRC_SERVER_REC*, align 8
  %8 = alloca %struct._GString*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %7, metadata !936, metadata !697), !dbg !937
  store %struct._GString* %1, %struct._GString** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._GString** %8, metadata !938, metadata !697), !dbg !939
  store i8 %2, i8* %9, align 1
  call void @llvm.dbg.declare(metadata i8* %9, metadata !940, metadata !697), !dbg !941
  store i8 %3, i8* %10, align 1
  call void @llvm.dbg.declare(metadata i8* %10, metadata !942, metadata !697), !dbg !943
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !944, metadata !697), !dbg !945
  store i32 %5, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !946, metadata !697), !dbg !947
  br label %13, !dbg !948, !llvm.loop !949

; <label>:13:                                     ; preds = %6
  %14 = load %struct._GString*, %struct._GString** %8, align 8, !dbg !950
  %15 = icmp ne %struct._GString* %14, null, !dbg !954
  br i1 %15, label %16, label %17, !dbg !950

; <label>:16:                                     ; preds = %13
  br label %18, !dbg !955

; <label>:17:                                     ; preds = %13
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.mode_set_arg, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0)), !dbg !958
  br label %45, !dbg !961

; <label>:18:                                     ; preds = %16
  br label %19, !dbg !962

; <label>:19:                                     ; preds = %18
  br label %20, !dbg !964, !llvm.loop !965

; <label>:20:                                     ; preds = %19
  %21 = load i8, i8* %9, align 1, !dbg !966
  %22 = sext i8 %21 to i32, !dbg !966
  %23 = icmp eq i32 %22, 45, !dbg !970
  br i1 %23, label %27, label %24, !dbg !971

; <label>:24:                                     ; preds = %20
  %25 = load i8*, i8** %11, align 8, !dbg !972
  %26 = icmp ne i8* %25, null, !dbg !974
  br i1 %26, label %27, label %28, !dbg !975

; <label>:27:                                     ; preds = %24, %20
  br label %29, !dbg !976

; <label>:28:                                     ; preds = %24
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.mode_set_arg, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i32 0, i32 0)), !dbg !979
  br label %45, !dbg !982

; <label>:29:                                     ; preds = %27
  br label %30, !dbg !983

; <label>:30:                                     ; preds = %29
  %31 = load i8, i8* %9, align 1, !dbg !985
  %32 = sext i8 %31 to i32, !dbg !985
  %33 = icmp eq i32 %32, 45, !dbg !987
  br i1 %33, label %34, label %39, !dbg !988

; <label>:34:                                     ; preds = %30
  %35 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %7, align 8, !dbg !989
  %36 = load %struct._GString*, %struct._GString** %8, align 8, !dbg !990
  %37 = load i8, i8* %10, align 1, !dbg !991
  %38 = load i32, i32* %12, align 4, !dbg !992
  call void @mode_remove(%struct._IRC_SERVER_REC* %35, %struct._GString* %36, i8 signext %37, i32 %38), !dbg !993
  br label %45, !dbg !993

; <label>:39:                                     ; preds = %30
  %40 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %7, align 8, !dbg !994
  %41 = load %struct._GString*, %struct._GString** %8, align 8, !dbg !995
  %42 = load i8, i8* %10, align 1, !dbg !996
  %43 = load i8*, i8** %11, align 8, !dbg !997
  %44 = load i32, i32* %12, align 4, !dbg !998
  call void @mode_add_sorted(%struct._IRC_SERVER_REC* %40, %struct._GString* %41, i8 signext %42, i8* %43, i32 %44), !dbg !999
  br label %45

; <label>:45:                                     ; preds = %17, %28, %39, %34
  ret void, !dbg !1000
}

; Function Attrs: nounwind uwtable
define void @modes_type_c(%struct._IRC_CHANNEL_REC*, i8*, i8 signext, i8 signext, i8*, %struct._GString*) #0 !dbg !1001 {
  %7 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca %struct._GString*, align 8
  store %struct._IRC_CHANNEL_REC* %0, %struct._IRC_CHANNEL_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %7, metadata !1002, metadata !697), !dbg !1003
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1004, metadata !697), !dbg !1005
  store i8 %2, i8* %9, align 1
  call void @llvm.dbg.declare(metadata i8* %9, metadata !1006, metadata !697), !dbg !1007
  store i8 %3, i8* %10, align 1
  call void @llvm.dbg.declare(metadata i8* %10, metadata !1008, metadata !697), !dbg !1009
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1010, metadata !697), !dbg !1011
  store %struct._GString* %5, %struct._GString** %12, align 8
  call void @llvm.dbg.declare(metadata %struct._GString** %12, metadata !1012, metadata !697), !dbg !1013
  %13 = load i8, i8* %10, align 1, !dbg !1014
  %14 = sext i8 %13 to i32, !dbg !1014
  %15 = icmp eq i32 %14, 108, !dbg !1016
  br i1 %15, label %16, label %28, !dbg !1017

; <label>:16:                                     ; preds = %6
  %17 = load i8, i8* %9, align 1, !dbg !1018
  %18 = sext i8 %17 to i32, !dbg !1018
  %19 = icmp eq i32 %18, 45, !dbg !1020
  br i1 %19, label %20, label %21, !dbg !1018

; <label>:20:                                     ; preds = %16
  br label %24, !dbg !1021

; <label>:21:                                     ; preds = %16
  %22 = load i8*, i8** %11, align 8, !dbg !1023
  %23 = call i32 @atoi(i8* %22) #8, !dbg !1025
  br label %24, !dbg !1026

; <label>:24:                                     ; preds = %21, %20
  %25 = phi i32 [ 0, %20 ], [ %23, %21 ], !dbg !1027
  %26 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !1029
  %27 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %26, i32 0, i32 19, !dbg !1030
  store i32 %25, i32* %27, align 8, !dbg !1031
  br label %28, !dbg !1032

; <label>:28:                                     ; preds = %24, %6
  %29 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !1033
  %30 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %29, i32 0, i32 4, !dbg !1034
  %31 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %30, align 8, !dbg !1034
  %32 = load %struct._GString*, %struct._GString** %12, align 8, !dbg !1035
  %33 = load i8, i8* %9, align 1, !dbg !1036
  %34 = load i8, i8* %10, align 1, !dbg !1037
  %35 = load i8*, i8** %11, align 8, !dbg !1038
  call void @mode_set_arg(%struct._IRC_SERVER_REC* %31, %struct._GString* %32, i8 signext %33, i8 signext %34, i8* %35, i32 0), !dbg !1039
  ret void, !dbg !1040
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

; Function Attrs: nounwind uwtable
define void @modes_type_d(%struct._IRC_CHANNEL_REC*, i8*, i8 signext, i8 signext, i8*, %struct._GString*) #0 !dbg !1041 {
  %7 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca %struct._GString*, align 8
  store %struct._IRC_CHANNEL_REC* %0, %struct._IRC_CHANNEL_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %7, metadata !1042, metadata !697), !dbg !1043
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1044, metadata !697), !dbg !1045
  store i8 %2, i8* %9, align 1
  call void @llvm.dbg.declare(metadata i8* %9, metadata !1046, metadata !697), !dbg !1047
  store i8 %3, i8* %10, align 1
  call void @llvm.dbg.declare(metadata i8* %10, metadata !1048, metadata !697), !dbg !1049
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1050, metadata !697), !dbg !1051
  store %struct._GString* %5, %struct._GString** %12, align 8
  call void @llvm.dbg.declare(metadata %struct._GString** %12, metadata !1052, metadata !697), !dbg !1053
  %13 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !1054
  %14 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %13, i32 0, i32 4, !dbg !1055
  %15 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %14, align 8, !dbg !1055
  %16 = load %struct._GString*, %struct._GString** %12, align 8, !dbg !1056
  %17 = load i8, i8* %9, align 1, !dbg !1057
  %18 = load i8, i8* %10, align 1, !dbg !1058
  call void @mode_set(%struct._IRC_SERVER_REC* %15, %struct._GString* %16, i8 signext %17, i8 signext %18, i32 0), !dbg !1059
  ret void, !dbg !1060
}

; Function Attrs: nounwind uwtable
define internal void @mode_set(%struct._IRC_SERVER_REC*, %struct._GString*, i8 signext, i8 signext, i32) #0 !dbg !1061 {
  %6 = alloca %struct._IRC_SERVER_REC*, align 8
  %7 = alloca %struct._GString*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %6, metadata !1064, metadata !697), !dbg !1065
  store %struct._GString* %1, %struct._GString** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._GString** %7, metadata !1066, metadata !697), !dbg !1067
  store i8 %2, i8* %8, align 1
  call void @llvm.dbg.declare(metadata i8* %8, metadata !1068, metadata !697), !dbg !1069
  store i8 %3, i8* %9, align 1
  call void @llvm.dbg.declare(metadata i8* %9, metadata !1070, metadata !697), !dbg !1071
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1072, metadata !697), !dbg !1073
  br label %11, !dbg !1074, !llvm.loop !1075

; <label>:11:                                     ; preds = %5
  %12 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !1076
  %13 = icmp ne %struct._GString* %12, null, !dbg !1080
  br i1 %13, label %14, label %15, !dbg !1076

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !1081

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__.mode_set, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0)), !dbg !1084
  br label %31, !dbg !1087

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !1088

; <label>:17:                                     ; preds = %16
  %18 = load i8, i8* %8, align 1, !dbg !1090
  %19 = sext i8 %18 to i32, !dbg !1090
  %20 = icmp eq i32 %19, 45, !dbg !1092
  br i1 %20, label %21, label %26, !dbg !1093

; <label>:21:                                     ; preds = %17
  %22 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1094
  %23 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !1095
  %24 = load i8, i8* %9, align 1, !dbg !1096
  %25 = load i32, i32* %10, align 4, !dbg !1097
  call void @mode_remove(%struct._IRC_SERVER_REC* %22, %struct._GString* %23, i8 signext %24, i32 %25), !dbg !1098
  br label %31, !dbg !1098

; <label>:26:                                     ; preds = %17
  %27 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1099
  %28 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !1100
  %29 = load i8, i8* %9, align 1, !dbg !1101
  %30 = load i32, i32* %10, align 4, !dbg !1102
  call void @mode_add_sorted(%struct._IRC_SERVER_REC* %27, %struct._GString* %28, i8 signext %29, i8* null, i32 %30), !dbg !1103
  br label %31

; <label>:31:                                     ; preds = %15, %26, %21
  ret void, !dbg !1104
}

; Function Attrs: nounwind uwtable
define void @modes_type_prefix(%struct._IRC_CHANNEL_REC*, i8*, i8 signext, i8 signext, i8*, %struct._GString*) #0 !dbg !1105 {
  %7 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca %struct._GString*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct._IRC_CHANNEL_REC* %0, %struct._IRC_CHANNEL_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %7, metadata !1106, metadata !697), !dbg !1107
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1108, metadata !697), !dbg !1109
  store i8 %2, i8* %9, align 1
  call void @llvm.dbg.declare(metadata i8* %9, metadata !1110, metadata !697), !dbg !1111
  store i8 %3, i8* %10, align 1
  call void @llvm.dbg.declare(metadata i8* %10, metadata !1112, metadata !697), !dbg !1113
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1114, metadata !697), !dbg !1115
  store %struct._GString* %5, %struct._GString** %12, align 8
  call void @llvm.dbg.declare(metadata %struct._GString** %12, metadata !1116, metadata !697), !dbg !1117
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1118, metadata !697), !dbg !1119
  %15 = load i8, i8* %10, align 1, !dbg !1120
  %16 = zext i8 %15 to i32, !dbg !1121
  store i32 %16, i32* %13, align 4, !dbg !1119
  %17 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !1122
  %18 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %17, i32 0, i32 4, !dbg !1124
  %19 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %18, align 8, !dbg !1124
  %20 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %19, i32 0, i32 7, !dbg !1125
  %21 = load i8*, i8** %20, align 8, !dbg !1125
  %22 = load i8*, i8** %11, align 8, !dbg !1126
  %23 = call i32 @g_ascii_strcasecmp(i8* %21, i8* %22), !dbg !1127
  %24 = icmp eq i32 %23, 0, !dbg !1128
  br i1 %24, label %25, label %107, !dbg !1129

; <label>:25:                                     ; preds = %6
  call void @llvm.dbg.declare(metadata i8** %14, metadata !1130, metadata !697), !dbg !1132
  %26 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !1133
  %27 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %26, i32 0, i32 4, !dbg !1134
  %28 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %27, align 8, !dbg !1134
  %29 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %28, i32 0, i32 69, !dbg !1135
  %30 = load %struct._GHashTable*, %struct._GHashTable** %29, align 8, !dbg !1135
  %31 = call i8* @g_hash_table_lookup(%struct._GHashTable* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0)), !dbg !1136
  store i8* %31, i8** %14, align 8, !dbg !1132
  %32 = load i8*, i8** %14, align 8, !dbg !1137
  %33 = icmp ne i8* %32, null, !dbg !1139
  br i1 %33, label %34, label %84, !dbg !1140

; <label>:34:                                     ; preds = %25
  %35 = load i8*, i8** %14, align 8, !dbg !1141
  %36 = load i8, i8* %35, align 1, !dbg !1143
  %37 = sext i8 %36 to i32, !dbg !1143
  %38 = icmp eq i32 %37, 40, !dbg !1144
  br i1 %38, label %39, label %84, !dbg !1145

; <label>:39:                                     ; preds = %34
  %40 = load i8*, i8** %14, align 8, !dbg !1146
  %41 = getelementptr inbounds i8, i8* %40, i32 1, !dbg !1146
  store i8* %41, i8** %14, align 8, !dbg !1146
  br label %42, !dbg !1148

; <label>:42:                                     ; preds = %80, %39
  %43 = load i8*, i8** %14, align 8, !dbg !1149
  %44 = load i8, i8* %43, align 1, !dbg !1151
  %45 = sext i8 %44 to i32, !dbg !1151
  %46 = icmp ne i32 %45, 41, !dbg !1152
  br i1 %46, label %47, label %52, !dbg !1153

; <label>:47:                                     ; preds = %42
  %48 = load i8*, i8** %14, align 8, !dbg !1154
  %49 = load i8, i8* %48, align 1, !dbg !1156
  %50 = sext i8 %49 to i32, !dbg !1156
  %51 = icmp ne i32 %50, 0, !dbg !1157
  br label %52

; <label>:52:                                     ; preds = %47, %42
  %53 = phi i1 [ false, %42 ], [ %51, %47 ]
  br i1 %53, label %54, label %83, !dbg !1158

; <label>:54:                                     ; preds = %52
  %55 = load i8*, i8** %14, align 8, !dbg !1160
  %56 = load i8, i8* %55, align 1, !dbg !1163
  %57 = sext i8 %56 to i32, !dbg !1163
  %58 = load i8, i8* %10, align 1, !dbg !1164
  %59 = sext i8 %58 to i32, !dbg !1164
  %60 = icmp eq i32 %57, %59, !dbg !1165
  br i1 %60, label %61, label %74, !dbg !1166

; <label>:61:                                     ; preds = %54
  %62 = load i8, i8* %9, align 1, !dbg !1167
  %63 = sext i8 %62 to i32, !dbg !1167
  %64 = icmp eq i32 %63, 43, !dbg !1169
  %65 = zext i1 %64 to i32, !dbg !1169
  %66 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !1170
  %67 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %66, i32 0, i32 21, !dbg !1171
  %68 = trunc i32 %65 to i16, !dbg !1172
  %69 = load i16, i16* %67, align 8, !dbg !1172
  %70 = and i16 %68, 1, !dbg !1172
  %71 = and i16 %69, -2, !dbg !1172
  %72 = or i16 %71, %70, !dbg !1172
  store i16 %72, i16* %67, align 8, !dbg !1172
  %73 = zext i16 %70 to i32, !dbg !1172
  br label %83, !dbg !1173

; <label>:74:                                     ; preds = %54
  %75 = load i8*, i8** %14, align 8, !dbg !1174
  %76 = load i8, i8* %75, align 1, !dbg !1176
  %77 = sext i8 %76 to i32, !dbg !1176
  %78 = icmp eq i32 %77, 111, !dbg !1177
  br i1 %78, label %79, label %80, !dbg !1178

; <label>:79:                                     ; preds = %74
  br label %83, !dbg !1179

; <label>:80:                                     ; preds = %74
  %81 = load i8*, i8** %14, align 8, !dbg !1180
  %82 = getelementptr inbounds i8, i8* %81, i32 1, !dbg !1180
  store i8* %82, i8** %14, align 8, !dbg !1180
  br label %42, !dbg !1181, !llvm.loop !1183

; <label>:83:                                     ; preds = %79, %61, %52
  br label %106, !dbg !1184

; <label>:84:                                     ; preds = %34, %25
  %85 = load i8, i8* %10, align 1, !dbg !1185
  %86 = sext i8 %85 to i32, !dbg !1185
  %87 = icmp eq i32 %86, 111, !dbg !1188
  br i1 %87, label %92, label %88, !dbg !1189

; <label>:88:                                     ; preds = %84
  %89 = load i8, i8* %10, align 1, !dbg !1190
  %90 = sext i8 %89 to i32, !dbg !1190
  %91 = icmp eq i32 %90, 79, !dbg !1192
  br i1 %91, label %92, label %105, !dbg !1193

; <label>:92:                                     ; preds = %88, %84
  %93 = load i8, i8* %9, align 1, !dbg !1194
  %94 = sext i8 %93 to i32, !dbg !1194
  %95 = icmp eq i32 %94, 43, !dbg !1195
  %96 = zext i1 %95 to i32, !dbg !1195
  %97 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !1196
  %98 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %97, i32 0, i32 21, !dbg !1197
  %99 = trunc i32 %96 to i16, !dbg !1198
  %100 = load i16, i16* %98, align 8, !dbg !1198
  %101 = and i16 %99, 1, !dbg !1198
  %102 = and i16 %100, -2, !dbg !1198
  %103 = or i16 %102, %101, !dbg !1198
  store i16 %103, i16* %98, align 8, !dbg !1198
  %104 = zext i16 %101 to i32, !dbg !1198
  br label %105, !dbg !1196

; <label>:105:                                    ; preds = %92, %88
  br label %106

; <label>:106:                                    ; preds = %105, %83
  br label %107, !dbg !1199

; <label>:107:                                    ; preds = %106, %6
  %108 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !1200
  %109 = load i8*, i8** %11, align 8, !dbg !1201
  %110 = load i32, i32* %13, align 4, !dbg !1202
  %111 = sext i32 %110 to i64, !dbg !1203
  %112 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !1203
  %113 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %112, i32 0, i32 4, !dbg !1204
  %114 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %113, align 8, !dbg !1204
  %115 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %114, i32 0, i32 70, !dbg !1205
  %116 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %115, i64 0, i64 %111, !dbg !1203
  %117 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %116, i32 0, i32 1, !dbg !1206
  %118 = load i8, i8* %117, align 8, !dbg !1206
  %119 = load i8, i8* %9, align 1, !dbg !1207
  %120 = sext i8 %119 to i32, !dbg !1207
  %121 = load i8*, i8** %8, align 8, !dbg !1208
  call void @nick_mode_change(%struct._IRC_CHANNEL_REC* %108, i8* %109, i8 signext %118, i32 %120, i8* %121), !dbg !1209
  ret void, !dbg !1210
}

declare i32 @g_ascii_strcasecmp(i8*, i8*) #5

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #5

; Function Attrs: nounwind uwtable
define internal void @nick_mode_change(%struct._IRC_CHANNEL_REC*, i8*, i8 signext, i32, i8*) #0 !dbg !1211 {
  %6 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct._NICK_REC*, align 8
  %12 = alloca [2 x i8], align 1
  %13 = alloca [2 x i8], align 1
  store %struct._IRC_CHANNEL_REC* %0, %struct._IRC_CHANNEL_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %6, metadata !1214, metadata !697), !dbg !1215
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1216, metadata !697), !dbg !1217
  store i8 %2, i8* %8, align 1
  call void @llvm.dbg.declare(metadata i8* %8, metadata !1218, metadata !697), !dbg !1219
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1220, metadata !697), !dbg !1221
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1222, metadata !697), !dbg !1223
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %11, metadata !1224, metadata !697), !dbg !1225
  call void @llvm.dbg.declare(metadata [2 x i8]* %12, metadata !1226, metadata !697), !dbg !1228
  call void @llvm.dbg.declare(metadata [2 x i8]* %13, metadata !1229, metadata !697), !dbg !1230
  br label %14, !dbg !1231, !llvm.loop !1232

; <label>:14:                                     ; preds = %5
  %15 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %6, align 8, !dbg !1233
  %16 = bitcast %struct._IRC_CHANNEL_REC* %15 to i8*, !dbg !1233
  %17 = call i8* @module_check_cast_module(i8* %16, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0)), !dbg !1237
  %18 = bitcast i8* %17 to %struct._CHANNEL_REC*, !dbg !1238
  %19 = bitcast %struct._CHANNEL_REC* %18 to i8*, !dbg !1239
  %20 = call i8* @chat_protocol_check_cast(i8* %19, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)), !dbg !1240
  %21 = bitcast i8* %20 to %struct._IRC_CHANNEL_REC*, !dbg !1242
  %22 = icmp ne %struct._IRC_CHANNEL_REC* %21, null, !dbg !1242
  br i1 %22, label %23, label %24, !dbg !1243

; <label>:23:                                     ; preds = %14
  br i1 false, label %26, label %25, !dbg !1244

; <label>:24:                                     ; preds = %14
  br i1 false, label %25, label %26, !dbg !1246

; <label>:25:                                     ; preds = %24, %23
  br label %27, !dbg !1248

; <label>:26:                                     ; preds = %24, %23
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.nick_mode_change, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0)), !dbg !1251
  br label %141, !dbg !1254

; <label>:27:                                     ; preds = %25
  br label %28, !dbg !1255

; <label>:28:                                     ; preds = %27
  br label %29, !dbg !1257, !llvm.loop !1258

; <label>:29:                                     ; preds = %28
  %30 = load i8*, i8** %7, align 8, !dbg !1259
  %31 = icmp ne i8* %30, null, !dbg !1263
  br i1 %31, label %32, label %33, !dbg !1259

; <label>:32:                                     ; preds = %29
  br label %34, !dbg !1264

; <label>:33:                                     ; preds = %29
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.nick_mode_change, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0)), !dbg !1267
  br label %141, !dbg !1270

; <label>:34:                                     ; preds = %32
  br label %35, !dbg !1271

; <label>:35:                                     ; preds = %34
  %36 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %6, align 8, !dbg !1273
  %37 = bitcast %struct._IRC_CHANNEL_REC* %36 to i8*, !dbg !1273
  %38 = call i8* @module_check_cast_module(i8* %37, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0)), !dbg !1274
  %39 = bitcast i8* %38 to %struct._CHANNEL_REC*, !dbg !1275
  %40 = load i8*, i8** %7, align 8, !dbg !1276
  %41 = call %struct._NICK_REC* @nicklist_find(%struct._CHANNEL_REC* %39, i8* %40), !dbg !1277
  store %struct._NICK_REC* %41, %struct._NICK_REC** %11, align 8, !dbg !1279
  %42 = load %struct._NICK_REC*, %struct._NICK_REC** %11, align 8, !dbg !1280
  %43 = icmp eq %struct._NICK_REC* %42, null, !dbg !1282
  br i1 %43, label %44, label %45, !dbg !1283

; <label>:44:                                     ; preds = %35
  br label %141, !dbg !1284

; <label>:45:                                     ; preds = %35
  %46 = load i8, i8* %8, align 1, !dbg !1286
  %47 = sext i8 %46 to i32, !dbg !1286
  %48 = icmp eq i32 %47, 64, !dbg !1288
  br i1 %48, label %49, label %62, !dbg !1289

; <label>:49:                                     ; preds = %45
  %50 = load i32, i32* %9, align 4, !dbg !1290
  %51 = icmp eq i32 %50, 43, !dbg !1292
  %52 = zext i1 %51 to i32, !dbg !1292
  %53 = load %struct._NICK_REC*, %struct._NICK_REC** %11, align 8, !dbg !1293
  %54 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %53, i32 0, i32 7, !dbg !1294
  %55 = trunc i32 %52 to i8, !dbg !1295
  %56 = load i8, i8* %54, align 4, !dbg !1295
  %57 = and i8 %55, 1, !dbg !1295
  %58 = shl i8 %57, 3, !dbg !1295
  %59 = and i8 %56, -9, !dbg !1295
  %60 = or i8 %59, %58, !dbg !1295
  store i8 %60, i8* %54, align 4, !dbg !1295
  %61 = zext i8 %57 to i32, !dbg !1295
  br label %98, !dbg !1293

; <label>:62:                                     ; preds = %45
  %63 = load i8, i8* %8, align 1, !dbg !1296
  %64 = sext i8 %63 to i32, !dbg !1296
  %65 = icmp eq i32 %64, 43, !dbg !1298
  br i1 %65, label %66, label %79, !dbg !1299

; <label>:66:                                     ; preds = %62
  %67 = load i32, i32* %9, align 4, !dbg !1300
  %68 = icmp eq i32 %67, 43, !dbg !1302
  %69 = zext i1 %68 to i32, !dbg !1302
  %70 = load %struct._NICK_REC*, %struct._NICK_REC** %11, align 8, !dbg !1303
  %71 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %70, i32 0, i32 7, !dbg !1304
  %72 = trunc i32 %69 to i8, !dbg !1305
  %73 = load i8, i8* %71, align 4, !dbg !1305
  %74 = and i8 %72, 1, !dbg !1305
  %75 = shl i8 %74, 5, !dbg !1305
  %76 = and i8 %73, -33, !dbg !1305
  %77 = or i8 %76, %75, !dbg !1305
  store i8 %77, i8* %71, align 4, !dbg !1305
  %78 = zext i8 %74 to i32, !dbg !1305
  br label %97, !dbg !1303

; <label>:79:                                     ; preds = %62
  %80 = load i8, i8* %8, align 1, !dbg !1306
  %81 = sext i8 %80 to i32, !dbg !1306
  %82 = icmp eq i32 %81, 37, !dbg !1308
  br i1 %82, label %83, label %96, !dbg !1309

; <label>:83:                                     ; preds = %79
  %84 = load i32, i32* %9, align 4, !dbg !1310
  %85 = icmp eq i32 %84, 43, !dbg !1312
  %86 = zext i1 %85 to i32, !dbg !1312
  %87 = load %struct._NICK_REC*, %struct._NICK_REC** %11, align 8, !dbg !1313
  %88 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %87, i32 0, i32 7, !dbg !1314
  %89 = trunc i32 %86 to i8, !dbg !1315
  %90 = load i8, i8* %88, align 4, !dbg !1315
  %91 = and i8 %89, 1, !dbg !1315
  %92 = shl i8 %91, 4, !dbg !1315
  %93 = and i8 %90, -17, !dbg !1315
  %94 = or i8 %93, %92, !dbg !1315
  store i8 %94, i8* %88, align 4, !dbg !1315
  %95 = zext i8 %91 to i32, !dbg !1315
  br label %96, !dbg !1313

; <label>:96:                                     ; preds = %83, %79
  br label %97

; <label>:97:                                     ; preds = %96, %66
  br label %98

; <label>:98:                                     ; preds = %97, %49
  %99 = load i8, i8* %8, align 1, !dbg !1316
  %100 = zext i8 %99 to i64, !dbg !1318
  %101 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %6, align 8, !dbg !1318
  %102 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %101, i32 0, i32 4, !dbg !1319
  %103 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %102, align 8, !dbg !1319
  %104 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %103, i32 0, i32 71, !dbg !1320
  %105 = getelementptr inbounds [256 x i8], [256 x i8]* %104, i64 0, i64 %100, !dbg !1318
  %106 = load i8, i8* %105, align 1, !dbg !1318
  %107 = sext i8 %106 to i32, !dbg !1318
  %108 = icmp ne i32 %107, 0, !dbg !1321
  br i1 %108, label %109, label %127, !dbg !1322

; <label>:109:                                    ; preds = %98
  %110 = load i32, i32* %9, align 4, !dbg !1323
  %111 = icmp eq i32 %110, 43, !dbg !1326
  br i1 %111, label %112, label %121, !dbg !1327

; <label>:112:                                    ; preds = %109
  %113 = load %struct._NICK_REC*, %struct._NICK_REC** %11, align 8, !dbg !1328
  %114 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %113, i32 0, i32 8, !dbg !1329
  %115 = getelementptr inbounds [8 x i8], [8 x i8]* %114, i32 0, i32 0, !dbg !1328
  %116 = load i8, i8* %8, align 1, !dbg !1330
  %117 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %6, align 8, !dbg !1331
  %118 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %117, i32 0, i32 4, !dbg !1332
  %119 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %118, align 8, !dbg !1332
  %120 = bitcast %struct._IRC_SERVER_REC* %119 to %struct._SERVER_REC*, !dbg !1333
  call void @prefix_add(i8* %115, i8 signext %116, %struct._SERVER_REC* %120), !dbg !1334
  br label %126, !dbg !1334

; <label>:121:                                    ; preds = %109
  %122 = load %struct._NICK_REC*, %struct._NICK_REC** %11, align 8, !dbg !1335
  %123 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %122, i32 0, i32 8, !dbg !1336
  %124 = getelementptr inbounds [8 x i8], [8 x i8]* %123, i32 0, i32 0, !dbg !1335
  %125 = load i8, i8* %8, align 1, !dbg !1337
  call void @prefix_del(i8* %124, i8 signext %125), !dbg !1338
  br label %126

; <label>:126:                                    ; preds = %121, %112
  br label %127, !dbg !1339

; <label>:127:                                    ; preds = %126, %98
  %128 = load i8, i8* %8, align 1, !dbg !1340
  %129 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0, !dbg !1341
  store i8 %128, i8* %129, align 1, !dbg !1342
  %130 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 1, !dbg !1343
  store i8 0, i8* %130, align 1, !dbg !1344
  %131 = load i32, i32* %9, align 4, !dbg !1345
  %132 = trunc i32 %131 to i8, !dbg !1345
  %133 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 0, !dbg !1346
  store i8 %132, i8* %133, align 1, !dbg !1347
  %134 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i64 0, i64 1, !dbg !1348
  store i8 0, i8* %134, align 1, !dbg !1349
  %135 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %6, align 8, !dbg !1350
  %136 = load %struct._NICK_REC*, %struct._NICK_REC** %11, align 8, !dbg !1351
  %137 = load i8*, i8** %10, align 8, !dbg !1352
  %138 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i32 0, i32 0, !dbg !1353
  %139 = getelementptr inbounds [2 x i8], [2 x i8]* %13, i32 0, i32 0, !dbg !1354
  %140 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.36, i32 0, i32 0), i32 5, %struct._IRC_CHANNEL_REC* %135, %struct._NICK_REC* %136, i8* %137, i8* %138, i8* %139), !dbg !1355
  br label %141, !dbg !1356

; <label>:141:                                    ; preds = %127, %44, %33, %26
  ret void, !dbg !1357
}

; Function Attrs: nounwind uwtable
define i32 @channel_mode_is_set(%struct._IRC_CHANNEL_REC*, i8 signext) #0 !dbg !1358 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %5 = alloca i8, align 1
  store %struct._IRC_CHANNEL_REC* %0, %struct._IRC_CHANNEL_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %4, metadata !1361, metadata !697), !dbg !1362
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1363, metadata !697), !dbg !1364
  br label %6, !dbg !1365, !llvm.loop !1366

; <label>:6:                                      ; preds = %2
  %7 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %4, align 8, !dbg !1367
  %8 = bitcast %struct._IRC_CHANNEL_REC* %7 to i8*, !dbg !1367
  %9 = call i8* @module_check_cast_module(i8* %8, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0)), !dbg !1371
  %10 = bitcast i8* %9 to %struct._CHANNEL_REC*, !dbg !1372
  %11 = bitcast %struct._CHANNEL_REC* %10 to i8*, !dbg !1373
  %12 = call i8* @chat_protocol_check_cast(i8* %11, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)), !dbg !1374
  %13 = bitcast i8* %12 to %struct._IRC_CHANNEL_REC*, !dbg !1376
  %14 = icmp ne %struct._IRC_CHANNEL_REC* %13, null, !dbg !1376
  br i1 %14, label %15, label %16, !dbg !1377

; <label>:15:                                     ; preds = %6
  br i1 false, label %18, label %17, !dbg !1378

; <label>:16:                                     ; preds = %6
  br i1 false, label %17, label %18, !dbg !1380

; <label>:17:                                     ; preds = %16, %15
  br label %19, !dbg !1382

; <label>:18:                                     ; preds = %16, %15
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.channel_mode_is_set, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0)), !dbg !1385
  store i32 0, i32* %3, align 4, !dbg !1388
  br label %34, !dbg !1388

; <label>:19:                                     ; preds = %17
  br label %20, !dbg !1389

; <label>:20:                                     ; preds = %19
  %21 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %4, align 8, !dbg !1391
  %22 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %21, i32 0, i32 18, !dbg !1392
  %23 = load i8*, i8** %22, align 8, !dbg !1392
  %24 = icmp eq i8* %23, null, !dbg !1393
  br i1 %24, label %25, label %26, !dbg !1391

; <label>:25:                                     ; preds = %20
  br label %32, !dbg !1394

; <label>:26:                                     ; preds = %20
  %27 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %4, align 8, !dbg !1396
  %28 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %27, i32 0, i32 18, !dbg !1397
  %29 = load i8*, i8** %28, align 8, !dbg !1397
  %30 = load i8, i8* %5, align 1, !dbg !1398
  %31 = call i32 @mode_is_set(i8* %29, i8 signext %30), !dbg !1399
  br label %32, !dbg !1400

; <label>:32:                                     ; preds = %26, %25
  %33 = phi i32 [ 0, %25 ], [ %31, %26 ], !dbg !1402
  store i32 %33, i32* %3, align 4, !dbg !1404
  br label %34, !dbg !1404

; <label>:34:                                     ; preds = %32, %18
  %35 = load i32, i32* %3, align 4, !dbg !1405
  ret i32 %35, !dbg !1405
}

declare i8* @chat_protocol_check_cast(i8*, i32, i8*) #5

declare i8* @module_check_cast_module(i8*, i32, i8*, i8*) #5

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #5

; Function Attrs: nounwind uwtable
define internal i32 @mode_is_set(i8*, i8 signext) #0 !dbg !1406 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1409, metadata !697), !dbg !1410
  store i8 %1, i8* %5, align 1
  call void @llvm.dbg.declare(metadata i8* %5, metadata !1411, metadata !697), !dbg !1412
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1413, metadata !697), !dbg !1414
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1415, metadata !697), !dbg !1416
  br label %8, !dbg !1417, !llvm.loop !1418

; <label>:8:                                      ; preds = %2
  %9 = load i8*, i8** %4, align 8, !dbg !1419
  %10 = icmp ne i8* %9, null, !dbg !1423
  br i1 %10, label %11, label %12, !dbg !1419

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !1424

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.mode_is_set, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i32 0, i32 0)), !dbg !1427
  store i32 0, i32* %3, align 4, !dbg !1430
  br label %35, !dbg !1430

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !1431

; <label>:14:                                     ; preds = %13
  %15 = load i8*, i8** %4, align 8, !dbg !1433
  %16 = call i8* @strchr(i8* %15, i32 32) #8, !dbg !1434
  store i8* %16, i8** %6, align 8, !dbg !1435
  %17 = load i8*, i8** %4, align 8, !dbg !1436
  %18 = load i8, i8* %5, align 1, !dbg !1437
  %19 = sext i8 %18 to i32, !dbg !1437
  %20 = call i8* @strchr(i8* %17, i32 %19) #8, !dbg !1438
  store i8* %20, i8** %7, align 8, !dbg !1439
  %21 = load i8*, i8** %7, align 8, !dbg !1440
  %22 = icmp ne i8* %21, null, !dbg !1441
  br i1 %22, label %23, label %32, !dbg !1442

; <label>:23:                                     ; preds = %14
  %24 = load i8*, i8** %6, align 8, !dbg !1443
  %25 = icmp eq i8* %24, null, !dbg !1445
  br i1 %25, label %30, label %26, !dbg !1446

; <label>:26:                                     ; preds = %23
  %27 = load i8*, i8** %7, align 8, !dbg !1447
  %28 = load i8*, i8** %6, align 8, !dbg !1449
  %29 = icmp ult i8* %27, %28, !dbg !1450
  br label %30, !dbg !1451

; <label>:30:                                     ; preds = %26, %23
  %31 = phi i1 [ true, %23 ], [ %29, %26 ]
  br label %32

; <label>:32:                                     ; preds = %30, %14
  %33 = phi i1 [ false, %14 ], [ %31, %30 ]
  %34 = zext i1 %33 to i32, !dbg !1452
  store i32 %34, i32* %3, align 4, !dbg !1454
  br label %35, !dbg !1454

; <label>:35:                                     ; preds = %32, %12
  %36 = load i32, i32* %3, align 4, !dbg !1455
  ret i32 %36, !dbg !1455
}

; Function Attrs: nounwind uwtable
define void @parse_channel_modes(%struct._IRC_CHANNEL_REC*, i8*, i8*, i32) #0 !dbg !1456 {
  %5 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct._IRC_SERVER_REC*, align 8
  %10 = alloca %struct._GString*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8, align 1
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct._IRC_CHANNEL_REC* %0, %struct._IRC_CHANNEL_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %5, metadata !1459, metadata !697), !dbg !1460
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1461, metadata !697), !dbg !1462
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1463, metadata !697), !dbg !1464
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1465, metadata !697), !dbg !1466
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %9, metadata !1467, metadata !697), !dbg !1468
  %18 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %5, align 8, !dbg !1469
  %19 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %18, i32 0, i32 4, !dbg !1470
  %20 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %19, align 8, !dbg !1470
  store %struct._IRC_SERVER_REC* %20, %struct._IRC_SERVER_REC** %9, align 8, !dbg !1468
  call void @llvm.dbg.declare(metadata %struct._GString** %10, metadata !1471, metadata !697), !dbg !1472
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1473, metadata !697), !dbg !1474
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1475, metadata !697), !dbg !1476
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1477, metadata !697), !dbg !1478
  call void @llvm.dbg.declare(metadata i8** %14, metadata !1479, metadata !697), !dbg !1480
  call void @llvm.dbg.declare(metadata i8* %15, metadata !1481, metadata !697), !dbg !1482
  call void @llvm.dbg.declare(metadata i8** %16, metadata !1483, metadata !697), !dbg !1484
  call void @llvm.dbg.declare(metadata i32* %17, metadata !1485, metadata !697), !dbg !1486
  br label %21, !dbg !1487, !llvm.loop !1488

; <label>:21:                                     ; preds = %4
  %22 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %5, align 8, !dbg !1489
  %23 = bitcast %struct._IRC_CHANNEL_REC* %22 to i8*, !dbg !1489
  %24 = call i8* @module_check_cast_module(i8* %23, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0)), !dbg !1493
  %25 = bitcast i8* %24 to %struct._CHANNEL_REC*, !dbg !1494
  %26 = bitcast %struct._CHANNEL_REC* %25 to i8*, !dbg !1495
  %27 = call i8* @chat_protocol_check_cast(i8* %26, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)), !dbg !1496
  %28 = bitcast i8* %27 to %struct._IRC_CHANNEL_REC*, !dbg !1498
  %29 = icmp ne %struct._IRC_CHANNEL_REC* %28, null, !dbg !1498
  br i1 %29, label %30, label %31, !dbg !1499

; <label>:30:                                     ; preds = %21
  br i1 false, label %33, label %32, !dbg !1500

; <label>:31:                                     ; preds = %21
  br i1 false, label %32, label %33, !dbg !1502

; <label>:32:                                     ; preds = %31, %30
  br label %34, !dbg !1504

; <label>:33:                                     ; preds = %31, %30
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.parse_channel_modes, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0)), !dbg !1507
  br label %273, !dbg !1510

; <label>:34:                                     ; preds = %32
  br label %35, !dbg !1511

; <label>:35:                                     ; preds = %34
  br label %36, !dbg !1513, !llvm.loop !1514

; <label>:36:                                     ; preds = %35
  %37 = load i8*, i8** %7, align 8, !dbg !1515
  %38 = icmp ne i8* %37, null, !dbg !1519
  br i1 %38, label %39, label %40, !dbg !1515

; <label>:39:                                     ; preds = %36
  br label %41, !dbg !1520

; <label>:40:                                     ; preds = %36
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.parse_channel_modes, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0)), !dbg !1523
  br label %273, !dbg !1526

; <label>:41:                                     ; preds = %39
  br label %42, !dbg !1527

; <label>:42:                                     ; preds = %41
  store i8 43, i8* %15, align 1, !dbg !1529
  %43 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %5, align 8, !dbg !1530
  %44 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %43, i32 0, i32 18, !dbg !1531
  %45 = load i8*, i8** %44, align 8, !dbg !1531
  %46 = call %struct._GString* @g_string_new(i8* %45), !dbg !1532
  store %struct._GString* %46, %struct._GString** %10, align 8, !dbg !1533
  %47 = load i32, i32* %8, align 4, !dbg !1534
  %48 = icmp ne i32 %47, 0, !dbg !1534
  br i1 %48, label %49, label %50, !dbg !1534

; <label>:49:                                     ; preds = %42
  br label %55, !dbg !1535

; <label>:50:                                     ; preds = %42
  %51 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %5, align 8, !dbg !1537
  %52 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %51, i32 0, i32 20, !dbg !1539
  %53 = load i8*, i8** %52, align 8, !dbg !1539
  %54 = call noalias i8* @g_strdup(i8* %53), !dbg !1540
  br label %55, !dbg !1541

; <label>:55:                                     ; preds = %50, %49
  %56 = phi i8* [ null, %49 ], [ %54, %50 ], !dbg !1542
  store i8* %56, i8** %16, align 8, !dbg !1544
  %57 = load i8*, i8** %7, align 8, !dbg !1545
  %58 = call noalias i8* @g_strdup(i8* %57), !dbg !1546
  store i8* %58, i8** %12, align 8, !dbg !1547
  store i8* %58, i8** %11, align 8, !dbg !1548
  %59 = call i8* @cmd_get_param(i8** %12), !dbg !1549
  store i8* %59, i8** %14, align 8, !dbg !1550
  br label %60, !dbg !1551

; <label>:60:                                     ; preds = %201, %55
  %61 = load i8*, i8** %14, align 8, !dbg !1552
  %62 = load i8, i8* %61, align 1, !dbg !1553
  %63 = sext i8 %62 to i32, !dbg !1553
  %64 = icmp ne i32 %63, 0, !dbg !1554
  br i1 %64, label %65, label %204, !dbg !1555

; <label>:65:                                     ; preds = %60
  %66 = load i8, i8* %15, align 1, !dbg !1556
  %67 = sext i8 %66 to i32, !dbg !1559
  %68 = icmp eq i32 %67, 43, !dbg !1560
  br i1 %68, label %69, label %117, !dbg !1561

; <label>:69:                                     ; preds = %65
  %70 = load i8*, i8** %14, align 8, !dbg !1562
  %71 = load i8, i8* %70, align 1, !dbg !1564
  %72 = zext i8 %71 to i32, !dbg !1565
  %73 = sext i32 %72 to i64, !dbg !1566
  %74 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %9, align 8, !dbg !1566
  %75 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %74, i32 0, i32 70, !dbg !1567
  %76 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %75, i64 0, i64 %73, !dbg !1566
  %77 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %76, i32 0, i32 0, !dbg !1568
  %78 = bitcast {}** %77 to void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)**, !dbg !1568
  %79 = load void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %78, align 8, !dbg !1568
  %80 = icmp eq void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* %79, @modes_type_a, !dbg !1569
  br i1 %80, label %153, label %81, !dbg !1570

; <label>:81:                                     ; preds = %69
  %82 = load i8*, i8** %14, align 8, !dbg !1571
  %83 = load i8, i8* %82, align 1, !dbg !1573
  %84 = zext i8 %83 to i32, !dbg !1574
  %85 = sext i32 %84 to i64, !dbg !1575
  %86 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %9, align 8, !dbg !1575
  %87 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %86, i32 0, i32 70, !dbg !1576
  %88 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %87, i64 0, i64 %85, !dbg !1575
  %89 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %88, i32 0, i32 0, !dbg !1577
  %90 = bitcast {}** %89 to void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)**, !dbg !1577
  %91 = load void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %90, align 8, !dbg !1577
  %92 = icmp eq void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* %91, @modes_type_b, !dbg !1578
  br i1 %92, label %153, label %93, !dbg !1579

; <label>:93:                                     ; preds = %81
  %94 = load i8*, i8** %14, align 8, !dbg !1580
  %95 = load i8, i8* %94, align 1, !dbg !1582
  %96 = zext i8 %95 to i32, !dbg !1583
  %97 = sext i32 %96 to i64, !dbg !1584
  %98 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %9, align 8, !dbg !1584
  %99 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %98, i32 0, i32 70, !dbg !1585
  %100 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %99, i64 0, i64 %97, !dbg !1584
  %101 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %100, i32 0, i32 0, !dbg !1586
  %102 = bitcast {}** %101 to void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)**, !dbg !1586
  %103 = load void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %102, align 8, !dbg !1586
  %104 = icmp eq void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* %103, @modes_type_prefix, !dbg !1587
  br i1 %104, label %153, label %105, !dbg !1588

; <label>:105:                                    ; preds = %93
  %106 = load i8*, i8** %14, align 8, !dbg !1589
  %107 = load i8, i8* %106, align 1, !dbg !1591
  %108 = zext i8 %107 to i32, !dbg !1592
  %109 = sext i32 %108 to i64, !dbg !1593
  %110 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %9, align 8, !dbg !1593
  %111 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %110, i32 0, i32 70, !dbg !1594
  %112 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %111, i64 0, i64 %109, !dbg !1593
  %113 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %112, i32 0, i32 0, !dbg !1595
  %114 = bitcast {}** %113 to void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)**, !dbg !1595
  %115 = load void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %114, align 8, !dbg !1595
  %116 = icmp eq void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* %115, @modes_type_c, !dbg !1596
  br i1 %116, label %153, label %155, !dbg !1597

; <label>:117:                                    ; preds = %65
  %118 = load i8*, i8** %14, align 8, !dbg !1598
  %119 = load i8, i8* %118, align 1, !dbg !1600
  %120 = zext i8 %119 to i32, !dbg !1601
  %121 = sext i32 %120 to i64, !dbg !1602
  %122 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %9, align 8, !dbg !1602
  %123 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %122, i32 0, i32 70, !dbg !1603
  %124 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %123, i64 0, i64 %121, !dbg !1602
  %125 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %124, i32 0, i32 0, !dbg !1604
  %126 = bitcast {}** %125 to void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)**, !dbg !1604
  %127 = load void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %126, align 8, !dbg !1604
  %128 = icmp eq void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* %127, @modes_type_a, !dbg !1605
  br i1 %128, label %153, label %129, !dbg !1606

; <label>:129:                                    ; preds = %117
  %130 = load i8*, i8** %14, align 8, !dbg !1607
  %131 = load i8, i8* %130, align 1, !dbg !1609
  %132 = zext i8 %131 to i32, !dbg !1610
  %133 = sext i32 %132 to i64, !dbg !1611
  %134 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %9, align 8, !dbg !1611
  %135 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %134, i32 0, i32 70, !dbg !1612
  %136 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %135, i64 0, i64 %133, !dbg !1611
  %137 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %136, i32 0, i32 0, !dbg !1613
  %138 = bitcast {}** %137 to void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)**, !dbg !1613
  %139 = load void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %138, align 8, !dbg !1613
  %140 = icmp eq void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* %139, @modes_type_b, !dbg !1614
  br i1 %140, label %153, label %141, !dbg !1615

; <label>:141:                                    ; preds = %129
  %142 = load i8*, i8** %14, align 8, !dbg !1616
  %143 = load i8, i8* %142, align 1, !dbg !1618
  %144 = zext i8 %143 to i32, !dbg !1619
  %145 = sext i32 %144 to i64, !dbg !1620
  %146 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %9, align 8, !dbg !1620
  %147 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %146, i32 0, i32 70, !dbg !1621
  %148 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %147, i64 0, i64 %145, !dbg !1620
  %149 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %148, i32 0, i32 0, !dbg !1622
  %150 = bitcast {}** %149 to void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)**, !dbg !1622
  %151 = load void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %150, align 8, !dbg !1622
  %152 = icmp eq void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* %151, @modes_type_prefix, !dbg !1623
  br i1 %152, label %153, label %155, !dbg !1624

; <label>:153:                                    ; preds = %141, %129, %117, %105, %93, %81, %69
  %154 = call i8* @cmd_get_param(i8** %12), !dbg !1625
  store i8* %154, i8** %13, align 8, !dbg !1627
  br label %156, !dbg !1628

; <label>:155:                                    ; preds = %141, %105
  store i8* null, i8** %13, align 8, !dbg !1629
  br label %156

; <label>:156:                                    ; preds = %155, %153
  %157 = load i8*, i8** %14, align 8, !dbg !1631
  %158 = load i8, i8* %157, align 1, !dbg !1632
  %159 = sext i8 %158 to i32, !dbg !1632
  switch i32 %159, label %163 [
    i32 43, label %160
    i32 45, label %160
  ], !dbg !1633

; <label>:160:                                    ; preds = %156, %156
  %161 = load i8*, i8** %14, align 8, !dbg !1634
  %162 = load i8, i8* %161, align 1, !dbg !1636
  store i8 %162, i8* %15, align 1, !dbg !1637
  br label %201, !dbg !1638

; <label>:163:                                    ; preds = %156
  %164 = load i8*, i8** %14, align 8, !dbg !1639
  %165 = load i8, i8* %164, align 1, !dbg !1640
  %166 = zext i8 %165 to i32, !dbg !1641
  store i32 %166, i32* %17, align 4, !dbg !1642
  %167 = load i32, i32* %17, align 4, !dbg !1643
  %168 = sext i32 %167 to i64, !dbg !1645
  %169 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %9, align 8, !dbg !1645
  %170 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %169, i32 0, i32 70, !dbg !1646
  %171 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %170, i64 0, i64 %168, !dbg !1645
  %172 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %171, i32 0, i32 0, !dbg !1647
  %173 = bitcast {}** %172 to void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)**, !dbg !1647
  %174 = load void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %173, align 8, !dbg !1647
  %175 = icmp ne void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* %174, null, !dbg !1648
  br i1 %175, label %176, label %192, !dbg !1649

; <label>:176:                                    ; preds = %163
  %177 = load i32, i32* %17, align 4, !dbg !1650
  %178 = sext i32 %177 to i64, !dbg !1652
  %179 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %9, align 8, !dbg !1652
  %180 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %179, i32 0, i32 70, !dbg !1653
  %181 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %180, i64 0, i64 %178, !dbg !1652
  %182 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %181, i32 0, i32 0, !dbg !1654
  %183 = bitcast {}** %182 to void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)**, !dbg !1654
  %184 = load void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %183, align 8, !dbg !1654
  %185 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %5, align 8, !dbg !1655
  %186 = load i8*, i8** %6, align 8, !dbg !1656
  %187 = load i8, i8* %15, align 1, !dbg !1657
  %188 = load i8*, i8** %14, align 8, !dbg !1658
  %189 = load i8, i8* %188, align 1, !dbg !1659
  %190 = load i8*, i8** %13, align 8, !dbg !1660
  %191 = load %struct._GString*, %struct._GString** %10, align 8, !dbg !1661
  call void %184(%struct._IRC_CHANNEL_REC* %185, i8* %186, i8 signext %187, i8 signext %189, i8* %190, %struct._GString* %191), !dbg !1652
  br label %200, !dbg !1662

; <label>:192:                                    ; preds = %163
  %193 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %5, align 8, !dbg !1663
  %194 = load i8*, i8** %6, align 8, !dbg !1665
  %195 = load i8, i8* %15, align 1, !dbg !1666
  %196 = load i8*, i8** %14, align 8, !dbg !1667
  %197 = load i8, i8* %196, align 1, !dbg !1668
  %198 = load i8*, i8** %13, align 8, !dbg !1669
  %199 = load %struct._GString*, %struct._GString** %10, align 8, !dbg !1670
  call void @modes_type_d(%struct._IRC_CHANNEL_REC* %193, i8* %194, i8 signext %195, i8 signext %197, i8* %198, %struct._GString* %199), !dbg !1671
  br label %200

; <label>:200:                                    ; preds = %192, %176
  br label %201, !dbg !1672

; <label>:201:                                    ; preds = %200, %160
  %202 = load i8*, i8** %14, align 8, !dbg !1673
  %203 = getelementptr inbounds i8, i8* %202, i32 1, !dbg !1673
  store i8* %203, i8** %14, align 8, !dbg !1673
  br label %60, !dbg !1674, !llvm.loop !1675

; <label>:204:                                    ; preds = %60
  %205 = load i8*, i8** %11, align 8, !dbg !1676
  call void @g_free(i8* %205), !dbg !1677
  %206 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %5, align 8, !dbg !1678
  %207 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %206, i32 0, i32 20, !dbg !1680
  %208 = load i8*, i8** %207, align 8, !dbg !1680
  %209 = icmp ne i8* %208, null, !dbg !1681
  br i1 %209, label %210, label %228, !dbg !1682

; <label>:210:                                    ; preds = %204
  %211 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %5, align 8, !dbg !1683
  %212 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %211, i32 0, i32 18, !dbg !1684
  %213 = load i8*, i8** %212, align 8, !dbg !1684
  %214 = call i8* @strchr(i8* %213, i32 107) #8, !dbg !1685
  %215 = icmp eq i8* %214, null, !dbg !1686
  br i1 %215, label %216, label %228, !dbg !1687

; <label>:216:                                    ; preds = %210
  %217 = load %struct._GString*, %struct._GString** %10, align 8, !dbg !1688
  %218 = getelementptr inbounds %struct._GString, %struct._GString* %217, i32 0, i32 0, !dbg !1689
  %219 = load i8*, i8** %218, align 8, !dbg !1689
  %220 = call i8* @strchr(i8* %219, i32 107) #8, !dbg !1690
  %221 = icmp eq i8* %220, null, !dbg !1691
  br i1 %221, label %222, label %228, !dbg !1692

; <label>:222:                                    ; preds = %216
  %223 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %5, align 8, !dbg !1693
  %224 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %223, i32 0, i32 20, !dbg !1695
  %225 = load i8*, i8** %224, align 8, !dbg !1695
  call void @g_free(i8* %225), !dbg !1696
  %226 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %5, align 8, !dbg !1697
  %227 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %226, i32 0, i32 20, !dbg !1698
  store i8* null, i8** %227, align 8, !dbg !1699
  br label %247, !dbg !1700

; <label>:228:                                    ; preds = %216, %210, %204
  %229 = load i32, i32* %8, align 4, !dbg !1701
  %230 = icmp ne i32 %229, 0, !dbg !1701
  br i1 %230, label %246, label %231, !dbg !1704

; <label>:231:                                    ; preds = %228
  %232 = load i8*, i8** %16, align 8, !dbg !1705
  %233 = icmp ne i8* %232, null, !dbg !1707
  br i1 %233, label %234, label %246, !dbg !1708

; <label>:234:                                    ; preds = %231
  %235 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %5, align 8, !dbg !1709
  %236 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %235, i32 0, i32 20, !dbg !1711
  %237 = load i8*, i8** %236, align 8, !dbg !1711
  call void @g_free(i8* %237), !dbg !1712
  %238 = load i8*, i8** %16, align 8, !dbg !1713
  %239 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %5, align 8, !dbg !1714
  %240 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %239, i32 0, i32 20, !dbg !1715
  store i8* %238, i8** %240, align 8, !dbg !1716
  %241 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %5, align 8, !dbg !1717
  %242 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %241, i32 0, i32 4, !dbg !1718
  %243 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %242, align 8, !dbg !1718
  %244 = load %struct._GString*, %struct._GString** %10, align 8, !dbg !1719
  %245 = load i8*, i8** %16, align 8, !dbg !1720
  call void @mode_set_arg(%struct._IRC_SERVER_REC* %243, %struct._GString* %244, i8 signext 43, i8 signext 107, i8* %245, i32 0), !dbg !1721
  store i8* null, i8** %16, align 8, !dbg !1722
  br label %246, !dbg !1723

; <label>:246:                                    ; preds = %234, %231, %228
  br label %247

; <label>:247:                                    ; preds = %246, %222
  %248 = load %struct._GString*, %struct._GString** %10, align 8, !dbg !1724
  %249 = getelementptr inbounds %struct._GString, %struct._GString* %248, i32 0, i32 0, !dbg !1726
  %250 = load i8*, i8** %249, align 8, !dbg !1726
  %251 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %5, align 8, !dbg !1727
  %252 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %251, i32 0, i32 18, !dbg !1728
  %253 = load i8*, i8** %252, align 8, !dbg !1728
  %254 = call i32 @g_strcmp0(i8* %250, i8* %253), !dbg !1729
  %255 = icmp ne i32 %254, 0, !dbg !1730
  br i1 %255, label %256, label %269, !dbg !1731

; <label>:256:                                    ; preds = %247
  %257 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %5, align 8, !dbg !1732
  %258 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %257, i32 0, i32 18, !dbg !1734
  %259 = load i8*, i8** %258, align 8, !dbg !1734
  call void @g_free(i8* %259), !dbg !1735
  %260 = load %struct._GString*, %struct._GString** %10, align 8, !dbg !1736
  %261 = getelementptr inbounds %struct._GString, %struct._GString* %260, i32 0, i32 0, !dbg !1737
  %262 = load i8*, i8** %261, align 8, !dbg !1737
  %263 = call noalias i8* @g_strdup(i8* %262), !dbg !1738
  %264 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %5, align 8, !dbg !1739
  %265 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %264, i32 0, i32 18, !dbg !1740
  store i8* %263, i8** %265, align 8, !dbg !1741
  %266 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %5, align 8, !dbg !1742
  %267 = load i8*, i8** %6, align 8, !dbg !1743
  %268 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), i32 2, %struct._IRC_CHANNEL_REC* %266, i8* %267), !dbg !1744
  br label %269, !dbg !1745

; <label>:269:                                    ; preds = %256, %247
  %270 = load %struct._GString*, %struct._GString** %10, align 8, !dbg !1746
  %271 = call i8* @g_string_free(%struct._GString* %270, i32 1), !dbg !1747
  %272 = load i8*, i8** %16, align 8, !dbg !1748
  call void @g_free(i8* %272), !dbg !1749
  br label %273, !dbg !1750

; <label>:273:                                    ; preds = %269, %40, %33
  ret void, !dbg !1751
}

declare %struct._GString* @g_string_new(i8*) #5

declare i8* @cmd_get_param(i8**) #5

declare i32 @g_strcmp0(i8*, i8*) #5

declare i32 @signal_emit(i8*, i32, ...) #5

declare i8* @g_string_free(%struct._GString*, i32) #5

; Function Attrs: nounwind uwtable
define i8* @modes_join(%struct._IRC_SERVER_REC*, i8*, i8*, i32) #0 !dbg !1752 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct._IRC_SERVER_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct._GString*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8, align 1
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %6, metadata !1755, metadata !697), !dbg !1756
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1757, metadata !697), !dbg !1758
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1759, metadata !697), !dbg !1760
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1761, metadata !697), !dbg !1762
  call void @llvm.dbg.declare(metadata %struct._GString** %10, metadata !1763, metadata !697), !dbg !1764
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1765, metadata !697), !dbg !1766
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1767, metadata !697), !dbg !1768
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1769, metadata !697), !dbg !1770
  call void @llvm.dbg.declare(metadata i8* %14, metadata !1771, metadata !697), !dbg !1772
  br label %15, !dbg !1773, !llvm.loop !1774

; <label>:15:                                     ; preds = %4
  %16 = load i8*, i8** %8, align 8, !dbg !1775
  %17 = icmp ne i8* %16, null, !dbg !1779
  br i1 %17, label %18, label %19, !dbg !1775

; <label>:18:                                     ; preds = %15
  br label %20, !dbg !1780

; <label>:19:                                     ; preds = %15
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.modes_join, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0)), !dbg !1783
  store i8* null, i8** %5, align 8, !dbg !1786
  br label %177, !dbg !1786

; <label>:20:                                     ; preds = %18
  br label %21, !dbg !1787

; <label>:21:                                     ; preds = %20
  store i8 43, i8* %14, align 1, !dbg !1789
  %22 = load i8*, i8** %7, align 8, !dbg !1790
  %23 = call %struct._GString* @g_string_new(i8* %22), !dbg !1791
  store %struct._GString* %23, %struct._GString** %10, align 8, !dbg !1792
  %24 = load i8*, i8** %8, align 8, !dbg !1793
  %25 = call noalias i8* @g_strdup(i8* %24), !dbg !1794
  store i8* %25, i8** %12, align 8, !dbg !1795
  store i8* %25, i8** %11, align 8, !dbg !1796
  %26 = call i8* @cmd_get_param(i8** %12), !dbg !1797
  store i8* %26, i8** %13, align 8, !dbg !1798
  br label %27, !dbg !1799

; <label>:27:                                     ; preds = %166, %49, %21
  %28 = load i8*, i8** %13, align 8, !dbg !1800
  %29 = load i8, i8* %28, align 1, !dbg !1802
  %30 = sext i8 %29 to i32, !dbg !1802
  %31 = icmp ne i32 %30, 0, !dbg !1803
  br i1 %31, label %32, label %37, !dbg !1804

; <label>:32:                                     ; preds = %27
  %33 = load i8*, i8** %13, align 8, !dbg !1805
  %34 = load i8, i8* %33, align 1, !dbg !1807
  %35 = sext i8 %34 to i32, !dbg !1807
  %36 = icmp ne i32 %35, 32, !dbg !1808
  br label %37

; <label>:37:                                     ; preds = %32, %27
  %38 = phi i1 [ false, %27 ], [ %36, %32 ]
  br i1 %38, label %39, label %169, !dbg !1809

; <label>:39:                                     ; preds = %37
  %40 = load i8*, i8** %13, align 8, !dbg !1811
  %41 = load i8, i8* %40, align 1, !dbg !1814
  %42 = sext i8 %41 to i32, !dbg !1814
  %43 = icmp eq i32 %42, 43, !dbg !1815
  br i1 %43, label %49, label %44, !dbg !1816

; <label>:44:                                     ; preds = %39
  %45 = load i8*, i8** %13, align 8, !dbg !1817
  %46 = load i8, i8* %45, align 1, !dbg !1819
  %47 = sext i8 %46 to i32, !dbg !1819
  %48 = icmp eq i32 %47, 45, !dbg !1820
  br i1 %48, label %49, label %54, !dbg !1821

; <label>:49:                                     ; preds = %44, %39
  %50 = load i8*, i8** %13, align 8, !dbg !1822
  %51 = load i8, i8* %50, align 1, !dbg !1824
  store i8 %51, i8* %14, align 1, !dbg !1825
  %52 = load i8*, i8** %13, align 8, !dbg !1826
  %53 = getelementptr inbounds i8, i8* %52, i32 1, !dbg !1826
  store i8* %53, i8** %13, align 8, !dbg !1826
  br label %27, !dbg !1827, !llvm.loop !1828

; <label>:54:                                     ; preds = %44
  %55 = load i32, i32* %9, align 4, !dbg !1829
  %56 = icmp ne i32 %55, 0, !dbg !1829
  br i1 %56, label %57, label %145, !dbg !1831

; <label>:57:                                     ; preds = %54
  %58 = load i8, i8* %14, align 1, !dbg !1832
  %59 = sext i8 %58 to i32, !dbg !1834
  %60 = icmp eq i32 %59, 43, !dbg !1835
  br i1 %60, label %61, label %109, !dbg !1836

; <label>:61:                                     ; preds = %57
  %62 = load i8*, i8** %13, align 8, !dbg !1837
  %63 = load i8, i8* %62, align 1, !dbg !1839
  %64 = zext i8 %63 to i32, !dbg !1840
  %65 = sext i32 %64 to i64, !dbg !1841
  %66 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1841
  %67 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %66, i32 0, i32 70, !dbg !1842
  %68 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %67, i64 0, i64 %65, !dbg !1841
  %69 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %68, i32 0, i32 0, !dbg !1843
  %70 = bitcast {}** %69 to void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)**, !dbg !1843
  %71 = load void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %70, align 8, !dbg !1843
  %72 = icmp eq void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* %71, @modes_type_a, !dbg !1844
  br i1 %72, label %155, label %73, !dbg !1845

; <label>:73:                                     ; preds = %61
  %74 = load i8*, i8** %13, align 8, !dbg !1846
  %75 = load i8, i8* %74, align 1, !dbg !1848
  %76 = zext i8 %75 to i32, !dbg !1849
  %77 = sext i32 %76 to i64, !dbg !1850
  %78 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1850
  %79 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %78, i32 0, i32 70, !dbg !1851
  %80 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %79, i64 0, i64 %77, !dbg !1850
  %81 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %80, i32 0, i32 0, !dbg !1852
  %82 = bitcast {}** %81 to void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)**, !dbg !1852
  %83 = load void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %82, align 8, !dbg !1852
  %84 = icmp eq void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* %83, @modes_type_b, !dbg !1853
  br i1 %84, label %155, label %85, !dbg !1854

; <label>:85:                                     ; preds = %73
  %86 = load i8*, i8** %13, align 8, !dbg !1855
  %87 = load i8, i8* %86, align 1, !dbg !1857
  %88 = zext i8 %87 to i32, !dbg !1858
  %89 = sext i32 %88 to i64, !dbg !1859
  %90 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1859
  %91 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %90, i32 0, i32 70, !dbg !1860
  %92 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %91, i64 0, i64 %89, !dbg !1859
  %93 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %92, i32 0, i32 0, !dbg !1861
  %94 = bitcast {}** %93 to void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)**, !dbg !1861
  %95 = load void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %94, align 8, !dbg !1861
  %96 = icmp eq void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* %95, @modes_type_prefix, !dbg !1862
  br i1 %96, label %155, label %97, !dbg !1863

; <label>:97:                                     ; preds = %85
  %98 = load i8*, i8** %13, align 8, !dbg !1864
  %99 = load i8, i8* %98, align 1, !dbg !1866
  %100 = zext i8 %99 to i32, !dbg !1867
  %101 = sext i32 %100 to i64, !dbg !1868
  %102 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1868
  %103 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %102, i32 0, i32 70, !dbg !1869
  %104 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %103, i64 0, i64 %101, !dbg !1868
  %105 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %104, i32 0, i32 0, !dbg !1870
  %106 = bitcast {}** %105 to void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)**, !dbg !1870
  %107 = load void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %106, align 8, !dbg !1870
  %108 = icmp eq void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* %107, @modes_type_c, !dbg !1871
  br i1 %108, label %155, label %145, !dbg !1872

; <label>:109:                                    ; preds = %57
  %110 = load i8*, i8** %13, align 8, !dbg !1873
  %111 = load i8, i8* %110, align 1, !dbg !1875
  %112 = zext i8 %111 to i32, !dbg !1876
  %113 = sext i32 %112 to i64, !dbg !1877
  %114 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1877
  %115 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %114, i32 0, i32 70, !dbg !1878
  %116 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %115, i64 0, i64 %113, !dbg !1877
  %117 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %116, i32 0, i32 0, !dbg !1879
  %118 = bitcast {}** %117 to void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)**, !dbg !1879
  %119 = load void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %118, align 8, !dbg !1879
  %120 = icmp eq void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* %119, @modes_type_a, !dbg !1880
  br i1 %120, label %155, label %121, !dbg !1881

; <label>:121:                                    ; preds = %109
  %122 = load i8*, i8** %13, align 8, !dbg !1882
  %123 = load i8, i8* %122, align 1, !dbg !1884
  %124 = zext i8 %123 to i32, !dbg !1885
  %125 = sext i32 %124 to i64, !dbg !1886
  %126 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1886
  %127 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %126, i32 0, i32 70, !dbg !1887
  %128 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %127, i64 0, i64 %125, !dbg !1886
  %129 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %128, i32 0, i32 0, !dbg !1888
  %130 = bitcast {}** %129 to void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)**, !dbg !1888
  %131 = load void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %130, align 8, !dbg !1888
  %132 = icmp eq void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* %131, @modes_type_b, !dbg !1889
  br i1 %132, label %155, label %133, !dbg !1890

; <label>:133:                                    ; preds = %121
  %134 = load i8*, i8** %13, align 8, !dbg !1891
  %135 = load i8, i8* %134, align 1, !dbg !1893
  %136 = zext i8 %135 to i32, !dbg !1894
  %137 = sext i32 %136 to i64, !dbg !1895
  %138 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1895
  %139 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %138, i32 0, i32 70, !dbg !1896
  %140 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %139, i64 0, i64 %137, !dbg !1895
  %141 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %140, i32 0, i32 0, !dbg !1897
  %142 = bitcast {}** %141 to void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)**, !dbg !1897
  %143 = load void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %142, align 8, !dbg !1897
  %144 = icmp eq void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* %143, @modes_type_prefix, !dbg !1898
  br i1 %144, label %155, label %145, !dbg !1899

; <label>:145:                                    ; preds = %133, %97, %54
  %146 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1900
  %147 = load %struct._GString*, %struct._GString** %10, align 8, !dbg !1901
  %148 = load i8, i8* %14, align 1, !dbg !1902
  %149 = load i8*, i8** %13, align 8, !dbg !1903
  %150 = load i8, i8* %149, align 1, !dbg !1904
  %151 = load i32, i32* %9, align 4, !dbg !1905
  %152 = icmp ne i32 %151, 0, !dbg !1906
  %153 = xor i1 %152, true, !dbg !1906
  %154 = zext i1 %153 to i32, !dbg !1906
  call void @mode_set(%struct._IRC_SERVER_REC* %146, %struct._GString* %147, i8 signext %148, i8 signext %150, i32 %154), !dbg !1907
  br label %166, !dbg !1907

; <label>:155:                                    ; preds = %133, %121, %109, %97, %85, %73, %61
  %156 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !1908
  %157 = load %struct._GString*, %struct._GString** %10, align 8, !dbg !1910
  %158 = load i8, i8* %14, align 1, !dbg !1911
  %159 = load i8*, i8** %13, align 8, !dbg !1912
  %160 = load i8, i8* %159, align 1, !dbg !1913
  %161 = call i8* @cmd_get_param(i8** %12), !dbg !1914
  %162 = load i32, i32* %9, align 4, !dbg !1915
  %163 = icmp ne i32 %162, 0, !dbg !1916
  %164 = xor i1 %163, true, !dbg !1916
  %165 = zext i1 %164 to i32, !dbg !1916
  call void @mode_set_arg(%struct._IRC_SERVER_REC* %156, %struct._GString* %157, i8 signext %158, i8 signext %160, i8* %161, i32 %165), !dbg !1917
  br label %166

; <label>:166:                                    ; preds = %155, %145
  %167 = load i8*, i8** %13, align 8, !dbg !1918
  %168 = getelementptr inbounds i8, i8* %167, i32 1, !dbg !1918
  store i8* %168, i8** %13, align 8, !dbg !1918
  br label %27, !dbg !1919, !llvm.loop !1828

; <label>:169:                                    ; preds = %37
  %170 = load i8*, i8** %11, align 8, !dbg !1921
  call void @g_free(i8* %170), !dbg !1922
  %171 = load %struct._GString*, %struct._GString** %10, align 8, !dbg !1923
  %172 = getelementptr inbounds %struct._GString, %struct._GString* %171, i32 0, i32 0, !dbg !1924
  %173 = load i8*, i8** %172, align 8, !dbg !1924
  store i8* %173, i8** %12, align 8, !dbg !1925
  %174 = load %struct._GString*, %struct._GString** %10, align 8, !dbg !1926
  %175 = call i8* @g_string_free(%struct._GString* %174, i32 0), !dbg !1927
  %176 = load i8*, i8** %12, align 8, !dbg !1928
  store i8* %176, i8** %5, align 8, !dbg !1929
  br label %177, !dbg !1929

; <label>:177:                                    ; preds = %169, %19
  %178 = load i8*, i8** %5, align 8, !dbg !1930
  ret i8* %178, !dbg !1930
}

; Function Attrs: nounwind uwtable
define void @channel_set_singlemode(%struct._IRC_CHANNEL_REC*, i8*, i8*) #0 !dbg !1931 {
  %4 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._GString*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  store %struct._IRC_CHANNEL_REC* %0, %struct._IRC_CHANNEL_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %4, metadata !1934, metadata !697), !dbg !1935
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1936, metadata !697), !dbg !1937
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1938, metadata !697), !dbg !1939
  call void @llvm.dbg.declare(metadata %struct._GString** %7, metadata !1940, metadata !697), !dbg !1941
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1942, metadata !697), !dbg !1943
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1944, metadata !697), !dbg !1945
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !1946, metadata !697), !dbg !1947
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !1948, metadata !697), !dbg !1949
  br label %12, !dbg !1950, !llvm.loop !1951

; <label>:12:                                     ; preds = %3
  %13 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %4, align 8, !dbg !1952
  %14 = bitcast %struct._IRC_CHANNEL_REC* %13 to i8*, !dbg !1952
  %15 = call i8* @module_check_cast_module(i8* %14, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0)), !dbg !1956
  %16 = bitcast i8* %15 to %struct._CHANNEL_REC*, !dbg !1957
  %17 = bitcast %struct._CHANNEL_REC* %16 to i8*, !dbg !1958
  %18 = call i8* @chat_protocol_check_cast(i8* %17, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)), !dbg !1959
  %19 = bitcast i8* %18 to %struct._IRC_CHANNEL_REC*, !dbg !1961
  %20 = icmp ne %struct._IRC_CHANNEL_REC* %19, null, !dbg !1961
  br i1 %20, label %21, label %22, !dbg !1962

; <label>:21:                                     ; preds = %12
  br i1 false, label %24, label %23, !dbg !1963

; <label>:22:                                     ; preds = %12
  br i1 false, label %23, label %24, !dbg !1965

; <label>:23:                                     ; preds = %22, %21
  br label %25, !dbg !1967

; <label>:24:                                     ; preds = %22, %21
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.channel_set_singlemode, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0)), !dbg !1970
  br label %114, !dbg !1973

; <label>:25:                                     ; preds = %23
  br label %26, !dbg !1974

; <label>:26:                                     ; preds = %25
  br label %27, !dbg !1976, !llvm.loop !1977

; <label>:27:                                     ; preds = %26
  %28 = load i8*, i8** %5, align 8, !dbg !1978
  %29 = icmp ne i8* %28, null, !dbg !1982
  br i1 %29, label %30, label %34, !dbg !1983

; <label>:30:                                     ; preds = %27
  %31 = load i8*, i8** %6, align 8, !dbg !1984
  %32 = icmp ne i8* %31, null, !dbg !1986
  br i1 %32, label %33, label %34, !dbg !1987

; <label>:33:                                     ; preds = %30
  br label %35, !dbg !1988

; <label>:34:                                     ; preds = %30, %27
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.channel_set_singlemode, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0)), !dbg !1991
  br label %114, !dbg !1994

; <label>:35:                                     ; preds = %33
  br label %36, !dbg !1995

; <label>:36:                                     ; preds = %35
  %37 = load i8*, i8** %5, align 8, !dbg !1997
  %38 = load i8, i8* %37, align 1, !dbg !1999
  %39 = sext i8 %38 to i32, !dbg !1999
  %40 = icmp eq i32 %39, 0, !dbg !2000
  br i1 %40, label %41, label %42, !dbg !2001

; <label>:41:                                     ; preds = %36
  br label %114, !dbg !2002

; <label>:42:                                     ; preds = %36
  store i32 0, i32* %9, align 4, !dbg !2004
  store i32 0, i32* %8, align 4, !dbg !2005
  %43 = call %struct._GString* @g_string_new(i8* null), !dbg !2006
  store %struct._GString* %43, %struct._GString** %7, align 8, !dbg !2007
  %44 = load i8*, i8** %5, align 8, !dbg !2008
  %45 = call noalias i8** @g_strsplit(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), i32 -1), !dbg !2009
  store i8** %45, i8*** %11, align 8, !dbg !2010
  %46 = load i8**, i8*** %11, align 8, !dbg !2011
  store i8** %46, i8*** %10, align 8, !dbg !2013
  br label %47, !dbg !2014

; <label>:47:                                     ; preds = %97, %42
  %48 = load i8**, i8*** %10, align 8, !dbg !2015
  %49 = load i8*, i8** %48, align 8, !dbg !2018
  %50 = icmp ne i8* %49, null, !dbg !2019
  br i1 %50, label %51, label %100, !dbg !2020

; <label>:51:                                     ; preds = %47
  %52 = load i8**, i8*** %10, align 8, !dbg !2021
  %53 = load i8*, i8** %52, align 8, !dbg !2024
  %54 = load i8, i8* %53, align 1, !dbg !2025
  %55 = sext i8 %54 to i32, !dbg !2025
  %56 = icmp eq i32 %55, 0, !dbg !2026
  br i1 %56, label %57, label %58, !dbg !2027

; <label>:57:                                     ; preds = %51
  br label %97, !dbg !2028

; <label>:58:                                     ; preds = %51
  %59 = load i32, i32* %8, align 4, !dbg !2029
  %60 = icmp eq i32 %59, 0, !dbg !2031
  br i1 %60, label %61, label %71, !dbg !2032

; <label>:61:                                     ; preds = %58
  %62 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !2033
  %63 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %4, align 8, !dbg !2035
  %64 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %63, i32 0, i32 6, !dbg !2036
  %65 = load i8*, i8** %64, align 8, !dbg !2036
  %66 = load i8*, i8** %6, align 8, !dbg !2037
  call void (%struct._GString*, i8*, ...) @g_string_printf(%struct._GString* %62, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i8* %65, i8* %66), !dbg !2038
  %67 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !2039
  %68 = getelementptr inbounds %struct._GString, %struct._GString* %67, i32 0, i32 1, !dbg !2040
  %69 = load i64, i64* %68, align 8, !dbg !2040
  %70 = trunc i64 %69 to i32, !dbg !2039
  store i32 %70, i32* %9, align 4, !dbg !2041
  br label %77, !dbg !2042

; <label>:71:                                     ; preds = %58
  %72 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !2043
  %73 = load i32, i32* %9, align 4, !dbg !2045
  %74 = sext i32 %73 to i64, !dbg !2045
  %75 = load i8*, i8** %6, align 8, !dbg !2046
  %76 = call %struct._GString* @g_string_insert(%struct._GString* %72, i64 %74, i8* %75), !dbg !2047
  br label %77

; <label>:77:                                     ; preds = %71, %61
  %78 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !2048
  %79 = load i8**, i8*** %10, align 8, !dbg !2049
  %80 = load i8*, i8** %79, align 8, !dbg !2050
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i8* %80), !dbg !2051
  %81 = load i32, i32* %8, align 4, !dbg !2052
  %82 = add nsw i32 %81, 1, !dbg !2052
  store i32 %82, i32* %8, align 4, !dbg !2052
  %83 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %4, align 8, !dbg !2054
  %84 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %83, i32 0, i32 4, !dbg !2055
  %85 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %84, align 8, !dbg !2055
  %86 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %85, i32 0, i32 47, !dbg !2056
  %87 = load i32, i32* %86, align 4, !dbg !2056
  %88 = icmp eq i32 %82, %87, !dbg !2057
  br i1 %88, label %89, label %96, !dbg !2058

; <label>:89:                                     ; preds = %77
  %90 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %4, align 8, !dbg !2059
  %91 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %90, i32 0, i32 4, !dbg !2061
  %92 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %91, align 8, !dbg !2061
  %93 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !2062
  %94 = getelementptr inbounds %struct._GString, %struct._GString* %93, i32 0, i32 0, !dbg !2063
  %95 = load i8*, i8** %94, align 8, !dbg !2063
  call void @irc_send_cmd(%struct._IRC_SERVER_REC* %92, i8* %95), !dbg !2064
  store i32 0, i32* %8, align 4, !dbg !2065
  br label %96, !dbg !2066

; <label>:96:                                     ; preds = %89, %77
  br label %97, !dbg !2067

; <label>:97:                                     ; preds = %96, %57
  %98 = load i8**, i8*** %10, align 8, !dbg !2068
  %99 = getelementptr inbounds i8*, i8** %98, i32 1, !dbg !2068
  store i8** %99, i8*** %10, align 8, !dbg !2068
  br label %47, !dbg !2070, !llvm.loop !2071

; <label>:100:                                    ; preds = %47
  %101 = load i32, i32* %8, align 4, !dbg !2073
  %102 = icmp sgt i32 %101, 0, !dbg !2075
  br i1 %102, label %103, label %110, !dbg !2076

; <label>:103:                                    ; preds = %100
  %104 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %4, align 8, !dbg !2077
  %105 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %104, i32 0, i32 4, !dbg !2079
  %106 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %105, align 8, !dbg !2079
  %107 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !2080
  %108 = getelementptr inbounds %struct._GString, %struct._GString* %107, i32 0, i32 0, !dbg !2081
  %109 = load i8*, i8** %108, align 8, !dbg !2081
  call void @irc_send_cmd(%struct._IRC_SERVER_REC* %106, i8* %109), !dbg !2082
  br label %110, !dbg !2082

; <label>:110:                                    ; preds = %103, %100
  %111 = load i8**, i8*** %11, align 8, !dbg !2083
  call void @g_strfreev(i8** %111), !dbg !2084
  %112 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !2085
  %113 = call i8* @g_string_free(%struct._GString* %112, i32 1), !dbg !2086
  br label %114, !dbg !2087

; <label>:114:                                    ; preds = %110, %41, %34, %24
  ret void, !dbg !2088
}

declare noalias i8** @g_strsplit(i8*, i8*, i32) #5

declare void @g_string_printf(%struct._GString*, i8*, ...) #5

declare %struct._GString* @g_string_insert(%struct._GString*, i64, i8*) #5

declare void @g_string_append_printf(%struct._GString*, i8*, ...) #5

declare void @irc_send_cmd(%struct._IRC_SERVER_REC*, i8*) #5

declare void @g_strfreev(i8**) #5

; Function Attrs: nounwind uwtable
define void @channel_set_mode(%struct._IRC_SERVER_REC*, i8*, i8*) #0 !dbg !2090 {
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %8 = alloca %struct._GString*, align 8
  %9 = alloca %struct._GString*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct._IRC_CHANNEL_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !2093, metadata !697), !dbg !2094
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2095, metadata !697), !dbg !2096
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2097, metadata !697), !dbg !2098
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %7, metadata !2099, metadata !697), !dbg !2100
  call void @llvm.dbg.declare(metadata %struct._GString** %8, metadata !2101, metadata !697), !dbg !2102
  call void @llvm.dbg.declare(metadata %struct._GString** %9, metadata !2103, metadata !697), !dbg !2104
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2105, metadata !697), !dbg !2106
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2107, metadata !697), !dbg !2108
  call void @llvm.dbg.declare(metadata i8** %12, metadata !2109, metadata !697), !dbg !2110
  call void @llvm.dbg.declare(metadata i8* %13, metadata !2111, metadata !697), !dbg !2112
  call void @llvm.dbg.declare(metadata i8* %14, metadata !2113, metadata !697), !dbg !2114
  call void @llvm.dbg.declare(metadata i32* %15, metadata !2115, metadata !697), !dbg !2116
  br label %18, !dbg !2117, !llvm.loop !2118

; <label>:18:                                     ; preds = %3
  %19 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2119
  %20 = bitcast %struct._IRC_SERVER_REC* %19 to i8*, !dbg !2119
  %21 = call i8* @module_check_cast(i8* %20, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0)), !dbg !2123
  %22 = bitcast i8* %21 to %struct._SERVER_REC*, !dbg !2124
  %23 = bitcast %struct._SERVER_REC* %22 to i8*, !dbg !2125
  %24 = call i8* @chat_protocol_check_cast(i8* %23, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)), !dbg !2126
  %25 = bitcast i8* %24 to %struct._IRC_SERVER_REC*, !dbg !2128
  %26 = icmp ne %struct._IRC_SERVER_REC* %25, null, !dbg !2128
  br i1 %26, label %27, label %28, !dbg !2129

; <label>:27:                                     ; preds = %18
  br i1 false, label %30, label %29, !dbg !2130

; <label>:28:                                     ; preds = %18
  br i1 false, label %29, label %30, !dbg !2132

; <label>:29:                                     ; preds = %28, %27
  br label %31, !dbg !2134

; <label>:30:                                     ; preds = %28, %27
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.channel_set_mode, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i32 0, i32 0)), !dbg !2137
  br label %378, !dbg !2140

; <label>:31:                                     ; preds = %29
  br label %32, !dbg !2141

; <label>:32:                                     ; preds = %31
  br label %33, !dbg !2143, !llvm.loop !2144

; <label>:33:                                     ; preds = %32
  %34 = load i8*, i8** %5, align 8, !dbg !2145
  %35 = icmp ne i8* %34, null, !dbg !2149
  br i1 %35, label %36, label %40, !dbg !2150

; <label>:36:                                     ; preds = %33
  %37 = load i8*, i8** %6, align 8, !dbg !2151
  %38 = icmp ne i8* %37, null, !dbg !2153
  br i1 %38, label %39, label %40, !dbg !2154

; <label>:39:                                     ; preds = %36
  br label %41, !dbg !2155

; <label>:40:                                     ; preds = %36, %33
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.channel_set_mode, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i32 0, i32 0)), !dbg !2158
  br label %378, !dbg !2161

; <label>:41:                                     ; preds = %39
  br label %42, !dbg !2162

; <label>:42:                                     ; preds = %41
  %43 = call %struct._GString* @g_string_new(i8* null), !dbg !2164
  store %struct._GString* %43, %struct._GString** %8, align 8, !dbg !2165
  %44 = call %struct._GString* @g_string_new(i8* null), !dbg !2166
  store %struct._GString* %44, %struct._GString** %9, align 8, !dbg !2167
  store i32 0, i32* %15, align 4, !dbg !2168
  %45 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2169
  %46 = bitcast %struct._IRC_SERVER_REC* %45 to i8*, !dbg !2169
  %47 = call i8* @module_check_cast(i8* %46, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0)), !dbg !2170
  %48 = bitcast i8* %47 to %struct._SERVER_REC*, !dbg !2171
  %49 = load i8*, i8** %5, align 8, !dbg !2172
  %50 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %48, i8* %49), !dbg !2173
  %51 = bitcast %struct._CHANNEL_REC* %50 to i8*, !dbg !2175
  %52 = call i8* @module_check_cast_module(i8* %51, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0)), !dbg !2176
  %53 = bitcast i8* %52 to %struct._CHANNEL_REC*, !dbg !2178
  %54 = bitcast %struct._CHANNEL_REC* %53 to i8*, !dbg !2179
  %55 = call i8* @chat_protocol_check_cast(i8* %54, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)), !dbg !2180
  %56 = bitcast i8* %55 to %struct._IRC_CHANNEL_REC*, !dbg !2182
  store %struct._IRC_CHANNEL_REC* %56, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !2183
  %57 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !2184
  %58 = icmp ne %struct._IRC_CHANNEL_REC* %57, null, !dbg !2186
  br i1 %58, label %59, label %63, !dbg !2187

; <label>:59:                                     ; preds = %42
  %60 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !2188
  %61 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %60, i32 0, i32 6, !dbg !2189
  %62 = load i8*, i8** %61, align 8, !dbg !2189
  store i8* %62, i8** %5, align 8, !dbg !2190
  br label %63, !dbg !2191

; <label>:63:                                     ; preds = %59, %42
  %64 = load i8*, i8** %6, align 8, !dbg !2192
  %65 = call noalias i8* @g_strdup(i8* %64), !dbg !2193
  store i8* %65, i8** %10, align 8, !dbg !2194
  store i8* %65, i8** %12, align 8, !dbg !2195
  store i8 43, i8* %13, align 1, !dbg !2196
  store i8 0, i8* %14, align 1, !dbg !2197
  %66 = call i8* @cmd_get_param(i8** %10), !dbg !2198
  store i8* %66, i8** %11, align 8, !dbg !2199
  br label %67, !dbg !2200

; <label>:67:                                     ; preds = %355, %63
  %68 = load i8*, i8** %11, align 8, !dbg !2201
  %69 = load i8, i8* %68, align 1, !dbg !2206
  %70 = sext i8 %69 to i32, !dbg !2206
  %71 = icmp eq i32 %70, 0, !dbg !2207
  br i1 %71, label %72, label %80, !dbg !2208

; <label>:72:                                     ; preds = %67
  %73 = call i8* @cmd_get_param(i8** %10), !dbg !2209
  store i8* %73, i8** %11, align 8, !dbg !2211
  %74 = load i8*, i8** %11, align 8, !dbg !2212
  %75 = load i8, i8* %74, align 1, !dbg !2214
  %76 = sext i8 %75 to i32, !dbg !2214
  %77 = icmp eq i32 %76, 0, !dbg !2215
  br i1 %77, label %78, label %79, !dbg !2216

; <label>:78:                                     ; preds = %72
  br label %358, !dbg !2217

; <label>:79:                                     ; preds = %72
  br label %80, !dbg !2218

; <label>:80:                                     ; preds = %79, %67
  %81 = load i8*, i8** %11, align 8, !dbg !2219
  %82 = load i8, i8* %81, align 1, !dbg !2221
  %83 = sext i8 %82 to i32, !dbg !2221
  %84 = icmp eq i32 %83, 43, !dbg !2222
  br i1 %84, label %90, label %85, !dbg !2223

; <label>:85:                                     ; preds = %80
  %86 = load i8*, i8** %11, align 8, !dbg !2224
  %87 = load i8, i8* %86, align 1, !dbg !2226
  %88 = sext i8 %87 to i32, !dbg !2226
  %89 = icmp eq i32 %88, 45, !dbg !2227
  br i1 %89, label %90, label %93, !dbg !2228

; <label>:90:                                     ; preds = %85, %80
  %91 = load i8*, i8** %11, align 8, !dbg !2229
  %92 = load i8, i8* %91, align 1, !dbg !2231
  store i8 %92, i8* %13, align 1, !dbg !2232
  br label %355, !dbg !2233

; <label>:93:                                     ; preds = %85
  %94 = load i32, i32* %15, align 4, !dbg !2234
  %95 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2236
  %96 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %95, i32 0, i32 47, !dbg !2237
  %97 = load i32, i32* %96, align 4, !dbg !2237
  %98 = icmp eq i32 %94, %97, !dbg !2238
  br i1 %98, label %99, label %200, !dbg !2239

; <label>:99:                                     ; preds = %93
  %100 = load i8, i8* %13, align 1, !dbg !2240
  %101 = sext i8 %100 to i32, !dbg !2241
  %102 = icmp eq i32 %101, 43, !dbg !2242
  br i1 %102, label %103, label %151, !dbg !2243

; <label>:103:                                    ; preds = %99
  %104 = load i8*, i8** %11, align 8, !dbg !2245
  %105 = load i8, i8* %104, align 1, !dbg !2247
  %106 = zext i8 %105 to i32, !dbg !2248
  %107 = sext i32 %106 to i64, !dbg !2249
  %108 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2249
  %109 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %108, i32 0, i32 70, !dbg !2250
  %110 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %109, i64 0, i64 %107, !dbg !2249
  %111 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %110, i32 0, i32 0, !dbg !2251
  %112 = bitcast {}** %111 to void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)**, !dbg !2251
  %113 = load void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %112, align 8, !dbg !2251
  %114 = icmp eq void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* %113, @modes_type_a, !dbg !2252
  br i1 %114, label %187, label %115, !dbg !2253

; <label>:115:                                    ; preds = %103
  %116 = load i8*, i8** %11, align 8, !dbg !2254
  %117 = load i8, i8* %116, align 1, !dbg !2256
  %118 = zext i8 %117 to i32, !dbg !2257
  %119 = sext i32 %118 to i64, !dbg !2258
  %120 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2258
  %121 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %120, i32 0, i32 70, !dbg !2259
  %122 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %121, i64 0, i64 %119, !dbg !2258
  %123 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %122, i32 0, i32 0, !dbg !2260
  %124 = bitcast {}** %123 to void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)**, !dbg !2260
  %125 = load void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %124, align 8, !dbg !2260
  %126 = icmp eq void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* %125, @modes_type_b, !dbg !2261
  br i1 %126, label %187, label %127, !dbg !2262

; <label>:127:                                    ; preds = %115
  %128 = load i8*, i8** %11, align 8, !dbg !2263
  %129 = load i8, i8* %128, align 1, !dbg !2265
  %130 = zext i8 %129 to i32, !dbg !2266
  %131 = sext i32 %130 to i64, !dbg !2267
  %132 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2267
  %133 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %132, i32 0, i32 70, !dbg !2268
  %134 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %133, i64 0, i64 %131, !dbg !2267
  %135 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %134, i32 0, i32 0, !dbg !2269
  %136 = bitcast {}** %135 to void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)**, !dbg !2269
  %137 = load void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %136, align 8, !dbg !2269
  %138 = icmp eq void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* %137, @modes_type_prefix, !dbg !2270
  br i1 %138, label %187, label %139, !dbg !2271

; <label>:139:                                    ; preds = %127
  %140 = load i8*, i8** %11, align 8, !dbg !2272
  %141 = load i8, i8* %140, align 1, !dbg !2274
  %142 = zext i8 %141 to i32, !dbg !2275
  %143 = sext i32 %142 to i64, !dbg !2276
  %144 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2276
  %145 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %144, i32 0, i32 70, !dbg !2277
  %146 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %145, i64 0, i64 %143, !dbg !2276
  %147 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %146, i32 0, i32 0, !dbg !2278
  %148 = bitcast {}** %147 to void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)**, !dbg !2278
  %149 = load void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %148, align 8, !dbg !2278
  %150 = icmp eq void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* %149, @modes_type_c, !dbg !2279
  br i1 %150, label %187, label %200, !dbg !2280

; <label>:151:                                    ; preds = %99
  %152 = load i8*, i8** %11, align 8, !dbg !2281
  %153 = load i8, i8* %152, align 1, !dbg !2283
  %154 = zext i8 %153 to i32, !dbg !2284
  %155 = sext i32 %154 to i64, !dbg !2285
  %156 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2285
  %157 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %156, i32 0, i32 70, !dbg !2286
  %158 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %157, i64 0, i64 %155, !dbg !2285
  %159 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %158, i32 0, i32 0, !dbg !2287
  %160 = bitcast {}** %159 to void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)**, !dbg !2287
  %161 = load void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %160, align 8, !dbg !2287
  %162 = icmp eq void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* %161, @modes_type_a, !dbg !2288
  br i1 %162, label %187, label %163, !dbg !2289

; <label>:163:                                    ; preds = %151
  %164 = load i8*, i8** %11, align 8, !dbg !2290
  %165 = load i8, i8* %164, align 1, !dbg !2292
  %166 = zext i8 %165 to i32, !dbg !2293
  %167 = sext i32 %166 to i64, !dbg !2294
  %168 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2294
  %169 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %168, i32 0, i32 70, !dbg !2295
  %170 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %169, i64 0, i64 %167, !dbg !2294
  %171 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %170, i32 0, i32 0, !dbg !2296
  %172 = bitcast {}** %171 to void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)**, !dbg !2296
  %173 = load void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %172, align 8, !dbg !2296
  %174 = icmp eq void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* %173, @modes_type_b, !dbg !2297
  br i1 %174, label %187, label %175, !dbg !2298

; <label>:175:                                    ; preds = %163
  %176 = load i8*, i8** %11, align 8, !dbg !2299
  %177 = load i8, i8* %176, align 1, !dbg !2301
  %178 = zext i8 %177 to i32, !dbg !2302
  %179 = sext i32 %178 to i64, !dbg !2303
  %180 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2303
  %181 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %180, i32 0, i32 70, !dbg !2304
  %182 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %181, i64 0, i64 %179, !dbg !2303
  %183 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %182, i32 0, i32 0, !dbg !2305
  %184 = bitcast {}** %183 to void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)**, !dbg !2305
  %185 = load void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %184, align 8, !dbg !2305
  %186 = icmp eq void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* %185, @modes_type_prefix, !dbg !2306
  br i1 %186, label %187, label %200, !dbg !2307

; <label>:187:                                    ; preds = %175, %163, %151, %139, %127, %115, %103
  %188 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2309
  %189 = load i8*, i8** %5, align 8, !dbg !2311
  %190 = load %struct._GString*, %struct._GString** %8, align 8, !dbg !2312
  %191 = getelementptr inbounds %struct._GString, %struct._GString* %190, i32 0, i32 0, !dbg !2313
  %192 = load i8*, i8** %191, align 8, !dbg !2313
  %193 = load %struct._GString*, %struct._GString** %9, align 8, !dbg !2314
  %194 = getelementptr inbounds %struct._GString, %struct._GString* %193, i32 0, i32 0, !dbg !2315
  %195 = load i8*, i8** %194, align 8, !dbg !2315
  call void (%struct._IRC_SERVER_REC*, i8*, ...) @irc_send_cmdv(%struct._IRC_SERVER_REC* %188, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i8* %189, i8* %192, i8* %195), !dbg !2316
  store i32 0, i32* %15, align 4, !dbg !2317
  store i8 0, i8* %14, align 1, !dbg !2318
  %196 = load %struct._GString*, %struct._GString** %8, align 8, !dbg !2319
  %197 = call %struct._GString* @g_string_truncate(%struct._GString* %196, i64 0), !dbg !2320
  %198 = load %struct._GString*, %struct._GString** %9, align 8, !dbg !2321
  %199 = call %struct._GString* @g_string_truncate(%struct._GString* %198, i64 0), !dbg !2322
  br label %200, !dbg !2323

; <label>:200:                                    ; preds = %187, %175, %139, %93
  %201 = load i8, i8* %13, align 1, !dbg !2324
  %202 = sext i8 %201 to i32, !dbg !2324
  %203 = load i8, i8* %14, align 1, !dbg !2326
  %204 = sext i8 %203 to i32, !dbg !2326
  %205 = icmp ne i32 %202, %204, !dbg !2327
  br i1 %205, label %206, label %211, !dbg !2328

; <label>:206:                                    ; preds = %200
  %207 = load i8, i8* %13, align 1, !dbg !2329
  store i8 %207, i8* %14, align 1, !dbg !2331
  %208 = load %struct._GString*, %struct._GString** %8, align 8, !dbg !2332
  %209 = load i8, i8* %13, align 1, !dbg !2333
  %210 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %208, i8 signext %209), !dbg !2334
  br label %211, !dbg !2335

; <label>:211:                                    ; preds = %206, %200
  %212 = load %struct._GString*, %struct._GString** %8, align 8, !dbg !2336
  %213 = load i8*, i8** %11, align 8, !dbg !2337
  %214 = load i8, i8* %213, align 1, !dbg !2338
  %215 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %212, i8 signext %214), !dbg !2339
  %216 = load i8, i8* %13, align 1, !dbg !2340
  %217 = sext i8 %216 to i32, !dbg !2342
  %218 = icmp eq i32 %217, 43, !dbg !2343
  br i1 %218, label %219, label %267, !dbg !2344

; <label>:219:                                    ; preds = %211
  %220 = load i8*, i8** %11, align 8, !dbg !2345
  %221 = load i8, i8* %220, align 1, !dbg !2347
  %222 = zext i8 %221 to i32, !dbg !2348
  %223 = sext i32 %222 to i64, !dbg !2349
  %224 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2349
  %225 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %224, i32 0, i32 70, !dbg !2350
  %226 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %225, i64 0, i64 %223, !dbg !2349
  %227 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %226, i32 0, i32 0, !dbg !2351
  %228 = bitcast {}** %227 to void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)**, !dbg !2351
  %229 = load void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %228, align 8, !dbg !2351
  %230 = icmp eq void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* %229, @modes_type_a, !dbg !2352
  br i1 %230, label %303, label %231, !dbg !2353

; <label>:231:                                    ; preds = %219
  %232 = load i8*, i8** %11, align 8, !dbg !2354
  %233 = load i8, i8* %232, align 1, !dbg !2356
  %234 = zext i8 %233 to i32, !dbg !2357
  %235 = sext i32 %234 to i64, !dbg !2358
  %236 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2358
  %237 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %236, i32 0, i32 70, !dbg !2359
  %238 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %237, i64 0, i64 %235, !dbg !2358
  %239 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %238, i32 0, i32 0, !dbg !2360
  %240 = bitcast {}** %239 to void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)**, !dbg !2360
  %241 = load void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %240, align 8, !dbg !2360
  %242 = icmp eq void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* %241, @modes_type_b, !dbg !2361
  br i1 %242, label %303, label %243, !dbg !2362

; <label>:243:                                    ; preds = %231
  %244 = load i8*, i8** %11, align 8, !dbg !2363
  %245 = load i8, i8* %244, align 1, !dbg !2365
  %246 = zext i8 %245 to i32, !dbg !2366
  %247 = sext i32 %246 to i64, !dbg !2367
  %248 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2367
  %249 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %248, i32 0, i32 70, !dbg !2368
  %250 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %249, i64 0, i64 %247, !dbg !2367
  %251 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %250, i32 0, i32 0, !dbg !2369
  %252 = bitcast {}** %251 to void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)**, !dbg !2369
  %253 = load void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %252, align 8, !dbg !2369
  %254 = icmp eq void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* %253, @modes_type_prefix, !dbg !2370
  br i1 %254, label %303, label %255, !dbg !2371

; <label>:255:                                    ; preds = %243
  %256 = load i8*, i8** %11, align 8, !dbg !2372
  %257 = load i8, i8* %256, align 1, !dbg !2374
  %258 = zext i8 %257 to i32, !dbg !2375
  %259 = sext i32 %258 to i64, !dbg !2376
  %260 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2376
  %261 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %260, i32 0, i32 70, !dbg !2377
  %262 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %261, i64 0, i64 %259, !dbg !2376
  %263 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %262, i32 0, i32 0, !dbg !2378
  %264 = bitcast {}** %263 to void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)**, !dbg !2378
  %265 = load void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %264, align 8, !dbg !2378
  %266 = icmp eq void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* %265, @modes_type_c, !dbg !2379
  br i1 %266, label %303, label %354, !dbg !2380

; <label>:267:                                    ; preds = %211
  %268 = load i8*, i8** %11, align 8, !dbg !2381
  %269 = load i8, i8* %268, align 1, !dbg !2383
  %270 = zext i8 %269 to i32, !dbg !2384
  %271 = sext i32 %270 to i64, !dbg !2385
  %272 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2385
  %273 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %272, i32 0, i32 70, !dbg !2386
  %274 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %273, i64 0, i64 %271, !dbg !2385
  %275 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %274, i32 0, i32 0, !dbg !2387
  %276 = bitcast {}** %275 to void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)**, !dbg !2387
  %277 = load void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %276, align 8, !dbg !2387
  %278 = icmp eq void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* %277, @modes_type_a, !dbg !2388
  br i1 %278, label %303, label %279, !dbg !2389

; <label>:279:                                    ; preds = %267
  %280 = load i8*, i8** %11, align 8, !dbg !2390
  %281 = load i8, i8* %280, align 1, !dbg !2392
  %282 = zext i8 %281 to i32, !dbg !2393
  %283 = sext i32 %282 to i64, !dbg !2394
  %284 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2394
  %285 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %284, i32 0, i32 70, !dbg !2395
  %286 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %285, i64 0, i64 %283, !dbg !2394
  %287 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %286, i32 0, i32 0, !dbg !2396
  %288 = bitcast {}** %287 to void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)**, !dbg !2396
  %289 = load void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %288, align 8, !dbg !2396
  %290 = icmp eq void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* %289, @modes_type_b, !dbg !2397
  br i1 %290, label %303, label %291, !dbg !2398

; <label>:291:                                    ; preds = %279
  %292 = load i8*, i8** %11, align 8, !dbg !2399
  %293 = load i8, i8* %292, align 1, !dbg !2401
  %294 = zext i8 %293 to i32, !dbg !2402
  %295 = sext i32 %294 to i64, !dbg !2403
  %296 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2403
  %297 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %296, i32 0, i32 70, !dbg !2404
  %298 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %297, i64 0, i64 %295, !dbg !2403
  %299 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %298, i32 0, i32 0, !dbg !2405
  %300 = bitcast {}** %299 to void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)**, !dbg !2405
  %301 = load void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %300, align 8, !dbg !2405
  %302 = icmp eq void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* %301, @modes_type_prefix, !dbg !2406
  br i1 %302, label %303, label %354, !dbg !2407

; <label>:303:                                    ; preds = %291, %279, %267, %255, %243, %231, %219
  call void @llvm.dbg.declare(metadata i8** %16, metadata !2408, metadata !697), !dbg !2410
  %304 = load i32, i32* %15, align 4, !dbg !2411
  %305 = add nsw i32 %304, 1, !dbg !2411
  store i32 %305, i32* %15, align 4, !dbg !2411
  %306 = call i8* @cmd_get_param(i8** %10), !dbg !2412
  store i8* %306, i8** %16, align 8, !dbg !2413
  %307 = load i8*, i8** %16, align 8, !dbg !2414
  %308 = load i8, i8* %307, align 1, !dbg !2416
  %309 = sext i8 %308 to i32, !dbg !2416
  %310 = icmp eq i32 %309, 0, !dbg !2417
  br i1 %310, label %311, label %345, !dbg !2418

; <label>:311:                                    ; preds = %303
  %312 = load i8, i8* %13, align 1, !dbg !2419
  %313 = sext i8 %312 to i32, !dbg !2419
  %314 = icmp eq i32 %313, 45, !dbg !2421
  br i1 %314, label %315, label %345, !dbg !2422

; <label>:315:                                    ; preds = %311
  %316 = load i8*, i8** %11, align 8, !dbg !2423
  %317 = load i8, i8* %316, align 1, !dbg !2425
  %318 = sext i8 %317 to i32, !dbg !2425
  %319 = icmp eq i32 %318, 107, !dbg !2426
  br i1 %319, label %320, label %345, !dbg !2427

; <label>:320:                                    ; preds = %315
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %17, metadata !2428, metadata !697), !dbg !2430
  %321 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2431
  %322 = bitcast %struct._IRC_SERVER_REC* %321 to i8*, !dbg !2431
  %323 = call i8* @module_check_cast(i8* %322, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0)), !dbg !2432
  %324 = bitcast i8* %323 to %struct._SERVER_REC*, !dbg !2433
  %325 = load i8*, i8** %5, align 8, !dbg !2434
  %326 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %324, i8* %325), !dbg !2435
  %327 = bitcast %struct._CHANNEL_REC* %326 to i8*, !dbg !2437
  %328 = call i8* @module_check_cast_module(i8* %327, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0)), !dbg !2438
  %329 = bitcast i8* %328 to %struct._CHANNEL_REC*, !dbg !2440
  %330 = bitcast %struct._CHANNEL_REC* %329 to i8*, !dbg !2441
  %331 = call i8* @chat_protocol_check_cast(i8* %330, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)), !dbg !2442
  %332 = bitcast i8* %331 to %struct._IRC_CHANNEL_REC*, !dbg !2444
  store %struct._IRC_CHANNEL_REC* %332, %struct._IRC_CHANNEL_REC** %17, align 8, !dbg !2445
  %333 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %17, align 8, !dbg !2446
  %334 = icmp ne %struct._IRC_CHANNEL_REC* %333, null, !dbg !2448
  br i1 %334, label %335, label %344, !dbg !2449

; <label>:335:                                    ; preds = %320
  %336 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %17, align 8, !dbg !2450
  %337 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %336, i32 0, i32 20, !dbg !2452
  %338 = load i8*, i8** %337, align 8, !dbg !2452
  %339 = icmp ne i8* %338, null, !dbg !2453
  br i1 %339, label %340, label %344, !dbg !2454

; <label>:340:                                    ; preds = %335
  %341 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %17, align 8, !dbg !2455
  %342 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %341, i32 0, i32 20, !dbg !2456
  %343 = load i8*, i8** %342, align 8, !dbg !2456
  store i8* %343, i8** %16, align 8, !dbg !2457
  br label %344, !dbg !2458

; <label>:344:                                    ; preds = %340, %335, %320
  br label %345, !dbg !2459

; <label>:345:                                    ; preds = %344, %315, %311, %303
  %346 = load i8*, i8** %16, align 8, !dbg !2460
  %347 = load i8, i8* %346, align 1, !dbg !2462
  %348 = sext i8 %347 to i32, !dbg !2462
  %349 = icmp ne i32 %348, 0, !dbg !2463
  br i1 %349, label %350, label %353, !dbg !2464

; <label>:350:                                    ; preds = %345
  %351 = load %struct._GString*, %struct._GString** %9, align 8, !dbg !2465
  %352 = load i8*, i8** %16, align 8, !dbg !2466
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %351, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i8* %352), !dbg !2467
  br label %353, !dbg !2467

; <label>:353:                                    ; preds = %350, %345
  br label %354, !dbg !2468

; <label>:354:                                    ; preds = %353, %291, %255
  br label %355, !dbg !2469

; <label>:355:                                    ; preds = %354, %90
  %356 = load i8*, i8** %11, align 8, !dbg !2470
  %357 = getelementptr inbounds i8, i8* %356, i32 1, !dbg !2470
  store i8* %357, i8** %11, align 8, !dbg !2470
  br label %67, !dbg !2472, !llvm.loop !2473

; <label>:358:                                    ; preds = %78
  %359 = load %struct._GString*, %struct._GString** %8, align 8, !dbg !2474
  %360 = getelementptr inbounds %struct._GString, %struct._GString* %359, i32 0, i32 1, !dbg !2476
  %361 = load i64, i64* %360, align 8, !dbg !2476
  %362 = icmp ugt i64 %361, 0, !dbg !2477
  br i1 %362, label %363, label %372, !dbg !2478

; <label>:363:                                    ; preds = %358
  %364 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2479
  %365 = load i8*, i8** %5, align 8, !dbg !2481
  %366 = load %struct._GString*, %struct._GString** %8, align 8, !dbg !2482
  %367 = getelementptr inbounds %struct._GString, %struct._GString* %366, i32 0, i32 0, !dbg !2483
  %368 = load i8*, i8** %367, align 8, !dbg !2483
  %369 = load %struct._GString*, %struct._GString** %9, align 8, !dbg !2484
  %370 = getelementptr inbounds %struct._GString, %struct._GString* %369, i32 0, i32 0, !dbg !2485
  %371 = load i8*, i8** %370, align 8, !dbg !2485
  call void (%struct._IRC_SERVER_REC*, i8*, ...) @irc_send_cmdv(%struct._IRC_SERVER_REC* %364, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i8* %365, i8* %368, i8* %371), !dbg !2486
  br label %372, !dbg !2487

; <label>:372:                                    ; preds = %363, %358
  %373 = load %struct._GString*, %struct._GString** %8, align 8, !dbg !2488
  %374 = call i8* @g_string_free(%struct._GString* %373, i32 1), !dbg !2489
  %375 = load %struct._GString*, %struct._GString** %9, align 8, !dbg !2490
  %376 = call i8* @g_string_free(%struct._GString* %375, i32 1), !dbg !2491
  %377 = load i8*, i8** %12, align 8, !dbg !2492
  call void @g_free(i8* %377), !dbg !2493
  br label %378, !dbg !2494

; <label>:378:                                    ; preds = %372, %40, %30
  ret void, !dbg !2495
}

declare i8* @module_check_cast(i8*, i32, i8*) #5

declare %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC*, i8*) #5

declare void @irc_send_cmdv(%struct._IRC_SERVER_REC*, i8*, ...) #5

declare %struct._GString* @g_string_truncate(%struct._GString*, i64) #5

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._GString* @g_string_append_c_inline(%struct._GString*, i8 signext) #6 !dbg !2496 {
  %3 = alloca %struct._GString*, align 8
  %4 = alloca i8, align 1
  store %struct._GString* %0, %struct._GString** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._GString** %3, metadata !2499, metadata !697), !dbg !2500
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !2501, metadata !697), !dbg !2502
  %5 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !2503
  %6 = getelementptr inbounds %struct._GString, %struct._GString* %5, i32 0, i32 1, !dbg !2505
  %7 = load i64, i64* %6, align 8, !dbg !2505
  %8 = add i64 %7, 1, !dbg !2506
  %9 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !2507
  %10 = getelementptr inbounds %struct._GString, %struct._GString* %9, i32 0, i32 2, !dbg !2508
  %11 = load i64, i64* %10, align 8, !dbg !2508
  %12 = icmp ult i64 %8, %11, !dbg !2509
  br i1 %12, label %13, label %30, !dbg !2510

; <label>:13:                                     ; preds = %2
  %14 = load i8, i8* %4, align 1, !dbg !2511
  %15 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !2513
  %16 = getelementptr inbounds %struct._GString, %struct._GString* %15, i32 0, i32 1, !dbg !2514
  %17 = load i64, i64* %16, align 8, !dbg !2515
  %18 = add i64 %17, 1, !dbg !2515
  store i64 %18, i64* %16, align 8, !dbg !2515
  %19 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !2516
  %20 = getelementptr inbounds %struct._GString, %struct._GString* %19, i32 0, i32 0, !dbg !2517
  %21 = load i8*, i8** %20, align 8, !dbg !2517
  %22 = getelementptr inbounds i8, i8* %21, i64 %17, !dbg !2516
  store i8 %14, i8* %22, align 1, !dbg !2518
  %23 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !2519
  %24 = getelementptr inbounds %struct._GString, %struct._GString* %23, i32 0, i32 1, !dbg !2520
  %25 = load i64, i64* %24, align 8, !dbg !2520
  %26 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !2521
  %27 = getelementptr inbounds %struct._GString, %struct._GString* %26, i32 0, i32 0, !dbg !2522
  %28 = load i8*, i8** %27, align 8, !dbg !2522
  %29 = getelementptr inbounds i8, i8* %28, i64 %25, !dbg !2521
  store i8 0, i8* %29, align 1, !dbg !2523
  br label %34, !dbg !2524

; <label>:30:                                     ; preds = %2
  %31 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !2525
  %32 = load i8, i8* %4, align 1, !dbg !2526
  %33 = call %struct._GString* @g_string_insert_c(%struct._GString* %31, i64 -1, i8 signext %32), !dbg !2527
  br label %34

; <label>:34:                                     ; preds = %30, %13
  %35 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !2528
  ret %struct._GString* %35, !dbg !2529
}

; Function Attrs: nounwind uwtable
define void @modes_server_init(%struct._IRC_SERVER_REC*) #0 !dbg !2530 {
  %2 = alloca %struct._IRC_SERVER_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %2, metadata !2533, metadata !697), !dbg !2534
  %3 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2535
  %4 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %3, i32 0, i32 70, !dbg !2536
  %5 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %4, i64 0, i64 98, !dbg !2535
  %6 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %5, i32 0, i32 0, !dbg !2537
  %7 = bitcast {}** %6 to void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)**, !dbg !2537
  store void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* @modes_type_a, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %7, align 8, !dbg !2538
  %8 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2539
  %9 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %8, i32 0, i32 70, !dbg !2540
  %10 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %9, i64 0, i64 101, !dbg !2539
  %11 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %10, i32 0, i32 0, !dbg !2541
  %12 = bitcast {}** %11 to void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)**, !dbg !2541
  store void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* @modes_type_a, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %12, align 8, !dbg !2542
  %13 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2543
  %14 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %13, i32 0, i32 70, !dbg !2544
  %15 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %14, i64 0, i64 73, !dbg !2543
  %16 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %15, i32 0, i32 0, !dbg !2545
  %17 = bitcast {}** %16 to void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)**, !dbg !2545
  store void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* @modes_type_a, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %17, align 8, !dbg !2546
  %18 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2547
  %19 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %18, i32 0, i32 70, !dbg !2548
  %20 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %19, i64 0, i64 104, !dbg !2547
  %21 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %20, i32 0, i32 0, !dbg !2549
  %22 = bitcast {}** %21 to void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)**, !dbg !2549
  store void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* @modes_type_prefix, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %22, align 8, !dbg !2550
  %23 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2551
  %24 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %23, i32 0, i32 70, !dbg !2552
  %25 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %24, i64 0, i64 104, !dbg !2551
  %26 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %25, i32 0, i32 1, !dbg !2553
  store i8 37, i8* %26, align 8, !dbg !2554
  %27 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2555
  %28 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %27, i32 0, i32 70, !dbg !2556
  %29 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %28, i64 0, i64 111, !dbg !2555
  %30 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %29, i32 0, i32 0, !dbg !2557
  %31 = bitcast {}** %30 to void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)**, !dbg !2557
  store void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* @modes_type_prefix, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %31, align 8, !dbg !2558
  %32 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2559
  %33 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %32, i32 0, i32 70, !dbg !2560
  %34 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %33, i64 0, i64 111, !dbg !2559
  %35 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %34, i32 0, i32 1, !dbg !2561
  store i8 64, i8* %35, align 8, !dbg !2562
  %36 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2563
  %37 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %36, i32 0, i32 70, !dbg !2564
  %38 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %37, i64 0, i64 79, !dbg !2563
  %39 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %38, i32 0, i32 0, !dbg !2565
  %40 = bitcast {}** %39 to void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)**, !dbg !2565
  store void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* @modes_type_prefix, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %40, align 8, !dbg !2566
  %41 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2567
  %42 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %41, i32 0, i32 70, !dbg !2568
  %43 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %42, i64 0, i64 79, !dbg !2567
  %44 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %43, i32 0, i32 1, !dbg !2569
  store i8 64, i8* %44, align 8, !dbg !2570
  %45 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2571
  %46 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %45, i32 0, i32 70, !dbg !2572
  %47 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %46, i64 0, i64 118, !dbg !2571
  %48 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %47, i32 0, i32 0, !dbg !2573
  %49 = bitcast {}** %48 to void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)**, !dbg !2573
  store void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* @modes_type_prefix, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %49, align 8, !dbg !2574
  %50 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2575
  %51 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %50, i32 0, i32 70, !dbg !2576
  %52 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %51, i64 0, i64 118, !dbg !2575
  %53 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %52, i32 0, i32 1, !dbg !2577
  store i8 43, i8* %53, align 8, !dbg !2578
  %54 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2579
  %55 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %54, i32 0, i32 71, !dbg !2580
  %56 = getelementptr inbounds [256 x i8], [256 x i8]* %55, i64 0, i64 37, !dbg !2579
  store i8 104, i8* %56, align 1, !dbg !2581
  %57 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2582
  %58 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %57, i32 0, i32 71, !dbg !2583
  %59 = getelementptr inbounds [256 x i8], [256 x i8]* %58, i64 0, i64 64, !dbg !2582
  store i8 111, i8* %59, align 8, !dbg !2584
  %60 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2585
  %61 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %60, i32 0, i32 71, !dbg !2586
  %62 = getelementptr inbounds [256 x i8], [256 x i8]* %61, i64 0, i64 43, !dbg !2585
  store i8 118, i8* %62, align 1, !dbg !2587
  %63 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2588
  %64 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %63, i32 0, i32 70, !dbg !2589
  %65 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %64, i64 0, i64 107, !dbg !2588
  %66 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %65, i32 0, i32 0, !dbg !2590
  %67 = bitcast {}** %66 to void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)**, !dbg !2590
  store void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* @modes_type_b, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %67, align 8, !dbg !2591
  %68 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !2592
  %69 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %68, i32 0, i32 70, !dbg !2593
  %70 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %69, i64 0, i64 108, !dbg !2592
  %71 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %70, i32 0, i32 0, !dbg !2594
  %72 = bitcast {}** %71 to void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)**, !dbg !2594
  store void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* @modes_type_c, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %72, align 8, !dbg !2595
  ret void, !dbg !2596
}

; Function Attrs: nounwind uwtable
define void @modes_init() #0 !dbg !2597 {
  call void @settings_add_str_module(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i32 0, i32 0)), !dbg !2598
  call void @settings_add_int_module(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i32 0, i32 0), i32 6), !dbg !2599
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_user_mode to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2600
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_unaway to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2601
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_away to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2602
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_oper to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2603
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_mode to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2604
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @sig_req_usermode_change to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2605
  %1 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)), !dbg !2606
  call void @command_bind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0), i32 %1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_op to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2607
  %2 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)), !dbg !2609
  call void @command_bind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i32 %2, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_deop to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2610
  %3 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)), !dbg !2611
  call void @command_bind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), i32 %3, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_voice to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2612
  %4 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)), !dbg !2613
  call void @command_bind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i32 %4, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_devoice to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2614
  %5 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)), !dbg !2615
  call void @command_bind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i32 %5, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._IRC_CHANNEL_REC*)* @cmd_mode to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2616
  call void @command_set_options_module(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0)), !dbg !2617
  ret void, !dbg !2618
}

declare void @settings_add_str_module(i8*, i8*, i8*, i8*) #5

declare void @settings_add_int_module(i8*, i8*, i8*, i32) #5

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #5

; Function Attrs: nounwind uwtable
define internal void @event_user_mode(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !2619 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !2622, metadata !697), !dbg !2623
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2624, metadata !697), !dbg !2625
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2626, metadata !697), !dbg !2627
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2628, metadata !697), !dbg !2629
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2630, metadata !697), !dbg !2631
  br label %8, !dbg !2632, !llvm.loop !2633

; <label>:8:                                      ; preds = %2
  %9 = load i8*, i8** %4, align 8, !dbg !2634
  %10 = icmp ne i8* %9, null, !dbg !2638
  br i1 %10, label %11, label %12, !dbg !2634

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !2639

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.event_user_mode, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i32 0, i32 0)), !dbg !2642
  br label %20, !dbg !2645

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !2646

; <label>:14:                                     ; preds = %13
  %15 = load i8*, i8** %4, align 8, !dbg !2648
  %16 = call i8* (i8*, i32, ...) @event_get_params(i8* %15, i32 3, i8* null, i8** %6, i8** %7), !dbg !2649
  store i8* %16, i8** %5, align 8, !dbg !2650
  %17 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2651
  %18 = load i8*, i8** %7, align 8, !dbg !2652
  call void @parse_user_mode(%struct._IRC_SERVER_REC* %17, i8* %18), !dbg !2653
  %19 = load i8*, i8** %5, align 8, !dbg !2654
  call void @g_free(i8* %19), !dbg !2655
  br label %20, !dbg !2656

; <label>:20:                                     ; preds = %14, %12
  ret void, !dbg !2657
}

; Function Attrs: nounwind uwtable
define internal void @event_unaway(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !2659 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !2660, metadata !697), !dbg !2661
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2662, metadata !697), !dbg !2663
  br label %5, !dbg !2664, !llvm.loop !2665

; <label>:5:                                      ; preds = %2
  %6 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2666
  %7 = icmp ne %struct._IRC_SERVER_REC* %6, null, !dbg !2670
  br i1 %7, label %8, label %9, !dbg !2666

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !2671

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.event_unaway, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i32 0, i32 0)), !dbg !2674
  br label %31, !dbg !2677

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !2678

; <label>:11:                                     ; preds = %10
  %12 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2680
  %13 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %12, i32 0, i32 19, !dbg !2681
  %14 = load i8, i8* %13, align 8, !dbg !2682
  %15 = and i8 %14, -3, !dbg !2682
  store i8 %15, i8* %13, align 8, !dbg !2682
  br label %16, !dbg !2683, !llvm.loop !2684

; <label>:16:                                     ; preds = %11
  %17 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2685
  %18 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %17, i32 0, i32 17, !dbg !2689
  %19 = load i8*, i8** %18, align 8, !dbg !2689
  %20 = icmp ne i8* %19, null, !dbg !2685
  br i1 %20, label %21, label %27, !dbg !2685

; <label>:21:                                     ; preds = %16
  %22 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2690
  %23 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %22, i32 0, i32 17, !dbg !2693
  %24 = load i8*, i8** %23, align 8, !dbg !2693
  call void @g_free(i8* %24), !dbg !2694
  %25 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2695
  %26 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %25, i32 0, i32 17, !dbg !2696
  store i8* null, i8** %26, align 8, !dbg !2697
  br label %27, !dbg !2698

; <label>:27:                                     ; preds = %21, %16
  br label %28, !dbg !2699

; <label>:28:                                     ; preds = %27
  %29 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2701
  %30 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i32 0, i32 0), i32 1, %struct._IRC_SERVER_REC* %29), !dbg !2702
  br label %31, !dbg !2703

; <label>:31:                                     ; preds = %28, %9
  ret void, !dbg !2704
}

; Function Attrs: nounwind uwtable
define internal void @event_away(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !2706 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !2707, metadata !697), !dbg !2708
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2709, metadata !697), !dbg !2710
  br label %5, !dbg !2711, !llvm.loop !2712

; <label>:5:                                      ; preds = %2
  %6 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2713
  %7 = icmp ne %struct._IRC_SERVER_REC* %6, null, !dbg !2717
  br i1 %7, label %8, label %9, !dbg !2713

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !2718

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.event_away, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i32 0, i32 0)), !dbg !2721
  br label %19, !dbg !2724

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !2725

; <label>:11:                                     ; preds = %10
  %12 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2727
  %13 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %12, i32 0, i32 19, !dbg !2728
  %14 = load i8, i8* %13, align 8, !dbg !2729
  %15 = and i8 %14, -3, !dbg !2729
  %16 = or i8 %15, 2, !dbg !2729
  store i8 %16, i8* %13, align 8, !dbg !2729
  %17 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2730
  %18 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i32 0, i32 0), i32 1, %struct._IRC_SERVER_REC* %17), !dbg !2731
  br label %19, !dbg !2732

; <label>:19:                                     ; preds = %11, %9
  ret void, !dbg !2733
}

; Function Attrs: nounwind uwtable
define internal void @event_oper(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !2735 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !2736, metadata !697), !dbg !2737
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2738, metadata !697), !dbg !2739
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2740, metadata !697), !dbg !2741
  %6 = call i8* @settings_get_str(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0)), !dbg !2742
  store i8* %6, i8** %5, align 8, !dbg !2743
  %7 = load i8*, i8** %5, align 8, !dbg !2744
  %8 = load i8, i8* %7, align 1, !dbg !2746
  %9 = sext i8 %8 to i32, !dbg !2746
  %10 = icmp ne i32 %9, 0, !dbg !2747
  br i1 %10, label %11, label %17, !dbg !2748

; <label>:11:                                     ; preds = %2
  %12 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2749
  %13 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !2750
  %14 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %13, i32 0, i32 7, !dbg !2751
  %15 = load i8*, i8** %14, align 8, !dbg !2751
  %16 = load i8*, i8** %5, align 8, !dbg !2752
  call void (%struct._IRC_SERVER_REC*, i8*, ...) @irc_send_cmdv(%struct._IRC_SERVER_REC* %12, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i8* %15, i8* %16), !dbg !2753
  br label %17, !dbg !2753

; <label>:17:                                     ; preds = %11, %2
  ret void, !dbg !2754
}

; Function Attrs: nounwind uwtable
define internal void @event_mode(%struct._IRC_SERVER_REC*, i8*, i8*) #0 !dbg !2755 {
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !2756, metadata !697), !dbg !2757
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2758, metadata !697), !dbg !2759
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2760, metadata !697), !dbg !2761
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %7, metadata !2762, metadata !697), !dbg !2763
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2764, metadata !697), !dbg !2765
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2766, metadata !697), !dbg !2767
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2768, metadata !697), !dbg !2769
  br label %11, !dbg !2770, !llvm.loop !2771

; <label>:11:                                     ; preds = %3
  %12 = load i8*, i8** %5, align 8, !dbg !2772
  %13 = icmp ne i8* %12, null, !dbg !2776
  br i1 %13, label %14, label %15, !dbg !2772

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !2777

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.event_mode, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i32 0, i32 0)), !dbg !2780
  br label %58, !dbg !2783

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !2784

; <label>:17:                                     ; preds = %16
  %18 = load i8*, i8** %5, align 8, !dbg !2786
  %19 = call i8* (i8*, i32, ...) @event_get_params(i8* %18, i32 8194, i8** %9, i8** %10), !dbg !2787
  store i8* %19, i8** %8, align 8, !dbg !2788
  %20 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2789
  %21 = bitcast %struct._IRC_SERVER_REC* %20 to i8*, !dbg !2789
  %22 = call i8* @module_check_cast(i8* %21, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0)), !dbg !2791
  %23 = bitcast i8* %22 to %struct._SERVER_REC*, !dbg !2792
  %24 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %23, i32 0, i32 27, !dbg !2793
  %25 = load i32 (%struct._SERVER_REC*, i8*)*, i32 (%struct._SERVER_REC*, i8*)** %24, align 8, !dbg !2793
  %26 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2794
  %27 = bitcast %struct._IRC_SERVER_REC* %26 to i8*, !dbg !2794
  %28 = call i8* @module_check_cast(i8* %27, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0)), !dbg !2795
  %29 = bitcast i8* %28 to %struct._SERVER_REC*, !dbg !2797
  %30 = load i8*, i8** %9, align 8, !dbg !2798
  %31 = call i32 %25(%struct._SERVER_REC* %29, i8* %30), !dbg !2799
  %32 = icmp ne i32 %31, 0, !dbg !2801
  br i1 %32, label %36, label %33, !dbg !2802

; <label>:33:                                     ; preds = %17
  %34 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2803
  %35 = load i8*, i8** %10, align 8, !dbg !2805
  call void @parse_user_mode(%struct._IRC_SERVER_REC* %34, i8* %35), !dbg !2806
  br label %56, !dbg !2807

; <label>:36:                                     ; preds = %17
  %37 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !2808
  %38 = bitcast %struct._IRC_SERVER_REC* %37 to i8*, !dbg !2808
  %39 = call i8* @module_check_cast(i8* %38, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0)), !dbg !2810
  %40 = bitcast i8* %39 to %struct._SERVER_REC*, !dbg !2811
  %41 = load i8*, i8** %9, align 8, !dbg !2812
  %42 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %40, i8* %41), !dbg !2813
  %43 = bitcast %struct._CHANNEL_REC* %42 to i8*, !dbg !2815
  %44 = call i8* @module_check_cast_module(i8* %43, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0)), !dbg !2816
  %45 = bitcast i8* %44 to %struct._CHANNEL_REC*, !dbg !2818
  %46 = bitcast %struct._CHANNEL_REC* %45 to i8*, !dbg !2819
  %47 = call i8* @chat_protocol_check_cast(i8* %46, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)), !dbg !2820
  %48 = bitcast i8* %47 to %struct._IRC_CHANNEL_REC*, !dbg !2822
  store %struct._IRC_CHANNEL_REC* %48, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !2823
  %49 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !2824
  %50 = icmp ne %struct._IRC_CHANNEL_REC* %49, null, !dbg !2826
  br i1 %50, label %51, label %55, !dbg !2827

; <label>:51:                                     ; preds = %36
  %52 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !2828
  %53 = load i8*, i8** %6, align 8, !dbg !2829
  %54 = load i8*, i8** %10, align 8, !dbg !2830
  call void @parse_channel_modes(%struct._IRC_CHANNEL_REC* %52, i8* %53, i8* %54, i32 1), !dbg !2831
  br label %55, !dbg !2831

; <label>:55:                                     ; preds = %51, %36
  br label %56

; <label>:56:                                     ; preds = %55, %33
  %57 = load i8*, i8** %8, align 8, !dbg !2832
  call void @g_free(i8* %57), !dbg !2833
  br label %58, !dbg !2834

; <label>:58:                                     ; preds = %56, %15
  ret void, !dbg !2835
}

; Function Attrs: nounwind uwtable
define internal void @sig_req_usermode_change(%struct._IRC_SERVER_REC*, i8*, i8*, i8*) #0 !dbg !2837 {
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !2840, metadata !697), !dbg !2841
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2842, metadata !697), !dbg !2843
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2844, metadata !697), !dbg !2845
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2846, metadata !697), !dbg !2847
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2848, metadata !697), !dbg !2849
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2850, metadata !697), !dbg !2851
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2852, metadata !697), !dbg !2853
  br label %12, !dbg !2854, !llvm.loop !2855

; <label>:12:                                     ; preds = %4
  %13 = load i8*, i8** %6, align 8, !dbg !2856
  %14 = icmp ne i8* %13, null, !dbg !2860
  br i1 %14, label %15, label %16, !dbg !2856

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !2861

; <label>:16:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.sig_req_usermode_change, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i32 0, i32 0)), !dbg !2864
  br label %53, !dbg !2867

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !2868

; <label>:18:                                     ; preds = %17
  %19 = load i8*, i8** %6, align 8, !dbg !2870
  %20 = call i8* (i8*, i32, ...) @event_get_params(i8* %19, i32 8194, i8** %10, i8** %11), !dbg !2871
  store i8* %20, i8** %9, align 8, !dbg !2872
  %21 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2873
  %22 = bitcast %struct._IRC_SERVER_REC* %21 to i8*, !dbg !2873
  %23 = call i8* @module_check_cast(i8* %22, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0)), !dbg !2875
  %24 = bitcast i8* %23 to %struct._SERVER_REC*, !dbg !2876
  %25 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %24, i32 0, i32 27, !dbg !2877
  %26 = load i32 (%struct._SERVER_REC*, i8*)*, i32 (%struct._SERVER_REC*, i8*)** %25, align 8, !dbg !2877
  %27 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2878
  %28 = bitcast %struct._IRC_SERVER_REC* %27 to i8*, !dbg !2878
  %29 = call i8* @module_check_cast(i8* %28, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0)), !dbg !2879
  %30 = bitcast i8* %29 to %struct._SERVER_REC*, !dbg !2881
  %31 = load i8*, i8** %10, align 8, !dbg !2882
  %32 = call i32 %26(%struct._SERVER_REC* %30, i8* %31), !dbg !2883
  %33 = icmp ne i32 %32, 0, !dbg !2885
  br i1 %33, label %46, label %34, !dbg !2886

; <label>:34:                                     ; preds = %18
  %35 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2887
  %36 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %35, i32 0, i32 42, !dbg !2889
  %37 = load i8*, i8** %36, align 8, !dbg !2889
  %38 = load i8*, i8** %11, align 8, !dbg !2890
  %39 = call i8* @modes_join(%struct._IRC_SERVER_REC* null, i8* %37, i8* %38, i32 0), !dbg !2891
  store i8* %39, i8** %11, align 8, !dbg !2892
  %40 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2893
  %41 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %40, i32 0, i32 42, !dbg !2894
  %42 = load i8*, i8** %41, align 8, !dbg !2894
  call void @g_free(i8* %42), !dbg !2895
  %43 = load i8*, i8** %11, align 8, !dbg !2896
  %44 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2897
  %45 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %44, i32 0, i32 42, !dbg !2898
  store i8* %43, i8** %45, align 8, !dbg !2899
  br label %46, !dbg !2900

; <label>:46:                                     ; preds = %34, %18
  %47 = load i8*, i8** %9, align 8, !dbg !2901
  call void @g_free(i8* %47), !dbg !2902
  %48 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2903
  %49 = load i8*, i8** %6, align 8, !dbg !2904
  %50 = load i8*, i8** %7, align 8, !dbg !2905
  %51 = load i8*, i8** %8, align 8, !dbg !2906
  %52 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), i32 4, %struct._IRC_SERVER_REC* %48, i8* %49, i8* %50, i8* %51), !dbg !2907
  br label %53, !dbg !2908

; <label>:53:                                     ; preds = %46, %16
  ret void, !dbg !2909
}

declare void @command_bind_full(i8*, i32, i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #5

declare i32 @chat_protocol_lookup(i8*) #5

; Function Attrs: nounwind uwtable
define internal void @cmd_op(i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*) #0 !dbg !2911 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  %7 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2914, metadata !697), !dbg !2915
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !2916, metadata !697), !dbg !2917
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !2918, metadata !697), !dbg !2919
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %7, metadata !2920, metadata !697), !dbg !2921
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2922, metadata !697), !dbg !2923
  br label %9, !dbg !2924, !llvm.loop !2925

; <label>:9:                                      ; preds = %3
  %10 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2926
  %11 = icmp ne %struct._IRC_SERVER_REC* %10, null, !dbg !2930
  br i1 %11, label %12, label %24, !dbg !2931

; <label>:12:                                     ; preds = %9
  %13 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2932
  %14 = bitcast %struct._IRC_SERVER_REC* %13 to i8*, !dbg !2932
  %15 = call i8* @module_check_cast(i8* %14, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0)), !dbg !2934
  %16 = bitcast i8* %15 to %struct._SERVER_REC*, !dbg !2935
  %17 = bitcast %struct._SERVER_REC* %16 to i8*, !dbg !2936
  %18 = call i8* @chat_protocol_check_cast(i8* %17, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)), !dbg !2937
  %19 = bitcast i8* %18 to %struct._IRC_SERVER_REC*, !dbg !2939
  %20 = icmp ne %struct._IRC_SERVER_REC* %19, null, !dbg !2939
  br i1 %20, label %21, label %22, !dbg !2940

; <label>:21:                                     ; preds = %12
  br i1 false, label %23, label %24, !dbg !2941

; <label>:22:                                     ; preds = %12
  br i1 false, label %24, label %23, !dbg !2943

; <label>:23:                                     ; preds = %22, %21
  br label %56, !dbg !2945

; <label>:24:                                     ; preds = %22, %21, %9
  %25 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2947
  %26 = icmp eq %struct._IRC_SERVER_REC* %25, null, !dbg !2950
  br i1 %26, label %34, label %27, !dbg !2951

; <label>:27:                                     ; preds = %24
  %28 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2952
  %29 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %28, i32 0, i32 8, !dbg !2954
  %30 = load i8, i8* %29, align 8, !dbg !2954
  %31 = and i8 %30, 1, !dbg !2954
  %32 = zext i8 %31 to i32, !dbg !2954
  %33 = icmp ne i32 %32, 0, !dbg !2955
  br i1 %33, label %38, label %34, !dbg !2956

; <label>:34:                                     ; preds = %27, %24
  br label %35, !dbg !2957, !llvm.loop !2959

; <label>:35:                                     ; preds = %34
  %36 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !2961
  call void @signal_stop(), !dbg !2964
  br label %56, !dbg !2966
                                                  ; No predecessors!
  br label %38, !dbg !2967

; <label>:38:                                     ; preds = %37, %27
  br label %39, !dbg !2969

; <label>:39:                                     ; preds = %38
  %40 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !2971
  %41 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !2972
  %42 = load i8*, i8** %4, align 8, !dbg !2973
  %43 = call i8* @get_nicks(%struct._IRC_SERVER_REC* %40, %struct._WI_ITEM_REC* %41, i8* %42, i32 0, i32 -1, %struct._IRC_CHANNEL_REC** %7), !dbg !2974
  store i8* %43, i8** %8, align 8, !dbg !2975
  %44 = load i8*, i8** %8, align 8, !dbg !2976
  %45 = icmp ne i8* %44, null, !dbg !2978
  br i1 %45, label %46, label %54, !dbg !2979

; <label>:46:                                     ; preds = %39
  %47 = load i8*, i8** %8, align 8, !dbg !2980
  %48 = load i8, i8* %47, align 1, !dbg !2982
  %49 = sext i8 %48 to i32, !dbg !2982
  %50 = icmp ne i32 %49, 0, !dbg !2983
  br i1 %50, label %51, label %54, !dbg !2984

; <label>:51:                                     ; preds = %46
  %52 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !2985
  %53 = load i8*, i8** %8, align 8, !dbg !2986
  call void @channel_set_singlemode(%struct._IRC_CHANNEL_REC* %52, i8* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i32 0, i32 0)), !dbg !2987
  br label %54, !dbg !2987

; <label>:54:                                     ; preds = %51, %46, %39
  %55 = load i8*, i8** %8, align 8, !dbg !2988
  call void @g_free(i8* %55), !dbg !2989
  br label %56, !dbg !2990

; <label>:56:                                     ; preds = %54, %35, %23
  ret void, !dbg !2991
}

; Function Attrs: nounwind uwtable
define internal void @cmd_deop(i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*) #0 !dbg !2993 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  %7 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2994, metadata !697), !dbg !2995
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !2996, metadata !697), !dbg !2997
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !2998, metadata !697), !dbg !2999
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %7, metadata !3000, metadata !697), !dbg !3001
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3002, metadata !697), !dbg !3003
  br label %9, !dbg !3004, !llvm.loop !3005

; <label>:9:                                      ; preds = %3
  %10 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !3006
  %11 = icmp ne %struct._IRC_SERVER_REC* %10, null, !dbg !3010
  br i1 %11, label %12, label %24, !dbg !3011

; <label>:12:                                     ; preds = %9
  %13 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !3012
  %14 = bitcast %struct._IRC_SERVER_REC* %13 to i8*, !dbg !3012
  %15 = call i8* @module_check_cast(i8* %14, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0)), !dbg !3014
  %16 = bitcast i8* %15 to %struct._SERVER_REC*, !dbg !3015
  %17 = bitcast %struct._SERVER_REC* %16 to i8*, !dbg !3016
  %18 = call i8* @chat_protocol_check_cast(i8* %17, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)), !dbg !3017
  %19 = bitcast i8* %18 to %struct._IRC_SERVER_REC*, !dbg !3019
  %20 = icmp ne %struct._IRC_SERVER_REC* %19, null, !dbg !3019
  br i1 %20, label %21, label %22, !dbg !3020

; <label>:21:                                     ; preds = %12
  br i1 false, label %23, label %24, !dbg !3021

; <label>:22:                                     ; preds = %12
  br i1 false, label %24, label %23, !dbg !3023

; <label>:23:                                     ; preds = %22, %21
  br label %56, !dbg !3025

; <label>:24:                                     ; preds = %22, %21, %9
  %25 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !3027
  %26 = icmp eq %struct._IRC_SERVER_REC* %25, null, !dbg !3030
  br i1 %26, label %34, label %27, !dbg !3031

; <label>:27:                                     ; preds = %24
  %28 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !3032
  %29 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %28, i32 0, i32 8, !dbg !3034
  %30 = load i8, i8* %29, align 8, !dbg !3034
  %31 = and i8 %30, 1, !dbg !3034
  %32 = zext i8 %31 to i32, !dbg !3034
  %33 = icmp ne i32 %32, 0, !dbg !3035
  br i1 %33, label %38, label %34, !dbg !3036

; <label>:34:                                     ; preds = %27, %24
  br label %35, !dbg !3037, !llvm.loop !3039

; <label>:35:                                     ; preds = %34
  %36 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !3041
  call void @signal_stop(), !dbg !3044
  br label %56, !dbg !3046
                                                  ; No predecessors!
  br label %38, !dbg !3047

; <label>:38:                                     ; preds = %37, %27
  br label %39, !dbg !3049

; <label>:39:                                     ; preds = %38
  %40 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !3051
  %41 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !3052
  %42 = load i8*, i8** %4, align 8, !dbg !3053
  %43 = call i8* @get_nicks(%struct._IRC_SERVER_REC* %40, %struct._WI_ITEM_REC* %41, i8* %42, i32 1, i32 -1, %struct._IRC_CHANNEL_REC** %7), !dbg !3054
  store i8* %43, i8** %8, align 8, !dbg !3055
  %44 = load i8*, i8** %8, align 8, !dbg !3056
  %45 = icmp ne i8* %44, null, !dbg !3058
  br i1 %45, label %46, label %54, !dbg !3059

; <label>:46:                                     ; preds = %39
  %47 = load i8*, i8** %8, align 8, !dbg !3060
  %48 = load i8, i8* %47, align 1, !dbg !3062
  %49 = sext i8 %48 to i32, !dbg !3062
  %50 = icmp ne i32 %49, 0, !dbg !3063
  br i1 %50, label %51, label %54, !dbg !3064

; <label>:51:                                     ; preds = %46
  %52 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !3065
  %53 = load i8*, i8** %8, align 8, !dbg !3066
  call void @channel_set_singlemode(%struct._IRC_CHANNEL_REC* %52, i8* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i32 0, i32 0)), !dbg !3067
  br label %54, !dbg !3067

; <label>:54:                                     ; preds = %51, %46, %39
  %55 = load i8*, i8** %8, align 8, !dbg !3068
  call void @g_free(i8* %55), !dbg !3069
  br label %56, !dbg !3070

; <label>:56:                                     ; preds = %54, %35, %23
  ret void, !dbg !3071
}

; Function Attrs: nounwind uwtable
define internal void @cmd_voice(i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*) #0 !dbg !3073 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  %7 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3074, metadata !697), !dbg !3075
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !3076, metadata !697), !dbg !3077
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !3078, metadata !697), !dbg !3079
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %7, metadata !3080, metadata !697), !dbg !3081
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3082, metadata !697), !dbg !3083
  br label %9, !dbg !3084, !llvm.loop !3085

; <label>:9:                                      ; preds = %3
  %10 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !3086
  %11 = icmp ne %struct._IRC_SERVER_REC* %10, null, !dbg !3090
  br i1 %11, label %12, label %24, !dbg !3091

; <label>:12:                                     ; preds = %9
  %13 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !3092
  %14 = bitcast %struct._IRC_SERVER_REC* %13 to i8*, !dbg !3092
  %15 = call i8* @module_check_cast(i8* %14, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0)), !dbg !3094
  %16 = bitcast i8* %15 to %struct._SERVER_REC*, !dbg !3095
  %17 = bitcast %struct._SERVER_REC* %16 to i8*, !dbg !3096
  %18 = call i8* @chat_protocol_check_cast(i8* %17, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)), !dbg !3097
  %19 = bitcast i8* %18 to %struct._IRC_SERVER_REC*, !dbg !3099
  %20 = icmp ne %struct._IRC_SERVER_REC* %19, null, !dbg !3099
  br i1 %20, label %21, label %22, !dbg !3100

; <label>:21:                                     ; preds = %12
  br i1 false, label %23, label %24, !dbg !3101

; <label>:22:                                     ; preds = %12
  br i1 false, label %24, label %23, !dbg !3103

; <label>:23:                                     ; preds = %22, %21
  br label %56, !dbg !3105

; <label>:24:                                     ; preds = %22, %21, %9
  %25 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !3107
  %26 = icmp eq %struct._IRC_SERVER_REC* %25, null, !dbg !3110
  br i1 %26, label %34, label %27, !dbg !3111

; <label>:27:                                     ; preds = %24
  %28 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !3112
  %29 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %28, i32 0, i32 8, !dbg !3114
  %30 = load i8, i8* %29, align 8, !dbg !3114
  %31 = and i8 %30, 1, !dbg !3114
  %32 = zext i8 %31 to i32, !dbg !3114
  %33 = icmp ne i32 %32, 0, !dbg !3115
  br i1 %33, label %38, label %34, !dbg !3116

; <label>:34:                                     ; preds = %27, %24
  br label %35, !dbg !3117, !llvm.loop !3119

; <label>:35:                                     ; preds = %34
  %36 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !3121
  call void @signal_stop(), !dbg !3124
  br label %56, !dbg !3126
                                                  ; No predecessors!
  br label %38, !dbg !3127

; <label>:38:                                     ; preds = %37, %27
  br label %39, !dbg !3129

; <label>:39:                                     ; preds = %38
  %40 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !3131
  %41 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !3132
  %42 = load i8*, i8** %4, align 8, !dbg !3133
  %43 = call i8* @get_nicks(%struct._IRC_SERVER_REC* %40, %struct._WI_ITEM_REC* %41, i8* %42, i32 0, i32 0, %struct._IRC_CHANNEL_REC** %7), !dbg !3134
  store i8* %43, i8** %8, align 8, !dbg !3135
  %44 = load i8*, i8** %8, align 8, !dbg !3136
  %45 = icmp ne i8* %44, null, !dbg !3138
  br i1 %45, label %46, label %54, !dbg !3139

; <label>:46:                                     ; preds = %39
  %47 = load i8*, i8** %8, align 8, !dbg !3140
  %48 = load i8, i8* %47, align 1, !dbg !3142
  %49 = sext i8 %48 to i32, !dbg !3142
  %50 = icmp ne i32 %49, 0, !dbg !3143
  br i1 %50, label %51, label %54, !dbg !3144

; <label>:51:                                     ; preds = %46
  %52 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !3145
  %53 = load i8*, i8** %8, align 8, !dbg !3146
  call void @channel_set_singlemode(%struct._IRC_CHANNEL_REC* %52, i8* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.48, i32 0, i32 0)), !dbg !3147
  br label %54, !dbg !3147

; <label>:54:                                     ; preds = %51, %46, %39
  %55 = load i8*, i8** %8, align 8, !dbg !3148
  call void @g_free(i8* %55), !dbg !3149
  br label %56, !dbg !3150

; <label>:56:                                     ; preds = %54, %35, %23
  ret void, !dbg !3151
}

; Function Attrs: nounwind uwtable
define internal void @cmd_devoice(i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*) #0 !dbg !3153 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  %7 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3154, metadata !697), !dbg !3155
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !3156, metadata !697), !dbg !3157
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !3158, metadata !697), !dbg !3159
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %7, metadata !3160, metadata !697), !dbg !3161
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3162, metadata !697), !dbg !3163
  br label %9, !dbg !3164, !llvm.loop !3165

; <label>:9:                                      ; preds = %3
  %10 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !3166
  %11 = icmp ne %struct._IRC_SERVER_REC* %10, null, !dbg !3170
  br i1 %11, label %12, label %24, !dbg !3171

; <label>:12:                                     ; preds = %9
  %13 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !3172
  %14 = bitcast %struct._IRC_SERVER_REC* %13 to i8*, !dbg !3172
  %15 = call i8* @module_check_cast(i8* %14, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0)), !dbg !3174
  %16 = bitcast i8* %15 to %struct._SERVER_REC*, !dbg !3175
  %17 = bitcast %struct._SERVER_REC* %16 to i8*, !dbg !3176
  %18 = call i8* @chat_protocol_check_cast(i8* %17, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)), !dbg !3177
  %19 = bitcast i8* %18 to %struct._IRC_SERVER_REC*, !dbg !3179
  %20 = icmp ne %struct._IRC_SERVER_REC* %19, null, !dbg !3179
  br i1 %20, label %21, label %22, !dbg !3180

; <label>:21:                                     ; preds = %12
  br i1 false, label %23, label %24, !dbg !3181

; <label>:22:                                     ; preds = %12
  br i1 false, label %24, label %23, !dbg !3183

; <label>:23:                                     ; preds = %22, %21
  br label %56, !dbg !3185

; <label>:24:                                     ; preds = %22, %21, %9
  %25 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !3187
  %26 = icmp eq %struct._IRC_SERVER_REC* %25, null, !dbg !3190
  br i1 %26, label %34, label %27, !dbg !3191

; <label>:27:                                     ; preds = %24
  %28 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !3192
  %29 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %28, i32 0, i32 8, !dbg !3194
  %30 = load i8, i8* %29, align 8, !dbg !3194
  %31 = and i8 %30, 1, !dbg !3194
  %32 = zext i8 %31 to i32, !dbg !3194
  %33 = icmp ne i32 %32, 0, !dbg !3195
  br i1 %33, label %38, label %34, !dbg !3196

; <label>:34:                                     ; preds = %27, %24
  br label %35, !dbg !3197, !llvm.loop !3199

; <label>:35:                                     ; preds = %34
  %36 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !3201
  call void @signal_stop(), !dbg !3204
  br label %56, !dbg !3206
                                                  ; No predecessors!
  br label %38, !dbg !3207

; <label>:38:                                     ; preds = %37, %27
  br label %39, !dbg !3209

; <label>:39:                                     ; preds = %38
  %40 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !3211
  %41 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !3212
  %42 = load i8*, i8** %4, align 8, !dbg !3213
  %43 = call i8* @get_nicks(%struct._IRC_SERVER_REC* %40, %struct._WI_ITEM_REC* %41, i8* %42, i32 -1, i32 1, %struct._IRC_CHANNEL_REC** %7), !dbg !3214
  store i8* %43, i8** %8, align 8, !dbg !3215
  %44 = load i8*, i8** %8, align 8, !dbg !3216
  %45 = icmp ne i8* %44, null, !dbg !3218
  br i1 %45, label %46, label %54, !dbg !3219

; <label>:46:                                     ; preds = %39
  %47 = load i8*, i8** %8, align 8, !dbg !3220
  %48 = load i8, i8* %47, align 1, !dbg !3222
  %49 = sext i8 %48 to i32, !dbg !3222
  %50 = icmp ne i32 %49, 0, !dbg !3223
  br i1 %50, label %51, label %54, !dbg !3224

; <label>:51:                                     ; preds = %46
  %52 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !3225
  %53 = load i8*, i8** %8, align 8, !dbg !3226
  call void @channel_set_singlemode(%struct._IRC_CHANNEL_REC* %52, i8* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.49, i32 0, i32 0)), !dbg !3227
  br label %54, !dbg !3227

; <label>:54:                                     ; preds = %51, %46, %39
  %55 = load i8*, i8** %8, align 8, !dbg !3228
  call void @g_free(i8* %55), !dbg !3229
  br label %56, !dbg !3230

; <label>:56:                                     ; preds = %54, %35, %23
  ret void, !dbg !3231
}

; Function Attrs: nounwind uwtable
define internal void @cmd_mode(i8*, %struct._IRC_SERVER_REC*, %struct._IRC_CHANNEL_REC*) #0 !dbg !3233 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %7 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3236, metadata !697), !dbg !3237
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !3238, metadata !697), !dbg !3239
  store %struct._IRC_CHANNEL_REC* %2, %struct._IRC_CHANNEL_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %6, metadata !3240, metadata !697), !dbg !3241
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %7, metadata !3242, metadata !697), !dbg !3243
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3244, metadata !697), !dbg !3245
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3246, metadata !697), !dbg !3247
  call void @llvm.dbg.declare(metadata i8** %10, metadata !3248, metadata !697), !dbg !3249
  br label %11, !dbg !3250, !llvm.loop !3251

; <label>:11:                                     ; preds = %3
  %12 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !3252
  %13 = icmp ne %struct._IRC_SERVER_REC* %12, null, !dbg !3256
  br i1 %13, label %14, label %26, !dbg !3257

; <label>:14:                                     ; preds = %11
  %15 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !3258
  %16 = bitcast %struct._IRC_SERVER_REC* %15 to i8*, !dbg !3258
  %17 = call i8* @module_check_cast(i8* %16, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0)), !dbg !3260
  %18 = bitcast i8* %17 to %struct._SERVER_REC*, !dbg !3261
  %19 = bitcast %struct._SERVER_REC* %18 to i8*, !dbg !3262
  %20 = call i8* @chat_protocol_check_cast(i8* %19, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)), !dbg !3263
  %21 = bitcast i8* %20 to %struct._IRC_SERVER_REC*, !dbg !3265
  %22 = icmp ne %struct._IRC_SERVER_REC* %21, null, !dbg !3265
  br i1 %22, label %23, label %24, !dbg !3266

; <label>:23:                                     ; preds = %14
  br i1 false, label %25, label %26, !dbg !3267

; <label>:24:                                     ; preds = %14
  br i1 false, label %26, label %25, !dbg !3269

; <label>:25:                                     ; preds = %24, %23
  br label %163, !dbg !3271

; <label>:26:                                     ; preds = %24, %23, %11
  %27 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !3273
  %28 = icmp eq %struct._IRC_SERVER_REC* %27, null, !dbg !3276
  br i1 %28, label %36, label %29, !dbg !3277

; <label>:29:                                     ; preds = %26
  %30 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !3278
  %31 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %30, i32 0, i32 8, !dbg !3280
  %32 = load i8, i8* %31, align 8, !dbg !3280
  %33 = and i8 %32, 1, !dbg !3280
  %34 = zext i8 %33 to i32, !dbg !3280
  %35 = icmp ne i32 %34, 0, !dbg !3281
  br i1 %35, label %40, label %36, !dbg !3282

; <label>:36:                                     ; preds = %29, %26
  br label %37, !dbg !3283, !llvm.loop !3285

; <label>:37:                                     ; preds = %36
  %38 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !3287
  call void @signal_stop(), !dbg !3290
  br label %163, !dbg !3292
                                                  ; No predecessors!
  br label %40, !dbg !3293

; <label>:40:                                     ; preds = %39, %29
  br label %41, !dbg !3295

; <label>:41:                                     ; preds = %40
  %42 = load i8*, i8** %4, align 8, !dbg !3297
  %43 = load i8, i8* %42, align 1, !dbg !3299
  %44 = sext i8 %43 to i32, !dbg !3299
  %45 = icmp eq i32 %44, 43, !dbg !3300
  br i1 %45, label %51, label %46, !dbg !3301

; <label>:46:                                     ; preds = %41
  %47 = load i8*, i8** %4, align 8, !dbg !3302
  %48 = load i8, i8* %47, align 1, !dbg !3304
  %49 = sext i8 %48 to i32, !dbg !3304
  %50 = icmp eq i32 %49, 45, !dbg !3305
  br i1 %50, label %51, label %57, !dbg !3306

; <label>:51:                                     ; preds = %46, %41
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i32 0, i32 0), i8** %8, align 8, !dbg !3307
  %52 = load i8*, i8** %4, align 8, !dbg !3309
  %53 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %52, i8** %10, i32 270337, i8** %9), !dbg !3311
  %54 = icmp ne i32 %53, 0, !dbg !3311
  br i1 %54, label %56, label %55, !dbg !3312

; <label>:55:                                     ; preds = %51
  br label %163, !dbg !3313

; <label>:56:                                     ; preds = %51
  br label %63, !dbg !3314

; <label>:57:                                     ; preds = %46
  %58 = load i8*, i8** %4, align 8, !dbg !3315
  %59 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %58, i8** %10, i32 270338, i8** %8, i8** %9), !dbg !3318
  %60 = icmp ne i32 %59, 0, !dbg !3318
  br i1 %60, label %62, label %61, !dbg !3319

; <label>:61:                                     ; preds = %57
  br label %163, !dbg !3320

; <label>:62:                                     ; preds = %57
  br label %63

; <label>:63:                                     ; preds = %62, %56
  %64 = load i8*, i8** %8, align 8, !dbg !3321
  %65 = call i32 @g_strcmp0(i8* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i32 0, i32 0)), !dbg !3323
  %66 = icmp eq i32 %65, 0, !dbg !3324
  br i1 %66, label %67, label %89, !dbg !3325

; <label>:67:                                     ; preds = %63
  %68 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %6, align 8, !dbg !3326
  %69 = bitcast %struct._IRC_CHANNEL_REC* %68 to i8*, !dbg !3326
  %70 = call i8* @module_check_cast_module(i8* %69, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0)), !dbg !3329
  %71 = bitcast i8* %70 to %struct._CHANNEL_REC*, !dbg !3330
  %72 = bitcast %struct._CHANNEL_REC* %71 to i8*, !dbg !3331
  %73 = call i8* @chat_protocol_check_cast(i8* %72, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)), !dbg !3332
  %74 = bitcast i8* %73 to %struct._IRC_CHANNEL_REC*, !dbg !3334
  %75 = icmp ne %struct._IRC_CHANNEL_REC* %74, null, !dbg !3334
  br i1 %75, label %76, label %77, !dbg !3335

; <label>:76:                                     ; preds = %67
  br i1 false, label %78, label %85, !dbg !3336

; <label>:77:                                     ; preds = %67
  br i1 false, label %85, label %78, !dbg !3338

; <label>:78:                                     ; preds = %77, %76
  br label %79, !dbg !3340, !llvm.loop !3341

; <label>:79:                                     ; preds = %78
  %80 = load i8*, i8** %10, align 8, !dbg !3342
  call void @cmd_params_free(i8* %80), !dbg !3345
  br label %81, !dbg !3346, !llvm.loop !3347

; <label>:81:                                     ; preds = %79
  %82 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i32 0, i32 0), i32 1, i8* inttoptr (i64 5 to i8*)), !dbg !3349
  call void @signal_stop(), !dbg !3352
  br label %163, !dbg !3354
                                                  ; No predecessors!
  br label %84, !dbg !3355

; <label>:84:                                     ; preds = %83
  br label %85, !dbg !3357

; <label>:85:                                     ; preds = %84, %77, %76
  %86 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %6, align 8, !dbg !3359
  %87 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %86, i32 0, i32 6, !dbg !3360
  %88 = load i8*, i8** %87, align 8, !dbg !3360
  store i8* %88, i8** %8, align 8, !dbg !3361
  br label %89, !dbg !3362

; <label>:89:                                     ; preds = %85, %63
  %90 = load i8*, i8** %8, align 8, !dbg !3363
  %91 = load i8, i8* %90, align 1, !dbg !3365
  %92 = sext i8 %91 to i32, !dbg !3365
  %93 = icmp eq i32 %92, 0, !dbg !3366
  br i1 %93, label %94, label %101, !dbg !3367

; <label>:94:                                     ; preds = %89
  br label %95, !dbg !3368, !llvm.loop !3370

; <label>:95:                                     ; preds = %94
  %96 = load i8*, i8** %10, align 8, !dbg !3372
  call void @cmd_params_free(i8* %96), !dbg !3375
  br label %97, !dbg !3376, !llvm.loop !3377

; <label>:97:                                     ; preds = %95
  %98 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !3379
  call void @signal_stop(), !dbg !3382
  br label %163, !dbg !3384
                                                  ; No predecessors!
  br label %100, !dbg !3385

; <label>:100:                                    ; preds = %99
  br label %101, !dbg !3387

; <label>:101:                                    ; preds = %100, %89
  %102 = load i8*, i8** %9, align 8, !dbg !3389
  %103 = load i8, i8* %102, align 1, !dbg !3391
  %104 = sext i8 %103 to i32, !dbg !3391
  %105 = icmp eq i32 %104, 0, !dbg !3392
  br i1 %105, label %106, label %128, !dbg !3393

; <label>:106:                                    ; preds = %101
  %107 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !3394
  %108 = bitcast %struct._IRC_SERVER_REC* %107 to i8*, !dbg !3394
  %109 = call i8* @module_check_cast(i8* %108, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0)), !dbg !3396
  %110 = bitcast i8* %109 to %struct._SERVER_REC*, !dbg !3397
  %111 = load i8*, i8** %8, align 8, !dbg !3398
  %112 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %110, i8* %111), !dbg !3399
  %113 = bitcast %struct._CHANNEL_REC* %112 to i8*, !dbg !3401
  %114 = call i8* @module_check_cast_module(i8* %113, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0)), !dbg !3402
  %115 = bitcast i8* %114 to %struct._CHANNEL_REC*, !dbg !3404
  %116 = bitcast %struct._CHANNEL_REC* %115 to i8*, !dbg !3405
  %117 = call i8* @chat_protocol_check_cast(i8* %116, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)), !dbg !3406
  %118 = bitcast i8* %117 to %struct._IRC_CHANNEL_REC*, !dbg !3408
  store %struct._IRC_CHANNEL_REC* %118, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !3409
  %119 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !3410
  %120 = icmp ne %struct._IRC_CHANNEL_REC* %119, null, !dbg !3412
  br i1 %120, label %121, label %125, !dbg !3413

; <label>:121:                                    ; preds = %106
  %122 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %7, align 8, !dbg !3414
  %123 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %122, i32 0, i32 6, !dbg !3415
  %124 = load i8*, i8** %123, align 8, !dbg !3415
  store i8* %124, i8** %8, align 8, !dbg !3416
  br label %125, !dbg !3417

; <label>:125:                                    ; preds = %121, %106
  %126 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !3418
  %127 = load i8*, i8** %8, align 8, !dbg !3419
  call void (%struct._IRC_SERVER_REC*, i8*, ...) @irc_send_cmdv(%struct._IRC_SERVER_REC* %126, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0), i8* %127), !dbg !3420
  br label %161, !dbg !3421

; <label>:128:                                    ; preds = %101
  %129 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !3422
  %130 = bitcast %struct._IRC_SERVER_REC* %129 to i8*, !dbg !3422
  %131 = call i8* @module_check_cast(i8* %130, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0)), !dbg !3425
  %132 = bitcast i8* %131 to %struct._SERVER_REC*, !dbg !3426
  %133 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %132, i32 0, i32 27, !dbg !3427
  %134 = load i32 (%struct._SERVER_REC*, i8*)*, i32 (%struct._SERVER_REC*, i8*)** %133, align 8, !dbg !3427
  %135 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !3428
  %136 = bitcast %struct._IRC_SERVER_REC* %135 to i8*, !dbg !3428
  %137 = call i8* @module_check_cast(i8* %136, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0)), !dbg !3429
  %138 = bitcast i8* %137 to %struct._SERVER_REC*, !dbg !3431
  %139 = load i8*, i8** %8, align 8, !dbg !3432
  %140 = call i32 %134(%struct._SERVER_REC* %138, i8* %139), !dbg !3433
  %141 = icmp ne i32 %140, 0, !dbg !3435
  br i1 %141, label %142, label %146, !dbg !3436

; <label>:142:                                    ; preds = %128
  %143 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !3437
  %144 = load i8*, i8** %8, align 8, !dbg !3438
  %145 = load i8*, i8** %9, align 8, !dbg !3439
  call void @channel_set_mode(%struct._IRC_SERVER_REC* %143, i8* %144, i8* %145), !dbg !3440
  br label %160, !dbg !3440

; <label>:146:                                    ; preds = %128
  %147 = load i8*, i8** %8, align 8, !dbg !3441
  %148 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !3444
  %149 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %148, i32 0, i32 7, !dbg !3445
  %150 = load i8*, i8** %149, align 8, !dbg !3445
  %151 = call i32 @g_ascii_strcasecmp(i8* %147, i8* %150), !dbg !3446
  %152 = icmp eq i32 %151, 0, !dbg !3447
  br i1 %152, label %153, label %156, !dbg !3448

; <label>:153:                                    ; preds = %146
  %154 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !3449
  %155 = load i8*, i8** %8, align 8, !dbg !3451
  call void (%struct._IRC_SERVER_REC*, i8*, i32, i8*, i32, i8*, ...) @server_redirect_event(%struct._IRC_SERVER_REC* %154, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i32 0, i32 0), i32 1, i8* %155, i32 -1, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i32 0, i32 0), i8* null), !dbg !3452
  br label %156, !dbg !3453

; <label>:156:                                    ; preds = %153, %146
  %157 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !3454
  %158 = load i8*, i8** %8, align 8, !dbg !3455
  %159 = load i8*, i8** %9, align 8, !dbg !3456
  call void (%struct._IRC_SERVER_REC*, i8*, ...) @irc_send_cmdv(%struct._IRC_SERVER_REC* %157, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i8* %158, i8* %159), !dbg !3457
  br label %160

; <label>:160:                                    ; preds = %156, %142
  br label %161

; <label>:161:                                    ; preds = %160, %125
  %162 = load i8*, i8** %10, align 8, !dbg !3458
  call void @cmd_params_free(i8* %162), !dbg !3459
  br label %163, !dbg !3460

; <label>:163:                                    ; preds = %161, %97, %81, %61, %55, %37, %25
  ret void, !dbg !3461
}

declare void @command_set_options_module(i8*, i8*, i8*) #5

; Function Attrs: nounwind uwtable
define void @modes_deinit() #0 !dbg !3463 {
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_user_mode to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3464
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_unaway to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3465
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_away to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3466
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*)* @event_oper to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3467
  call void @signal_remove_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_mode to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3468
  call void @signal_remove_full(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.26, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @sig_req_usermode_change to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3469
  call void @command_unbind_full(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_op to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3470
  call void @command_unbind_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_deop to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3471
  call void @command_unbind_full(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_voice to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3472
  call void @command_unbind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_devoice to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3473
  call void @command_unbind_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, %struct._IRC_CHANNEL_REC*)* @cmd_mode to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !3474
  ret void, !dbg !3475
}

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #5

declare void @command_unbind_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #5

; Function Attrs: nounwind uwtable
define internal void @mode_remove(%struct._IRC_SERVER_REC*, %struct._GString*, i8 signext, i32) #0 !dbg !3476 {
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca %struct._GString*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !3479, metadata !697), !dbg !3480
  store %struct._GString* %1, %struct._GString** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._GString** %6, metadata !3481, metadata !697), !dbg !3482
  store i8 %2, i8* %7, align 1
  call void @llvm.dbg.declare(metadata i8* %7, metadata !3483, metadata !697), !dbg !3484
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !3485, metadata !697), !dbg !3486
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3487, metadata !697), !dbg !3488
  call void @llvm.dbg.declare(metadata i32* %10, metadata !3489, metadata !697), !dbg !3490
  store i32 0, i32* %10, align 4, !dbg !3490
  %11 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !3491
  %12 = getelementptr inbounds %struct._GString, %struct._GString* %11, i32 0, i32 0, !dbg !3493
  %13 = load i8*, i8** %12, align 8, !dbg !3493
  store i8* %13, i8** %9, align 8, !dbg !3494
  br label %14, !dbg !3495

; <label>:14:                                     ; preds = %150, %4
  %15 = load i8*, i8** %9, align 8, !dbg !3496
  %16 = load i8, i8* %15, align 1, !dbg !3499
  %17 = sext i8 %16 to i32, !dbg !3499
  %18 = icmp ne i32 %17, 0, !dbg !3500
  br i1 %18, label %19, label %24, !dbg !3501

; <label>:19:                                     ; preds = %14
  %20 = load i8*, i8** %9, align 8, !dbg !3502
  %21 = load i8, i8* %20, align 1, !dbg !3504
  %22 = sext i8 %21 to i32, !dbg !3504
  %23 = icmp ne i32 %22, 32, !dbg !3505
  br label %24

; <label>:24:                                     ; preds = %19, %14
  %25 = phi i1 [ false, %14 ], [ %23, %19 ]
  br i1 %25, label %26, label %153, !dbg !3506

; <label>:26:                                     ; preds = %24
  %27 = load i8, i8* %7, align 1, !dbg !3508
  %28 = sext i8 %27 to i32, !dbg !3508
  %29 = load i8*, i8** %9, align 8, !dbg !3511
  %30 = load i8, i8* %29, align 1, !dbg !3512
  %31 = sext i8 %30 to i32, !dbg !3512
  %32 = icmp eq i32 %28, %31, !dbg !3513
  br i1 %32, label %33, label %95, !dbg !3514

; <label>:33:                                     ; preds = %26
  %34 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !3515
  %35 = load i8*, i8** %9, align 8, !dbg !3517
  %36 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !3518
  %37 = getelementptr inbounds %struct._GString, %struct._GString* %36, i32 0, i32 0, !dbg !3519
  %38 = load i8*, i8** %37, align 8, !dbg !3519
  %39 = ptrtoint i8* %35 to i64, !dbg !3520
  %40 = ptrtoint i8* %38 to i64, !dbg !3520
  %41 = sub i64 %39, %40, !dbg !3520
  %42 = trunc i64 %41 to i32, !dbg !3521
  %43 = sext i32 %42 to i64, !dbg !3521
  %44 = call %struct._GString* @g_string_erase(%struct._GString* %34, i64 %43, i64 1), !dbg !3522
  %45 = load i32, i32* %8, align 4, !dbg !3523
  %46 = icmp ne i32 %45, 0, !dbg !3523
  br i1 %46, label %94, label %47, !dbg !3525

; <label>:47:                                     ; preds = %33
  %48 = load i8, i8* %7, align 1, !dbg !3526
  %49 = zext i8 %48 to i32, !dbg !3528
  %50 = sext i32 %49 to i64, !dbg !3529
  %51 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !3529
  %52 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %51, i32 0, i32 70, !dbg !3530
  %53 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %52, i64 0, i64 %50, !dbg !3529
  %54 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %53, i32 0, i32 0, !dbg !3531
  %55 = bitcast {}** %54 to void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)**, !dbg !3531
  %56 = load void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %55, align 8, !dbg !3531
  %57 = icmp eq void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* %56, @modes_type_a, !dbg !3532
  br i1 %57, label %91, label %58, !dbg !3533

; <label>:58:                                     ; preds = %47
  %59 = load i8, i8* %7, align 1, !dbg !3534
  %60 = zext i8 %59 to i32, !dbg !3536
  %61 = sext i32 %60 to i64, !dbg !3537
  %62 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !3537
  %63 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %62, i32 0, i32 70, !dbg !3538
  %64 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %63, i64 0, i64 %61, !dbg !3537
  %65 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %64, i32 0, i32 0, !dbg !3539
  %66 = bitcast {}** %65 to void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)**, !dbg !3539
  %67 = load void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %66, align 8, !dbg !3539
  %68 = icmp eq void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* %67, @modes_type_b, !dbg !3540
  br i1 %68, label %91, label %69, !dbg !3541

; <label>:69:                                     ; preds = %58
  %70 = load i8, i8* %7, align 1, !dbg !3542
  %71 = zext i8 %70 to i32, !dbg !3544
  %72 = sext i32 %71 to i64, !dbg !3545
  %73 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !3545
  %74 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %73, i32 0, i32 70, !dbg !3546
  %75 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %74, i64 0, i64 %72, !dbg !3545
  %76 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %75, i32 0, i32 0, !dbg !3547
  %77 = bitcast {}** %76 to void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)**, !dbg !3547
  %78 = load void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %77, align 8, !dbg !3547
  %79 = icmp eq void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* %78, @modes_type_prefix, !dbg !3548
  br i1 %79, label %91, label %80, !dbg !3549

; <label>:80:                                     ; preds = %69
  %81 = load i8, i8* %7, align 1, !dbg !3550
  %82 = zext i8 %81 to i32, !dbg !3552
  %83 = sext i32 %82 to i64, !dbg !3553
  %84 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !3553
  %85 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %84, i32 0, i32 70, !dbg !3554
  %86 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %85, i64 0, i64 %83, !dbg !3553
  %87 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %86, i32 0, i32 0, !dbg !3555
  %88 = bitcast {}** %87 to void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)**, !dbg !3555
  %89 = load void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %88, align 8, !dbg !3555
  %90 = icmp eq void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* %89, @modes_type_c, !dbg !3556
  br i1 %90, label %91, label %94, !dbg !3557

; <label>:91:                                     ; preds = %80, %69, %58, %47
  %92 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !3558
  %93 = load i32, i32* %10, align 4, !dbg !3559
  call void @node_remove_arg(%struct._GString* %92, i32 %93), !dbg !3560
  br label %94, !dbg !3560

; <label>:94:                                     ; preds = %91, %80, %33
  br label %153, !dbg !3561

; <label>:95:                                     ; preds = %26
  %96 = load i32, i32* %8, align 4, !dbg !3562
  %97 = icmp ne i32 %96, 0, !dbg !3562
  br i1 %97, label %149, label %98, !dbg !3564

; <label>:98:                                     ; preds = %95
  %99 = load i8*, i8** %9, align 8, !dbg !3565
  %100 = load i8, i8* %99, align 1, !dbg !3567
  %101 = zext i8 %100 to i32, !dbg !3568
  %102 = sext i32 %101 to i64, !dbg !3569
  %103 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !3569
  %104 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %103, i32 0, i32 70, !dbg !3570
  %105 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %104, i64 0, i64 %102, !dbg !3569
  %106 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %105, i32 0, i32 0, !dbg !3571
  %107 = bitcast {}** %106 to void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)**, !dbg !3571
  %108 = load void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %107, align 8, !dbg !3571
  %109 = icmp eq void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* %108, @modes_type_a, !dbg !3572
  br i1 %109, label %146, label %110, !dbg !3573

; <label>:110:                                    ; preds = %98
  %111 = load i8*, i8** %9, align 8, !dbg !3574
  %112 = load i8, i8* %111, align 1, !dbg !3576
  %113 = zext i8 %112 to i32, !dbg !3577
  %114 = sext i32 %113 to i64, !dbg !3578
  %115 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !3578
  %116 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %115, i32 0, i32 70, !dbg !3579
  %117 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %116, i64 0, i64 %114, !dbg !3578
  %118 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %117, i32 0, i32 0, !dbg !3580
  %119 = bitcast {}** %118 to void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)**, !dbg !3580
  %120 = load void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %119, align 8, !dbg !3580
  %121 = icmp eq void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* %120, @modes_type_b, !dbg !3581
  br i1 %121, label %146, label %122, !dbg !3582

; <label>:122:                                    ; preds = %110
  %123 = load i8*, i8** %9, align 8, !dbg !3583
  %124 = load i8, i8* %123, align 1, !dbg !3585
  %125 = zext i8 %124 to i32, !dbg !3586
  %126 = sext i32 %125 to i64, !dbg !3587
  %127 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !3587
  %128 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %127, i32 0, i32 70, !dbg !3588
  %129 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %128, i64 0, i64 %126, !dbg !3587
  %130 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %129, i32 0, i32 0, !dbg !3589
  %131 = bitcast {}** %130 to void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)**, !dbg !3589
  %132 = load void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %131, align 8, !dbg !3589
  %133 = icmp eq void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* %132, @modes_type_prefix, !dbg !3590
  br i1 %133, label %146, label %134, !dbg !3591

; <label>:134:                                    ; preds = %122
  %135 = load i8*, i8** %9, align 8, !dbg !3592
  %136 = load i8, i8* %135, align 1, !dbg !3594
  %137 = zext i8 %136 to i32, !dbg !3595
  %138 = sext i32 %137 to i64, !dbg !3596
  %139 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !3596
  %140 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %139, i32 0, i32 70, !dbg !3597
  %141 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %140, i64 0, i64 %138, !dbg !3596
  %142 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %141, i32 0, i32 0, !dbg !3598
  %143 = bitcast {}** %142 to void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)**, !dbg !3598
  %144 = load void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %143, align 8, !dbg !3598
  %145 = icmp eq void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* %144, @modes_type_c, !dbg !3599
  br i1 %145, label %146, label %149, !dbg !3600

; <label>:146:                                    ; preds = %134, %122, %110, %98
  %147 = load i32, i32* %10, align 4, !dbg !3601
  %148 = add nsw i32 %147, 1, !dbg !3601
  store i32 %148, i32* %10, align 4, !dbg !3601
  br label %149, !dbg !3602

; <label>:149:                                    ; preds = %146, %134, %95
  br label %150, !dbg !3603

; <label>:150:                                    ; preds = %149
  %151 = load i8*, i8** %9, align 8, !dbg !3604
  %152 = getelementptr inbounds i8, i8* %151, i32 1, !dbg !3604
  store i8* %152, i8** %9, align 8, !dbg !3604
  br label %14, !dbg !3606, !llvm.loop !3607

; <label>:153:                                    ; preds = %94, %24
  ret void, !dbg !3609
}

; Function Attrs: nounwind uwtable
define internal void @mode_add_sorted(%struct._IRC_SERVER_REC*, %struct._GString*, i8 signext, i8*, i32) #0 !dbg !3610 {
  %6 = alloca %struct._IRC_SERVER_REC*, align 8
  %7 = alloca %struct._GString*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %6, metadata !3613, metadata !697), !dbg !3614
  store %struct._GString* %1, %struct._GString** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._GString** %7, metadata !3615, metadata !697), !dbg !3616
  store i8 %2, i8* %8, align 1
  call void @llvm.dbg.declare(metadata i8* %8, metadata !3617, metadata !697), !dbg !3618
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3619, metadata !697), !dbg !3620
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !3621, metadata !697), !dbg !3622
  call void @llvm.dbg.declare(metadata i8** %11, metadata !3623, metadata !697), !dbg !3624
  call void @llvm.dbg.declare(metadata i32* %12, metadata !3625, metadata !697), !dbg !3626
  call void @llvm.dbg.declare(metadata i32* %13, metadata !3627, metadata !697), !dbg !3628
  store i32 0, i32* %13, align 4, !dbg !3628
  %14 = load i32, i32* %10, align 4, !dbg !3629
  %15 = icmp ne i32 %14, 0, !dbg !3629
  br i1 %15, label %68, label %16, !dbg !3631

; <label>:16:                                     ; preds = %5
  %17 = load i8, i8* %8, align 1, !dbg !3632
  %18 = zext i8 %17 to i32, !dbg !3634
  %19 = sext i32 %18 to i64, !dbg !3635
  %20 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !3635
  %21 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %20, i32 0, i32 70, !dbg !3636
  %22 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %21, i64 0, i64 %19, !dbg !3635
  %23 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %22, i32 0, i32 0, !dbg !3637
  %24 = bitcast {}** %23 to void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)**, !dbg !3637
  %25 = load void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %24, align 8, !dbg !3637
  %26 = icmp eq void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* %25, @modes_type_a, !dbg !3638
  br i1 %26, label %68, label %27, !dbg !3639

; <label>:27:                                     ; preds = %16
  %28 = load i8, i8* %8, align 1, !dbg !3640
  %29 = zext i8 %28 to i32, !dbg !3642
  %30 = sext i32 %29 to i64, !dbg !3643
  %31 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !3643
  %32 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %31, i32 0, i32 70, !dbg !3644
  %33 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %32, i64 0, i64 %30, !dbg !3643
  %34 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %33, i32 0, i32 0, !dbg !3645
  %35 = bitcast {}** %34 to void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)**, !dbg !3645
  %36 = load void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %35, align 8, !dbg !3645
  %37 = icmp eq void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* %36, @modes_type_b, !dbg !3646
  br i1 %37, label %68, label %38, !dbg !3647

; <label>:38:                                     ; preds = %27
  %39 = load i8, i8* %8, align 1, !dbg !3648
  %40 = zext i8 %39 to i32, !dbg !3650
  %41 = sext i32 %40 to i64, !dbg !3651
  %42 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !3651
  %43 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %42, i32 0, i32 70, !dbg !3652
  %44 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %43, i64 0, i64 %41, !dbg !3651
  %45 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %44, i32 0, i32 0, !dbg !3653
  %46 = bitcast {}** %45 to void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)**, !dbg !3653
  %47 = load void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %46, align 8, !dbg !3653
  %48 = icmp eq void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* %47, @modes_type_prefix, !dbg !3654
  br i1 %48, label %68, label %49, !dbg !3655

; <label>:49:                                     ; preds = %38
  %50 = load i8, i8* %8, align 1, !dbg !3656
  %51 = zext i8 %50 to i32, !dbg !3658
  %52 = sext i32 %51 to i64, !dbg !3659
  %53 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !3659
  %54 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %53, i32 0, i32 70, !dbg !3660
  %55 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %54, i64 0, i64 %52, !dbg !3659
  %56 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %55, i32 0, i32 0, !dbg !3661
  %57 = bitcast {}** %56 to void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)**, !dbg !3661
  %58 = load void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %57, align 8, !dbg !3661
  %59 = icmp eq void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* %58, @modes_type_c, !dbg !3662
  br i1 %59, label %68, label %60, !dbg !3663

; <label>:60:                                     ; preds = %49
  %61 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !3664
  %62 = getelementptr inbounds %struct._GString, %struct._GString* %61, i32 0, i32 0, !dbg !3665
  %63 = load i8*, i8** %62, align 8, !dbg !3665
  %64 = load i8, i8* %8, align 1, !dbg !3666
  %65 = call i32 @mode_is_set(i8* %63, i8 signext %64), !dbg !3667
  %66 = icmp ne i32 %65, 0, !dbg !3667
  br i1 %66, label %67, label %68, !dbg !3668

; <label>:67:                                     ; preds = %60
  br label %192, !dbg !3670

; <label>:68:                                     ; preds = %60, %49, %38, %27, %16, %5
  store i32 0, i32* %12, align 4, !dbg !3671
  %69 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !3672
  %70 = getelementptr inbounds %struct._GString, %struct._GString* %69, i32 0, i32 0, !dbg !3674
  %71 = load i8*, i8** %70, align 8, !dbg !3674
  store i8* %71, i8** %11, align 8, !dbg !3675
  br label %72, !dbg !3676

; <label>:72:                                     ; preds = %155, %68
  %73 = load i8*, i8** %11, align 8, !dbg !3677
  %74 = load i8, i8* %73, align 1, !dbg !3680
  %75 = sext i8 %74 to i32, !dbg !3680
  %76 = icmp ne i32 %75, 0, !dbg !3681
  br i1 %76, label %77, label %82, !dbg !3682

; <label>:77:                                     ; preds = %72
  %78 = load i8*, i8** %11, align 8, !dbg !3683
  %79 = load i8, i8* %78, align 1, !dbg !3685
  %80 = sext i8 %79 to i32, !dbg !3685
  %81 = icmp ne i32 %80, 32, !dbg !3686
  br label %82

; <label>:82:                                     ; preds = %77, %72
  %83 = phi i1 [ false, %72 ], [ %81, %77 ]
  br i1 %83, label %84, label %158, !dbg !3687

; <label>:84:                                     ; preds = %82
  %85 = load i8, i8* %8, align 1, !dbg !3689
  %86 = sext i8 %85 to i32, !dbg !3689
  %87 = load i8*, i8** %11, align 8, !dbg !3692
  %88 = load i8, i8* %87, align 1, !dbg !3693
  %89 = sext i8 %88 to i32, !dbg !3693
  %90 = icmp slt i32 %86, %89, !dbg !3694
  br i1 %90, label %91, label %92, !dbg !3695

; <label>:91:                                     ; preds = %84
  br label %158, !dbg !3696

; <label>:92:                                     ; preds = %84
  %93 = load i8, i8* %8, align 1, !dbg !3697
  %94 = sext i8 %93 to i32, !dbg !3697
  %95 = load i8*, i8** %11, align 8, !dbg !3699
  %96 = load i8, i8* %95, align 1, !dbg !3700
  %97 = sext i8 %96 to i32, !dbg !3700
  %98 = icmp eq i32 %94, %97, !dbg !3701
  br i1 %98, label %99, label %100, !dbg !3702

; <label>:99:                                     ; preds = %92
  store i32 1, i32* %12, align 4, !dbg !3703
  br label %158, !dbg !3705

; <label>:100:                                    ; preds = %92
  %101 = load i32, i32* %10, align 4, !dbg !3706
  %102 = icmp ne i32 %101, 0, !dbg !3706
  br i1 %102, label %154, label %103, !dbg !3708

; <label>:103:                                    ; preds = %100
  %104 = load i8*, i8** %11, align 8, !dbg !3709
  %105 = load i8, i8* %104, align 1, !dbg !3711
  %106 = zext i8 %105 to i32, !dbg !3712
  %107 = sext i32 %106 to i64, !dbg !3713
  %108 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !3713
  %109 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %108, i32 0, i32 70, !dbg !3714
  %110 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %109, i64 0, i64 %107, !dbg !3713
  %111 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %110, i32 0, i32 0, !dbg !3715
  %112 = bitcast {}** %111 to void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)**, !dbg !3715
  %113 = load void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %112, align 8, !dbg !3715
  %114 = icmp eq void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* %113, @modes_type_a, !dbg !3716
  br i1 %114, label %151, label %115, !dbg !3717

; <label>:115:                                    ; preds = %103
  %116 = load i8*, i8** %11, align 8, !dbg !3718
  %117 = load i8, i8* %116, align 1, !dbg !3720
  %118 = zext i8 %117 to i32, !dbg !3721
  %119 = sext i32 %118 to i64, !dbg !3722
  %120 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !3722
  %121 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %120, i32 0, i32 70, !dbg !3723
  %122 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %121, i64 0, i64 %119, !dbg !3722
  %123 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %122, i32 0, i32 0, !dbg !3724
  %124 = bitcast {}** %123 to void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)**, !dbg !3724
  %125 = load void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %124, align 8, !dbg !3724
  %126 = icmp eq void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* %125, @modes_type_b, !dbg !3725
  br i1 %126, label %151, label %127, !dbg !3726

; <label>:127:                                    ; preds = %115
  %128 = load i8*, i8** %11, align 8, !dbg !3727
  %129 = load i8, i8* %128, align 1, !dbg !3729
  %130 = zext i8 %129 to i32, !dbg !3730
  %131 = sext i32 %130 to i64, !dbg !3731
  %132 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !3731
  %133 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %132, i32 0, i32 70, !dbg !3732
  %134 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %133, i64 0, i64 %131, !dbg !3731
  %135 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %134, i32 0, i32 0, !dbg !3733
  %136 = bitcast {}** %135 to void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)**, !dbg !3733
  %137 = load void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %136, align 8, !dbg !3733
  %138 = icmp eq void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* %137, @modes_type_prefix, !dbg !3734
  br i1 %138, label %151, label %139, !dbg !3735

; <label>:139:                                    ; preds = %127
  %140 = load i8*, i8** %11, align 8, !dbg !3736
  %141 = load i8, i8* %140, align 1, !dbg !3738
  %142 = zext i8 %141 to i32, !dbg !3739
  %143 = sext i32 %142 to i64, !dbg !3740
  %144 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !3740
  %145 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %144, i32 0, i32 70, !dbg !3741
  %146 = getelementptr inbounds [256 x %struct.modes_type], [256 x %struct.modes_type]* %145, i64 0, i64 %143, !dbg !3740
  %147 = getelementptr inbounds %struct.modes_type, %struct.modes_type* %146, i32 0, i32 0, !dbg !3742
  %148 = bitcast {}** %147 to void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)**, !dbg !3742
  %149 = load void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)** %148, align 8, !dbg !3742
  %150 = icmp eq void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)* %149, @modes_type_c, !dbg !3743
  br i1 %150, label %151, label %154, !dbg !3744

; <label>:151:                                    ; preds = %139, %127, %115, %103
  %152 = load i32, i32* %13, align 4, !dbg !3745
  %153 = add nsw i32 %152, 1, !dbg !3745
  store i32 %153, i32* %13, align 4, !dbg !3745
  br label %154, !dbg !3746

; <label>:154:                                    ; preds = %151, %139, %100
  br label %155, !dbg !3747

; <label>:155:                                    ; preds = %154
  %156 = load i8*, i8** %11, align 8, !dbg !3748
  %157 = getelementptr inbounds i8, i8* %156, i32 1, !dbg !3748
  store i8* %157, i8** %11, align 8, !dbg !3748
  br label %72, !dbg !3750, !llvm.loop !3751

; <label>:158:                                    ; preds = %99, %91, %82
  %159 = load i32, i32* %12, align 4, !dbg !3753
  %160 = icmp ne i32 %159, 0, !dbg !3753
  br i1 %160, label %184, label %161, !dbg !3755

; <label>:161:                                    ; preds = %158
  %162 = load i8*, i8** %11, align 8, !dbg !3756
  %163 = load i8, i8* %162, align 1, !dbg !3759
  %164 = sext i8 %163 to i32, !dbg !3759
  %165 = icmp eq i32 %164, 0, !dbg !3760
  br i1 %165, label %166, label %170, !dbg !3761

; <label>:166:                                    ; preds = %161
  %167 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !3762
  %168 = load i8, i8* %8, align 1, !dbg !3763
  %169 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %167, i8 signext %168), !dbg !3764
  br label %183, !dbg !3764

; <label>:170:                                    ; preds = %161
  %171 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !3765
  %172 = load i8*, i8** %11, align 8, !dbg !3766
  %173 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !3767
  %174 = getelementptr inbounds %struct._GString, %struct._GString* %173, i32 0, i32 0, !dbg !3768
  %175 = load i8*, i8** %174, align 8, !dbg !3768
  %176 = ptrtoint i8* %172 to i64, !dbg !3769
  %177 = ptrtoint i8* %175 to i64, !dbg !3769
  %178 = sub i64 %176, %177, !dbg !3769
  %179 = trunc i64 %178 to i32, !dbg !3770
  %180 = sext i32 %179 to i64, !dbg !3770
  %181 = load i8, i8* %8, align 1, !dbg !3771
  %182 = call %struct._GString* @g_string_insert_c(%struct._GString* %171, i64 %180, i8 signext %181), !dbg !3772
  br label %183

; <label>:183:                                    ; preds = %170, %166
  br label %184, !dbg !3773

; <label>:184:                                    ; preds = %183, %158
  %185 = load i8*, i8** %9, align 8, !dbg !3774
  %186 = icmp ne i8* %185, null, !dbg !3776
  br i1 %186, label %187, label %192, !dbg !3777

; <label>:187:                                    ; preds = %184
  %188 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !3778
  %189 = load i32, i32* %13, align 4, !dbg !3779
  %190 = load i32, i32* %12, align 4, !dbg !3780
  %191 = load i8*, i8** %9, align 8, !dbg !3781
  call void @mode_add_arg(%struct._GString* %188, i32 %189, i32 %190, i8* %191), !dbg !3782
  br label %192, !dbg !3782

; <label>:192:                                    ; preds = %67, %187, %184
  ret void, !dbg !3783
}

declare %struct._GString* @g_string_erase(%struct._GString*, i64, i64) #5

; Function Attrs: nounwind uwtable
define internal void @node_remove_arg(%struct._GString*, i32) #0 !dbg !3784 {
  %3 = alloca %struct._GString*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct._GString* %0, %struct._GString** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._GString** %3, metadata !3787, metadata !697), !dbg !3788
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !3789, metadata !697), !dbg !3790
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3791, metadata !697), !dbg !3792
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3793, metadata !697), !dbg !3794
  store i32 -1, i32* %6, align 4, !dbg !3795
  %7 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !3796
  %8 = getelementptr inbounds %struct._GString, %struct._GString* %7, i32 0, i32 0, !dbg !3798
  %9 = load i8*, i8** %8, align 8, !dbg !3798
  store i8* %9, i8** %5, align 8, !dbg !3799
  br label %10, !dbg !3800

; <label>:10:                                     ; preds = %40, %2
  %11 = load i8*, i8** %5, align 8, !dbg !3801
  %12 = load i8, i8* %11, align 1, !dbg !3804
  %13 = sext i8 %12 to i32, !dbg !3804
  %14 = icmp ne i32 %13, 0, !dbg !3805
  br i1 %14, label %15, label %43, !dbg !3806

; <label>:15:                                     ; preds = %10
  %16 = load i8*, i8** %5, align 8, !dbg !3807
  %17 = load i8, i8* %16, align 1, !dbg !3810
  %18 = sext i8 %17 to i32, !dbg !3810
  %19 = icmp ne i32 %18, 32, !dbg !3811
  br i1 %19, label %20, label %21, !dbg !3812

; <label>:20:                                     ; preds = %15
  br label %40, !dbg !3813

; <label>:21:                                     ; preds = %15
  %22 = load i32, i32* %4, align 4, !dbg !3814
  %23 = icmp slt i32 %22, 0, !dbg !3816
  br i1 %23, label %24, label %25, !dbg !3817

; <label>:24:                                     ; preds = %21
  br label %43, !dbg !3818

; <label>:25:                                     ; preds = %21
  %26 = load i32, i32* %4, align 4, !dbg !3819
  %27 = icmp eq i32 %26, 0, !dbg !3821
  br i1 %27, label %28, label %37, !dbg !3822

; <label>:28:                                     ; preds = %25
  %29 = load i8*, i8** %5, align 8, !dbg !3823
  %30 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !3824
  %31 = getelementptr inbounds %struct._GString, %struct._GString* %30, i32 0, i32 0, !dbg !3825
  %32 = load i8*, i8** %31, align 8, !dbg !3825
  %33 = ptrtoint i8* %29 to i64, !dbg !3826
  %34 = ptrtoint i8* %32 to i64, !dbg !3826
  %35 = sub i64 %33, %34, !dbg !3826
  %36 = trunc i64 %35 to i32, !dbg !3827
  store i32 %36, i32* %6, align 4, !dbg !3828
  br label %37, !dbg !3829

; <label>:37:                                     ; preds = %28, %25
  %38 = load i32, i32* %4, align 4, !dbg !3830
  %39 = add nsw i32 %38, -1, !dbg !3830
  store i32 %39, i32* %4, align 4, !dbg !3830
  br label %40, !dbg !3831

; <label>:40:                                     ; preds = %37, %20
  %41 = load i8*, i8** %5, align 8, !dbg !3832
  %42 = getelementptr inbounds i8, i8* %41, i32 1, !dbg !3832
  store i8* %42, i8** %5, align 8, !dbg !3832
  br label %10, !dbg !3834, !llvm.loop !3835

; <label>:43:                                     ; preds = %24, %10
  %44 = load i32, i32* %6, align 4, !dbg !3837
  %45 = icmp eq i32 %44, -1, !dbg !3839
  br i1 %45, label %46, label %47, !dbg !3840

; <label>:46:                                     ; preds = %43
  br label %63, !dbg !3841

; <label>:47:                                     ; preds = %43
  %48 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !3842
  %49 = load i32, i32* %6, align 4, !dbg !3843
  %50 = sext i32 %49 to i64, !dbg !3843
  %51 = load i8*, i8** %5, align 8, !dbg !3844
  %52 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !3845
  %53 = getelementptr inbounds %struct._GString, %struct._GString* %52, i32 0, i32 0, !dbg !3846
  %54 = load i8*, i8** %53, align 8, !dbg !3846
  %55 = ptrtoint i8* %51 to i64, !dbg !3847
  %56 = ptrtoint i8* %54 to i64, !dbg !3847
  %57 = sub i64 %55, %56, !dbg !3847
  %58 = trunc i64 %57 to i32, !dbg !3848
  %59 = load i32, i32* %6, align 4, !dbg !3849
  %60 = sub nsw i32 %58, %59, !dbg !3850
  %61 = sext i32 %60 to i64, !dbg !3848
  %62 = call %struct._GString* @g_string_erase(%struct._GString* %48, i64 %50, i64 %61), !dbg !3851
  br label %63, !dbg !3852

; <label>:63:                                     ; preds = %47, %46
  ret void, !dbg !3853
}

declare %struct._GString* @g_string_insert_c(%struct._GString*, i64, i8 signext) #5

; Function Attrs: nounwind uwtable
define internal void @mode_add_arg(%struct._GString*, i32, i32, i8*) #0 !dbg !3855 {
  %5 = alloca %struct._GString*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct._GString* %0, %struct._GString** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._GString** %5, metadata !3858, metadata !697), !dbg !3859
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !3860, metadata !697), !dbg !3861
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !3862, metadata !697), !dbg !3863
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !3864, metadata !697), !dbg !3865
  call void @llvm.dbg.declare(metadata i8** %9, metadata !3866, metadata !697), !dbg !3867
  %10 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !3868
  %11 = getelementptr inbounds %struct._GString, %struct._GString* %10, i32 0, i32 0, !dbg !3870
  %12 = load i8*, i8** %11, align 8, !dbg !3870
  store i8* %12, i8** %9, align 8, !dbg !3871
  br label %13, !dbg !3872

; <label>:13:                                     ; preds = %31, %4
  %14 = load i8*, i8** %9, align 8, !dbg !3873
  %15 = load i8, i8* %14, align 1, !dbg !3876
  %16 = sext i8 %15 to i32, !dbg !3876
  %17 = icmp ne i32 %16, 0, !dbg !3877
  br i1 %17, label %18, label %34, !dbg !3878

; <label>:18:                                     ; preds = %13
  %19 = load i8*, i8** %9, align 8, !dbg !3879
  %20 = load i8, i8* %19, align 1, !dbg !3882
  %21 = sext i8 %20 to i32, !dbg !3882
  %22 = icmp ne i32 %21, 32, !dbg !3883
  br i1 %22, label %23, label %24, !dbg !3884

; <label>:23:                                     ; preds = %18
  br label %31, !dbg !3885

; <label>:24:                                     ; preds = %18
  %25 = load i32, i32* %6, align 4, !dbg !3886
  %26 = icmp eq i32 %25, 0, !dbg !3888
  br i1 %26, label %27, label %28, !dbg !3889

; <label>:27:                                     ; preds = %24
  br label %34, !dbg !3890

; <label>:28:                                     ; preds = %24
  %29 = load i32, i32* %6, align 4, !dbg !3891
  %30 = add nsw i32 %29, -1, !dbg !3891
  store i32 %30, i32* %6, align 4, !dbg !3891
  br label %31, !dbg !3892

; <label>:31:                                     ; preds = %28, %23
  %32 = load i8*, i8** %9, align 8, !dbg !3893
  %33 = getelementptr inbounds i8, i8* %32, i32 1, !dbg !3893
  store i8* %33, i8** %9, align 8, !dbg !3893
  br label %13, !dbg !3895, !llvm.loop !3896

; <label>:34:                                     ; preds = %27, %13
  %35 = load i8*, i8** %9, align 8, !dbg !3898
  %36 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !3899
  %37 = getelementptr inbounds %struct._GString, %struct._GString* %36, i32 0, i32 0, !dbg !3900
  %38 = load i8*, i8** %37, align 8, !dbg !3900
  %39 = ptrtoint i8* %35 to i64, !dbg !3901
  %40 = ptrtoint i8* %38 to i64, !dbg !3901
  %41 = sub i64 %39, %40, !dbg !3901
  %42 = trunc i64 %41 to i32, !dbg !3902
  store i32 %42, i32* %6, align 4, !dbg !3903
  %43 = load i32, i32* %7, align 4, !dbg !3904
  %44 = icmp ne i32 %43, 0, !dbg !3904
  br i1 %44, label %45, label %84, !dbg !3906

; <label>:45:                                     ; preds = %34
  %46 = load i8*, i8** %9, align 8, !dbg !3907
  %47 = load i8, i8* %46, align 1, !dbg !3909
  %48 = sext i8 %47 to i32, !dbg !3909
  %49 = icmp ne i32 %48, 0, !dbg !3910
  br i1 %49, label %50, label %84, !dbg !3911

; <label>:50:                                     ; preds = %45
  %51 = load i8*, i8** %9, align 8, !dbg !3912
  %52 = getelementptr inbounds i8, i8* %51, i32 1, !dbg !3912
  store i8* %52, i8** %9, align 8, !dbg !3912
  br label %53, !dbg !3914

; <label>:53:                                     ; preds = %65, %50
  %54 = load i8*, i8** %9, align 8, !dbg !3915
  %55 = load i8, i8* %54, align 1, !dbg !3917
  %56 = sext i8 %55 to i32, !dbg !3917
  %57 = icmp ne i32 %56, 0, !dbg !3918
  br i1 %57, label %58, label %63, !dbg !3919

; <label>:58:                                     ; preds = %53
  %59 = load i8*, i8** %9, align 8, !dbg !3920
  %60 = load i8, i8* %59, align 1, !dbg !3922
  %61 = sext i8 %60 to i32, !dbg !3922
  %62 = icmp ne i32 %61, 32, !dbg !3923
  br label %63

; <label>:63:                                     ; preds = %58, %53
  %64 = phi i1 [ false, %53 ], [ %62, %58 ]
  br i1 %64, label %65, label %68, !dbg !3924

; <label>:65:                                     ; preds = %63
  %66 = load i8*, i8** %9, align 8, !dbg !3926
  %67 = getelementptr inbounds i8, i8* %66, i32 1, !dbg !3926
  store i8* %67, i8** %9, align 8, !dbg !3926
  br label %53, !dbg !3928, !llvm.loop !3929

; <label>:68:                                     ; preds = %63
  %69 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !3930
  %70 = load i32, i32* %6, align 4, !dbg !3931
  %71 = sext i32 %70 to i64, !dbg !3931
  %72 = load i8*, i8** %9, align 8, !dbg !3932
  %73 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !3933
  %74 = getelementptr inbounds %struct._GString, %struct._GString* %73, i32 0, i32 0, !dbg !3934
  %75 = load i8*, i8** %74, align 8, !dbg !3934
  %76 = ptrtoint i8* %72 to i64, !dbg !3935
  %77 = ptrtoint i8* %75 to i64, !dbg !3935
  %78 = sub i64 %76, %77, !dbg !3935
  %79 = trunc i64 %78 to i32, !dbg !3936
  %80 = load i32, i32* %6, align 4, !dbg !3937
  %81 = sub nsw i32 %79, %80, !dbg !3938
  %82 = sext i32 %81 to i64, !dbg !3936
  %83 = call %struct._GString* @g_string_erase(%struct._GString* %69, i64 %71, i64 %82), !dbg !3939
  br label %84, !dbg !3940

; <label>:84:                                     ; preds = %68, %45, %34
  %85 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !3941
  %86 = load i32, i32* %6, align 4, !dbg !3942
  %87 = sext i32 %86 to i64, !dbg !3942
  %88 = call %struct._GString* @g_string_insert_c(%struct._GString* %85, i64 %87, i8 signext 32), !dbg !3943
  %89 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !3944
  %90 = load i32, i32* %6, align 4, !dbg !3945
  %91 = add nsw i32 %90, 1, !dbg !3946
  %92 = sext i32 %91 to i64, !dbg !3945
  %93 = load i8*, i8** %8, align 8, !dbg !3947
  %94 = call %struct._GString* @g_string_insert(%struct._GString* %89, i64 %92, i8* %93), !dbg !3948
  ret void, !dbg !3949
}

declare %struct._NICK_REC* @nicklist_find(%struct._CHANNEL_REC*, i8*) #5

declare i8* @event_get_params(i8*, i32, ...) #5

; Function Attrs: nounwind uwtable
define internal void @parse_user_mode(%struct._IRC_SERVER_REC*, i8*) #0 !dbg !3950 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !3951, metadata !697), !dbg !3952
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !3953, metadata !697), !dbg !3954
  call void @llvm.dbg.declare(metadata i8** %5, metadata !3955, metadata !697), !dbg !3956
  call void @llvm.dbg.declare(metadata i8** %6, metadata !3957, metadata !697), !dbg !3958
  br label %7, !dbg !3959, !llvm.loop !3960

; <label>:7:                                      ; preds = %2
  %8 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !3961
  %9 = bitcast %struct._IRC_SERVER_REC* %8 to i8*, !dbg !3961
  %10 = call i8* @module_check_cast(i8* %9, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0)), !dbg !3965
  %11 = bitcast i8* %10 to %struct._SERVER_REC*, !dbg !3966
  %12 = bitcast %struct._SERVER_REC* %11 to i8*, !dbg !3967
  %13 = call i8* @chat_protocol_check_cast(i8* %12, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)), !dbg !3968
  %14 = bitcast i8* %13 to %struct._IRC_SERVER_REC*, !dbg !3970
  %15 = icmp ne %struct._IRC_SERVER_REC* %14, null, !dbg !3970
  br i1 %15, label %16, label %17, !dbg !3971

; <label>:16:                                     ; preds = %7
  br i1 false, label %19, label %18, !dbg !3972

; <label>:17:                                     ; preds = %7
  br i1 false, label %18, label %19, !dbg !3974

; <label>:18:                                     ; preds = %17, %16
  br label %20, !dbg !3976

; <label>:19:                                     ; preds = %17, %16
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.parse_user_mode, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i32 0, i32 0)), !dbg !3979
  br label %62, !dbg !3982

; <label>:20:                                     ; preds = %18
  br label %21, !dbg !3983

; <label>:21:                                     ; preds = %20
  br label %22, !dbg !3985, !llvm.loop !3986

; <label>:22:                                     ; preds = %21
  %23 = load i8*, i8** %4, align 8, !dbg !3987
  %24 = icmp ne i8* %23, null, !dbg !3991
  br i1 %24, label %25, label %26, !dbg !3987

; <label>:25:                                     ; preds = %22
  br label %27, !dbg !3992

; <label>:26:                                     ; preds = %22
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.parse_user_mode, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.38, i32 0, i32 0)), !dbg !3995
  br label %62, !dbg !3998

; <label>:27:                                     ; preds = %25
  br label %28, !dbg !3999

; <label>:28:                                     ; preds = %27
  %29 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !4001
  %30 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %29, i32 0, i32 41, !dbg !4002
  %31 = load i8*, i8** %30, align 8, !dbg !4002
  %32 = load i8*, i8** %4, align 8, !dbg !4003
  %33 = call i8* @modes_join(%struct._IRC_SERVER_REC* null, i8* %31, i8* %32, i32 0), !dbg !4004
  store i8* %33, i8** %5, align 8, !dbg !4005
  %34 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !4006
  %35 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %34, i32 0, i32 41, !dbg !4007
  %36 = load i8*, i8** %35, align 8, !dbg !4007
  store i8* %36, i8** %6, align 8, !dbg !4008
  %37 = load i8*, i8** %5, align 8, !dbg !4009
  %38 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !4010
  %39 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %38, i32 0, i32 41, !dbg !4011
  store i8* %37, i8** %39, align 8, !dbg !4012
  %40 = load i8*, i8** %5, align 8, !dbg !4013
  %41 = call i8* @strchr(i8* %40, i32 111) #8, !dbg !4014
  %42 = icmp ne i8* %41, null, !dbg !4015
  br i1 %42, label %47, label %43, !dbg !4016

; <label>:43:                                     ; preds = %28
  %44 = load i8*, i8** %5, align 8, !dbg !4017
  %45 = call i8* @strchr(i8* %44, i32 79) #8, !dbg !4019
  %46 = icmp ne i8* %45, null, !dbg !4020
  br label %47, !dbg !4021

; <label>:47:                                     ; preds = %43, %28
  %48 = phi i1 [ true, %28 ], [ %46, %43 ]
  %49 = zext i1 %48 to i32, !dbg !4022
  %50 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !4024
  %51 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %50, i32 0, i32 19, !dbg !4025
  %52 = trunc i32 %49 to i8, !dbg !4026
  %53 = load i8, i8* %51, align 8, !dbg !4026
  %54 = and i8 %52, 1, !dbg !4026
  %55 = and i8 %53, -2, !dbg !4026
  %56 = or i8 %55, %54, !dbg !4026
  store i8 %56, i8* %51, align 8, !dbg !4026
  %57 = zext i8 %54 to i32, !dbg !4026
  %58 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !4027
  %59 = load i8*, i8** %6, align 8, !dbg !4028
  %60 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.39, i32 0, i32 0), i32 2, %struct._IRC_SERVER_REC* %58, i8* %59), !dbg !4029
  %61 = load i8*, i8** %6, align 8, !dbg !4030
  call void @g_free(i8* %61), !dbg !4031
  br label %62, !dbg !4032

; <label>:62:                                     ; preds = %47, %26, %19
  ret void, !dbg !4033
}

declare i8* @settings_get_str(i8*) #5

declare void @signal_stop() #5

; Function Attrs: nounwind uwtable
define internal i8* @get_nicks(%struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*, i8*, i32, i32, %struct._IRC_CHANNEL_REC**) #0 !dbg !4034 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct._IRC_SERVER_REC*, align 8
  %9 = alloca %struct._WI_ITEM_REC*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct._IRC_CHANNEL_REC**, align 8
  %14 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %15 = alloca %struct._GString*, align 8
  %16 = alloca %struct._GHashTable*, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %8, metadata !4038, metadata !697), !dbg !4039
  store %struct._WI_ITEM_REC* %1, %struct._WI_ITEM_REC** %9, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %9, metadata !4040, metadata !697), !dbg !4041
  store i8* %2, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !4042, metadata !697), !dbg !4043
  store i32 %3, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !4044, metadata !697), !dbg !4045
  store i32 %4, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !4046, metadata !697), !dbg !4047
  store %struct._IRC_CHANNEL_REC** %5, %struct._IRC_CHANNEL_REC*** %13, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC*** %13, metadata !4048, metadata !697), !dbg !4049
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %14, metadata !4050, metadata !697), !dbg !4051
  call void @llvm.dbg.declare(metadata %struct._GString** %15, metadata !4052, metadata !697), !dbg !4053
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %16, metadata !4054, metadata !697), !dbg !4055
  call void @llvm.dbg.declare(metadata i8*** %17, metadata !4056, metadata !697), !dbg !4057
  call void @llvm.dbg.declare(metadata i8*** %18, metadata !4058, metadata !697), !dbg !4059
  call void @llvm.dbg.declare(metadata i8** %19, metadata !4060, metadata !697), !dbg !4061
  call void @llvm.dbg.declare(metadata i8** %20, metadata !4062, metadata !697), !dbg !4063
  call void @llvm.dbg.declare(metadata i8** %21, metadata !4064, metadata !697), !dbg !4065
  call void @llvm.dbg.declare(metadata i8** %22, metadata !4066, metadata !697), !dbg !4067
  call void @llvm.dbg.declare(metadata i32* %23, metadata !4068, metadata !697), !dbg !4069
  call void @llvm.dbg.declare(metadata i32* %24, metadata !4070, metadata !697), !dbg !4071
  %25 = load i8*, i8** %10, align 8, !dbg !4072
  %26 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %9, align 8, !dbg !4074
  %27 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %25, i8** %22, i32 221186, %struct._WI_ITEM_REC* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i32 0, i32 0), %struct._GHashTable** %16, i8** %20, i8** %21), !dbg !4075
  %28 = icmp ne i32 %27, 0, !dbg !4075
  br i1 %28, label %30, label %29, !dbg !4076

; <label>:29:                                     ; preds = %6
  store i8* null, i8** %7, align 8, !dbg !4077
  br label %129, !dbg !4077

; <label>:30:                                     ; preds = %6
  %31 = load i8*, i8** %21, align 8, !dbg !4078
  %32 = load i8, i8* %31, align 1, !dbg !4080
  %33 = sext i8 %32 to i32, !dbg !4080
  %34 = icmp eq i32 %33, 0, !dbg !4081
  br i1 %34, label %35, label %36, !dbg !4082

; <label>:35:                                     ; preds = %30
  store i8* null, i8** %7, align 8, !dbg !4083
  br label %129, !dbg !4083

; <label>:36:                                     ; preds = %30
  %37 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %8, align 8, !dbg !4084
  %38 = bitcast %struct._IRC_SERVER_REC* %37 to i8*, !dbg !4084
  %39 = call i8* @module_check_cast(i8* %38, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0)), !dbg !4085
  %40 = bitcast i8* %39 to %struct._SERVER_REC*, !dbg !4086
  %41 = load i8*, i8** %20, align 8, !dbg !4087
  %42 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %40, i8* %41), !dbg !4088
  %43 = bitcast %struct._CHANNEL_REC* %42 to i8*, !dbg !4090
  %44 = call i8* @module_check_cast_module(i8* %43, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0)), !dbg !4091
  %45 = bitcast i8* %44 to %struct._CHANNEL_REC*, !dbg !4093
  %46 = bitcast %struct._CHANNEL_REC* %45 to i8*, !dbg !4094
  %47 = call i8* @chat_protocol_check_cast(i8* %46, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)), !dbg !4095
  %48 = bitcast i8* %47 to %struct._IRC_CHANNEL_REC*, !dbg !4097
  store %struct._IRC_CHANNEL_REC* %48, %struct._IRC_CHANNEL_REC** %14, align 8, !dbg !4098
  %49 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %14, align 8, !dbg !4099
  %50 = icmp eq %struct._IRC_CHANNEL_REC* %49, null, !dbg !4101
  br i1 %50, label %51, label %53, !dbg !4102

; <label>:51:                                     ; preds = %36
  %52 = load i8*, i8** %22, align 8, !dbg !4103
  call void @cmd_params_free(i8* %52), !dbg !4105
  store i8* null, i8** %7, align 8, !dbg !4106
  br label %129, !dbg !4106

; <label>:53:                                     ; preds = %36
  %54 = call %struct._GString* @g_string_new(i8* null), !dbg !4107
  store %struct._GString* %54, %struct._GString** %15, align 8, !dbg !4108
  %55 = load i8*, i8** %21, align 8, !dbg !4109
  %56 = call noalias i8** @g_strsplit(i8* %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), i32 -1), !dbg !4110
  store i8** %56, i8*** %17, align 8, !dbg !4111
  %57 = load i8**, i8*** %17, align 8, !dbg !4112
  store i8** %57, i8*** %18, align 8, !dbg !4114
  br label %58, !dbg !4115

; <label>:58:                                     ; preds = %103, %53
  %59 = load i8**, i8*** %18, align 8, !dbg !4116
  %60 = load i8*, i8** %59, align 8, !dbg !4119
  %61 = icmp ne i8* %60, null, !dbg !4120
  br i1 %61, label %62, label %106, !dbg !4121

; <label>:62:                                     ; preds = %58
  %63 = load i8**, i8*** %18, align 8, !dbg !4122
  %64 = load i8*, i8** %63, align 8, !dbg !4125
  %65 = call i8* @strchr(i8* %64, i32 42) #8, !dbg !4126
  %66 = icmp eq i8* %65, null, !dbg !4127
  br i1 %66, label %67, label %76, !dbg !4128

; <label>:67:                                     ; preds = %62
  %68 = load i8**, i8*** %18, align 8, !dbg !4129
  %69 = load i8*, i8** %68, align 8, !dbg !4130
  %70 = call i8* @strchr(i8* %69, i32 63) #8, !dbg !4131
  %71 = icmp eq i8* %70, null, !dbg !4132
  br i1 %71, label %72, label %76, !dbg !4133

; <label>:72:                                     ; preds = %67
  %73 = load %struct._GString*, %struct._GString** %15, align 8, !dbg !4135
  %74 = load i8**, i8*** %18, align 8, !dbg !4137
  %75 = load i8*, i8** %74, align 8, !dbg !4138
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %73, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i32 0, i32 0), i8* %75), !dbg !4139
  br label %102, !dbg !4140

; <label>:76:                                     ; preds = %67, %62
  %77 = load %struct._GString*, %struct._GString** %15, align 8, !dbg !4141
  %78 = load i8**, i8*** %18, align 8, !dbg !4143
  %79 = load i8*, i8** %78, align 8, !dbg !4144
  %80 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %14, align 8, !dbg !4145
  %81 = load i32, i32* %11, align 4, !dbg !4146
  %82 = load i32, i32* %12, align 4, !dbg !4147
  %83 = call i32 @get_wildcard_nicks(%struct._GString* %77, i8* %79, %struct._IRC_CHANNEL_REC* %80, i32 %81, i32 %82), !dbg !4148
  store i32 %83, i32* %23, align 4, !dbg !4149
  %84 = call i32 @settings_get_int(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i32 0, i32 0)), !dbg !4150
  store i32 %84, i32* %24, align 4, !dbg !4151
  %85 = load i32, i32* %24, align 4, !dbg !4152
  %86 = icmp sgt i32 %85, 0, !dbg !4154
  br i1 %86, label %87, label %101, !dbg !4155

; <label>:87:                                     ; preds = %76
  %88 = load i32, i32* %23, align 4, !dbg !4156
  %89 = load i32, i32* %24, align 4, !dbg !4158
  %90 = icmp sgt i32 %88, %89, !dbg !4159
  br i1 %90, label %91, label %101, !dbg !4160

; <label>:91:                                     ; preds = %87
  %92 = load %struct._GHashTable*, %struct._GHashTable** %16, align 8, !dbg !4161
  %93 = call i8* @g_hash_table_lookup(%struct._GHashTable* %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0)), !dbg !4162
  %94 = icmp eq i8* %93, null, !dbg !4163
  br i1 %94, label %95, label %101, !dbg !4164

; <label>:95:                                     ; preds = %91
  %96 = load %struct._GString*, %struct._GString** %15, align 8, !dbg !4166
  %97 = call i8* @g_string_free(%struct._GString* %96, i32 1), !dbg !4168
  %98 = load i8**, i8*** %17, align 8, !dbg !4169
  call void @g_strfreev(i8** %98), !dbg !4170
  %99 = load i8*, i8** %22, align 8, !dbg !4171
  call void @cmd_params_free(i8* %99), !dbg !4172
  %100 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.42, i32 0, i32 0), i32 1, i8* inttoptr (i64 9 to i8*)), !dbg !4173
  call void @signal_stop(), !dbg !4174
  store i8* null, i8** %7, align 8, !dbg !4175
  br label %129, !dbg !4175

; <label>:101:                                    ; preds = %91, %87, %76
  br label %102

; <label>:102:                                    ; preds = %101, %72
  br label %103, !dbg !4176

; <label>:103:                                    ; preds = %102
  %104 = load i8**, i8*** %18, align 8, !dbg !4177
  %105 = getelementptr inbounds i8*, i8** %104, i32 1, !dbg !4177
  store i8** %105, i8*** %18, align 8, !dbg !4177
  br label %58, !dbg !4179, !llvm.loop !4180

; <label>:106:                                    ; preds = %58
  %107 = load %struct._GString*, %struct._GString** %15, align 8, !dbg !4182
  %108 = getelementptr inbounds %struct._GString, %struct._GString* %107, i32 0, i32 1, !dbg !4184
  %109 = load i64, i64* %108, align 8, !dbg !4184
  %110 = icmp ugt i64 %109, 0, !dbg !4185
  br i1 %110, label %111, label %118, !dbg !4186

; <label>:111:                                    ; preds = %106
  %112 = load %struct._GString*, %struct._GString** %15, align 8, !dbg !4187
  %113 = load %struct._GString*, %struct._GString** %15, align 8, !dbg !4189
  %114 = getelementptr inbounds %struct._GString, %struct._GString* %113, i32 0, i32 1, !dbg !4190
  %115 = load i64, i64* %114, align 8, !dbg !4190
  %116 = sub i64 %115, 1, !dbg !4191
  %117 = call %struct._GString* @g_string_truncate(%struct._GString* %112, i64 %116), !dbg !4192
  br label %118, !dbg !4192

; <label>:118:                                    ; preds = %111, %106
  %119 = load %struct._GString*, %struct._GString** %15, align 8, !dbg !4193
  %120 = getelementptr inbounds %struct._GString, %struct._GString* %119, i32 0, i32 0, !dbg !4194
  %121 = load i8*, i8** %120, align 8, !dbg !4194
  store i8* %121, i8** %19, align 8, !dbg !4195
  %122 = load %struct._GString*, %struct._GString** %15, align 8, !dbg !4196
  %123 = call i8* @g_string_free(%struct._GString* %122, i32 0), !dbg !4197
  %124 = load i8**, i8*** %17, align 8, !dbg !4198
  call void @g_strfreev(i8** %124), !dbg !4199
  %125 = load i8*, i8** %22, align 8, !dbg !4200
  call void @cmd_params_free(i8* %125), !dbg !4201
  %126 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %14, align 8, !dbg !4202
  %127 = load %struct._IRC_CHANNEL_REC**, %struct._IRC_CHANNEL_REC*** %13, align 8, !dbg !4203
  store %struct._IRC_CHANNEL_REC* %126, %struct._IRC_CHANNEL_REC** %127, align 8, !dbg !4204
  %128 = load i8*, i8** %19, align 8, !dbg !4205
  store i8* %128, i8** %7, align 8, !dbg !4206
  br label %129, !dbg !4206

; <label>:129:                                    ; preds = %118, %95, %51, %35, %29
  %130 = load i8*, i8** %7, align 8, !dbg !4207
  ret i8* %130, !dbg !4207
}

declare i32 @cmd_get_params(i8*, i8**, i32, ...) #5

declare void @cmd_params_free(i8*) #5

; Function Attrs: nounwind uwtable
define internal i32 @get_wildcard_nicks(%struct._GString*, i8*, %struct._IRC_CHANNEL_REC*, i32, i32) #0 !dbg !4208 {
  %6 = alloca i32, align 4
  %7 = alloca %struct._GString*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct._GSList*, align 8
  %13 = alloca %struct._GSList*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct._NICK_REC*, align 8
  store %struct._GString* %0, %struct._GString** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._GString** %7, metadata !4211, metadata !697), !dbg !4212
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !4213, metadata !697), !dbg !4214
  store %struct._IRC_CHANNEL_REC* %2, %struct._IRC_CHANNEL_REC** %9, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %9, metadata !4215, metadata !697), !dbg !4216
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !4217, metadata !697), !dbg !4218
  store i32 %4, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !4219, metadata !697), !dbg !4220
  call void @llvm.dbg.declare(metadata %struct._GSList** %12, metadata !4221, metadata !697), !dbg !4222
  call void @llvm.dbg.declare(metadata %struct._GSList** %13, metadata !4223, metadata !697), !dbg !4224
  call void @llvm.dbg.declare(metadata i32* %14, metadata !4225, metadata !697), !dbg !4226
  br label %16, !dbg !4227, !llvm.loop !4228

; <label>:16:                                     ; preds = %5
  %17 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !4229
  %18 = icmp ne %struct._GString* %17, null, !dbg !4233
  br i1 %18, label %19, label %20, !dbg !4229

; <label>:19:                                     ; preds = %16
  br label %21, !dbg !4234

; <label>:20:                                     ; preds = %16
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.get_wildcard_nicks, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.45, i32 0, i32 0)), !dbg !4237
  store i32 0, i32* %6, align 4, !dbg !4240
  br label %130, !dbg !4240

; <label>:21:                                     ; preds = %19
  br label %22, !dbg !4241

; <label>:22:                                     ; preds = %21
  br label %23, !dbg !4243, !llvm.loop !4244

; <label>:23:                                     ; preds = %22
  %24 = load i8*, i8** %8, align 8, !dbg !4245
  %25 = icmp ne i8* %24, null, !dbg !4249
  br i1 %25, label %26, label %27, !dbg !4245

; <label>:26:                                     ; preds = %23
  br label %28, !dbg !4250

; <label>:27:                                     ; preds = %23
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.get_wildcard_nicks, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.46, i32 0, i32 0)), !dbg !4253
  store i32 0, i32* %6, align 4, !dbg !4256
  br label %130, !dbg !4256

; <label>:28:                                     ; preds = %26
  br label %29, !dbg !4257

; <label>:29:                                     ; preds = %28
  br label %30, !dbg !4259, !llvm.loop !4260

; <label>:30:                                     ; preds = %29
  %31 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %9, align 8, !dbg !4261
  %32 = bitcast %struct._IRC_CHANNEL_REC* %31 to i8*, !dbg !4261
  %33 = call i8* @module_check_cast_module(i8* %32, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0)), !dbg !4265
  %34 = bitcast i8* %33 to %struct._CHANNEL_REC*, !dbg !4266
  %35 = bitcast %struct._CHANNEL_REC* %34 to i8*, !dbg !4267
  %36 = call i8* @chat_protocol_check_cast(i8* %35, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)), !dbg !4268
  %37 = bitcast i8* %36 to %struct._IRC_CHANNEL_REC*, !dbg !4270
  %38 = icmp ne %struct._IRC_CHANNEL_REC* %37, null, !dbg !4270
  br i1 %38, label %39, label %40, !dbg !4271

; <label>:39:                                     ; preds = %30
  br i1 false, label %42, label %41, !dbg !4272

; <label>:40:                                     ; preds = %30
  br i1 false, label %41, label %42, !dbg !4274

; <label>:41:                                     ; preds = %40, %39
  br label %43, !dbg !4276

; <label>:42:                                     ; preds = %40, %39
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.get_wildcard_nicks, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0)), !dbg !4279
  store i32 0, i32* %6, align 4, !dbg !4282
  br label %130, !dbg !4282

; <label>:43:                                     ; preds = %41
  br label %44, !dbg !4283

; <label>:44:                                     ; preds = %43
  store i32 0, i32* %14, align 4, !dbg !4285
  %45 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %9, align 8, !dbg !4286
  %46 = bitcast %struct._IRC_CHANNEL_REC* %45 to i8*, !dbg !4286
  %47 = call i8* @module_check_cast_module(i8* %46, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0)), !dbg !4287
  %48 = bitcast i8* %47 to %struct._CHANNEL_REC*, !dbg !4288
  %49 = load i8*, i8** %8, align 8, !dbg !4289
  %50 = call %struct._GSList* @nicklist_find_multiple(%struct._CHANNEL_REC* %48, i8* %49), !dbg !4290
  store %struct._GSList* %50, %struct._GSList** %12, align 8, !dbg !4292
  %51 = load %struct._GSList*, %struct._GSList** %12, align 8, !dbg !4293
  store %struct._GSList* %51, %struct._GSList** %13, align 8, !dbg !4295
  br label %52, !dbg !4296

; <label>:52:                                     ; preds = %123, %44
  %53 = load %struct._GSList*, %struct._GSList** %13, align 8, !dbg !4297
  %54 = icmp ne %struct._GSList* %53, null, !dbg !4300
  br i1 %54, label %55, label %127, !dbg !4301

; <label>:55:                                     ; preds = %52
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %15, metadata !4302, metadata !697), !dbg !4304
  %56 = load %struct._GSList*, %struct._GSList** %13, align 8, !dbg !4305
  %57 = getelementptr inbounds %struct._GSList, %struct._GSList* %56, i32 0, i32 0, !dbg !4306
  %58 = load i8*, i8** %57, align 8, !dbg !4306
  %59 = bitcast i8* %58 to %struct._NICK_REC*, !dbg !4305
  store %struct._NICK_REC* %59, %struct._NICK_REC** %15, align 8, !dbg !4304
  %60 = load i32, i32* %10, align 4, !dbg !4307
  %61 = icmp eq i32 %60, 1, !dbg !4309
  br i1 %61, label %62, label %70, !dbg !4310

; <label>:62:                                     ; preds = %55
  %63 = load %struct._NICK_REC*, %struct._NICK_REC** %15, align 8, !dbg !4311
  %64 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %63, i32 0, i32 7, !dbg !4313
  %65 = load i8, i8* %64, align 4, !dbg !4313
  %66 = lshr i8 %65, 3, !dbg !4313
  %67 = and i8 %66, 1, !dbg !4313
  %68 = zext i8 %67 to i32, !dbg !4313
  %69 = icmp ne i32 %68, 0, !dbg !4311
  br i1 %69, label %70, label %103, !dbg !4314

; <label>:70:                                     ; preds = %62, %55
  %71 = load i32, i32* %10, align 4, !dbg !4315
  %72 = icmp eq i32 %71, 0, !dbg !4317
  br i1 %72, label %73, label %81, !dbg !4318

; <label>:73:                                     ; preds = %70
  %74 = load %struct._NICK_REC*, %struct._NICK_REC** %15, align 8, !dbg !4319
  %75 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %74, i32 0, i32 7, !dbg !4321
  %76 = load i8, i8* %75, align 4, !dbg !4321
  %77 = lshr i8 %76, 3, !dbg !4321
  %78 = and i8 %77, 1, !dbg !4321
  %79 = zext i8 %78 to i32, !dbg !4321
  %80 = icmp ne i32 %79, 0, !dbg !4319
  br i1 %80, label %103, label %81, !dbg !4322

; <label>:81:                                     ; preds = %73, %70
  %82 = load i32, i32* %11, align 4, !dbg !4323
  %83 = icmp eq i32 %82, 1, !dbg !4324
  br i1 %83, label %84, label %92, !dbg !4325

; <label>:84:                                     ; preds = %81
  %85 = load %struct._NICK_REC*, %struct._NICK_REC** %15, align 8, !dbg !4326
  %86 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %85, i32 0, i32 7, !dbg !4327
  %87 = load i8, i8* %86, align 4, !dbg !4327
  %88 = lshr i8 %87, 5, !dbg !4327
  %89 = and i8 %88, 1, !dbg !4327
  %90 = zext i8 %89 to i32, !dbg !4327
  %91 = icmp ne i32 %90, 0, !dbg !4326
  br i1 %91, label %92, label %103, !dbg !4328

; <label>:92:                                     ; preds = %84, %81
  %93 = load i32, i32* %11, align 4, !dbg !4329
  %94 = icmp eq i32 %93, 0, !dbg !4330
  br i1 %94, label %95, label %104, !dbg !4331

; <label>:95:                                     ; preds = %92
  %96 = load %struct._NICK_REC*, %struct._NICK_REC** %15, align 8, !dbg !4332
  %97 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %96, i32 0, i32 7, !dbg !4333
  %98 = load i8, i8* %97, align 4, !dbg !4333
  %99 = lshr i8 %98, 5, !dbg !4333
  %100 = and i8 %99, 1, !dbg !4333
  %101 = zext i8 %100 to i32, !dbg !4333
  %102 = icmp ne i32 %101, 0, !dbg !4332
  br i1 %102, label %103, label %104, !dbg !4334

; <label>:103:                                    ; preds = %95, %84, %73, %62
  br label %123, !dbg !4336

; <label>:104:                                    ; preds = %95, %92
  %105 = load %struct._NICK_REC*, %struct._NICK_REC** %15, align 8, !dbg !4337
  %106 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %105, i32 0, i32 3, !dbg !4339
  %107 = load i8*, i8** %106, align 8, !dbg !4339
  %108 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %9, align 8, !dbg !4340
  %109 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %108, i32 0, i32 4, !dbg !4341
  %110 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %109, align 8, !dbg !4341
  %111 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %110, i32 0, i32 7, !dbg !4342
  %112 = load i8*, i8** %111, align 8, !dbg !4342
  %113 = call i32 @g_ascii_strcasecmp(i8* %107, i8* %112), !dbg !4343
  %114 = icmp eq i32 %113, 0, !dbg !4344
  br i1 %114, label %115, label %116, !dbg !4345

; <label>:115:                                    ; preds = %104
  br label %123, !dbg !4346

; <label>:116:                                    ; preds = %104
  %117 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !4347
  %118 = load %struct._NICK_REC*, %struct._NICK_REC** %15, align 8, !dbg !4348
  %119 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %118, i32 0, i32 3, !dbg !4349
  %120 = load i8*, i8** %119, align 8, !dbg !4349
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %117, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i32 0, i32 0), i8* %120), !dbg !4350
  %121 = load i32, i32* %14, align 4, !dbg !4351
  %122 = add nsw i32 %121, 1, !dbg !4351
  store i32 %122, i32* %14, align 4, !dbg !4351
  br label %123, !dbg !4352

; <label>:123:                                    ; preds = %116, %115, %103
  %124 = load %struct._GSList*, %struct._GSList** %13, align 8, !dbg !4353
  %125 = getelementptr inbounds %struct._GSList, %struct._GSList* %124, i32 0, i32 1, !dbg !4355
  %126 = load %struct._GSList*, %struct._GSList** %125, align 8, !dbg !4355
  store %struct._GSList* %126, %struct._GSList** %13, align 8, !dbg !4356
  br label %52, !dbg !4357, !llvm.loop !4358

; <label>:127:                                    ; preds = %52
  %128 = load %struct._GSList*, %struct._GSList** %12, align 8, !dbg !4360
  call void @g_slist_free(%struct._GSList* %128), !dbg !4361
  %129 = load i32, i32* %14, align 4, !dbg !4362
  store i32 %129, i32* %6, align 4, !dbg !4363
  br label %130, !dbg !4363

; <label>:130:                                    ; preds = %127, %42, %27, %20
  %131 = load i32, i32* %6, align 4, !dbg !4364
  ret i32 %131, !dbg !4364
}

declare i32 @settings_get_int(i8*) #5

declare %struct._GSList* @nicklist_find_multiple(%struct._CHANNEL_REC*, i8*) #5

declare void @g_slist_free(%struct._GSList*) #5

declare void @server_redirect_event(%struct._IRC_SERVER_REC*, i8*, i32, i8*, i32, i8*, ...) #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!688, !689}
!llvm.ident = !{!690}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !56)
!1 = !DIFile(filename: "line151-modes.o.i", directory: "/home/lichi/Desktop/irssi/task1")
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
!56 = !{!57, !58, !59, !490, !143, !471, !67, !76, !383, !681, !188, !373}
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!58 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_CHANNEL_REC", file: !61, line: 7, baseType: !62)
!61 = !DIFile(filename: "irc.h", directory: "/home/lichi/Desktop/irssi/task1")
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_CHANNEL_REC", file: !63, line: 15, size: 1600, align: 64, elements: !64)
!63 = !DIFile(filename: "irc-channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!64 = !{!65, !68, !69, !74, !75, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !62, file: !66, line: 3, baseType: !67, size: 32, align: 32)
!66 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!67 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !62, file: !66, line: 4, baseType: !67, size: 32, align: 32, offset: 32)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !62, file: !66, line: 5, baseType: !70, size: 64, align: 64, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !72, line: 37, baseType: !73)
!72 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!73 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !72, line: 37, flags: DIFlagFwdDecl)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !62, file: !66, line: 7, baseType: !57, size: 64, align: 64, offset: 128)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !62, file: !66, line: 8, baseType: !76, size: 64, align: 64, offset: 192)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64, align: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_REC", file: !61, line: 6, baseType: !78)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_REC", file: !79, line: 42, size: 39168, align: 64, elements: !80)
!79 = !DIFile(filename: "irc-servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!80 = !{!81, !83, !84, !85, !332, !337, !338, !339, !340, !341, !342, !343, !344, !345, !349, !350, !354, !355, !356, !360, !361, !362, !363, !364, !365, !366, !367, !368, !375, !376, !377, !378, !379, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !648, !650}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !78, file: !82, line: 3, baseType: !67, size: 32, align: 32)
!82 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!83 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !78, file: !82, line: 4, baseType: !67, size: 32, align: 32, offset: 32)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !78, file: !82, line: 6, baseType: !67, size: 32, align: 32, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !78, file: !82, line: 8, baseType: !86, size: 64, align: 64, offset: 128)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_CONNECT_REC", file: !61, line: 5, baseType: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_CONNECT_REC", file: !79, line: 24, size: 2496, align: 64, elements: !89)
!89 = !{!90, !92, !93, !94, !97, !98, !99, !100, !101, !103, !104, !105, !106, !107, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !88, file: !91, line: 3, baseType: !67, size: 32, align: 32)
!91 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!92 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !88, file: !91, line: 4, baseType: !67, size: 32, align: 32, offset: 32)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !88, file: !91, line: 6, baseType: !67, size: 32, align: 32, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !88, file: !91, line: 9, baseType: !95, size: 64, align: 64, offset: 128)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64, align: 64)
!96 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !88, file: !91, line: 10, baseType: !67, size: 32, align: 32, offset: 192)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !88, file: !91, line: 11, baseType: !95, size: 64, align: 64, offset: 256)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !88, file: !91, line: 11, baseType: !95, size: 64, align: 64, offset: 320)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !88, file: !91, line: 11, baseType: !95, size: 64, align: 64, offset: 384)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !88, file: !91, line: 13, baseType: !102, size: 16, align: 16, offset: 448)
!102 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !88, file: !91, line: 14, baseType: !95, size: 64, align: 64, offset: 512)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !88, file: !91, line: 15, baseType: !95, size: 64, align: 64, offset: 576)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !88, file: !91, line: 16, baseType: !67, size: 32, align: 32, offset: 640)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !88, file: !91, line: 17, baseType: !95, size: 64, align: 64, offset: 704)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !88, file: !91, line: 19, baseType: !108, size: 64, align: 64, offset: 768)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64, align: 64)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !110, line: 99, baseType: !111)
!110 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!111 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !110, line: 99, flags: DIFlagFwdDecl)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !88, file: !91, line: 19, baseType: !108, size: 64, align: 64, offset: 832)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !88, file: !91, line: 21, baseType: !95, size: 64, align: 64, offset: 896)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !88, file: !91, line: 22, baseType: !95, size: 64, align: 64, offset: 960)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !88, file: !91, line: 23, baseType: !95, size: 64, align: 64, offset: 1024)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !88, file: !91, line: 24, baseType: !95, size: 64, align: 64, offset: 1088)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !88, file: !91, line: 26, baseType: !95, size: 64, align: 64, offset: 1152)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !88, file: !91, line: 27, baseType: !95, size: 64, align: 64, offset: 1216)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !88, file: !91, line: 28, baseType: !95, size: 64, align: 64, offset: 1280)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !88, file: !91, line: 29, baseType: !95, size: 64, align: 64, offset: 1344)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !88, file: !91, line: 30, baseType: !95, size: 64, align: 64, offset: 1408)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !88, file: !91, line: 31, baseType: !95, size: 64, align: 64, offset: 1472)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !88, file: !91, line: 32, baseType: !95, size: 64, align: 64, offset: 1536)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !88, file: !91, line: 33, baseType: !95, size: 64, align: 64, offset: 1600)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !88, file: !91, line: 35, baseType: !126, size: 64, align: 64, offset: 1664)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64, align: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !128)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !129)
!129 = !{!130, !133, !277, !278, !283, !284, !285, !286, !287, !296, !297, !298, !302, !303, !304, !305, !306, !307, !308, !309}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !128, file: !4, line: 100, baseType: !131, size: 32, align: 32)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !132, line: 49, baseType: !67)
!132 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!133 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !128, file: !4, line: 101, baseType: !134, size: 64, align: 64, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !136)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !137)
!137 = !{!138, !162, !168, !175, !179, !264, !268, !273}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !136, file: !4, line: 133, baseType: !139, size: 64, align: 64)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, align: 64)
!140 = !DISubroutineType(types: !141)
!141 = !{!142, !126, !143, !145, !148, !149}
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !132, line: 46, baseType: !96)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !146, line: 66, baseType: !147)
!146 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!147 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64, align: 64)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, align: 64)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !152, line: 42, baseType: !153)
!152 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !152, line: 44, size: 128, align: 64, elements: !154)
!154 = !{!155, !160, !161}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !153, file: !152, line: 46, baseType: !156, size: 32, align: 32)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !157, line: 36, baseType: !158)
!157 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !146, line: 45, baseType: !159)
!159 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !153, file: !152, line: 47, baseType: !131, size: 32, align: 32, offset: 32)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !153, file: !152, line: 48, baseType: !143, size: 64, align: 64, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !136, file: !4, line: 138, baseType: !163, size: 64, align: 64, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64, align: 64)
!164 = !DISubroutineType(types: !165)
!165 = !{!142, !126, !166, !145, !148, !149}
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64, align: 64)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !136, file: !4, line: 143, baseType: !169, size: 64, align: 64, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64, align: 64)
!170 = !DISubroutineType(types: !171)
!171 = !{!142, !126, !172, !174, !149}
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !146, line: 51, baseType: !173)
!173 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !136, file: !4, line: 147, baseType: !176, size: 64, align: 64, offset: 192)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64, align: 64)
!177 = !DISubroutineType(types: !178)
!178 = !{!142, !126, !149}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !136, file: !4, line: 149, baseType: !180, size: 64, align: 64, offset: 256)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64, align: 64)
!181 = !DISubroutineType(types: !182)
!182 = !{!183, !126, !263}
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !185)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !186)
!186 = !{!187, !189, !210, !239, !241, !245, !246, !247, !248, !256, !257, !258, !259}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !185, file: !16, line: 174, baseType: !188, size: 64, align: 64)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !132, line: 77, baseType: !57)
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
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !132, line: 50, baseType: !131)
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
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64, align: 64)
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
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !132, line: 55, baseType: !159)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !185, file: !16, line: 180, baseType: !242, size: 64, align: 64, offset: 256)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64, align: 64)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !244)
!244 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !185, file: !16, line: 182, baseType: !131, size: 32, align: 32, offset: 320)
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
!258 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !185, file: !16, line: 191, baseType: !95, size: 64, align: 64, offset: 640)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !185, file: !16, line: 193, baseType: !260, size: 64, align: 64, offset: 704)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !262)
!262 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !136, file: !4, line: 151, baseType: !265, size: 64, align: 64, offset: 320)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64, align: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{null, !126}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !136, file: !4, line: 152, baseType: !269, size: 64, align: 64, offset: 384)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64, align: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{!142, !126, !272, !149}
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !136, file: !4, line: 155, baseType: !274, size: 64, align: 64, offset: 448)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64, align: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{!272, !126}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !128, file: !4, line: 103, baseType: !143, size: 64, align: 64, offset: 128)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !128, file: !4, line: 104, baseType: !279, size: 64, align: 64, offset: 192)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !280, line: 77, baseType: !281)
!280 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64, align: 64)
!282 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !280, line: 77, flags: DIFlagFwdDecl)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !128, file: !4, line: 105, baseType: !279, size: 64, align: 64, offset: 256)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !128, file: !4, line: 106, baseType: !143, size: 64, align: 64, offset: 320)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !128, file: !4, line: 107, baseType: !240, size: 32, align: 32, offset: 384)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !128, file: !4, line: 109, baseType: !145, size: 64, align: 64, offset: 448)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !128, file: !4, line: 110, baseType: !288, size: 64, align: 64, offset: 512)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64, align: 64)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !290, line: 39, baseType: !291)
!290 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !290, line: 41, size: 192, align: 64, elements: !292)
!292 = !{!293, !294, !295}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !291, file: !290, line: 43, baseType: !143, size: 64, align: 64)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !291, file: !290, line: 44, baseType: !145, size: 64, align: 64, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !291, file: !290, line: 45, baseType: !145, size: 64, align: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !128, file: !4, line: 111, baseType: !288, size: 64, align: 64, offset: 576)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !128, file: !4, line: 112, baseType: !288, size: 64, align: 64, offset: 640)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !128, file: !4, line: 113, baseType: !299, size: 48, align: 8, offset: 704)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 48, align: 8, elements: !300)
!300 = !{!301}
!301 = !DISubrange(count: 6)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !128, file: !4, line: 117, baseType: !240, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !128, file: !4, line: 118, baseType: !240, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !128, file: !4, line: 119, baseType: !240, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !128, file: !4, line: 120, baseType: !240, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !128, file: !4, line: 121, baseType: !240, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !128, file: !4, line: 122, baseType: !240, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !128, file: !4, line: 124, baseType: !188, size: 64, align: 64, offset: 768)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !128, file: !4, line: 125, baseType: !188, size: 64, align: 64, offset: 832)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !88, file: !91, line: 38, baseType: !159, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !88, file: !91, line: 39, baseType: !159, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !88, file: !91, line: 40, baseType: !159, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !88, file: !91, line: 41, baseType: !159, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !88, file: !91, line: 42, baseType: !159, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !88, file: !91, line: 43, baseType: !159, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !88, file: !91, line: 44, baseType: !159, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !88, file: !91, line: 45, baseType: !159, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !88, file: !91, line: 46, baseType: !95, size: 64, align: 64, offset: 1792)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !88, file: !91, line: 47, baseType: !95, size: 64, align: 64, offset: 1856)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !88, file: !79, line: 27, baseType: !95, size: 64, align: 64, offset: 1920)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_nick", scope: !88, file: !79, line: 28, baseType: !95, size: 64, align: 64, offset: 1984)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !88, file: !79, line: 30, baseType: !67, size: 32, align: 32, offset: 2048)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_username", scope: !88, file: !79, line: 31, baseType: !95, size: 64, align: 64, offset: 2112)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !88, file: !79, line: 32, baseType: !95, size: 64, align: 64, offset: 2176)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !88, file: !79, line: 34, baseType: !67, size: 32, align: 32, offset: 2240)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !88, file: !79, line: 35, baseType: !67, size: 32, align: 32, offset: 2272)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !88, file: !79, line: 36, baseType: !67, size: 32, align: 32, offset: 2304)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks", scope: !88, file: !79, line: 38, baseType: !67, size: 32, align: 32, offset: 2336)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !88, file: !79, line: 38, baseType: !67, size: 32, align: 32, offset: 2368)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes", scope: !88, file: !79, line: 38, baseType: !67, size: 32, align: 32, offset: 2400)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois", scope: !88, file: !79, line: 38, baseType: !67, size: 32, align: 32, offset: 2432)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !78, file: !82, line: 9, baseType: !333, size: 64, align: 64, offset: 192)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !334, line: 75, baseType: !335)
!334 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !336, line: 139, baseType: !173)
!336 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!337 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !78, file: !82, line: 10, baseType: !333, size: 64, align: 64, offset: 256)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !78, file: !82, line: 12, baseType: !95, size: 64, align: 64, offset: 320)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !78, file: !82, line: 13, baseType: !95, size: 64, align: 64, offset: 384)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !78, file: !82, line: 15, baseType: !159, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !78, file: !82, line: 16, baseType: !159, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !78, file: !82, line: 17, baseType: !159, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !78, file: !82, line: 18, baseType: !159, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !78, file: !82, line: 19, baseType: !159, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !78, file: !82, line: 21, baseType: !346, size: 64, align: 64, offset: 512)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64, align: 64)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !110, line: 102, baseType: !348)
!348 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !110, line: 102, flags: DIFlagFwdDecl)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !78, file: !82, line: 22, baseType: !67, size: 32, align: 32, offset: 576)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !78, file: !82, line: 25, baseType: !351, size: 128, align: 64, offset: 640)
!351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 128, align: 64, elements: !352)
!352 = !{!353}
!353 = !DISubrange(count: 2)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !78, file: !82, line: 26, baseType: !67, size: 32, align: 32, offset: 768)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !78, file: !82, line: 27, baseType: !67, size: 32, align: 32, offset: 800)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !78, file: !82, line: 29, baseType: !357, size: 64, align: 64, offset: 832)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64, align: 64)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !110, line: 103, baseType: !359)
!359 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !110, line: 103, flags: DIFlagFwdDecl)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !78, file: !82, line: 30, baseType: !70, size: 64, align: 64, offset: 896)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !78, file: !82, line: 32, baseType: !95, size: 64, align: 64, offset: 960)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !78, file: !82, line: 33, baseType: !95, size: 64, align: 64, offset: 1024)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !78, file: !82, line: 34, baseType: !95, size: 64, align: 64, offset: 1088)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !78, file: !82, line: 35, baseType: !159, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !78, file: !82, line: 36, baseType: !159, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !78, file: !82, line: 37, baseType: !159, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !78, file: !82, line: 38, baseType: !159, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !78, file: !82, line: 40, baseType: !369, size: 128, align: 64, offset: 1216)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !132, line: 504, baseType: !370)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !132, line: 506, size: 128, align: 64, elements: !371)
!371 = !{!372, !374}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !370, file: !132, line: 508, baseType: !373, size: 64, align: 64)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !132, line: 48, baseType: !173)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !370, file: !132, line: 509, baseType: !373, size: 64, align: 64, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !78, file: !82, line: 41, baseType: !333, size: 64, align: 64, offset: 1344)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !78, file: !82, line: 42, baseType: !67, size: 32, align: 32, offset: 1408)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !78, file: !82, line: 44, baseType: !249, size: 64, align: 64, offset: 1472)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !78, file: !82, line: 45, baseType: !249, size: 64, align: 64, offset: 1536)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !78, file: !82, line: 53, baseType: !380, size: 64, align: 64, offset: 1600)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64, align: 64)
!381 = !DISubroutineType(types: !382)
!382 = !{null, !383, !471, !67}
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64, align: 64)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !110, line: 107, baseType: !385)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !386, line: 30, size: 2240, align: 64, elements: !387)
!386 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!387 = !{!388, !389, !390, !391, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !467, !473, !477, !481, !486, !564, !571, !575}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !385, file: !82, line: 3, baseType: !67, size: 32, align: 32)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !385, file: !82, line: 4, baseType: !67, size: 32, align: 32, offset: 32)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !385, file: !82, line: 6, baseType: !67, size: 32, align: 32, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !385, file: !82, line: 8, baseType: !392, size: 64, align: 64, offset: 128)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64, align: 64)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !110, line: 113, baseType: !394)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !386, line: 25, size: 1920, align: 64, elements: !395)
!395 = !{!396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !394, file: !91, line: 3, baseType: !67, size: 32, align: 32)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !394, file: !91, line: 4, baseType: !67, size: 32, align: 32, offset: 32)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !394, file: !91, line: 6, baseType: !67, size: 32, align: 32, offset: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !394, file: !91, line: 9, baseType: !95, size: 64, align: 64, offset: 128)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !394, file: !91, line: 10, baseType: !67, size: 32, align: 32, offset: 192)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !394, file: !91, line: 11, baseType: !95, size: 64, align: 64, offset: 256)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !394, file: !91, line: 11, baseType: !95, size: 64, align: 64, offset: 320)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !394, file: !91, line: 11, baseType: !95, size: 64, align: 64, offset: 384)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !394, file: !91, line: 13, baseType: !102, size: 16, align: 16, offset: 448)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !394, file: !91, line: 14, baseType: !95, size: 64, align: 64, offset: 512)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !394, file: !91, line: 15, baseType: !95, size: 64, align: 64, offset: 576)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !394, file: !91, line: 16, baseType: !67, size: 32, align: 32, offset: 640)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !394, file: !91, line: 17, baseType: !95, size: 64, align: 64, offset: 704)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !394, file: !91, line: 19, baseType: !108, size: 64, align: 64, offset: 768)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !394, file: !91, line: 19, baseType: !108, size: 64, align: 64, offset: 832)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !394, file: !91, line: 21, baseType: !95, size: 64, align: 64, offset: 896)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !394, file: !91, line: 22, baseType: !95, size: 64, align: 64, offset: 960)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !394, file: !91, line: 23, baseType: !95, size: 64, align: 64, offset: 1024)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !394, file: !91, line: 24, baseType: !95, size: 64, align: 64, offset: 1088)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !394, file: !91, line: 26, baseType: !95, size: 64, align: 64, offset: 1152)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !394, file: !91, line: 27, baseType: !95, size: 64, align: 64, offset: 1216)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !394, file: !91, line: 28, baseType: !95, size: 64, align: 64, offset: 1280)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !394, file: !91, line: 29, baseType: !95, size: 64, align: 64, offset: 1344)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !394, file: !91, line: 30, baseType: !95, size: 64, align: 64, offset: 1408)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !394, file: !91, line: 31, baseType: !95, size: 64, align: 64, offset: 1472)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !394, file: !91, line: 32, baseType: !95, size: 64, align: 64, offset: 1536)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !394, file: !91, line: 33, baseType: !95, size: 64, align: 64, offset: 1600)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !394, file: !91, line: 35, baseType: !126, size: 64, align: 64, offset: 1664)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !394, file: !91, line: 38, baseType: !159, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !394, file: !91, line: 39, baseType: !159, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !394, file: !91, line: 40, baseType: !159, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !394, file: !91, line: 41, baseType: !159, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !394, file: !91, line: 42, baseType: !159, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !394, file: !91, line: 43, baseType: !159, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !394, file: !91, line: 44, baseType: !159, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !394, file: !91, line: 45, baseType: !159, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !394, file: !91, line: 46, baseType: !95, size: 64, align: 64, offset: 1792)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !394, file: !91, line: 47, baseType: !95, size: 64, align: 64, offset: 1856)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !385, file: !82, line: 9, baseType: !333, size: 64, align: 64, offset: 192)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !385, file: !82, line: 10, baseType: !333, size: 64, align: 64, offset: 256)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !385, file: !82, line: 12, baseType: !95, size: 64, align: 64, offset: 320)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !385, file: !82, line: 13, baseType: !95, size: 64, align: 64, offset: 384)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !385, file: !82, line: 15, baseType: !159, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !385, file: !82, line: 16, baseType: !159, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !385, file: !82, line: 17, baseType: !159, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !385, file: !82, line: 18, baseType: !159, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !385, file: !82, line: 19, baseType: !159, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !385, file: !82, line: 21, baseType: !346, size: 64, align: 64, offset: 512)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !385, file: !82, line: 22, baseType: !67, size: 32, align: 32, offset: 576)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !385, file: !82, line: 25, baseType: !351, size: 128, align: 64, offset: 640)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !385, file: !82, line: 26, baseType: !67, size: 32, align: 32, offset: 768)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !385, file: !82, line: 27, baseType: !67, size: 32, align: 32, offset: 800)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !385, file: !82, line: 29, baseType: !357, size: 64, align: 64, offset: 832)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !385, file: !82, line: 30, baseType: !70, size: 64, align: 64, offset: 896)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !385, file: !82, line: 32, baseType: !95, size: 64, align: 64, offset: 960)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !385, file: !82, line: 33, baseType: !95, size: 64, align: 64, offset: 1024)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !385, file: !82, line: 34, baseType: !95, size: 64, align: 64, offset: 1088)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !385, file: !82, line: 35, baseType: !159, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !385, file: !82, line: 36, baseType: !159, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !385, file: !82, line: 37, baseType: !159, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !385, file: !82, line: 38, baseType: !159, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !385, file: !82, line: 40, baseType: !369, size: 128, align: 64, offset: 1216)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !385, file: !82, line: 41, baseType: !333, size: 64, align: 64, offset: 1344)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !385, file: !82, line: 42, baseType: !67, size: 32, align: 32, offset: 1408)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !385, file: !82, line: 44, baseType: !249, size: 64, align: 64, offset: 1472)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !385, file: !82, line: 45, baseType: !249, size: 64, align: 64, offset: 1536)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !385, file: !82, line: 53, baseType: !380, size: 64, align: 64, offset: 1600)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !385, file: !82, line: 55, baseType: !464, size: 64, align: 64, offset: 1664)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64, align: 64)
!465 = !DISubroutineType(types: !466)
!466 = !{!67, !383, !96}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !385, file: !82, line: 57, baseType: !468, size: 64, align: 64, offset: 1728)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64, align: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{!67, !383, !471}
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64, align: 64)
!472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !385, file: !82, line: 60, baseType: !474, size: 64, align: 64, offset: 1792)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64, align: 64)
!475 = !DISubroutineType(types: !476)
!476 = !{!471, !383}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !385, file: !82, line: 62, baseType: !478, size: 64, align: 64, offset: 1856)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64, align: 64)
!479 = !DISubroutineType(types: !480)
!480 = !{null, !383, !471, !471, !67}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !385, file: !82, line: 65, baseType: !482, size: 64, align: 64, offset: 1920)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64, align: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!485, !383, !471, !471}
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !385, file: !82, line: 69, baseType: !487, size: 64, align: 64, offset: 1984)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64, align: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!490, !383, !471}
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64, align: 64)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !110, line: 109, baseType: !492)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !493, line: 15, size: 1408, align: 64, elements: !494)
!493 = !DIFile(filename: "../../../src/core/channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!494 = !{!495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !512, !516, !518, !519, !520, !521, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !492, file: !66, line: 3, baseType: !67, size: 32, align: 32)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !492, file: !66, line: 4, baseType: !67, size: 32, align: 32, offset: 32)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !492, file: !66, line: 5, baseType: !70, size: 64, align: 64, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !492, file: !66, line: 7, baseType: !57, size: 64, align: 64, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !492, file: !66, line: 8, baseType: !383, size: 64, align: 64, offset: 192)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !492, file: !66, line: 9, baseType: !95, size: 64, align: 64, offset: 256)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !492, file: !66, line: 10, baseType: !95, size: 64, align: 64, offset: 320)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !492, file: !66, line: 11, baseType: !333, size: 64, align: 64, offset: 384)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !492, file: !66, line: 12, baseType: !67, size: 32, align: 32, offset: 448)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !492, file: !66, line: 13, baseType: !95, size: 64, align: 64, offset: 512)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !492, file: !66, line: 15, baseType: !506, size: 64, align: 64, offset: 576)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64, align: 64)
!507 = !DISubroutineType(types: !508)
!508 = !{null, !509}
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64, align: 64)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !110, line: 108, baseType: !511)
!511 = !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !110, line: 108, flags: DIFlagFwdDecl)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !492, file: !66, line: 17, baseType: !513, size: 64, align: 64, offset: 640)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64, align: 64)
!514 = !DISubroutineType(types: !515)
!515 = !{!471, !509}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !492, file: !517, line: 5, baseType: !95, size: 64, align: 64, offset: 704)
!517 = !DIFile(filename: "../../../src/core/channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!518 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !492, file: !517, line: 6, baseType: !95, size: 64, align: 64, offset: 768)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !492, file: !517, line: 7, baseType: !333, size: 64, align: 64, offset: 832)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !492, file: !517, line: 9, baseType: !70, size: 64, align: 64, offset: 896)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !492, file: !517, line: 10, baseType: !522, size: 64, align: 64, offset: 960)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64, align: 64)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !110, line: 111, baseType: !524)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !525, line: 13, size: 576, align: 64, elements: !526)
!525 = !DIFile(filename: "../../../src/core/nicklist.h", directory: "/home/lichi/Desktop/irssi/task1")
!526 = !{!527, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !545, !546}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !524, file: !528, line: 3, baseType: !67, size: 32, align: 32)
!528 = !DIFile(filename: "../../../src/core/nick-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!529 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !524, file: !528, line: 4, baseType: !67, size: 32, align: 32, offset: 32)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "last_check", scope: !524, file: !528, line: 6, baseType: !333, size: 64, align: 64, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !524, file: !528, line: 8, baseType: !95, size: 64, align: 64, offset: 128)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !524, file: !528, line: 9, baseType: !95, size: 64, align: 64, offset: 192)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !524, file: !528, line: 10, baseType: !95, size: 64, align: 64, offset: 256)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "hops", scope: !524, file: !528, line: 11, baseType: !67, size: 32, align: 32, offset: 320)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "gone", scope: !524, file: !528, line: 14, baseType: !159, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "serverop", scope: !524, file: !528, line: 15, baseType: !159, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "send_massjoin", scope: !524, file: !528, line: 18, baseType: !159, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !524, file: !528, line: 19, baseType: !159, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !524, file: !528, line: 20, baseType: !159, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !524, file: !528, line: 21, baseType: !159, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !524, file: !528, line: 22, baseType: !542, size: 64, align: 8, offset: 360)
!542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 64, align: 8, elements: !543)
!543 = !{!544}
!544 = !DISubrange(count: 8)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !524, file: !528, line: 26, baseType: !57, size: 64, align: 64, offset: 448)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !524, file: !528, line: 28, baseType: !522, size: 64, align: 64, offset: 512)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !492, file: !517, line: 12, baseType: !159, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !492, file: !517, line: 13, baseType: !95, size: 64, align: 64, offset: 1088)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !492, file: !517, line: 14, baseType: !67, size: 32, align: 32, offset: 1152)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !492, file: !517, line: 15, baseType: !95, size: 64, align: 64, offset: 1216)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !492, file: !517, line: 17, baseType: !159, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !492, file: !517, line: 18, baseType: !159, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !492, file: !517, line: 19, baseType: !159, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !492, file: !517, line: 20, baseType: !159, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !492, file: !517, line: 22, baseType: !159, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !492, file: !517, line: 23, baseType: !159, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !492, file: !517, line: 24, baseType: !159, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !492, file: !517, line: 25, baseType: !159, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !492, file: !517, line: 26, baseType: !159, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !492, file: !517, line: 31, baseType: !561, size: 64, align: 64, offset: 1344)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64, align: 64)
!562 = !DISubroutineType(types: !563)
!563 = !{!95, !490}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !385, file: !82, line: 70, baseType: !565, size: 64, align: 64, offset: 2048)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64, align: 64)
!566 = !DISubroutineType(types: !567)
!567 = !{!568, !383, !471}
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64, align: 64)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !110, line: 110, baseType: !570)
!570 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !110, line: 110, flags: DIFlagFwdDecl)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !385, file: !82, line: 71, baseType: !572, size: 64, align: 64, offset: 2112)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64, align: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!67, !471, !471}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !385, file: !82, line: 73, baseType: !572, size: 64, align: 64, offset: 2176)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !78, file: !82, line: 55, baseType: !464, size: 64, align: 64, offset: 1664)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !78, file: !82, line: 57, baseType: !468, size: 64, align: 64, offset: 1728)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !78, file: !82, line: 60, baseType: !474, size: 64, align: 64, offset: 1792)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !78, file: !82, line: 62, baseType: !478, size: 64, align: 64, offset: 1856)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !78, file: !82, line: 65, baseType: !482, size: 64, align: 64, offset: 1920)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !78, file: !82, line: 69, baseType: !487, size: 64, align: 64, offset: 1984)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !78, file: !82, line: 70, baseType: !565, size: 64, align: 64, offset: 2048)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !78, file: !82, line: 71, baseType: !572, size: 64, align: 64, offset: 2112)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !78, file: !82, line: 73, baseType: !572, size: 64, align: 64, offset: 2176)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "redirects", scope: !78, file: !79, line: 46, baseType: !249, size: 64, align: 64, offset: 2240)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_queue", scope: !78, file: !79, line: 47, baseType: !249, size: 64, align: 64, offset: 2304)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_next", scope: !78, file: !79, line: 48, baseType: !588, size: 64, align: 64, offset: 2368)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64, align: 64)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "REDIRECT_REC", file: !61, line: 8, baseType: !590)
!590 = !DICompositeType(tag: DW_TAG_structure_type, name: "_REDIRECT_REC", file: !61, line: 8, flags: DIFlagFwdDecl)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_active", scope: !78, file: !79, line: 49, baseType: !249, size: 64, align: 64, offset: 2432)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "last_nick", scope: !78, file: !79, line: 51, baseType: !95, size: 64, align: 64, offset: 2496)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !78, file: !79, line: 53, baseType: !95, size: 64, align: 64, offset: 2560)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !78, file: !79, line: 54, baseType: !95, size: 64, align: 64, offset: 2624)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "wanted_usermode", scope: !78, file: !79, line: 55, baseType: !95, size: 64, align: 64, offset: 2688)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "userhost", scope: !78, file: !79, line: 56, baseType: !95, size: 64, align: 64, offset: 2752)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "channels_formed", scope: !78, file: !79, line: 57, baseType: !67, size: 32, align: 32, offset: 2816)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "whois_found", scope: !78, file: !79, line: 59, baseType: !159, size: 1, align: 32, offset: 2848, flags: DIFlagBitField, extraData: i64 2848)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "whowas_found", scope: !78, file: !79, line: 60, baseType: !159, size: 1, align: 32, offset: 2849, flags: DIFlagBitField, extraData: i64 2848)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "emode_known", scope: !78, file: !79, line: 62, baseType: !159, size: 1, align: 32, offset: 2850, flags: DIFlagBitField, extraData: i64 2848)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_mode", scope: !78, file: !79, line: 63, baseType: !159, size: 1, align: 32, offset: 2851, flags: DIFlagBitField, extraData: i64 2848)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_who", scope: !78, file: !79, line: 64, baseType: !159, size: 1, align: 32, offset: 2852, flags: DIFlagBitField, extraData: i64 2848)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "one_endofwho", scope: !78, file: !79, line: 65, baseType: !159, size: 1, align: 32, offset: 2853, flags: DIFlagBitField, extraData: i64 2848)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "disable_lag", scope: !78, file: !79, line: 66, baseType: !159, size: 1, align: 32, offset: 2854, flags: DIFlagBitField, extraData: i64 2848)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "nick_collision", scope: !78, file: !79, line: 67, baseType: !159, size: 1, align: 32, offset: 2855, flags: DIFlagBitField, extraData: i64 2848)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "motd_got", scope: !78, file: !79, line: 68, baseType: !159, size: 1, align: 32, offset: 2856, flags: DIFlagBitField, extraData: i64 2848)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "isupport_sent", scope: !78, file: !79, line: 69, baseType: !159, size: 1, align: 32, offset: 2857, flags: DIFlagBitField, extraData: i64 2848)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "cap_complete", scope: !78, file: !79, line: 70, baseType: !159, size: 1, align: 32, offset: 2858, flags: DIFlagBitField, extraData: i64 2848)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "cap_in_multiline", scope: !78, file: !79, line: 71, baseType: !159, size: 1, align: 32, offset: 2859, flags: DIFlagBitField, extraData: i64 2848)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_success", scope: !78, file: !79, line: 72, baseType: !159, size: 1, align: 32, offset: 2860, flags: DIFlagBitField, extraData: i64 2848)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks_in_cmd", scope: !78, file: !79, line: 74, baseType: !67, size: 32, align: 32, offset: 2880)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes_in_cmd", scope: !78, file: !79, line: 75, baseType: !67, size: 32, align: 32, offset: 2912)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois_in_cmd", scope: !78, file: !79, line: 76, baseType: !67, size: 32, align: 32, offset: 2944)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs_in_cmd", scope: !78, file: !79, line: 77, baseType: !67, size: 32, align: 32, offset: 2976)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "cap_supported", scope: !78, file: !79, line: 79, baseType: !70, size: 64, align: 64, offset: 3008)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "cap_active", scope: !78, file: !79, line: 80, baseType: !249, size: 64, align: 64, offset: 3072)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "cap_queue", scope: !78, file: !79, line: 81, baseType: !249, size: 64, align: 64, offset: 3136)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_buffer", scope: !78, file: !79, line: 83, baseType: !288, size: 64, align: 64, offset: 3200)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_timeout", scope: !78, file: !79, line: 84, baseType: !240, size: 32, align: 32, offset: 3264)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcount", scope: !78, file: !79, line: 87, baseType: !67, size: 32, align: 32, offset: 3296)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "cmdqueue", scope: !78, file: !79, line: 91, baseType: !249, size: 64, align: 64, offset: 3328)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "wait_cmd", scope: !78, file: !79, line: 92, baseType: !369, size: 128, align: 64, offset: 3392)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd", scope: !78, file: !79, line: 93, baseType: !369, size: 128, align: 64, offset: 3520)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !78, file: !79, line: 95, baseType: !67, size: 32, align: 32, offset: 3648)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !78, file: !79, line: 96, baseType: !67, size: 32, align: 32, offset: 3680)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !78, file: !79, line: 97, baseType: !67, size: 32, align: 32, offset: 3712)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "idles", scope: !78, file: !79, line: 100, baseType: !249, size: 64, align: 64, offset: 3776)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "ctcpqueue", scope: !78, file: !79, line: 103, baseType: !249, size: 64, align: 64, offset: 3840)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "knockoutlist", scope: !78, file: !79, line: 106, baseType: !249, size: 64, align: 64, offset: 3904)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "splits", scope: !78, file: !79, line: 108, baseType: !70, size: 64, align: 64, offset: 3968)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "split_servers", scope: !78, file: !79, line: 109, baseType: !249, size: 64, align: 64, offset: 4032)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "rejoin_channels", scope: !78, file: !79, line: 111, baseType: !249, size: 64, align: 64, offset: 4096)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "chanqueries", scope: !78, file: !79, line: 114, baseType: !57, size: 64, align: 64, offset: 4160)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "isupport", scope: !78, file: !79, line: 116, baseType: !70, size: 64, align: 64, offset: 4224)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !78, file: !79, line: 117, baseType: !636, size: 32768, align: 64, offset: 4288)
!636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !637, size: 32768, align: 64, elements: !646)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "modes_type", file: !638, line: 10, size: 128, align: 64, elements: !639)
!638 = !DIFile(filename: "modes.h", directory: "/home/lichi/Desktop/irssi/task1")
!639 = !{!640, !645}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !637, file: !638, line: 11, baseType: !641, size: 64, align: 64)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64, align: 64)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_func_t", file: !638, line: 7, baseType: !643)
!643 = !DISubroutineType(types: !644)
!644 = !{null, !59, !471, !96, !96, !95, !288}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !637, file: !638, line: 12, baseType: !96, size: 8, align: 8, offset: 64)
!646 = !{!647}
!647 = !DISubrange(count: 256)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !78, file: !79, line: 118, baseType: !649, size: 2048, align: 8, offset: 37056)
!649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 2048, align: 8, elements: !646)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "nick_comp_func", scope: !78, file: !79, line: 120, baseType: !572, size: 64, align: 64, offset: 39104)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !62, file: !66, line: 9, baseType: !95, size: 64, align: 64, offset: 256)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !62, file: !66, line: 10, baseType: !95, size: 64, align: 64, offset: 320)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !62, file: !66, line: 11, baseType: !333, size: 64, align: 64, offset: 384)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !62, file: !66, line: 12, baseType: !67, size: 32, align: 32, offset: 448)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !62, file: !66, line: 13, baseType: !95, size: 64, align: 64, offset: 512)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !62, file: !66, line: 15, baseType: !506, size: 64, align: 64, offset: 576)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !62, file: !66, line: 17, baseType: !513, size: 64, align: 64, offset: 640)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !62, file: !517, line: 5, baseType: !95, size: 64, align: 64, offset: 704)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !62, file: !517, line: 6, baseType: !95, size: 64, align: 64, offset: 768)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !62, file: !517, line: 7, baseType: !333, size: 64, align: 64, offset: 832)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !62, file: !517, line: 9, baseType: !70, size: 64, align: 64, offset: 896)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !62, file: !517, line: 10, baseType: !522, size: 64, align: 64, offset: 960)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !62, file: !517, line: 12, baseType: !159, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !62, file: !517, line: 13, baseType: !95, size: 64, align: 64, offset: 1088)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !62, file: !517, line: 14, baseType: !67, size: 32, align: 32, offset: 1152)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !62, file: !517, line: 15, baseType: !95, size: 64, align: 64, offset: 1216)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !62, file: !517, line: 17, baseType: !159, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !62, file: !517, line: 18, baseType: !159, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !62, file: !517, line: 19, baseType: !159, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !62, file: !517, line: 20, baseType: !159, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !62, file: !517, line: 22, baseType: !159, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !62, file: !517, line: 23, baseType: !159, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !62, file: !517, line: 24, baseType: !159, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !62, file: !517, line: 25, baseType: !159, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !62, file: !517, line: 26, baseType: !159, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !62, file: !517, line: 31, baseType: !561, size: 64, align: 64, offset: 1344)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "banlist", scope: !62, file: !63, line: 18, baseType: !249, size: 64, align: 64, offset: 1408)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "massjoin_start", scope: !62, file: !63, line: 20, baseType: !333, size: 64, align: 64, offset: 1472)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "massjoins", scope: !62, file: !63, line: 21, baseType: !67, size: 32, align: 32, offset: 1536)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "last_massjoins", scope: !62, file: !63, line: 22, baseType: !67, size: 32, align: 32, offset: 1568)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !682, line: 9, baseType: !683)
!682 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64, align: 64)
!684 = !DISubroutineType(types: !685)
!685 = !{null, !686, !686, !686, !686, !686, !686}
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64, align: 64)
!687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!688 = !{i32 2, !"Dwarf Version", i32 4}
!689 = !{i32 2, !"Debug Info Version", i32 3}
!690 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!691 = distinct !DISubprogram(name: "prefix_add", scope: !692, file: !692, line: 62, type: !693, isLocal: false, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!692 = !DIFile(filename: "modes.c", directory: "/home/lichi/Desktop/irssi/task1")
!693 = !DISubroutineType(types: !694)
!694 = !{null, !95, !96, !383}
!695 = !{}
!696 = !DILocalVariable(name: "prefixes", arg: 1, scope: !691, file: !692, line: 62, type: !95)
!697 = !DIExpression()
!698 = !DILocation(line: 62, column: 22, scope: !691)
!699 = !DILocalVariable(name: "newprefix", arg: 2, scope: !691, file: !692, line: 62, type: !96)
!700 = !DILocation(line: 62, column: 43, scope: !691)
!701 = !DILocalVariable(name: "server", arg: 3, scope: !691, file: !692, line: 62, type: !383)
!702 = !DILocation(line: 62, column: 66, scope: !691)
!703 = !DILocalVariable(name: "prefixlst", scope: !691, file: !692, line: 64, type: !471)
!704 = !DILocation(line: 64, column: 14, scope: !691)
!705 = !DILocalVariable(name: "newprefixes", scope: !691, file: !692, line: 65, type: !542)
!706 = !DILocation(line: 65, column: 7, scope: !691)
!707 = !DILocalVariable(name: "newpos", scope: !691, file: !692, line: 66, type: !159)
!708 = !DILocation(line: 66, column: 15, scope: !691)
!709 = !DILocalVariable(name: "oldpos", scope: !691, file: !692, line: 67, type: !159)
!710 = !DILocation(line: 67, column: 15, scope: !691)
!711 = !DILocation(line: 69, column: 14, scope: !691)
!712 = !DILocation(line: 69, column: 22, scope: !691)
!713 = !DILocation(line: 69, column: 37, scope: !691)
!714 = !DILocation(line: 69, column: 12, scope: !691)
!715 = !DILocation(line: 74, column: 2, scope: !691)
!716 = !DILocation(line: 74, column: 10, scope: !717)
!717 = !DILexicalBlockFile(scope: !691, file: !692, discriminator: 1)
!718 = !DILocation(line: 74, column: 9, scope: !717)
!719 = !DILocation(line: 74, column: 20, scope: !717)
!720 = !DILocation(line: 74, column: 28, scope: !717)
!721 = !DILocation(line: 74, column: 40, scope: !722)
!722 = !DILexicalBlockFile(scope: !691, file: !692, discriminator: 2)
!723 = !DILocation(line: 74, column: 31, scope: !722)
!724 = !DILocation(line: 74, column: 48, scope: !722)
!725 = !DILocation(line: 74, column: 56, scope: !722)
!726 = !DILocation(line: 75, column: 4, scope: !691)
!727 = !DILocation(line: 75, column: 11, scope: !691)
!728 = !DILocation(line: 74, column: 2, scope: !729)
!729 = !DILexicalBlockFile(scope: !691, file: !692, discriminator: 3)
!730 = !DILocation(line: 76, column: 16, scope: !731)
!731 = distinct !DILexicalBlock(scope: !732, file: !692, line: 76, column: 7)
!732 = distinct !DILexicalBlock(scope: !691, file: !692, line: 75, column: 20)
!733 = !DILocation(line: 76, column: 7, scope: !731)
!734 = !DILocation(line: 76, column: 27, scope: !731)
!735 = !DILocation(line: 76, column: 24, scope: !731)
!736 = !DILocation(line: 76, column: 7, scope: !732)
!737 = !DILocation(line: 77, column: 4, scope: !731)
!738 = !DILocation(line: 79, column: 8, scope: !739)
!739 = distinct !DILexicalBlock(scope: !732, file: !692, line: 79, column: 7)
!740 = !DILocation(line: 79, column: 7, scope: !739)
!741 = !DILocation(line: 79, column: 21, scope: !739)
!742 = !DILocation(line: 79, column: 18, scope: !739)
!743 = !DILocation(line: 79, column: 7, scope: !732)
!744 = !DILocation(line: 80, column: 4, scope: !739)
!745 = !DILocation(line: 82, column: 8, scope: !746)
!746 = distinct !DILexicalBlock(scope: !732, file: !692, line: 82, column: 7)
!747 = !DILocation(line: 82, column: 7, scope: !746)
!748 = !DILocation(line: 82, column: 30, scope: !746)
!749 = !DILocation(line: 82, column: 21, scope: !746)
!750 = !DILocation(line: 82, column: 18, scope: !746)
!751 = !DILocation(line: 82, column: 7, scope: !732)
!752 = !DILocation(line: 87, column: 43, scope: !753)
!753 = distinct !DILexicalBlock(scope: !746, file: !692, line: 82, column: 39)
!754 = !DILocation(line: 87, column: 28, scope: !753)
!755 = !DILocation(line: 87, column: 22, scope: !753)
!756 = !DILocation(line: 87, column: 4, scope: !753)
!757 = !DILocation(line: 87, column: 26, scope: !753)
!758 = !DILocation(line: 88, column: 3, scope: !753)
!759 = !DILocation(line: 89, column: 12, scope: !732)
!760 = !DILocation(line: 74, column: 2, scope: !761)
!761 = !DILexicalBlockFile(scope: !691, file: !692, discriminator: 4)
!762 = distinct !{!762, !715}
!763 = !DILocation(line: 93, column: 26, scope: !691)
!764 = !DILocation(line: 93, column: 20, scope: !691)
!765 = !DILocation(line: 93, column: 2, scope: !691)
!766 = !DILocation(line: 93, column: 24, scope: !691)
!767 = !DILocation(line: 96, column: 2, scope: !691)
!768 = !DILocation(line: 96, column: 18, scope: !717)
!769 = !DILocation(line: 96, column: 9, scope: !717)
!770 = !DILocation(line: 96, column: 26, scope: !717)
!771 = !DILocation(line: 96, column: 34, scope: !717)
!772 = !DILocation(line: 96, column: 37, scope: !722)
!773 = !DILocation(line: 96, column: 44, scope: !722)
!774 = !DILocation(line: 96, column: 2, scope: !729)
!775 = !DILocation(line: 97, column: 42, scope: !691)
!776 = !DILocation(line: 97, column: 27, scope: !691)
!777 = !DILocation(line: 97, column: 21, scope: !691)
!778 = !DILocation(line: 97, column: 3, scope: !691)
!779 = !DILocation(line: 97, column: 25, scope: !691)
!780 = !DILocation(line: 96, column: 2, scope: !761)
!781 = distinct !{!781, !767}
!782 = !DILocation(line: 99, column: 14, scope: !691)
!783 = !DILocation(line: 99, column: 2, scope: !691)
!784 = !DILocation(line: 99, column: 22, scope: !691)
!785 = !DILocation(line: 101, column: 9, scope: !691)
!786 = !DILocation(line: 101, column: 19, scope: !691)
!787 = !DILocation(line: 101, column: 2, scope: !691)
!788 = !DILocation(line: 102, column: 1, scope: !691)
!789 = !DILocation(line: 102, column: 1, scope: !717)
!790 = distinct !DISubprogram(name: "prefix_del", scope: !692, file: !692, line: 104, type: !791, isLocal: false, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!791 = !DISubroutineType(types: !792)
!792 = !{null, !95, !96}
!793 = !DILocalVariable(name: "prefixes", arg: 1, scope: !790, file: !692, line: 104, type: !95)
!794 = !DILocation(line: 104, column: 22, scope: !790)
!795 = !DILocalVariable(name: "oldprefix", arg: 2, scope: !790, file: !692, line: 104, type: !96)
!796 = !DILocation(line: 104, column: 43, scope: !790)
!797 = !DILocalVariable(name: "todel", scope: !790, file: !692, line: 106, type: !95)
!798 = !DILocation(line: 106, column: 8, scope: !790)
!799 = !DILocation(line: 108, column: 17, scope: !790)
!800 = !DILocation(line: 108, column: 27, scope: !790)
!801 = !DILocation(line: 108, column: 10, scope: !790)
!802 = !DILocation(line: 108, column: 8, scope: !790)
!803 = !DILocation(line: 109, column: 6, scope: !804)
!804 = distinct !DILexicalBlock(scope: !790, file: !692, line: 109, column: 6)
!805 = !DILocation(line: 109, column: 6, scope: !790)
!806 = !DILocation(line: 110, column: 11, scope: !804)
!807 = !DILocation(line: 110, column: 18, scope: !804)
!808 = !DILocation(line: 110, column: 23, scope: !804)
!809 = !DILocation(line: 110, column: 34, scope: !804)
!810 = !DILocation(line: 110, column: 27, scope: !804)
!811 = !DILocation(line: 110, column: 3, scope: !812)
!812 = !DILexicalBlockFile(scope: !804, file: !692, discriminator: 1)
!813 = !DILocation(line: 110, column: 3, scope: !804)
!814 = !DILocation(line: 111, column: 1, scope: !790)
!815 = distinct !DISubprogram(name: "modes_type_a", scope: !692, file: !692, line: 252, type: !643, isLocal: false, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!816 = !DILocalVariable(name: "channel", arg: 1, scope: !815, file: !692, line: 252, type: !59)
!817 = !DILocation(line: 252, column: 36, scope: !815)
!818 = !DILocalVariable(name: "setby", arg: 2, scope: !815, file: !692, line: 252, type: !471)
!819 = !DILocation(line: 252, column: 57, scope: !815)
!820 = !DILocalVariable(name: "type", arg: 3, scope: !815, file: !692, line: 252, type: !96)
!821 = !DILocation(line: 252, column: 69, scope: !815)
!822 = !DILocalVariable(name: "mode", arg: 4, scope: !815, file: !692, line: 253, type: !96)
!823 = !DILocation(line: 253, column: 10, scope: !815)
!824 = !DILocalVariable(name: "arg", arg: 5, scope: !815, file: !692, line: 253, type: !95)
!825 = !DILocation(line: 253, column: 22, scope: !815)
!826 = !DILocalVariable(name: "newmode", arg: 6, scope: !815, file: !692, line: 253, type: !288)
!827 = !DILocation(line: 253, column: 36, scope: !815)
!828 = !DILocation(line: 255, column: 6, scope: !829)
!829 = distinct !DILexicalBlock(scope: !815, file: !692, line: 255, column: 6)
!830 = !DILocation(line: 255, column: 11, scope: !829)
!831 = !DILocation(line: 255, column: 6, scope: !815)
!832 = !DILocation(line: 256, column: 7, scope: !833)
!833 = distinct !DILexicalBlock(scope: !834, file: !692, line: 256, column: 7)
!834 = distinct !DILexicalBlock(scope: !829, file: !692, line: 255, column: 19)
!835 = !DILocation(line: 256, column: 12, scope: !833)
!836 = !DILocation(line: 256, column: 7, scope: !834)
!837 = !DILocation(line: 257, column: 16, scope: !833)
!838 = !DILocation(line: 257, column: 25, scope: !833)
!839 = !DILocation(line: 257, column: 30, scope: !833)
!840 = !DILocation(line: 257, column: 37, scope: !833)
!841 = !DILocation(line: 257, column: 4, scope: !842)
!842 = !DILexicalBlockFile(scope: !833, file: !692, discriminator: 1)
!843 = !DILocation(line: 257, column: 4, scope: !833)
!844 = !DILocation(line: 259, column: 19, scope: !833)
!845 = !DILocation(line: 259, column: 28, scope: !833)
!846 = !DILocation(line: 259, column: 33, scope: !833)
!847 = !DILocation(line: 259, column: 4, scope: !833)
!848 = !DILocation(line: 260, column: 2, scope: !834)
!849 = !DILocation(line: 261, column: 1, scope: !815)
!850 = distinct !DISubprogram(name: "modes_type_b", scope: !692, file: !692, line: 264, type: !643, isLocal: false, isDefinition: true, scopeLine: 266, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!851 = !DILocalVariable(name: "channel", arg: 1, scope: !850, file: !692, line: 264, type: !59)
!852 = !DILocation(line: 264, column: 36, scope: !850)
!853 = !DILocalVariable(name: "setby", arg: 2, scope: !850, file: !692, line: 264, type: !471)
!854 = !DILocation(line: 264, column: 57, scope: !850)
!855 = !DILocalVariable(name: "type", arg: 3, scope: !850, file: !692, line: 264, type: !96)
!856 = !DILocation(line: 264, column: 69, scope: !850)
!857 = !DILocalVariable(name: "mode", arg: 4, scope: !850, file: !692, line: 265, type: !96)
!858 = !DILocation(line: 265, column: 10, scope: !850)
!859 = !DILocalVariable(name: "arg", arg: 5, scope: !850, file: !692, line: 265, type: !95)
!860 = !DILocation(line: 265, column: 22, scope: !850)
!861 = !DILocalVariable(name: "newmode", arg: 6, scope: !850, file: !692, line: 265, type: !288)
!862 = !DILocation(line: 265, column: 36, scope: !850)
!863 = !DILocation(line: 267, column: 6, scope: !864)
!864 = distinct !DILexicalBlock(scope: !850, file: !692, line: 267, column: 6)
!865 = !DILocation(line: 267, column: 11, scope: !864)
!866 = !DILocation(line: 267, column: 6, scope: !850)
!867 = !DILocation(line: 268, column: 8, scope: !868)
!868 = distinct !DILexicalBlock(scope: !869, file: !692, line: 268, column: 7)
!869 = distinct !DILexicalBlock(scope: !864, file: !692, line: 267, column: 19)
!870 = !DILocation(line: 268, column: 7, scope: !868)
!871 = !DILocation(line: 268, column: 12, scope: !868)
!872 = !DILocation(line: 268, column: 20, scope: !868)
!873 = !DILocation(line: 268, column: 23, scope: !874)
!874 = !DILexicalBlockFile(scope: !868, file: !692, discriminator: 1)
!875 = !DILocation(line: 268, column: 28, scope: !874)
!876 = !DILocation(line: 268, column: 7, scope: !874)
!877 = !DILocation(line: 269, column: 10, scope: !868)
!878 = !DILocation(line: 269, column: 19, scope: !868)
!879 = !DILocation(line: 269, column: 23, scope: !868)
!880 = !DILocation(line: 269, column: 32, scope: !874)
!881 = !DILocation(line: 269, column: 41, scope: !874)
!882 = !DILocation(line: 269, column: 10, scope: !874)
!883 = !DILocation(line: 269, column: 10, scope: !884)
!884 = !DILexicalBlockFile(scope: !868, file: !692, discriminator: 2)
!885 = !DILocation(line: 269, column: 10, scope: !886)
!886 = !DILexicalBlockFile(scope: !868, file: !692, discriminator: 3)
!887 = !DILocation(line: 269, column: 8, scope: !886)
!888 = !DILocation(line: 269, column: 4, scope: !886)
!889 = !DILocation(line: 271, column: 7, scope: !890)
!890 = distinct !DILexicalBlock(scope: !869, file: !692, line: 271, column: 7)
!891 = !DILocation(line: 271, column: 14, scope: !890)
!892 = !DILocation(line: 271, column: 23, scope: !890)
!893 = !DILocation(line: 271, column: 11, scope: !890)
!894 = !DILocation(line: 271, column: 7, scope: !869)
!895 = !DILocation(line: 272, column: 4, scope: !896)
!896 = distinct !DILexicalBlock(scope: !890, file: !692, line: 271, column: 28)
!897 = distinct !{!897, !895}
!898 = !DILocation(line: 272, column: 13, scope: !899)
!899 = !DILexicalBlockFile(scope: !900, file: !692, discriminator: 1)
!900 = distinct !DILexicalBlock(scope: !901, file: !692, line: 272, column: 13)
!901 = distinct !DILexicalBlock(scope: !896, file: !692, line: 272, column: 7)
!902 = !DILocation(line: 272, column: 22, scope: !899)
!903 = !DILocation(line: 272, column: 36, scope: !904)
!904 = !DILexicalBlockFile(scope: !905, file: !692, discriminator: 2)
!905 = distinct !DILexicalBlock(scope: !900, file: !692, line: 272, column: 27)
!906 = !DILocation(line: 272, column: 45, scope: !904)
!907 = !DILocation(line: 272, column: 29, scope: !904)
!908 = !DILocation(line: 272, column: 52, scope: !904)
!909 = !DILocation(line: 272, column: 61, scope: !904)
!910 = !DILocation(line: 272, column: 66, scope: !904)
!911 = !DILocation(line: 272, column: 5, scope: !904)
!912 = !DILocation(line: 272, column: 7, scope: !913)
!913 = !DILexicalBlockFile(scope: !901, file: !692, discriminator: 3)
!914 = !DILocation(line: 273, column: 8, scope: !915)
!915 = distinct !DILexicalBlock(scope: !896, file: !692, line: 273, column: 8)
!916 = !DILocation(line: 273, column: 13, scope: !915)
!917 = !DILocation(line: 273, column: 8, scope: !896)
!918 = !DILocation(line: 274, column: 29, scope: !915)
!919 = !DILocation(line: 274, column: 20, scope: !915)
!920 = !DILocation(line: 274, column: 5, scope: !915)
!921 = !DILocation(line: 274, column: 14, scope: !915)
!922 = !DILocation(line: 274, column: 18, scope: !915)
!923 = !DILocation(line: 275, column: 3, scope: !896)
!924 = !DILocation(line: 276, column: 2, scope: !869)
!925 = !DILocation(line: 278, column: 15, scope: !850)
!926 = !DILocation(line: 278, column: 24, scope: !850)
!927 = !DILocation(line: 278, column: 32, scope: !850)
!928 = !DILocation(line: 278, column: 41, scope: !850)
!929 = !DILocation(line: 278, column: 47, scope: !850)
!930 = !DILocation(line: 278, column: 53, scope: !850)
!931 = !DILocation(line: 278, column: 2, scope: !850)
!932 = !DILocation(line: 279, column: 1, scope: !850)
!933 = distinct !DISubprogram(name: "mode_set_arg", scope: !692, file: !692, line: 238, type: !934, isLocal: true, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!934 = !DISubroutineType(types: !935)
!935 = !{null, !76, !288, !96, !96, !471, !67}
!936 = !DILocalVariable(name: "server", arg: 1, scope: !933, file: !692, line: 238, type: !76)
!937 = !DILocation(line: 238, column: 42, scope: !933)
!938 = !DILocalVariable(name: "str", arg: 2, scope: !933, file: !692, line: 238, type: !288)
!939 = !DILocation(line: 238, column: 59, scope: !933)
!940 = !DILocalVariable(name: "type", arg: 3, scope: !933, file: !692, line: 239, type: !96)
!941 = !DILocation(line: 239, column: 10, scope: !933)
!942 = !DILocalVariable(name: "mode", arg: 4, scope: !933, file: !692, line: 239, type: !96)
!943 = !DILocation(line: 239, column: 21, scope: !933)
!944 = !DILocalVariable(name: "arg", arg: 5, scope: !933, file: !692, line: 239, type: !471)
!945 = !DILocation(line: 239, column: 39, scope: !933)
!946 = !DILocalVariable(name: "user", arg: 6, scope: !933, file: !692, line: 239, type: !67)
!947 = !DILocation(line: 239, column: 48, scope: !933)
!948 = !DILocation(line: 241, column: 2, scope: !933)
!949 = distinct !{!949, !948}
!950 = !DILocation(line: 241, column: 10, scope: !951)
!951 = !DILexicalBlockFile(scope: !952, file: !692, discriminator: 1)
!952 = distinct !DILexicalBlock(scope: !953, file: !692, line: 241, column: 10)
!953 = distinct !DILexicalBlock(scope: !933, file: !692, line: 241, column: 4)
!954 = !DILocation(line: 241, column: 14, scope: !951)
!955 = !DILocation(line: 241, column: 5, scope: !956)
!956 = !DILexicalBlockFile(scope: !957, file: !692, discriminator: 2)
!957 = distinct !DILexicalBlock(scope: !952, file: !692, line: 241, column: 3)
!958 = !DILocation(line: 241, column: 14, scope: !959)
!959 = !DILexicalBlockFile(scope: !960, file: !692, discriminator: 3)
!960 = distinct !DILexicalBlock(scope: !952, file: !692, line: 241, column: 12)
!961 = !DILocation(line: 241, column: 98, scope: !959)
!962 = !DILocation(line: 241, column: 109, scope: !963)
!963 = !DILexicalBlockFile(scope: !953, file: !692, discriminator: 4)
!964 = !DILocation(line: 242, column: 2, scope: !933)
!965 = distinct !{!965, !964}
!966 = !DILocation(line: 242, column: 10, scope: !967)
!967 = !DILexicalBlockFile(scope: !968, file: !692, discriminator: 1)
!968 = distinct !DILexicalBlock(scope: !969, file: !692, line: 242, column: 10)
!969 = distinct !DILexicalBlock(scope: !933, file: !692, line: 242, column: 4)
!970 = !DILocation(line: 242, column: 15, scope: !967)
!971 = !DILocation(line: 242, column: 22, scope: !967)
!972 = !DILocation(line: 242, column: 25, scope: !973)
!973 = !DILexicalBlockFile(scope: !968, file: !692, discriminator: 2)
!974 = !DILocation(line: 242, column: 29, scope: !973)
!975 = !DILocation(line: 242, column: 10, scope: !973)
!976 = !DILocation(line: 242, column: 5, scope: !977)
!977 = !DILexicalBlockFile(scope: !978, file: !692, discriminator: 3)
!978 = distinct !DILexicalBlock(scope: !968, file: !692, line: 242, column: 3)
!979 = !DILocation(line: 242, column: 14, scope: !980)
!980 = !DILexicalBlockFile(scope: !981, file: !692, discriminator: 4)
!981 = distinct !DILexicalBlock(scope: !968, file: !692, line: 242, column: 12)
!982 = !DILocation(line: 242, column: 113, scope: !980)
!983 = !DILocation(line: 242, column: 124, scope: !984)
!984 = !DILexicalBlockFile(scope: !969, file: !692, discriminator: 5)
!985 = !DILocation(line: 244, column: 6, scope: !986)
!986 = distinct !DILexicalBlock(scope: !933, file: !692, line: 244, column: 6)
!987 = !DILocation(line: 244, column: 11, scope: !986)
!988 = !DILocation(line: 244, column: 6, scope: !933)
!989 = !DILocation(line: 245, column: 15, scope: !986)
!990 = !DILocation(line: 245, column: 23, scope: !986)
!991 = !DILocation(line: 245, column: 28, scope: !986)
!992 = !DILocation(line: 245, column: 34, scope: !986)
!993 = !DILocation(line: 245, column: 3, scope: !986)
!994 = !DILocation(line: 247, column: 19, scope: !986)
!995 = !DILocation(line: 247, column: 27, scope: !986)
!996 = !DILocation(line: 247, column: 32, scope: !986)
!997 = !DILocation(line: 247, column: 38, scope: !986)
!998 = !DILocation(line: 247, column: 43, scope: !986)
!999 = !DILocation(line: 247, column: 3, scope: !986)
!1000 = !DILocation(line: 248, column: 1, scope: !933)
!1001 = distinct !DISubprogram(name: "modes_type_c", scope: !692, file: !692, line: 282, type: !643, isLocal: false, isDefinition: true, scopeLine: 284, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!1002 = !DILocalVariable(name: "channel", arg: 1, scope: !1001, file: !692, line: 282, type: !59)
!1003 = !DILocation(line: 282, column: 36, scope: !1001)
!1004 = !DILocalVariable(name: "setby", arg: 2, scope: !1001, file: !692, line: 282, type: !471)
!1005 = !DILocation(line: 282, column: 57, scope: !1001)
!1006 = !DILocalVariable(name: "type", arg: 3, scope: !1001, file: !692, line: 283, type: !96)
!1007 = !DILocation(line: 283, column: 10, scope: !1001)
!1008 = !DILocalVariable(name: "mode", arg: 4, scope: !1001, file: !692, line: 283, type: !96)
!1009 = !DILocation(line: 283, column: 21, scope: !1001)
!1010 = !DILocalVariable(name: "arg", arg: 5, scope: !1001, file: !692, line: 283, type: !95)
!1011 = !DILocation(line: 283, column: 33, scope: !1001)
!1012 = !DILocalVariable(name: "newmode", arg: 6, scope: !1001, file: !692, line: 283, type: !288)
!1013 = !DILocation(line: 283, column: 47, scope: !1001)
!1014 = !DILocation(line: 285, column: 6, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1001, file: !692, line: 285, column: 6)
!1016 = !DILocation(line: 285, column: 11, scope: !1015)
!1017 = !DILocation(line: 285, column: 6, scope: !1001)
!1018 = !DILocation(line: 286, column: 20, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !1015, file: !692, line: 285, column: 19)
!1020 = !DILocation(line: 286, column: 25, scope: !1019)
!1021 = !DILocation(line: 286, column: 20, scope: !1022)
!1022 = !DILexicalBlockFile(scope: !1019, file: !692, discriminator: 1)
!1023 = !DILocation(line: 286, column: 43, scope: !1024)
!1024 = !DILexicalBlockFile(scope: !1019, file: !692, discriminator: 2)
!1025 = !DILocation(line: 286, column: 38, scope: !1024)
!1026 = !DILocation(line: 286, column: 20, scope: !1024)
!1027 = !DILocation(line: 286, column: 20, scope: !1028)
!1028 = !DILexicalBlockFile(scope: !1019, file: !692, discriminator: 3)
!1029 = !DILocation(line: 286, column: 3, scope: !1028)
!1030 = !DILocation(line: 286, column: 12, scope: !1028)
!1031 = !DILocation(line: 286, column: 18, scope: !1028)
!1032 = !DILocation(line: 287, column: 2, scope: !1019)
!1033 = !DILocation(line: 289, column: 15, scope: !1001)
!1034 = !DILocation(line: 289, column: 24, scope: !1001)
!1035 = !DILocation(line: 289, column: 32, scope: !1001)
!1036 = !DILocation(line: 289, column: 41, scope: !1001)
!1037 = !DILocation(line: 289, column: 47, scope: !1001)
!1038 = !DILocation(line: 289, column: 53, scope: !1001)
!1039 = !DILocation(line: 289, column: 2, scope: !1001)
!1040 = !DILocation(line: 290, column: 1, scope: !1001)
!1041 = distinct !DISubprogram(name: "modes_type_d", scope: !692, file: !692, line: 293, type: !643, isLocal: false, isDefinition: true, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!1042 = !DILocalVariable(name: "channel", arg: 1, scope: !1041, file: !692, line: 293, type: !59)
!1043 = !DILocation(line: 293, column: 36, scope: !1041)
!1044 = !DILocalVariable(name: "setby", arg: 2, scope: !1041, file: !692, line: 293, type: !471)
!1045 = !DILocation(line: 293, column: 57, scope: !1041)
!1046 = !DILocalVariable(name: "type", arg: 3, scope: !1041, file: !692, line: 294, type: !96)
!1047 = !DILocation(line: 294, column: 10, scope: !1041)
!1048 = !DILocalVariable(name: "mode", arg: 4, scope: !1041, file: !692, line: 294, type: !96)
!1049 = !DILocation(line: 294, column: 21, scope: !1041)
!1050 = !DILocalVariable(name: "arg", arg: 5, scope: !1041, file: !692, line: 294, type: !95)
!1051 = !DILocation(line: 294, column: 33, scope: !1041)
!1052 = !DILocalVariable(name: "newmode", arg: 6, scope: !1041, file: !692, line: 294, type: !288)
!1053 = !DILocation(line: 294, column: 47, scope: !1041)
!1054 = !DILocation(line: 296, column: 11, scope: !1041)
!1055 = !DILocation(line: 296, column: 20, scope: !1041)
!1056 = !DILocation(line: 296, column: 28, scope: !1041)
!1057 = !DILocation(line: 296, column: 37, scope: !1041)
!1058 = !DILocation(line: 296, column: 43, scope: !1041)
!1059 = !DILocation(line: 296, column: 2, scope: !1041)
!1060 = !DILocation(line: 297, column: 1, scope: !1041)
!1061 = distinct !DISubprogram(name: "mode_set", scope: !692, file: !692, line: 227, type: !1062, isLocal: true, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{null, !76, !288, !96, !96, !67}
!1064 = !DILocalVariable(name: "server", arg: 1, scope: !1061, file: !692, line: 227, type: !76)
!1065 = !DILocation(line: 227, column: 38, scope: !1061)
!1066 = !DILocalVariable(name: "str", arg: 2, scope: !1061, file: !692, line: 227, type: !288)
!1067 = !DILocation(line: 227, column: 55, scope: !1061)
!1068 = !DILocalVariable(name: "type", arg: 3, scope: !1061, file: !692, line: 228, type: !96)
!1069 = !DILocation(line: 228, column: 13, scope: !1061)
!1070 = !DILocalVariable(name: "mode", arg: 4, scope: !1061, file: !692, line: 228, type: !96)
!1071 = !DILocation(line: 228, column: 24, scope: !1061)
!1072 = !DILocalVariable(name: "user", arg: 5, scope: !1061, file: !692, line: 228, type: !67)
!1073 = !DILocation(line: 228, column: 34, scope: !1061)
!1074 = !DILocation(line: 230, column: 2, scope: !1061)
!1075 = distinct !{!1075, !1074}
!1076 = !DILocation(line: 230, column: 10, scope: !1077)
!1077 = !DILexicalBlockFile(scope: !1078, file: !692, discriminator: 1)
!1078 = distinct !DILexicalBlock(scope: !1079, file: !692, line: 230, column: 10)
!1079 = distinct !DILexicalBlock(scope: !1061, file: !692, line: 230, column: 4)
!1080 = !DILocation(line: 230, column: 14, scope: !1077)
!1081 = !DILocation(line: 230, column: 5, scope: !1082)
!1082 = !DILexicalBlockFile(scope: !1083, file: !692, discriminator: 2)
!1083 = distinct !DILexicalBlock(scope: !1078, file: !692, line: 230, column: 3)
!1084 = !DILocation(line: 230, column: 14, scope: !1085)
!1085 = !DILexicalBlockFile(scope: !1086, file: !692, discriminator: 3)
!1086 = distinct !DILexicalBlock(scope: !1078, file: !692, line: 230, column: 12)
!1087 = !DILocation(line: 230, column: 98, scope: !1085)
!1088 = !DILocation(line: 230, column: 109, scope: !1089)
!1089 = !DILexicalBlockFile(scope: !1079, file: !692, discriminator: 4)
!1090 = !DILocation(line: 232, column: 6, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1061, file: !692, line: 232, column: 6)
!1092 = !DILocation(line: 232, column: 11, scope: !1091)
!1093 = !DILocation(line: 232, column: 6, scope: !1061)
!1094 = !DILocation(line: 233, column: 15, scope: !1091)
!1095 = !DILocation(line: 233, column: 23, scope: !1091)
!1096 = !DILocation(line: 233, column: 28, scope: !1091)
!1097 = !DILocation(line: 233, column: 34, scope: !1091)
!1098 = !DILocation(line: 233, column: 3, scope: !1091)
!1099 = !DILocation(line: 235, column: 19, scope: !1091)
!1100 = !DILocation(line: 235, column: 27, scope: !1091)
!1101 = !DILocation(line: 235, column: 32, scope: !1091)
!1102 = !DILocation(line: 235, column: 43, scope: !1091)
!1103 = !DILocation(line: 235, column: 3, scope: !1091)
!1104 = !DILocation(line: 236, column: 1, scope: !1061)
!1105 = distinct !DISubprogram(name: "modes_type_prefix", scope: !692, file: !692, line: 299, type: !643, isLocal: false, isDefinition: true, scopeLine: 301, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!1106 = !DILocalVariable(name: "channel", arg: 1, scope: !1105, file: !692, line: 299, type: !59)
!1107 = !DILocation(line: 299, column: 41, scope: !1105)
!1108 = !DILocalVariable(name: "setby", arg: 2, scope: !1105, file: !692, line: 299, type: !471)
!1109 = !DILocation(line: 299, column: 62, scope: !1105)
!1110 = !DILocalVariable(name: "type", arg: 3, scope: !1105, file: !692, line: 300, type: !96)
!1111 = !DILocation(line: 300, column: 15, scope: !1105)
!1112 = !DILocalVariable(name: "mode", arg: 4, scope: !1105, file: !692, line: 300, type: !96)
!1113 = !DILocation(line: 300, column: 26, scope: !1105)
!1114 = !DILocalVariable(name: "arg", arg: 5, scope: !1105, file: !692, line: 300, type: !95)
!1115 = !DILocation(line: 300, column: 38, scope: !1105)
!1116 = !DILocalVariable(name: "newmode", arg: 6, scope: !1105, file: !692, line: 300, type: !288)
!1117 = !DILocation(line: 300, column: 52, scope: !1105)
!1118 = !DILocalVariable(name: "umode", scope: !1105, file: !692, line: 302, type: !67)
!1119 = !DILocation(line: 302, column: 6, scope: !1105)
!1120 = !DILocation(line: 302, column: 30, scope: !1105)
!1121 = !DILocation(line: 302, column: 14, scope: !1105)
!1122 = !DILocation(line: 304, column: 25, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1105, file: !692, line: 304, column: 6)
!1124 = !DILocation(line: 304, column: 34, scope: !1123)
!1125 = !DILocation(line: 304, column: 42, scope: !1123)
!1126 = !DILocation(line: 304, column: 48, scope: !1123)
!1127 = !DILocation(line: 304, column: 6, scope: !1123)
!1128 = !DILocation(line: 304, column: 53, scope: !1123)
!1129 = !DILocation(line: 304, column: 6, scope: !1105)
!1130 = !DILocalVariable(name: "prefix", scope: !1131, file: !692, line: 306, type: !471)
!1131 = distinct !DILexicalBlock(scope: !1123, file: !692, line: 304, column: 59)
!1132 = !DILocation(line: 306, column: 15, scope: !1131)
!1133 = !DILocation(line: 307, column: 24, scope: !1131)
!1134 = !DILocation(line: 307, column: 33, scope: !1131)
!1135 = !DILocation(line: 307, column: 41, scope: !1131)
!1136 = !DILocation(line: 307, column: 4, scope: !1131)
!1137 = !DILocation(line: 308, column: 7, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1131, file: !692, line: 308, column: 7)
!1139 = !DILocation(line: 308, column: 14, scope: !1138)
!1140 = !DILocation(line: 308, column: 21, scope: !1138)
!1141 = !DILocation(line: 308, column: 25, scope: !1142)
!1142 = !DILexicalBlockFile(scope: !1138, file: !692, discriminator: 1)
!1143 = !DILocation(line: 308, column: 24, scope: !1142)
!1144 = !DILocation(line: 308, column: 32, scope: !1142)
!1145 = !DILocation(line: 308, column: 7, scope: !1142)
!1146 = !DILocation(line: 309, column: 10, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1138, file: !692, line: 308, column: 40)
!1148 = !DILocation(line: 310, column: 4, scope: !1147)
!1149 = !DILocation(line: 310, column: 12, scope: !1150)
!1150 = !DILexicalBlockFile(scope: !1147, file: !692, discriminator: 1)
!1151 = !DILocation(line: 310, column: 11, scope: !1150)
!1152 = !DILocation(line: 310, column: 19, scope: !1150)
!1153 = !DILocation(line: 310, column: 26, scope: !1150)
!1154 = !DILocation(line: 310, column: 30, scope: !1155)
!1155 = !DILexicalBlockFile(scope: !1147, file: !692, discriminator: 2)
!1156 = !DILocation(line: 310, column: 29, scope: !1155)
!1157 = !DILocation(line: 310, column: 37, scope: !1155)
!1158 = !DILocation(line: 310, column: 4, scope: !1159)
!1159 = !DILexicalBlockFile(scope: !1147, file: !692, discriminator: 3)
!1160 = !DILocation(line: 311, column: 10, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1162, file: !692, line: 311, column: 9)
!1162 = distinct !DILexicalBlock(scope: !1147, file: !692, line: 310, column: 46)
!1163 = !DILocation(line: 311, column: 9, scope: !1161)
!1164 = !DILocation(line: 311, column: 20, scope: !1161)
!1165 = !DILocation(line: 311, column: 17, scope: !1161)
!1166 = !DILocation(line: 311, column: 9, scope: !1162)
!1167 = !DILocation(line: 312, column: 24, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1161, file: !692, line: 311, column: 26)
!1169 = !DILocation(line: 312, column: 29, scope: !1168)
!1170 = !DILocation(line: 312, column: 6, scope: !1168)
!1171 = !DILocation(line: 312, column: 15, scope: !1168)
!1172 = !DILocation(line: 312, column: 22, scope: !1168)
!1173 = !DILocation(line: 313, column: 6, scope: !1168)
!1174 = !DILocation(line: 315, column: 10, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1162, file: !692, line: 315, column: 9)
!1176 = !DILocation(line: 315, column: 9, scope: !1175)
!1177 = !DILocation(line: 315, column: 17, scope: !1175)
!1178 = !DILocation(line: 315, column: 9, scope: !1162)
!1179 = !DILocation(line: 316, column: 6, scope: !1175)
!1180 = !DILocation(line: 317, column: 11, scope: !1162)
!1181 = !DILocation(line: 310, column: 4, scope: !1182)
!1182 = !DILexicalBlockFile(scope: !1147, file: !692, discriminator: 4)
!1183 = distinct !{!1183, !1148}
!1184 = !DILocation(line: 319, column: 3, scope: !1147)
!1185 = !DILocation(line: 320, column: 8, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1187, file: !692, line: 320, column: 8)
!1187 = distinct !DILexicalBlock(scope: !1138, file: !692, line: 319, column: 10)
!1188 = !DILocation(line: 320, column: 13, scope: !1186)
!1189 = !DILocation(line: 320, column: 20, scope: !1186)
!1190 = !DILocation(line: 320, column: 23, scope: !1191)
!1191 = !DILexicalBlockFile(scope: !1186, file: !692, discriminator: 1)
!1192 = !DILocation(line: 320, column: 28, scope: !1191)
!1193 = !DILocation(line: 320, column: 8, scope: !1191)
!1194 = !DILocation(line: 321, column: 23, scope: !1186)
!1195 = !DILocation(line: 321, column: 28, scope: !1186)
!1196 = !DILocation(line: 321, column: 5, scope: !1186)
!1197 = !DILocation(line: 321, column: 14, scope: !1186)
!1198 = !DILocation(line: 321, column: 21, scope: !1186)
!1199 = !DILocation(line: 323, column: 2, scope: !1131)
!1200 = !DILocation(line: 325, column: 19, scope: !1105)
!1201 = !DILocation(line: 325, column: 28, scope: !1105)
!1202 = !DILocation(line: 325, column: 56, scope: !1105)
!1203 = !DILocation(line: 325, column: 33, scope: !1105)
!1204 = !DILocation(line: 325, column: 42, scope: !1105)
!1205 = !DILocation(line: 325, column: 50, scope: !1105)
!1206 = !DILocation(line: 325, column: 63, scope: !1105)
!1207 = !DILocation(line: 326, column: 5, scope: !1105)
!1208 = !DILocation(line: 326, column: 11, scope: !1105)
!1209 = !DILocation(line: 325, column: 2, scope: !1105)
!1210 = !DILocation(line: 327, column: 1, scope: !1105)
!1211 = distinct !DISubprogram(name: "nick_mode_change", scope: !692, file: !692, line: 34, type: !1212, isLocal: true, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{null, !59, !471, !96, !67, !471}
!1214 = !DILocalVariable(name: "channel", arg: 1, scope: !1211, file: !692, line: 34, type: !59)
!1215 = !DILocation(line: 34, column: 47, scope: !1211)
!1216 = !DILocalVariable(name: "nick", arg: 2, scope: !1211, file: !692, line: 34, type: !471)
!1217 = !DILocation(line: 34, column: 68, scope: !1211)
!1218 = !DILocalVariable(name: "mode", arg: 3, scope: !1211, file: !692, line: 35, type: !96)
!1219 = !DILocation(line: 35, column: 14, scope: !1211)
!1220 = !DILocalVariable(name: "type", arg: 4, scope: !1211, file: !692, line: 35, type: !67)
!1221 = !DILocation(line: 35, column: 24, scope: !1211)
!1222 = !DILocalVariable(name: "setby", arg: 5, scope: !1211, file: !692, line: 35, type: !471)
!1223 = !DILocation(line: 35, column: 42, scope: !1211)
!1224 = !DILocalVariable(name: "nickrec", scope: !1211, file: !692, line: 37, type: !522)
!1225 = !DILocation(line: 37, column: 12, scope: !1211)
!1226 = !DILocalVariable(name: "modestr", scope: !1211, file: !692, line: 38, type: !1227)
!1227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 16, align: 8, elements: !352)
!1228 = !DILocation(line: 38, column: 7, scope: !1211)
!1229 = !DILocalVariable(name: "typestr", scope: !1211, file: !692, line: 38, type: !1227)
!1230 = !DILocation(line: 38, column: 19, scope: !1211)
!1231 = !DILocation(line: 40, column: 2, scope: !1211)
!1232 = distinct !{!1232, !1231}
!1233 = !DILocation(line: 40, column: 99, scope: !1234)
!1234 = !DILexicalBlockFile(scope: !1235, file: !692, discriminator: 1)
!1235 = distinct !DILexicalBlock(scope: !1236, file: !692, line: 40, column: 10)
!1236 = distinct !DILexicalBlock(scope: !1211, file: !692, line: 40, column: 4)
!1237 = !DILocation(line: 40, column: 74, scope: !1234)
!1238 = !DILocation(line: 40, column: 58, scope: !1234)
!1239 = !DILocation(line: 40, column: 57, scope: !1234)
!1240 = !DILocation(line: 40, column: 32, scope: !1241)
!1241 = !DILexicalBlockFile(scope: !1234, file: !692, discriminator: 7)
!1242 = !DILocation(line: 40, column: 12, scope: !1234)
!1243 = !DILocation(line: 40, column: 10, scope: !1234)
!1244 = !DILocation(line: 40, column: 11, scope: !1245)
!1245 = !DILexicalBlockFile(scope: !1235, file: !692, discriminator: 2)
!1246 = !DILocation(line: 40, column: 10, scope: !1247)
!1247 = !DILexicalBlockFile(scope: !1236, file: !692, discriminator: 3)
!1248 = !DILocation(line: 40, column: 30, scope: !1249)
!1249 = !DILexicalBlockFile(scope: !1250, file: !692, discriminator: 4)
!1250 = distinct !DILexicalBlock(scope: !1235, file: !692, line: 40, column: 28)
!1251 = !DILocation(line: 40, column: 39, scope: !1252)
!1252 = !DILexicalBlockFile(scope: !1253, file: !692, discriminator: 5)
!1253 = distinct !DILexicalBlock(scope: !1235, file: !692, line: 40, column: 37)
!1254 = !DILocation(line: 40, column: 135, scope: !1252)
!1255 = !DILocation(line: 40, column: 146, scope: !1256)
!1256 = !DILexicalBlockFile(scope: !1236, file: !692, discriminator: 6)
!1257 = !DILocation(line: 41, column: 2, scope: !1211)
!1258 = distinct !{!1258, !1257}
!1259 = !DILocation(line: 41, column: 10, scope: !1260)
!1260 = !DILexicalBlockFile(scope: !1261, file: !692, discriminator: 1)
!1261 = distinct !DILexicalBlock(scope: !1262, file: !692, line: 41, column: 10)
!1262 = distinct !DILexicalBlock(scope: !1211, file: !692, line: 41, column: 4)
!1263 = !DILocation(line: 41, column: 15, scope: !1260)
!1264 = !DILocation(line: 41, column: 5, scope: !1265)
!1265 = !DILexicalBlockFile(scope: !1266, file: !692, discriminator: 2)
!1266 = distinct !DILexicalBlock(scope: !1261, file: !692, line: 41, column: 3)
!1267 = !DILocation(line: 41, column: 14, scope: !1268)
!1268 = !DILexicalBlockFile(scope: !1269, file: !692, discriminator: 3)
!1269 = distinct !DILexicalBlock(scope: !1261, file: !692, line: 41, column: 12)
!1270 = !DILocation(line: 41, column: 99, scope: !1268)
!1271 = !DILocation(line: 41, column: 110, scope: !1272)
!1272 = !DILexicalBlockFile(scope: !1262, file: !692, discriminator: 4)
!1273 = !DILocation(line: 43, column: 68, scope: !1211)
!1274 = !DILocation(line: 43, column: 43, scope: !1211)
!1275 = !DILocation(line: 43, column: 27, scope: !1211)
!1276 = !DILocation(line: 43, column: 60, scope: !1211)
!1277 = !DILocation(line: 43, column: 12, scope: !1278)
!1278 = !DILexicalBlockFile(scope: !1211, file: !692, discriminator: 1)
!1279 = !DILocation(line: 43, column: 10, scope: !1211)
!1280 = !DILocation(line: 44, column: 6, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1211, file: !692, line: 44, column: 6)
!1282 = !DILocation(line: 44, column: 14, scope: !1281)
!1283 = !DILocation(line: 44, column: 6, scope: !1211)
!1284 = !DILocation(line: 44, column: 22, scope: !1285)
!1285 = !DILexicalBlockFile(scope: !1281, file: !692, discriminator: 1)
!1286 = !DILocation(line: 46, column: 6, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1211, file: !692, line: 46, column: 6)
!1288 = !DILocation(line: 46, column: 11, scope: !1287)
!1289 = !DILocation(line: 46, column: 6, scope: !1211)
!1290 = !DILocation(line: 46, column: 33, scope: !1291)
!1291 = !DILexicalBlockFile(scope: !1287, file: !692, discriminator: 1)
!1292 = !DILocation(line: 46, column: 38, scope: !1291)
!1293 = !DILocation(line: 46, column: 19, scope: !1291)
!1294 = !DILocation(line: 46, column: 28, scope: !1291)
!1295 = !DILocation(line: 46, column: 31, scope: !1291)
!1296 = !DILocation(line: 47, column: 11, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1287, file: !692, line: 47, column: 11)
!1298 = !DILocation(line: 47, column: 16, scope: !1297)
!1299 = !DILocation(line: 47, column: 11, scope: !1287)
!1300 = !DILocation(line: 47, column: 41, scope: !1301)
!1301 = !DILexicalBlockFile(scope: !1297, file: !692, discriminator: 1)
!1302 = !DILocation(line: 47, column: 46, scope: !1301)
!1303 = !DILocation(line: 47, column: 24, scope: !1301)
!1304 = !DILocation(line: 47, column: 33, scope: !1301)
!1305 = !DILocation(line: 47, column: 39, scope: !1301)
!1306 = !DILocation(line: 48, column: 11, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1297, file: !692, line: 48, column: 11)
!1308 = !DILocation(line: 48, column: 16, scope: !1307)
!1309 = !DILocation(line: 48, column: 11, scope: !1297)
!1310 = !DILocation(line: 48, column: 42, scope: !1311)
!1311 = !DILexicalBlockFile(scope: !1307, file: !692, discriminator: 1)
!1312 = !DILocation(line: 48, column: 47, scope: !1311)
!1313 = !DILocation(line: 48, column: 24, scope: !1311)
!1314 = !DILocation(line: 48, column: 33, scope: !1311)
!1315 = !DILocation(line: 48, column: 40, scope: !1311)
!1316 = !DILocation(line: 49, column: 46, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1211, file: !692, line: 49, column: 6)
!1318 = !DILocation(line: 49, column: 6, scope: !1317)
!1319 = !DILocation(line: 49, column: 15, scope: !1317)
!1320 = !DILocation(line: 49, column: 23, scope: !1317)
!1321 = !DILocation(line: 49, column: 52, scope: !1317)
!1322 = !DILocation(line: 49, column: 6, scope: !1211)
!1323 = !DILocation(line: 50, column: 7, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1325, file: !692, line: 50, column: 7)
!1325 = distinct !DILexicalBlock(scope: !1317, file: !692, line: 49, column: 61)
!1326 = !DILocation(line: 50, column: 12, scope: !1324)
!1327 = !DILocation(line: 50, column: 7, scope: !1325)
!1328 = !DILocation(line: 51, column: 15, scope: !1324)
!1329 = !DILocation(line: 51, column: 24, scope: !1324)
!1330 = !DILocation(line: 51, column: 34, scope: !1324)
!1331 = !DILocation(line: 51, column: 55, scope: !1324)
!1332 = !DILocation(line: 51, column: 64, scope: !1324)
!1333 = !DILocation(line: 51, column: 40, scope: !1324)
!1334 = !DILocation(line: 51, column: 4, scope: !1324)
!1335 = !DILocation(line: 53, column: 15, scope: !1324)
!1336 = !DILocation(line: 53, column: 24, scope: !1324)
!1337 = !DILocation(line: 53, column: 34, scope: !1324)
!1338 = !DILocation(line: 53, column: 4, scope: !1324)
!1339 = !DILocation(line: 54, column: 2, scope: !1325)
!1340 = !DILocation(line: 56, column: 15, scope: !1211)
!1341 = !DILocation(line: 56, column: 2, scope: !1211)
!1342 = !DILocation(line: 56, column: 13, scope: !1211)
!1343 = !DILocation(line: 56, column: 21, scope: !1211)
!1344 = !DILocation(line: 56, column: 32, scope: !1211)
!1345 = !DILocation(line: 57, column: 15, scope: !1211)
!1346 = !DILocation(line: 57, column: 2, scope: !1211)
!1347 = !DILocation(line: 57, column: 13, scope: !1211)
!1348 = !DILocation(line: 57, column: 21, scope: !1211)
!1349 = !DILocation(line: 57, column: 32, scope: !1211)
!1350 = !DILocation(line: 59, column: 7, scope: !1211)
!1351 = !DILocation(line: 59, column: 16, scope: !1211)
!1352 = !DILocation(line: 59, column: 25, scope: !1211)
!1353 = !DILocation(line: 59, column: 32, scope: !1211)
!1354 = !DILocation(line: 59, column: 41, scope: !1211)
!1355 = !DILocation(line: 58, column: 2, scope: !1211)
!1356 = !DILocation(line: 60, column: 1, scope: !1211)
!1357 = !DILocation(line: 60, column: 1, scope: !1278)
!1358 = distinct !DISubprogram(name: "channel_mode_is_set", scope: !692, file: !692, line: 329, type: !1359, isLocal: false, isDefinition: true, scopeLine: 330, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!1359 = !DISubroutineType(types: !1360)
!1360 = !{!67, !59, !96}
!1361 = !DILocalVariable(name: "channel", arg: 1, scope: !1358, file: !692, line: 329, type: !59)
!1362 = !DILocation(line: 329, column: 42, scope: !1358)
!1363 = !DILocalVariable(name: "mode", arg: 2, scope: !1358, file: !692, line: 329, type: !96)
!1364 = !DILocation(line: 329, column: 56, scope: !1358)
!1365 = !DILocation(line: 331, column: 2, scope: !1358)
!1366 = distinct !{!1366, !1365}
!1367 = !DILocation(line: 331, column: 99, scope: !1368)
!1368 = !DILexicalBlockFile(scope: !1369, file: !692, discriminator: 1)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !692, line: 331, column: 10)
!1370 = distinct !DILexicalBlock(scope: !1358, file: !692, line: 331, column: 4)
!1371 = !DILocation(line: 331, column: 74, scope: !1368)
!1372 = !DILocation(line: 331, column: 58, scope: !1368)
!1373 = !DILocation(line: 331, column: 57, scope: !1368)
!1374 = !DILocation(line: 331, column: 32, scope: !1375)
!1375 = !DILexicalBlockFile(scope: !1368, file: !692, discriminator: 7)
!1376 = !DILocation(line: 331, column: 12, scope: !1368)
!1377 = !DILocation(line: 331, column: 10, scope: !1368)
!1378 = !DILocation(line: 331, column: 11, scope: !1379)
!1379 = !DILexicalBlockFile(scope: !1369, file: !692, discriminator: 2)
!1380 = !DILocation(line: 331, column: 10, scope: !1381)
!1381 = !DILexicalBlockFile(scope: !1370, file: !692, discriminator: 3)
!1382 = !DILocation(line: 331, column: 30, scope: !1383)
!1383 = !DILexicalBlockFile(scope: !1384, file: !692, discriminator: 4)
!1384 = distinct !DILexicalBlock(scope: !1369, file: !692, line: 331, column: 28)
!1385 = !DILocation(line: 331, column: 39, scope: !1386)
!1386 = !DILexicalBlockFile(scope: !1387, file: !692, discriminator: 5)
!1387 = distinct !DILexicalBlock(scope: !1369, file: !692, line: 331, column: 37)
!1388 = !DILocation(line: 331, column: 135, scope: !1386)
!1389 = !DILocation(line: 331, column: 152, scope: !1390)
!1390 = !DILexicalBlockFile(scope: !1370, file: !692, discriminator: 6)
!1391 = !DILocation(line: 333, column: 9, scope: !1358)
!1392 = !DILocation(line: 333, column: 18, scope: !1358)
!1393 = !DILocation(line: 333, column: 23, scope: !1358)
!1394 = !DILocation(line: 333, column: 9, scope: !1395)
!1395 = !DILexicalBlockFile(scope: !1358, file: !692, discriminator: 1)
!1396 = !DILocation(line: 334, column: 15, scope: !1358)
!1397 = !DILocation(line: 334, column: 24, scope: !1358)
!1398 = !DILocation(line: 334, column: 30, scope: !1358)
!1399 = !DILocation(line: 334, column: 3, scope: !1358)
!1400 = !DILocation(line: 333, column: 9, scope: !1401)
!1401 = !DILexicalBlockFile(scope: !1358, file: !692, discriminator: 2)
!1402 = !DILocation(line: 333, column: 9, scope: !1403)
!1403 = !DILexicalBlockFile(scope: !1358, file: !692, discriminator: 3)
!1404 = !DILocation(line: 333, column: 2, scope: !1403)
!1405 = !DILocation(line: 335, column: 1, scope: !1358)
!1406 = distinct !DISubprogram(name: "mode_is_set", scope: !692, file: !692, line: 113, type: !1407, isLocal: true, isDefinition: true, scopeLine: 114, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{!67, !471, !96}
!1409 = !DILocalVariable(name: "str", arg: 1, scope: !1406, file: !692, line: 113, type: !471)
!1410 = !DILocation(line: 113, column: 36, scope: !1406)
!1411 = !DILocalVariable(name: "mode", arg: 2, scope: !1406, file: !692, line: 113, type: !96)
!1412 = !DILocation(line: 113, column: 46, scope: !1406)
!1413 = !DILocalVariable(name: "end", scope: !1406, file: !692, line: 115, type: !95)
!1414 = !DILocation(line: 115, column: 8, scope: !1406)
!1415 = !DILocalVariable(name: "pos", scope: !1406, file: !692, line: 115, type: !95)
!1416 = !DILocation(line: 115, column: 14, scope: !1406)
!1417 = !DILocation(line: 117, column: 2, scope: !1406)
!1418 = distinct !{!1418, !1417}
!1419 = !DILocation(line: 117, column: 10, scope: !1420)
!1420 = !DILexicalBlockFile(scope: !1421, file: !692, discriminator: 1)
!1421 = distinct !DILexicalBlock(scope: !1422, file: !692, line: 117, column: 10)
!1422 = distinct !DILexicalBlock(scope: !1406, file: !692, line: 117, column: 4)
!1423 = !DILocation(line: 117, column: 14, scope: !1420)
!1424 = !DILocation(line: 117, column: 5, scope: !1425)
!1425 = !DILexicalBlockFile(scope: !1426, file: !692, discriminator: 2)
!1426 = distinct !DILexicalBlock(scope: !1421, file: !692, line: 117, column: 3)
!1427 = !DILocation(line: 117, column: 14, scope: !1428)
!1428 = !DILexicalBlockFile(scope: !1429, file: !692, discriminator: 3)
!1429 = distinct !DILexicalBlock(scope: !1421, file: !692, line: 117, column: 12)
!1430 = !DILocation(line: 117, column: 98, scope: !1428)
!1431 = !DILocation(line: 117, column: 115, scope: !1432)
!1432 = !DILexicalBlockFile(scope: !1422, file: !692, discriminator: 4)
!1433 = !DILocation(line: 119, column: 15, scope: !1406)
!1434 = !DILocation(line: 119, column: 8, scope: !1406)
!1435 = !DILocation(line: 119, column: 6, scope: !1406)
!1436 = !DILocation(line: 120, column: 15, scope: !1406)
!1437 = !DILocation(line: 120, column: 20, scope: !1406)
!1438 = !DILocation(line: 120, column: 8, scope: !1406)
!1439 = !DILocation(line: 120, column: 6, scope: !1406)
!1440 = !DILocation(line: 121, column: 9, scope: !1406)
!1441 = !DILocation(line: 121, column: 13, scope: !1406)
!1442 = !DILocation(line: 121, column: 20, scope: !1406)
!1443 = !DILocation(line: 121, column: 24, scope: !1444)
!1444 = !DILexicalBlockFile(scope: !1406, file: !692, discriminator: 1)
!1445 = !DILocation(line: 121, column: 28, scope: !1444)
!1446 = !DILocation(line: 121, column: 36, scope: !1444)
!1447 = !DILocation(line: 121, column: 39, scope: !1448)
!1448 = !DILexicalBlockFile(scope: !1406, file: !692, discriminator: 2)
!1449 = !DILocation(line: 121, column: 45, scope: !1448)
!1450 = !DILocation(line: 121, column: 43, scope: !1448)
!1451 = !DILocation(line: 121, column: 36, scope: !1448)
!1452 = !DILocation(line: 121, column: 20, scope: !1453)
!1453 = !DILexicalBlockFile(scope: !1406, file: !692, discriminator: 3)
!1454 = !DILocation(line: 121, column: 2, scope: !1453)
!1455 = !DILocation(line: 122, column: 1, scope: !1406)
!1456 = distinct !DISubprogram(name: "parse_channel_modes", scope: !692, file: !692, line: 338, type: !1457, isLocal: false, isDefinition: true, scopeLine: 340, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{null, !59, !471, !471, !67}
!1459 = !DILocalVariable(name: "channel", arg: 1, scope: !1456, file: !692, line: 338, type: !59)
!1460 = !DILocation(line: 338, column: 43, scope: !1456)
!1461 = !DILocalVariable(name: "setby", arg: 2, scope: !1456, file: !692, line: 338, type: !471)
!1462 = !DILocation(line: 338, column: 64, scope: !1456)
!1463 = !DILocalVariable(name: "mode", arg: 3, scope: !1456, file: !692, line: 339, type: !471)
!1464 = !DILocation(line: 339, column: 17, scope: !1456)
!1465 = !DILocalVariable(name: "update_key", arg: 4, scope: !1456, file: !692, line: 339, type: !67)
!1466 = !DILocation(line: 339, column: 27, scope: !1456)
!1467 = !DILocalVariable(name: "server", scope: !1456, file: !692, line: 341, type: !76)
!1468 = !DILocation(line: 341, column: 18, scope: !1456)
!1469 = !DILocation(line: 341, column: 27, scope: !1456)
!1470 = !DILocation(line: 341, column: 36, scope: !1456)
!1471 = !DILocalVariable(name: "newmode", scope: !1456, file: !692, line: 342, type: !288)
!1472 = !DILocation(line: 342, column: 18, scope: !1456)
!1473 = !DILocalVariable(name: "dup", scope: !1456, file: !692, line: 343, type: !95)
!1474 = !DILocation(line: 343, column: 8, scope: !1456)
!1475 = !DILocalVariable(name: "modestr", scope: !1456, file: !692, line: 343, type: !95)
!1476 = !DILocation(line: 343, column: 14, scope: !1456)
!1477 = !DILocalVariable(name: "arg", scope: !1456, file: !692, line: 343, type: !95)
!1478 = !DILocation(line: 343, column: 24, scope: !1456)
!1479 = !DILocalVariable(name: "curmode", scope: !1456, file: !692, line: 343, type: !95)
!1480 = !DILocation(line: 343, column: 30, scope: !1456)
!1481 = !DILocalVariable(name: "type", scope: !1456, file: !692, line: 343, type: !96)
!1482 = !DILocation(line: 343, column: 39, scope: !1456)
!1483 = !DILocalVariable(name: "old_key", scope: !1456, file: !692, line: 343, type: !95)
!1484 = !DILocation(line: 343, column: 46, scope: !1456)
!1485 = !DILocalVariable(name: "umode", scope: !1456, file: !692, line: 344, type: !67)
!1486 = !DILocation(line: 344, column: 6, scope: !1456)
!1487 = !DILocation(line: 346, column: 2, scope: !1456)
!1488 = distinct !{!1488, !1487}
!1489 = !DILocation(line: 346, column: 99, scope: !1490)
!1490 = !DILexicalBlockFile(scope: !1491, file: !692, discriminator: 1)
!1491 = distinct !DILexicalBlock(scope: !1492, file: !692, line: 346, column: 10)
!1492 = distinct !DILexicalBlock(scope: !1456, file: !692, line: 346, column: 4)
!1493 = !DILocation(line: 346, column: 74, scope: !1490)
!1494 = !DILocation(line: 346, column: 58, scope: !1490)
!1495 = !DILocation(line: 346, column: 57, scope: !1490)
!1496 = !DILocation(line: 346, column: 32, scope: !1497)
!1497 = !DILexicalBlockFile(scope: !1490, file: !692, discriminator: 7)
!1498 = !DILocation(line: 346, column: 12, scope: !1490)
!1499 = !DILocation(line: 346, column: 10, scope: !1490)
!1500 = !DILocation(line: 346, column: 11, scope: !1501)
!1501 = !DILexicalBlockFile(scope: !1491, file: !692, discriminator: 2)
!1502 = !DILocation(line: 346, column: 10, scope: !1503)
!1503 = !DILexicalBlockFile(scope: !1492, file: !692, discriminator: 3)
!1504 = !DILocation(line: 346, column: 30, scope: !1505)
!1505 = !DILexicalBlockFile(scope: !1506, file: !692, discriminator: 4)
!1506 = distinct !DILexicalBlock(scope: !1491, file: !692, line: 346, column: 28)
!1507 = !DILocation(line: 346, column: 39, scope: !1508)
!1508 = !DILexicalBlockFile(scope: !1509, file: !692, discriminator: 5)
!1509 = distinct !DILexicalBlock(scope: !1491, file: !692, line: 346, column: 37)
!1510 = !DILocation(line: 346, column: 135, scope: !1508)
!1511 = !DILocation(line: 346, column: 146, scope: !1512)
!1512 = !DILexicalBlockFile(scope: !1492, file: !692, discriminator: 6)
!1513 = !DILocation(line: 347, column: 2, scope: !1456)
!1514 = distinct !{!1514, !1513}
!1515 = !DILocation(line: 347, column: 10, scope: !1516)
!1516 = !DILexicalBlockFile(scope: !1517, file: !692, discriminator: 1)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !692, line: 347, column: 10)
!1518 = distinct !DILexicalBlock(scope: !1456, file: !692, line: 347, column: 4)
!1519 = !DILocation(line: 347, column: 15, scope: !1516)
!1520 = !DILocation(line: 347, column: 5, scope: !1521)
!1521 = !DILexicalBlockFile(scope: !1522, file: !692, discriminator: 2)
!1522 = distinct !DILexicalBlock(scope: !1517, file: !692, line: 347, column: 3)
!1523 = !DILocation(line: 347, column: 14, scope: !1524)
!1524 = !DILexicalBlockFile(scope: !1525, file: !692, discriminator: 3)
!1525 = distinct !DILexicalBlock(scope: !1517, file: !692, line: 347, column: 12)
!1526 = !DILocation(line: 347, column: 99, scope: !1524)
!1527 = !DILocation(line: 347, column: 110, scope: !1528)
!1528 = !DILexicalBlockFile(scope: !1518, file: !692, discriminator: 4)
!1529 = !DILocation(line: 349, column: 7, scope: !1456)
!1530 = !DILocation(line: 350, column: 25, scope: !1456)
!1531 = !DILocation(line: 350, column: 34, scope: !1456)
!1532 = !DILocation(line: 350, column: 12, scope: !1456)
!1533 = !DILocation(line: 350, column: 10, scope: !1456)
!1534 = !DILocation(line: 351, column: 12, scope: !1456)
!1535 = !DILocation(line: 351, column: 12, scope: !1536)
!1536 = !DILexicalBlockFile(scope: !1456, file: !692, discriminator: 1)
!1537 = !DILocation(line: 351, column: 40, scope: !1538)
!1538 = !DILexicalBlockFile(scope: !1456, file: !692, discriminator: 2)
!1539 = !DILocation(line: 351, column: 49, scope: !1538)
!1540 = !DILocation(line: 351, column: 31, scope: !1538)
!1541 = !DILocation(line: 351, column: 12, scope: !1538)
!1542 = !DILocation(line: 351, column: 12, scope: !1543)
!1543 = !DILexicalBlockFile(scope: !1456, file: !692, discriminator: 3)
!1544 = !DILocation(line: 351, column: 10, scope: !1543)
!1545 = !DILocation(line: 353, column: 27, scope: !1456)
!1546 = !DILocation(line: 353, column: 18, scope: !1456)
!1547 = !DILocation(line: 353, column: 16, scope: !1456)
!1548 = !DILocation(line: 353, column: 6, scope: !1456)
!1549 = !DILocation(line: 354, column: 12, scope: !1456)
!1550 = !DILocation(line: 354, column: 10, scope: !1456)
!1551 = !DILocation(line: 355, column: 2, scope: !1456)
!1552 = !DILocation(line: 355, column: 10, scope: !1536)
!1553 = !DILocation(line: 355, column: 9, scope: !1536)
!1554 = !DILocation(line: 355, column: 18, scope: !1536)
!1555 = !DILocation(line: 355, column: 2, scope: !1536)
!1556 = !DILocation(line: 356, column: 9, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1558, file: !692, line: 356, column: 7)
!1558 = distinct !DILexicalBlock(scope: !1456, file: !692, line: 355, column: 27)
!1559 = !DILocation(line: 356, column: 8, scope: !1557)
!1560 = !DILocation(line: 356, column: 15, scope: !1557)
!1561 = !DILocation(line: 356, column: 7, scope: !1558)
!1562 = !DILocation(line: 356, column: 62, scope: !1563)
!1563 = !DILexicalBlockFile(scope: !1557, file: !692, discriminator: 1)
!1564 = !DILocation(line: 356, column: 61, scope: !1563)
!1565 = !DILocation(line: 356, column: 40, scope: !1563)
!1566 = !DILocation(line: 356, column: 26, scope: !1563)
!1567 = !DILocation(line: 356, column: 34, scope: !1563)
!1568 = !DILocation(line: 356, column: 71, scope: !1563)
!1569 = !DILocation(line: 356, column: 76, scope: !1563)
!1570 = !DILocation(line: 356, column: 92, scope: !1563)
!1571 = !DILocation(line: 356, column: 131, scope: !1572)
!1572 = !DILexicalBlockFile(scope: !1557, file: !692, discriminator: 2)
!1573 = !DILocation(line: 356, column: 130, scope: !1572)
!1574 = !DILocation(line: 356, column: 109, scope: !1572)
!1575 = !DILocation(line: 356, column: 95, scope: !1572)
!1576 = !DILocation(line: 356, column: 103, scope: !1572)
!1577 = !DILocation(line: 356, column: 140, scope: !1572)
!1578 = !DILocation(line: 356, column: 145, scope: !1572)
!1579 = !DILocation(line: 356, column: 161, scope: !1572)
!1580 = !DILocation(line: 356, column: 200, scope: !1581)
!1581 = !DILexicalBlockFile(scope: !1557, file: !692, discriminator: 3)
!1582 = !DILocation(line: 356, column: 199, scope: !1581)
!1583 = !DILocation(line: 356, column: 178, scope: !1581)
!1584 = !DILocation(line: 356, column: 164, scope: !1581)
!1585 = !DILocation(line: 356, column: 172, scope: !1581)
!1586 = !DILocation(line: 356, column: 209, scope: !1581)
!1587 = !DILocation(line: 356, column: 214, scope: !1581)
!1588 = !DILocation(line: 356, column: 236, scope: !1581)
!1589 = !DILocation(line: 356, column: 275, scope: !1590)
!1590 = !DILexicalBlockFile(scope: !1557, file: !692, discriminator: 4)
!1591 = !DILocation(line: 356, column: 274, scope: !1590)
!1592 = !DILocation(line: 356, column: 253, scope: !1590)
!1593 = !DILocation(line: 356, column: 239, scope: !1590)
!1594 = !DILocation(line: 356, column: 247, scope: !1590)
!1595 = !DILocation(line: 356, column: 284, scope: !1590)
!1596 = !DILocation(line: 356, column: 289, scope: !1590)
!1597 = !DILocation(line: 356, column: 8, scope: !1590)
!1598 = !DILocation(line: 356, column: 345, scope: !1599)
!1599 = !DILexicalBlockFile(scope: !1557, file: !692, discriminator: 5)
!1600 = !DILocation(line: 356, column: 344, scope: !1599)
!1601 = !DILocation(line: 356, column: 323, scope: !1599)
!1602 = !DILocation(line: 356, column: 309, scope: !1599)
!1603 = !DILocation(line: 356, column: 317, scope: !1599)
!1604 = !DILocation(line: 356, column: 354, scope: !1599)
!1605 = !DILocation(line: 356, column: 359, scope: !1599)
!1606 = !DILocation(line: 356, column: 375, scope: !1599)
!1607 = !DILocation(line: 356, column: 414, scope: !1608)
!1608 = !DILexicalBlockFile(scope: !1557, file: !692, discriminator: 6)
!1609 = !DILocation(line: 356, column: 413, scope: !1608)
!1610 = !DILocation(line: 356, column: 392, scope: !1608)
!1611 = !DILocation(line: 356, column: 378, scope: !1608)
!1612 = !DILocation(line: 356, column: 386, scope: !1608)
!1613 = !DILocation(line: 356, column: 423, scope: !1608)
!1614 = !DILocation(line: 356, column: 428, scope: !1608)
!1615 = !DILocation(line: 356, column: 444, scope: !1608)
!1616 = !DILocation(line: 356, column: 483, scope: !1617)
!1617 = !DILexicalBlockFile(scope: !1557, file: !692, discriminator: 7)
!1618 = !DILocation(line: 356, column: 482, scope: !1617)
!1619 = !DILocation(line: 356, column: 461, scope: !1617)
!1620 = !DILocation(line: 356, column: 447, scope: !1617)
!1621 = !DILocation(line: 356, column: 455, scope: !1617)
!1622 = !DILocation(line: 356, column: 492, scope: !1617)
!1623 = !DILocation(line: 356, column: 497, scope: !1617)
!1624 = !DILocation(line: 356, column: 7, scope: !1617)
!1625 = !DILocation(line: 359, column: 10, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1557, file: !692, line: 356, column: 521)
!1627 = !DILocation(line: 359, column: 8, scope: !1626)
!1628 = !DILocation(line: 360, column: 3, scope: !1626)
!1629 = !DILocation(line: 361, column: 8, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1557, file: !692, line: 360, column: 10)
!1631 = !DILocation(line: 364, column: 12, scope: !1558)
!1632 = !DILocation(line: 364, column: 11, scope: !1558)
!1633 = !DILocation(line: 364, column: 3, scope: !1558)
!1634 = !DILocation(line: 367, column: 12, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1558, file: !692, line: 364, column: 21)
!1636 = !DILocation(line: 367, column: 11, scope: !1635)
!1637 = !DILocation(line: 367, column: 9, scope: !1635)
!1638 = !DILocation(line: 368, column: 4, scope: !1635)
!1639 = !DILocation(line: 370, column: 29, scope: !1635)
!1640 = !DILocation(line: 370, column: 28, scope: !1635)
!1641 = !DILocation(line: 370, column: 12, scope: !1635)
!1642 = !DILocation(line: 370, column: 10, scope: !1635)
!1643 = !DILocation(line: 371, column: 22, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1635, file: !692, line: 371, column: 8)
!1645 = !DILocation(line: 371, column: 8, scope: !1644)
!1646 = !DILocation(line: 371, column: 16, scope: !1644)
!1647 = !DILocation(line: 371, column: 29, scope: !1644)
!1648 = !DILocation(line: 371, column: 34, scope: !1644)
!1649 = !DILocation(line: 371, column: 8, scope: !1635)
!1650 = !DILocation(line: 372, column: 19, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1644, file: !692, line: 371, column: 42)
!1652 = !DILocation(line: 372, column: 5, scope: !1651)
!1653 = !DILocation(line: 372, column: 13, scope: !1651)
!1654 = !DILocation(line: 372, column: 26, scope: !1651)
!1655 = !DILocation(line: 372, column: 31, scope: !1651)
!1656 = !DILocation(line: 372, column: 40, scope: !1651)
!1657 = !DILocation(line: 373, column: 10, scope: !1651)
!1658 = !DILocation(line: 373, column: 17, scope: !1651)
!1659 = !DILocation(line: 373, column: 16, scope: !1651)
!1660 = !DILocation(line: 373, column: 26, scope: !1651)
!1661 = !DILocation(line: 374, column: 10, scope: !1651)
!1662 = !DILocation(line: 375, column: 4, scope: !1651)
!1663 = !DILocation(line: 377, column: 18, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1644, file: !692, line: 375, column: 11)
!1665 = !DILocation(line: 377, column: 27, scope: !1664)
!1666 = !DILocation(line: 377, column: 34, scope: !1664)
!1667 = !DILocation(line: 377, column: 41, scope: !1664)
!1668 = !DILocation(line: 377, column: 40, scope: !1664)
!1669 = !DILocation(line: 378, column: 11, scope: !1664)
!1670 = !DILocation(line: 378, column: 16, scope: !1664)
!1671 = !DILocation(line: 377, column: 5, scope: !1664)
!1672 = !DILocation(line: 380, column: 3, scope: !1635)
!1673 = !DILocation(line: 382, column: 10, scope: !1558)
!1674 = !DILocation(line: 355, column: 2, scope: !1538)
!1675 = distinct !{!1675, !1551}
!1676 = !DILocation(line: 384, column: 9, scope: !1456)
!1677 = !DILocation(line: 384, column: 2, scope: !1456)
!1678 = !DILocation(line: 386, column: 6, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1456, file: !692, line: 386, column: 6)
!1680 = !DILocation(line: 386, column: 15, scope: !1679)
!1681 = !DILocation(line: 386, column: 19, scope: !1679)
!1682 = !DILocation(line: 386, column: 26, scope: !1679)
!1683 = !DILocation(line: 387, column: 13, scope: !1679)
!1684 = !DILocation(line: 387, column: 22, scope: !1679)
!1685 = !DILocation(line: 387, column: 6, scope: !1679)
!1686 = !DILocation(line: 387, column: 33, scope: !1679)
!1687 = !DILocation(line: 387, column: 40, scope: !1679)
!1688 = !DILocation(line: 388, column: 13, scope: !1679)
!1689 = !DILocation(line: 388, column: 22, scope: !1679)
!1690 = !DILocation(line: 388, column: 6, scope: !1679)
!1691 = !DILocation(line: 388, column: 32, scope: !1679)
!1692 = !DILocation(line: 386, column: 6, scope: !1536)
!1693 = !DILocation(line: 391, column: 10, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1679, file: !692, line: 388, column: 40)
!1695 = !DILocation(line: 391, column: 19, scope: !1694)
!1696 = !DILocation(line: 391, column: 3, scope: !1694)
!1697 = !DILocation(line: 392, column: 3, scope: !1694)
!1698 = !DILocation(line: 392, column: 12, scope: !1694)
!1699 = !DILocation(line: 392, column: 16, scope: !1694)
!1700 = !DILocation(line: 393, column: 2, scope: !1694)
!1701 = !DILocation(line: 393, column: 14, scope: !1702)
!1702 = !DILexicalBlockFile(scope: !1703, file: !692, discriminator: 1)
!1703 = distinct !DILexicalBlock(scope: !1679, file: !692, line: 393, column: 13)
!1704 = !DILocation(line: 393, column: 25, scope: !1702)
!1705 = !DILocation(line: 393, column: 28, scope: !1706)
!1706 = !DILexicalBlockFile(scope: !1703, file: !692, discriminator: 2)
!1707 = !DILocation(line: 393, column: 36, scope: !1706)
!1708 = !DILocation(line: 393, column: 13, scope: !1706)
!1709 = !DILocation(line: 395, column: 10, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1703, file: !692, line: 393, column: 44)
!1711 = !DILocation(line: 395, column: 19, scope: !1710)
!1712 = !DILocation(line: 395, column: 3, scope: !1710)
!1713 = !DILocation(line: 396, column: 18, scope: !1710)
!1714 = !DILocation(line: 396, column: 3, scope: !1710)
!1715 = !DILocation(line: 396, column: 12, scope: !1710)
!1716 = !DILocation(line: 396, column: 16, scope: !1710)
!1717 = !DILocation(line: 397, column: 16, scope: !1710)
!1718 = !DILocation(line: 397, column: 25, scope: !1710)
!1719 = !DILocation(line: 397, column: 33, scope: !1710)
!1720 = !DILocation(line: 397, column: 52, scope: !1710)
!1721 = !DILocation(line: 397, column: 3, scope: !1710)
!1722 = !DILocation(line: 398, column: 11, scope: !1710)
!1723 = !DILocation(line: 399, column: 2, scope: !1710)
!1724 = !DILocation(line: 401, column: 16, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1456, file: !692, line: 401, column: 6)
!1726 = !DILocation(line: 401, column: 25, scope: !1725)
!1727 = !DILocation(line: 401, column: 30, scope: !1725)
!1728 = !DILocation(line: 401, column: 39, scope: !1725)
!1729 = !DILocation(line: 401, column: 6, scope: !1725)
!1730 = !DILocation(line: 401, column: 45, scope: !1725)
!1731 = !DILocation(line: 401, column: 6, scope: !1456)
!1732 = !DILocation(line: 402, column: 10, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1725, file: !692, line: 401, column: 51)
!1734 = !DILocation(line: 402, column: 19, scope: !1733)
!1735 = !DILocation(line: 402, column: 3, scope: !1733)
!1736 = !DILocation(line: 403, column: 28, scope: !1733)
!1737 = !DILocation(line: 403, column: 37, scope: !1733)
!1738 = !DILocation(line: 403, column: 19, scope: !1733)
!1739 = !DILocation(line: 403, column: 3, scope: !1733)
!1740 = !DILocation(line: 403, column: 12, scope: !1733)
!1741 = !DILocation(line: 403, column: 17, scope: !1733)
!1742 = !DILocation(line: 405, column: 42, scope: !1733)
!1743 = !DILocation(line: 405, column: 51, scope: !1733)
!1744 = !DILocation(line: 405, column: 3, scope: !1733)
!1745 = !DILocation(line: 406, column: 2, scope: !1733)
!1746 = !DILocation(line: 408, column: 16, scope: !1456)
!1747 = !DILocation(line: 408, column: 2, scope: !1456)
!1748 = !DILocation(line: 409, column: 9, scope: !1456)
!1749 = !DILocation(line: 409, column: 2, scope: !1456)
!1750 = !DILocation(line: 410, column: 1, scope: !1456)
!1751 = !DILocation(line: 410, column: 1, scope: !1536)
!1752 = distinct !DISubprogram(name: "modes_join", scope: !692, file: !692, line: 415, type: !1753, isLocal: false, isDefinition: true, scopeLine: 417, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{!95, !76, !471, !471, !67}
!1755 = !DILocalVariable(name: "server", arg: 1, scope: !1752, file: !692, line: 415, type: !76)
!1756 = !DILocation(line: 415, column: 34, scope: !1752)
!1757 = !DILocalVariable(name: "old", arg: 2, scope: !1752, file: !692, line: 415, type: !471)
!1758 = !DILocation(line: 415, column: 54, scope: !1752)
!1759 = !DILocalVariable(name: "mode", arg: 3, scope: !1752, file: !692, line: 416, type: !471)
!1760 = !DILocation(line: 416, column: 16, scope: !1752)
!1761 = !DILocalVariable(name: "channel", arg: 4, scope: !1752, file: !692, line: 416, type: !67)
!1762 = !DILocation(line: 416, column: 26, scope: !1752)
!1763 = !DILocalVariable(name: "newmode", scope: !1752, file: !692, line: 418, type: !288)
!1764 = !DILocation(line: 418, column: 11, scope: !1752)
!1765 = !DILocalVariable(name: "dup", scope: !1752, file: !692, line: 419, type: !95)
!1766 = !DILocation(line: 419, column: 8, scope: !1752)
!1767 = !DILocalVariable(name: "modestr", scope: !1752, file: !692, line: 419, type: !95)
!1768 = !DILocation(line: 419, column: 14, scope: !1752)
!1769 = !DILocalVariable(name: "curmode", scope: !1752, file: !692, line: 419, type: !95)
!1770 = !DILocation(line: 419, column: 24, scope: !1752)
!1771 = !DILocalVariable(name: "type", scope: !1752, file: !692, line: 419, type: !96)
!1772 = !DILocation(line: 419, column: 33, scope: !1752)
!1773 = !DILocation(line: 421, column: 9, scope: !1752)
!1774 = distinct !{!1774, !1773}
!1775 = !DILocation(line: 421, column: 17, scope: !1776)
!1776 = !DILexicalBlockFile(scope: !1777, file: !692, discriminator: 1)
!1777 = distinct !DILexicalBlock(scope: !1778, file: !692, line: 421, column: 17)
!1778 = distinct !DILexicalBlock(scope: !1752, file: !692, line: 421, column: 11)
!1779 = !DILocation(line: 421, column: 22, scope: !1776)
!1780 = !DILocation(line: 421, column: 12, scope: !1781)
!1781 = !DILexicalBlockFile(scope: !1782, file: !692, discriminator: 2)
!1782 = distinct !DILexicalBlock(scope: !1777, file: !692, line: 421, column: 10)
!1783 = !DILocation(line: 421, column: 21, scope: !1784)
!1784 = !DILexicalBlockFile(scope: !1785, file: !692, discriminator: 3)
!1785 = distinct !DILexicalBlock(scope: !1777, file: !692, line: 421, column: 19)
!1786 = !DILocation(line: 421, column: 106, scope: !1784)
!1787 = !DILocation(line: 421, column: 14, scope: !1788)
!1788 = !DILexicalBlockFile(scope: !1778, file: !692, discriminator: 4)
!1789 = !DILocation(line: 423, column: 7, scope: !1752)
!1790 = !DILocation(line: 424, column: 25, scope: !1752)
!1791 = !DILocation(line: 424, column: 12, scope: !1752)
!1792 = !DILocation(line: 424, column: 10, scope: !1752)
!1793 = !DILocation(line: 426, column: 27, scope: !1752)
!1794 = !DILocation(line: 426, column: 18, scope: !1752)
!1795 = !DILocation(line: 426, column: 16, scope: !1752)
!1796 = !DILocation(line: 426, column: 6, scope: !1752)
!1797 = !DILocation(line: 427, column: 12, scope: !1752)
!1798 = !DILocation(line: 427, column: 10, scope: !1752)
!1799 = !DILocation(line: 428, column: 2, scope: !1752)
!1800 = !DILocation(line: 428, column: 10, scope: !1801)
!1801 = !DILexicalBlockFile(scope: !1752, file: !692, discriminator: 1)
!1802 = !DILocation(line: 428, column: 9, scope: !1801)
!1803 = !DILocation(line: 428, column: 18, scope: !1801)
!1804 = !DILocation(line: 428, column: 26, scope: !1801)
!1805 = !DILocation(line: 428, column: 30, scope: !1806)
!1806 = !DILexicalBlockFile(scope: !1752, file: !692, discriminator: 2)
!1807 = !DILocation(line: 428, column: 29, scope: !1806)
!1808 = !DILocation(line: 428, column: 38, scope: !1806)
!1809 = !DILocation(line: 428, column: 2, scope: !1810)
!1810 = !DILexicalBlockFile(scope: !1752, file: !692, discriminator: 3)
!1811 = !DILocation(line: 429, column: 8, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1813, file: !692, line: 429, column: 7)
!1813 = distinct !DILexicalBlock(scope: !1752, file: !692, line: 428, column: 46)
!1814 = !DILocation(line: 429, column: 7, scope: !1812)
!1815 = !DILocation(line: 429, column: 16, scope: !1812)
!1816 = !DILocation(line: 429, column: 23, scope: !1812)
!1817 = !DILocation(line: 429, column: 27, scope: !1818)
!1818 = !DILexicalBlockFile(scope: !1812, file: !692, discriminator: 1)
!1819 = !DILocation(line: 429, column: 26, scope: !1818)
!1820 = !DILocation(line: 429, column: 35, scope: !1818)
!1821 = !DILocation(line: 429, column: 7, scope: !1818)
!1822 = !DILocation(line: 430, column: 12, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1812, file: !692, line: 429, column: 43)
!1824 = !DILocation(line: 430, column: 11, scope: !1823)
!1825 = !DILocation(line: 430, column: 9, scope: !1823)
!1826 = !DILocation(line: 431, column: 11, scope: !1823)
!1827 = !DILocation(line: 432, column: 4, scope: !1823)
!1828 = distinct !{!1828, !1799}
!1829 = !DILocation(line: 435, column: 8, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1813, file: !692, line: 435, column: 7)
!1831 = !DILocation(line: 435, column: 16, scope: !1830)
!1832 = !DILocation(line: 435, column: 22, scope: !1833)
!1833 = !DILexicalBlockFile(scope: !1830, file: !692, discriminator: 1)
!1834 = !DILocation(line: 435, column: 21, scope: !1833)
!1835 = !DILocation(line: 435, column: 28, scope: !1833)
!1836 = !DILocation(line: 435, column: 7, scope: !1833)
!1837 = !DILocation(line: 435, column: 75, scope: !1838)
!1838 = !DILexicalBlockFile(scope: !1830, file: !692, discriminator: 2)
!1839 = !DILocation(line: 435, column: 74, scope: !1838)
!1840 = !DILocation(line: 435, column: 53, scope: !1838)
!1841 = !DILocation(line: 435, column: 39, scope: !1838)
!1842 = !DILocation(line: 435, column: 47, scope: !1838)
!1843 = !DILocation(line: 435, column: 84, scope: !1838)
!1844 = !DILocation(line: 435, column: 89, scope: !1838)
!1845 = !DILocation(line: 435, column: 105, scope: !1838)
!1846 = !DILocation(line: 435, column: 144, scope: !1847)
!1847 = !DILexicalBlockFile(scope: !1830, file: !692, discriminator: 3)
!1848 = !DILocation(line: 435, column: 143, scope: !1847)
!1849 = !DILocation(line: 435, column: 122, scope: !1847)
!1850 = !DILocation(line: 435, column: 108, scope: !1847)
!1851 = !DILocation(line: 435, column: 116, scope: !1847)
!1852 = !DILocation(line: 435, column: 153, scope: !1847)
!1853 = !DILocation(line: 435, column: 158, scope: !1847)
!1854 = !DILocation(line: 435, column: 174, scope: !1847)
!1855 = !DILocation(line: 435, column: 213, scope: !1856)
!1856 = !DILexicalBlockFile(scope: !1830, file: !692, discriminator: 4)
!1857 = !DILocation(line: 435, column: 212, scope: !1856)
!1858 = !DILocation(line: 435, column: 191, scope: !1856)
!1859 = !DILocation(line: 435, column: 177, scope: !1856)
!1860 = !DILocation(line: 435, column: 185, scope: !1856)
!1861 = !DILocation(line: 435, column: 222, scope: !1856)
!1862 = !DILocation(line: 435, column: 227, scope: !1856)
!1863 = !DILocation(line: 435, column: 249, scope: !1856)
!1864 = !DILocation(line: 435, column: 288, scope: !1865)
!1865 = !DILexicalBlockFile(scope: !1830, file: !692, discriminator: 5)
!1866 = !DILocation(line: 435, column: 287, scope: !1865)
!1867 = !DILocation(line: 435, column: 266, scope: !1865)
!1868 = !DILocation(line: 435, column: 252, scope: !1865)
!1869 = !DILocation(line: 435, column: 260, scope: !1865)
!1870 = !DILocation(line: 435, column: 297, scope: !1865)
!1871 = !DILocation(line: 435, column: 302, scope: !1865)
!1872 = !DILocation(line: 435, column: 21, scope: !1865)
!1873 = !DILocation(line: 435, column: 358, scope: !1874)
!1874 = !DILexicalBlockFile(scope: !1830, file: !692, discriminator: 6)
!1875 = !DILocation(line: 435, column: 357, scope: !1874)
!1876 = !DILocation(line: 435, column: 336, scope: !1874)
!1877 = !DILocation(line: 435, column: 322, scope: !1874)
!1878 = !DILocation(line: 435, column: 330, scope: !1874)
!1879 = !DILocation(line: 435, column: 367, scope: !1874)
!1880 = !DILocation(line: 435, column: 372, scope: !1874)
!1881 = !DILocation(line: 435, column: 388, scope: !1874)
!1882 = !DILocation(line: 435, column: 427, scope: !1883)
!1883 = !DILexicalBlockFile(scope: !1830, file: !692, discriminator: 7)
!1884 = !DILocation(line: 435, column: 426, scope: !1883)
!1885 = !DILocation(line: 435, column: 405, scope: !1883)
!1886 = !DILocation(line: 435, column: 391, scope: !1883)
!1887 = !DILocation(line: 435, column: 399, scope: !1883)
!1888 = !DILocation(line: 435, column: 436, scope: !1883)
!1889 = !DILocation(line: 435, column: 441, scope: !1883)
!1890 = !DILocation(line: 435, column: 457, scope: !1883)
!1891 = !DILocation(line: 435, column: 496, scope: !1892)
!1892 = !DILexicalBlockFile(scope: !1830, file: !692, discriminator: 8)
!1893 = !DILocation(line: 435, column: 495, scope: !1892)
!1894 = !DILocation(line: 435, column: 474, scope: !1892)
!1895 = !DILocation(line: 435, column: 460, scope: !1892)
!1896 = !DILocation(line: 435, column: 468, scope: !1892)
!1897 = !DILocation(line: 435, column: 505, scope: !1892)
!1898 = !DILocation(line: 435, column: 510, scope: !1892)
!1899 = !DILocation(line: 435, column: 7, scope: !1892)
!1900 = !DILocation(line: 436, column: 13, scope: !1830)
!1901 = !DILocation(line: 436, column: 21, scope: !1830)
!1902 = !DILocation(line: 436, column: 30, scope: !1830)
!1903 = !DILocation(line: 436, column: 37, scope: !1830)
!1904 = !DILocation(line: 436, column: 36, scope: !1830)
!1905 = !DILocation(line: 436, column: 47, scope: !1830)
!1906 = !DILocation(line: 436, column: 46, scope: !1830)
!1907 = !DILocation(line: 436, column: 4, scope: !1830)
!1908 = !DILocation(line: 438, column: 17, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1830, file: !692, line: 437, column: 8)
!1910 = !DILocation(line: 438, column: 25, scope: !1909)
!1911 = !DILocation(line: 438, column: 34, scope: !1909)
!1912 = !DILocation(line: 438, column: 41, scope: !1909)
!1913 = !DILocation(line: 438, column: 40, scope: !1909)
!1914 = !DILocation(line: 439, column: 10, scope: !1909)
!1915 = !DILocation(line: 439, column: 36, scope: !1909)
!1916 = !DILocation(line: 439, column: 35, scope: !1909)
!1917 = !DILocation(line: 438, column: 4, scope: !1909)
!1918 = !DILocation(line: 442, column: 10, scope: !1813)
!1919 = !DILocation(line: 428, column: 2, scope: !1920)
!1920 = !DILexicalBlockFile(scope: !1752, file: !692, discriminator: 4)
!1921 = !DILocation(line: 444, column: 9, scope: !1752)
!1922 = !DILocation(line: 444, column: 2, scope: !1752)
!1923 = !DILocation(line: 446, column: 12, scope: !1752)
!1924 = !DILocation(line: 446, column: 21, scope: !1752)
!1925 = !DILocation(line: 446, column: 10, scope: !1752)
!1926 = !DILocation(line: 447, column: 16, scope: !1752)
!1927 = !DILocation(line: 447, column: 2, scope: !1752)
!1928 = !DILocation(line: 448, column: 9, scope: !1752)
!1929 = !DILocation(line: 448, column: 2, scope: !1752)
!1930 = !DILocation(line: 449, column: 1, scope: !1752)
!1931 = distinct !DISubprogram(name: "channel_set_singlemode", scope: !692, file: !692, line: 551, type: !1932, isLocal: false, isDefinition: true, scopeLine: 553, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{null, !59, !471, !471}
!1934 = !DILocalVariable(name: "channel", arg: 1, scope: !1931, file: !692, line: 551, type: !59)
!1935 = !DILocation(line: 551, column: 46, scope: !1931)
!1936 = !DILocalVariable(name: "nicks", arg: 2, scope: !1931, file: !692, line: 551, type: !471)
!1937 = !DILocation(line: 551, column: 67, scope: !1931)
!1938 = !DILocalVariable(name: "mode", arg: 3, scope: !1931, file: !692, line: 552, type: !471)
!1939 = !DILocation(line: 552, column: 20, scope: !1931)
!1940 = !DILocalVariable(name: "str", scope: !1931, file: !692, line: 554, type: !288)
!1941 = !DILocation(line: 554, column: 11, scope: !1931)
!1942 = !DILocalVariable(name: "num", scope: !1931, file: !692, line: 555, type: !67)
!1943 = !DILocation(line: 555, column: 6, scope: !1931)
!1944 = !DILocalVariable(name: "modepos", scope: !1931, file: !692, line: 555, type: !67)
!1945 = !DILocation(line: 555, column: 11, scope: !1931)
!1946 = !DILocalVariable(name: "nick", scope: !1931, file: !692, line: 556, type: !485)
!1947 = !DILocation(line: 556, column: 9, scope: !1931)
!1948 = !DILocalVariable(name: "nicklist", scope: !1931, file: !692, line: 556, type: !485)
!1949 = !DILocation(line: 556, column: 17, scope: !1931)
!1950 = !DILocation(line: 558, column: 2, scope: !1931)
!1951 = distinct !{!1951, !1950}
!1952 = !DILocation(line: 558, column: 99, scope: !1953)
!1953 = !DILexicalBlockFile(scope: !1954, file: !692, discriminator: 1)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !692, line: 558, column: 10)
!1955 = distinct !DILexicalBlock(scope: !1931, file: !692, line: 558, column: 4)
!1956 = !DILocation(line: 558, column: 74, scope: !1953)
!1957 = !DILocation(line: 558, column: 58, scope: !1953)
!1958 = !DILocation(line: 558, column: 57, scope: !1953)
!1959 = !DILocation(line: 558, column: 32, scope: !1960)
!1960 = !DILexicalBlockFile(scope: !1953, file: !692, discriminator: 7)
!1961 = !DILocation(line: 558, column: 12, scope: !1953)
!1962 = !DILocation(line: 558, column: 10, scope: !1953)
!1963 = !DILocation(line: 558, column: 11, scope: !1964)
!1964 = !DILexicalBlockFile(scope: !1954, file: !692, discriminator: 2)
!1965 = !DILocation(line: 558, column: 10, scope: !1966)
!1966 = !DILexicalBlockFile(scope: !1955, file: !692, discriminator: 3)
!1967 = !DILocation(line: 558, column: 30, scope: !1968)
!1968 = !DILexicalBlockFile(scope: !1969, file: !692, discriminator: 4)
!1969 = distinct !DILexicalBlock(scope: !1954, file: !692, line: 558, column: 28)
!1970 = !DILocation(line: 558, column: 39, scope: !1971)
!1971 = !DILexicalBlockFile(scope: !1972, file: !692, discriminator: 5)
!1972 = distinct !DILexicalBlock(scope: !1954, file: !692, line: 558, column: 37)
!1973 = !DILocation(line: 558, column: 135, scope: !1971)
!1974 = !DILocation(line: 558, column: 146, scope: !1975)
!1975 = !DILexicalBlockFile(scope: !1955, file: !692, discriminator: 6)
!1976 = !DILocation(line: 559, column: 2, scope: !1931)
!1977 = distinct !{!1977, !1976}
!1978 = !DILocation(line: 559, column: 10, scope: !1979)
!1979 = !DILexicalBlockFile(scope: !1980, file: !692, discriminator: 1)
!1980 = distinct !DILexicalBlock(scope: !1981, file: !692, line: 559, column: 10)
!1981 = distinct !DILexicalBlock(scope: !1931, file: !692, line: 559, column: 4)
!1982 = !DILocation(line: 559, column: 16, scope: !1979)
!1983 = !DILocation(line: 559, column: 1, scope: !1979)
!1984 = !DILocation(line: 559, column: 4, scope: !1985)
!1985 = !DILexicalBlockFile(scope: !1980, file: !692, discriminator: 2)
!1986 = !DILocation(line: 559, column: 9, scope: !1985)
!1987 = !DILocation(line: 559, column: 10, scope: !1985)
!1988 = !DILocation(line: 559, column: 5, scope: !1989)
!1989 = !DILexicalBlockFile(scope: !1990, file: !692, discriminator: 3)
!1990 = distinct !DILexicalBlock(scope: !1980, file: !692, line: 559, column: 3)
!1991 = !DILocation(line: 559, column: 14, scope: !1992)
!1992 = !DILexicalBlockFile(scope: !1993, file: !692, discriminator: 4)
!1993 = distinct !DILexicalBlock(scope: !1980, file: !692, line: 559, column: 12)
!1994 = !DILocation(line: 559, column: 116, scope: !1992)
!1995 = !DILocation(line: 559, column: 127, scope: !1996)
!1996 = !DILexicalBlockFile(scope: !1981, file: !692, discriminator: 5)
!1997 = !DILocation(line: 560, column: 7, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1931, file: !692, line: 560, column: 6)
!1999 = !DILocation(line: 560, column: 6, scope: !1998)
!2000 = !DILocation(line: 560, column: 13, scope: !1998)
!2001 = !DILocation(line: 560, column: 6, scope: !1931)
!2002 = !DILocation(line: 560, column: 22, scope: !2003)
!2003 = !DILexicalBlockFile(scope: !1998, file: !692, discriminator: 1)
!2004 = !DILocation(line: 562, column: 16, scope: !1931)
!2005 = !DILocation(line: 562, column: 6, scope: !1931)
!2006 = !DILocation(line: 563, column: 8, scope: !1931)
!2007 = !DILocation(line: 563, column: 6, scope: !1931)
!2008 = !DILocation(line: 565, column: 24, scope: !1931)
!2009 = !DILocation(line: 565, column: 13, scope: !1931)
!2010 = !DILocation(line: 565, column: 11, scope: !1931)
!2011 = !DILocation(line: 566, column: 14, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !1931, file: !692, line: 566, column: 2)
!2013 = !DILocation(line: 566, column: 12, scope: !2012)
!2014 = !DILocation(line: 566, column: 7, scope: !2012)
!2015 = !DILocation(line: 566, column: 25, scope: !2016)
!2016 = !DILexicalBlockFile(scope: !2017, file: !692, discriminator: 1)
!2017 = distinct !DILexicalBlock(scope: !2012, file: !692, line: 566, column: 2)
!2018 = !DILocation(line: 566, column: 24, scope: !2016)
!2019 = !DILocation(line: 566, column: 30, scope: !2016)
!2020 = !DILocation(line: 566, column: 2, scope: !2016)
!2021 = !DILocation(line: 567, column: 9, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2023, file: !692, line: 567, column: 7)
!2023 = distinct !DILexicalBlock(scope: !2017, file: !692, line: 566, column: 46)
!2024 = !DILocation(line: 567, column: 8, scope: !2022)
!2025 = !DILocation(line: 567, column: 7, scope: !2022)
!2026 = !DILocation(line: 567, column: 14, scope: !2022)
!2027 = !DILocation(line: 567, column: 7, scope: !2023)
!2028 = !DILocation(line: 568, column: 4, scope: !2022)
!2029 = !DILocation(line: 570, column: 7, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2023, file: !692, line: 570, column: 7)
!2031 = !DILocation(line: 570, column: 11, scope: !2030)
!2032 = !DILocation(line: 570, column: 7, scope: !2023)
!2033 = !DILocation(line: 572, column: 20, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !2030, file: !692, line: 571, column: 3)
!2035 = !DILocation(line: 573, column: 7, scope: !2034)
!2036 = !DILocation(line: 573, column: 16, scope: !2034)
!2037 = !DILocation(line: 573, column: 22, scope: !2034)
!2038 = !DILocation(line: 572, column: 4, scope: !2034)
!2039 = !DILocation(line: 574, column: 14, scope: !2034)
!2040 = !DILocation(line: 574, column: 19, scope: !2034)
!2041 = !DILocation(line: 574, column: 12, scope: !2034)
!2042 = !DILocation(line: 575, column: 3, scope: !2034)
!2043 = !DILocation(line: 577, column: 20, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2030, file: !692, line: 575, column: 10)
!2045 = !DILocation(line: 577, column: 25, scope: !2044)
!2046 = !DILocation(line: 577, column: 34, scope: !2044)
!2047 = !DILocation(line: 577, column: 4, scope: !2044)
!2048 = !DILocation(line: 580, column: 26, scope: !2023)
!2049 = !DILocation(line: 580, column: 39, scope: !2023)
!2050 = !DILocation(line: 580, column: 38, scope: !2023)
!2051 = !DILocation(line: 580, column: 3, scope: !2023)
!2052 = !DILocation(line: 582, column: 7, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2023, file: !692, line: 582, column: 7)
!2054 = !DILocation(line: 582, column: 16, scope: !2053)
!2055 = !DILocation(line: 582, column: 25, scope: !2053)
!2056 = !DILocation(line: 582, column: 33, scope: !2053)
!2057 = !DILocation(line: 582, column: 13, scope: !2053)
!2058 = !DILocation(line: 582, column: 7, scope: !2023)
!2059 = !DILocation(line: 584, column: 17, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2053, file: !692, line: 582, column: 51)
!2061 = !DILocation(line: 584, column: 26, scope: !2060)
!2062 = !DILocation(line: 584, column: 34, scope: !2060)
!2063 = !DILocation(line: 584, column: 39, scope: !2060)
!2064 = !DILocation(line: 584, column: 4, scope: !2060)
!2065 = !DILocation(line: 585, column: 8, scope: !2060)
!2066 = !DILocation(line: 586, column: 3, scope: !2060)
!2067 = !DILocation(line: 587, column: 2, scope: !2023)
!2068 = !DILocation(line: 566, column: 42, scope: !2069)
!2069 = !DILexicalBlockFile(scope: !2017, file: !692, discriminator: 2)
!2070 = !DILocation(line: 566, column: 2, scope: !2069)
!2071 = distinct !{!2071, !2072}
!2072 = !DILocation(line: 566, column: 2, scope: !1931)
!2073 = !DILocation(line: 588, column: 6, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !1931, file: !692, line: 588, column: 6)
!2075 = !DILocation(line: 588, column: 10, scope: !2074)
!2076 = !DILocation(line: 588, column: 6, scope: !1931)
!2077 = !DILocation(line: 588, column: 28, scope: !2078)
!2078 = !DILexicalBlockFile(scope: !2074, file: !692, discriminator: 1)
!2079 = !DILocation(line: 588, column: 37, scope: !2078)
!2080 = !DILocation(line: 588, column: 45, scope: !2078)
!2081 = !DILocation(line: 588, column: 50, scope: !2078)
!2082 = !DILocation(line: 588, column: 15, scope: !2078)
!2083 = !DILocation(line: 590, column: 13, scope: !1931)
!2084 = !DILocation(line: 590, column: 2, scope: !1931)
!2085 = !DILocation(line: 591, column: 16, scope: !1931)
!2086 = !DILocation(line: 591, column: 2, scope: !1931)
!2087 = !DILocation(line: 592, column: 1, scope: !1931)
!2088 = !DILocation(line: 592, column: 1, scope: !2089)
!2089 = !DILexicalBlockFile(scope: !1931, file: !692, discriminator: 1)
!2090 = distinct !DISubprogram(name: "channel_set_mode", scope: !692, file: !692, line: 594, type: !2091, isLocal: false, isDefinition: true, scopeLine: 596, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{null, !76, !471, !471}
!2093 = !DILocalVariable(name: "server", arg: 1, scope: !2090, file: !692, line: 594, type: !76)
!2094 = !DILocation(line: 594, column: 39, scope: !2090)
!2095 = !DILocalVariable(name: "channel", arg: 2, scope: !2090, file: !692, line: 594, type: !471)
!2096 = !DILocation(line: 594, column: 59, scope: !2090)
!2097 = !DILocalVariable(name: "mode", arg: 3, scope: !2090, file: !692, line: 595, type: !471)
!2098 = !DILocation(line: 595, column: 21, scope: !2090)
!2099 = !DILocalVariable(name: "chanrec", scope: !2090, file: !692, line: 597, type: !59)
!2100 = !DILocation(line: 597, column: 19, scope: !2090)
!2101 = !DILocalVariable(name: "tmode", scope: !2090, file: !692, line: 598, type: !288)
!2102 = !DILocation(line: 598, column: 11, scope: !2090)
!2103 = !DILocalVariable(name: "targs", scope: !2090, file: !692, line: 598, type: !288)
!2104 = !DILocation(line: 598, column: 19, scope: !2090)
!2105 = !DILocalVariable(name: "modestr", scope: !2090, file: !692, line: 599, type: !95)
!2106 = !DILocation(line: 599, column: 8, scope: !2090)
!2107 = !DILocalVariable(name: "curmode", scope: !2090, file: !692, line: 599, type: !95)
!2108 = !DILocation(line: 599, column: 18, scope: !2090)
!2109 = !DILocalVariable(name: "orig", scope: !2090, file: !692, line: 599, type: !95)
!2110 = !DILocation(line: 599, column: 28, scope: !2090)
!2111 = !DILocalVariable(name: "type", scope: !2090, file: !692, line: 599, type: !96)
!2112 = !DILocation(line: 599, column: 34, scope: !2090)
!2113 = !DILocalVariable(name: "prevtype", scope: !2090, file: !692, line: 599, type: !96)
!2114 = !DILocation(line: 599, column: 40, scope: !2090)
!2115 = !DILocalVariable(name: "count", scope: !2090, file: !692, line: 600, type: !67)
!2116 = !DILocation(line: 600, column: 6, scope: !2090)
!2117 = !DILocation(line: 602, column: 2, scope: !2090)
!2118 = distinct !{!2118, !2117}
!2119 = !DILocation(line: 602, column: 90, scope: !2120)
!2120 = !DILexicalBlockFile(scope: !2121, file: !692, discriminator: 1)
!2121 = distinct !DILexicalBlock(scope: !2122, file: !692, line: 602, column: 10)
!2122 = distinct !DILexicalBlock(scope: !2090, file: !692, line: 602, column: 4)
!2123 = !DILocation(line: 602, column: 72, scope: !2120)
!2124 = !DILocation(line: 602, column: 57, scope: !2120)
!2125 = !DILocation(line: 602, column: 56, scope: !2120)
!2126 = !DILocation(line: 602, column: 31, scope: !2127)
!2127 = !DILexicalBlockFile(scope: !2120, file: !692, discriminator: 7)
!2128 = !DILocation(line: 602, column: 12, scope: !2120)
!2129 = !DILocation(line: 602, column: 10, scope: !2120)
!2130 = !DILocation(line: 602, column: 11, scope: !2131)
!2131 = !DILexicalBlockFile(scope: !2121, file: !692, discriminator: 2)
!2132 = !DILocation(line: 602, column: 10, scope: !2133)
!2133 = !DILexicalBlockFile(scope: !2122, file: !692, discriminator: 3)
!2134 = !DILocation(line: 602, column: 30, scope: !2135)
!2135 = !DILexicalBlockFile(scope: !2136, file: !692, discriminator: 4)
!2136 = distinct !DILexicalBlock(scope: !2121, file: !692, line: 602, column: 28)
!2137 = !DILocation(line: 602, column: 39, scope: !2138)
!2138 = !DILexicalBlockFile(scope: !2139, file: !692, discriminator: 5)
!2139 = distinct !DILexicalBlock(scope: !2121, file: !692, line: 602, column: 37)
!2140 = !DILocation(line: 602, column: 133, scope: !2138)
!2141 = !DILocation(line: 602, column: 144, scope: !2142)
!2142 = !DILexicalBlockFile(scope: !2122, file: !692, discriminator: 6)
!2143 = !DILocation(line: 603, column: 2, scope: !2090)
!2144 = distinct !{!2144, !2143}
!2145 = !DILocation(line: 603, column: 10, scope: !2146)
!2146 = !DILexicalBlockFile(scope: !2147, file: !692, discriminator: 1)
!2147 = distinct !DILexicalBlock(scope: !2148, file: !692, line: 603, column: 10)
!2148 = distinct !DILexicalBlock(scope: !2090, file: !692, line: 603, column: 4)
!2149 = !DILocation(line: 603, column: 18, scope: !2146)
!2150 = !DILocation(line: 603, column: 1, scope: !2146)
!2151 = !DILocation(line: 603, column: 4, scope: !2152)
!2152 = !DILexicalBlockFile(scope: !2147, file: !692, discriminator: 2)
!2153 = !DILocation(line: 603, column: 9, scope: !2152)
!2154 = !DILocation(line: 603, column: 10, scope: !2152)
!2155 = !DILocation(line: 603, column: 5, scope: !2156)
!2156 = !DILexicalBlockFile(scope: !2157, file: !692, discriminator: 3)
!2157 = distinct !DILexicalBlock(scope: !2147, file: !692, line: 603, column: 3)
!2158 = !DILocation(line: 603, column: 14, scope: !2159)
!2159 = !DILexicalBlockFile(scope: !2160, file: !692, discriminator: 4)
!2160 = distinct !DILexicalBlock(scope: !2147, file: !692, line: 603, column: 12)
!2161 = !DILocation(line: 603, column: 118, scope: !2159)
!2162 = !DILocation(line: 603, column: 129, scope: !2163)
!2163 = !DILexicalBlockFile(scope: !2148, file: !692, discriminator: 5)
!2164 = !DILocation(line: 605, column: 10, scope: !2090)
!2165 = !DILocation(line: 605, column: 8, scope: !2090)
!2166 = !DILocation(line: 606, column: 10, scope: !2090)
!2167 = !DILocation(line: 606, column: 8, scope: !2090)
!2168 = !DILocation(line: 607, column: 8, scope: !2090)
!2169 = !DILocation(line: 609, column: 147, scope: !2090)
!2170 = !DILocation(line: 609, column: 129, scope: !2090)
!2171 = !DILocation(line: 609, column: 114, scope: !2090)
!2172 = !DILocation(line: 609, column: 25, scope: !2090)
!2173 = !DILocation(line: 609, column: 100, scope: !2174)
!2174 = !DILexicalBlockFile(scope: !2090, file: !692, discriminator: 1)
!2175 = !DILocation(line: 609, column: 100, scope: !2090)
!2176 = !DILocation(line: 609, column: 75, scope: !2177)
!2177 = !DILexicalBlockFile(scope: !2090, file: !692, discriminator: 2)
!2178 = !DILocation(line: 609, column: 59, scope: !2090)
!2179 = !DILocation(line: 609, column: 58, scope: !2090)
!2180 = !DILocation(line: 609, column: 33, scope: !2181)
!2181 = !DILexicalBlockFile(scope: !2090, file: !692, discriminator: 3)
!2182 = !DILocation(line: 609, column: 13, scope: !2090)
!2183 = !DILocation(line: 609, column: 10, scope: !2090)
!2184 = !DILocation(line: 610, column: 6, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2090, file: !692, line: 610, column: 6)
!2186 = !DILocation(line: 610, column: 14, scope: !2185)
!2187 = !DILocation(line: 610, column: 6, scope: !2090)
!2188 = !DILocation(line: 611, column: 13, scope: !2185)
!2189 = !DILocation(line: 611, column: 22, scope: !2185)
!2190 = !DILocation(line: 611, column: 11, scope: !2185)
!2191 = !DILocation(line: 611, column: 3, scope: !2185)
!2192 = !DILocation(line: 613, column: 28, scope: !2090)
!2193 = !DILocation(line: 613, column: 19, scope: !2090)
!2194 = !DILocation(line: 613, column: 17, scope: !2090)
!2195 = !DILocation(line: 613, column: 7, scope: !2090)
!2196 = !DILocation(line: 615, column: 14, scope: !2090)
!2197 = !DILocation(line: 615, column: 30, scope: !2090)
!2198 = !DILocation(line: 616, column: 12, scope: !2090)
!2199 = !DILocation(line: 616, column: 10, scope: !2090)
!2200 = !DILocation(line: 617, column: 2, scope: !2090)
!2201 = !DILocation(line: 618, column: 8, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2203, file: !692, line: 618, column: 7)
!2203 = distinct !DILexicalBlock(scope: !2204, file: !692, line: 617, column: 21)
!2204 = distinct !DILexicalBlock(scope: !2205, file: !692, line: 617, column: 2)
!2205 = distinct !DILexicalBlock(scope: !2090, file: !692, line: 617, column: 2)
!2206 = !DILocation(line: 618, column: 7, scope: !2202)
!2207 = !DILocation(line: 618, column: 16, scope: !2202)
!2208 = !DILocation(line: 618, column: 7, scope: !2203)
!2209 = !DILocation(line: 620, column: 14, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2202, file: !692, line: 618, column: 25)
!2211 = !DILocation(line: 620, column: 12, scope: !2210)
!2212 = !DILocation(line: 621, column: 9, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2210, file: !692, line: 621, column: 8)
!2214 = !DILocation(line: 621, column: 8, scope: !2213)
!2215 = !DILocation(line: 621, column: 17, scope: !2213)
!2216 = !DILocation(line: 621, column: 8, scope: !2210)
!2217 = !DILocation(line: 622, column: 5, scope: !2213)
!2218 = !DILocation(line: 623, column: 3, scope: !2210)
!2219 = !DILocation(line: 625, column: 8, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2203, file: !692, line: 625, column: 7)
!2221 = !DILocation(line: 625, column: 7, scope: !2220)
!2222 = !DILocation(line: 625, column: 16, scope: !2220)
!2223 = !DILocation(line: 625, column: 23, scope: !2220)
!2224 = !DILocation(line: 625, column: 27, scope: !2225)
!2225 = !DILexicalBlockFile(scope: !2220, file: !692, discriminator: 1)
!2226 = !DILocation(line: 625, column: 26, scope: !2225)
!2227 = !DILocation(line: 625, column: 35, scope: !2225)
!2228 = !DILocation(line: 625, column: 7, scope: !2225)
!2229 = !DILocation(line: 626, column: 12, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2220, file: !692, line: 625, column: 43)
!2231 = !DILocation(line: 626, column: 11, scope: !2230)
!2232 = !DILocation(line: 626, column: 9, scope: !2230)
!2233 = !DILocation(line: 627, column: 4, scope: !2230)
!2234 = !DILocation(line: 630, column: 7, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2203, file: !692, line: 630, column: 7)
!2236 = !DILocation(line: 630, column: 16, scope: !2235)
!2237 = !DILocation(line: 630, column: 24, scope: !2235)
!2238 = !DILocation(line: 630, column: 13, scope: !2235)
!2239 = !DILocation(line: 630, column: 41, scope: !2235)
!2240 = !DILocation(line: 631, column: 9, scope: !2235)
!2241 = !DILocation(line: 631, column: 8, scope: !2235)
!2242 = !DILocation(line: 631, column: 15, scope: !2235)
!2243 = !DILocation(line: 630, column: 7, scope: !2244)
!2244 = !DILexicalBlockFile(scope: !2203, file: !692, discriminator: 1)
!2245 = !DILocation(line: 631, column: 62, scope: !2246)
!2246 = !DILexicalBlockFile(scope: !2235, file: !692, discriminator: 1)
!2247 = !DILocation(line: 631, column: 61, scope: !2246)
!2248 = !DILocation(line: 631, column: 40, scope: !2246)
!2249 = !DILocation(line: 631, column: 26, scope: !2246)
!2250 = !DILocation(line: 631, column: 34, scope: !2246)
!2251 = !DILocation(line: 631, column: 71, scope: !2246)
!2252 = !DILocation(line: 631, column: 76, scope: !2246)
!2253 = !DILocation(line: 631, column: 92, scope: !2246)
!2254 = !DILocation(line: 631, column: 131, scope: !2255)
!2255 = !DILexicalBlockFile(scope: !2235, file: !692, discriminator: 2)
!2256 = !DILocation(line: 631, column: 130, scope: !2255)
!2257 = !DILocation(line: 631, column: 109, scope: !2255)
!2258 = !DILocation(line: 631, column: 95, scope: !2255)
!2259 = !DILocation(line: 631, column: 103, scope: !2255)
!2260 = !DILocation(line: 631, column: 140, scope: !2255)
!2261 = !DILocation(line: 631, column: 145, scope: !2255)
!2262 = !DILocation(line: 631, column: 161, scope: !2255)
!2263 = !DILocation(line: 631, column: 200, scope: !2264)
!2264 = !DILexicalBlockFile(scope: !2235, file: !692, discriminator: 3)
!2265 = !DILocation(line: 631, column: 199, scope: !2264)
!2266 = !DILocation(line: 631, column: 178, scope: !2264)
!2267 = !DILocation(line: 631, column: 164, scope: !2264)
!2268 = !DILocation(line: 631, column: 172, scope: !2264)
!2269 = !DILocation(line: 631, column: 209, scope: !2264)
!2270 = !DILocation(line: 631, column: 214, scope: !2264)
!2271 = !DILocation(line: 631, column: 236, scope: !2264)
!2272 = !DILocation(line: 631, column: 275, scope: !2273)
!2273 = !DILexicalBlockFile(scope: !2235, file: !692, discriminator: 4)
!2274 = !DILocation(line: 631, column: 274, scope: !2273)
!2275 = !DILocation(line: 631, column: 253, scope: !2273)
!2276 = !DILocation(line: 631, column: 239, scope: !2273)
!2277 = !DILocation(line: 631, column: 247, scope: !2273)
!2278 = !DILocation(line: 631, column: 284, scope: !2273)
!2279 = !DILocation(line: 631, column: 289, scope: !2273)
!2280 = !DILocation(line: 631, column: 8, scope: !2273)
!2281 = !DILocation(line: 631, column: 345, scope: !2282)
!2282 = !DILexicalBlockFile(scope: !2235, file: !692, discriminator: 5)
!2283 = !DILocation(line: 631, column: 344, scope: !2282)
!2284 = !DILocation(line: 631, column: 323, scope: !2282)
!2285 = !DILocation(line: 631, column: 309, scope: !2282)
!2286 = !DILocation(line: 631, column: 317, scope: !2282)
!2287 = !DILocation(line: 631, column: 354, scope: !2282)
!2288 = !DILocation(line: 631, column: 359, scope: !2282)
!2289 = !DILocation(line: 631, column: 375, scope: !2282)
!2290 = !DILocation(line: 631, column: 414, scope: !2291)
!2291 = !DILexicalBlockFile(scope: !2235, file: !692, discriminator: 6)
!2292 = !DILocation(line: 631, column: 413, scope: !2291)
!2293 = !DILocation(line: 631, column: 392, scope: !2291)
!2294 = !DILocation(line: 631, column: 378, scope: !2291)
!2295 = !DILocation(line: 631, column: 386, scope: !2291)
!2296 = !DILocation(line: 631, column: 423, scope: !2291)
!2297 = !DILocation(line: 631, column: 428, scope: !2291)
!2298 = !DILocation(line: 631, column: 444, scope: !2291)
!2299 = !DILocation(line: 631, column: 483, scope: !2300)
!2300 = !DILexicalBlockFile(scope: !2235, file: !692, discriminator: 7)
!2301 = !DILocation(line: 631, column: 482, scope: !2300)
!2302 = !DILocation(line: 631, column: 461, scope: !2300)
!2303 = !DILocation(line: 631, column: 447, scope: !2300)
!2304 = !DILocation(line: 631, column: 455, scope: !2300)
!2305 = !DILocation(line: 631, column: 492, scope: !2300)
!2306 = !DILocation(line: 631, column: 497, scope: !2300)
!2307 = !DILocation(line: 630, column: 7, scope: !2308)
!2308 = !DILexicalBlockFile(scope: !2203, file: !692, discriminator: 2)
!2309 = !DILocation(line: 632, column: 18, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2235, file: !692, line: 631, column: 521)
!2311 = !DILocation(line: 633, column: 11, scope: !2310)
!2312 = !DILocation(line: 633, column: 20, scope: !2310)
!2313 = !DILocation(line: 633, column: 27, scope: !2310)
!2314 = !DILocation(line: 633, column: 32, scope: !2310)
!2315 = !DILocation(line: 633, column: 39, scope: !2310)
!2316 = !DILocation(line: 632, column: 4, scope: !2310)
!2317 = !DILocation(line: 635, column: 10, scope: !2310)
!2318 = !DILocation(line: 635, column: 24, scope: !2310)
!2319 = !DILocation(line: 636, column: 22, scope: !2310)
!2320 = !DILocation(line: 636, column: 4, scope: !2310)
!2321 = !DILocation(line: 637, column: 22, scope: !2310)
!2322 = !DILocation(line: 637, column: 4, scope: !2310)
!2323 = !DILocation(line: 638, column: 3, scope: !2310)
!2324 = !DILocation(line: 640, column: 7, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2203, file: !692, line: 640, column: 7)
!2326 = !DILocation(line: 640, column: 15, scope: !2325)
!2327 = !DILocation(line: 640, column: 12, scope: !2325)
!2328 = !DILocation(line: 640, column: 7, scope: !2203)
!2329 = !DILocation(line: 641, column: 15, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2325, file: !692, line: 640, column: 25)
!2331 = !DILocation(line: 641, column: 13, scope: !2330)
!2332 = !DILocation(line: 642, column: 30, scope: !2330)
!2333 = !DILocation(line: 642, column: 37, scope: !2330)
!2334 = !DILocation(line: 642, column: 4, scope: !2330)
!2335 = !DILocation(line: 643, column: 3, scope: !2330)
!2336 = !DILocation(line: 644, column: 29, scope: !2203)
!2337 = !DILocation(line: 644, column: 37, scope: !2203)
!2338 = !DILocation(line: 644, column: 36, scope: !2203)
!2339 = !DILocation(line: 644, column: 3, scope: !2203)
!2340 = !DILocation(line: 646, column: 9, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2203, file: !692, line: 646, column: 7)
!2342 = !DILocation(line: 646, column: 8, scope: !2341)
!2343 = !DILocation(line: 646, column: 15, scope: !2341)
!2344 = !DILocation(line: 646, column: 7, scope: !2203)
!2345 = !DILocation(line: 646, column: 62, scope: !2346)
!2346 = !DILexicalBlockFile(scope: !2341, file: !692, discriminator: 1)
!2347 = !DILocation(line: 646, column: 61, scope: !2346)
!2348 = !DILocation(line: 646, column: 40, scope: !2346)
!2349 = !DILocation(line: 646, column: 26, scope: !2346)
!2350 = !DILocation(line: 646, column: 34, scope: !2346)
!2351 = !DILocation(line: 646, column: 71, scope: !2346)
!2352 = !DILocation(line: 646, column: 76, scope: !2346)
!2353 = !DILocation(line: 646, column: 92, scope: !2346)
!2354 = !DILocation(line: 646, column: 131, scope: !2355)
!2355 = !DILexicalBlockFile(scope: !2341, file: !692, discriminator: 2)
!2356 = !DILocation(line: 646, column: 130, scope: !2355)
!2357 = !DILocation(line: 646, column: 109, scope: !2355)
!2358 = !DILocation(line: 646, column: 95, scope: !2355)
!2359 = !DILocation(line: 646, column: 103, scope: !2355)
!2360 = !DILocation(line: 646, column: 140, scope: !2355)
!2361 = !DILocation(line: 646, column: 145, scope: !2355)
!2362 = !DILocation(line: 646, column: 161, scope: !2355)
!2363 = !DILocation(line: 646, column: 200, scope: !2364)
!2364 = !DILexicalBlockFile(scope: !2341, file: !692, discriminator: 3)
!2365 = !DILocation(line: 646, column: 199, scope: !2364)
!2366 = !DILocation(line: 646, column: 178, scope: !2364)
!2367 = !DILocation(line: 646, column: 164, scope: !2364)
!2368 = !DILocation(line: 646, column: 172, scope: !2364)
!2369 = !DILocation(line: 646, column: 209, scope: !2364)
!2370 = !DILocation(line: 646, column: 214, scope: !2364)
!2371 = !DILocation(line: 646, column: 236, scope: !2364)
!2372 = !DILocation(line: 646, column: 275, scope: !2373)
!2373 = !DILexicalBlockFile(scope: !2341, file: !692, discriminator: 4)
!2374 = !DILocation(line: 646, column: 274, scope: !2373)
!2375 = !DILocation(line: 646, column: 253, scope: !2373)
!2376 = !DILocation(line: 646, column: 239, scope: !2373)
!2377 = !DILocation(line: 646, column: 247, scope: !2373)
!2378 = !DILocation(line: 646, column: 284, scope: !2373)
!2379 = !DILocation(line: 646, column: 289, scope: !2373)
!2380 = !DILocation(line: 646, column: 8, scope: !2373)
!2381 = !DILocation(line: 646, column: 345, scope: !2382)
!2382 = !DILexicalBlockFile(scope: !2341, file: !692, discriminator: 5)
!2383 = !DILocation(line: 646, column: 344, scope: !2382)
!2384 = !DILocation(line: 646, column: 323, scope: !2382)
!2385 = !DILocation(line: 646, column: 309, scope: !2382)
!2386 = !DILocation(line: 646, column: 317, scope: !2382)
!2387 = !DILocation(line: 646, column: 354, scope: !2382)
!2388 = !DILocation(line: 646, column: 359, scope: !2382)
!2389 = !DILocation(line: 646, column: 375, scope: !2382)
!2390 = !DILocation(line: 646, column: 414, scope: !2391)
!2391 = !DILexicalBlockFile(scope: !2341, file: !692, discriminator: 6)
!2392 = !DILocation(line: 646, column: 413, scope: !2391)
!2393 = !DILocation(line: 646, column: 392, scope: !2391)
!2394 = !DILocation(line: 646, column: 378, scope: !2391)
!2395 = !DILocation(line: 646, column: 386, scope: !2391)
!2396 = !DILocation(line: 646, column: 423, scope: !2391)
!2397 = !DILocation(line: 646, column: 428, scope: !2391)
!2398 = !DILocation(line: 646, column: 444, scope: !2391)
!2399 = !DILocation(line: 646, column: 483, scope: !2400)
!2400 = !DILexicalBlockFile(scope: !2341, file: !692, discriminator: 7)
!2401 = !DILocation(line: 646, column: 482, scope: !2400)
!2402 = !DILocation(line: 646, column: 461, scope: !2400)
!2403 = !DILocation(line: 646, column: 447, scope: !2400)
!2404 = !DILocation(line: 646, column: 455, scope: !2400)
!2405 = !DILocation(line: 646, column: 492, scope: !2400)
!2406 = !DILocation(line: 646, column: 497, scope: !2400)
!2407 = !DILocation(line: 646, column: 7, scope: !2400)
!2408 = !DILocalVariable(name: "arg", scope: !2409, file: !692, line: 647, type: !95)
!2409 = distinct !DILexicalBlock(scope: !2341, file: !692, line: 646, column: 521)
!2410 = !DILocation(line: 647, column: 10, scope: !2409)
!2411 = !DILocation(line: 649, column: 9, scope: !2409)
!2412 = !DILocation(line: 650, column: 10, scope: !2409)
!2413 = !DILocation(line: 650, column: 8, scope: !2409)
!2414 = !DILocation(line: 651, column: 9, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2409, file: !692, line: 651, column: 8)
!2416 = !DILocation(line: 651, column: 8, scope: !2415)
!2417 = !DILocation(line: 651, column: 13, scope: !2415)
!2418 = !DILocation(line: 651, column: 21, scope: !2415)
!2419 = !DILocation(line: 651, column: 24, scope: !2420)
!2420 = !DILexicalBlockFile(scope: !2415, file: !692, discriminator: 1)
!2421 = !DILocation(line: 651, column: 29, scope: !2420)
!2422 = !DILocation(line: 651, column: 36, scope: !2420)
!2423 = !DILocation(line: 651, column: 40, scope: !2424)
!2424 = !DILexicalBlockFile(scope: !2415, file: !692, discriminator: 2)
!2425 = !DILocation(line: 651, column: 39, scope: !2424)
!2426 = !DILocation(line: 651, column: 48, scope: !2424)
!2427 = !DILocation(line: 651, column: 8, scope: !2424)
!2428 = !DILocalVariable(name: "chanrec", scope: !2429, file: !692, line: 654, type: !59)
!2429 = distinct !DILexicalBlock(scope: !2415, file: !692, line: 651, column: 56)
!2430 = !DILocation(line: 654, column: 22, scope: !2429)
!2431 = !DILocation(line: 656, column: 150, scope: !2429)
!2432 = !DILocation(line: 656, column: 132, scope: !2429)
!2433 = !DILocation(line: 656, column: 117, scope: !2429)
!2434 = !DILocation(line: 656, column: 28, scope: !2429)
!2435 = !DILocation(line: 656, column: 103, scope: !2436)
!2436 = !DILexicalBlockFile(scope: !2429, file: !692, discriminator: 1)
!2437 = !DILocation(line: 656, column: 103, scope: !2429)
!2438 = !DILocation(line: 656, column: 78, scope: !2439)
!2439 = !DILexicalBlockFile(scope: !2429, file: !692, discriminator: 2)
!2440 = !DILocation(line: 656, column: 62, scope: !2429)
!2441 = !DILocation(line: 656, column: 61, scope: !2429)
!2442 = !DILocation(line: 656, column: 36, scope: !2443)
!2443 = !DILexicalBlockFile(scope: !2429, file: !692, discriminator: 3)
!2444 = !DILocation(line: 656, column: 16, scope: !2429)
!2445 = !DILocation(line: 656, column: 13, scope: !2429)
!2446 = !DILocation(line: 657, column: 9, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2429, file: !692, line: 657, column: 9)
!2448 = !DILocation(line: 657, column: 17, scope: !2447)
!2449 = !DILocation(line: 657, column: 24, scope: !2447)
!2450 = !DILocation(line: 657, column: 27, scope: !2451)
!2451 = !DILexicalBlockFile(scope: !2447, file: !692, discriminator: 1)
!2452 = !DILocation(line: 657, column: 36, scope: !2451)
!2453 = !DILocation(line: 657, column: 40, scope: !2451)
!2454 = !DILocation(line: 657, column: 9, scope: !2451)
!2455 = !DILocation(line: 658, column: 47, scope: !2447)
!2456 = !DILocation(line: 658, column: 56, scope: !2447)
!2457 = !DILocation(line: 658, column: 45, scope: !2447)
!2458 = !DILocation(line: 658, column: 41, scope: !2447)
!2459 = !DILocation(line: 659, column: 4, scope: !2429)
!2460 = !DILocation(line: 661, column: 9, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2409, file: !692, line: 661, column: 8)
!2462 = !DILocation(line: 661, column: 8, scope: !2461)
!2463 = !DILocation(line: 661, column: 13, scope: !2461)
!2464 = !DILocation(line: 661, column: 8, scope: !2409)
!2465 = !DILocation(line: 662, column: 28, scope: !2461)
!2466 = !DILocation(line: 662, column: 42, scope: !2461)
!2467 = !DILocation(line: 662, column: 5, scope: !2461)
!2468 = !DILocation(line: 663, column: 3, scope: !2409)
!2469 = !DILocation(line: 664, column: 2, scope: !2203)
!2470 = !DILocation(line: 617, column: 17, scope: !2471)
!2471 = !DILexicalBlockFile(scope: !2204, file: !692, discriminator: 1)
!2472 = !DILocation(line: 617, column: 2, scope: !2471)
!2473 = distinct !{!2473, !2200}
!2474 = !DILocation(line: 666, column: 6, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2090, file: !692, line: 666, column: 6)
!2476 = !DILocation(line: 666, column: 13, scope: !2475)
!2477 = !DILocation(line: 666, column: 17, scope: !2475)
!2478 = !DILocation(line: 666, column: 6, scope: !2090)
!2479 = !DILocation(line: 667, column: 17, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2475, file: !692, line: 666, column: 22)
!2481 = !DILocation(line: 668, column: 10, scope: !2480)
!2482 = !DILocation(line: 668, column: 19, scope: !2480)
!2483 = !DILocation(line: 668, column: 26, scope: !2480)
!2484 = !DILocation(line: 668, column: 31, scope: !2480)
!2485 = !DILocation(line: 668, column: 38, scope: !2480)
!2486 = !DILocation(line: 667, column: 3, scope: !2480)
!2487 = !DILocation(line: 669, column: 2, scope: !2480)
!2488 = !DILocation(line: 671, column: 16, scope: !2090)
!2489 = !DILocation(line: 671, column: 2, scope: !2090)
!2490 = !DILocation(line: 672, column: 16, scope: !2090)
!2491 = !DILocation(line: 672, column: 2, scope: !2090)
!2492 = !DILocation(line: 673, column: 9, scope: !2090)
!2493 = !DILocation(line: 673, column: 2, scope: !2090)
!2494 = !DILocation(line: 674, column: 1, scope: !2090)
!2495 = !DILocation(line: 674, column: 1, scope: !2174)
!2496 = distinct !DISubprogram(name: "g_string_append_c_inline", scope: !290, file: !290, line: 161, type: !2497, isLocal: true, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!2497 = !DISubroutineType(types: !2498)
!2498 = !{!288, !288, !144}
!2499 = !DILocalVariable(name: "gstring", arg: 1, scope: !2496, file: !290, line: 161, type: !288)
!2500 = !DILocation(line: 161, column: 36, scope: !2496)
!2501 = !DILocalVariable(name: "c", arg: 2, scope: !2496, file: !290, line: 162, type: !144)
!2502 = !DILocation(line: 162, column: 33, scope: !2496)
!2503 = !DILocation(line: 164, column: 7, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2496, file: !290, line: 164, column: 7)
!2505 = !DILocation(line: 164, column: 16, scope: !2504)
!2506 = !DILocation(line: 164, column: 20, scope: !2504)
!2507 = !DILocation(line: 164, column: 26, scope: !2504)
!2508 = !DILocation(line: 164, column: 35, scope: !2504)
!2509 = !DILocation(line: 164, column: 24, scope: !2504)
!2510 = !DILocation(line: 164, column: 7, scope: !2496)
!2511 = !DILocation(line: 166, column: 38, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2504, file: !290, line: 165, column: 5)
!2513 = !DILocation(line: 166, column: 20, scope: !2512)
!2514 = !DILocation(line: 166, column: 29, scope: !2512)
!2515 = !DILocation(line: 166, column: 32, scope: !2512)
!2516 = !DILocation(line: 166, column: 7, scope: !2512)
!2517 = !DILocation(line: 166, column: 16, scope: !2512)
!2518 = !DILocation(line: 166, column: 36, scope: !2512)
!2519 = !DILocation(line: 167, column: 20, scope: !2512)
!2520 = !DILocation(line: 167, column: 29, scope: !2512)
!2521 = !DILocation(line: 167, column: 7, scope: !2512)
!2522 = !DILocation(line: 167, column: 16, scope: !2512)
!2523 = !DILocation(line: 167, column: 34, scope: !2512)
!2524 = !DILocation(line: 168, column: 5, scope: !2512)
!2525 = !DILocation(line: 170, column: 24, scope: !2504)
!2526 = !DILocation(line: 170, column: 37, scope: !2504)
!2527 = !DILocation(line: 170, column: 5, scope: !2504)
!2528 = !DILocation(line: 171, column: 10, scope: !2496)
!2529 = !DILocation(line: 171, column: 3, scope: !2496)
!2530 = distinct !DISubprogram(name: "modes_server_init", scope: !692, file: !692, line: 874, type: !2531, isLocal: false, isDefinition: true, scopeLine: 875, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{null, !76}
!2533 = !DILocalVariable(name: "server", arg: 1, scope: !2530, file: !692, line: 874, type: !76)
!2534 = !DILocation(line: 874, column: 40, scope: !2530)
!2535 = !DILocation(line: 876, column: 2, scope: !2530)
!2536 = !DILocation(line: 876, column: 10, scope: !2530)
!2537 = !DILocation(line: 876, column: 21, scope: !2530)
!2538 = !DILocation(line: 876, column: 26, scope: !2530)
!2539 = !DILocation(line: 877, column: 2, scope: !2530)
!2540 = !DILocation(line: 877, column: 10, scope: !2530)
!2541 = !DILocation(line: 877, column: 21, scope: !2530)
!2542 = !DILocation(line: 877, column: 26, scope: !2530)
!2543 = !DILocation(line: 878, column: 2, scope: !2530)
!2544 = !DILocation(line: 878, column: 10, scope: !2530)
!2545 = !DILocation(line: 878, column: 21, scope: !2530)
!2546 = !DILocation(line: 878, column: 26, scope: !2530)
!2547 = !DILocation(line: 880, column: 2, scope: !2530)
!2548 = !DILocation(line: 880, column: 10, scope: !2530)
!2549 = !DILocation(line: 880, column: 21, scope: !2530)
!2550 = !DILocation(line: 880, column: 26, scope: !2530)
!2551 = !DILocation(line: 881, column: 2, scope: !2530)
!2552 = !DILocation(line: 881, column: 10, scope: !2530)
!2553 = !DILocation(line: 881, column: 21, scope: !2530)
!2554 = !DILocation(line: 881, column: 28, scope: !2530)
!2555 = !DILocation(line: 882, column: 2, scope: !2530)
!2556 = !DILocation(line: 882, column: 10, scope: !2530)
!2557 = !DILocation(line: 882, column: 21, scope: !2530)
!2558 = !DILocation(line: 882, column: 26, scope: !2530)
!2559 = !DILocation(line: 883, column: 2, scope: !2530)
!2560 = !DILocation(line: 883, column: 10, scope: !2530)
!2561 = !DILocation(line: 883, column: 21, scope: !2530)
!2562 = !DILocation(line: 883, column: 28, scope: !2530)
!2563 = !DILocation(line: 884, column: 2, scope: !2530)
!2564 = !DILocation(line: 884, column: 10, scope: !2530)
!2565 = !DILocation(line: 884, column: 21, scope: !2530)
!2566 = !DILocation(line: 884, column: 26, scope: !2530)
!2567 = !DILocation(line: 885, column: 2, scope: !2530)
!2568 = !DILocation(line: 885, column: 10, scope: !2530)
!2569 = !DILocation(line: 885, column: 21, scope: !2530)
!2570 = !DILocation(line: 885, column: 28, scope: !2530)
!2571 = !DILocation(line: 886, column: 2, scope: !2530)
!2572 = !DILocation(line: 886, column: 10, scope: !2530)
!2573 = !DILocation(line: 886, column: 21, scope: !2530)
!2574 = !DILocation(line: 886, column: 26, scope: !2530)
!2575 = !DILocation(line: 887, column: 2, scope: !2530)
!2576 = !DILocation(line: 887, column: 10, scope: !2530)
!2577 = !DILocation(line: 887, column: 21, scope: !2530)
!2578 = !DILocation(line: 887, column: 28, scope: !2530)
!2579 = !DILocation(line: 889, column: 2, scope: !2530)
!2580 = !DILocation(line: 889, column: 10, scope: !2530)
!2581 = !DILocation(line: 889, column: 22, scope: !2530)
!2582 = !DILocation(line: 890, column: 2, scope: !2530)
!2583 = !DILocation(line: 890, column: 10, scope: !2530)
!2584 = !DILocation(line: 890, column: 22, scope: !2530)
!2585 = !DILocation(line: 891, column: 2, scope: !2530)
!2586 = !DILocation(line: 891, column: 10, scope: !2530)
!2587 = !DILocation(line: 891, column: 22, scope: !2530)
!2588 = !DILocation(line: 893, column: 2, scope: !2530)
!2589 = !DILocation(line: 893, column: 10, scope: !2530)
!2590 = !DILocation(line: 893, column: 21, scope: !2530)
!2591 = !DILocation(line: 893, column: 26, scope: !2530)
!2592 = !DILocation(line: 894, column: 2, scope: !2530)
!2593 = !DILocation(line: 894, column: 10, scope: !2530)
!2594 = !DILocation(line: 894, column: 21, scope: !2530)
!2595 = !DILocation(line: 894, column: 26, scope: !2530)
!2596 = !DILocation(line: 895, column: 1, scope: !2530)
!2597 = distinct !DISubprogram(name: "modes_init", scope: !692, file: !692, line: 897, type: !237, isLocal: false, isDefinition: true, scopeLine: 898, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!2598 = !DILocation(line: 899, column: 2, scope: !2597)
!2599 = !DILocation(line: 900, column: 2, scope: !2597)
!2600 = !DILocation(line: 902, column: 2, scope: !2597)
!2601 = !DILocation(line: 903, column: 2, scope: !2597)
!2602 = !DILocation(line: 904, column: 2, scope: !2597)
!2603 = !DILocation(line: 905, column: 2, scope: !2597)
!2604 = !DILocation(line: 906, column: 2, scope: !2597)
!2605 = !DILocation(line: 907, column: 9, scope: !2597)
!2606 = !DILocation(line: 909, column: 42, scope: !2597)
!2607 = !DILocation(line: 909, column: 2, scope: !2608)
!2608 = !DILexicalBlockFile(scope: !2597, file: !692, discriminator: 1)
!2609 = !DILocation(line: 910, column: 44, scope: !2597)
!2610 = !DILocation(line: 910, column: 2, scope: !2608)
!2611 = !DILocation(line: 911, column: 45, scope: !2597)
!2612 = !DILocation(line: 911, column: 2, scope: !2608)
!2613 = !DILocation(line: 912, column: 47, scope: !2597)
!2614 = !DILocation(line: 912, column: 2, scope: !2608)
!2615 = !DILocation(line: 913, column: 44, scope: !2597)
!2616 = !DILocation(line: 913, column: 2, scope: !2608)
!2617 = !DILocation(line: 915, column: 2, scope: !2597)
!2618 = !DILocation(line: 916, column: 1, scope: !2597)
!2619 = distinct !DISubprogram(name: "event_user_mode", scope: !692, file: !692, line: 468, type: !2620, isLocal: true, isDefinition: true, scopeLine: 469, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{null, !76, !471}
!2622 = !DILocalVariable(name: "server", arg: 1, scope: !2619, file: !692, line: 468, type: !76)
!2623 = !DILocation(line: 468, column: 45, scope: !2619)
!2624 = !DILocalVariable(name: "data", arg: 2, scope: !2619, file: !692, line: 468, type: !471)
!2625 = !DILocation(line: 468, column: 65, scope: !2619)
!2626 = !DILocalVariable(name: "params", scope: !2619, file: !692, line: 470, type: !95)
!2627 = !DILocation(line: 470, column: 8, scope: !2619)
!2628 = !DILocalVariable(name: "nick", scope: !2619, file: !692, line: 470, type: !95)
!2629 = !DILocation(line: 470, column: 17, scope: !2619)
!2630 = !DILocalVariable(name: "mode", scope: !2619, file: !692, line: 470, type: !95)
!2631 = !DILocation(line: 470, column: 24, scope: !2619)
!2632 = !DILocation(line: 472, column: 2, scope: !2619)
!2633 = distinct !{!2633, !2632}
!2634 = !DILocation(line: 472, column: 10, scope: !2635)
!2635 = !DILexicalBlockFile(scope: !2636, file: !692, discriminator: 1)
!2636 = distinct !DILexicalBlock(scope: !2637, file: !692, line: 472, column: 10)
!2637 = distinct !DILexicalBlock(scope: !2619, file: !692, line: 472, column: 4)
!2638 = !DILocation(line: 472, column: 15, scope: !2635)
!2639 = !DILocation(line: 472, column: 5, scope: !2640)
!2640 = !DILexicalBlockFile(scope: !2641, file: !692, discriminator: 2)
!2641 = distinct !DILexicalBlock(scope: !2636, file: !692, line: 472, column: 3)
!2642 = !DILocation(line: 472, column: 14, scope: !2643)
!2643 = !DILexicalBlockFile(scope: !2644, file: !692, discriminator: 3)
!2644 = distinct !DILexicalBlock(scope: !2636, file: !692, line: 472, column: 12)
!2645 = !DILocation(line: 472, column: 99, scope: !2643)
!2646 = !DILocation(line: 472, column: 110, scope: !2647)
!2647 = !DILexicalBlockFile(scope: !2637, file: !692, discriminator: 4)
!2648 = !DILocation(line: 474, column: 28, scope: !2619)
!2649 = !DILocation(line: 474, column: 11, scope: !2619)
!2650 = !DILocation(line: 474, column: 9, scope: !2619)
!2651 = !DILocation(line: 475, column: 18, scope: !2619)
!2652 = !DILocation(line: 475, column: 26, scope: !2619)
!2653 = !DILocation(line: 475, column: 2, scope: !2619)
!2654 = !DILocation(line: 477, column: 9, scope: !2619)
!2655 = !DILocation(line: 477, column: 2, scope: !2619)
!2656 = !DILocation(line: 478, column: 1, scope: !2619)
!2657 = !DILocation(line: 478, column: 1, scope: !2658)
!2658 = !DILexicalBlockFile(scope: !2619, file: !692, discriminator: 1)
!2659 = distinct !DISubprogram(name: "event_unaway", scope: !692, file: !692, line: 521, type: !2620, isLocal: true, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!2660 = !DILocalVariable(name: "server", arg: 1, scope: !2659, file: !692, line: 521, type: !76)
!2661 = !DILocation(line: 521, column: 42, scope: !2659)
!2662 = !DILocalVariable(name: "data", arg: 2, scope: !2659, file: !692, line: 521, type: !471)
!2663 = !DILocation(line: 521, column: 62, scope: !2659)
!2664 = !DILocation(line: 523, column: 2, scope: !2659)
!2665 = distinct !{!2665, !2664}
!2666 = !DILocation(line: 523, column: 10, scope: !2667)
!2667 = !DILexicalBlockFile(scope: !2668, file: !692, discriminator: 1)
!2668 = distinct !DILexicalBlock(scope: !2669, file: !692, line: 523, column: 10)
!2669 = distinct !DILexicalBlock(scope: !2659, file: !692, line: 523, column: 4)
!2670 = !DILocation(line: 523, column: 17, scope: !2667)
!2671 = !DILocation(line: 523, column: 5, scope: !2672)
!2672 = !DILexicalBlockFile(scope: !2673, file: !692, discriminator: 2)
!2673 = distinct !DILexicalBlock(scope: !2668, file: !692, line: 523, column: 3)
!2674 = !DILocation(line: 523, column: 14, scope: !2675)
!2675 = !DILexicalBlockFile(scope: !2676, file: !692, discriminator: 3)
!2676 = distinct !DILexicalBlock(scope: !2668, file: !692, line: 523, column: 12)
!2677 = !DILocation(line: 523, column: 101, scope: !2675)
!2678 = !DILocation(line: 523, column: 112, scope: !2679)
!2679 = !DILexicalBlockFile(scope: !2669, file: !692, discriminator: 4)
!2680 = !DILocation(line: 525, column: 2, scope: !2659)
!2681 = !DILocation(line: 525, column: 10, scope: !2659)
!2682 = !DILocation(line: 525, column: 24, scope: !2659)
!2683 = !DILocation(line: 526, column: 2, scope: !2659)
!2684 = distinct !{!2684, !2683}
!2685 = !DILocation(line: 526, column: 11, scope: !2686)
!2686 = !DILexicalBlockFile(scope: !2687, file: !692, discriminator: 1)
!2687 = distinct !DILexicalBlock(scope: !2688, file: !692, line: 526, column: 11)
!2688 = distinct !DILexicalBlock(scope: !2659, file: !692, line: 526, column: 5)
!2689 = !DILocation(line: 526, column: 19, scope: !2686)
!2690 = !DILocation(line: 526, column: 41, scope: !2691)
!2691 = !DILexicalBlockFile(scope: !2692, file: !692, discriminator: 2)
!2692 = distinct !DILexicalBlock(scope: !2687, file: !692, line: 526, column: 32)
!2693 = !DILocation(line: 526, column: 49, scope: !2691)
!2694 = !DILocation(line: 526, column: 34, scope: !2691)
!2695 = !DILocation(line: 526, column: 64, scope: !2691)
!2696 = !DILocation(line: 526, column: 72, scope: !2691)
!2697 = !DILocation(line: 526, column: 85, scope: !2691)
!2698 = !DILocation(line: 526, column: 3, scope: !2691)
!2699 = !DILocation(line: 526, column: 5, scope: !2700)
!2700 = !DILexicalBlockFile(scope: !2688, file: !692, discriminator: 3)
!2701 = !DILocation(line: 527, column: 38, scope: !2659)
!2702 = !DILocation(line: 527, column: 2, scope: !2659)
!2703 = !DILocation(line: 528, column: 1, scope: !2659)
!2704 = !DILocation(line: 528, column: 1, scope: !2705)
!2705 = !DILexicalBlockFile(scope: !2659, file: !692, discriminator: 1)
!2706 = distinct !DISubprogram(name: "event_away", scope: !692, file: !692, line: 513, type: !2620, isLocal: true, isDefinition: true, scopeLine: 514, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!2707 = !DILocalVariable(name: "server", arg: 1, scope: !2706, file: !692, line: 513, type: !76)
!2708 = !DILocation(line: 513, column: 40, scope: !2706)
!2709 = !DILocalVariable(name: "data", arg: 2, scope: !2706, file: !692, line: 513, type: !471)
!2710 = !DILocation(line: 513, column: 60, scope: !2706)
!2711 = !DILocation(line: 515, column: 2, scope: !2706)
!2712 = distinct !{!2712, !2711}
!2713 = !DILocation(line: 515, column: 10, scope: !2714)
!2714 = !DILexicalBlockFile(scope: !2715, file: !692, discriminator: 1)
!2715 = distinct !DILexicalBlock(scope: !2716, file: !692, line: 515, column: 10)
!2716 = distinct !DILexicalBlock(scope: !2706, file: !692, line: 515, column: 4)
!2717 = !DILocation(line: 515, column: 17, scope: !2714)
!2718 = !DILocation(line: 515, column: 5, scope: !2719)
!2719 = !DILexicalBlockFile(scope: !2720, file: !692, discriminator: 2)
!2720 = distinct !DILexicalBlock(scope: !2715, file: !692, line: 515, column: 3)
!2721 = !DILocation(line: 515, column: 14, scope: !2722)
!2722 = !DILexicalBlockFile(scope: !2723, file: !692, discriminator: 3)
!2723 = distinct !DILexicalBlock(scope: !2715, file: !692, line: 515, column: 12)
!2724 = !DILocation(line: 515, column: 101, scope: !2722)
!2725 = !DILocation(line: 515, column: 112, scope: !2726)
!2726 = !DILexicalBlockFile(scope: !2716, file: !692, discriminator: 4)
!2727 = !DILocation(line: 517, column: 2, scope: !2706)
!2728 = !DILocation(line: 517, column: 10, scope: !2706)
!2729 = !DILocation(line: 517, column: 24, scope: !2706)
!2730 = !DILocation(line: 518, column: 38, scope: !2706)
!2731 = !DILocation(line: 518, column: 2, scope: !2706)
!2732 = !DILocation(line: 519, column: 1, scope: !2706)
!2733 = !DILocation(line: 519, column: 1, scope: !2734)
!2734 = !DILexicalBlockFile(scope: !2706, file: !692, discriminator: 1)
!2735 = distinct !DISubprogram(name: "event_oper", scope: !692, file: !692, line: 504, type: !2620, isLocal: true, isDefinition: true, scopeLine: 505, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!2736 = !DILocalVariable(name: "server", arg: 1, scope: !2735, file: !692, line: 504, type: !76)
!2737 = !DILocation(line: 504, column: 40, scope: !2735)
!2738 = !DILocalVariable(name: "data", arg: 2, scope: !2735, file: !692, line: 504, type: !471)
!2739 = !DILocation(line: 504, column: 60, scope: !2735)
!2740 = !DILocalVariable(name: "opermode", scope: !2735, file: !692, line: 506, type: !471)
!2741 = !DILocation(line: 506, column: 14, scope: !2735)
!2742 = !DILocation(line: 508, column: 13, scope: !2735)
!2743 = !DILocation(line: 508, column: 11, scope: !2735)
!2744 = !DILocation(line: 509, column: 14, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2735, file: !692, line: 509, column: 13)
!2746 = !DILocation(line: 509, column: 13, scope: !2745)
!2747 = !DILocation(line: 509, column: 23, scope: !2745)
!2748 = !DILocation(line: 509, column: 13, scope: !2735)
!2749 = !DILocation(line: 510, column: 17, scope: !2745)
!2750 = !DILocation(line: 510, column: 39, scope: !2745)
!2751 = !DILocation(line: 510, column: 47, scope: !2745)
!2752 = !DILocation(line: 510, column: 53, scope: !2745)
!2753 = !DILocation(line: 510, column: 3, scope: !2745)
!2754 = !DILocation(line: 511, column: 1, scope: !2735)
!2755 = distinct !DISubprogram(name: "event_mode", scope: !692, file: !692, line: 480, type: !2091, isLocal: true, isDefinition: true, scopeLine: 482, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!2756 = !DILocalVariable(name: "server", arg: 1, scope: !2755, file: !692, line: 480, type: !76)
!2757 = !DILocation(line: 480, column: 40, scope: !2755)
!2758 = !DILocalVariable(name: "data", arg: 2, scope: !2755, file: !692, line: 480, type: !471)
!2759 = !DILocation(line: 480, column: 60, scope: !2755)
!2760 = !DILocalVariable(name: "nick", arg: 3, scope: !2755, file: !692, line: 481, type: !471)
!2761 = !DILocation(line: 481, column: 22, scope: !2755)
!2762 = !DILocalVariable(name: "chanrec", scope: !2755, file: !692, line: 483, type: !59)
!2763 = !DILocation(line: 483, column: 19, scope: !2755)
!2764 = !DILocalVariable(name: "params", scope: !2755, file: !692, line: 484, type: !95)
!2765 = !DILocation(line: 484, column: 8, scope: !2755)
!2766 = !DILocalVariable(name: "channel", scope: !2755, file: !692, line: 484, type: !95)
!2767 = !DILocation(line: 484, column: 17, scope: !2755)
!2768 = !DILocalVariable(name: "mode", scope: !2755, file: !692, line: 484, type: !95)
!2769 = !DILocation(line: 484, column: 27, scope: !2755)
!2770 = !DILocation(line: 486, column: 2, scope: !2755)
!2771 = distinct !{!2771, !2770}
!2772 = !DILocation(line: 486, column: 10, scope: !2773)
!2773 = !DILexicalBlockFile(scope: !2774, file: !692, discriminator: 1)
!2774 = distinct !DILexicalBlock(scope: !2775, file: !692, line: 486, column: 10)
!2775 = distinct !DILexicalBlock(scope: !2755, file: !692, line: 486, column: 4)
!2776 = !DILocation(line: 486, column: 15, scope: !2773)
!2777 = !DILocation(line: 486, column: 5, scope: !2778)
!2778 = !DILexicalBlockFile(scope: !2779, file: !692, discriminator: 2)
!2779 = distinct !DILexicalBlock(scope: !2774, file: !692, line: 486, column: 3)
!2780 = !DILocation(line: 486, column: 14, scope: !2781)
!2781 = !DILexicalBlockFile(scope: !2782, file: !692, discriminator: 3)
!2782 = distinct !DILexicalBlock(scope: !2774, file: !692, line: 486, column: 12)
!2783 = !DILocation(line: 486, column: 99, scope: !2781)
!2784 = !DILocation(line: 486, column: 110, scope: !2785)
!2785 = !DILexicalBlockFile(scope: !2775, file: !692, discriminator: 4)
!2786 = !DILocation(line: 488, column: 28, scope: !2755)
!2787 = !DILocation(line: 488, column: 11, scope: !2755)
!2788 = !DILocation(line: 488, column: 9, scope: !2755)
!2789 = !DILocation(line: 491, column: 43, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2755, file: !692, line: 491, column: 6)
!2791 = !DILocation(line: 491, column: 25, scope: !2790)
!2792 = !DILocation(line: 491, column: 10, scope: !2790)
!2793 = !DILocation(line: 491, column: 21, scope: !2790)
!2794 = !DILocation(line: 491, column: 65, scope: !2790)
!2795 = !DILocation(line: 491, column: 47, scope: !2796)
!2796 = !DILexicalBlockFile(scope: !2790, file: !692, discriminator: 1)
!2797 = !DILocation(line: 491, column: 32, scope: !2790)
!2798 = !DILocation(line: 491, column: 20, scope: !2790)
!2799 = !DILocation(line: 491, column: 8, scope: !2800)
!2800 = !DILexicalBlockFile(scope: !2790, file: !692, discriminator: 2)
!2801 = !DILocation(line: 491, column: 8, scope: !2790)
!2802 = !DILocation(line: 491, column: 6, scope: !2755)
!2803 = !DILocation(line: 493, column: 19, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2790, file: !692, line: 491, column: 31)
!2805 = !DILocation(line: 493, column: 27, scope: !2804)
!2806 = !DILocation(line: 493, column: 3, scope: !2804)
!2807 = !DILocation(line: 494, column: 2, scope: !2804)
!2808 = !DILocation(line: 496, column: 148, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2790, file: !692, line: 494, column: 9)
!2810 = !DILocation(line: 496, column: 130, scope: !2809)
!2811 = !DILocation(line: 496, column: 115, scope: !2809)
!2812 = !DILocation(line: 496, column: 26, scope: !2809)
!2813 = !DILocation(line: 496, column: 101, scope: !2814)
!2814 = !DILexicalBlockFile(scope: !2809, file: !692, discriminator: 1)
!2815 = !DILocation(line: 496, column: 101, scope: !2809)
!2816 = !DILocation(line: 496, column: 76, scope: !2817)
!2817 = !DILexicalBlockFile(scope: !2809, file: !692, discriminator: 2)
!2818 = !DILocation(line: 496, column: 60, scope: !2809)
!2819 = !DILocation(line: 496, column: 59, scope: !2809)
!2820 = !DILocation(line: 496, column: 34, scope: !2821)
!2821 = !DILexicalBlockFile(scope: !2809, file: !692, discriminator: 3)
!2822 = !DILocation(line: 496, column: 14, scope: !2809)
!2823 = !DILocation(line: 496, column: 11, scope: !2809)
!2824 = !DILocation(line: 497, column: 7, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2809, file: !692, line: 497, column: 7)
!2826 = !DILocation(line: 497, column: 15, scope: !2825)
!2827 = !DILocation(line: 497, column: 7, scope: !2809)
!2828 = !DILocation(line: 498, column: 24, scope: !2825)
!2829 = !DILocation(line: 498, column: 33, scope: !2825)
!2830 = !DILocation(line: 498, column: 39, scope: !2825)
!2831 = !DILocation(line: 498, column: 4, scope: !2825)
!2832 = !DILocation(line: 501, column: 9, scope: !2755)
!2833 = !DILocation(line: 501, column: 2, scope: !2755)
!2834 = !DILocation(line: 502, column: 1, scope: !2755)
!2835 = !DILocation(line: 502, column: 1, scope: !2836)
!2836 = !DILexicalBlockFile(scope: !2755, file: !692, discriminator: 1)
!2837 = distinct !DISubprogram(name: "sig_req_usermode_change", scope: !692, file: !692, line: 530, type: !2838, isLocal: true, isDefinition: true, scopeLine: 532, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!2838 = !DISubroutineType(types: !2839)
!2839 = !{null, !76, !471, !471, !471}
!2840 = !DILocalVariable(name: "server", arg: 1, scope: !2837, file: !692, line: 530, type: !76)
!2841 = !DILocation(line: 530, column: 53, scope: !2837)
!2842 = !DILocalVariable(name: "data", arg: 2, scope: !2837, file: !692, line: 530, type: !471)
!2843 = !DILocation(line: 530, column: 73, scope: !2837)
!2844 = !DILocalVariable(name: "nick", arg: 3, scope: !2837, file: !692, line: 531, type: !471)
!2845 = !DILocation(line: 531, column: 21, scope: !2837)
!2846 = !DILocalVariable(name: "addr", arg: 4, scope: !2837, file: !692, line: 531, type: !471)
!2847 = !DILocation(line: 531, column: 39, scope: !2837)
!2848 = !DILocalVariable(name: "params", scope: !2837, file: !692, line: 533, type: !95)
!2849 = !DILocation(line: 533, column: 8, scope: !2837)
!2850 = !DILocalVariable(name: "target", scope: !2837, file: !692, line: 533, type: !95)
!2851 = !DILocation(line: 533, column: 17, scope: !2837)
!2852 = !DILocalVariable(name: "mode", scope: !2837, file: !692, line: 533, type: !95)
!2853 = !DILocation(line: 533, column: 26, scope: !2837)
!2854 = !DILocation(line: 535, column: 2, scope: !2837)
!2855 = distinct !{!2855, !2854}
!2856 = !DILocation(line: 535, column: 10, scope: !2857)
!2857 = !DILexicalBlockFile(scope: !2858, file: !692, discriminator: 1)
!2858 = distinct !DILexicalBlock(scope: !2859, file: !692, line: 535, column: 10)
!2859 = distinct !DILexicalBlock(scope: !2837, file: !692, line: 535, column: 4)
!2860 = !DILocation(line: 535, column: 15, scope: !2857)
!2861 = !DILocation(line: 535, column: 5, scope: !2862)
!2862 = !DILexicalBlockFile(scope: !2863, file: !692, discriminator: 2)
!2863 = distinct !DILexicalBlock(scope: !2858, file: !692, line: 535, column: 3)
!2864 = !DILocation(line: 535, column: 14, scope: !2865)
!2865 = !DILexicalBlockFile(scope: !2866, file: !692, discriminator: 3)
!2866 = distinct !DILexicalBlock(scope: !2858, file: !692, line: 535, column: 12)
!2867 = !DILocation(line: 535, column: 99, scope: !2865)
!2868 = !DILocation(line: 535, column: 110, scope: !2869)
!2869 = !DILexicalBlockFile(scope: !2859, file: !692, discriminator: 4)
!2870 = !DILocation(line: 537, column: 28, scope: !2837)
!2871 = !DILocation(line: 537, column: 11, scope: !2837)
!2872 = !DILocation(line: 537, column: 9, scope: !2837)
!2873 = !DILocation(line: 539, column: 43, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2837, file: !692, line: 539, column: 6)
!2875 = !DILocation(line: 539, column: 25, scope: !2874)
!2876 = !DILocation(line: 539, column: 10, scope: !2874)
!2877 = !DILocation(line: 539, column: 21, scope: !2874)
!2878 = !DILocation(line: 539, column: 65, scope: !2874)
!2879 = !DILocation(line: 539, column: 47, scope: !2880)
!2880 = !DILexicalBlockFile(scope: !2874, file: !692, discriminator: 1)
!2881 = !DILocation(line: 539, column: 32, scope: !2874)
!2882 = !DILocation(line: 539, column: 20, scope: !2874)
!2883 = !DILocation(line: 539, column: 8, scope: !2884)
!2884 = !DILexicalBlockFile(scope: !2874, file: !692, discriminator: 2)
!2885 = !DILocation(line: 539, column: 8, scope: !2874)
!2886 = !DILocation(line: 539, column: 6, scope: !2837)
!2887 = !DILocation(line: 541, column: 26, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2874, file: !692, line: 539, column: 30)
!2889 = !DILocation(line: 541, column: 34, scope: !2888)
!2890 = !DILocation(line: 541, column: 51, scope: !2888)
!2891 = !DILocation(line: 541, column: 10, scope: !2888)
!2892 = !DILocation(line: 541, column: 8, scope: !2888)
!2893 = !DILocation(line: 542, column: 24, scope: !2888)
!2894 = !DILocation(line: 542, column: 32, scope: !2888)
!2895 = !DILocation(line: 542, column: 17, scope: !2888)
!2896 = !DILocation(line: 543, column: 29, scope: !2888)
!2897 = !DILocation(line: 543, column: 3, scope: !2888)
!2898 = !DILocation(line: 543, column: 11, scope: !2888)
!2899 = !DILocation(line: 543, column: 27, scope: !2888)
!2900 = !DILocation(line: 544, column: 2, scope: !2888)
!2901 = !DILocation(line: 546, column: 9, scope: !2837)
!2902 = !DILocation(line: 546, column: 2, scope: !2837)
!2903 = !DILocation(line: 548, column: 31, scope: !2837)
!2904 = !DILocation(line: 548, column: 39, scope: !2837)
!2905 = !DILocation(line: 548, column: 45, scope: !2837)
!2906 = !DILocation(line: 548, column: 51, scope: !2837)
!2907 = !DILocation(line: 548, column: 2, scope: !2837)
!2908 = !DILocation(line: 549, column: 1, scope: !2837)
!2909 = !DILocation(line: 549, column: 1, scope: !2910)
!2910 = !DILexicalBlockFile(scope: !2837, file: !692, discriminator: 1)
!2911 = distinct !DISubprogram(name: "cmd_op", scope: !692, file: !692, line: 768, type: !2912, isLocal: true, isDefinition: true, scopeLine: 770, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{null, !471, !76, !509}
!2914 = !DILocalVariable(name: "data", arg: 1, scope: !2911, file: !692, line: 768, type: !471)
!2915 = !DILocation(line: 768, column: 32, scope: !2911)
!2916 = !DILocalVariable(name: "server", arg: 2, scope: !2911, file: !692, line: 768, type: !76)
!2917 = !DILocation(line: 768, column: 54, scope: !2911)
!2918 = !DILocalVariable(name: "item", arg: 3, scope: !2911, file: !692, line: 769, type: !509)
!2919 = !DILocation(line: 769, column: 19, scope: !2911)
!2920 = !DILocalVariable(name: "channel", scope: !2911, file: !692, line: 771, type: !59)
!2921 = !DILocation(line: 771, column: 26, scope: !2911)
!2922 = !DILocalVariable(name: "nicks", scope: !2911, file: !692, line: 772, type: !95)
!2923 = !DILocation(line: 772, column: 8, scope: !2911)
!2924 = !DILocation(line: 774, column: 2, scope: !2911)
!2925 = distinct !{!2925, !2924}
!2926 = !DILocation(line: 774, column: 11, scope: !2927)
!2927 = !DILexicalBlockFile(scope: !2928, file: !692, discriminator: 1)
!2928 = distinct !DILexicalBlock(scope: !2929, file: !692, line: 774, column: 11)
!2929 = distinct !DILexicalBlock(scope: !2911, file: !692, line: 774, column: 5)
!2930 = !DILocation(line: 774, column: 18, scope: !2927)
!2931 = !DILocation(line: 774, column: 1, scope: !2927)
!2932 = !DILocation(line: 774, column: 85, scope: !2933)
!2933 = !DILexicalBlockFile(scope: !2928, file: !692, discriminator: 2)
!2934 = !DILocation(line: 774, column: 67, scope: !2933)
!2935 = !DILocation(line: 774, column: 52, scope: !2933)
!2936 = !DILocation(line: 774, column: 51, scope: !2933)
!2937 = !DILocation(line: 774, column: 26, scope: !2938)
!2938 = !DILexicalBlockFile(scope: !2933, file: !692, discriminator: 12)
!2939 = !DILocation(line: 774, column: 7, scope: !2933)
!2940 = !DILocation(line: 774, column: 11, scope: !2933)
!2941 = !DILocation(line: 774, column: 6, scope: !2942)
!2942 = !DILexicalBlockFile(scope: !2928, file: !692, discriminator: 3)
!2943 = !DILocation(line: 774, column: 11, scope: !2944)
!2944 = !DILexicalBlockFile(scope: !2929, file: !692, discriminator: 4)
!2945 = !DILocation(line: 774, column: 28, scope: !2946)
!2946 = !DILexicalBlockFile(scope: !2928, file: !692, discriminator: 5)
!2947 = !DILocation(line: 774, column: 40, scope: !2948)
!2948 = !DILexicalBlockFile(scope: !2949, file: !692, discriminator: 6)
!2949 = distinct !DILexicalBlock(scope: !2929, file: !692, line: 774, column: 40)
!2950 = !DILocation(line: 774, column: 47, scope: !2948)
!2951 = !DILocation(line: 774, column: 1, scope: !2948)
!2952 = !DILocation(line: 774, column: 6, scope: !2953)
!2953 = !DILexicalBlockFile(scope: !2949, file: !692, discriminator: 7)
!2954 = !DILocation(line: 774, column: 15, scope: !2953)
!2955 = !DILocation(line: 774, column: 5, scope: !2953)
!2956 = !DILocation(line: 774, column: 40, scope: !2953)
!2957 = !DILocation(line: 774, column: 26, scope: !2958)
!2958 = !DILexicalBlockFile(scope: !2949, file: !692, discriminator: 8)
!2959 = distinct !{!2959, !2960}
!2960 = !DILocation(line: 774, column: 26, scope: !2949)
!2961 = !DILocation(line: 774, column: 31, scope: !2962)
!2962 = !DILexicalBlockFile(scope: !2963, file: !692, discriminator: 9)
!2963 = distinct !DILexicalBlock(scope: !2949, file: !692, line: 774, column: 29)
!2964 = !DILocation(line: 774, column: 109, scope: !2965)
!2965 = !DILexicalBlockFile(scope: !2962, file: !692, discriminator: 13)
!2966 = !DILocation(line: 774, column: 124, scope: !2962)
!2967 = !DILocation(line: 774, column: 132, scope: !2968)
!2968 = !DILexicalBlockFile(scope: !2963, file: !692, discriminator: 10)
!2969 = !DILocation(line: 774, column: 145, scope: !2970)
!2970 = !DILexicalBlockFile(scope: !2929, file: !692, discriminator: 11)
!2971 = !DILocation(line: 776, column: 20, scope: !2911)
!2972 = !DILocation(line: 776, column: 28, scope: !2911)
!2973 = !DILocation(line: 776, column: 34, scope: !2911)
!2974 = !DILocation(line: 776, column: 10, scope: !2911)
!2975 = !DILocation(line: 776, column: 8, scope: !2911)
!2976 = !DILocation(line: 777, column: 6, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2911, file: !692, line: 777, column: 6)
!2978 = !DILocation(line: 777, column: 12, scope: !2977)
!2979 = !DILocation(line: 777, column: 19, scope: !2977)
!2980 = !DILocation(line: 777, column: 23, scope: !2981)
!2981 = !DILexicalBlockFile(scope: !2977, file: !692, discriminator: 1)
!2982 = !DILocation(line: 777, column: 22, scope: !2981)
!2983 = !DILocation(line: 777, column: 29, scope: !2981)
!2984 = !DILocation(line: 777, column: 6, scope: !2981)
!2985 = !DILocation(line: 778, column: 26, scope: !2977)
!2986 = !DILocation(line: 778, column: 35, scope: !2977)
!2987 = !DILocation(line: 778, column: 3, scope: !2977)
!2988 = !DILocation(line: 779, column: 9, scope: !2911)
!2989 = !DILocation(line: 779, column: 2, scope: !2911)
!2990 = !DILocation(line: 780, column: 1, scope: !2911)
!2991 = !DILocation(line: 780, column: 1, scope: !2992)
!2992 = !DILexicalBlockFile(scope: !2911, file: !692, discriminator: 1)
!2993 = distinct !DISubprogram(name: "cmd_deop", scope: !692, file: !692, line: 783, type: !2912, isLocal: true, isDefinition: true, scopeLine: 785, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!2994 = !DILocalVariable(name: "data", arg: 1, scope: !2993, file: !692, line: 783, type: !471)
!2995 = !DILocation(line: 783, column: 34, scope: !2993)
!2996 = !DILocalVariable(name: "server", arg: 2, scope: !2993, file: !692, line: 783, type: !76)
!2997 = !DILocation(line: 783, column: 56, scope: !2993)
!2998 = !DILocalVariable(name: "item", arg: 3, scope: !2993, file: !692, line: 784, type: !509)
!2999 = !DILocation(line: 784, column: 21, scope: !2993)
!3000 = !DILocalVariable(name: "channel", scope: !2993, file: !692, line: 786, type: !59)
!3001 = !DILocation(line: 786, column: 26, scope: !2993)
!3002 = !DILocalVariable(name: "nicks", scope: !2993, file: !692, line: 787, type: !95)
!3003 = !DILocation(line: 787, column: 8, scope: !2993)
!3004 = !DILocation(line: 789, column: 9, scope: !2993)
!3005 = distinct !{!3005, !3004}
!3006 = !DILocation(line: 789, column: 18, scope: !3007)
!3007 = !DILexicalBlockFile(scope: !3008, file: !692, discriminator: 1)
!3008 = distinct !DILexicalBlock(scope: !3009, file: !692, line: 789, column: 18)
!3009 = distinct !DILexicalBlock(scope: !2993, file: !692, line: 789, column: 12)
!3010 = !DILocation(line: 789, column: 25, scope: !3007)
!3011 = !DILocation(line: 789, column: 8, scope: !3007)
!3012 = !DILocation(line: 789, column: 92, scope: !3013)
!3013 = !DILexicalBlockFile(scope: !3008, file: !692, discriminator: 2)
!3014 = !DILocation(line: 789, column: 74, scope: !3013)
!3015 = !DILocation(line: 789, column: 59, scope: !3013)
!3016 = !DILocation(line: 789, column: 58, scope: !3013)
!3017 = !DILocation(line: 789, column: 33, scope: !3018)
!3018 = !DILexicalBlockFile(scope: !3013, file: !692, discriminator: 12)
!3019 = !DILocation(line: 789, column: 14, scope: !3013)
!3020 = !DILocation(line: 789, column: 18, scope: !3013)
!3021 = !DILocation(line: 789, column: 13, scope: !3022)
!3022 = !DILexicalBlockFile(scope: !3008, file: !692, discriminator: 3)
!3023 = !DILocation(line: 789, column: 18, scope: !3024)
!3024 = !DILexicalBlockFile(scope: !3009, file: !692, discriminator: 4)
!3025 = !DILocation(line: 789, column: 35, scope: !3026)
!3026 = !DILexicalBlockFile(scope: !3008, file: !692, discriminator: 5)
!3027 = !DILocation(line: 789, column: 47, scope: !3028)
!3028 = !DILexicalBlockFile(scope: !3029, file: !692, discriminator: 6)
!3029 = distinct !DILexicalBlock(scope: !3009, file: !692, line: 789, column: 47)
!3030 = !DILocation(line: 789, column: 54, scope: !3028)
!3031 = !DILocation(line: 789, column: 8, scope: !3028)
!3032 = !DILocation(line: 789, column: 13, scope: !3033)
!3033 = !DILexicalBlockFile(scope: !3029, file: !692, discriminator: 7)
!3034 = !DILocation(line: 789, column: 22, scope: !3033)
!3035 = !DILocation(line: 789, column: 12, scope: !3033)
!3036 = !DILocation(line: 789, column: 47, scope: !3033)
!3037 = !DILocation(line: 789, column: 33, scope: !3038)
!3038 = !DILexicalBlockFile(scope: !3029, file: !692, discriminator: 8)
!3039 = distinct !{!3039, !3040}
!3040 = !DILocation(line: 789, column: 33, scope: !3029)
!3041 = !DILocation(line: 789, column: 38, scope: !3042)
!3042 = !DILexicalBlockFile(scope: !3043, file: !692, discriminator: 9)
!3043 = distinct !DILexicalBlock(scope: !3029, file: !692, line: 789, column: 36)
!3044 = !DILocation(line: 789, column: 116, scope: !3045)
!3045 = !DILexicalBlockFile(scope: !3042, file: !692, discriminator: 13)
!3046 = !DILocation(line: 789, column: 131, scope: !3042)
!3047 = !DILocation(line: 789, column: 139, scope: !3048)
!3048 = !DILexicalBlockFile(scope: !3043, file: !692, discriminator: 10)
!3049 = !DILocation(line: 789, column: 152, scope: !3050)
!3050 = !DILexicalBlockFile(scope: !3009, file: !692, discriminator: 11)
!3051 = !DILocation(line: 791, column: 20, scope: !2993)
!3052 = !DILocation(line: 791, column: 28, scope: !2993)
!3053 = !DILocation(line: 791, column: 34, scope: !2993)
!3054 = !DILocation(line: 791, column: 10, scope: !2993)
!3055 = !DILocation(line: 791, column: 8, scope: !2993)
!3056 = !DILocation(line: 792, column: 6, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !2993, file: !692, line: 792, column: 6)
!3058 = !DILocation(line: 792, column: 12, scope: !3057)
!3059 = !DILocation(line: 792, column: 19, scope: !3057)
!3060 = !DILocation(line: 792, column: 23, scope: !3061)
!3061 = !DILexicalBlockFile(scope: !3057, file: !692, discriminator: 1)
!3062 = !DILocation(line: 792, column: 22, scope: !3061)
!3063 = !DILocation(line: 792, column: 29, scope: !3061)
!3064 = !DILocation(line: 792, column: 6, scope: !3061)
!3065 = !DILocation(line: 793, column: 26, scope: !3057)
!3066 = !DILocation(line: 793, column: 35, scope: !3057)
!3067 = !DILocation(line: 793, column: 3, scope: !3057)
!3068 = !DILocation(line: 794, column: 9, scope: !2993)
!3069 = !DILocation(line: 794, column: 2, scope: !2993)
!3070 = !DILocation(line: 795, column: 1, scope: !2993)
!3071 = !DILocation(line: 795, column: 1, scope: !3072)
!3072 = !DILexicalBlockFile(scope: !2993, file: !692, discriminator: 1)
!3073 = distinct !DISubprogram(name: "cmd_voice", scope: !692, file: !692, line: 798, type: !2912, isLocal: true, isDefinition: true, scopeLine: 800, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!3074 = !DILocalVariable(name: "data", arg: 1, scope: !3073, file: !692, line: 798, type: !471)
!3075 = !DILocation(line: 798, column: 35, scope: !3073)
!3076 = !DILocalVariable(name: "server", arg: 2, scope: !3073, file: !692, line: 798, type: !76)
!3077 = !DILocation(line: 798, column: 57, scope: !3073)
!3078 = !DILocalVariable(name: "item", arg: 3, scope: !3073, file: !692, line: 799, type: !509)
!3079 = !DILocation(line: 799, column: 22, scope: !3073)
!3080 = !DILocalVariable(name: "channel", scope: !3073, file: !692, line: 801, type: !59)
!3081 = !DILocation(line: 801, column: 26, scope: !3073)
!3082 = !DILocalVariable(name: "nicks", scope: !3073, file: !692, line: 802, type: !95)
!3083 = !DILocation(line: 802, column: 8, scope: !3073)
!3084 = !DILocation(line: 804, column: 9, scope: !3073)
!3085 = distinct !{!3085, !3084}
!3086 = !DILocation(line: 804, column: 18, scope: !3087)
!3087 = !DILexicalBlockFile(scope: !3088, file: !692, discriminator: 1)
!3088 = distinct !DILexicalBlock(scope: !3089, file: !692, line: 804, column: 18)
!3089 = distinct !DILexicalBlock(scope: !3073, file: !692, line: 804, column: 12)
!3090 = !DILocation(line: 804, column: 25, scope: !3087)
!3091 = !DILocation(line: 804, column: 8, scope: !3087)
!3092 = !DILocation(line: 804, column: 92, scope: !3093)
!3093 = !DILexicalBlockFile(scope: !3088, file: !692, discriminator: 2)
!3094 = !DILocation(line: 804, column: 74, scope: !3093)
!3095 = !DILocation(line: 804, column: 59, scope: !3093)
!3096 = !DILocation(line: 804, column: 58, scope: !3093)
!3097 = !DILocation(line: 804, column: 33, scope: !3098)
!3098 = !DILexicalBlockFile(scope: !3093, file: !692, discriminator: 12)
!3099 = !DILocation(line: 804, column: 14, scope: !3093)
!3100 = !DILocation(line: 804, column: 18, scope: !3093)
!3101 = !DILocation(line: 804, column: 13, scope: !3102)
!3102 = !DILexicalBlockFile(scope: !3088, file: !692, discriminator: 3)
!3103 = !DILocation(line: 804, column: 18, scope: !3104)
!3104 = !DILexicalBlockFile(scope: !3089, file: !692, discriminator: 4)
!3105 = !DILocation(line: 804, column: 35, scope: !3106)
!3106 = !DILexicalBlockFile(scope: !3088, file: !692, discriminator: 5)
!3107 = !DILocation(line: 804, column: 47, scope: !3108)
!3108 = !DILexicalBlockFile(scope: !3109, file: !692, discriminator: 6)
!3109 = distinct !DILexicalBlock(scope: !3089, file: !692, line: 804, column: 47)
!3110 = !DILocation(line: 804, column: 54, scope: !3108)
!3111 = !DILocation(line: 804, column: 8, scope: !3108)
!3112 = !DILocation(line: 804, column: 13, scope: !3113)
!3113 = !DILexicalBlockFile(scope: !3109, file: !692, discriminator: 7)
!3114 = !DILocation(line: 804, column: 22, scope: !3113)
!3115 = !DILocation(line: 804, column: 12, scope: !3113)
!3116 = !DILocation(line: 804, column: 47, scope: !3113)
!3117 = !DILocation(line: 804, column: 33, scope: !3118)
!3118 = !DILexicalBlockFile(scope: !3109, file: !692, discriminator: 8)
!3119 = distinct !{!3119, !3120}
!3120 = !DILocation(line: 804, column: 33, scope: !3109)
!3121 = !DILocation(line: 804, column: 38, scope: !3122)
!3122 = !DILexicalBlockFile(scope: !3123, file: !692, discriminator: 9)
!3123 = distinct !DILexicalBlock(scope: !3109, file: !692, line: 804, column: 36)
!3124 = !DILocation(line: 804, column: 116, scope: !3125)
!3125 = !DILexicalBlockFile(scope: !3122, file: !692, discriminator: 13)
!3126 = !DILocation(line: 804, column: 131, scope: !3122)
!3127 = !DILocation(line: 804, column: 139, scope: !3128)
!3128 = !DILexicalBlockFile(scope: !3123, file: !692, discriminator: 10)
!3129 = !DILocation(line: 804, column: 152, scope: !3130)
!3130 = !DILexicalBlockFile(scope: !3089, file: !692, discriminator: 11)
!3131 = !DILocation(line: 806, column: 20, scope: !3073)
!3132 = !DILocation(line: 806, column: 28, scope: !3073)
!3133 = !DILocation(line: 806, column: 34, scope: !3073)
!3134 = !DILocation(line: 806, column: 10, scope: !3073)
!3135 = !DILocation(line: 806, column: 8, scope: !3073)
!3136 = !DILocation(line: 807, column: 6, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !3073, file: !692, line: 807, column: 6)
!3138 = !DILocation(line: 807, column: 12, scope: !3137)
!3139 = !DILocation(line: 807, column: 19, scope: !3137)
!3140 = !DILocation(line: 807, column: 23, scope: !3141)
!3141 = !DILexicalBlockFile(scope: !3137, file: !692, discriminator: 1)
!3142 = !DILocation(line: 807, column: 22, scope: !3141)
!3143 = !DILocation(line: 807, column: 29, scope: !3141)
!3144 = !DILocation(line: 807, column: 6, scope: !3141)
!3145 = !DILocation(line: 808, column: 26, scope: !3137)
!3146 = !DILocation(line: 808, column: 35, scope: !3137)
!3147 = !DILocation(line: 808, column: 3, scope: !3137)
!3148 = !DILocation(line: 809, column: 9, scope: !3073)
!3149 = !DILocation(line: 809, column: 2, scope: !3073)
!3150 = !DILocation(line: 810, column: 1, scope: !3073)
!3151 = !DILocation(line: 810, column: 1, scope: !3152)
!3152 = !DILexicalBlockFile(scope: !3073, file: !692, discriminator: 1)
!3153 = distinct !DISubprogram(name: "cmd_devoice", scope: !692, file: !692, line: 813, type: !2912, isLocal: true, isDefinition: true, scopeLine: 815, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!3154 = !DILocalVariable(name: "data", arg: 1, scope: !3153, file: !692, line: 813, type: !471)
!3155 = !DILocation(line: 813, column: 37, scope: !3153)
!3156 = !DILocalVariable(name: "server", arg: 2, scope: !3153, file: !692, line: 813, type: !76)
!3157 = !DILocation(line: 813, column: 59, scope: !3153)
!3158 = !DILocalVariable(name: "item", arg: 3, scope: !3153, file: !692, line: 814, type: !509)
!3159 = !DILocation(line: 814, column: 17, scope: !3153)
!3160 = !DILocalVariable(name: "channel", scope: !3153, file: !692, line: 816, type: !59)
!3161 = !DILocation(line: 816, column: 26, scope: !3153)
!3162 = !DILocalVariable(name: "nicks", scope: !3153, file: !692, line: 817, type: !95)
!3163 = !DILocation(line: 817, column: 8, scope: !3153)
!3164 = !DILocation(line: 819, column: 9, scope: !3153)
!3165 = distinct !{!3165, !3164}
!3166 = !DILocation(line: 819, column: 18, scope: !3167)
!3167 = !DILexicalBlockFile(scope: !3168, file: !692, discriminator: 1)
!3168 = distinct !DILexicalBlock(scope: !3169, file: !692, line: 819, column: 18)
!3169 = distinct !DILexicalBlock(scope: !3153, file: !692, line: 819, column: 12)
!3170 = !DILocation(line: 819, column: 25, scope: !3167)
!3171 = !DILocation(line: 819, column: 8, scope: !3167)
!3172 = !DILocation(line: 819, column: 92, scope: !3173)
!3173 = !DILexicalBlockFile(scope: !3168, file: !692, discriminator: 2)
!3174 = !DILocation(line: 819, column: 74, scope: !3173)
!3175 = !DILocation(line: 819, column: 59, scope: !3173)
!3176 = !DILocation(line: 819, column: 58, scope: !3173)
!3177 = !DILocation(line: 819, column: 33, scope: !3178)
!3178 = !DILexicalBlockFile(scope: !3173, file: !692, discriminator: 12)
!3179 = !DILocation(line: 819, column: 14, scope: !3173)
!3180 = !DILocation(line: 819, column: 18, scope: !3173)
!3181 = !DILocation(line: 819, column: 13, scope: !3182)
!3182 = !DILexicalBlockFile(scope: !3168, file: !692, discriminator: 3)
!3183 = !DILocation(line: 819, column: 18, scope: !3184)
!3184 = !DILexicalBlockFile(scope: !3169, file: !692, discriminator: 4)
!3185 = !DILocation(line: 819, column: 35, scope: !3186)
!3186 = !DILexicalBlockFile(scope: !3168, file: !692, discriminator: 5)
!3187 = !DILocation(line: 819, column: 47, scope: !3188)
!3188 = !DILexicalBlockFile(scope: !3189, file: !692, discriminator: 6)
!3189 = distinct !DILexicalBlock(scope: !3169, file: !692, line: 819, column: 47)
!3190 = !DILocation(line: 819, column: 54, scope: !3188)
!3191 = !DILocation(line: 819, column: 8, scope: !3188)
!3192 = !DILocation(line: 819, column: 13, scope: !3193)
!3193 = !DILexicalBlockFile(scope: !3189, file: !692, discriminator: 7)
!3194 = !DILocation(line: 819, column: 22, scope: !3193)
!3195 = !DILocation(line: 819, column: 12, scope: !3193)
!3196 = !DILocation(line: 819, column: 47, scope: !3193)
!3197 = !DILocation(line: 819, column: 33, scope: !3198)
!3198 = !DILexicalBlockFile(scope: !3189, file: !692, discriminator: 8)
!3199 = distinct !{!3199, !3200}
!3200 = !DILocation(line: 819, column: 33, scope: !3189)
!3201 = !DILocation(line: 819, column: 38, scope: !3202)
!3202 = !DILexicalBlockFile(scope: !3203, file: !692, discriminator: 9)
!3203 = distinct !DILexicalBlock(scope: !3189, file: !692, line: 819, column: 36)
!3204 = !DILocation(line: 819, column: 116, scope: !3205)
!3205 = !DILexicalBlockFile(scope: !3202, file: !692, discriminator: 13)
!3206 = !DILocation(line: 819, column: 131, scope: !3202)
!3207 = !DILocation(line: 819, column: 139, scope: !3208)
!3208 = !DILexicalBlockFile(scope: !3203, file: !692, discriminator: 10)
!3209 = !DILocation(line: 819, column: 152, scope: !3210)
!3210 = !DILexicalBlockFile(scope: !3169, file: !692, discriminator: 11)
!3211 = !DILocation(line: 821, column: 20, scope: !3153)
!3212 = !DILocation(line: 821, column: 28, scope: !3153)
!3213 = !DILocation(line: 821, column: 34, scope: !3153)
!3214 = !DILocation(line: 821, column: 10, scope: !3153)
!3215 = !DILocation(line: 821, column: 8, scope: !3153)
!3216 = !DILocation(line: 822, column: 6, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3153, file: !692, line: 822, column: 6)
!3218 = !DILocation(line: 822, column: 12, scope: !3217)
!3219 = !DILocation(line: 822, column: 19, scope: !3217)
!3220 = !DILocation(line: 822, column: 23, scope: !3221)
!3221 = !DILexicalBlockFile(scope: !3217, file: !692, discriminator: 1)
!3222 = !DILocation(line: 822, column: 22, scope: !3221)
!3223 = !DILocation(line: 822, column: 29, scope: !3221)
!3224 = !DILocation(line: 822, column: 6, scope: !3221)
!3225 = !DILocation(line: 823, column: 26, scope: !3217)
!3226 = !DILocation(line: 823, column: 35, scope: !3217)
!3227 = !DILocation(line: 823, column: 3, scope: !3217)
!3228 = !DILocation(line: 824, column: 9, scope: !3153)
!3229 = !DILocation(line: 824, column: 2, scope: !3153)
!3230 = !DILocation(line: 825, column: 1, scope: !3153)
!3231 = !DILocation(line: 825, column: 1, scope: !3232)
!3232 = !DILexicalBlockFile(scope: !3153, file: !692, discriminator: 1)
!3233 = distinct !DISubprogram(name: "cmd_mode", scope: !692, file: !692, line: 828, type: !3234, isLocal: true, isDefinition: true, scopeLine: 830, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{null, !471, !76, !59}
!3236 = !DILocalVariable(name: "data", arg: 1, scope: !3233, file: !692, line: 828, type: !471)
!3237 = !DILocation(line: 828, column: 34, scope: !3233)
!3238 = !DILocalVariable(name: "server", arg: 2, scope: !3233, file: !692, line: 828, type: !76)
!3239 = !DILocation(line: 828, column: 56, scope: !3233)
!3240 = !DILocalVariable(name: "channel", arg: 3, scope: !3233, file: !692, line: 829, type: !59)
!3241 = !DILocation(line: 829, column: 25, scope: !3233)
!3242 = !DILocalVariable(name: "chanrec", scope: !3233, file: !692, line: 831, type: !59)
!3243 = !DILocation(line: 831, column: 19, scope: !3233)
!3244 = !DILocalVariable(name: "target", scope: !3233, file: !692, line: 832, type: !95)
!3245 = !DILocation(line: 832, column: 8, scope: !3233)
!3246 = !DILocalVariable(name: "mode", scope: !3233, file: !692, line: 832, type: !95)
!3247 = !DILocation(line: 832, column: 17, scope: !3233)
!3248 = !DILocalVariable(name: "free_arg", scope: !3233, file: !692, line: 833, type: !57)
!3249 = !DILocation(line: 833, column: 8, scope: !3233)
!3250 = !DILocation(line: 835, column: 9, scope: !3233)
!3251 = distinct !{!3251, !3250}
!3252 = !DILocation(line: 835, column: 18, scope: !3253)
!3253 = !DILexicalBlockFile(scope: !3254, file: !692, discriminator: 1)
!3254 = distinct !DILexicalBlock(scope: !3255, file: !692, line: 835, column: 18)
!3255 = distinct !DILexicalBlock(scope: !3233, file: !692, line: 835, column: 12)
!3256 = !DILocation(line: 835, column: 25, scope: !3253)
!3257 = !DILocation(line: 835, column: 8, scope: !3253)
!3258 = !DILocation(line: 835, column: 92, scope: !3259)
!3259 = !DILexicalBlockFile(scope: !3254, file: !692, discriminator: 2)
!3260 = !DILocation(line: 835, column: 74, scope: !3259)
!3261 = !DILocation(line: 835, column: 59, scope: !3259)
!3262 = !DILocation(line: 835, column: 58, scope: !3259)
!3263 = !DILocation(line: 835, column: 33, scope: !3264)
!3264 = !DILexicalBlockFile(scope: !3259, file: !692, discriminator: 12)
!3265 = !DILocation(line: 835, column: 14, scope: !3259)
!3266 = !DILocation(line: 835, column: 18, scope: !3259)
!3267 = !DILocation(line: 835, column: 13, scope: !3268)
!3268 = !DILexicalBlockFile(scope: !3254, file: !692, discriminator: 3)
!3269 = !DILocation(line: 835, column: 18, scope: !3270)
!3270 = !DILexicalBlockFile(scope: !3255, file: !692, discriminator: 4)
!3271 = !DILocation(line: 835, column: 35, scope: !3272)
!3272 = !DILexicalBlockFile(scope: !3254, file: !692, discriminator: 5)
!3273 = !DILocation(line: 835, column: 47, scope: !3274)
!3274 = !DILexicalBlockFile(scope: !3275, file: !692, discriminator: 6)
!3275 = distinct !DILexicalBlock(scope: !3255, file: !692, line: 835, column: 47)
!3276 = !DILocation(line: 835, column: 54, scope: !3274)
!3277 = !DILocation(line: 835, column: 8, scope: !3274)
!3278 = !DILocation(line: 835, column: 13, scope: !3279)
!3279 = !DILexicalBlockFile(scope: !3275, file: !692, discriminator: 7)
!3280 = !DILocation(line: 835, column: 22, scope: !3279)
!3281 = !DILocation(line: 835, column: 12, scope: !3279)
!3282 = !DILocation(line: 835, column: 47, scope: !3279)
!3283 = !DILocation(line: 835, column: 33, scope: !3284)
!3284 = !DILexicalBlockFile(scope: !3275, file: !692, discriminator: 8)
!3285 = distinct !{!3285, !3286}
!3286 = !DILocation(line: 835, column: 33, scope: !3275)
!3287 = !DILocation(line: 835, column: 38, scope: !3288)
!3288 = !DILexicalBlockFile(scope: !3289, file: !692, discriminator: 9)
!3289 = distinct !DILexicalBlock(scope: !3275, file: !692, line: 835, column: 36)
!3290 = !DILocation(line: 835, column: 116, scope: !3291)
!3291 = !DILexicalBlockFile(scope: !3288, file: !692, discriminator: 13)
!3292 = !DILocation(line: 835, column: 131, scope: !3288)
!3293 = !DILocation(line: 835, column: 139, scope: !3294)
!3294 = !DILexicalBlockFile(scope: !3289, file: !692, discriminator: 10)
!3295 = !DILocation(line: 835, column: 152, scope: !3296)
!3296 = !DILexicalBlockFile(scope: !3255, file: !692, discriminator: 11)
!3297 = !DILocation(line: 837, column: 7, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3233, file: !692, line: 837, column: 6)
!3299 = !DILocation(line: 837, column: 6, scope: !3298)
!3300 = !DILocation(line: 837, column: 12, scope: !3298)
!3301 = !DILocation(line: 837, column: 19, scope: !3298)
!3302 = !DILocation(line: 837, column: 23, scope: !3303)
!3303 = !DILexicalBlockFile(scope: !3298, file: !692, discriminator: 1)
!3304 = !DILocation(line: 837, column: 22, scope: !3303)
!3305 = !DILocation(line: 837, column: 28, scope: !3303)
!3306 = !DILocation(line: 837, column: 6, scope: !3303)
!3307 = !DILocation(line: 838, column: 10, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !3298, file: !692, line: 837, column: 36)
!3309 = !DILocation(line: 839, column: 23, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !3308, file: !692, line: 839, column: 7)
!3311 = !DILocation(line: 839, column: 8, scope: !3310)
!3312 = !DILocation(line: 839, column: 7, scope: !3308)
!3313 = !DILocation(line: 840, column: 4, scope: !3310)
!3314 = !DILocation(line: 841, column: 2, scope: !3308)
!3315 = !DILocation(line: 842, column: 23, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3317, file: !692, line: 842, column: 7)
!3317 = distinct !DILexicalBlock(scope: !3298, file: !692, line: 841, column: 9)
!3318 = !DILocation(line: 842, column: 8, scope: !3316)
!3319 = !DILocation(line: 842, column: 7, scope: !3317)
!3320 = !DILocation(line: 843, column: 4, scope: !3316)
!3321 = !DILocation(line: 846, column: 16, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3233, file: !692, line: 846, column: 6)
!3323 = !DILocation(line: 846, column: 6, scope: !3322)
!3324 = !DILocation(line: 846, column: 29, scope: !3322)
!3325 = !DILocation(line: 846, column: 6, scope: !3233)
!3326 = !DILocation(line: 847, column: 97, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !3328, file: !692, line: 847, column: 7)
!3328 = distinct !DILexicalBlock(scope: !3322, file: !692, line: 846, column: 35)
!3329 = !DILocation(line: 847, column: 72, scope: !3327)
!3330 = !DILocation(line: 847, column: 56, scope: !3327)
!3331 = !DILocation(line: 847, column: 55, scope: !3327)
!3332 = !DILocation(line: 847, column: 30, scope: !3333)
!3333 = !DILexicalBlockFile(scope: !3327, file: !692, discriminator: 3)
!3334 = !DILocation(line: 847, column: 10, scope: !3327)
!3335 = !DILocation(line: 847, column: 7, scope: !3328)
!3336 = !DILocation(line: 847, column: 9, scope: !3337)
!3337 = !DILexicalBlockFile(scope: !3327, file: !692, discriminator: 1)
!3338 = !DILocation(line: 847, column: 7, scope: !3339)
!3339 = !DILexicalBlockFile(scope: !3328, file: !692, discriminator: 2)
!3340 = !DILocation(line: 848, column: 4, scope: !3327)
!3341 = distinct !{!3341, !3340}
!3342 = !DILocation(line: 848, column: 25, scope: !3343)
!3343 = !DILexicalBlockFile(scope: !3344, file: !692, discriminator: 1)
!3344 = distinct !DILexicalBlock(scope: !3327, file: !692, line: 848, column: 7)
!3345 = !DILocation(line: 848, column: 9, scope: !3343)
!3346 = !DILocation(line: 848, column: 36, scope: !3343)
!3347 = distinct !{!3347, !3348}
!3348 = !DILocation(line: 848, column: 36, scope: !3344)
!3349 = !DILocation(line: 848, column: 41, scope: !3350)
!3350 = !DILexicalBlockFile(scope: !3351, file: !692, discriminator: 2)
!3351 = distinct !DILexicalBlock(scope: !3344, file: !692, line: 848, column: 39)
!3352 = !DILocation(line: 848, column: 116, scope: !3353)
!3353 = !DILexicalBlockFile(scope: !3350, file: !692, discriminator: 5)
!3354 = !DILocation(line: 848, column: 131, scope: !3350)
!3355 = !DILocation(line: 848, column: 152, scope: !3356)
!3356 = !DILexicalBlockFile(scope: !3344, file: !692, discriminator: 3)
!3357 = !DILocation(line: 848, column: 152, scope: !3358)
!3358 = !DILexicalBlockFile(scope: !3344, file: !692, discriminator: 4)
!3359 = !DILocation(line: 850, column: 12, scope: !3328)
!3360 = !DILocation(line: 850, column: 21, scope: !3328)
!3361 = !DILocation(line: 850, column: 10, scope: !3328)
!3362 = !DILocation(line: 851, column: 2, scope: !3328)
!3363 = !DILocation(line: 852, column: 7, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3233, file: !692, line: 852, column: 6)
!3365 = !DILocation(line: 852, column: 6, scope: !3364)
!3366 = !DILocation(line: 852, column: 14, scope: !3364)
!3367 = !DILocation(line: 852, column: 6, scope: !3233)
!3368 = !DILocation(line: 852, column: 23, scope: !3369)
!3369 = !DILexicalBlockFile(scope: !3364, file: !692, discriminator: 1)
!3370 = distinct !{!3370, !3371}
!3371 = !DILocation(line: 852, column: 23, scope: !3364)
!3372 = !DILocation(line: 852, column: 44, scope: !3373)
!3373 = !DILexicalBlockFile(scope: !3374, file: !692, discriminator: 2)
!3374 = distinct !DILexicalBlock(scope: !3364, file: !692, line: 852, column: 26)
!3375 = !DILocation(line: 852, column: 28, scope: !3373)
!3376 = !DILocation(line: 852, column: 55, scope: !3373)
!3377 = distinct !{!3377, !3378}
!3378 = !DILocation(line: 852, column: 55, scope: !3374)
!3379 = !DILocation(line: 852, column: 60, scope: !3380)
!3380 = !DILexicalBlockFile(scope: !3381, file: !692, discriminator: 3)
!3381 = distinct !DILexicalBlock(scope: !3374, file: !692, line: 852, column: 58)
!3382 = !DILocation(line: 852, column: 142, scope: !3383)
!3383 = !DILexicalBlockFile(scope: !3380, file: !692, discriminator: 6)
!3384 = !DILocation(line: 852, column: 157, scope: !3380)
!3385 = !DILocation(line: 852, column: 178, scope: !3386)
!3386 = !DILexicalBlockFile(scope: !3374, file: !692, discriminator: 4)
!3387 = !DILocation(line: 852, column: 178, scope: !3388)
!3388 = !DILexicalBlockFile(scope: !3374, file: !692, discriminator: 5)
!3389 = !DILocation(line: 854, column: 7, scope: !3390)
!3390 = distinct !DILexicalBlock(scope: !3233, file: !692, line: 854, column: 6)
!3391 = !DILocation(line: 854, column: 6, scope: !3390)
!3392 = !DILocation(line: 854, column: 12, scope: !3390)
!3393 = !DILocation(line: 854, column: 6, scope: !3233)
!3394 = !DILocation(line: 855, column: 148, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3390, file: !692, line: 854, column: 21)
!3396 = !DILocation(line: 855, column: 130, scope: !3395)
!3397 = !DILocation(line: 855, column: 115, scope: !3395)
!3398 = !DILocation(line: 855, column: 26, scope: !3395)
!3399 = !DILocation(line: 855, column: 101, scope: !3400)
!3400 = !DILexicalBlockFile(scope: !3395, file: !692, discriminator: 1)
!3401 = !DILocation(line: 855, column: 101, scope: !3395)
!3402 = !DILocation(line: 855, column: 76, scope: !3403)
!3403 = !DILexicalBlockFile(scope: !3395, file: !692, discriminator: 2)
!3404 = !DILocation(line: 855, column: 60, scope: !3395)
!3405 = !DILocation(line: 855, column: 59, scope: !3395)
!3406 = !DILocation(line: 855, column: 34, scope: !3407)
!3407 = !DILexicalBlockFile(scope: !3395, file: !692, discriminator: 3)
!3408 = !DILocation(line: 855, column: 14, scope: !3395)
!3409 = !DILocation(line: 855, column: 11, scope: !3395)
!3410 = !DILocation(line: 856, column: 7, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !3395, file: !692, line: 856, column: 7)
!3412 = !DILocation(line: 856, column: 15, scope: !3411)
!3413 = !DILocation(line: 856, column: 7, scope: !3395)
!3414 = !DILocation(line: 857, column: 13, scope: !3411)
!3415 = !DILocation(line: 857, column: 22, scope: !3411)
!3416 = !DILocation(line: 857, column: 11, scope: !3411)
!3417 = !DILocation(line: 857, column: 4, scope: !3411)
!3418 = !DILocation(line: 859, column: 17, scope: !3395)
!3419 = !DILocation(line: 859, column: 36, scope: !3395)
!3420 = !DILocation(line: 859, column: 3, scope: !3395)
!3421 = !DILocation(line: 860, column: 2, scope: !3395)
!3422 = !DILocation(line: 860, column: 49, scope: !3423)
!3423 = !DILexicalBlockFile(scope: !3424, file: !692, discriminator: 1)
!3424 = distinct !DILexicalBlock(scope: !3390, file: !692, line: 860, column: 13)
!3425 = !DILocation(line: 860, column: 31, scope: !3423)
!3426 = !DILocation(line: 860, column: 16, scope: !3423)
!3427 = !DILocation(line: 860, column: 27, scope: !3423)
!3428 = !DILocation(line: 860, column: 71, scope: !3423)
!3429 = !DILocation(line: 860, column: 53, scope: !3430)
!3430 = !DILexicalBlockFile(scope: !3423, file: !692, discriminator: 2)
!3431 = !DILocation(line: 860, column: 38, scope: !3423)
!3432 = !DILocation(line: 860, column: 26, scope: !3423)
!3433 = !DILocation(line: 860, column: 14, scope: !3434)
!3434 = !DILexicalBlockFile(scope: !3423, file: !692, discriminator: 3)
!3435 = !DILocation(line: 860, column: 14, scope: !3423)
!3436 = !DILocation(line: 860, column: 13, scope: !3423)
!3437 = !DILocation(line: 861, column: 20, scope: !3424)
!3438 = !DILocation(line: 861, column: 28, scope: !3424)
!3439 = !DILocation(line: 861, column: 36, scope: !3424)
!3440 = !DILocation(line: 861, column: 3, scope: !3424)
!3441 = !DILocation(line: 863, column: 26, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3443, file: !692, line: 863, column: 7)
!3443 = distinct !DILexicalBlock(scope: !3424, file: !692, line: 862, column: 7)
!3444 = !DILocation(line: 863, column: 34, scope: !3442)
!3445 = !DILocation(line: 863, column: 42, scope: !3442)
!3446 = !DILocation(line: 863, column: 7, scope: !3442)
!3447 = !DILocation(line: 863, column: 48, scope: !3442)
!3448 = !DILocation(line: 863, column: 7, scope: !3443)
!3449 = !DILocation(line: 864, column: 26, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !3442, file: !692, line: 863, column: 54)
!3451 = !DILocation(line: 864, column: 50, scope: !3450)
!3452 = !DILocation(line: 864, column: 4, scope: !3450)
!3453 = !DILocation(line: 866, column: 3, scope: !3450)
!3454 = !DILocation(line: 868, column: 17, scope: !3443)
!3455 = !DILocation(line: 868, column: 39, scope: !3443)
!3456 = !DILocation(line: 868, column: 47, scope: !3443)
!3457 = !DILocation(line: 868, column: 3, scope: !3443)
!3458 = !DILocation(line: 871, column: 18, scope: !3233)
!3459 = !DILocation(line: 871, column: 2, scope: !3233)
!3460 = !DILocation(line: 872, column: 1, scope: !3233)
!3461 = !DILocation(line: 872, column: 1, scope: !3462)
!3462 = !DILexicalBlockFile(scope: !3233, file: !692, discriminator: 1)
!3463 = distinct !DISubprogram(name: "modes_deinit", scope: !692, file: !692, line: 918, type: !237, isLocal: false, isDefinition: true, scopeLine: 919, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!3464 = !DILocation(line: 920, column: 2, scope: !3463)
!3465 = !DILocation(line: 921, column: 2, scope: !3463)
!3466 = !DILocation(line: 922, column: 2, scope: !3463)
!3467 = !DILocation(line: 923, column: 2, scope: !3463)
!3468 = !DILocation(line: 924, column: 2, scope: !3463)
!3469 = !DILocation(line: 925, column: 9, scope: !3463)
!3470 = !DILocation(line: 927, column: 2, scope: !3463)
!3471 = !DILocation(line: 928, column: 2, scope: !3463)
!3472 = !DILocation(line: 929, column: 2, scope: !3463)
!3473 = !DILocation(line: 930, column: 2, scope: !3463)
!3474 = !DILocation(line: 931, column: 2, scope: !3463)
!3475 = !DILocation(line: 932, column: 1, scope: !3463)
!3476 = distinct !DISubprogram(name: "mode_remove", scope: !692, file: !692, line: 210, type: !3477, isLocal: true, isDefinition: true, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!3477 = !DISubroutineType(types: !3478)
!3478 = !{null, !76, !288, !96, !67}
!3479 = !DILocalVariable(name: "server", arg: 1, scope: !3476, file: !692, line: 210, type: !76)
!3480 = !DILocation(line: 210, column: 41, scope: !3476)
!3481 = !DILocalVariable(name: "str", arg: 2, scope: !3476, file: !692, line: 210, type: !288)
!3482 = !DILocation(line: 210, column: 58, scope: !3476)
!3483 = !DILocalVariable(name: "mode", arg: 3, scope: !3476, file: !692, line: 210, type: !96)
!3484 = !DILocation(line: 210, column: 68, scope: !3476)
!3485 = !DILocalVariable(name: "user", arg: 4, scope: !3476, file: !692, line: 210, type: !67)
!3486 = !DILocation(line: 210, column: 78, scope: !3476)
!3487 = !DILocalVariable(name: "p", scope: !3476, file: !692, line: 212, type: !95)
!3488 = !DILocation(line: 212, column: 8, scope: !3476)
!3489 = !DILocalVariable(name: "argpos", scope: !3476, file: !692, line: 213, type: !67)
!3490 = !DILocation(line: 213, column: 6, scope: !3476)
!3491 = !DILocation(line: 215, column: 11, scope: !3492)
!3492 = distinct !DILexicalBlock(scope: !3476, file: !692, line: 215, column: 2)
!3493 = !DILocation(line: 215, column: 16, scope: !3492)
!3494 = !DILocation(line: 215, column: 9, scope: !3492)
!3495 = !DILocation(line: 215, column: 7, scope: !3492)
!3496 = !DILocation(line: 215, column: 22, scope: !3497)
!3497 = !DILexicalBlockFile(scope: !3498, file: !692, discriminator: 1)
!3498 = distinct !DILexicalBlock(scope: !3492, file: !692, line: 215, column: 2)
!3499 = !DILocation(line: 215, column: 21, scope: !3497)
!3500 = !DILocation(line: 215, column: 24, scope: !3497)
!3501 = !DILocation(line: 215, column: 32, scope: !3497)
!3502 = !DILocation(line: 215, column: 36, scope: !3503)
!3503 = !DILexicalBlockFile(scope: !3498, file: !692, discriminator: 2)
!3504 = !DILocation(line: 215, column: 35, scope: !3503)
!3505 = !DILocation(line: 215, column: 38, scope: !3503)
!3506 = !DILocation(line: 215, column: 2, scope: !3507)
!3507 = !DILexicalBlockFile(scope: !3492, file: !692, discriminator: 3)
!3508 = !DILocation(line: 216, column: 7, scope: !3509)
!3509 = distinct !DILexicalBlock(scope: !3510, file: !692, line: 216, column: 7)
!3510 = distinct !DILexicalBlock(scope: !3498, file: !692, line: 215, column: 51)
!3511 = !DILocation(line: 216, column: 16, scope: !3509)
!3512 = !DILocation(line: 216, column: 15, scope: !3509)
!3513 = !DILocation(line: 216, column: 12, scope: !3509)
!3514 = !DILocation(line: 216, column: 7, scope: !3510)
!3515 = !DILocation(line: 217, column: 19, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3509, file: !692, line: 216, column: 19)
!3517 = !DILocation(line: 217, column: 31, scope: !3516)
!3518 = !DILocation(line: 217, column: 33, scope: !3516)
!3519 = !DILocation(line: 217, column: 38, scope: !3516)
!3520 = !DILocation(line: 217, column: 32, scope: !3516)
!3521 = !DILocation(line: 217, column: 24, scope: !3516)
!3522 = !DILocation(line: 217, column: 4, scope: !3516)
!3523 = !DILocation(line: 218, column: 9, scope: !3524)
!3524 = distinct !DILexicalBlock(scope: !3516, file: !692, line: 218, column: 8)
!3525 = !DILocation(line: 218, column: 14, scope: !3524)
!3526 = !DILocation(line: 218, column: 54, scope: !3527)
!3527 = !DILexicalBlockFile(scope: !3524, file: !692, discriminator: 1)
!3528 = !DILocation(line: 218, column: 33, scope: !3527)
!3529 = !DILocation(line: 218, column: 19, scope: !3527)
!3530 = !DILocation(line: 218, column: 27, scope: !3527)
!3531 = !DILocation(line: 218, column: 60, scope: !3527)
!3532 = !DILocation(line: 218, column: 65, scope: !3527)
!3533 = !DILocation(line: 218, column: 81, scope: !3527)
!3534 = !DILocation(line: 218, column: 119, scope: !3535)
!3535 = !DILexicalBlockFile(scope: !3524, file: !692, discriminator: 2)
!3536 = !DILocation(line: 218, column: 98, scope: !3535)
!3537 = !DILocation(line: 218, column: 84, scope: !3535)
!3538 = !DILocation(line: 218, column: 92, scope: !3535)
!3539 = !DILocation(line: 218, column: 125, scope: !3535)
!3540 = !DILocation(line: 218, column: 130, scope: !3535)
!3541 = !DILocation(line: 218, column: 146, scope: !3535)
!3542 = !DILocation(line: 218, column: 184, scope: !3543)
!3543 = !DILexicalBlockFile(scope: !3524, file: !692, discriminator: 3)
!3544 = !DILocation(line: 218, column: 163, scope: !3543)
!3545 = !DILocation(line: 218, column: 149, scope: !3543)
!3546 = !DILocation(line: 218, column: 157, scope: !3543)
!3547 = !DILocation(line: 218, column: 190, scope: !3543)
!3548 = !DILocation(line: 218, column: 195, scope: !3543)
!3549 = !DILocation(line: 218, column: 217, scope: !3543)
!3550 = !DILocation(line: 218, column: 255, scope: !3551)
!3551 = !DILexicalBlockFile(scope: !3524, file: !692, discriminator: 4)
!3552 = !DILocation(line: 218, column: 234, scope: !3551)
!3553 = !DILocation(line: 218, column: 220, scope: !3551)
!3554 = !DILocation(line: 218, column: 228, scope: !3551)
!3555 = !DILocation(line: 218, column: 261, scope: !3551)
!3556 = !DILocation(line: 218, column: 266, scope: !3551)
!3557 = !DILocation(line: 218, column: 8, scope: !3551)
!3558 = !DILocation(line: 219, column: 49, scope: !3524)
!3559 = !DILocation(line: 219, column: 54, scope: !3524)
!3560 = !DILocation(line: 219, column: 33, scope: !3524)
!3561 = !DILocation(line: 220, column: 4, scope: !3516)
!3562 = !DILocation(line: 222, column: 8, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3510, file: !692, line: 222, column: 7)
!3564 = !DILocation(line: 222, column: 13, scope: !3563)
!3565 = !DILocation(line: 222, column: 54, scope: !3566)
!3566 = !DILexicalBlockFile(scope: !3563, file: !692, discriminator: 1)
!3567 = !DILocation(line: 222, column: 53, scope: !3566)
!3568 = !DILocation(line: 222, column: 32, scope: !3566)
!3569 = !DILocation(line: 222, column: 18, scope: !3566)
!3570 = !DILocation(line: 222, column: 26, scope: !3566)
!3571 = !DILocation(line: 222, column: 57, scope: !3566)
!3572 = !DILocation(line: 222, column: 62, scope: !3566)
!3573 = !DILocation(line: 222, column: 78, scope: !3566)
!3574 = !DILocation(line: 222, column: 117, scope: !3575)
!3575 = !DILexicalBlockFile(scope: !3563, file: !692, discriminator: 2)
!3576 = !DILocation(line: 222, column: 116, scope: !3575)
!3577 = !DILocation(line: 222, column: 95, scope: !3575)
!3578 = !DILocation(line: 222, column: 81, scope: !3575)
!3579 = !DILocation(line: 222, column: 89, scope: !3575)
!3580 = !DILocation(line: 222, column: 120, scope: !3575)
!3581 = !DILocation(line: 222, column: 125, scope: !3575)
!3582 = !DILocation(line: 222, column: 141, scope: !3575)
!3583 = !DILocation(line: 222, column: 180, scope: !3584)
!3584 = !DILexicalBlockFile(scope: !3563, file: !692, discriminator: 3)
!3585 = !DILocation(line: 222, column: 179, scope: !3584)
!3586 = !DILocation(line: 222, column: 158, scope: !3584)
!3587 = !DILocation(line: 222, column: 144, scope: !3584)
!3588 = !DILocation(line: 222, column: 152, scope: !3584)
!3589 = !DILocation(line: 222, column: 183, scope: !3584)
!3590 = !DILocation(line: 222, column: 188, scope: !3584)
!3591 = !DILocation(line: 222, column: 210, scope: !3584)
!3592 = !DILocation(line: 222, column: 249, scope: !3593)
!3593 = !DILexicalBlockFile(scope: !3563, file: !692, discriminator: 4)
!3594 = !DILocation(line: 222, column: 248, scope: !3593)
!3595 = !DILocation(line: 222, column: 227, scope: !3593)
!3596 = !DILocation(line: 222, column: 213, scope: !3593)
!3597 = !DILocation(line: 222, column: 221, scope: !3593)
!3598 = !DILocation(line: 222, column: 252, scope: !3593)
!3599 = !DILocation(line: 222, column: 257, scope: !3593)
!3600 = !DILocation(line: 222, column: 7, scope: !3593)
!3601 = !DILocation(line: 223, column: 10, scope: !3563)
!3602 = !DILocation(line: 223, column: 4, scope: !3563)
!3603 = !DILocation(line: 224, column: 2, scope: !3510)
!3604 = !DILocation(line: 215, column: 47, scope: !3605)
!3605 = !DILexicalBlockFile(scope: !3498, file: !692, discriminator: 4)
!3606 = !DILocation(line: 215, column: 2, scope: !3605)
!3607 = distinct !{!3607, !3608}
!3608 = !DILocation(line: 215, column: 2, scope: !3476)
!3609 = !DILocation(line: 225, column: 1, scope: !3476)
!3610 = distinct !DISubprogram(name: "mode_add_sorted", scope: !692, file: !692, line: 151, type: !3611, isLocal: true, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!3611 = !DISubroutineType(types: !3612)
!3612 = !{null, !76, !288, !96, !471, !67}
!3613 = !DILocalVariable(name: "server", arg: 1, scope: !3610, file: !692, line: 151, type: !76)
!3614 = !DILocation(line: 151, column: 45, scope: !3610)
!3615 = !DILocalVariable(name: "str", arg: 2, scope: !3610, file: !692, line: 151, type: !288)
!3616 = !DILocation(line: 151, column: 62, scope: !3610)
!3617 = !DILocalVariable(name: "mode", arg: 3, scope: !3610, file: !692, line: 152, type: !96)
!3618 = !DILocation(line: 152, column: 13, scope: !3610)
!3619 = !DILocalVariable(name: "arg", arg: 4, scope: !3610, file: !692, line: 152, type: !471)
!3620 = !DILocation(line: 152, column: 31, scope: !3610)
!3621 = !DILocalVariable(name: "user", arg: 5, scope: !3610, file: !692, line: 152, type: !67)
!3622 = !DILocation(line: 152, column: 40, scope: !3610)
!3623 = !DILocalVariable(name: "p", scope: !3610, file: !692, line: 154, type: !95)
!3624 = !DILocation(line: 154, column: 8, scope: !3610)
!3625 = !DILocalVariable(name: "updating", scope: !3610, file: !692, line: 155, type: !67)
!3626 = !DILocation(line: 155, column: 6, scope: !3610)
!3627 = !DILocalVariable(name: "argpos", scope: !3610, file: !692, line: 155, type: !67)
!3628 = !DILocation(line: 155, column: 16, scope: !3610)
!3629 = !DILocation(line: 158, column: 8, scope: !3630)
!3630 = distinct !DILexicalBlock(scope: !3610, file: !692, line: 158, column: 6)
!3631 = !DILocation(line: 158, column: 13, scope: !3630)
!3632 = !DILocation(line: 158, column: 54, scope: !3633)
!3633 = !DILexicalBlockFile(scope: !3630, file: !692, discriminator: 1)
!3634 = !DILocation(line: 158, column: 33, scope: !3633)
!3635 = !DILocation(line: 158, column: 19, scope: !3633)
!3636 = !DILocation(line: 158, column: 27, scope: !3633)
!3637 = !DILocation(line: 158, column: 60, scope: !3633)
!3638 = !DILocation(line: 158, column: 65, scope: !3633)
!3639 = !DILocation(line: 158, column: 81, scope: !3633)
!3640 = !DILocation(line: 158, column: 119, scope: !3641)
!3641 = !DILexicalBlockFile(scope: !3630, file: !692, discriminator: 2)
!3642 = !DILocation(line: 158, column: 98, scope: !3641)
!3643 = !DILocation(line: 158, column: 84, scope: !3641)
!3644 = !DILocation(line: 158, column: 92, scope: !3641)
!3645 = !DILocation(line: 158, column: 125, scope: !3641)
!3646 = !DILocation(line: 158, column: 130, scope: !3641)
!3647 = !DILocation(line: 158, column: 146, scope: !3641)
!3648 = !DILocation(line: 158, column: 184, scope: !3649)
!3649 = !DILexicalBlockFile(scope: !3630, file: !692, discriminator: 3)
!3650 = !DILocation(line: 158, column: 163, scope: !3649)
!3651 = !DILocation(line: 158, column: 149, scope: !3649)
!3652 = !DILocation(line: 158, column: 157, scope: !3649)
!3653 = !DILocation(line: 158, column: 190, scope: !3649)
!3654 = !DILocation(line: 158, column: 195, scope: !3649)
!3655 = !DILocation(line: 158, column: 217, scope: !3649)
!3656 = !DILocation(line: 158, column: 255, scope: !3657)
!3657 = !DILexicalBlockFile(scope: !3630, file: !692, discriminator: 4)
!3658 = !DILocation(line: 158, column: 234, scope: !3657)
!3659 = !DILocation(line: 158, column: 220, scope: !3657)
!3660 = !DILocation(line: 158, column: 228, scope: !3657)
!3661 = !DILocation(line: 158, column: 261, scope: !3657)
!3662 = !DILocation(line: 158, column: 266, scope: !3657)
!3663 = !DILocation(line: 158, column: 284, scope: !3657)
!3664 = !DILocation(line: 159, column: 18, scope: !3630)
!3665 = !DILocation(line: 159, column: 23, scope: !3630)
!3666 = !DILocation(line: 159, column: 28, scope: !3630)
!3667 = !DILocation(line: 159, column: 6, scope: !3630)
!3668 = !DILocation(line: 158, column: 6, scope: !3669)
!3669 = !DILexicalBlockFile(scope: !3610, file: !692, discriminator: 5)
!3670 = !DILocation(line: 160, column: 3, scope: !3630)
!3671 = !DILocation(line: 162, column: 11, scope: !3610)
!3672 = !DILocation(line: 163, column: 11, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !3610, file: !692, line: 163, column: 2)
!3674 = !DILocation(line: 163, column: 16, scope: !3673)
!3675 = !DILocation(line: 163, column: 9, scope: !3673)
!3676 = !DILocation(line: 163, column: 7, scope: !3673)
!3677 = !DILocation(line: 163, column: 22, scope: !3678)
!3678 = !DILexicalBlockFile(scope: !3679, file: !692, discriminator: 1)
!3679 = distinct !DILexicalBlock(scope: !3673, file: !692, line: 163, column: 2)
!3680 = !DILocation(line: 163, column: 21, scope: !3678)
!3681 = !DILocation(line: 163, column: 24, scope: !3678)
!3682 = !DILocation(line: 163, column: 32, scope: !3678)
!3683 = !DILocation(line: 163, column: 36, scope: !3684)
!3684 = !DILexicalBlockFile(scope: !3679, file: !692, discriminator: 2)
!3685 = !DILocation(line: 163, column: 35, scope: !3684)
!3686 = !DILocation(line: 163, column: 38, scope: !3684)
!3687 = !DILocation(line: 163, column: 2, scope: !3688)
!3688 = !DILexicalBlockFile(scope: !3673, file: !692, discriminator: 3)
!3689 = !DILocation(line: 164, column: 7, scope: !3690)
!3690 = distinct !DILexicalBlock(scope: !3691, file: !692, line: 164, column: 7)
!3691 = distinct !DILexicalBlock(scope: !3679, file: !692, line: 163, column: 51)
!3692 = !DILocation(line: 164, column: 15, scope: !3690)
!3693 = !DILocation(line: 164, column: 14, scope: !3690)
!3694 = !DILocation(line: 164, column: 12, scope: !3690)
!3695 = !DILocation(line: 164, column: 7, scope: !3691)
!3696 = !DILocation(line: 165, column: 4, scope: !3690)
!3697 = !DILocation(line: 166, column: 7, scope: !3698)
!3698 = distinct !DILexicalBlock(scope: !3691, file: !692, line: 166, column: 7)
!3699 = !DILocation(line: 166, column: 16, scope: !3698)
!3700 = !DILocation(line: 166, column: 15, scope: !3698)
!3701 = !DILocation(line: 166, column: 12, scope: !3698)
!3702 = !DILocation(line: 166, column: 7, scope: !3691)
!3703 = !DILocation(line: 167, column: 34, scope: !3704)
!3704 = distinct !DILexicalBlock(scope: !3698, file: !692, line: 166, column: 19)
!3705 = !DILocation(line: 168, column: 4, scope: !3704)
!3706 = !DILocation(line: 170, column: 8, scope: !3707)
!3707 = distinct !DILexicalBlock(scope: !3691, file: !692, line: 170, column: 7)
!3708 = !DILocation(line: 170, column: 13, scope: !3707)
!3709 = !DILocation(line: 170, column: 54, scope: !3710)
!3710 = !DILexicalBlockFile(scope: !3707, file: !692, discriminator: 1)
!3711 = !DILocation(line: 170, column: 53, scope: !3710)
!3712 = !DILocation(line: 170, column: 32, scope: !3710)
!3713 = !DILocation(line: 170, column: 18, scope: !3710)
!3714 = !DILocation(line: 170, column: 26, scope: !3710)
!3715 = !DILocation(line: 170, column: 57, scope: !3710)
!3716 = !DILocation(line: 170, column: 62, scope: !3710)
!3717 = !DILocation(line: 170, column: 78, scope: !3710)
!3718 = !DILocation(line: 170, column: 117, scope: !3719)
!3719 = !DILexicalBlockFile(scope: !3707, file: !692, discriminator: 2)
!3720 = !DILocation(line: 170, column: 116, scope: !3719)
!3721 = !DILocation(line: 170, column: 95, scope: !3719)
!3722 = !DILocation(line: 170, column: 81, scope: !3719)
!3723 = !DILocation(line: 170, column: 89, scope: !3719)
!3724 = !DILocation(line: 170, column: 120, scope: !3719)
!3725 = !DILocation(line: 170, column: 125, scope: !3719)
!3726 = !DILocation(line: 170, column: 141, scope: !3719)
!3727 = !DILocation(line: 170, column: 180, scope: !3728)
!3728 = !DILexicalBlockFile(scope: !3707, file: !692, discriminator: 3)
!3729 = !DILocation(line: 170, column: 179, scope: !3728)
!3730 = !DILocation(line: 170, column: 158, scope: !3728)
!3731 = !DILocation(line: 170, column: 144, scope: !3728)
!3732 = !DILocation(line: 170, column: 152, scope: !3728)
!3733 = !DILocation(line: 170, column: 183, scope: !3728)
!3734 = !DILocation(line: 170, column: 188, scope: !3728)
!3735 = !DILocation(line: 170, column: 210, scope: !3728)
!3736 = !DILocation(line: 170, column: 249, scope: !3737)
!3737 = !DILexicalBlockFile(scope: !3707, file: !692, discriminator: 4)
!3738 = !DILocation(line: 170, column: 248, scope: !3737)
!3739 = !DILocation(line: 170, column: 227, scope: !3737)
!3740 = !DILocation(line: 170, column: 213, scope: !3737)
!3741 = !DILocation(line: 170, column: 221, scope: !3737)
!3742 = !DILocation(line: 170, column: 252, scope: !3737)
!3743 = !DILocation(line: 170, column: 257, scope: !3737)
!3744 = !DILocation(line: 170, column: 7, scope: !3737)
!3745 = !DILocation(line: 171, column: 10, scope: !3707)
!3746 = !DILocation(line: 171, column: 4, scope: !3707)
!3747 = !DILocation(line: 172, column: 2, scope: !3691)
!3748 = !DILocation(line: 163, column: 47, scope: !3749)
!3749 = !DILexicalBlockFile(scope: !3679, file: !692, discriminator: 4)
!3750 = !DILocation(line: 163, column: 2, scope: !3749)
!3751 = distinct !{!3751, !3752}
!3752 = !DILocation(line: 163, column: 2, scope: !3610)
!3753 = !DILocation(line: 175, column: 7, scope: !3754)
!3754 = distinct !DILexicalBlock(scope: !3610, file: !692, line: 175, column: 6)
!3755 = !DILocation(line: 175, column: 6, scope: !3610)
!3756 = !DILocation(line: 176, column: 8, scope: !3757)
!3757 = distinct !DILexicalBlock(scope: !3758, file: !692, line: 176, column: 7)
!3758 = distinct !DILexicalBlock(scope: !3754, file: !692, line: 175, column: 17)
!3759 = !DILocation(line: 176, column: 7, scope: !3757)
!3760 = !DILocation(line: 176, column: 10, scope: !3757)
!3761 = !DILocation(line: 176, column: 7, scope: !3758)
!3762 = !DILocation(line: 177, column: 30, scope: !3757)
!3763 = !DILocation(line: 177, column: 35, scope: !3757)
!3764 = !DILocation(line: 177, column: 4, scope: !3757)
!3765 = !DILocation(line: 179, column: 22, scope: !3757)
!3766 = !DILocation(line: 179, column: 34, scope: !3757)
!3767 = !DILocation(line: 179, column: 36, scope: !3757)
!3768 = !DILocation(line: 179, column: 41, scope: !3757)
!3769 = !DILocation(line: 179, column: 35, scope: !3757)
!3770 = !DILocation(line: 179, column: 27, scope: !3757)
!3771 = !DILocation(line: 179, column: 47, scope: !3757)
!3772 = !DILocation(line: 179, column: 4, scope: !3757)
!3773 = !DILocation(line: 180, column: 2, scope: !3758)
!3774 = !DILocation(line: 181, column: 6, scope: !3775)
!3775 = distinct !DILexicalBlock(scope: !3610, file: !692, line: 181, column: 6)
!3776 = !DILocation(line: 181, column: 10, scope: !3775)
!3777 = !DILocation(line: 181, column: 6, scope: !3610)
!3778 = !DILocation(line: 182, column: 30, scope: !3775)
!3779 = !DILocation(line: 182, column: 35, scope: !3775)
!3780 = !DILocation(line: 182, column: 43, scope: !3775)
!3781 = !DILocation(line: 182, column: 53, scope: !3775)
!3782 = !DILocation(line: 182, column: 17, scope: !3775)
!3783 = !DILocation(line: 183, column: 1, scope: !3610)
!3784 = distinct !DISubprogram(name: "node_remove_arg", scope: !692, file: !692, line: 186, type: !3785, isLocal: true, isDefinition: true, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!3785 = !DISubroutineType(types: !3786)
!3786 = !{null, !288, !67}
!3787 = !DILocalVariable(name: "str", arg: 1, scope: !3784, file: !692, line: 186, type: !288)
!3788 = !DILocation(line: 186, column: 38, scope: !3784)
!3789 = !DILocalVariable(name: "pos", arg: 2, scope: !3784, file: !692, line: 186, type: !67)
!3790 = !DILocation(line: 186, column: 47, scope: !3784)
!3791 = !DILocalVariable(name: "p", scope: !3784, file: !692, line: 188, type: !95)
!3792 = !DILocation(line: 188, column: 8, scope: !3784)
!3793 = !DILocalVariable(name: "startpos", scope: !3784, file: !692, line: 189, type: !67)
!3794 = !DILocation(line: 189, column: 6, scope: !3784)
!3795 = !DILocation(line: 191, column: 11, scope: !3784)
!3796 = !DILocation(line: 192, column: 11, scope: !3797)
!3797 = distinct !DILexicalBlock(scope: !3784, file: !692, line: 192, column: 2)
!3798 = !DILocation(line: 192, column: 16, scope: !3797)
!3799 = !DILocation(line: 192, column: 9, scope: !3797)
!3800 = !DILocation(line: 192, column: 7, scope: !3797)
!3801 = !DILocation(line: 192, column: 22, scope: !3802)
!3802 = !DILexicalBlockFile(scope: !3803, file: !692, discriminator: 1)
!3803 = distinct !DILexicalBlock(scope: !3797, file: !692, line: 192, column: 2)
!3804 = !DILocation(line: 192, column: 21, scope: !3802)
!3805 = !DILocation(line: 192, column: 24, scope: !3802)
!3806 = !DILocation(line: 192, column: 2, scope: !3802)
!3807 = !DILocation(line: 193, column: 8, scope: !3808)
!3808 = distinct !DILexicalBlock(scope: !3809, file: !692, line: 193, column: 7)
!3809 = distinct !DILexicalBlock(scope: !3803, file: !692, line: 192, column: 38)
!3810 = !DILocation(line: 193, column: 7, scope: !3808)
!3811 = !DILocation(line: 193, column: 10, scope: !3808)
!3812 = !DILocation(line: 193, column: 7, scope: !3809)
!3813 = !DILocation(line: 194, column: 4, scope: !3808)
!3814 = !DILocation(line: 196, column: 7, scope: !3815)
!3815 = distinct !DILexicalBlock(scope: !3809, file: !692, line: 196, column: 7)
!3816 = !DILocation(line: 196, column: 11, scope: !3815)
!3817 = !DILocation(line: 196, column: 7, scope: !3809)
!3818 = !DILocation(line: 197, column: 4, scope: !3815)
!3819 = !DILocation(line: 198, column: 7, scope: !3820)
!3820 = distinct !DILexicalBlock(scope: !3809, file: !692, line: 198, column: 7)
!3821 = !DILocation(line: 198, column: 11, scope: !3820)
!3822 = !DILocation(line: 198, column: 7, scope: !3809)
!3823 = !DILocation(line: 199, column: 22, scope: !3820)
!3824 = !DILocation(line: 199, column: 24, scope: !3820)
!3825 = !DILocation(line: 199, column: 29, scope: !3820)
!3826 = !DILocation(line: 199, column: 23, scope: !3820)
!3827 = !DILocation(line: 199, column: 15, scope: !3820)
!3828 = !DILocation(line: 199, column: 13, scope: !3820)
!3829 = !DILocation(line: 199, column: 4, scope: !3820)
!3830 = !DILocation(line: 200, column: 6, scope: !3809)
!3831 = !DILocation(line: 201, column: 2, scope: !3809)
!3832 = !DILocation(line: 192, column: 34, scope: !3833)
!3833 = !DILexicalBlockFile(scope: !3803, file: !692, discriminator: 2)
!3834 = !DILocation(line: 192, column: 2, scope: !3833)
!3835 = distinct !{!3835, !3836}
!3836 = !DILocation(line: 192, column: 2, scope: !3784)
!3837 = !DILocation(line: 203, column: 6, scope: !3838)
!3838 = distinct !DILexicalBlock(scope: !3784, file: !692, line: 203, column: 6)
!3839 = !DILocation(line: 203, column: 15, scope: !3838)
!3840 = !DILocation(line: 203, column: 6, scope: !3784)
!3841 = !DILocation(line: 204, column: 3, scope: !3838)
!3842 = !DILocation(line: 206, column: 24, scope: !3784)
!3843 = !DILocation(line: 206, column: 29, scope: !3784)
!3844 = !DILocation(line: 206, column: 46, scope: !3784)
!3845 = !DILocation(line: 206, column: 48, scope: !3784)
!3846 = !DILocation(line: 206, column: 53, scope: !3784)
!3847 = !DILocation(line: 206, column: 47, scope: !3784)
!3848 = !DILocation(line: 206, column: 39, scope: !3784)
!3849 = !DILocation(line: 206, column: 58, scope: !3784)
!3850 = !DILocation(line: 206, column: 57, scope: !3784)
!3851 = !DILocation(line: 206, column: 9, scope: !3784)
!3852 = !DILocation(line: 207, column: 1, scope: !3784)
!3853 = !DILocation(line: 207, column: 1, scope: !3854)
!3854 = !DILexicalBlockFile(scope: !3784, file: !692, discriminator: 1)
!3855 = distinct !DISubprogram(name: "mode_add_arg", scope: !692, file: !692, line: 125, type: !3856, isLocal: true, isDefinition: true, scopeLine: 126, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!3856 = !DISubroutineType(types: !3857)
!3857 = !{null, !288, !67, !67, !471}
!3858 = !DILocalVariable(name: "str", arg: 1, scope: !3855, file: !692, line: 125, type: !288)
!3859 = !DILocation(line: 125, column: 35, scope: !3855)
!3860 = !DILocalVariable(name: "pos", arg: 2, scope: !3855, file: !692, line: 125, type: !67)
!3861 = !DILocation(line: 125, column: 44, scope: !3855)
!3862 = !DILocalVariable(name: "updating", arg: 3, scope: !3855, file: !692, line: 125, type: !67)
!3863 = !DILocation(line: 125, column: 53, scope: !3855)
!3864 = !DILocalVariable(name: "arg", arg: 4, scope: !3855, file: !692, line: 125, type: !471)
!3865 = !DILocation(line: 125, column: 75, scope: !3855)
!3866 = !DILocalVariable(name: "p", scope: !3855, file: !692, line: 127, type: !95)
!3867 = !DILocation(line: 127, column: 8, scope: !3855)
!3868 = !DILocation(line: 129, column: 11, scope: !3869)
!3869 = distinct !DILexicalBlock(scope: !3855, file: !692, line: 129, column: 2)
!3870 = !DILocation(line: 129, column: 16, scope: !3869)
!3871 = !DILocation(line: 129, column: 9, scope: !3869)
!3872 = !DILocation(line: 129, column: 7, scope: !3869)
!3873 = !DILocation(line: 129, column: 22, scope: !3874)
!3874 = !DILexicalBlockFile(scope: !3875, file: !692, discriminator: 1)
!3875 = distinct !DILexicalBlock(scope: !3869, file: !692, line: 129, column: 2)
!3876 = !DILocation(line: 129, column: 21, scope: !3874)
!3877 = !DILocation(line: 129, column: 24, scope: !3874)
!3878 = !DILocation(line: 129, column: 2, scope: !3874)
!3879 = !DILocation(line: 130, column: 8, scope: !3880)
!3880 = distinct !DILexicalBlock(scope: !3881, file: !692, line: 130, column: 7)
!3881 = distinct !DILexicalBlock(scope: !3875, file: !692, line: 129, column: 38)
!3882 = !DILocation(line: 130, column: 7, scope: !3880)
!3883 = !DILocation(line: 130, column: 10, scope: !3880)
!3884 = !DILocation(line: 130, column: 7, scope: !3881)
!3885 = !DILocation(line: 131, column: 4, scope: !3880)
!3886 = !DILocation(line: 133, column: 7, scope: !3887)
!3887 = distinct !DILexicalBlock(scope: !3881, file: !692, line: 133, column: 7)
!3888 = !DILocation(line: 133, column: 11, scope: !3887)
!3889 = !DILocation(line: 133, column: 7, scope: !3881)
!3890 = !DILocation(line: 134, column: 4, scope: !3887)
!3891 = !DILocation(line: 135, column: 6, scope: !3881)
!3892 = !DILocation(line: 136, column: 2, scope: !3881)
!3893 = !DILocation(line: 129, column: 34, scope: !3894)
!3894 = !DILexicalBlockFile(scope: !3875, file: !692, discriminator: 2)
!3895 = !DILocation(line: 129, column: 2, scope: !3894)
!3896 = distinct !{!3896, !3897}
!3897 = !DILocation(line: 129, column: 2, scope: !3855)
!3898 = !DILocation(line: 138, column: 15, scope: !3855)
!3899 = !DILocation(line: 138, column: 17, scope: !3855)
!3900 = !DILocation(line: 138, column: 22, scope: !3855)
!3901 = !DILocation(line: 138, column: 16, scope: !3855)
!3902 = !DILocation(line: 138, column: 8, scope: !3855)
!3903 = !DILocation(line: 138, column: 6, scope: !3855)
!3904 = !DILocation(line: 139, column: 6, scope: !3905)
!3905 = distinct !DILexicalBlock(scope: !3855, file: !692, line: 139, column: 6)
!3906 = !DILocation(line: 139, column: 15, scope: !3905)
!3907 = !DILocation(line: 139, column: 19, scope: !3908)
!3908 = !DILexicalBlockFile(scope: !3905, file: !692, discriminator: 1)
!3909 = !DILocation(line: 139, column: 18, scope: !3908)
!3910 = !DILocation(line: 139, column: 21, scope: !3908)
!3911 = !DILocation(line: 139, column: 6, scope: !3908)
!3912 = !DILocation(line: 141, column: 18, scope: !3913)
!3913 = distinct !DILexicalBlock(scope: !3905, file: !692, line: 139, column: 30)
!3914 = !DILocation(line: 142, column: 3, scope: !3913)
!3915 = !DILocation(line: 142, column: 11, scope: !3916)
!3916 = !DILexicalBlockFile(scope: !3913, file: !692, discriminator: 1)
!3917 = !DILocation(line: 142, column: 10, scope: !3916)
!3918 = !DILocation(line: 142, column: 13, scope: !3916)
!3919 = !DILocation(line: 142, column: 21, scope: !3916)
!3920 = !DILocation(line: 142, column: 25, scope: !3921)
!3921 = !DILexicalBlockFile(scope: !3913, file: !692, discriminator: 2)
!3922 = !DILocation(line: 142, column: 24, scope: !3921)
!3923 = !DILocation(line: 142, column: 27, scope: !3921)
!3924 = !DILocation(line: 142, column: 3, scope: !3925)
!3925 = !DILexicalBlockFile(scope: !3913, file: !692, discriminator: 3)
!3926 = !DILocation(line: 142, column: 36, scope: !3927)
!3927 = !DILexicalBlockFile(scope: !3913, file: !692, discriminator: 4)
!3928 = !DILocation(line: 142, column: 3, scope: !3927)
!3929 = distinct !{!3929, !3914}
!3930 = !DILocation(line: 143, column: 32, scope: !3913)
!3931 = !DILocation(line: 143, column: 37, scope: !3913)
!3932 = !DILocation(line: 143, column: 49, scope: !3913)
!3933 = !DILocation(line: 143, column: 51, scope: !3913)
!3934 = !DILocation(line: 143, column: 56, scope: !3913)
!3935 = !DILocation(line: 143, column: 50, scope: !3913)
!3936 = !DILocation(line: 143, column: 42, scope: !3913)
!3937 = !DILocation(line: 143, column: 61, scope: !3913)
!3938 = !DILocation(line: 143, column: 60, scope: !3913)
!3939 = !DILocation(line: 143, column: 17, scope: !3913)
!3940 = !DILocation(line: 144, column: 2, scope: !3913)
!3941 = !DILocation(line: 146, column: 20, scope: !3855)
!3942 = !DILocation(line: 146, column: 25, scope: !3855)
!3943 = !DILocation(line: 146, column: 2, scope: !3855)
!3944 = !DILocation(line: 147, column: 18, scope: !3855)
!3945 = !DILocation(line: 147, column: 23, scope: !3855)
!3946 = !DILocation(line: 147, column: 26, scope: !3855)
!3947 = !DILocation(line: 147, column: 30, scope: !3855)
!3948 = !DILocation(line: 147, column: 2, scope: !3855)
!3949 = !DILocation(line: 148, column: 1, scope: !3855)
!3950 = distinct !DISubprogram(name: "parse_user_mode", scope: !692, file: !692, line: 452, type: !2620, isLocal: true, isDefinition: true, scopeLine: 453, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!3951 = !DILocalVariable(name: "server", arg: 1, scope: !3950, file: !692, line: 452, type: !76)
!3952 = !DILocation(line: 452, column: 45, scope: !3950)
!3953 = !DILocalVariable(name: "modestr", arg: 2, scope: !3950, file: !692, line: 452, type: !471)
!3954 = !DILocation(line: 452, column: 65, scope: !3950)
!3955 = !DILocalVariable(name: "newmode", scope: !3950, file: !692, line: 454, type: !95)
!3956 = !DILocation(line: 454, column: 8, scope: !3950)
!3957 = !DILocalVariable(name: "oldmode", scope: !3950, file: !692, line: 454, type: !95)
!3958 = !DILocation(line: 454, column: 18, scope: !3950)
!3959 = !DILocation(line: 456, column: 2, scope: !3950)
!3960 = distinct !{!3960, !3959}
!3961 = !DILocation(line: 456, column: 90, scope: !3962)
!3962 = !DILexicalBlockFile(scope: !3963, file: !692, discriminator: 1)
!3963 = distinct !DILexicalBlock(scope: !3964, file: !692, line: 456, column: 10)
!3964 = distinct !DILexicalBlock(scope: !3950, file: !692, line: 456, column: 4)
!3965 = !DILocation(line: 456, column: 72, scope: !3962)
!3966 = !DILocation(line: 456, column: 57, scope: !3962)
!3967 = !DILocation(line: 456, column: 56, scope: !3962)
!3968 = !DILocation(line: 456, column: 31, scope: !3969)
!3969 = !DILexicalBlockFile(scope: !3962, file: !692, discriminator: 7)
!3970 = !DILocation(line: 456, column: 12, scope: !3962)
!3971 = !DILocation(line: 456, column: 10, scope: !3962)
!3972 = !DILocation(line: 456, column: 11, scope: !3973)
!3973 = !DILexicalBlockFile(scope: !3963, file: !692, discriminator: 2)
!3974 = !DILocation(line: 456, column: 10, scope: !3975)
!3975 = !DILexicalBlockFile(scope: !3964, file: !692, discriminator: 3)
!3976 = !DILocation(line: 456, column: 30, scope: !3977)
!3977 = !DILexicalBlockFile(scope: !3978, file: !692, discriminator: 4)
!3978 = distinct !DILexicalBlock(scope: !3963, file: !692, line: 456, column: 28)
!3979 = !DILocation(line: 456, column: 39, scope: !3980)
!3980 = !DILexicalBlockFile(scope: !3981, file: !692, discriminator: 5)
!3981 = distinct !DILexicalBlock(scope: !3963, file: !692, line: 456, column: 37)
!3982 = !DILocation(line: 456, column: 133, scope: !3980)
!3983 = !DILocation(line: 456, column: 144, scope: !3984)
!3984 = !DILexicalBlockFile(scope: !3964, file: !692, discriminator: 6)
!3985 = !DILocation(line: 457, column: 2, scope: !3950)
!3986 = distinct !{!3986, !3985}
!3987 = !DILocation(line: 457, column: 10, scope: !3988)
!3988 = !DILexicalBlockFile(scope: !3989, file: !692, discriminator: 1)
!3989 = distinct !DILexicalBlock(scope: !3990, file: !692, line: 457, column: 10)
!3990 = distinct !DILexicalBlock(scope: !3950, file: !692, line: 457, column: 4)
!3991 = !DILocation(line: 457, column: 18, scope: !3988)
!3992 = !DILocation(line: 457, column: 5, scope: !3993)
!3993 = !DILexicalBlockFile(scope: !3994, file: !692, discriminator: 2)
!3994 = distinct !DILexicalBlock(scope: !3989, file: !692, line: 457, column: 3)
!3995 = !DILocation(line: 457, column: 14, scope: !3996)
!3996 = !DILexicalBlockFile(scope: !3997, file: !692, discriminator: 3)
!3997 = distinct !DILexicalBlock(scope: !3989, file: !692, line: 457, column: 12)
!3998 = !DILocation(line: 457, column: 102, scope: !3996)
!3999 = !DILocation(line: 457, column: 113, scope: !4000)
!4000 = !DILexicalBlockFile(scope: !3990, file: !692, discriminator: 4)
!4001 = !DILocation(line: 459, column: 28, scope: !3950)
!4002 = !DILocation(line: 459, column: 36, scope: !3950)
!4003 = !DILocation(line: 459, column: 46, scope: !3950)
!4004 = !DILocation(line: 459, column: 12, scope: !3950)
!4005 = !DILocation(line: 459, column: 10, scope: !3950)
!4006 = !DILocation(line: 460, column: 12, scope: !3950)
!4007 = !DILocation(line: 460, column: 20, scope: !3950)
!4008 = !DILocation(line: 460, column: 10, scope: !3950)
!4009 = !DILocation(line: 461, column: 21, scope: !3950)
!4010 = !DILocation(line: 461, column: 2, scope: !3950)
!4011 = !DILocation(line: 461, column: 10, scope: !3950)
!4012 = !DILocation(line: 461, column: 19, scope: !3950)
!4013 = !DILocation(line: 462, column: 37, scope: !3950)
!4014 = !DILocation(line: 462, column: 30, scope: !3950)
!4015 = !DILocation(line: 462, column: 51, scope: !3950)
!4016 = !DILocation(line: 462, column: 59, scope: !3950)
!4017 = !DILocation(line: 462, column: 70, scope: !4018)
!4018 = !DILexicalBlockFile(scope: !3950, file: !692, discriminator: 1)
!4019 = !DILocation(line: 462, column: 63, scope: !4018)
!4020 = !DILocation(line: 462, column: 84, scope: !4018)
!4021 = !DILocation(line: 462, column: 59, scope: !4018)
!4022 = !DILocation(line: 462, column: 59, scope: !4023)
!4023 = !DILexicalBlockFile(scope: !3950, file: !692, discriminator: 2)
!4024 = !DILocation(line: 462, column: 2, scope: !4023)
!4025 = !DILocation(line: 462, column: 10, scope: !4023)
!4026 = !DILocation(line: 462, column: 26, scope: !4023)
!4027 = !DILocation(line: 464, column: 38, scope: !3950)
!4028 = !DILocation(line: 464, column: 46, scope: !3950)
!4029 = !DILocation(line: 464, column: 2, scope: !3950)
!4030 = !DILocation(line: 465, column: 9, scope: !3950)
!4031 = !DILocation(line: 465, column: 2, scope: !3950)
!4032 = !DILocation(line: 466, column: 1, scope: !3950)
!4033 = !DILocation(line: 466, column: 1, scope: !4018)
!4034 = distinct !DISubprogram(name: "get_nicks", scope: !692, file: !692, line: 706, type: !4035, isLocal: true, isDefinition: true, scopeLine: 709, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!4035 = !DISubroutineType(types: !4036)
!4036 = !{!95, !76, !509, !471, !67, !67, !4037}
!4037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!4038 = !DILocalVariable(name: "server", arg: 1, scope: !4034, file: !692, line: 706, type: !76)
!4039 = !DILocation(line: 706, column: 40, scope: !4034)
!4040 = !DILocalVariable(name: "item", arg: 2, scope: !4034, file: !692, line: 706, type: !509)
!4041 = !DILocation(line: 706, column: 61, scope: !4034)
!4042 = !DILocalVariable(name: "data", arg: 3, scope: !4034, file: !692, line: 707, type: !471)
!4043 = !DILocation(line: 707, column: 22, scope: !4034)
!4044 = !DILocalVariable(name: "op", arg: 4, scope: !4034, file: !692, line: 707, type: !67)
!4045 = !DILocation(line: 707, column: 32, scope: !4034)
!4046 = !DILocalVariable(name: "voice", arg: 5, scope: !4034, file: !692, line: 707, type: !67)
!4047 = !DILocation(line: 707, column: 40, scope: !4034)
!4048 = !DILocalVariable(name: "ret_channel", arg: 6, scope: !4034, file: !692, line: 708, type: !4037)
!4049 = !DILocation(line: 708, column: 28, scope: !4034)
!4050 = !DILocalVariable(name: "channel", scope: !4034, file: !692, line: 710, type: !59)
!4051 = !DILocation(line: 710, column: 26, scope: !4034)
!4052 = !DILocalVariable(name: "str", scope: !4034, file: !692, line: 711, type: !288)
!4053 = !DILocation(line: 711, column: 18, scope: !4034)
!4054 = !DILocalVariable(name: "optlist", scope: !4034, file: !692, line: 712, type: !70)
!4055 = !DILocation(line: 712, column: 21, scope: !4034)
!4056 = !DILocalVariable(name: "matches", scope: !4034, file: !692, line: 713, type: !485)
!4057 = !DILocation(line: 713, column: 9, scope: !4034)
!4058 = !DILocalVariable(name: "match", scope: !4034, file: !692, line: 713, type: !485)
!4059 = !DILocation(line: 713, column: 20, scope: !4034)
!4060 = !DILocalVariable(name: "ret", scope: !4034, file: !692, line: 713, type: !95)
!4061 = !DILocation(line: 713, column: 28, scope: !4034)
!4062 = !DILocalVariable(name: "channame", scope: !4034, file: !692, line: 713, type: !95)
!4063 = !DILocation(line: 713, column: 34, scope: !4034)
!4064 = !DILocalVariable(name: "nicks", scope: !4034, file: !692, line: 713, type: !95)
!4065 = !DILocation(line: 713, column: 45, scope: !4034)
!4066 = !DILocalVariable(name: "free_arg", scope: !4034, file: !692, line: 714, type: !57)
!4067 = !DILocation(line: 714, column: 8, scope: !4034)
!4068 = !DILocalVariable(name: "count", scope: !4034, file: !692, line: 715, type: !67)
!4069 = !DILocation(line: 715, column: 13, scope: !4034)
!4070 = !DILocalVariable(name: "max_modes", scope: !4034, file: !692, line: 715, type: !67)
!4071 = !DILocation(line: 715, column: 20, scope: !4034)
!4072 = !DILocation(line: 717, column: 22, scope: !4073)
!4073 = distinct !DILexicalBlock(scope: !4034, file: !692, line: 717, column: 6)
!4074 = !DILocation(line: 719, column: 8, scope: !4073)
!4075 = !DILocation(line: 717, column: 7, scope: !4073)
!4076 = !DILocation(line: 717, column: 6, scope: !4034)
!4077 = !DILocation(line: 720, column: 3, scope: !4073)
!4078 = !DILocation(line: 722, column: 7, scope: !4079)
!4079 = distinct !DILexicalBlock(scope: !4034, file: !692, line: 722, column: 6)
!4080 = !DILocation(line: 722, column: 6, scope: !4079)
!4081 = !DILocation(line: 722, column: 13, scope: !4079)
!4082 = !DILocation(line: 722, column: 6, scope: !4034)
!4083 = !DILocation(line: 723, column: 3, scope: !4079)
!4084 = !DILocation(line: 725, column: 147, scope: !4034)
!4085 = !DILocation(line: 725, column: 129, scope: !4034)
!4086 = !DILocation(line: 725, column: 114, scope: !4034)
!4087 = !DILocation(line: 725, column: 25, scope: !4034)
!4088 = !DILocation(line: 725, column: 100, scope: !4089)
!4089 = !DILexicalBlockFile(scope: !4034, file: !692, discriminator: 1)
!4090 = !DILocation(line: 725, column: 100, scope: !4034)
!4091 = !DILocation(line: 725, column: 75, scope: !4092)
!4092 = !DILexicalBlockFile(scope: !4034, file: !692, discriminator: 2)
!4093 = !DILocation(line: 725, column: 59, scope: !4034)
!4094 = !DILocation(line: 725, column: 58, scope: !4034)
!4095 = !DILocation(line: 725, column: 33, scope: !4096)
!4096 = !DILexicalBlockFile(scope: !4034, file: !692, discriminator: 3)
!4097 = !DILocation(line: 725, column: 13, scope: !4034)
!4098 = !DILocation(line: 725, column: 10, scope: !4034)
!4099 = !DILocation(line: 726, column: 6, scope: !4100)
!4100 = distinct !DILexicalBlock(scope: !4034, file: !692, line: 726, column: 6)
!4101 = !DILocation(line: 726, column: 14, scope: !4100)
!4102 = !DILocation(line: 726, column: 6, scope: !4034)
!4103 = !DILocation(line: 727, column: 19, scope: !4104)
!4104 = distinct !DILexicalBlock(scope: !4100, file: !692, line: 726, column: 22)
!4105 = !DILocation(line: 727, column: 3, scope: !4104)
!4106 = !DILocation(line: 728, column: 3, scope: !4104)
!4107 = !DILocation(line: 731, column: 8, scope: !4034)
!4108 = !DILocation(line: 731, column: 6, scope: !4034)
!4109 = !DILocation(line: 732, column: 23, scope: !4034)
!4110 = !DILocation(line: 732, column: 12, scope: !4034)
!4111 = !DILocation(line: 732, column: 10, scope: !4034)
!4112 = !DILocation(line: 733, column: 15, scope: !4113)
!4113 = distinct !DILexicalBlock(scope: !4034, file: !692, line: 733, column: 2)
!4114 = !DILocation(line: 733, column: 13, scope: !4113)
!4115 = !DILocation(line: 733, column: 7, scope: !4113)
!4116 = !DILocation(line: 733, column: 25, scope: !4117)
!4117 = !DILexicalBlockFile(scope: !4118, file: !692, discriminator: 1)
!4118 = distinct !DILexicalBlock(scope: !4113, file: !692, line: 733, column: 2)
!4119 = !DILocation(line: 733, column: 24, scope: !4117)
!4120 = !DILocation(line: 733, column: 31, scope: !4117)
!4121 = !DILocation(line: 733, column: 2, scope: !4117)
!4122 = !DILocation(line: 734, column: 15, scope: !4123)
!4123 = distinct !DILexicalBlock(scope: !4124, file: !692, line: 734, column: 7)
!4124 = distinct !DILexicalBlock(scope: !4118, file: !692, line: 733, column: 48)
!4125 = !DILocation(line: 734, column: 14, scope: !4123)
!4126 = !DILocation(line: 734, column: 7, scope: !4123)
!4127 = !DILocation(line: 734, column: 27, scope: !4123)
!4128 = !DILocation(line: 734, column: 34, scope: !4123)
!4129 = !DILocation(line: 735, column: 15, scope: !4123)
!4130 = !DILocation(line: 735, column: 14, scope: !4123)
!4131 = !DILocation(line: 735, column: 7, scope: !4123)
!4132 = !DILocation(line: 735, column: 27, scope: !4123)
!4133 = !DILocation(line: 734, column: 7, scope: !4134)
!4134 = !DILexicalBlockFile(scope: !4124, file: !692, discriminator: 1)
!4135 = !DILocation(line: 737, column: 48, scope: !4136)
!4136 = distinct !DILexicalBlock(scope: !4123, file: !692, line: 735, column: 35)
!4137 = !DILocation(line: 737, column: 61, scope: !4136)
!4138 = !DILocation(line: 737, column: 60, scope: !4136)
!4139 = !DILocation(line: 737, column: 25, scope: !4136)
!4140 = !DILocation(line: 738, column: 3, scope: !4136)
!4141 = !DILocation(line: 739, column: 31, scope: !4142)
!4142 = distinct !DILexicalBlock(scope: !4123, file: !692, line: 738, column: 10)
!4143 = !DILocation(line: 739, column: 37, scope: !4142)
!4144 = !DILocation(line: 739, column: 36, scope: !4142)
!4145 = !DILocation(line: 739, column: 44, scope: !4142)
!4146 = !DILocation(line: 740, column: 10, scope: !4142)
!4147 = !DILocation(line: 740, column: 14, scope: !4142)
!4148 = !DILocation(line: 739, column: 12, scope: !4142)
!4149 = !DILocation(line: 739, column: 10, scope: !4142)
!4150 = !DILocation(line: 741, column: 37, scope: !4142)
!4151 = !DILocation(line: 741, column: 35, scope: !4142)
!4152 = !DILocation(line: 742, column: 8, scope: !4153)
!4153 = distinct !DILexicalBlock(scope: !4142, file: !692, line: 742, column: 8)
!4154 = !DILocation(line: 742, column: 18, scope: !4153)
!4155 = !DILocation(line: 742, column: 22, scope: !4153)
!4156 = !DILocation(line: 742, column: 25, scope: !4157)
!4157 = !DILexicalBlockFile(scope: !4153, file: !692, discriminator: 1)
!4158 = !DILocation(line: 742, column: 33, scope: !4157)
!4159 = !DILocation(line: 742, column: 31, scope: !4157)
!4160 = !DILocation(line: 742, column: 43, scope: !4157)
!4161 = !DILocation(line: 743, column: 28, scope: !4153)
!4162 = !DILocation(line: 743, column: 8, scope: !4153)
!4163 = !DILocation(line: 743, column: 44, scope: !4153)
!4164 = !DILocation(line: 742, column: 8, scope: !4165)
!4165 = !DILexicalBlockFile(scope: !4142, file: !692, discriminator: 2)
!4166 = !DILocation(line: 745, column: 19, scope: !4167)
!4167 = distinct !DILexicalBlock(scope: !4153, file: !692, line: 743, column: 52)
!4168 = !DILocation(line: 745, column: 5, scope: !4167)
!4169 = !DILocation(line: 746, column: 16, scope: !4167)
!4170 = !DILocation(line: 746, column: 5, scope: !4167)
!4171 = !DILocation(line: 747, column: 21, scope: !4167)
!4172 = !DILocation(line: 747, column: 5, scope: !4167)
!4173 = !DILocation(line: 749, column: 5, scope: !4167)
!4174 = !DILocation(line: 751, column: 5, scope: !4167)
!4175 = !DILocation(line: 752, column: 33, scope: !4167)
!4176 = !DILocation(line: 755, column: 2, scope: !4124)
!4177 = !DILocation(line: 733, column: 44, scope: !4178)
!4178 = !DILexicalBlockFile(scope: !4118, file: !692, discriminator: 2)
!4179 = !DILocation(line: 733, column: 2, scope: !4178)
!4180 = distinct !{!4180, !4181}
!4181 = !DILocation(line: 733, column: 2, scope: !4034)
!4182 = !DILocation(line: 757, column: 13, scope: !4183)
!4183 = distinct !DILexicalBlock(scope: !4034, file: !692, line: 757, column: 13)
!4184 = !DILocation(line: 757, column: 18, scope: !4183)
!4185 = !DILocation(line: 757, column: 22, scope: !4183)
!4186 = !DILocation(line: 757, column: 13, scope: !4034)
!4187 = !DILocation(line: 757, column: 45, scope: !4188)
!4188 = !DILexicalBlockFile(scope: !4183, file: !692, discriminator: 1)
!4189 = !DILocation(line: 757, column: 50, scope: !4188)
!4190 = !DILocation(line: 757, column: 55, scope: !4188)
!4191 = !DILocation(line: 757, column: 58, scope: !4188)
!4192 = !DILocation(line: 757, column: 27, scope: !4188)
!4193 = !DILocation(line: 758, column: 8, scope: !4034)
!4194 = !DILocation(line: 758, column: 13, scope: !4034)
!4195 = !DILocation(line: 758, column: 6, scope: !4034)
!4196 = !DILocation(line: 759, column: 16, scope: !4034)
!4197 = !DILocation(line: 759, column: 2, scope: !4034)
!4198 = !DILocation(line: 760, column: 13, scope: !4034)
!4199 = !DILocation(line: 760, column: 2, scope: !4034)
!4200 = !DILocation(line: 761, column: 18, scope: !4034)
!4201 = !DILocation(line: 761, column: 2, scope: !4034)
!4202 = !DILocation(line: 763, column: 17, scope: !4034)
!4203 = !DILocation(line: 763, column: 3, scope: !4034)
!4204 = !DILocation(line: 763, column: 15, scope: !4034)
!4205 = !DILocation(line: 764, column: 9, scope: !4034)
!4206 = !DILocation(line: 764, column: 2, scope: !4034)
!4207 = !DILocation(line: 765, column: 1, scope: !4034)
!4208 = distinct !DISubprogram(name: "get_wildcard_nicks", scope: !692, file: !692, line: 676, type: !4209, isLocal: true, isDefinition: true, scopeLine: 678, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!4209 = !DISubroutineType(types: !4210)
!4210 = !{!67, !288, !471, !59, !67, !67}
!4211 = !DILocalVariable(name: "output", arg: 1, scope: !4208, file: !692, line: 676, type: !288)
!4212 = !DILocation(line: 676, column: 40, scope: !4208)
!4213 = !DILocalVariable(name: "mask", arg: 2, scope: !4208, file: !692, line: 676, type: !471)
!4214 = !DILocation(line: 676, column: 60, scope: !4208)
!4215 = !DILocalVariable(name: "channel", arg: 3, scope: !4208, file: !692, line: 677, type: !59)
!4216 = !DILocation(line: 677, column: 27, scope: !4208)
!4217 = !DILocalVariable(name: "op", arg: 4, scope: !4208, file: !692, line: 677, type: !67)
!4218 = !DILocation(line: 677, column: 40, scope: !4208)
!4219 = !DILocalVariable(name: "voice", arg: 5, scope: !4208, file: !692, line: 677, type: !67)
!4220 = !DILocation(line: 677, column: 48, scope: !4208)
!4221 = !DILocalVariable(name: "nicks", scope: !4208, file: !692, line: 679, type: !249)
!4222 = !DILocation(line: 679, column: 10, scope: !4208)
!4223 = !DILocalVariable(name: "tmp", scope: !4208, file: !692, line: 679, type: !249)
!4224 = !DILocation(line: 679, column: 18, scope: !4208)
!4225 = !DILocalVariable(name: "count", scope: !4208, file: !692, line: 680, type: !67)
!4226 = !DILocation(line: 680, column: 13, scope: !4208)
!4227 = !DILocation(line: 682, column: 2, scope: !4208)
!4228 = distinct !{!4228, !4227}
!4229 = !DILocation(line: 682, column: 10, scope: !4230)
!4230 = !DILexicalBlockFile(scope: !4231, file: !692, discriminator: 1)
!4231 = distinct !DILexicalBlock(scope: !4232, file: !692, line: 682, column: 10)
!4232 = distinct !DILexicalBlock(scope: !4208, file: !692, line: 682, column: 4)
!4233 = !DILocation(line: 682, column: 17, scope: !4230)
!4234 = !DILocation(line: 682, column: 5, scope: !4235)
!4235 = !DILexicalBlockFile(scope: !4236, file: !692, discriminator: 2)
!4236 = distinct !DILexicalBlock(scope: !4231, file: !692, line: 682, column: 3)
!4237 = !DILocation(line: 682, column: 14, scope: !4238)
!4238 = !DILexicalBlockFile(scope: !4239, file: !692, discriminator: 3)
!4239 = distinct !DILexicalBlock(scope: !4231, file: !692, line: 682, column: 12)
!4240 = !DILocation(line: 682, column: 101, scope: !4238)
!4241 = !DILocation(line: 682, column: 116, scope: !4242)
!4242 = !DILexicalBlockFile(scope: !4232, file: !692, discriminator: 4)
!4243 = !DILocation(line: 683, column: 2, scope: !4208)
!4244 = distinct !{!4244, !4243}
!4245 = !DILocation(line: 683, column: 10, scope: !4246)
!4246 = !DILexicalBlockFile(scope: !4247, file: !692, discriminator: 1)
!4247 = distinct !DILexicalBlock(scope: !4248, file: !692, line: 683, column: 10)
!4248 = distinct !DILexicalBlock(scope: !4208, file: !692, line: 683, column: 4)
!4249 = !DILocation(line: 683, column: 15, scope: !4246)
!4250 = !DILocation(line: 683, column: 5, scope: !4251)
!4251 = !DILexicalBlockFile(scope: !4252, file: !692, discriminator: 2)
!4252 = distinct !DILexicalBlock(scope: !4247, file: !692, line: 683, column: 3)
!4253 = !DILocation(line: 683, column: 14, scope: !4254)
!4254 = !DILexicalBlockFile(scope: !4255, file: !692, discriminator: 3)
!4255 = distinct !DILexicalBlock(scope: !4247, file: !692, line: 683, column: 12)
!4256 = !DILocation(line: 683, column: 99, scope: !4254)
!4257 = !DILocation(line: 683, column: 114, scope: !4258)
!4258 = !DILexicalBlockFile(scope: !4248, file: !692, discriminator: 4)
!4259 = !DILocation(line: 684, column: 2, scope: !4208)
!4260 = distinct !{!4260, !4259}
!4261 = !DILocation(line: 684, column: 99, scope: !4262)
!4262 = !DILexicalBlockFile(scope: !4263, file: !692, discriminator: 1)
!4263 = distinct !DILexicalBlock(scope: !4264, file: !692, line: 684, column: 10)
!4264 = distinct !DILexicalBlock(scope: !4208, file: !692, line: 684, column: 4)
!4265 = !DILocation(line: 684, column: 74, scope: !4262)
!4266 = !DILocation(line: 684, column: 58, scope: !4262)
!4267 = !DILocation(line: 684, column: 57, scope: !4262)
!4268 = !DILocation(line: 684, column: 32, scope: !4269)
!4269 = !DILexicalBlockFile(scope: !4262, file: !692, discriminator: 7)
!4270 = !DILocation(line: 684, column: 12, scope: !4262)
!4271 = !DILocation(line: 684, column: 10, scope: !4262)
!4272 = !DILocation(line: 684, column: 11, scope: !4273)
!4273 = !DILexicalBlockFile(scope: !4263, file: !692, discriminator: 2)
!4274 = !DILocation(line: 684, column: 10, scope: !4275)
!4275 = !DILexicalBlockFile(scope: !4264, file: !692, discriminator: 3)
!4276 = !DILocation(line: 684, column: 30, scope: !4277)
!4277 = !DILexicalBlockFile(scope: !4278, file: !692, discriminator: 4)
!4278 = distinct !DILexicalBlock(scope: !4263, file: !692, line: 684, column: 28)
!4279 = !DILocation(line: 684, column: 39, scope: !4280)
!4280 = !DILexicalBlockFile(scope: !4281, file: !692, discriminator: 5)
!4281 = distinct !DILexicalBlock(scope: !4263, file: !692, line: 684, column: 37)
!4282 = !DILocation(line: 684, column: 135, scope: !4280)
!4283 = !DILocation(line: 684, column: 150, scope: !4284)
!4284 = !DILexicalBlockFile(scope: !4264, file: !692, discriminator: 6)
!4285 = !DILocation(line: 686, column: 15, scope: !4208)
!4286 = !DILocation(line: 687, column: 75, scope: !4208)
!4287 = !DILocation(line: 687, column: 50, scope: !4208)
!4288 = !DILocation(line: 687, column: 34, scope: !4208)
!4289 = !DILocation(line: 687, column: 67, scope: !4208)
!4290 = !DILocation(line: 687, column: 10, scope: !4291)
!4291 = !DILexicalBlockFile(scope: !4208, file: !692, discriminator: 1)
!4292 = !DILocation(line: 687, column: 8, scope: !4208)
!4293 = !DILocation(line: 688, column: 13, scope: !4294)
!4294 = distinct !DILexicalBlock(scope: !4208, file: !692, line: 688, column: 2)
!4295 = !DILocation(line: 688, column: 11, scope: !4294)
!4296 = !DILocation(line: 688, column: 7, scope: !4294)
!4297 = !DILocation(line: 688, column: 20, scope: !4298)
!4298 = !DILexicalBlockFile(scope: !4299, file: !692, discriminator: 1)
!4299 = distinct !DILexicalBlock(scope: !4294, file: !692, line: 688, column: 2)
!4300 = !DILocation(line: 688, column: 24, scope: !4298)
!4301 = !DILocation(line: 688, column: 2, scope: !4298)
!4302 = !DILocalVariable(name: "rec", scope: !4303, file: !692, line: 689, type: !522)
!4303 = distinct !DILexicalBlock(scope: !4299, file: !692, line: 688, column: 49)
!4304 = !DILocation(line: 689, column: 13, scope: !4303)
!4305 = !DILocation(line: 689, column: 19, scope: !4303)
!4306 = !DILocation(line: 689, column: 24, scope: !4303)
!4307 = !DILocation(line: 691, column: 8, scope: !4308)
!4308 = distinct !DILexicalBlock(scope: !4303, file: !692, line: 691, column: 7)
!4309 = !DILocation(line: 691, column: 11, scope: !4308)
!4310 = !DILocation(line: 691, column: 16, scope: !4308)
!4311 = !DILocation(line: 691, column: 20, scope: !4312)
!4312 = !DILexicalBlockFile(scope: !4308, file: !692, discriminator: 1)
!4313 = !DILocation(line: 691, column: 25, scope: !4312)
!4314 = !DILocation(line: 691, column: 29, scope: !4312)
!4315 = !DILocation(line: 691, column: 33, scope: !4316)
!4316 = !DILexicalBlockFile(scope: !4308, file: !692, discriminator: 2)
!4317 = !DILocation(line: 691, column: 36, scope: !4316)
!4318 = !DILocation(line: 691, column: 41, scope: !4316)
!4319 = !DILocation(line: 691, column: 44, scope: !4320)
!4320 = !DILexicalBlockFile(scope: !4308, file: !692, discriminator: 3)
!4321 = !DILocation(line: 691, column: 49, scope: !4320)
!4322 = !DILocation(line: 691, column: 53, scope: !4320)
!4323 = !DILocation(line: 692, column: 8, scope: !4308)
!4324 = !DILocation(line: 692, column: 14, scope: !4308)
!4325 = !DILocation(line: 692, column: 19, scope: !4308)
!4326 = !DILocation(line: 692, column: 23, scope: !4312)
!4327 = !DILocation(line: 692, column: 28, scope: !4312)
!4328 = !DILocation(line: 692, column: 35, scope: !4312)
!4329 = !DILocation(line: 692, column: 39, scope: !4316)
!4330 = !DILocation(line: 692, column: 45, scope: !4316)
!4331 = !DILocation(line: 692, column: 50, scope: !4316)
!4332 = !DILocation(line: 692, column: 53, scope: !4320)
!4333 = !DILocation(line: 692, column: 58, scope: !4320)
!4334 = !DILocation(line: 691, column: 7, scope: !4335)
!4335 = !DILexicalBlockFile(scope: !4303, file: !692, discriminator: 4)
!4336 = !DILocation(line: 693, column: 4, scope: !4308)
!4337 = !DILocation(line: 695, column: 26, scope: !4338)
!4338 = distinct !DILexicalBlock(scope: !4303, file: !692, line: 695, column: 7)
!4339 = !DILocation(line: 695, column: 31, scope: !4338)
!4340 = !DILocation(line: 695, column: 37, scope: !4338)
!4341 = !DILocation(line: 695, column: 46, scope: !4338)
!4342 = !DILocation(line: 695, column: 54, scope: !4338)
!4343 = !DILocation(line: 695, column: 7, scope: !4338)
!4344 = !DILocation(line: 695, column: 60, scope: !4338)
!4345 = !DILocation(line: 695, column: 7, scope: !4303)
!4346 = !DILocation(line: 696, column: 4, scope: !4338)
!4347 = !DILocation(line: 698, column: 26, scope: !4303)
!4348 = !DILocation(line: 698, column: 41, scope: !4303)
!4349 = !DILocation(line: 698, column: 46, scope: !4303)
!4350 = !DILocation(line: 698, column: 3, scope: !4303)
!4351 = !DILocation(line: 699, column: 22, scope: !4303)
!4352 = !DILocation(line: 700, column: 2, scope: !4303)
!4353 = !DILocation(line: 688, column: 38, scope: !4354)
!4354 = !DILexicalBlockFile(scope: !4299, file: !692, discriminator: 2)
!4355 = !DILocation(line: 688, column: 43, scope: !4354)
!4356 = !DILocation(line: 688, column: 36, scope: !4354)
!4357 = !DILocation(line: 688, column: 2, scope: !4354)
!4358 = distinct !{!4358, !4359}
!4359 = !DILocation(line: 688, column: 2, scope: !4208)
!4360 = !DILocation(line: 701, column: 15, scope: !4208)
!4361 = !DILocation(line: 701, column: 2, scope: !4208)
!4362 = !DILocation(line: 703, column: 16, scope: !4208)
!4363 = !DILocation(line: 703, column: 9, scope: !4208)
!4364 = !DILocation(line: 704, column: 1, scope: !4208)
