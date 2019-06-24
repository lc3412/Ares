; ModuleID = './line280-fe-dcc-get.o.i'
source_filename = "./line280-fe-dcc-get.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.GET_DCC_REC = type { i32, i32, i64, %struct._IRC_SERVER_REC*, i8*, i8*, i8*, %struct.CHAT_DCC_REC*, i8*, i8*, %struct._IPADDR, [46 x i8], i32, %struct._GIOChannel*, i32, i32, i32, i64, i64, i32, i8, %struct._GHashTable*, i64, i64, i32, i32, [4 x i8], i32, i32, i8*, i8 }
%struct._IRC_SERVER_REC = type opaque
%struct.CHAT_DCC_REC = type opaque
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
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GSourcePrivate = type opaque
%struct._GIConv = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct._GHashTable = type opaque
%struct._SERVER_REC = type { i32, i32, i32, %struct._SERVER_CONNECT_REC*, i64, i64, i8*, i8*, i8, %struct._NET_SENDBUF_REC*, i32, [2 x %struct._GIOChannel*], i32, i32, %struct._RAWLOG_REC*, %struct._GHashTable*, i8*, i8*, i8*, i8, %struct._GTimeVal, i64, i32, %struct._GSList*, %struct._GSList*, void (%struct._SERVER_REC*, i8*, i32)*, i32 (%struct._SERVER_REC*, i8)*, i32 (%struct._SERVER_REC*, i8*)*, i8* (%struct._SERVER_REC*)*, void (%struct._SERVER_REC*, i8*, i8*, i32)*, i8** (%struct._SERVER_REC*, i8*, i8*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)*, %struct._QUERY_REC* (%struct._SERVER_REC*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)* }
%struct._SERVER_CONNECT_REC = type { i32, i32, i32, i8*, i32, i8*, i8*, i8*, i16, i8*, i8*, i32, i8*, %struct._IPADDR*, %struct._IPADDR*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._GIOChannel*, i8, i8*, i8* }
%struct._NET_SENDBUF_REC = type opaque
%struct._RAWLOG_REC = type opaque
%struct._GTimeVal = type { i64, i64 }
%struct._CHANNEL_REC = type opaque
%struct._QUERY_REC = type opaque
%struct.FILE_DCC_REC = type { i32, i32, i64, %struct._IRC_SERVER_REC*, i8*, i8*, i8*, %struct.CHAT_DCC_REC*, i8*, i8*, %struct._IPADDR, [46 x i8], i32, %struct._GIOChannel*, i32, i32, i32, i64, i64, i32, i8, %struct._GHashTable*, i64, i64, i32, i32, [4 x i8], i32 }

@.str = private unnamed_addr constant [18 x i8] c"fe-common/irc/dcc\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"dcc request\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"dcc connected\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"dcc closed\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"dcc error file create\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"dcc error get not found\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"dcc error close not found\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"dcc error write\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"dcc list print\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"DCC\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"%02d:%02d:%02d\00", align 1
@__func__.dcc_error_get_not_found = private unnamed_addr constant [24 x i8] c"dcc_error_get_not_found\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"nick != NULL\00", align 1
@__func__.dcc_error_close_not_found = private unnamed_addr constant [26 x i8] c"dcc_error_close_not_found\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"type != NULL\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"fname != NULL\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"(ANY)\00", align 1

; Function Attrs: nounwind uwtable
define void @fe_dcc_get_init() #0 !dbg !585 {
  call void @signal_add_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.GET_DCC_REC*)* @dcc_request to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !588
  call void @signal_add_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.GET_DCC_REC*)* @dcc_connected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !589
  call void @signal_add_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.GET_DCC_REC*)* @dcc_closed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !590
  call void @signal_add_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.GET_DCC_REC*, i8*, i8*)* @dcc_error_file_create to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !591
  call void @signal_add_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @dcc_error_get_not_found to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !592
  call void @signal_add_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, i8*, i8*)* @dcc_error_close_not_found to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !593
  call void @signal_add_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.GET_DCC_REC*, i8*)* @dcc_error_write to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !594
  call void @signal_add_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.GET_DCC_REC*)* @sig_dcc_list_print to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !595
  ret void, !dbg !596
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @dcc_request(%struct.GET_DCC_REC*) #0 !dbg !597 {
  %2 = alloca %struct.GET_DCC_REC*, align 8
  %3 = alloca i8*, align 8
  store %struct.GET_DCC_REC* %0, %struct.GET_DCC_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.GET_DCC_REC** %2, metadata !600, metadata !601), !dbg !602
  call void @llvm.dbg.declare(metadata i8** %3, metadata !603, metadata !601), !dbg !604
  %4 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !605
  %5 = bitcast %struct.GET_DCC_REC* %4 to i8*, !dbg !605
  %6 = call i8* @module_check_cast_module(i8* %5, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0)), !dbg !607
  %7 = bitcast i8* %6 to %struct.GET_DCC_REC*, !dbg !608
  %8 = icmp ne %struct.GET_DCC_REC* %7, null, !dbg !608
  br i1 %8, label %9, label %10, !dbg !609

; <label>:9:                                      ; preds = %1
  br i1 false, label %11, label %12, !dbg !610

; <label>:10:                                     ; preds = %1
  br i1 false, label %12, label %11, !dbg !612

; <label>:11:                                     ; preds = %10, %9
  br label %58, !dbg !614

; <label>:12:                                     ; preds = %10, %9
  %13 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !616
  %14 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %13, i32 0, i32 22, !dbg !617
  %15 = load i64, i64* %14, align 8, !dbg !617
  %16 = call i8* @dcc_get_size_str(i64 %15), !dbg !618
  store i8* %16, i8** %3, align 8, !dbg !619
  %17 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !620
  %18 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %17, i32 0, i32 3, !dbg !621
  %19 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %18, align 8, !dbg !621
  %20 = bitcast %struct._IRC_SERVER_REC* %19 to i8*, !dbg !620
  %21 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !622
  %22 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %21, i32 0, i32 3, !dbg !623
  %23 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %22, align 8, !dbg !623
  %24 = bitcast %struct._IRC_SERVER_REC* %23 to i8*, !dbg !622
  %25 = call i8* @module_check_cast(i8* %24, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0)), !dbg !624
  %26 = bitcast i8* %25 to %struct._SERVER_REC*, !dbg !625
  %27 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %26, i32 0, i32 27, !dbg !626
  %28 = load i32 (%struct._SERVER_REC*, i8*)*, i32 (%struct._SERVER_REC*, i8*)** %27, align 8, !dbg !626
  %29 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !627
  %30 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %29, i32 0, i32 3, !dbg !628
  %31 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %30, align 8, !dbg !628
  %32 = bitcast %struct._IRC_SERVER_REC* %31 to i8*, !dbg !627
  %33 = call i8* @module_check_cast(i8* %32, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0)), !dbg !629
  %34 = bitcast i8* %33 to %struct._SERVER_REC*, !dbg !631
  %35 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !632
  %36 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %35, i32 0, i32 8, !dbg !625
  %37 = load i8*, i8** %36, align 8, !dbg !625
  %38 = call i32 %28(%struct._SERVER_REC* %34, i8* %37), !dbg !633
  %39 = icmp ne i32 %38, 0, !dbg !634
  %40 = select i1 %39, i32 18, i32 17, !dbg !634
  %41 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !635
  %42 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %41, i32 0, i32 6, !dbg !636
  %43 = load i8*, i8** %42, align 8, !dbg !636
  %44 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !637
  %45 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %44, i32 0, i32 11, !dbg !638
  %46 = getelementptr inbounds [46 x i8], [46 x i8]* %45, i32 0, i32 0, !dbg !637
  %47 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !639
  %48 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %47, i32 0, i32 12, !dbg !640
  %49 = load i32, i32* %48, align 4, !dbg !640
  %50 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !641
  %51 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %50, i32 0, i32 9, !dbg !642
  %52 = load i8*, i8** %51, align 8, !dbg !642
  %53 = load i8*, i8** %3, align 8, !dbg !643
  %54 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !644
  %55 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %54, i32 0, i32 8, !dbg !645
  %56 = load i8*, i8** %55, align 8, !dbg !645
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* %20, i8* null, i32 65536, i32 %40, i8* %43, i8* %46, i32 %49, i8* %52, i8* %53, i8* %56), !dbg !646
  %57 = load i8*, i8** %3, align 8, !dbg !648
  call void @g_free(i8* %57), !dbg !649
  br label %58, !dbg !650

; <label>:58:                                     ; preds = %12, %11
  ret void, !dbg !651
}

; Function Attrs: nounwind uwtable
define internal void @dcc_connected(%struct.GET_DCC_REC*) #0 !dbg !652 {
  %2 = alloca %struct.GET_DCC_REC*, align 8
  store %struct.GET_DCC_REC* %0, %struct.GET_DCC_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.GET_DCC_REC** %2, metadata !653, metadata !601), !dbg !654
  %3 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !655
  %4 = bitcast %struct.GET_DCC_REC* %3 to i8*, !dbg !655
  %5 = call i8* @module_check_cast_module(i8* %4, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0)), !dbg !657
  %6 = bitcast i8* %5 to %struct.GET_DCC_REC*, !dbg !658
  %7 = icmp ne %struct.GET_DCC_REC* %6, null, !dbg !658
  br i1 %7, label %8, label %9, !dbg !659

; <label>:8:                                      ; preds = %1
  br i1 false, label %10, label %11, !dbg !660

; <label>:9:                                      ; preds = %1
  br i1 false, label %11, label %10, !dbg !662

; <label>:10:                                     ; preds = %9, %8
  br label %28, !dbg !664

; <label>:11:                                     ; preds = %9, %8
  %12 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !666
  %13 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %12, i32 0, i32 3, !dbg !667
  %14 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %13, align 8, !dbg !667
  %15 = bitcast %struct._IRC_SERVER_REC* %14 to i8*, !dbg !666
  %16 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !668
  %17 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %16, i32 0, i32 9, !dbg !669
  %18 = load i8*, i8** %17, align 8, !dbg !669
  %19 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !670
  %20 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %19, i32 0, i32 6, !dbg !671
  %21 = load i8*, i8** %20, align 8, !dbg !671
  %22 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !672
  %23 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %22, i32 0, i32 11, !dbg !673
  %24 = getelementptr inbounds [46 x i8], [46 x i8]* %23, i32 0, i32 0, !dbg !672
  %25 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !674
  %26 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %25, i32 0, i32 12, !dbg !675
  %27 = load i32, i32* %26, align 4, !dbg !675
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* %15, i8* null, i32 65536, i32 27, i8* %18, i8* %21, i8* %24, i32 %27), !dbg !676
  br label %28, !dbg !677

