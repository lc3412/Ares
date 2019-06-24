; ModuleID = './line183-autoignore.o.i'
source_filename = "./line183-autoignore.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IGNORE_REC = type { i32, i8*, i8*, i8**, i8*, i64, i8, %struct._GRegex* }
%struct._GRegex = type opaque
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
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GHashTable = type opaque
%struct.modes_type = type { void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, i8 }
%struct._IRC_CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._IRC_SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)*, %struct._GSList*, i64, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"autoignore_time\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"irc/flood\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"flood\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"5min\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"autoignore_level\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"IRC\00", align 1
@__func__.sig_flood = private unnamed_addr constant [10 x i8] c"sig_flood\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"IS_IRC_SERVER(server)\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"%s!%s\00", align 1

; Function Attrs: nounwind uwtable
define void @autoignore_update(%struct._IGNORE_REC*, i32) #0 !dbg !691 {
  %3 = alloca %struct._IGNORE_REC*, align 8
  %4 = alloca i32, align 4
  store %struct._IGNORE_REC* %0, %struct._IGNORE_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IGNORE_REC** %3, metadata !696, metadata !697), !dbg !698
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !699, metadata !697), !dbg !700
  %5 = load i32, i32* %4, align 4, !dbg !701
  %6 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %3, align 8, !dbg !702
  %7 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %6, i32 0, i32 0, !dbg !703
  %8 = load i32, i32* %7, align 8, !dbg !704
  %9 = or i32 %8, %5, !dbg !704
  store i32 %9, i32* %7, align 8, !dbg !704
  %10 = call i64 @time(i64* null) #4, !dbg !705
  %11 = call i32 @settings_get_time(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0)), !dbg !706
  %12 = sdiv i32 %11, 1000, !dbg !707
  %13 = sext i32 %12 to i64, !dbg !706
  %14 = add nsw i64 %10, %13, !dbg !708
  %15 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %3, align 8, !dbg !709
  %16 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %15, i32 0, i32 5, !dbg !710
  store i64 %14, i64* %16, align 8, !dbg !711
  %17 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %3, align 8, !dbg !712
  call void @ignore_update_rec(%struct._IGNORE_REC* %17), !dbg !713
  ret void, !dbg !714
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i64 @time(i64*) #2

declare i32 @settings_get_time(i8*) #3

declare void @ignore_update_rec(%struct._IGNORE_REC*) #3

; Function Attrs: nounwind uwtable
define void @autoignore_add(%struct._IRC_SERVER_REC*, i8*, i32) #0 !dbg !715 {
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._IGNORE_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !718, metadata !697), !dbg !719
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !720, metadata !697), !dbg !721
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !722, metadata !697), !dbg !723
  call void @llvm.dbg.declare(metadata %struct._IGNORE_REC** %7, metadata !724, metadata !697), !dbg !725
  %8 = call noalias i8* @g_malloc0_n(i64 1, i64 64), !dbg !726
  %9 = bitcast i8* %8 to %struct._IGNORE_REC*, !dbg !727
  store %struct._IGNORE_REC* %9, %struct._IGNORE_REC** %7, align 8, !dbg !728
  %10 = load i8*, i8** %5, align 8, !dbg !729
  %11 = call noalias i8* @g_strdup(i8* %10), !dbg !730
  %12 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %7, align 8, !dbg !731
  %13 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %12, i32 0, i32 1, !dbg !732
  store i8* %11, i8** %13, align 8, !dbg !733
  %14 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !734
  %15 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %14, i32 0, i32 6, !dbg !735
  %16 = load i8*, i8** %15, align 8, !dbg !735
  %17 = call noalias i8* @g_strdup(i8* %16), !dbg !736
  %18 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %7, align 8, !dbg !737
  %19 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %18, i32 0, i32 2, !dbg !738
  store i8* %17, i8** %19, align 8, !dbg !739
  %20 = load i32, i32* %6, align 4, !dbg !740
  %21 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %7, align 8, !dbg !741
  %22 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %21, i32 0, i32 0, !dbg !742
  store i32 %20, i32* %22, align 8, !dbg !743
  %23 = call i64 @time(i64* null) #4, !dbg !744
  %24 = call i32 @settings_get_time(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0)), !dbg !745
  %25 = sdiv i32 %24, 1000, !dbg !746
  %26 = sext i32 %25 to i64, !dbg !745
  %27 = add nsw i64 %23, %26, !dbg !747
  %28 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %7, align 8, !dbg !748
  %29 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %28, i32 0, i32 5, !dbg !749
  store i64 %27, i64* %29, align 8, !dbg !750
  %30 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %7, align 8, !dbg !751
  call void @ignore_add_rec(%struct._IGNORE_REC* %30), !dbg !752
  ret void, !dbg !753
}

declare noalias i8* @g_malloc0_n(i64, i64) #3

declare noalias i8* @g_strdup(i8*) #3

declare void @ignore_add_rec(%struct._IGNORE_REC*) #3

; Function Attrs: nounwind uwtable
define void @autoignore_init() #0 !dbg !754 {
  call void @settings_add_time_module(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0)), !dbg !755
  call void @settings_add_level_module(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0)), !dbg !756
  call void @signal_add_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @sig_flood to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !757
  ret void, !dbg !758
}

declare void @settings_add_time_module(i8*, i8*, i8*, i8*) #3

declare void @settings_add_level_module(i8*, i8*, i8*, i8*) #3

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @sig_flood(%struct._IRC_SERVER_REC*, i8*, i8*, i8*) #0 !dbg !759 {
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._IGNORE_REC*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !762, metadata !697), !dbg !763
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !764, metadata !697), !dbg !765
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !766, metadata !697), !dbg !767
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !768, metadata !697), !dbg !769
  call void @llvm.dbg.declare(metadata %struct._IGNORE_REC** %9, metadata !770, metadata !697), !dbg !771
  call void @llvm.dbg.declare(metadata i8** %10, metadata !772, metadata !697), !dbg !773
  call void @llvm.dbg.declare(metadata i32* %11, metadata !774, metadata !697), !dbg !775
  call void @llvm.dbg.declare(metadata i32* %12, metadata !776, metadata !697), !dbg !777
  br label %13, !dbg !778, !llvm.loop !779

; <label>:13:                                     ; preds = %4
  %14 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !780
  %15 = bitcast %struct._IRC_SERVER_REC* %14 to i8*, !dbg !780
  %16 = call i8* @module_check_cast(i8* %15, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0)), !dbg !784
  %17 = bitcast i8* %16 to %struct._SERVER_REC*, !dbg !785
  %18 = bitcast %struct._SERVER_REC* %17 to i8*, !dbg !786
  %19 = call i8* @chat_protocol_check_cast(i8* %18, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0)), !dbg !787
  %20 = bitcast i8* %19 to %struct._IRC_SERVER_REC*, !dbg !789
  %21 = icmp ne %struct._IRC_SERVER_REC* %20, null, !dbg !789
  br i1 %21, label %22, label %23, !dbg !790

; <label>:22:                                     ; preds = %13
  br i1 false, label %25, label %24, !dbg !791

; <label>:23:                                     ; preds = %13
  br i1 false, label %24, label %25, !dbg !793

; <label>:24:                                     ; preds = %23, %22
  br label %26, !dbg !795

; <label>:25:                                     ; preds = %23, %22
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.sig_flood, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0)), !dbg !798
  br label %57, !dbg !801

; <label>:26:                                     ; preds = %24
  br label %27, !dbg !802

; <label>:27:                                     ; preds = %26
  %28 = load i8*, i8** %8, align 8, !dbg !804
  %29 = ptrtoint i8* %28 to i64, !dbg !805
  %30 = trunc i64 %29 to i32, !dbg !806
  store i32 %30, i32* %11, align 4, !dbg !807
  %31 = call i32 @settings_get_level(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0)), !dbg !808
  store i32 %31, i32* %12, align 4, !dbg !809
  %32 = load i8*, i8** %6, align 8, !dbg !810
  %33 = load i8*, i8** %7, align 8, !dbg !811
  %34 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8* %32, i8* %33), !dbg !812
  store i8* %34, i8** %10, align 8, !dbg !813
  %35 = load i32, i32* %11, align 4, !dbg !814
  %36 = load i32, i32* %12, align 4, !dbg !816
  %37 = and i32 %35, %36, !dbg !817
  %38 = icmp ne i32 %37, 0, !dbg !817
  br i1 %38, label %39, label %55, !dbg !818

; <label>:39:                                     ; preds = %27
  %40 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !819
  %41 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %40, i32 0, i32 6, !dbg !821
  %42 = load i8*, i8** %41, align 8, !dbg !821
  %43 = load i8*, i8** %10, align 8, !dbg !822
  %44 = call %struct._IGNORE_REC* @ignore_find_full(i8* %42, i8* %43, i8* null, i8** null, i32 0), !dbg !823
  store %struct._IGNORE_REC* %44, %struct._IGNORE_REC** %9, align 8, !dbg !824
  %45 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %9, align 8, !dbg !825
  %46 = icmp eq %struct._IGNORE_REC* %45, null, !dbg !827
  br i1 %46, label %47, label %51, !dbg !828

; <label>:47:                                     ; preds = %39
  %48 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !829
  %49 = load i8*, i8** %10, align 8, !dbg !830
  %50 = load i32, i32* %11, align 4, !dbg !831
  call void @autoignore_add(%struct._IRC_SERVER_REC* %48, i8* %49, i32 %50), !dbg !832
  br label %54, !dbg !832

; <label>:51:                                     ; preds = %39
  %52 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %9, align 8, !dbg !833
  %53 = load i32, i32* %11, align 4, !dbg !834
  call void @autoignore_update(%struct._IGNORE_REC* %52, i32 %53), !dbg !835
  br label %54

; <label>:54:                                     ; preds = %51, %47
  br label %55, !dbg !836

; <label>:55:                                     ; preds = %54, %27
  %56 = load i8*, i8** %10, align 8, !dbg !837
  call void @g_free(i8* %56), !dbg !838
  br label %57, !dbg !839

; <label>:57:                                     ; preds = %55, %25
  ret void, !dbg !840
}

; Function Attrs: nounwind uwtable
define void @autoignore_deinit() #0 !dbg !842 {
  call void @signal_remove_full(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @sig_flood to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !843
  ret void, !dbg !844
}

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #3

declare i8* @chat_protocol_check_cast(i8*, i32, i8*) #3

declare i8* @module_check_cast(i8*, i32, i8*) #3

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare i32 @settings_get_level(i8*) #3

declare noalias i8* @g_strdup_printf(i8*, ...) #3

declare %struct._IGNORE_REC* @ignore_find_full(i8*, i8*, i8*, i8**, i32) #3