; <label>:28:                                     ; preds = %11, %10
  ret void, !dbg !678
}

; Function Attrs: nounwind uwtable
define internal void @dcc_closed(%struct.GET_DCC_REC*) #0 !dbg !680 {
  %2 = alloca %struct.GET_DCC_REC*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [20 x i8], align 16
  %5 = alloca double, align 8
  %6 = alloca i64, align 8
  store %struct.GET_DCC_REC* %0, %struct.GET_DCC_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.GET_DCC_REC** %2, metadata !681, metadata !601), !dbg !682
  call void @llvm.dbg.declare(metadata i8** %3, metadata !683, metadata !601), !dbg !684
  call void @llvm.dbg.declare(metadata [20 x i8]* %4, metadata !685, metadata !601), !dbg !689
  call void @llvm.dbg.declare(metadata double* %5, metadata !690, metadata !601), !dbg !691
  call void @llvm.dbg.declare(metadata i64* %6, metadata !692, metadata !601), !dbg !693
  %7 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !694
  %8 = bitcast %struct.GET_DCC_REC* %7 to i8*, !dbg !694
  %9 = call i8* @module_check_cast_module(i8* %8, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0)), !dbg !696
  %10 = bitcast i8* %9 to %struct.GET_DCC_REC*, !dbg !697
  %11 = icmp ne %struct.GET_DCC_REC* %10, null, !dbg !697
  br i1 %11, label %12, label %13, !dbg !698

; <label>:12:                                     ; preds = %1
  br i1 false, label %14, label %15, !dbg !699

; <label>:13:                                     ; preds = %1
  br i1 false, label %15, label %14, !dbg !701

; <label>:14:                                     ; preds = %13, %12
  br label %92, !dbg !703

; <label>:15:                                     ; preds = %13, %12
  %16 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !705
  %17 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %16, i32 0, i32 17, !dbg !706
  %18 = load i64, i64* %17, align 8, !dbg !706
  %19 = icmp eq i64 %18, 0, !dbg !707
  br i1 %19, label %20, label %21, !dbg !705

; <label>:20:                                     ; preds = %15
  br label %27, !dbg !708

; <label>:21:                                     ; preds = %15
  %22 = call i64 @time(i64* null) #4, !dbg !710
  %23 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !711
  %24 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %23, i32 0, i32 17, !dbg !712
  %25 = load i64, i64* %24, align 8, !dbg !712
  %26 = sub nsw i64 %22, %25, !dbg !713
  br label %27, !dbg !714

; <label>:27:                                     ; preds = %21, %20
  %28 = phi i64 [ -1, %20 ], [ %26, %21 ], !dbg !715
  store i64 %28, i64* %6, align 8, !dbg !717
  %29 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !718
  %30 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %29, i32 0, i32 18, !dbg !719
  %31 = load i64, i64* %30, align 8, !dbg !719
  %32 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !720
  %33 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %32, i32 0, i32 23, !dbg !721
  %34 = load i64, i64* %33, align 8, !dbg !721
  %35 = sub i64 %31, %34, !dbg !722
  %36 = uitofp i64 %35 to double, !dbg !723
  %37 = load i64, i64* %6, align 8, !dbg !724
  %38 = icmp eq i64 %37, 0, !dbg !725
  br i1 %38, label %39, label %40, !dbg !724

; <label>:39:                                     ; preds = %27
  br label %42, !dbg !726

; <label>:40:                                     ; preds = %27
  %41 = load i64, i64* %6, align 8, !dbg !727
  br label %42, !dbg !728

; <label>:42:                                     ; preds = %40, %39
  %43 = phi i64 [ 1, %39 ], [ %41, %40 ], !dbg !729
  %44 = sitofp i64 %43 to double, !dbg !730
  %45 = fdiv double %36, %44, !dbg !731
  %46 = fdiv double %45, 1.024000e+03, !dbg !732
  store double %46, double* %5, align 8, !dbg !733
  %47 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !734
  %48 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %47, i32 0, i32 18, !dbg !735
  %49 = load i64, i64* %48, align 8, !dbg !735
  %50 = call i8* @dcc_get_size_str(i64 %49), !dbg !736
  store i8* %50, i8** %3, align 8, !dbg !737
  %51 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i32 0, i32 0, !dbg !738
  %52 = load i64, i64* %6, align 8, !dbg !739
  %53 = sdiv i64 %52, 3600, !dbg !740
  %54 = trunc i64 %53 to i32, !dbg !741
  %55 = load i64, i64* %6, align 8, !dbg !742
  %56 = sdiv i64 %55, 60, !dbg !743
  %57 = srem i64 %56, 60, !dbg !744
  %58 = trunc i64 %57 to i32, !dbg !745
  %59 = load i64, i64* %6, align 8, !dbg !746
  %60 = srem i64 %59, 60, !dbg !747
  %61 = trunc i64 %60 to i32, !dbg !748
  %62 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %51, i64 20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i32 %54, i32 %58, i32 %61), !dbg !749
  %63 = load i64, i64* %6, align 8, !dbg !750
  %64 = icmp eq i64 %63, -1, !dbg !752
  br i1 %64, label %65, label %76, !dbg !753

; <label>:65:                                     ; preds = %42
  %66 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !754
  %67 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %66, i32 0, i32 3, !dbg !756
  %68 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %67, align 8, !dbg !756
  %69 = bitcast %struct._IRC_SERVER_REC* %68 to i8*, !dbg !754
  %70 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !757
  %71 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %70, i32 0, i32 9, !dbg !758
  %72 = load i8*, i8** %71, align 8, !dbg !758
  %73 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !759
  %74 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %73, i32 0, i32 6, !dbg !760
  %75 = load i8*, i8** %74, align 8, !dbg !760
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* %69, i8* null, i32 65536, i32 29, i8* %72, i8* %75), !dbg !761
  br label %90, !dbg !762

; <label>:76:                                     ; preds = %42
  %77 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !763
  %78 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %77, i32 0, i32 3, !dbg !765
  %79 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %78, align 8, !dbg !765
  %80 = bitcast %struct._IRC_SERVER_REC* %79 to i8*, !dbg !763
  %81 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !763
  %82 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %81, i32 0, i32 9, !dbg !765
  %83 = load i8*, i8** %82, align 8, !dbg !765
  %84 = load i8*, i8** %3, align 8, !dbg !766
  %85 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !767
  %86 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %85, i32 0, i32 6, !dbg !768
  %87 = load i8*, i8** %86, align 8, !dbg !768
  %88 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i32 0, i32 0, !dbg !769
  %89 = load double, double* %5, align 8, !dbg !770
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* %80, i8* null, i32 65536, i32 28, i8* %83, i8* %84, i8* %87, i8* %88, double %89), !dbg !771
  br label %90

; <label>:90:                                     ; preds = %76, %65
  %91 = load i8*, i8** %3, align 8, !dbg !772
  call void @g_free(i8* %91), !dbg !773
  br label %92, !dbg !774

; <label>:92:                                     ; preds = %90, %14
  ret void, !dbg !775
}

; Function Attrs: nounwind uwtable
define internal void @dcc_error_file_create(%struct.GET_DCC_REC*, i8*, i8*) #0 !dbg !776 {
  %4 = alloca %struct.GET_DCC_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.GET_DCC_REC* %0, %struct.GET_DCC_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.GET_DCC_REC** %4, metadata !779, metadata !601), !dbg !780
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !781, metadata !601), !dbg !782
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !783, metadata !601), !dbg !784
  %7 = load i8*, i8** %5, align 8, !dbg !785
  %8 = load i8*, i8** %6, align 8, !dbg !786
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 65536, i32 36, i8* %7, i8* %8), !dbg !787
  ret void, !dbg !788
}

; Function Attrs: nounwind uwtable
define internal void @dcc_error_get_not_found(i8*) #0 !dbg !789 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !792, metadata !601), !dbg !793
  br label %3, !dbg !794, !llvm.loop !795

; <label>:3:                                      ; preds = %1
  %4 = load i8*, i8** %2, align 8, !dbg !796
  %5 = icmp ne i8* %4, null, !dbg !800
  br i1 %5, label %6, label %7, !dbg !796

; <label>:6:                                      ; preds = %3
  br label %8, !dbg !801

; <label>:7:                                      ; preds = %3
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.dcc_error_get_not_found, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0)), !dbg !804
  br label %11, !dbg !807

; <label>:8:                                      ; preds = %6
  br label %9, !dbg !808

; <label>:9:                                      ; preds = %8
  %10 = load i8*, i8** %2, align 8, !dbg !810
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 65536, i32 26, i8* %10), !dbg !811
  br label %11, !dbg !812

; <label>:11:                                     ; preds = %9, %7
  ret void, !dbg !813
}

; Function Attrs: nounwind uwtable
define internal void @dcc_error_close_not_found(i8*, i8*, i8*) #0 !dbg !815 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !818, metadata !601), !dbg !819
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !820, metadata !601), !dbg !821
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !822, metadata !601), !dbg !823
  br label %7, !dbg !824, !llvm.loop !825

; <label>:7:                                      ; preds = %3
  %8 = load i8*, i8** %4, align 8, !dbg !826
  %9 = icmp ne i8* %8, null, !dbg !830
  br i1 %9, label %10, label %11, !dbg !826

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !831

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.dcc_error_close_not_found, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0)), !dbg !834
  br label %44, !dbg !837

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !838

; <label>:13:                                     ; preds = %12
  br label %14, !dbg !840, !llvm.loop !841

; <label>:14:                                     ; preds = %13
  %15 = load i8*, i8** %5, align 8, !dbg !842
  %16 = icmp ne i8* %15, null, !dbg !846
  br i1 %16, label %17, label %18, !dbg !842

; <label>:17:                                     ; preds = %14
  br label %19, !dbg !847

; <label>:18:                                     ; preds = %14
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.dcc_error_close_not_found, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0)), !dbg !850
  br label %44, !dbg !853

; <label>:19:                                     ; preds = %17
  br label %20, !dbg !854

; <label>:20:                                     ; preds = %19
  br label %21, !dbg !856, !llvm.loop !857

; <label>:21:                                     ; preds = %20
  %22 = load i8*, i8** %6, align 8, !dbg !858
  %23 = icmp ne i8* %22, null, !dbg !862
  br i1 %23, label %24, label %25, !dbg !858

; <label>:24:                                     ; preds = %21
  br label %26, !dbg !863

; <label>:25:                                     ; preds = %21
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.dcc_error_close_not_found, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0)), !dbg !866
  br label %44, !dbg !869

; <label>:26:                                     ; preds = %24
  br label %27, !dbg !870

; <label>:27:                                     ; preds = %26
  %28 = load i8*, i8** %4, align 8, !dbg !872
  %29 = call i32 @g_ascii_strcasecmp(i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0)), !dbg !874
  %30 = icmp ne i32 %29, 0, !dbg !875
  br i1 %30, label %31, label %32, !dbg !876

; <label>:31:                                     ; preds = %27
  br label %44, !dbg !877

; <label>:32:                                     ; preds = %27
  %33 = load i8*, i8** %6, align 8, !dbg !879
  %34 = icmp eq i8* %33, null, !dbg !881
  br i1 %34, label %40, label %35, !dbg !882

; <label>:35:                                     ; preds = %32
  %36 = load i8*, i8** %6, align 8, !dbg !883
  %37 = load i8, i8* %36, align 1, !dbg !885
  %38 = sext i8 %37 to i32, !dbg !885
  %39 = icmp eq i32 %38, 0, !dbg !886
  br i1 %39, label %40, label %41, !dbg !887

; <label>:40:                                     ; preds = %35, %32
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8** %6, align 8, !dbg !888
  br label %41, !dbg !890

; <label>:41:                                     ; preds = %40, %35
  %42 = load i8*, i8** %5, align 8, !dbg !891
  %43 = load i8*, i8** %6, align 8, !dbg !892
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 65536, i32 26, i8* %42, i8* %43), !dbg !893
  br label %44, !dbg !894

; <label>:44:                                     ; preds = %41, %31, %25, %18, %11
  ret void, !dbg !895
}

; Function Attrs: nounwind uwtable
define internal void @dcc_error_write(%struct.GET_DCC_REC*, i8*) #0 !dbg !897 {
  %3 = alloca %struct.GET_DCC_REC*, align 8
  %4 = alloca i8*, align 8
  store %struct.GET_DCC_REC* %0, %struct.GET_DCC_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.GET_DCC_REC** %3, metadata !900, metadata !601), !dbg !901
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !902, metadata !601), !dbg !903
  %5 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %3, align 8, !dbg !904
  %6 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %5, i32 0, i32 29, !dbg !905
  %7 = load i8*, i8** %6, align 8, !dbg !905
  %8 = load i8*, i8** %4, align 8, !dbg !906
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 65536, i32 30, i8* %7, i8* %8), !dbg !907
  ret void, !dbg !908
}

; Function Attrs: nounwind uwtable
define internal void @sig_dcc_list_print(%struct.GET_DCC_REC*) #0 !dbg !909 {
  %2 = alloca %struct.GET_DCC_REC*, align 8
  store %struct.GET_DCC_REC* %0, %struct.GET_DCC_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.GET_DCC_REC** %2, metadata !910, metadata !601), !dbg !911
  %3 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !912
  %4 = bitcast %struct.GET_DCC_REC* %3 to i8*, !dbg !912
  %5 = call i8* @module_check_cast_module(i8* %4, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0)), !dbg !914
  %6 = bitcast i8* %5 to %struct.GET_DCC_REC*, !dbg !915
  %7 = icmp ne %struct.GET_DCC_REC* %6, null, !dbg !915
  br i1 %7, label %8, label %9, !dbg !916

; <label>:8:                                      ; preds = %1
  br i1 false, label %13, label %10, !dbg !917

; <label>:9:                                      ; preds = %1
  br i1 false, label %10, label %13, !dbg !919

; <label>:10:                                     ; preds = %9, %8
  %11 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !921
  %12 = bitcast %struct.GET_DCC_REC* %11 to %struct.FILE_DCC_REC*, !dbg !922
  call void @dcc_list_print_file(%struct.FILE_DCC_REC* %12), !dbg !923
  br label %13, !dbg !923

; <label>:13:                                     ; preds = %10, %9, %8
  ret void, !dbg !924
}

; Function Attrs: nounwind uwtable
define void @fe_dcc_get_deinit() #0 !dbg !925 {
  call void @signal_remove_full(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.GET_DCC_REC*)* @dcc_request to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !926
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.GET_DCC_REC*)* @dcc_connected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !927
  call void @signal_remove_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.GET_DCC_REC*)* @dcc_closed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !928
  call void @signal_remove_full(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.GET_DCC_REC*, i8*, i8*)* @dcc_error_file_create to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !929
  call void @signal_remove_full(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @dcc_error_get_not_found to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !930
  call void @signal_remove_full(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, i8*, i8*)* @dcc_error_close_not_found to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !931
  call void @signal_remove_full(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.GET_DCC_REC*, i8*)* @dcc_error_write to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !932
  call void @signal_remove_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.GET_DCC_REC*)* @sig_dcc_list_print to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !933
  ret void, !dbg !934
}

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare i8* @module_check_cast_module(i8*, i32, i8*, i8*) #1

declare i8* @dcc_get_size_str(i64) #1

declare void @printformat_module(i8*, i8*, i8*, i32, i32, ...) #1

declare i8* @module_check_cast(i8*, i32, i8*) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind
declare i64 @time(i64*) #3

declare i32 @g_snprintf(i8*, i64, i8*, ...) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i32 @g_ascii_strcasecmp(i8*, i8*) #1