declare void @g_free(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!688, !689}
!llvm.ident = !{!690}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !35)
!1 = !DIFile(filename: "line183-autoignore.o.i", directory: "/home/lichi/Desktop/irssi/task1")
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
!35 = !{!36, !68, !75, !76, !380, !142, !468, !130, !370}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "IGNORE_REC", file: !38, line: 6, baseType: !39)
!38 = !DIFile(filename: "../../../src/core/ignore.h", directory: "/home/lichi/Desktop/irssi/task1")
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IGNORE_REC", file: !38, line: 8, size: 512, align: 64, elements: !40)
!40 = !{!41, !43, !46, !47, !49, !50, !56, !58, !59, !60, !61}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !39, file: !38, line: 9, baseType: !42, size: 32, align: 32)
!42 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !39, file: !38, line: 10, baseType: !44, size: 64, align: 64, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !39, file: !38, line: 11, baseType: !44, size: 64, align: 64, offset: 128)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !39, file: !38, line: 12, baseType: !48, size: 64, align: 64, offset: 192)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "pattern", scope: !39, file: !38, line: 13, baseType: !44, size: 64, align: 64, offset: 256)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "unignore_time", scope: !39, file: !38, line: 15, baseType: !51, size: 64, align: 64, offset: 320)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !52, line: 75, baseType: !53)
!52 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !54, line: 139, baseType: !55)
!54 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!55 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "exception", scope: !39, file: !38, line: 17, baseType: !57, size: 1, align: 32, offset: 384, flags: DIFlagBitField, extraData: i64 384)
!57 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "regexp", scope: !39, file: !38, line: 18, baseType: !57, size: 1, align: 32, offset: 385, flags: DIFlagBitField, extraData: i64 384)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "fullword", scope: !39, file: !38, line: 19, baseType: !57, size: 1, align: 32, offset: 386, flags: DIFlagBitField, extraData: i64 384)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "replies", scope: !39, file: !38, line: 20, baseType: !57, size: 1, align: 32, offset: 387, flags: DIFlagBitField, extraData: i64 384)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "preg", scope: !39, file: !38, line: 21, baseType: !62, size: 64, align: 64, offset: 448)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "Regex", file: !64, line: 9, baseType: !65)
!64 = !DIFile(filename: "../../../src/core/iregex.h", directory: "/home/lichi/Desktop/irssi/task1")
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "GRegex", file: !66, line: 414, baseType: !67)
!66 = !DIFile(filename: "/usr/include/glib-2.0/glib/gregex.h", directory: "/home/lichi/Desktop/irssi/task1")
!67 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GRegex", file: !66, line: 414, flags: DIFlagFwdDecl)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !69, line: 9, baseType: !70)
!69 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!71 = !DISubroutineType(types: !72)
!72 = !{null, !73, !73, !73, !73, !73, !73}
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!74 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64, align: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_REC", file: !78, line: 6, baseType: !79)
!78 = !DIFile(filename: "../../../src/irc/core/irc.h", directory: "/home/lichi/Desktop/irssi/task1")
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_REC", file: !80, line: 42, size: 39168, align: 64, elements: !81)
!80 = !DIFile(filename: "../../../src/irc/core/irc-servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!81 = !{!82, !84, !85, !86, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !342, !343, !347, !348, !349, !353, !358, !359, !360, !361, !362, !363, !364, !365, !372, !373, !374, !375, !376, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !685, !687}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !79, file: !83, line: 3, baseType: !42, size: 32, align: 32)
!83 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!84 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !79, file: !83, line: 4, baseType: !42, size: 32, align: 32, offset: 32)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !79, file: !83, line: 6, baseType: !42, size: 32, align: 32, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !79, file: !83, line: 8, baseType: !87, size: 64, align: 64, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64, align: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_CONNECT_REC", file: !78, line: 5, baseType: !89)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_CONNECT_REC", file: !80, line: 24, size: 2496, align: 64, elements: !90)
!90 = !{!91, !93, !94, !95, !96, !97, !98, !99, !100, !102, !103, !104, !105, !106, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !89, file: !92, line: 3, baseType: !42, size: 32, align: 32)
!92 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!93 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !89, file: !92, line: 4, baseType: !42, size: 32, align: 32, offset: 32)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !89, file: !92, line: 6, baseType: !42, size: 32, align: 32, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !89, file: !92, line: 9, baseType: !44, size: 64, align: 64, offset: 128)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !89, file: !92, line: 10, baseType: !42, size: 32, align: 32, offset: 192)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !89, file: !92, line: 11, baseType: !44, size: 64, align: 64, offset: 256)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !89, file: !92, line: 11, baseType: !44, size: 64, align: 64, offset: 320)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !89, file: !92, line: 11, baseType: !44, size: 64, align: 64, offset: 384)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !89, file: !92, line: 13, baseType: !101, size: 16, align: 16, offset: 448)
!101 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !89, file: !92, line: 14, baseType: !44, size: 64, align: 64, offset: 512)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !89, file: !92, line: 15, baseType: !44, size: 64, align: 64, offset: 576)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !89, file: !92, line: 16, baseType: !42, size: 32, align: 32, offset: 640)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !89, file: !92, line: 17, baseType: !44, size: 64, align: 64, offset: 704)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !89, file: !92, line: 19, baseType: !107, size: 64, align: 64, offset: 768)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, align: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !109, line: 99, baseType: !110)
!109 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!110 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !109, line: 99, flags: DIFlagFwdDecl)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !89, file: !92, line: 19, baseType: !107, size: 64, align: 64, offset: 832)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !89, file: !92, line: 21, baseType: !44, size: 64, align: 64, offset: 896)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !89, file: !92, line: 22, baseType: !44, size: 64, align: 64, offset: 960)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !89, file: !92, line: 23, baseType: !44, size: 64, align: 64, offset: 1024)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !89, file: !92, line: 24, baseType: !44, size: 64, align: 64, offset: 1088)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !89, file: !92, line: 26, baseType: !44, size: 64, align: 64, offset: 1152)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !89, file: !92, line: 27, baseType: !44, size: 64, align: 64, offset: 1216)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !89, file: !92, line: 28, baseType: !44, size: 64, align: 64, offset: 1280)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !89, file: !92, line: 29, baseType: !44, size: 64, align: 64, offset: 1344)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !89, file: !92, line: 30, baseType: !44, size: 64, align: 64, offset: 1408)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !89, file: !92, line: 31, baseType: !44, size: 64, align: 64, offset: 1472)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !89, file: !92, line: 32, baseType: !44, size: 64, align: 64, offset: 1536)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !89, file: !92, line: 33, baseType: !44, size: 64, align: 64, offset: 1600)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !89, file: !92, line: 35, baseType: !125, size: 64, align: 64, offset: 1664)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64, align: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !127)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !128)
!128 = !{!129, !132, !274, !275, !280, !281, !282, !283, !284, !293, !294, !295, !299, !300, !301, !302, !303, !304, !305, !306}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !127, file: !4, line: 100, baseType: !130, size: 32, align: 32)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !131, line: 49, baseType: !42)
!131 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!132 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !127, file: !4, line: 101, baseType: !133, size: 64, align: 64, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64, align: 64)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !135)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !136)
!136 = !{!137, !160, !166, !172, !176, !261, !265, !270}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !135, file: !4, line: 133, baseType: !138, size: 64, align: 64)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64, align: 64)
!139 = !DISubroutineType(types: !140)
!140 = !{!141, !125, !142, !144, !147, !148}
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64, align: 64)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !131, line: 46, baseType: !45)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !145, line: 66, baseType: !146)
!145 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!146 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64, align: 64)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !151, line: 42, baseType: !152)
!151 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !151, line: 44, size: 128, align: 64, elements: !153)
!153 = !{!154, !158, !159}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !152, file: !151, line: 46, baseType: !155, size: 32, align: 32)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !156, line: 36, baseType: !157)
!156 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !145, line: 45, baseType: !57)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !152, file: !151, line: 47, baseType: !130, size: 32, align: 32, offset: 32)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !152, file: !151, line: 48, baseType: !142, size: 64, align: 64, offset: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !135, file: !4, line: 138, baseType: !161, size: 64, align: 64, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64, align: 64)
!162 = !DISubroutineType(types: !163)
!163 = !{!141, !125, !164, !144, !147, !148}
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64, align: 64)
!165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !135, file: !4, line: 143, baseType: !167, size: 64, align: 64, offset: 128)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64, align: 64)
!168 = !DISubroutineType(types: !169)
!169 = !{!141, !125, !170, !171, !148}
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !145, line: 51, baseType: !55)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !135, file: !4, line: 147, baseType: !173, size: 64, align: 64, offset: 192)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64, align: 64)
!174 = !DISubroutineType(types: !175)
!175 = !{!141, !125, !148}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !135, file: !4, line: 149, baseType: !177, size: 64, align: 64, offset: 256)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64, align: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{!180, !125, !260}
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64, align: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !182)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !183)
!183 = !{!184, !186, !207, !236, !238, !242, !243, !244, !245, !253, !254, !255, !256}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !182, file: !16, line: 174, baseType: !185, size: 64, align: 64)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !131, line: 77, baseType: !75)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !182, file: !16, line: 175, baseType: !187, size: 64, align: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64, align: 64)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !189)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !190)
!190 = !{!191, !195, !196}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !189, file: !16, line: 198, baseType: !192, size: 64, align: 64)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64, align: 64)
!193 = !DISubroutineType(types: !194)
!194 = !{null, !185}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !189, file: !16, line: 199, baseType: !192, size: 64, align: 64, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !189, file: !16, line: 200, baseType: !197, size: 64, align: 64, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64, align: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{null, !185, !180, !200, !206}
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64, align: 64)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!205, !185}
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !131, line: 50, baseType: !130)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64, align: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !182, file: !16, line: 177, baseType: !208, size: 64, align: 64, offset: 128)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64, align: 64)
!209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !211)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !212)
!212 = !{!213, !218, !222, !226, !230, !231}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !211, file: !16, line: 216, baseType: !214, size: 64, align: 64)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64, align: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{!205, !180, !217}
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !211, file: !16, line: 218, baseType: !219, size: 64, align: 64, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64, align: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{!205, !180}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !211, file: !16, line: 219, baseType: !223, size: 64, align: 64, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64, align: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{!205, !180, !201, !185}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !211, file: !16, line: 222, baseType: !227, size: 64, align: 64, offset: 192)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64, align: 64)
!228 = !DISubroutineType(types: !229)
!229 = !{null, !180}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !211, file: !16, line: 226, baseType: !201, size: 64, align: 64, offset: 256)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !211, file: !16, line: 227, baseType: !232, size: 64, align: 64, offset: 320)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !233)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64, align: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{null}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !182, file: !16, line: 178, baseType: !237, size: 32, align: 32, offset: 192)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !131, line: 55, baseType: !57)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !182, file: !16, line: 180, baseType: !239, size: 64, align: 64, offset: 256)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64, align: 64)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !241)
!241 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !182, file: !16, line: 182, baseType: !130, size: 32, align: 32, offset: 320)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !182, file: !16, line: 183, baseType: !237, size: 32, align: 32, offset: 352)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !182, file: !16, line: 184, baseType: !237, size: 32, align: 32, offset: 384)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !182, file: !16, line: 186, baseType: !246, size: 64, align: 64, offset: 448)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64, align: 64)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !248, line: 37, baseType: !249)
!248 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !248, line: 39, size: 128, align: 64, elements: !250)
!250 = !{!251, !252}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !249, file: !248, line: 41, baseType: !185, size: 64, align: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !249, file: !248, line: 42, baseType: !246, size: 64, align: 64, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !182, file: !16, line: 188, baseType: !180, size: 64, align: 64, offset: 512)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !182, file: !16, line: 189, baseType: !180, size: 64, align: 64, offset: 576)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !182, file: !16, line: 191, baseType: !44, size: 64, align: 64, offset: 640)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !182, file: !16, line: 193, baseType: !257, size: 64, align: 64, offset: 704)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64, align: 64)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !259)
!259 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !135, file: !4, line: 151, baseType: !262, size: 64, align: 64, offset: 320)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64, align: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{null, !125}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !135, file: !4, line: 152, baseType: !266, size: 64, align: 64, offset: 384)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64, align: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{!141, !125, !269, !148}
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !135, file: !4, line: 155, baseType: !271, size: 64, align: 64, offset: 448)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64, align: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{!269, !125}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !127, file: !4, line: 103, baseType: !142, size: 64, align: 64, offset: 128)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !127, file: !4, line: 104, baseType: !276, size: 64, align: 64, offset: 192)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !277, line: 77, baseType: !278)
!277 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64, align: 64)
!279 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !277, line: 77, flags: DIFlagFwdDecl)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !127, file: !4, line: 105, baseType: !276, size: 64, align: 64, offset: 256)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !127, file: !4, line: 106, baseType: !142, size: 64, align: 64, offset: 320)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !127, file: !4, line: 107, baseType: !237, size: 32, align: 32, offset: 384)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !127, file: !4, line: 109, baseType: !144, size: 64, align: 64, offset: 448)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !127, file: !4, line: 110, baseType: !285, size: 64, align: 64, offset: 512)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64, align: 64)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !287, line: 39, baseType: !288)
!287 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !287, line: 41, size: 192, align: 64, elements: !289)
!289 = !{!290, !291, !292}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !288, file: !287, line: 43, baseType: !142, size: 64, align: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !288, file: !287, line: 44, baseType: !144, size: 64, align: 64, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !288, file: !287, line: 45, baseType: !144, size: 64, align: 64, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !127, file: !4, line: 111, baseType: !285, size: 64, align: 64, offset: 576)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !127, file: !4, line: 112, baseType: !285, size: 64, align: 64, offset: 640)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !127, file: !4, line: 113, baseType: !296, size: 48, align: 8, offset: 704)
!296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 48, align: 8, elements: !297)
!297 = !{!298}
!298 = !DISubrange(count: 6)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !127, file: !4, line: 117, baseType: !237, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !127, file: !4, line: 118, baseType: !237, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !127, file: !4, line: 119, baseType: !237, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !127, file: !4, line: 120, baseType: !237, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !127, file: !4, line: 121, baseType: !237, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !127, file: !4, line: 122, baseType: !237, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !127, file: !4, line: 124, baseType: !185, size: 64, align: 64, offset: 768)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !127, file: !4, line: 125, baseType: !185, size: 64, align: 64, offset: 832)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !89, file: !92, line: 38, baseType: !57, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !89, file: !92, line: 39, baseType: !57, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !89, file: !92, line: 40, baseType: !57, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !89, file: !92, line: 41, baseType: !57, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !89, file: !92, line: 42, baseType: !57, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !89, file: !92, line: 43, baseType: !57, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !89, file: !92, line: 44, baseType: !57, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !89, file: !92, line: 45, baseType: !57, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !89, file: !92, line: 46, baseType: !44, size: 64, align: 64, offset: 1792)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !89, file: !92, line: 47, baseType: !44, size: 64, align: 64, offset: 1856)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !89, file: !80, line: 27, baseType: !44, size: 64, align: 64, offset: 1920)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_nick", scope: !89, file: !80, line: 28, baseType: !44, size: 64, align: 64, offset: 1984)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !89, file: !80, line: 30, baseType: !42, size: 32, align: 32, offset: 2048)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_username", scope: !89, file: !80, line: 31, baseType: !44, size: 64, align: 64, offset: 2112)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !89, file: !80, line: 32, baseType: !44, size: 64, align: 64, offset: 2176)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !89, file: !80, line: 34, baseType: !42, size: 32, align: 32, offset: 2240)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !89, file: !80, line: 35, baseType: !42, size: 32, align: 32, offset: 2272)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !89, file: !80, line: 36, baseType: !42, size: 32, align: 32, offset: 2304)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks", scope: !89, file: !80, line: 38, baseType: !42, size: 32, align: 32, offset: 2336)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !89, file: !80, line: 38, baseType: !42, size: 32, align: 32, offset: 2368)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes", scope: !89, file: !80, line: 38, baseType: !42, size: 32, align: 32, offset: 2400)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois", scope: !89, file: !80, line: 38, baseType: !42, size: 32, align: 32, offset: 2432)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !79, file: !83, line: 9, baseType: !51, size: 64, align: 64, offset: 192)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !79, file: !83, line: 10, baseType: !51, size: 64, align: 64, offset: 256)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !79, file: !83, line: 12, baseType: !44, size: 64, align: 64, offset: 320)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !79, file: !83, line: 13, baseType: !44, size: 64, align: 64, offset: 384)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !79, file: !83, line: 15, baseType: !57, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !79, file: !83, line: 16, baseType: !57, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !79, file: !83, line: 17, baseType: !57, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !79, file: !83, line: 18, baseType: !57, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !79, file: !83, line: 19, baseType: !57, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !79, file: !83, line: 21, baseType: !339, size: 64, align: 64, offset: 512)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64, align: 64)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !109, line: 102, baseType: !341)
!341 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !109, line: 102, flags: DIFlagFwdDecl)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !79, file: !83, line: 22, baseType: !42, size: 32, align: 32, offset: 576)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !79, file: !83, line: 25, baseType: !344, size: 128, align: 64, offset: 640)
!344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 128, align: 64, elements: !345)
!345 = !{!346}
!346 = !DISubrange(count: 2)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !79, file: !83, line: 26, baseType: !42, size: 32, align: 32, offset: 768)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !79, file: !83, line: 27, baseType: !42, size: 32, align: 32, offset: 800)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !79, file: !83, line: 29, baseType: !350, size: 64, align: 64, offset: 832)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64, align: 64)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !109, line: 103, baseType: !352)
!352 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !109, line: 103, flags: DIFlagFwdDecl)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !79, file: !83, line: 30, baseType: !354, size: 64, align: 64, offset: 896)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64, align: 64)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !356, line: 37, baseType: !357)
!356 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!357 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !356, line: 37, flags: DIFlagFwdDecl)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !79, file: !83, line: 32, baseType: !44, size: 64, align: 64, offset: 960)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !79, file: !83, line: 33, baseType: !44, size: 64, align: 64, offset: 1024)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !79, file: !83, line: 34, baseType: !44, size: 64, align: 64, offset: 1088)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !79, file: !83, line: 35, baseType: !57, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !79, file: !83, line: 36, baseType: !57, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !79, file: !83, line: 37, baseType: !57, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !79, file: !83, line: 38, baseType: !57, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !79, file: !83, line: 40, baseType: !366, size: 128, align: 64, offset: 1216)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !131, line: 504, baseType: !367)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !131, line: 506, size: 128, align: 64, elements: !368)
!368 = !{!369, !371}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !367, file: !131, line: 508, baseType: !370, size: 64, align: 64)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !131, line: 48, baseType: !55)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !367, file: !131, line: 509, baseType: !370, size: 64, align: 64, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !79, file: !83, line: 41, baseType: !51, size: 64, align: 64, offset: 1344)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !79, file: !83, line: 42, baseType: !42, size: 32, align: 32, offset: 1408)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !79, file: !83, line: 44, baseType: !246, size: 64, align: 64, offset: 1472)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !79, file: !83, line: 45, baseType: !246, size: 64, align: 64, offset: 1536)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !79, file: !83, line: 53, baseType: !377, size: 64, align: 64, offset: 1600)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64, align: 64)
!378 = !DISubroutineType(types: !379)
!379 = !{null, !380, !468, !42}
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64, align: 64)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !109, line: 107, baseType: !382)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !383, line: 30, size: 2240, align: 64, elements: !384)
!383 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!384 = !{!385, !386, !387, !388, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !464, !470, !474, !478, !482, !561, !568, !572}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !382, file: !83, line: 3, baseType: !42, size: 32, align: 32)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !382, file: !83, line: 4, baseType: !42, size: 32, align: 32, offset: 32)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !382, file: !83, line: 6, baseType: !42, size: 32, align: 32, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !382, file: !83, line: 8, baseType: !389, size: 64, align: 64, offset: 128)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64, align: 64)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !109, line: 113, baseType: !391)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !383, line: 25, size: 1920, align: 64, elements: !392)
!392 = !{!393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !391, file: !92, line: 3, baseType: !42, size: 32, align: 32)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !391, file: !92, line: 4, baseType: !42, size: 32, align: 32, offset: 32)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !391, file: !92, line: 6, baseType: !42, size: 32, align: 32, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !391, file: !92, line: 9, baseType: !44, size: 64, align: 64, offset: 128)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !391, file: !92, line: 10, baseType: !42, size: 32, align: 32, offset: 192)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !391, file: !92, line: 11, baseType: !44, size: 64, align: 64, offset: 256)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !391, file: !92, line: 11, baseType: !44, size: 64, align: 64, offset: 320)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !391, file: !92, line: 11, baseType: !44, size: 64, align: 64, offset: 384)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !391, file: !92, line: 13, baseType: !101, size: 16, align: 16, offset: 448)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !391, file: !92, line: 14, baseType: !44, size: 64, align: 64, offset: 512)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !391, file: !92, line: 15, baseType: !44, size: 64, align: 64, offset: 576)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !391, file: !92, line: 16, baseType: !42, size: 32, align: 32, offset: 640)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !391, file: !92, line: 17, baseType: !44, size: 64, align: 64, offset: 704)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !391, file: !92, line: 19, baseType: !107, size: 64, align: 64, offset: 768)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !391, file: !92, line: 19, baseType: !107, size: 64, align: 64, offset: 832)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !391, file: !92, line: 21, baseType: !44, size: 64, align: 64, offset: 896)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !391, file: !92, line: 22, baseType: !44, size: 64, align: 64, offset: 960)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !391, file: !92, line: 23, baseType: !44, size: 64, align: 64, offset: 1024)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !391, file: !92, line: 24, baseType: !44, size: 64, align: 64, offset: 1088)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !391, file: !92, line: 26, baseType: !44, size: 64, align: 64, offset: 1152)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !391, file: !92, line: 27, baseType: !44, size: 64, align: 64, offset: 1216)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !391, file: !92, line: 28, baseType: !44, size: 64, align: 64, offset: 1280)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !391, file: !92, line: 29, baseType: !44, size: 64, align: 64, offset: 1344)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !391, file: !92, line: 30, baseType: !44, size: 64, align: 64, offset: 1408)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !391, file: !92, line: 31, baseType: !44, size: 64, align: 64, offset: 1472)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !391, file: !92, line: 32, baseType: !44, size: 64, align: 64, offset: 1536)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !391, file: !92, line: 33, baseType: !44, size: 64, align: 64, offset: 1600)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !391, file: !92, line: 35, baseType: !125, size: 64, align: 64, offset: 1664)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !391, file: !92, line: 38, baseType: !57, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !391, file: !92, line: 39, baseType: !57, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !391, file: !92, line: 40, baseType: !57, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !391, file: !92, line: 41, baseType: !57, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !391, file: !92, line: 42, baseType: !57, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !391, file: !92, line: 43, baseType: !57, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !391, file: !92, line: 44, baseType: !57, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !391, file: !92, line: 45, baseType: !57, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !391, file: !92, line: 46, baseType: !44, size: 64, align: 64, offset: 1792)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !391, file: !92, line: 47, baseType: !44, size: 64, align: 64, offset: 1856)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !382, file: !83, line: 9, baseType: !51, size: 64, align: 64, offset: 192)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !382, file: !83, line: 10, baseType: !51, size: 64, align: 64, offset: 256)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !382, file: !83, line: 12, baseType: !44, size: 64, align: 64, offset: 320)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !382, file: !83, line: 13, baseType: !44, size: 64, align: 64, offset: 384)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !382, file: !83, line: 15, baseType: !57, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !382, file: !83, line: 16, baseType: !57, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !382, file: !83, line: 17, baseType: !57, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !382, file: !83, line: 18, baseType: !57, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !382, file: !83, line: 19, baseType: !57, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !382, file: !83, line: 21, baseType: !339, size: 64, align: 64, offset: 512)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !382, file: !83, line: 22, baseType: !42, size: 32, align: 32, offset: 576)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !382, file: !83, line: 25, baseType: !344, size: 128, align: 64, offset: 640)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !382, file: !83, line: 26, baseType: !42, size: 32, align: 32, offset: 768)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !382, file: !83, line: 27, baseType: !42, size: 32, align: 32, offset: 800)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !382, file: !83, line: 29, baseType: !350, size: 64, align: 64, offset: 832)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !382, file: !83, line: 30, baseType: !354, size: 64, align: 64, offset: 896)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !382, file: !83, line: 32, baseType: !44, size: 64, align: 64, offset: 960)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !382, file: !83, line: 33, baseType: !44, size: 64, align: 64, offset: 1024)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !382, file: !83, line: 34, baseType: !44, size: 64, align: 64, offset: 1088)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !382, file: !83, line: 35, baseType: !57, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !382, file: !83, line: 36, baseType: !57, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !382, file: !83, line: 37, baseType: !57, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !382, file: !83, line: 38, baseType: !57, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !382, file: !83, line: 40, baseType: !366, size: 128, align: 64, offset: 1216)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !382, file: !83, line: 41, baseType: !51, size: 64, align: 64, offset: 1344)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !382, file: !83, line: 42, baseType: !42, size: 32, align: 32, offset: 1408)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !382, file: !83, line: 44, baseType: !246, size: 64, align: 64, offset: 1472)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !382, file: !83, line: 45, baseType: !246, size: 64, align: 64, offset: 1536)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !382, file: !83, line: 53, baseType: !377, size: 64, align: 64, offset: 1600)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !382, file: !83, line: 55, baseType: !461, size: 64, align: 64, offset: 1664)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64, align: 64)
!462 = !DISubroutineType(types: !463)
!463 = !{!42, !380, !45}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !382, file: !83, line: 57, baseType: !465, size: 64, align: 64, offset: 1728)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64, align: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{!42, !380, !468}
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64, align: 64)
!469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !382, file: !83, line: 60, baseType: !471, size: 64, align: 64, offset: 1792)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64, align: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{!468, !380}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !382, file: !83, line: 62, baseType: !475, size: 64, align: 64, offset: 1856)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64, align: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{null, !380, !468, !468, !42}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !382, file: !83, line: 65, baseType: !479, size: 64, align: 64, offset: 1920)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64, align: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{!48, !380, !468, !468}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !382, file: !83, line: 69, baseType: !483, size: 64, align: 64, offset: 1984)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64, align: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{!486, !380, !468}
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64, align: 64)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !109, line: 109, baseType: !488)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !489, line: 15, size: 1408, align: 64, elements: !490)
!489 = !DIFile(filename: "../../../src/core/channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!490 = !{!491, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !509, !513, !515, !516, !517, !518, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !488, file: !492, line: 3, baseType: !42, size: 32, align: 32)
!492 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!493 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !488, file: !492, line: 4, baseType: !42, size: 32, align: 32, offset: 32)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !488, file: !492, line: 5, baseType: !354, size: 64, align: 64, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !488, file: !492, line: 7, baseType: !75, size: 64, align: 64, offset: 128)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !488, file: !492, line: 8, baseType: !380, size: 64, align: 64, offset: 192)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !488, file: !492, line: 9, baseType: !44, size: 64, align: 64, offset: 256)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !488, file: !492, line: 10, baseType: !44, size: 64, align: 64, offset: 320)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !488, file: !492, line: 11, baseType: !51, size: 64, align: 64, offset: 384)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !488, file: !492, line: 12, baseType: !42, size: 32, align: 32, offset: 448)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !488, file: !492, line: 13, baseType: !44, size: 64, align: 64, offset: 512)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !488, file: !492, line: 15, baseType: !503, size: 64, align: 64, offset: 576)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64, align: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{null, !506}
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64, align: 64)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !109, line: 108, baseType: !508)
!508 = !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !109, line: 108, flags: DIFlagFwdDecl)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !488, file: !492, line: 17, baseType: !510, size: 64, align: 64, offset: 640)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64, align: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{!468, !506}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !488, file: !514, line: 5, baseType: !44, size: 64, align: 64, offset: 704)
!514 = !DIFile(filename: "../../../src/core/channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!515 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !488, file: !514, line: 6, baseType: !44, size: 64, align: 64, offset: 768)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !488, file: !514, line: 7, baseType: !51, size: 64, align: 64, offset: 832)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !488, file: !514, line: 9, baseType: !354, size: 64, align: 64, offset: 896)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !488, file: !514, line: 10, baseType: !519, size: 64, align: 64, offset: 960)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64, align: 64)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !109, line: 111, baseType: !521)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !522, line: 13, size: 576, align: 64, elements: !523)
!522 = !DIFile(filename: "../../../src/core/nicklist.h", directory: "/home/lichi/Desktop/irssi/task1")
!523 = !{!524, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !542, !543}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !521, file: !525, line: 3, baseType: !42, size: 32, align: 32)
!525 = !DIFile(filename: "../../../src/core/nick-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!526 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !521, file: !525, line: 4, baseType: !42, size: 32, align: 32, offset: 32)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "last_check", scope: !521, file: !525, line: 6, baseType: !51, size: 64, align: 64, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !521, file: !525, line: 8, baseType: !44, size: 64, align: 64, offset: 128)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !521, file: !525, line: 9, baseType: !44, size: 64, align: 64, offset: 192)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !521, file: !525, line: 10, baseType: !44, size: 64, align: 64, offset: 256)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "hops", scope: !521, file: !525, line: 11, baseType: !42, size: 32, align: 32, offset: 320)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "gone", scope: !521, file: !525, line: 14, baseType: !57, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "serverop", scope: !521, file: !525, line: 15, baseType: !57, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "send_massjoin", scope: !521, file: !525, line: 18, baseType: !57, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !521, file: !525, line: 19, baseType: !57, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !521, file: !525, line: 20, baseType: !57, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !521, file: !525, line: 21, baseType: !57, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !521, file: !525, line: 22, baseType: !539, size: 64, align: 8, offset: 360)
!539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 64, align: 8, elements: !540)
!540 = !{!541}
!541 = !DISubrange(count: 8)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !521, file: !525, line: 26, baseType: !75, size: 64, align: 64, offset: 448)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !521, file: !525, line: 28, baseType: !519, size: 64, align: 64, offset: 512)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !488, file: !514, line: 12, baseType: !57, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !488, file: !514, line: 13, baseType: !44, size: 64, align: 64, offset: 1088)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !488, file: !514, line: 14, baseType: !42, size: 32, align: 32, offset: 1152)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !488, file: !514, line: 15, baseType: !44, size: 64, align: 64, offset: 1216)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !488, file: !514, line: 17, baseType: !57, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !488, file: !514, line: 18, baseType: !57, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !488, file: !514, line: 19, baseType: !57, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !488, file: !514, line: 20, baseType: !57, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !488, file: !514, line: 22, baseType: !57, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !488, file: !514, line: 23, baseType: !57, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !488, file: !514, line: 24, baseType: !57, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !488, file: !514, line: 25, baseType: !57, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !488, file: !514, line: 26, baseType: !57, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !488, file: !514, line: 31, baseType: !558, size: 64, align: 64, offset: 1344)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64, align: 64)
!559 = !DISubroutineType(types: !560)
!560 = !{!44, !486}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !382, file: !83, line: 70, baseType: !562, size: 64, align: 64, offset: 2048)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64, align: 64)
!563 = !DISubroutineType(types: !564)
!564 = !{!565, !380, !468}
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64, align: 64)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !109, line: 110, baseType: !567)
!567 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !109, line: 110, flags: DIFlagFwdDecl)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !382, file: !83, line: 71, baseType: !569, size: 64, align: 64, offset: 2112)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64, align: 64)
!570 = !DISubroutineType(types: !571)
!571 = !{!42, !468, !468}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !382, file: !83, line: 73, baseType: !569, size: 64, align: 64, offset: 2176)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !79, file: !83, line: 55, baseType: !461, size: 64, align: 64, offset: 1664)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !79, file: !83, line: 57, baseType: !465, size: 64, align: 64, offset: 1728)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !79, file: !83, line: 60, baseType: !471, size: 64, align: 64, offset: 1792)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !79, file: !83, line: 62, baseType: !475, size: 64, align: 64, offset: 1856)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !79, file: !83, line: 65, baseType: !479, size: 64, align: 64, offset: 1920)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !79, file: !83, line: 69, baseType: !483, size: 64, align: 64, offset: 1984)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !79, file: !83, line: 70, baseType: !562, size: 64, align: 64, offset: 2048)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !79, file: !83, line: 71, baseType: !569, size: 64, align: 64, offset: 2112)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !79, file: !83, line: 73, baseType: !569, size: 64, align: 64, offset: 2176)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "redirects", scope: !79, file: !80, line: 46, baseType: !246, size: 64, align: 64, offset: 2240)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_queue", scope: !79, file: !80, line: 47, baseType: !246, size: 64, align: 64, offset: 2304)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_next", scope: !79, file: !80, line: 48, baseType: !585, size: 64, align: 64, offset: 2368)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64, align: 64)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "REDIRECT_REC", file: !78, line: 8, baseType: !587)
!587 = !DICompositeType(tag: DW_TAG_structure_type, name: "_REDIRECT_REC", file: !78, line: 8, flags: DIFlagFwdDecl)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_active", scope: !79, file: !80, line: 49, baseType: !246, size: 64, align: 64, offset: 2432)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "last_nick", scope: !79, file: !80, line: 51, baseType: !44, size: 64, align: 64, offset: 2496)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !79, file: !80, line: 53, baseType: !44, size: 64, align: 64, offset: 2560)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !79, file: !80, line: 54, baseType: !44, size: 64, align: 64, offset: 2624)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "wanted_usermode", scope: !79, file: !80, line: 55, baseType: !44, size: 64, align: 64, offset: 2688)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "userhost", scope: !79, file: !80, line: 56, baseType: !44, size: 64, align: 64, offset: 2752)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "channels_formed", scope: !79, file: !80, line: 57, baseType: !42, size: 32, align: 32, offset: 2816)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "whois_found", scope: !79, file: !80, line: 59, baseType: !57, size: 1, align: 32, offset: 2848, flags: DIFlagBitField, extraData: i64 2848)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "whowas_found", scope: !79, file: !80, line: 60, baseType: !57, size: 1, align: 32, offset: 2849, flags: DIFlagBitField, extraData: i64 2848)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "emode_known", scope: !79, file: !80, line: 62, baseType: !57, size: 1, align: 32, offset: 2850, flags: DIFlagBitField, extraData: i64 2848)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_mode", scope: !79, file: !80, line: 63, baseType: !57, size: 1, align: 32, offset: 2851, flags: DIFlagBitField, extraData: i64 2848)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_who", scope: !79, file: !80, line: 64, baseType: !57, size: 1, align: 32, offset: 2852, flags: DIFlagBitField, extraData: i64 2848)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "one_endofwho", scope: !79, file: !80, line: 65, baseType: !57, size: 1, align: 32, offset: 2853, flags: DIFlagBitField, extraData: i64 2848)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "disable_lag", scope: !79, file: !80, line: 66, baseType: !57, size: 1, align: 32, offset: 2854, flags: DIFlagBitField, extraData: i64 2848)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "nick_collision", scope: !79, file: !80, line: 67, baseType: !57, size: 1, align: 32, offset: 2855, flags: DIFlagBitField, extraData: i64 2848)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "motd_got", scope: !79, file: !80, line: 68, baseType: !57, size: 1, align: 32, offset: 2856, flags: DIFlagBitField, extraData: i64 2848)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "isupport_sent", scope: !79, file: !80, line: 69, baseType: !57, size: 1, align: 32, offset: 2857, flags: DIFlagBitField, extraData: i64 2848)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "cap_complete", scope: !79, file: !80, line: 70, baseType: !57, size: 1, align: 32, offset: 2858, flags: DIFlagBitField, extraData: i64 2848)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "cap_in_multiline", scope: !79, file: !80, line: 71, baseType: !57, size: 1, align: 32, offset: 2859, flags: DIFlagBitField, extraData: i64 2848)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_success", scope: !79, file: !80, line: 72, baseType: !57, size: 1, align: 32, offset: 2860, flags: DIFlagBitField, extraData: i64 2848)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks_in_cmd", scope: !79, file: !80, line: 74, baseType: !42, size: 32, align: 32, offset: 2880)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes_in_cmd", scope: !79, file: !80, line: 75, baseType: !42, size: 32, align: 32, offset: 2912)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois_in_cmd", scope: !79, file: !80, line: 76, baseType: !42, size: 32, align: 32, offset: 2944)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs_in_cmd", scope: !79, file: !80, line: 77, baseType: !42, size: 32, align: 32, offset: 2976)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "cap_supported", scope: !79, file: !80, line: 79, baseType: !354, size: 64, align: 64, offset: 3008)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "cap_active", scope: !79, file: !80, line: 80, baseType: !246, size: 64, align: 64, offset: 3072)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "cap_queue", scope: !79, file: !80, line: 81, baseType: !246, size: 64, align: 64, offset: 3136)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_buffer", scope: !79, file: !80, line: 83, baseType: !285, size: 64, align: 64, offset: 3200)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_timeout", scope: !79, file: !80, line: 84, baseType: !237, size: 32, align: 32, offset: 3264)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcount", scope: !79, file: !80, line: 87, baseType: !42, size: 32, align: 32, offset: 3296)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "cmdqueue", scope: !79, file: !80, line: 91, baseType: !246, size: 64, align: 64, offset: 3328)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "wait_cmd", scope: !79, file: !80, line: 92, baseType: !366, size: 128, align: 64, offset: 3392)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd", scope: !79, file: !80, line: 93, baseType: !366, size: 128, align: 64, offset: 3520)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !79, file: !80, line: 95, baseType: !42, size: 32, align: 32, offset: 3648)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !79, file: !80, line: 96, baseType: !42, size: 32, align: 32, offset: 3680)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !79, file: !80, line: 97, baseType: !42, size: 32, align: 32, offset: 3712)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "idles", scope: !79, file: !80, line: 100, baseType: !246, size: 64, align: 64, offset: 3776)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "ctcpqueue", scope: !79, file: !80, line: 103, baseType: !246, size: 64, align: 64, offset: 3840)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "knockoutlist", scope: !79, file: !80, line: 106, baseType: !246, size: 64, align: 64, offset: 3904)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "splits", scope: !79, file: !80, line: 108, baseType: !354, size: 64, align: 64, offset: 3968)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "split_servers", scope: !79, file: !80, line: 109, baseType: !246, size: 64, align: 64, offset: 4032)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "rejoin_channels", scope: !79, file: !80, line: 111, baseType: !246, size: 64, align: 64, offset: 4096)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "chanqueries", scope: !79, file: !80, line: 114, baseType: !75, size: 64, align: 64, offset: 4160)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "isupport", scope: !79, file: !80, line: 116, baseType: !354, size: 64, align: 64, offset: 4224)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !79, file: !80, line: 117, baseType: !633, size: 32768, align: 64, offset: 4288)
!633 = !DICompositeType(tag: DW_TAG_array_type, baseType: !634, size: 32768, align: 64, elements: !683)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "modes_type", file: !635, line: 10, size: 128, align: 64, elements: !636)
!635 = !DIFile(filename: "../../../src/irc/core/modes.h", directory: "/home/lichi/Desktop/irssi/task1")
!636 = !{!637, !682}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !634, file: !635, line: 11, baseType: !638, size: 64, align: 64)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64, align: 64)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_func_t", file: !635, line: 7, baseType: !640)
!640 = !DISubroutineType(types: !641)
!641 = !{null, !642, !468, !45, !45, !44, !285}
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64, align: 64)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_CHANNEL_REC", file: !78, line: 7, baseType: !644)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_CHANNEL_REC", file: !645, line: 15, size: 1600, align: 64, elements: !646)
!645 = !DIFile(filename: "../../../src/irc/core/irc-channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!646 = !{!647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !644, file: !492, line: 3, baseType: !42, size: 32, align: 32)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !644, file: !492, line: 4, baseType: !42, size: 32, align: 32, offset: 32)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !644, file: !492, line: 5, baseType: !354, size: 64, align: 64, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !644, file: !492, line: 7, baseType: !75, size: 64, align: 64, offset: 128)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !644, file: !492, line: 8, baseType: !76, size: 64, align: 64, offset: 192)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !644, file: !492, line: 9, baseType: !44, size: 64, align: 64, offset: 256)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !644, file: !492, line: 10, baseType: !44, size: 64, align: 64, offset: 320)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !644, file: !492, line: 11, baseType: !51, size: 64, align: 64, offset: 384)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !644, file: !492, line: 12, baseType: !42, size: 32, align: 32, offset: 448)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !644, file: !492, line: 13, baseType: !44, size: 64, align: 64, offset: 512)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !644, file: !492, line: 15, baseType: !503, size: 64, align: 64, offset: 576)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !644, file: !492, line: 17, baseType: !510, size: 64, align: 64, offset: 640)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !644, file: !514, line: 5, baseType: !44, size: 64, align: 64, offset: 704)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !644, file: !514, line: 6, baseType: !44, size: 64, align: 64, offset: 768)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !644, file: !514, line: 7, baseType: !51, size: 64, align: 64, offset: 832)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !644, file: !514, line: 9, baseType: !354, size: 64, align: 64, offset: 896)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !644, file: !514, line: 10, baseType: !519, size: 64, align: 64, offset: 960)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !644, file: !514, line: 12, baseType: !57, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !644, file: !514, line: 13, baseType: !44, size: 64, align: 64, offset: 1088)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !644, file: !514, line: 14, baseType: !42, size: 32, align: 32, offset: 1152)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !644, file: !514, line: 15, baseType: !44, size: 64, align: 64, offset: 1216)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !644, file: !514, line: 17, baseType: !57, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !644, file: !514, line: 18, baseType: !57, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !644, file: !514, line: 19, baseType: !57, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !644, file: !514, line: 20, baseType: !57, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !644, file: !514, line: 22, baseType: !57, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !644, file: !514, line: 23, baseType: !57, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !644, file: !514, line: 24, baseType: !57, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !644, file: !514, line: 25, baseType: !57, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !644, file: !514, line: 26, baseType: !57, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !644, file: !514, line: 31, baseType: !558, size: 64, align: 64, offset: 1344)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "banlist", scope: !644, file: !645, line: 18, baseType: !246, size: 64, align: 64, offset: 1408)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "massjoin_start", scope: !644, file: !645, line: 20, baseType: !51, size: 64, align: 64, offset: 1472)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "massjoins", scope: !644, file: !645, line: 21, baseType: !42, size: 32, align: 32, offset: 1536)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "last_massjoins", scope: !644, file: !645, line: 22, baseType: !42, size: 32, align: 32, offset: 1568)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !634, file: !635, line: 12, baseType: !45, size: 8, align: 8, offset: 64)
!683 = !{!684}
!684 = !DISubrange(count: 256)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !79, file: !80, line: 118, baseType: !686, size: 2048, align: 8, offset: 37056)
!686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 2048, align: 8, elements: !683)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "nick_comp_func", scope: !79, file: !80, line: 120, baseType: !569, size: 64, align: 64, offset: 39104)
!688 = !{i32 2, !"Dwarf Version", i32 4}
!689 = !{i32 2, !"Debug Info Version", i32 3}
!690 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!691 = distinct !DISubprogram(name: "autoignore_update", scope: !692, file: !692, line: 32, type: !693, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!692 = !DIFile(filename: "autoignore.c", directory: "/home/lichi/Desktop/irssi/task1")
!693 = !DISubroutineType(types: !694)
!694 = !{null, !36, !42}
!695 = !{}
!696 = !DILocalVariable(name: "rec", arg: 1, scope: !691, file: !692, line: 32, type: !36)
!697 = !DIExpression()
!698 = !DILocation(line: 32, column: 36, scope: !691)
!699 = !DILocalVariable(name: "level", arg: 2, scope: !691, file: !692, line: 32, type: !42)
!700 = !DILocation(line: 32, column: 45, scope: !691)
!701 = !DILocation(line: 34, column: 16, scope: !691)
!702 = !DILocation(line: 34, column: 2, scope: !691)
!703 = !DILocation(line: 34, column: 7, scope: !691)
!704 = !DILocation(line: 34, column: 13, scope: !691)
!705 = !DILocation(line: 35, column: 23, scope: !691)
!706 = !DILocation(line: 36, column: 3, scope: !691)
!707 = !DILocation(line: 36, column: 39, scope: !691)
!708 = !DILocation(line: 35, column: 33, scope: !691)
!709 = !DILocation(line: 35, column: 2, scope: !691)
!710 = !DILocation(line: 35, column: 7, scope: !691)
!711 = !DILocation(line: 35, column: 21, scope: !691)
!712 = !DILocation(line: 38, column: 20, scope: !691)
!713 = !DILocation(line: 38, column: 2, scope: !691)
!714 = !DILocation(line: 39, column: 1, scope: !691)
!715 = distinct !DISubprogram(name: "autoignore_add", scope: !692, file: !692, line: 41, type: !716, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!716 = !DISubroutineType(types: !717)
!717 = !{null, !76, !44, !42}
!718 = !DILocalVariable(name: "server", arg: 1, scope: !715, file: !692, line: 41, type: !76)
!719 = !DILocation(line: 41, column: 37, scope: !715)
!720 = !DILocalVariable(name: "mask", arg: 2, scope: !715, file: !692, line: 41, type: !44)
!721 = !DILocation(line: 41, column: 51, scope: !715)
!722 = !DILocalVariable(name: "level", arg: 3, scope: !715, file: !692, line: 41, type: !42)
!723 = !DILocation(line: 41, column: 61, scope: !715)
!724 = !DILocalVariable(name: "rec", scope: !715, file: !692, line: 43, type: !36)
!725 = !DILocation(line: 43, column: 14, scope: !715)
!726 = !DILocation(line: 45, column: 24, scope: !715)
!727 = !DILocation(line: 45, column: 9, scope: !715)
!728 = !DILocation(line: 45, column: 6, scope: !715)
!729 = !DILocation(line: 47, column: 23, scope: !715)
!730 = !DILocation(line: 47, column: 14, scope: !715)
!731 = !DILocation(line: 47, column: 2, scope: !715)
!732 = !DILocation(line: 47, column: 7, scope: !715)
!733 = !DILocation(line: 47, column: 12, scope: !715)
!734 = !DILocation(line: 48, column: 28, scope: !715)
!735 = !DILocation(line: 48, column: 36, scope: !715)
!736 = !DILocation(line: 48, column: 19, scope: !715)
!737 = !DILocation(line: 48, column: 2, scope: !715)
!738 = !DILocation(line: 48, column: 7, scope: !715)
!739 = !DILocation(line: 48, column: 17, scope: !715)
!740 = !DILocation(line: 49, column: 15, scope: !715)
!741 = !DILocation(line: 49, column: 2, scope: !715)
!742 = !DILocation(line: 49, column: 7, scope: !715)
!743 = !DILocation(line: 49, column: 13, scope: !715)
!744 = !DILocation(line: 50, column: 23, scope: !715)
!745 = !DILocation(line: 51, column: 3, scope: !715)
!746 = !DILocation(line: 51, column: 39, scope: !715)
!747 = !DILocation(line: 50, column: 33, scope: !715)
!748 = !DILocation(line: 50, column: 2, scope: !715)
!749 = !DILocation(line: 50, column: 7, scope: !715)
!750 = !DILocation(line: 50, column: 21, scope: !715)
!751 = !DILocation(line: 53, column: 17, scope: !715)
!752 = !DILocation(line: 53, column: 2, scope: !715)
!753 = !DILocation(line: 54, column: 1, scope: !715)
!754 = distinct !DISubprogram(name: "autoignore_init", scope: !692, file: !692, line: 78, type: !234, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!755 = !DILocation(line: 80, column: 2, scope: !754)
!756 = !DILocation(line: 81, column: 2, scope: !754)
!757 = !DILocation(line: 83, column: 4, scope: !754)
!758 = !DILocation(line: 84, column: 1, scope: !754)
!759 = distinct !DISubprogram(name: "sig_flood", scope: !692, file: !692, line: 56, type: !760, isLocal: true, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!760 = !DISubroutineType(types: !761)
!761 = !{null, !76, !468, !468, !185}
!762 = !DILocalVariable(name: "server", arg: 1, scope: !759, file: !692, line: 56, type: !76)
!763 = !DILocation(line: 56, column: 39, scope: !759)
!764 = !DILocalVariable(name: "nick", arg: 2, scope: !759, file: !692, line: 56, type: !468)
!765 = !DILocation(line: 56, column: 59, scope: !759)
!766 = !DILocalVariable(name: "host", arg: 3, scope: !759, file: !692, line: 56, type: !468)
!767 = !DILocation(line: 56, column: 77, scope: !759)
!768 = !DILocalVariable(name: "levelp", arg: 4, scope: !759, file: !692, line: 56, type: !185)
!769 = !DILocation(line: 56, column: 92, scope: !759)
!770 = !DILocalVariable(name: "rec", scope: !759, file: !692, line: 58, type: !36)
!771 = !DILocation(line: 58, column: 14, scope: !759)
!772 = !DILocalVariable(name: "mask", scope: !759, file: !692, line: 59, type: !44)
!773 = !DILocation(line: 59, column: 8, scope: !759)
!774 = !DILocalVariable(name: "level", scope: !759, file: !692, line: 60, type: !42)
!775 = !DILocation(line: 60, column: 6, scope: !759)
!776 = !DILocalVariable(name: "check_level", scope: !759, file: !692, line: 60, type: !42)
!777 = !DILocation(line: 60, column: 13, scope: !759)
!778 = !DILocation(line: 62, column: 2, scope: !759)
!779 = distinct !{!779, !778}
!780 = !DILocation(line: 62, column: 90, scope: !781)
!781 = !DILexicalBlockFile(scope: !782, file: !692, discriminator: 1)
!782 = distinct !DILexicalBlock(scope: !783, file: !692, line: 62, column: 10)
!783 = distinct !DILexicalBlock(scope: !759, file: !692, line: 62, column: 4)
!784 = !DILocation(line: 62, column: 72, scope: !781)
!785 = !DILocation(line: 62, column: 57, scope: !781)
!786 = !DILocation(line: 62, column: 56, scope: !781)
!787 = !DILocation(line: 62, column: 31, scope: !788)
!788 = !DILexicalBlockFile(scope: !781, file: !692, discriminator: 7)
!789 = !DILocation(line: 62, column: 12, scope: !781)
!790 = !DILocation(line: 62, column: 10, scope: !781)
!791 = !DILocation(line: 62, column: 11, scope: !792)
!792 = !DILexicalBlockFile(scope: !782, file: !692, discriminator: 2)
!793 = !DILocation(line: 62, column: 10, scope: !794)
!794 = !DILexicalBlockFile(scope: !783, file: !692, discriminator: 3)
!795 = !DILocation(line: 62, column: 30, scope: !796)
!796 = !DILexicalBlockFile(scope: !797, file: !692, discriminator: 4)
!797 = distinct !DILexicalBlock(scope: !782, file: !692, line: 62, column: 28)
!798 = !DILocation(line: 62, column: 39, scope: !799)
!799 = !DILexicalBlockFile(scope: !800, file: !692, discriminator: 5)
!800 = distinct !DILexicalBlock(scope: !782, file: !692, line: 62, column: 37)
!801 = !DILocation(line: 62, column: 133, scope: !799)
!802 = !DILocation(line: 62, column: 144, scope: !803)
!803 = !DILexicalBlockFile(scope: !783, file: !692, discriminator: 6)
!804 = !DILocation(line: 64, column: 27, scope: !759)
!805 = !DILocation(line: 64, column: 18, scope: !759)
!806 = !DILocation(line: 64, column: 11, scope: !759)
!807 = !DILocation(line: 64, column: 8, scope: !759)
!808 = !DILocation(line: 65, column: 16, scope: !759)
!809 = !DILocation(line: 65, column: 14, scope: !759)
!810 = !DILocation(line: 67, column: 41, scope: !759)
!811 = !DILocation(line: 67, column: 47, scope: !759)
!812 = !DILocation(line: 67, column: 16, scope: !759)
!813 = !DILocation(line: 67, column: 14, scope: !759)
!814 = !DILocation(line: 68, column: 6, scope: !815)
!815 = distinct !DILexicalBlock(scope: !759, file: !692, line: 68, column: 6)
!816 = !DILocation(line: 68, column: 14, scope: !815)
!817 = !DILocation(line: 68, column: 12, scope: !815)
!818 = !DILocation(line: 68, column: 6, scope: !759)
!819 = !DILocation(line: 69, column: 26, scope: !820)
!820 = distinct !DILexicalBlock(scope: !815, file: !692, line: 68, column: 27)
!821 = !DILocation(line: 69, column: 34, scope: !820)
!822 = !DILocation(line: 69, column: 39, scope: !820)
!823 = !DILocation(line: 69, column: 9, scope: !820)
!824 = !DILocation(line: 69, column: 7, scope: !820)
!825 = !DILocation(line: 70, column: 7, scope: !826)
!826 = distinct !DILexicalBlock(scope: !820, file: !692, line: 70, column: 7)
!827 = !DILocation(line: 70, column: 11, scope: !826)
!828 = !DILocation(line: 70, column: 7, scope: !820)
!829 = !DILocation(line: 71, column: 19, scope: !826)
!830 = !DILocation(line: 71, column: 27, scope: !826)
!831 = !DILocation(line: 71, column: 33, scope: !826)
!832 = !DILocation(line: 71, column: 4, scope: !826)
!833 = !DILocation(line: 73, column: 22, scope: !826)
!834 = !DILocation(line: 73, column: 27, scope: !826)
!835 = !DILocation(line: 73, column: 4, scope: !826)
!836 = !DILocation(line: 74, column: 2, scope: !820)
!837 = !DILocation(line: 75, column: 16, scope: !759)
!838 = !DILocation(line: 75, column: 9, scope: !759)
!839 = !DILocation(line: 76, column: 1, scope: !759)
!840 = !DILocation(line: 76, column: 1, scope: !841)
!841 = !DILexicalBlockFile(scope: !759, file: !692, discriminator: 1)
!842 = distinct !DISubprogram(name: "autoignore_deinit", scope: !692, file: !692, line: 86, type: !234, isLocal: false, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !695)
!843 = !DILocation(line: 88, column: 2, scope: !842)
!844 = !DILocation(line: 89, column: 1, scope: !842)