declare void @dcc_list_print_file(%struct.FILE_DCC_REC*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!582, !583}
!llvm.ident = !{!584}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !118)
!1 = !DIFile(filename: "line280-fe-dcc-get.o.i", directory: "/home/lichi/Desktop/irssi/task1")
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
!36 = !DIFile(filename: "../../../../src/core/levels.h", directory: "/home/lichi/Desktop/irssi/task1")
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
!68 = !{!69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117}
!69 = !DIEnumerator(name: "IRCTXT_MODULE_NAME", value: 0)
!70 = !DIEnumerator(name: "IRCTXT_FILL_1", value: 1)
!71 = !DIEnumerator(name: "IRCTXT_OWN_DCC", value: 2)
!72 = !DIEnumerator(name: "IRCTXT_OWN_DCC_ACTION", value: 3)
!73 = !DIEnumerator(name: "IRCTXT_OWN_DCC_ACTION_QUERY", value: 4)
!74 = !DIEnumerator(name: "IRCTXT_OWN_DCC_CTCP", value: 5)
!75 = !DIEnumerator(name: "IRCTXT_DCC_MSG", value: 6)
!76 = !DIEnumerator(name: "IRCTXT_ACTION_DCC", value: 7)
!77 = !DIEnumerator(name: "IRCTXT_ACTION_DCC_QUERY", value: 8)
!78 = !DIEnumerator(name: "IRCTXT_OWN_DCC_QUERY", value: 9)
!79 = !DIEnumerator(name: "IRCTXT_DCC_MSG_QUERY", value: 10)
!80 = !DIEnumerator(name: "IRCTXT_DCC_CTCP", value: 11)
!81 = !DIEnumerator(name: "IRCTXT_DCC_CHAT", value: 12)
!82 = !DIEnumerator(name: "IRCTXT_DCC_CHAT_CHANNEL", value: 13)
!83 = !DIEnumerator(name: "IRCTXT_DCC_CHAT_NOT_FOUND", value: 14)
!84 = !DIEnumerator(name: "IRCTXT_DCC_CHAT_CONNECTED", value: 15)
!85 = !DIEnumerator(name: "IRCTXT_DCC_CHAT_DISCONNECTED", value: 16)
!86 = !DIEnumerator(name: "IRCTXT_DCC_SEND", value: 17)
!87 = !DIEnumerator(name: "IRCTXT_DCC_SEND_CHANNEL", value: 18)
!88 = !DIEnumerator(name: "IRCTXT_DCC_SEND_EXISTS", value: 19)
!89 = !DIEnumerator(name: "IRCTXT_DCC_SEND_NO_ROUTE", value: 20)
!90 = !DIEnumerator(name: "IRCTXT_DCC_SEND_NOT_FOUND", value: 21)
!91 = !DIEnumerator(name: "IRCTXT_DCC_SEND_FILE_OPEN_ERROR", value: 22)
!92 = !DIEnumerator(name: "IRCTXT_DCC_SEND_CONNECTED", value: 23)
!93 = !DIEnumerator(name: "IRCTXT_DCC_SEND_COMPLETE", value: 24)
!94 = !DIEnumerator(name: "IRCTXT_DCC_SEND_ABORTED", value: 25)
!95 = !DIEnumerator(name: "IRCTXT_DCC_GET_NOT_FOUND", value: 26)
!96 = !DIEnumerator(name: "IRCTXT_DCC_GET_CONNECTED", value: 27)
!97 = !DIEnumerator(name: "IRCTXT_DCC_GET_COMPLETE", value: 28)
!98 = !DIEnumerator(name: "IRCTXT_DCC_GET_ABORTED", value: 29)
!99 = !DIEnumerator(name: "IRCTXT_DCC_GET_WRITE_ERROR", value: 30)
!100 = !DIEnumerator(name: "IRCTXT_DCC_UNKNOWN_CTCP", value: 31)
!101 = !DIEnumerator(name: "IRCTXT_DCC_UNKNOWN_REPLY", value: 32)
!102 = !DIEnumerator(name: "IRCTXT_DCC_UNKNOWN_TYPE", value: 33)
!103 = !DIEnumerator(name: "IRCTXT_DCC_INVALID_CTCP", value: 34)
!104 = !DIEnumerator(name: "IRCTXT_DCC_CONNECT_ERROR", value: 35)
!105 = !DIEnumerator(name: "IRCTXT_DCC_CANT_CREATE", value: 36)
!106 = !DIEnumerator(name: "IRCTXT_DCC_REJECTED", value: 37)
!107 = !DIEnumerator(name: "IRCTXT_DCC_REQUEST_SEND", value: 38)
!108 = !DIEnumerator(name: "IRCTXT_DCC_CLOSE", value: 39)
!109 = !DIEnumerator(name: "IRCTXT_DCC_LOWPORT", value: 40)
!110 = !DIEnumerator(name: "IRCTXT_DCC_LIST_HEADER", value: 41)
!111 = !DIEnumerator(name: "IRCTXT_DCC_LIST_LINE_CHAT", value: 42)
!112 = !DIEnumerator(name: "IRCTXT_DCC_LIST_LINE_FILE", value: 43)
!113 = !DIEnumerator(name: "IRCTXT_DCC_LIST_LINE_QUEUED_SEND", value: 44)
!114 = !DIEnumerator(name: "IRCTXT_DCC_LIST_FOOTER", value: 45)
!115 = !DIEnumerator(name: "IRCTXT_DCC_LIST_LINE_SERVER", value: 46)
!116 = !DIEnumerator(name: "IRCTXT_DCC_SERVER_STARTED", value: 47)
!117 = !DIEnumerator(name: "IRCTXT_DCC_SERVER_CLOSED", value: 48)
!118 = !{!119, !126, !127, !405, !548, !134, !215, !506, !549}
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !120, line: 9, baseType: !121)
!120 = !DIFile(filename: "../../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, align: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{null, !124, !124, !124, !124, !124, !124}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "GET_DCC_REC", file: !129, line: 28, baseType: !130)
!129 = !DIFile(filename: "../../../../src/irc/dcc/dcc-get.h", directory: "/home/lichi/Desktop/irssi/task1")
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !129, line: 20, size: 2048, align: 64, elements: !131)
!131 = !{!132, !135, !136, !142, !147, !150, !151, !152, !157, !158, !159, !192, !196, !197, !380, !381, !382, !383, !384, !386, !387, !388, !393, !395, !396, !397, !398, !400, !401, !402, !403, !404}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !130, file: !133, line: 1, baseType: !134, size: 32, align: 32)
!133 = !DIFile(filename: "../../../../src/irc/dcc/dcc-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!134 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !130, file: !133, line: 2, baseType: !134, size: 32, align: 32, offset: 32)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "created", scope: !130, file: !133, line: 3, baseType: !137, size: 64, align: 64, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !138, line: 75, baseType: !139)
!138 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !140, line: 139, baseType: !141)
!140 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!141 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !130, file: !133, line: 5, baseType: !143, size: 64, align: 64, offset: 128)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_REC", file: !145, line: 6, baseType: !146)
!145 = !DIFile(filename: "../../../../src/irc/core/irc.h", directory: "/home/lichi/Desktop/irssi/task1")
!146 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_REC", file: !145, line: 6, flags: DIFlagFwdDecl)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !130, file: !133, line: 6, baseType: !148, size: 64, align: 64, offset: 192)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64, align: 64)
!149 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "mynick", scope: !130, file: !133, line: 7, baseType: !148, size: 64, align: 64, offset: 256)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !130, file: !133, line: 8, baseType: !148, size: 64, align: 64, offset: 320)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "chat", scope: !130, file: !133, line: 10, baseType: !153, size: 64, align: 64, offset: 384)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64, align: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHAT_DCC_REC", file: !155, line: 9, baseType: !156)
!155 = !DIFile(filename: "../../../../src/irc/dcc/dcc.h", directory: "/home/lichi/Desktop/irssi/task1")
!156 = !DICompositeType(tag: DW_TAG_structure_type, name: "CHAT_DCC_REC", file: !155, line: 9, flags: DIFlagFwdDecl)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !130, file: !133, line: 11, baseType: !148, size: 64, align: 64, offset: 448)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !130, file: !133, line: 12, baseType: !148, size: 64, align: 64, offset: 512)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !130, file: !133, line: 14, baseType: !160, size: 160, align: 32, offset: 576)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !161, line: 99, baseType: !162)
!161 = !DIFile(filename: "../../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !163, line: 22, size: 160, align: 32, elements: !164)
!163 = !DIFile(filename: "../../../../src/core/network.h", directory: "/home/lichi/Desktop/irssi/task1")
!164 = !{!165, !167}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !162, file: !163, line: 23, baseType: !166, size: 16, align: 16)
!166 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !162, file: !163, line: 24, baseType: !168, size: 128, align: 32, offset: 32)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !169, line: 211, size: 128, align: 32, elements: !170)
!169 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/irssi/task1")
!170 = !{!171}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !168, file: !169, line: 220, baseType: !172, size: 128, align: 32)
!172 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !168, file: !169, line: 213, size: 128, align: 32, elements: !173)
!173 = !{!174, !181, !186}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !172, file: !169, line: 215, baseType: !175, size: 128, align: 8)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 128, align: 8, elements: !179)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !177, line: 48, baseType: !178)
!177 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/irssi/task1")
!178 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!179 = !{!180}
!180 = !DISubrange(count: 16)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !172, file: !169, line: 217, baseType: !182, size: 128, align: 16)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 128, align: 16, elements: !184)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !177, line: 49, baseType: !166)
!184 = !{!185}
!185 = !DISubrange(count: 8)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !172, file: !169, line: 218, baseType: !187, size: 128, align: 32)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 128, align: 32, elements: !190)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !177, line: 51, baseType: !189)
!189 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!190 = !{!191}
!191 = !DISubrange(count: 4)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "addrstr", scope: !130, file: !133, line: 15, baseType: !193, size: 368, align: 8, offset: 736)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 368, align: 8, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 46)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !130, file: !133, line: 16, baseType: !134, size: 32, align: 32, offset: 1120)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !130, file: !133, line: 18, baseType: !198, size: 64, align: 64, offset: 1152)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64, align: 64)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !200)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !201)
!201 = !{!202, !205, !347, !348, !353, !354, !355, !356, !357, !366, !367, !368, !372, !373, !374, !375, !376, !377, !378, !379}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !200, file: !4, line: 100, baseType: !203, size: 32, align: 32)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !204, line: 49, baseType: !134)
!204 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!205 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !200, file: !4, line: 101, baseType: !206, size: 64, align: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64, align: 64)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !208)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !209)
!209 = !{!210, !233, !239, !245, !249, !334, !338, !343}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !208, file: !4, line: 133, baseType: !211, size: 64, align: 64)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64, align: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{!214, !198, !215, !217, !220, !221}
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, align: 64)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !204, line: 46, baseType: !149)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !218, line: 66, baseType: !219)
!218 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!219 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64, align: 64)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !224, line: 42, baseType: !225)
!224 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !224, line: 44, size: 128, align: 64, elements: !226)
!226 = !{!227, !231, !232}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !225, file: !224, line: 46, baseType: !228, size: 32, align: 32)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !229, line: 36, baseType: !230)
!229 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !218, line: 45, baseType: !189)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !225, file: !224, line: 47, baseType: !203, size: 32, align: 32, offset: 32)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !225, file: !224, line: 48, baseType: !215, size: 64, align: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !208, file: !4, line: 138, baseType: !234, size: 64, align: 64, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64, align: 64)
!235 = !DISubroutineType(types: !236)
!236 = !{!214, !198, !237, !217, !220, !221}
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64, align: 64)
!238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !216)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !208, file: !4, line: 143, baseType: !240, size: 64, align: 64, offset: 128)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64, align: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{!214, !198, !243, !244, !221}
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !218, line: 51, baseType: !141)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !208, file: !4, line: 147, baseType: !246, size: 64, align: 64, offset: 192)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64, align: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{!214, !198, !221}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !208, file: !4, line: 149, baseType: !250, size: 64, align: 64, offset: 256)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64, align: 64)
!251 = !DISubroutineType(types: !252)
!252 = !{!253, !198, !333}
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !255)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !256)
!256 = !{!257, !259, !280, !309, !311, !315, !316, !317, !318, !326, !327, !328, !329}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !255, file: !16, line: 174, baseType: !258, size: 64, align: 64)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !204, line: 77, baseType: !126)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !255, file: !16, line: 175, baseType: !260, size: 64, align: 64, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !262)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !263)
!263 = !{!264, !268, !269}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !262, file: !16, line: 198, baseType: !265, size: 64, align: 64)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64, align: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{null, !258}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !262, file: !16, line: 199, baseType: !265, size: 64, align: 64, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !262, file: !16, line: 200, baseType: !270, size: 64, align: 64, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{null, !258, !253, !273, !279}
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64, align: 64)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64, align: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!278, !258}
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !204, line: 50, baseType: !203)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64, align: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !255, file: !16, line: 177, baseType: !281, size: 64, align: 64, offset: 128)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64, align: 64)
!282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !283)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !284)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !285)
!285 = !{!286, !291, !295, !299, !303, !304}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !284, file: !16, line: 216, baseType: !287, size: 64, align: 64)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64, align: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{!278, !253, !290}
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !284, file: !16, line: 218, baseType: !292, size: 64, align: 64, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64, align: 64)
!293 = !DISubroutineType(types: !294)
!294 = !{!278, !253}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !284, file: !16, line: 219, baseType: !296, size: 64, align: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64, align: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{!278, !253, !274, !258}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !284, file: !16, line: 222, baseType: !300, size: 64, align: 64, offset: 192)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64, align: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{null, !253}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !284, file: !16, line: 226, baseType: !274, size: 64, align: 64, offset: 256)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !284, file: !16, line: 227, baseType: !305, size: 64, align: 64, offset: 320)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !306)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64, align: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{null}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !255, file: !16, line: 178, baseType: !310, size: 32, align: 32, offset: 192)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !204, line: 55, baseType: !189)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !255, file: !16, line: 180, baseType: !312, size: 64, align: 64, offset: 256)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64, align: 64)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !314)
!314 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !255, file: !16, line: 182, baseType: !203, size: 32, align: 32, offset: 320)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !255, file: !16, line: 183, baseType: !310, size: 32, align: 32, offset: 352)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !255, file: !16, line: 184, baseType: !310, size: 32, align: 32, offset: 384)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !255, file: !16, line: 186, baseType: !319, size: 64, align: 64, offset: 448)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64, align: 64)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !321, line: 37, baseType: !322)
!321 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !321, line: 39, size: 128, align: 64, elements: !323)
!323 = !{!324, !325}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !322, file: !321, line: 41, baseType: !258, size: 64, align: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !322, file: !321, line: 42, baseType: !319, size: 64, align: 64, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !255, file: !16, line: 188, baseType: !253, size: 64, align: 64, offset: 512)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !255, file: !16, line: 189, baseType: !253, size: 64, align: 64, offset: 576)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !255, file: !16, line: 191, baseType: !148, size: 64, align: 64, offset: 640)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !255, file: !16, line: 193, baseType: !330, size: 64, align: 64, offset: 704)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64, align: 64)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !332)
!332 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !208, file: !4, line: 151, baseType: !335, size: 64, align: 64, offset: 320)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64, align: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !198}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !208, file: !4, line: 152, baseType: !339, size: 64, align: 64, offset: 384)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64, align: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{!214, !198, !342, !221}
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !208, file: !4, line: 155, baseType: !344, size: 64, align: 64, offset: 448)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64, align: 64)
!345 = !DISubroutineType(types: !346)
!346 = !{!342, !198}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !200, file: !4, line: 103, baseType: !215, size: 64, align: 64, offset: 128)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !200, file: !4, line: 104, baseType: !349, size: 64, align: 64, offset: 192)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !350, line: 77, baseType: !351)
!350 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64, align: 64)
!352 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !350, line: 77, flags: DIFlagFwdDecl)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !200, file: !4, line: 105, baseType: !349, size: 64, align: 64, offset: 256)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !200, file: !4, line: 106, baseType: !215, size: 64, align: 64, offset: 320)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !200, file: !4, line: 107, baseType: !310, size: 32, align: 32, offset: 384)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !200, file: !4, line: 109, baseType: !217, size: 64, align: 64, offset: 448)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !200, file: !4, line: 110, baseType: !358, size: 64, align: 64, offset: 512)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64, align: 64)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !360, line: 39, baseType: !361)
!360 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !360, line: 41, size: 192, align: 64, elements: !362)
!362 = !{!363, !364, !365}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !361, file: !360, line: 43, baseType: !215, size: 64, align: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !361, file: !360, line: 44, baseType: !217, size: 64, align: 64, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !361, file: !360, line: 45, baseType: !217, size: 64, align: 64, offset: 128)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !200, file: !4, line: 111, baseType: !358, size: 64, align: 64, offset: 576)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !200, file: !4, line: 112, baseType: !358, size: 64, align: 64, offset: 640)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !200, file: !4, line: 113, baseType: !369, size: 48, align: 8, offset: 704)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, size: 48, align: 8, elements: !370)
!370 = !{!371}
!371 = !DISubrange(count: 6)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !200, file: !4, line: 117, baseType: !310, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !200, file: !4, line: 118, baseType: !310, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !200, file: !4, line: 119, baseType: !310, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !200, file: !4, line: 120, baseType: !310, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !200, file: !4, line: 121, baseType: !310, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !200, file: !4, line: 122, baseType: !310, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !200, file: !4, line: 124, baseType: !258, size: 64, align: 64, offset: 768)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !200, file: !4, line: 125, baseType: !258, size: 64, align: 64, offset: 832)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "tagconn", scope: !130, file: !133, line: 19, baseType: !134, size: 32, align: 32, offset: 1216)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "tagread", scope: !130, file: !133, line: 19, baseType: !134, size: 32, align: 32, offset: 1248)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "tagwrite", scope: !130, file: !133, line: 19, baseType: !134, size: 32, align: 32, offset: 1280)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "starttime", scope: !130, file: !133, line: 20, baseType: !137, size: 64, align: 64, offset: 1344)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "transfd", scope: !130, file: !133, line: 21, baseType: !385, size: 64, align: 64, offset: 1408)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "uoff_t", file: !161, line: 49, baseType: !219)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "pasv_id", scope: !130, file: !133, line: 23, baseType: !134, size: 32, align: 32, offset: 1472)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "destroyed", scope: !130, file: !133, line: 25, baseType: !189, size: 1, align: 32, offset: 1504, flags: DIFlagBitField, extraData: i64 1504)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !130, file: !133, line: 27, baseType: !389, size: 64, align: 64, offset: 1536)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64, align: 64)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !391, line: 37, baseType: !392)
!391 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!392 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !391, line: 37, flags: DIFlagFwdDecl)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !130, file: !394, line: 3, baseType: !385, size: 64, align: 64, offset: 1600)
!394 = !DIFile(filename: "../../../../src/irc/dcc/dcc-file-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!395 = !DIDerivedType(tag: DW_TAG_member, name: "skipped", scope: !130, file: !394, line: 3, baseType: !385, size: 64, align: 64, offset: 1664)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "fhandle", scope: !130, file: !394, line: 4, baseType: !134, size: 32, align: 32, offset: 1728)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !130, file: !394, line: 5, baseType: !134, size: 32, align: 32, offset: 1760)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "count_buf", scope: !130, file: !394, line: 8, baseType: !399, size: 32, align: 8, offset: 1792)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 32, align: 8, elements: !190)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "count_pos", scope: !130, file: !394, line: 9, baseType: !134, size: 32, align: 32, offset: 1824)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "get_type", scope: !130, file: !129, line: 23, baseType: !134, size: 32, align: 32, offset: 1856)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !130, file: !129, line: 24, baseType: !148, size: 64, align: 64, offset: 1920)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "file_quoted", scope: !130, file: !129, line: 26, baseType: !189, size: 1, align: 32, offset: 1984, flags: DIFlagBitField, extraData: i64 1984)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "from_dccserver", scope: !130, file: !129, line: 27, baseType: !189, size: 1, align: 32, offset: 1985, flags: DIFlagBitField, extraData: i64 1984)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64, align: 64)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !161, line: 107, baseType: !407)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !408, line: 30, size: 2240, align: 64, elements: !409)
!408 = !DIFile(filename: "../../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!409 = !{!410, !412, !413, !414, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !472, !473, !477, !478, !479, !483, !484, !485, !486, !487, !488, !489, !490, !491, !498, !499, !500, !501, !502, !508, !512, !516, !520, !524, !529, !536, !543, !547}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !407, file: !411, line: 3, baseType: !134, size: 32, align: 32)
!411 = !DIFile(filename: "../../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!412 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !407, file: !411, line: 4, baseType: !134, size: 32, align: 32, offset: 32)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !407, file: !411, line: 6, baseType: !134, size: 32, align: 32, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !407, file: !411, line: 8, baseType: !415, size: 64, align: 64, offset: 128)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64, align: 64)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !161, line: 113, baseType: !417)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !408, line: 25, size: 1920, align: 64, elements: !418)
!418 = !{!419, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !417, file: !420, line: 3, baseType: !134, size: 32, align: 32)
!420 = !DIFile(filename: "../../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!421 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !417, file: !420, line: 4, baseType: !134, size: 32, align: 32, offset: 32)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !417, file: !420, line: 6, baseType: !134, size: 32, align: 32, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !417, file: !420, line: 9, baseType: !148, size: 64, align: 64, offset: 128)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !417, file: !420, line: 10, baseType: !134, size: 32, align: 32, offset: 192)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !417, file: !420, line: 11, baseType: !148, size: 64, align: 64, offset: 256)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !417, file: !420, line: 11, baseType: !148, size: 64, align: 64, offset: 320)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !417, file: !420, line: 11, baseType: !148, size: 64, align: 64, offset: 384)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !417, file: !420, line: 13, baseType: !166, size: 16, align: 16, offset: 448)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !417, file: !420, line: 14, baseType: !148, size: 64, align: 64, offset: 512)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !417, file: !420, line: 15, baseType: !148, size: 64, align: 64, offset: 576)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !417, file: !420, line: 16, baseType: !134, size: 32, align: 32, offset: 640)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !417, file: !420, line: 17, baseType: !148, size: 64, align: 64, offset: 704)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !417, file: !420, line: 19, baseType: !434, size: 64, align: 64, offset: 768)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64, align: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !417, file: !420, line: 19, baseType: !434, size: 64, align: 64, offset: 832)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !417, file: !420, line: 21, baseType: !148, size: 64, align: 64, offset: 896)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !417, file: !420, line: 22, baseType: !148, size: 64, align: 64, offset: 960)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !417, file: !420, line: 23, baseType: !148, size: 64, align: 64, offset: 1024)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !417, file: !420, line: 24, baseType: !148, size: 64, align: 64, offset: 1088)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !417, file: !420, line: 26, baseType: !148, size: 64, align: 64, offset: 1152)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !417, file: !420, line: 27, baseType: !148, size: 64, align: 64, offset: 1216)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !417, file: !420, line: 28, baseType: !148, size: 64, align: 64, offset: 1280)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !417, file: !420, line: 29, baseType: !148, size: 64, align: 64, offset: 1344)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !417, file: !420, line: 30, baseType: !148, size: 64, align: 64, offset: 1408)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !417, file: !420, line: 31, baseType: !148, size: 64, align: 64, offset: 1472)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !417, file: !420, line: 32, baseType: !148, size: 64, align: 64, offset: 1536)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !417, file: !420, line: 33, baseType: !148, size: 64, align: 64, offset: 1600)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !417, file: !420, line: 35, baseType: !198, size: 64, align: 64, offset: 1664)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !417, file: !420, line: 38, baseType: !189, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !417, file: !420, line: 39, baseType: !189, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !417, file: !420, line: 40, baseType: !189, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !417, file: !420, line: 41, baseType: !189, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !417, file: !420, line: 42, baseType: !189, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !417, file: !420, line: 43, baseType: !189, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !417, file: !420, line: 44, baseType: !189, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !417, file: !420, line: 45, baseType: !189, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !417, file: !420, line: 46, baseType: !148, size: 64, align: 64, offset: 1792)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !417, file: !420, line: 47, baseType: !148, size: 64, align: 64, offset: 1856)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !407, file: !411, line: 9, baseType: !137, size: 64, align: 64, offset: 192)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !407, file: !411, line: 10, baseType: !137, size: 64, align: 64, offset: 256)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !407, file: !411, line: 12, baseType: !148, size: 64, align: 64, offset: 320)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !407, file: !411, line: 13, baseType: !148, size: 64, align: 64, offset: 384)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !407, file: !411, line: 15, baseType: !189, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !407, file: !411, line: 16, baseType: !189, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !407, file: !411, line: 17, baseType: !189, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !407, file: !411, line: 18, baseType: !189, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !407, file: !411, line: 19, baseType: !189, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !407, file: !411, line: 21, baseType: !469, size: 64, align: 64, offset: 512)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64, align: 64)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !161, line: 102, baseType: !471)
!471 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !161, line: 102, flags: DIFlagFwdDecl)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !407, file: !411, line: 22, baseType: !134, size: 32, align: 32, offset: 576)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !407, file: !411, line: 25, baseType: !474, size: 128, align: 64, offset: 640)
!474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 128, align: 64, elements: !475)
!475 = !{!476}
!476 = !DISubrange(count: 2)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !407, file: !411, line: 26, baseType: !134, size: 32, align: 32, offset: 768)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !407, file: !411, line: 27, baseType: !134, size: 32, align: 32, offset: 800)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !407, file: !411, line: 29, baseType: !480, size: 64, align: 64, offset: 832)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64, align: 64)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !161, line: 103, baseType: !482)
!482 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !161, line: 103, flags: DIFlagFwdDecl)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !407, file: !411, line: 30, baseType: !389, size: 64, align: 64, offset: 896)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !407, file: !411, line: 32, baseType: !148, size: 64, align: 64, offset: 960)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !407, file: !411, line: 33, baseType: !148, size: 64, align: 64, offset: 1024)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !407, file: !411, line: 34, baseType: !148, size: 64, align: 64, offset: 1088)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !407, file: !411, line: 35, baseType: !189, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !407, file: !411, line: 36, baseType: !189, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !407, file: !411, line: 37, baseType: !189, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !407, file: !411, line: 38, baseType: !189, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !407, file: !411, line: 40, baseType: !492, size: 128, align: 64, offset: 1216)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !204, line: 504, baseType: !493)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !204, line: 506, size: 128, align: 64, elements: !494)
!494 = !{!495, !497}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !493, file: !204, line: 508, baseType: !496, size: 64, align: 64)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !204, line: 48, baseType: !141)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !493, file: !204, line: 509, baseType: !496, size: 64, align: 64, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !407, file: !411, line: 41, baseType: !137, size: 64, align: 64, offset: 1344)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !407, file: !411, line: 42, baseType: !134, size: 32, align: 32, offset: 1408)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !407, file: !411, line: 44, baseType: !319, size: 64, align: 64, offset: 1472)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !407, file: !411, line: 45, baseType: !319, size: 64, align: 64, offset: 1536)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !407, file: !411, line: 53, baseType: !503, size: 64, align: 64, offset: 1600)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64, align: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{null, !405, !506, !134}
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64, align: 64)
!507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !407, file: !411, line: 55, baseType: !509, size: 64, align: 64, offset: 1664)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64, align: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{!134, !405, !149}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !407, file: !411, line: 57, baseType: !513, size: 64, align: 64, offset: 1728)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64, align: 64)
!514 = !DISubroutineType(types: !515)
!515 = !{!134, !405, !506}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !407, file: !411, line: 60, baseType: !517, size: 64, align: 64, offset: 1792)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64, align: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{!506, !405}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !407, file: !411, line: 62, baseType: !521, size: 64, align: 64, offset: 1856)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64, align: 64)
!522 = !DISubroutineType(types: !523)
!523 = !{null, !405, !506, !506, !134}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !407, file: !411, line: 65, baseType: !525, size: 64, align: 64, offset: 1920)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64, align: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!528, !405, !506, !506}
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64, align: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !407, file: !411, line: 69, baseType: !530, size: 64, align: 64, offset: 1984)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64, align: 64)
!531 = !DISubroutineType(types: !532)
!532 = !{!533, !405, !506}
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64, align: 64)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !161, line: 109, baseType: !535)
!535 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !161, line: 109, flags: DIFlagFwdDecl)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !407, file: !411, line: 70, baseType: !537, size: 64, align: 64, offset: 2048)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64, align: 64)
!538 = !DISubroutineType(types: !539)
!539 = !{!540, !405, !506}
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64, align: 64)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !161, line: 110, baseType: !542)
!542 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !161, line: 110, flags: DIFlagFwdDecl)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !407, file: !411, line: 71, baseType: !544, size: 64, align: 64, offset: 2112)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64, align: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!134, !506, !506}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !407, file: !411, line: 73, baseType: !544, size: 64, align: 64, offset: 2176)
!548 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64, align: 64)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE_DCC_REC", file: !551, line: 8, baseType: !552)
!551 = !DIFile(filename: "../../../../src/irc/dcc/dcc-file.h", directory: "/home/lichi/Desktop/irssi/task1")
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !551, line: 6, size: 1856, align: 64, elements: !553)
!553 = !{!554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !552, file: !133, line: 1, baseType: !134, size: 32, align: 32)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !552, file: !133, line: 2, baseType: !134, size: 32, align: 32, offset: 32)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "created", scope: !552, file: !133, line: 3, baseType: !137, size: 64, align: 64, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !552, file: !133, line: 5, baseType: !143, size: 64, align: 64, offset: 128)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !552, file: !133, line: 6, baseType: !148, size: 64, align: 64, offset: 192)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "mynick", scope: !552, file: !133, line: 7, baseType: !148, size: 64, align: 64, offset: 256)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !552, file: !133, line: 8, baseType: !148, size: 64, align: 64, offset: 320)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "chat", scope: !552, file: !133, line: 10, baseType: !153, size: 64, align: 64, offset: 384)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !552, file: !133, line: 11, baseType: !148, size: 64, align: 64, offset: 448)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !552, file: !133, line: 12, baseType: !148, size: 64, align: 64, offset: 512)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !552, file: !133, line: 14, baseType: !160, size: 160, align: 32, offset: 576)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "addrstr", scope: !552, file: !133, line: 15, baseType: !193, size: 368, align: 8, offset: 736)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !552, file: !133, line: 16, baseType: !134, size: 32, align: 32, offset: 1120)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !552, file: !133, line: 18, baseType: !198, size: 64, align: 64, offset: 1152)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "tagconn", scope: !552, file: !133, line: 19, baseType: !134, size: 32, align: 32, offset: 1216)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "tagread", scope: !552, file: !133, line: 19, baseType: !134, size: 32, align: 32, offset: 1248)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "tagwrite", scope: !552, file: !133, line: 19, baseType: !134, size: 32, align: 32, offset: 1280)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "starttime", scope: !552, file: !133, line: 20, baseType: !137, size: 64, align: 64, offset: 1344)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "transfd", scope: !552, file: !133, line: 21, baseType: !385, size: 64, align: 64, offset: 1408)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "pasv_id", scope: !552, file: !133, line: 23, baseType: !134, size: 32, align: 32, offset: 1472)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "destroyed", scope: !552, file: !133, line: 25, baseType: !189, size: 1, align: 32, offset: 1504, flags: DIFlagBitField, extraData: i64 1504)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !552, file: !133, line: 27, baseType: !389, size: 64, align: 64, offset: 1536)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !552, file: !394, line: 3, baseType: !385, size: 64, align: 64, offset: 1600)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "skipped", scope: !552, file: !394, line: 3, baseType: !385, size: 64, align: 64, offset: 1664)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "fhandle", scope: !552, file: !394, line: 4, baseType: !134, size: 32, align: 32, offset: 1728)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !552, file: !394, line: 5, baseType: !134, size: 32, align: 32, offset: 1760)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "count_buf", scope: !552, file: !394, line: 8, baseType: !399, size: 32, align: 8, offset: 1792)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "count_pos", scope: !552, file: !394, line: 9, baseType: !134, size: 32, align: 32, offset: 1824)
!582 = !{i32 2, !"Dwarf Version", i32 4}
!583 = !{i32 2, !"Debug Info Version", i32 3}
!584 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!585 = distinct !DISubprogram(name: "fe_dcc_get_init", scope: !586, file: !586, line: 128, type: !307, isLocal: false, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !587)
!586 = !DIFile(filename: "fe-dcc-get.c", directory: "/home/lichi/Desktop/irssi/task1")
!587 = !{}
!588 = !DILocation(line: 130, column: 2, scope: !585)
!589 = !DILocation(line: 131, column: 2, scope: !585)
!590 = !DILocation(line: 132, column: 2, scope: !585)
!591 = !DILocation(line: 133, column: 2, scope: !585)
!592 = !DILocation(line: 134, column: 2, scope: !585)
!593 = !DILocation(line: 135, column: 2, scope: !585)
!594 = !DILocation(line: 136, column: 2, scope: !585)
!595 = !DILocation(line: 137, column: 9, scope: !585)
!596 = !DILocation(line: 138, column: 1, scope: !585)
!597 = distinct !DISubprogram(name: "dcc_request", scope: !586, file: !586, line: 35, type: !598, isLocal: true, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !587)
!598 = !DISubroutineType(types: !599)
!599 = !{null, !127}
!600 = !DILocalVariable(name: "dcc", arg: 1, scope: !597, file: !586, line: 35, type: !127)
!601 = !DIExpression()
!602 = !DILocation(line: 35, column: 38, scope: !597)
!603 = !DILocalVariable(name: "sizestr", scope: !597, file: !586, line: 37, type: !148)
!604 = !DILocation(line: 37, column: 8, scope: !597)
!605 = !DILocation(line: 39, column: 50, scope: !606)
!606 = distinct !DILexicalBlock(scope: !597, file: !586, line: 39, column: 6)
!607 = !DILocation(line: 39, column: 25, scope: !606)
!608 = !DILocation(line: 39, column: 9, scope: !606)
!609 = !DILocation(line: 39, column: 6, scope: !597)
!610 = !DILocation(line: 39, column: 8, scope: !611)
!611 = !DILexicalBlockFile(scope: !606, file: !586, discriminator: 1)
!612 = !DILocation(line: 39, column: 6, scope: !613)
!613 = !DILexicalBlockFile(scope: !597, file: !586, discriminator: 2)
!614 = !DILocation(line: 39, column: 40, scope: !615)
!615 = !DILexicalBlockFile(scope: !606, file: !586, discriminator: 3)
!616 = !DILocation(line: 41, column: 29, scope: !597)
!617 = !DILocation(line: 41, column: 34, scope: !597)
!618 = !DILocation(line: 41, column: 12, scope: !597)
!619 = !DILocation(line: 41, column: 10, scope: !597)
!620 = !DILocation(line: 43, column: 42, scope: !597)
!621 = !DILocation(line: 43, column: 47, scope: !597)
!622 = !DILocation(line: 43, column: 53, scope: !597)
!623 = !DILocation(line: 43, column: 58, scope: !597)
!624 = !DILocation(line: 43, column: 35, scope: !597)
!625 = !DILocation(line: 43, column: 20, scope: !597)
!626 = !DILocation(line: 43, column: 16, scope: !597)
!627 = !DILocation(line: 43, column: 60, scope: !597)
!628 = !DILocation(line: 43, column: 65, scope: !597)
!629 = !DILocation(line: 43, column: 42, scope: !630)
!630 = !DILexicalBlockFile(scope: !597, file: !586, discriminator: 1)
!631 = !DILocation(line: 43, column: 27, scope: !597)
!632 = !DILocation(line: 43, column: 15, scope: !597)
!633 = !DILocation(line: 43, column: 18, scope: !613)
!634 = !DILocation(line: 43, column: 17, scope: !597)
!635 = !DILocation(line: 43, column: 74, scope: !597)
!636 = !DILocation(line: 43, column: 79, scope: !597)
!637 = !DILocation(line: 43, column: 85, scope: !597)
!638 = !DILocation(line: 43, column: 90, scope: !597)
!639 = !DILocation(line: 43, column: 99, scope: !597)
!640 = !DILocation(line: 43, column: 104, scope: !597)
!641 = !DILocation(line: 43, column: 110, scope: !597)
!642 = !DILocation(line: 43, column: 115, scope: !597)
!643 = !DILocation(line: 43, column: 120, scope: !597)
!644 = !DILocation(line: 43, column: 129, scope: !597)
!645 = !DILocation(line: 43, column: 134, scope: !597)
!646 = !DILocation(line: 43, column: 2, scope: !647)
!647 = !DILexicalBlockFile(scope: !597, file: !586, discriminator: 3)
!648 = !DILocation(line: 48, column: 9, scope: !597)
!649 = !DILocation(line: 48, column: 2, scope: !597)
!650 = !DILocation(line: 49, column: 1, scope: !597)
!651 = !DILocation(line: 49, column: 1, scope: !630)
!652 = distinct !DISubprogram(name: "dcc_connected", scope: !586, file: !586, line: 51, type: !598, isLocal: true, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !587)
!653 = !DILocalVariable(name: "dcc", arg: 1, scope: !652, file: !586, line: 51, type: !127)
!654 = !DILocation(line: 51, column: 40, scope: !652)
!655 = !DILocation(line: 53, column: 57, scope: !656)
!656 = distinct !DILexicalBlock(scope: !652, file: !586, line: 53, column: 13)
!657 = !DILocation(line: 53, column: 32, scope: !656)
!658 = !DILocation(line: 53, column: 16, scope: !656)
!659 = !DILocation(line: 53, column: 13, scope: !652)
!660 = !DILocation(line: 53, column: 15, scope: !661)
!661 = !DILexicalBlockFile(scope: !656, file: !586, discriminator: 1)
!662 = !DILocation(line: 53, column: 13, scope: !663)
!663 = !DILexicalBlockFile(scope: !652, file: !586, discriminator: 2)
!664 = !DILocation(line: 53, column: 47, scope: !665)
!665 = !DILexicalBlockFile(scope: !656, file: !586, discriminator: 3)
!666 = !DILocation(line: 55, column: 42, scope: !652)
!667 = !DILocation(line: 55, column: 47, scope: !652)
!668 = !DILocation(line: 55, column: 43, scope: !652)
!669 = !DILocation(line: 55, column: 48, scope: !652)
!670 = !DILocation(line: 55, column: 53, scope: !652)
!671 = !DILocation(line: 55, column: 58, scope: !652)
!672 = !DILocation(line: 55, column: 64, scope: !652)
!673 = !DILocation(line: 55, column: 69, scope: !652)
!674 = !DILocation(line: 55, column: 78, scope: !652)
!675 = !DILocation(line: 55, column: 83, scope: !652)
!676 = !DILocation(line: 55, column: 2, scope: !652)
!677 = !DILocation(line: 57, column: 1, scope: !652)
!678 = !DILocation(line: 57, column: 1, scope: !679)
!679 = !DILexicalBlockFile(scope: !652, file: !586, discriminator: 1)
!680 = distinct !DISubprogram(name: "dcc_closed", scope: !586, file: !586, line: 59, type: !598, isLocal: true, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !587)
!681 = !DILocalVariable(name: "dcc", arg: 1, scope: !680, file: !586, line: 59, type: !127)
!682 = !DILocation(line: 59, column: 37, scope: !680)
!683 = !DILocalVariable(name: "sizestr", scope: !680, file: !586, line: 61, type: !148)
!684 = !DILocation(line: 61, column: 8, scope: !680)
!685 = !DILocalVariable(name: "timestr", scope: !680, file: !586, line: 61, type: !686)
!686 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 160, align: 8, elements: !687)
!687 = !{!688}
!688 = !DISubrange(count: 20)
!689 = !DILocation(line: 61, column: 17, scope: !680)
!690 = !DILocalVariable(name: "kbs", scope: !680, file: !586, line: 62, type: !548)
!691 = !DILocation(line: 62, column: 9, scope: !680)
!692 = !DILocalVariable(name: "secs", scope: !680, file: !586, line: 63, type: !137)
!693 = !DILocation(line: 63, column: 9, scope: !680)
!694 = !DILocation(line: 65, column: 57, scope: !695)
!695 = distinct !DILexicalBlock(scope: !680, file: !586, line: 65, column: 13)
!696 = !DILocation(line: 65, column: 32, scope: !695)
!697 = !DILocation(line: 65, column: 16, scope: !695)
!698 = !DILocation(line: 65, column: 13, scope: !680)
!699 = !DILocation(line: 65, column: 15, scope: !700)
!700 = !DILexicalBlockFile(scope: !695, file: !586, discriminator: 1)
!701 = !DILocation(line: 65, column: 13, scope: !702)
!702 = !DILexicalBlockFile(scope: !680, file: !586, discriminator: 2)
!703 = !DILocation(line: 65, column: 47, scope: !704)
!704 = !DILexicalBlockFile(scope: !695, file: !586, discriminator: 3)
!705 = !DILocation(line: 67, column: 9, scope: !680)
!706 = !DILocation(line: 67, column: 14, scope: !680)
!707 = !DILocation(line: 67, column: 24, scope: !680)
!708 = !DILocation(line: 67, column: 9, scope: !709)
!709 = !DILexicalBlockFile(scope: !680, file: !586, discriminator: 1)
!710 = !DILocation(line: 67, column: 36, scope: !702)
!711 = !DILocation(line: 67, column: 46, scope: !702)
!712 = !DILocation(line: 67, column: 51, scope: !702)
!713 = !DILocation(line: 67, column: 45, scope: !702)
!714 = !DILocation(line: 67, column: 9, scope: !702)
!715 = !DILocation(line: 67, column: 9, scope: !716)
!716 = !DILexicalBlockFile(scope: !680, file: !586, discriminator: 3)
!717 = !DILocation(line: 67, column: 7, scope: !716)
!718 = !DILocation(line: 68, column: 18, scope: !680)
!719 = !DILocation(line: 68, column: 23, scope: !680)
!720 = !DILocation(line: 68, column: 31, scope: !680)
!721 = !DILocation(line: 68, column: 36, scope: !680)
!722 = !DILocation(line: 68, column: 30, scope: !680)
!723 = !DILocation(line: 68, column: 8, scope: !680)
!724 = !DILocation(line: 69, column: 4, scope: !680)
!725 = !DILocation(line: 69, column: 9, scope: !680)
!726 = !DILocation(line: 69, column: 4, scope: !709)
!727 = !DILocation(line: 69, column: 20, scope: !702)
!728 = !DILocation(line: 69, column: 4, scope: !702)
!729 = !DILocation(line: 69, column: 4, scope: !716)
!730 = !DILocation(line: 69, column: 3, scope: !716)
!731 = !DILocation(line: 68, column: 45, scope: !709)
!732 = !DILocation(line: 69, column: 26, scope: !716)
!733 = !DILocation(line: 68, column: 6, scope: !709)
!734 = !DILocation(line: 71, column: 29, scope: !680)
!735 = !DILocation(line: 71, column: 34, scope: !680)
!736 = !DILocation(line: 71, column: 12, scope: !680)
!737 = !DILocation(line: 71, column: 10, scope: !680)
!738 = !DILocation(line: 72, column: 13, scope: !680)
!739 = !DILocation(line: 73, column: 12, scope: !680)
!740 = !DILocation(line: 73, column: 16, scope: !680)
!741 = !DILocation(line: 73, column: 6, scope: !680)
!742 = !DILocation(line: 73, column: 31, scope: !680)
!743 = !DILocation(line: 73, column: 35, scope: !680)
!744 = !DILocation(line: 73, column: 39, scope: !680)
!745 = !DILocation(line: 73, column: 24, scope: !680)
!746 = !DILocation(line: 73, column: 51, scope: !680)
!747 = !DILocation(line: 73, column: 55, scope: !680)
!748 = !DILocation(line: 73, column: 45, scope: !680)
!749 = !DILocation(line: 72, column: 2, scope: !680)
!750 = !DILocation(line: 75, column: 6, scope: !751)
!751 = distinct !DILexicalBlock(scope: !680, file: !586, line: 75, column: 6)
!752 = !DILocation(line: 75, column: 11, scope: !751)
!753 = !DILocation(line: 75, column: 6, scope: !680)
!754 = !DILocation(line: 77, column: 43, scope: !755)
!755 = distinct !DILexicalBlock(scope: !751, file: !586, line: 75, column: 18)
!756 = !DILocation(line: 77, column: 48, scope: !755)
!757 = !DILocation(line: 77, column: 42, scope: !755)
!758 = !DILocation(line: 77, column: 47, scope: !755)
!759 = !DILocation(line: 77, column: 52, scope: !755)
!760 = !DILocation(line: 77, column: 57, scope: !755)
!761 = !DILocation(line: 77, column: 3, scope: !755)
!762 = !DILocation(line: 79, column: 2, scope: !755)
!763 = !DILocation(line: 80, column: 43, scope: !764)
!764 = distinct !DILexicalBlock(scope: !751, file: !586, line: 79, column: 9)
!765 = !DILocation(line: 80, column: 48, scope: !764)
!766 = !DILocation(line: 80, column: 53, scope: !764)
!767 = !DILocation(line: 80, column: 62, scope: !764)
!768 = !DILocation(line: 80, column: 67, scope: !764)
!769 = !DILocation(line: 80, column: 73, scope: !764)
!770 = !DILocation(line: 80, column: 82, scope: !764)
!771 = !DILocation(line: 80, column: 3, scope: !764)
!772 = !DILocation(line: 85, column: 9, scope: !680)
!773 = !DILocation(line: 85, column: 2, scope: !680)
!774 = !DILocation(line: 86, column: 1, scope: !680)
!775 = !DILocation(line: 86, column: 1, scope: !709)
!776 = distinct !DISubprogram(name: "dcc_error_file_create", scope: !586, file: !586, line: 88, type: !777, isLocal: true, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !587)
!777 = !DISubroutineType(types: !778)
!778 = !{null, !127, !506, !506}
!779 = !DILocalVariable(name: "dcc", arg: 1, scope: !776, file: !586, line: 88, type: !127)
!780 = !DILocation(line: 88, column: 48, scope: !776)
!781 = !DILocalVariable(name: "fname", arg: 2, scope: !776, file: !586, line: 88, type: !506)
!782 = !DILocation(line: 88, column: 65, scope: !776)
!783 = !DILocalVariable(name: "error", arg: 3, scope: !776, file: !586, line: 89, type: !506)
!784 = !DILocation(line: 89, column: 19, scope: !776)
!785 = !DILocation(line: 91, column: 41, scope: !776)
!786 = !DILocation(line: 91, column: 48, scope: !776)
!787 = !DILocation(line: 91, column: 2, scope: !776)
!788 = !DILocation(line: 93, column: 1, scope: !776)
!789 = distinct !DISubprogram(name: "dcc_error_get_not_found", scope: !586, file: !586, line: 96, type: !790, isLocal: true, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !587)
!790 = !DISubroutineType(types: !791)
!791 = !{null, !506}
!792 = !DILocalVariable(name: "nick", arg: 1, scope: !789, file: !586, line: 96, type: !506)
!793 = !DILocation(line: 96, column: 49, scope: !789)
!794 = !DILocation(line: 98, column: 2, scope: !789)
!795 = distinct !{!795, !794}
!796 = !DILocation(line: 98, column: 10, scope: !797)
!797 = !DILexicalBlockFile(scope: !798, file: !586, discriminator: 1)
!798 = distinct !DILexicalBlock(scope: !799, file: !586, line: 98, column: 10)
!799 = distinct !DILexicalBlock(scope: !789, file: !586, line: 98, column: 4)
!800 = !DILocation(line: 98, column: 15, scope: !797)
!801 = !DILocation(line: 98, column: 5, scope: !802)
!802 = !DILexicalBlockFile(scope: !803, file: !586, discriminator: 2)
!803 = distinct !DILexicalBlock(scope: !798, file: !586, line: 98, column: 3)
!804 = !DILocation(line: 98, column: 14, scope: !805)
!805 = !DILexicalBlockFile(scope: !806, file: !586, discriminator: 3)
!806 = distinct !DILexicalBlock(scope: !798, file: !586, line: 98, column: 12)
!807 = !DILocation(line: 98, column: 99, scope: !805)
!808 = !DILocation(line: 98, column: 110, scope: !809)
!809 = !DILexicalBlockFile(scope: !799, file: !586, discriminator: 4)
!810 = !DILocation(line: 100, column: 43, scope: !789)
!811 = !DILocation(line: 100, column: 2, scope: !789)
!812 = !DILocation(line: 101, column: 1, scope: !789)
!813 = !DILocation(line: 101, column: 1, scope: !814)
!814 = !DILexicalBlockFile(scope: !789, file: !586, discriminator: 1)
!815 = distinct !DISubprogram(name: "dcc_error_close_not_found", scope: !586, file: !586, line: 103, type: !816, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !587)
!816 = !DISubroutineType(types: !817)
!817 = !{null, !506, !506, !506}
!818 = !DILocalVariable(name: "type", arg: 1, scope: !815, file: !586, line: 103, type: !506)
!819 = !DILocation(line: 103, column: 51, scope: !815)
!820 = !DILocalVariable(name: "nick", arg: 2, scope: !815, file: !586, line: 103, type: !506)
!821 = !DILocation(line: 103, column: 69, scope: !815)
!822 = !DILocalVariable(name: "fname", arg: 3, scope: !815, file: !586, line: 104, type: !506)
!823 = !DILocation(line: 104, column: 23, scope: !815)
!824 = !DILocation(line: 106, column: 2, scope: !815)
!825 = distinct !{!825, !824}
!826 = !DILocation(line: 106, column: 10, scope: !827)
!827 = !DILexicalBlockFile(scope: !828, file: !586, discriminator: 1)
!828 = distinct !DILexicalBlock(scope: !829, file: !586, line: 106, column: 10)
!829 = distinct !DILexicalBlock(scope: !815, file: !586, line: 106, column: 4)
!830 = !DILocation(line: 106, column: 15, scope: !827)
!831 = !DILocation(line: 106, column: 5, scope: !832)
!832 = !DILexicalBlockFile(scope: !833, file: !586, discriminator: 2)
!833 = distinct !DILexicalBlock(scope: !828, file: !586, line: 106, column: 3)
!834 = !DILocation(line: 106, column: 14, scope: !835)
!835 = !DILexicalBlockFile(scope: !836, file: !586, discriminator: 3)
!836 = distinct !DILexicalBlock(scope: !828, file: !586, line: 106, column: 12)
!837 = !DILocation(line: 106, column: 99, scope: !835)
!838 = !DILocation(line: 106, column: 110, scope: !839)
!839 = !DILexicalBlockFile(scope: !829, file: !586, discriminator: 4)
!840 = !DILocation(line: 107, column: 2, scope: !815)
!841 = distinct !{!841, !840}
!842 = !DILocation(line: 107, column: 10, scope: !843)
!843 = !DILexicalBlockFile(scope: !844, file: !586, discriminator: 1)
!844 = distinct !DILexicalBlock(scope: !845, file: !586, line: 107, column: 10)
!845 = distinct !DILexicalBlock(scope: !815, file: !586, line: 107, column: 4)
!846 = !DILocation(line: 107, column: 15, scope: !843)
!847 = !DILocation(line: 107, column: 5, scope: !848)
!848 = !DILexicalBlockFile(scope: !849, file: !586, discriminator: 2)
!849 = distinct !DILexicalBlock(scope: !844, file: !586, line: 107, column: 3)
!850 = !DILocation(line: 107, column: 14, scope: !851)
!851 = !DILexicalBlockFile(scope: !852, file: !586, discriminator: 3)
!852 = distinct !DILexicalBlock(scope: !844, file: !586, line: 107, column: 12)
!853 = !DILocation(line: 107, column: 99, scope: !851)
!854 = !DILocation(line: 107, column: 110, scope: !855)
!855 = !DILexicalBlockFile(scope: !845, file: !586, discriminator: 4)
!856 = !DILocation(line: 108, column: 2, scope: !815)
!857 = distinct !{!857, !856}
!858 = !DILocation(line: 108, column: 10, scope: !859)
!859 = !DILexicalBlockFile(scope: !860, file: !586, discriminator: 1)
!860 = distinct !DILexicalBlock(scope: !861, file: !586, line: 108, column: 10)
!861 = distinct !DILexicalBlock(scope: !815, file: !586, line: 108, column: 4)
!862 = !DILocation(line: 108, column: 16, scope: !859)
!863 = !DILocation(line: 108, column: 5, scope: !864)
!864 = !DILexicalBlockFile(scope: !865, file: !586, discriminator: 2)
!865 = distinct !DILexicalBlock(scope: !860, file: !586, line: 108, column: 3)
!866 = !DILocation(line: 108, column: 14, scope: !867)
!867 = !DILexicalBlockFile(scope: !868, file: !586, discriminator: 3)
!868 = distinct !DILexicalBlock(scope: !860, file: !586, line: 108, column: 12)
!869 = !DILocation(line: 108, column: 100, scope: !867)
!870 = !DILocation(line: 108, column: 111, scope: !871)
!871 = !DILexicalBlockFile(scope: !861, file: !586, discriminator: 4)
!872 = !DILocation(line: 109, column: 25, scope: !873)
!873 = distinct !DILexicalBlock(scope: !815, file: !586, line: 109, column: 6)
!874 = !DILocation(line: 109, column: 6, scope: !873)
!875 = !DILocation(line: 109, column: 38, scope: !873)
!876 = !DILocation(line: 109, column: 6, scope: !815)
!877 = !DILocation(line: 109, column: 44, scope: !878)
!878 = !DILexicalBlockFile(scope: !873, file: !586, discriminator: 1)
!879 = !DILocation(line: 111, column: 6, scope: !880)
!880 = distinct !DILexicalBlock(scope: !815, file: !586, line: 111, column: 6)
!881 = !DILocation(line: 111, column: 12, scope: !880)
!882 = !DILocation(line: 111, column: 19, scope: !880)
!883 = !DILocation(line: 111, column: 23, scope: !884)
!884 = !DILexicalBlockFile(scope: !880, file: !586, discriminator: 1)
!885 = !DILocation(line: 111, column: 22, scope: !884)
!886 = !DILocation(line: 111, column: 29, scope: !884)
!887 = !DILocation(line: 111, column: 6, scope: !884)
!888 = !DILocation(line: 111, column: 44, scope: !889)
!889 = !DILexicalBlockFile(scope: !880, file: !586, discriminator: 2)
!890 = !DILocation(line: 111, column: 38, scope: !889)
!891 = !DILocation(line: 112, column: 43, scope: !815)
!892 = !DILocation(line: 112, column: 49, scope: !815)
!893 = !DILocation(line: 112, column: 2, scope: !815)
!894 = !DILocation(line: 114, column: 1, scope: !815)
!895 = !DILocation(line: 114, column: 1, scope: !896)
!896 = !DILexicalBlockFile(scope: !815, file: !586, discriminator: 1)
!897 = distinct !DISubprogram(name: "dcc_error_write", scope: !586, file: !586, line: 116, type: !898, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !587)
!898 = !DISubroutineType(types: !899)
!899 = !{null, !127, !506}
!900 = !DILocalVariable(name: "dcc", arg: 1, scope: !897, file: !586, line: 116, type: !127)
!901 = !DILocation(line: 116, column: 42, scope: !897)
!902 = !DILocalVariable(name: "error", arg: 2, scope: !897, file: !586, line: 116, type: !506)
!903 = !DILocation(line: 116, column: 59, scope: !897)
!904 = !DILocation(line: 118, column: 45, scope: !897)
!905 = !DILocation(line: 118, column: 50, scope: !897)
!906 = !DILocation(line: 118, column: 56, scope: !897)
!907 = !DILocation(line: 118, column: 2, scope: !897)
!908 = !DILocation(line: 120, column: 1, scope: !897)
!909 = distinct !DISubprogram(name: "sig_dcc_list_print", scope: !586, file: !586, line: 122, type: !598, isLocal: true, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !587)
!910 = !DILocalVariable(name: "dcc", arg: 1, scope: !909, file: !586, line: 122, type: !127)
!911 = !DILocation(line: 122, column: 45, scope: !909)
!912 = !DILocation(line: 124, column: 49, scope: !913)
!913 = distinct !DILexicalBlock(scope: !909, file: !586, line: 124, column: 6)
!914 = !DILocation(line: 124, column: 24, scope: !913)
!915 = !DILocation(line: 124, column: 8, scope: !913)
!916 = !DILocation(line: 124, column: 6, scope: !909)
!917 = !DILocation(line: 124, column: 7, scope: !918)
!918 = !DILexicalBlockFile(scope: !913, file: !586, discriminator: 1)
!919 = !DILocation(line: 124, column: 6, scope: !920)
!920 = !DILexicalBlockFile(scope: !909, file: !586, discriminator: 2)
!921 = !DILocation(line: 125, column: 40, scope: !913)
!922 = !DILocation(line: 125, column: 23, scope: !913)
!923 = !DILocation(line: 125, column: 3, scope: !913)
!924 = !DILocation(line: 126, column: 1, scope: !909)
!925 = distinct !DISubprogram(name: "fe_dcc_get_deinit", scope: !586, file: !586, line: 140, type: !307, isLocal: false, isDefinition: true, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !587)
!926 = !DILocation(line: 142, column: 2, scope: !925)
!927 = !DILocation(line: 143, column: 2, scope: !925)
!928 = !DILocation(line: 144, column: 2, scope: !925)
!929 = !DILocation(line: 145, column: 2, scope: !925)
!930 = !DILocation(line: 146, column: 2, scope: !925)
!931 = !DILocation(line: 147, column: 2, scope: !925)
!932 = !DILocation(line: 148, column: 2, scope: !925)
!933 = !DILocation(line: 149, column: 9, scope: !925)
!934 = !DILocation(line: 150, column: 1, scope: !925)
