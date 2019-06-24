; ModuleID = './line157-servers-idle.o.i'
source_filename = "./line157-servers-idle.o.i"
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
%struct._WI_ITEM_REC = type opaque
%struct._NICK_REC = type { i32, i32, i64, i8*, i8*, i8*, i32, i8, [8 x i8], i8*, %struct._NICK_REC* }
%struct._QUERY_REC = type opaque
%struct._REDIRECT_REC = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct._GTimeVal = type { i64, i64 }
%struct._GHashTable = type opaque
%struct.modes_type = type { void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, i8 }
%struct._IRC_CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._IRC_SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)*, %struct._GSList*, i64, i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.SERVER_IDLE_REC = type { i8*, i8*, i32, i8*, i32, i32, i8*, %struct._GSList* }

@__func__.server_idle_add_redir = private unnamed_addr constant [22 x i8] c"server_idle_add_redir\00", align 1
@.str = private unnamed_addr constant [15 x i8] c"server != NULL\00", align 1
@__func__.server_idle_add_first_redir = private unnamed_addr constant [28 x i8] c"server_idle_add_first_redir\00", align 1
@__func__.server_idle_insert_redir = private unnamed_addr constant [25 x i8] c"server_idle_insert_redir\00", align 1
@__func__.server_idle_remove = private unnamed_addr constant [19 x i8] c"server_idle_remove\00", align 1
@idlepos = internal global i32 0, align 4
@idle_tag = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"irc/core\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"server disconnected\00", align 1
@__func__.server_idle_create = private unnamed_addr constant [19 x i8] c"server_idle_create\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"cmd != NULL\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"server_idle_create(%s): signal not specified for event\00", align 1
@__func__.server_idle_find_rec = private unnamed_addr constant [21 x i8] c"server_idle_find_rec\00", align 1
@__func__.server_idle_destroy = private unnamed_addr constant [20 x i8] c"server_idle_destroy\00", align 1
@servers = external global %struct._GSList*, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"IRC\00", align 1
@__func__.server_idle_next = private unnamed_addr constant [17 x i8] c"server_idle_next\00", align 1
@__func__.sig_disconnected = private unnamed_addr constant [17 x i8] c"sig_disconnected\00", align 1

; Function Attrs: nounwind uwtable
define i32 @server_idle_add_redir(%struct._IRC_SERVER_REC*, i8*, i8*, i32, i8*, i32, i8*, ...) #0 !dbg !701 {
  %8 = alloca i32, align 4
  %9 = alloca %struct._IRC_SERVER_REC*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca [1 x %struct.__va_list_tag], align 16
  %17 = alloca %struct.SERVER_IDLE_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %9, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %9, metadata !705, metadata !706), !dbg !707
  store i8* %1, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !708, metadata !706), !dbg !709
  store i8* %2, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !710, metadata !706), !dbg !711
  store i32 %3, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !712, metadata !706), !dbg !713
  store i8* %4, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !714, metadata !706), !dbg !715
  store i32 %5, i32* %14, align 4
  call void @llvm.dbg.declare(metadata i32* %14, metadata !716, metadata !706), !dbg !717
  store i8* %6, i8** %15, align 8
  call void @llvm.dbg.declare(metadata i8** %15, metadata !718, metadata !706), !dbg !719
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %16, metadata !720, metadata !706), !dbg !735
  call void @llvm.dbg.declare(metadata %struct.SERVER_IDLE_REC** %17, metadata !736, metadata !706), !dbg !737
  br label %18, !dbg !738, !llvm.loop !739

; <label>:18:                                     ; preds = %7
  %19 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %9, align 8, !dbg !740
  %20 = icmp ne %struct._IRC_SERVER_REC* %19, null, !dbg !744
  br i1 %20, label %21, label %22, !dbg !740

; <label>:21:                                     ; preds = %18
  br label %23, !dbg !745

; <label>:22:                                     ; preds = %18
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.server_idle_add_redir, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)), !dbg !748
  store i32 -1, i32* %8, align 4, !dbg !751
  br label %48, !dbg !751

; <label>:23:                                     ; preds = %21
  br label %24, !dbg !752

; <label>:24:                                     ; preds = %23
  %25 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %16, i32 0, i32 0, !dbg !754
  %26 = bitcast %struct.__va_list_tag* %25 to i8*, !dbg !754
  call void @llvm.va_start(i8* %26), !dbg !754
  %27 = load i8*, i8** %10, align 8, !dbg !755
  %28 = load i8*, i8** %11, align 8, !dbg !756
  %29 = load i32, i32* %12, align 4, !dbg !757
  %30 = load i8*, i8** %13, align 8, !dbg !758
  %31 = load i32, i32* %14, align 4, !dbg !759
  %32 = load i8*, i8** %15, align 8, !dbg !760
  %33 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %16, i32 0, i32 0, !dbg !761
  %34 = call %struct.SERVER_IDLE_REC* @server_idle_create(i8* %27, i8* %28, i32 %29, i8* %30, i32 %31, i8* %32, %struct.__va_list_tag* %33), !dbg !762
  store %struct.SERVER_IDLE_REC* %34, %struct.SERVER_IDLE_REC** %17, align 8, !dbg !763
  %35 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %9, align 8, !dbg !764
  %36 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %35, i32 0, i32 62, !dbg !765
  %37 = load %struct._GSList*, %struct._GSList** %36, align 8, !dbg !765
  %38 = load %struct.SERVER_IDLE_REC*, %struct.SERVER_IDLE_REC** %17, align 8, !dbg !766
  %39 = bitcast %struct.SERVER_IDLE_REC* %38 to i8*, !dbg !766
  %40 = call %struct._GSList* @g_slist_append(%struct._GSList* %37, i8* %39), !dbg !767
  %41 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %9, align 8, !dbg !768
  %42 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %41, i32 0, i32 62, !dbg !769
  store %struct._GSList* %40, %struct._GSList** %42, align 8, !dbg !770
  %43 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %16, i32 0, i32 0, !dbg !771
  %44 = bitcast %struct.__va_list_tag* %43 to i8*, !dbg !771
  call void @llvm.va_end(i8* %44), !dbg !771
  %45 = load %struct.SERVER_IDLE_REC*, %struct.SERVER_IDLE_REC** %17, align 8, !dbg !772
  %46 = getelementptr inbounds %struct.SERVER_IDLE_REC, %struct.SERVER_IDLE_REC* %45, i32 0, i32 2, !dbg !773
  %47 = load i32, i32* %46, align 8, !dbg !773
  store i32 %47, i32* %8, align 4, !dbg !774
  br label %48, !dbg !774

; <label>:48:                                     ; preds = %24, %22
  %49 = load i32, i32* %8, align 4, !dbg !775
  ret i32 %49, !dbg !775
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

; Function Attrs: nounwind uwtable
define internal %struct.SERVER_IDLE_REC* @server_idle_create(i8*, i8*, i32, i8*, i32, i8*, %struct.__va_list_tag*) #0 !dbg !776 {
  %8 = alloca %struct.SERVER_IDLE_REC*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.__va_list_tag*, align 8
  %16 = alloca %struct.SERVER_IDLE_REC*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store i8* %0, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !780, metadata !706), !dbg !781
  store i8* %1, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !782, metadata !706), !dbg !783
  store i32 %2, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !784, metadata !706), !dbg !785
  store i8* %3, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !786, metadata !706), !dbg !787
  store i32 %4, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !788, metadata !706), !dbg !789
  store i8* %5, i8** %14, align 8
  call void @llvm.dbg.declare(metadata i8** %14, metadata !790, metadata !706), !dbg !791
  store %struct.__va_list_tag* %6, %struct.__va_list_tag** %15, align 8
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %15, metadata !792, metadata !706), !dbg !793
  call void @llvm.dbg.declare(metadata %struct.SERVER_IDLE_REC** %16, metadata !794, metadata !706), !dbg !795
  call void @llvm.dbg.declare(metadata i8** %17, metadata !796, metadata !706), !dbg !797
  call void @llvm.dbg.declare(metadata i8** %18, metadata !798, metadata !706), !dbg !799
  br label %19, !dbg !800, !llvm.loop !801

; <label>:19:                                     ; preds = %7
  %20 = load i8*, i8** %9, align 8, !dbg !802
  %21 = icmp ne i8* %20, null, !dbg !806
  br i1 %21, label %22, label %23, !dbg !802

; <label>:22:                                     ; preds = %19
  br label %24, !dbg !807

; <label>:23:                                     ; preds = %19
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.server_idle_create, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0)), !dbg !810
  store %struct.SERVER_IDLE_REC* null, %struct.SERVER_IDLE_REC** %8, align 8, !dbg !813
  br label %116, !dbg !813

; <label>:24:                                     ; preds = %22
  br label %25, !dbg !814

; <label>:25:                                     ; preds = %24
  %26 = call noalias i8* @g_malloc0_n(i64 1, i64 56), !dbg !816
  %27 = bitcast i8* %26 to %struct.SERVER_IDLE_REC*, !dbg !817
  store %struct.SERVER_IDLE_REC* %27, %struct.SERVER_IDLE_REC** %16, align 8, !dbg !818
  %28 = load i8*, i8** %9, align 8, !dbg !819
  %29 = call noalias i8* @g_strdup(i8* %28), !dbg !820
  %30 = load %struct.SERVER_IDLE_REC*, %struct.SERVER_IDLE_REC** %16, align 8, !dbg !821
  %31 = getelementptr inbounds %struct.SERVER_IDLE_REC, %struct.SERVER_IDLE_REC* %30, i32 0, i32 0, !dbg !822
  store i8* %29, i8** %31, align 8, !dbg !823
  %32 = load i8*, i8** %12, align 8, !dbg !824
  %33 = call noalias i8* @g_strdup(i8* %32), !dbg !825
  %34 = load %struct.SERVER_IDLE_REC*, %struct.SERVER_IDLE_REC** %16, align 8, !dbg !826
  %35 = getelementptr inbounds %struct.SERVER_IDLE_REC, %struct.SERVER_IDLE_REC* %34, i32 0, i32 1, !dbg !827
  store i8* %33, i8** %35, align 8, !dbg !828
  %36 = load i32, i32* @idlepos, align 4, !dbg !829
  %37 = add nsw i32 %36, 1, !dbg !829
  store i32 %37, i32* @idlepos, align 4, !dbg !829
  %38 = load %struct.SERVER_IDLE_REC*, %struct.SERVER_IDLE_REC** %16, align 8, !dbg !830
  %39 = getelementptr inbounds %struct.SERVER_IDLE_REC, %struct.SERVER_IDLE_REC* %38, i32 0, i32 2, !dbg !831
  store i32 %37, i32* %39, align 8, !dbg !832
  %40 = load i8*, i8** %10, align 8, !dbg !833
  %41 = call noalias i8* @g_strdup(i8* %40), !dbg !834
  %42 = load %struct.SERVER_IDLE_REC*, %struct.SERVER_IDLE_REC** %16, align 8, !dbg !835
  %43 = getelementptr inbounds %struct.SERVER_IDLE_REC, %struct.SERVER_IDLE_REC* %42, i32 0, i32 3, !dbg !836
  store i8* %41, i8** %43, align 8, !dbg !837
  %44 = load i32, i32* %11, align 4, !dbg !838
  %45 = load %struct.SERVER_IDLE_REC*, %struct.SERVER_IDLE_REC** %16, align 8, !dbg !839
  %46 = getelementptr inbounds %struct.SERVER_IDLE_REC, %struct.SERVER_IDLE_REC* %45, i32 0, i32 4, !dbg !840
  store i32 %44, i32* %46, align 8, !dbg !841
  %47 = load i32, i32* %13, align 4, !dbg !842
  %48 = load %struct.SERVER_IDLE_REC*, %struct.SERVER_IDLE_REC** %16, align 8, !dbg !843
  %49 = getelementptr inbounds %struct.SERVER_IDLE_REC, %struct.SERVER_IDLE_REC* %48, i32 0, i32 5, !dbg !844
  store i32 %47, i32* %49, align 4, !dbg !845
  %50 = load i8*, i8** %14, align 8, !dbg !846
  %51 = call noalias i8* @g_strdup(i8* %50), !dbg !847
  %52 = load %struct.SERVER_IDLE_REC*, %struct.SERVER_IDLE_REC** %16, align 8, !dbg !848
  %53 = getelementptr inbounds %struct.SERVER_IDLE_REC, %struct.SERVER_IDLE_REC* %52, i32 0, i32 6, !dbg !849
  store i8* %51, i8** %53, align 8, !dbg !850
  br label %54, !dbg !851

; <label>:54:                                     ; preds = %97, %25
  %55 = load %struct.__va_list_tag*, %struct.__va_list_tag** %15, align 8, !dbg !852
  %56 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %55, i32 0, i32 0, !dbg !852
  %57 = load i32, i32* %56, align 8, !dbg !852
  %58 = icmp ule i32 %57, 40, !dbg !852
  br i1 %58, label %59, label %65, !dbg !852

; <label>:59:                                     ; preds = %54
  %60 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %55, i32 0, i32 3, !dbg !854
  %61 = load i8*, i8** %60, align 8, !dbg !854
  %62 = getelementptr i8, i8* %61, i32 %57, !dbg !854
  %63 = bitcast i8* %62 to i8**, !dbg !854
  %64 = add i32 %57, 8, !dbg !854
  store i32 %64, i32* %56, align 8, !dbg !854
  br label %70, !dbg !854

; <label>:65:                                     ; preds = %54
  %66 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %55, i32 0, i32 2, !dbg !856
  %67 = load i8*, i8** %66, align 8, !dbg !856
  %68 = bitcast i8* %67 to i8**, !dbg !856
  %69 = getelementptr i8, i8* %67, i32 8, !dbg !856
  store i8* %69, i8** %66, align 8, !dbg !856
  br label %70, !dbg !856

; <label>:70:                                     ; preds = %65, %59
  %71 = phi i8** [ %63, %59 ], [ %68, %65 ], !dbg !858
  %72 = load i8*, i8** %71, align 8, !dbg !858
  store i8* %72, i8** %17, align 8, !dbg !860
  %73 = icmp ne i8* %72, null, !dbg !861
  br i1 %73, label %74, label %114, !dbg !862

; <label>:74:                                     ; preds = %70
  %75 = load %struct.__va_list_tag*, %struct.__va_list_tag** %15, align 8, !dbg !863
  %76 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %75, i32 0, i32 0, !dbg !863
  %77 = load i32, i32* %76, align 8, !dbg !863
  %78 = icmp ule i32 %77, 40, !dbg !863
  br i1 %78, label %79, label %85, !dbg !863

; <label>:79:                                     ; preds = %74
  %80 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %75, i32 0, i32 3, !dbg !865
  %81 = load i8*, i8** %80, align 8, !dbg !865
  %82 = getelementptr i8, i8* %81, i32 %77, !dbg !865
  %83 = bitcast i8* %82 to i8**, !dbg !865
  %84 = add i32 %77, 8, !dbg !865
  store i32 %84, i32* %76, align 8, !dbg !865
  br label %90, !dbg !865

; <label>:85:                                     ; preds = %74
  %86 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %75, i32 0, i32 2, !dbg !867
  %87 = load i8*, i8** %86, align 8, !dbg !867
  %88 = bitcast i8* %87 to i8**, !dbg !867
  %89 = getelementptr i8, i8* %87, i32 8, !dbg !867
  store i8* %89, i8** %86, align 8, !dbg !867
  br label %90, !dbg !867

; <label>:90:                                     ; preds = %85, %79
  %91 = phi i8** [ %83, %79 ], [ %88, %85 ], !dbg !869
  %92 = load i8*, i8** %91, align 8, !dbg !869
  store i8* %92, i8** %18, align 8, !dbg !871
  %93 = load i8*, i8** %18, align 8, !dbg !872
  %94 = icmp eq i8* %93, null, !dbg !874
  br i1 %94, label %95, label %97, !dbg !875

; <label>:95:                                     ; preds = %90
  %96 = load i8*, i8** %10, align 8, !dbg !876
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i32 0, i32 0), i8* %96), !dbg !878
  br label %114, !dbg !879

; <label>:97:                                     ; preds = %90
  %98 = load %struct.SERVER_IDLE_REC*, %struct.SERVER_IDLE_REC** %16, align 8, !dbg !880
  %99 = getelementptr inbounds %struct.SERVER_IDLE_REC, %struct.SERVER_IDLE_REC* %98, i32 0, i32 7, !dbg !881
  %100 = load %struct._GSList*, %struct._GSList** %99, align 8, !dbg !881
  %101 = load i8*, i8** %17, align 8, !dbg !882
  %102 = call noalias i8* @g_strdup(i8* %101), !dbg !883
  %103 = call %struct._GSList* @g_slist_append(%struct._GSList* %100, i8* %102), !dbg !884
  %104 = load %struct.SERVER_IDLE_REC*, %struct.SERVER_IDLE_REC** %16, align 8, !dbg !885
  %105 = getelementptr inbounds %struct.SERVER_IDLE_REC, %struct.SERVER_IDLE_REC* %104, i32 0, i32 7, !dbg !886
  store %struct._GSList* %103, %struct._GSList** %105, align 8, !dbg !887
  %106 = load %struct.SERVER_IDLE_REC*, %struct.SERVER_IDLE_REC** %16, align 8, !dbg !888
  %107 = getelementptr inbounds %struct.SERVER_IDLE_REC, %struct.SERVER_IDLE_REC* %106, i32 0, i32 7, !dbg !889
  %108 = load %struct._GSList*, %struct._GSList** %107, align 8, !dbg !889
  %109 = load i8*, i8** %18, align 8, !dbg !890
  %110 = call noalias i8* @g_strdup(i8* %109), !dbg !891
  %111 = call %struct._GSList* @g_slist_append(%struct._GSList* %108, i8* %110), !dbg !892
  %112 = load %struct.SERVER_IDLE_REC*, %struct.SERVER_IDLE_REC** %16, align 8, !dbg !893
  %113 = getelementptr inbounds %struct.SERVER_IDLE_REC, %struct.SERVER_IDLE_REC* %112, i32 0, i32 7, !dbg !894
  store %struct._GSList* %111, %struct._GSList** %113, align 8, !dbg !895
  br label %54, !dbg !896, !llvm.loop !898

; <label>:114:                                    ; preds = %95, %70
  %115 = load %struct.SERVER_IDLE_REC*, %struct.SERVER_IDLE_REC** %16, align 8, !dbg !899
  store %struct.SERVER_IDLE_REC* %115, %struct.SERVER_IDLE_REC** %8, align 8, !dbg !900
  br label %116, !dbg !900

; <label>:116:                                    ; preds = %114, %23
  %117 = load %struct.SERVER_IDLE_REC*, %struct.SERVER_IDLE_REC** %8, align 8, !dbg !901
  ret %struct.SERVER_IDLE_REC* %117, !dbg !901
}

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

; Function Attrs: nounwind uwtable
define i32 @server_idle_add_first_redir(%struct._IRC_SERVER_REC*, i8*, i8*, i32, i8*, i32, i8*, ...) #0 !dbg !902 {
  %8 = alloca i32, align 4
  %9 = alloca %struct._IRC_SERVER_REC*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca [1 x %struct.__va_list_tag], align 16
  %17 = alloca %struct.SERVER_IDLE_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %9, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %9, metadata !903, metadata !706), !dbg !904
  store i8* %1, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !905, metadata !706), !dbg !906
  store i8* %2, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !907, metadata !706), !dbg !908
  store i32 %3, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !909, metadata !706), !dbg !910
  store i8* %4, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !911, metadata !706), !dbg !912
  store i32 %5, i32* %14, align 4
  call void @llvm.dbg.declare(metadata i32* %14, metadata !913, metadata !706), !dbg !914
  store i8* %6, i8** %15, align 8
  call void @llvm.dbg.declare(metadata i8** %15, metadata !915, metadata !706), !dbg !916
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %16, metadata !917, metadata !706), !dbg !918
  call void @llvm.dbg.declare(metadata %struct.SERVER_IDLE_REC** %17, metadata !919, metadata !706), !dbg !920
  br label %18, !dbg !921, !llvm.loop !922

; <label>:18:                                     ; preds = %7
  %19 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %9, align 8, !dbg !923
  %20 = icmp ne %struct._IRC_SERVER_REC* %19, null, !dbg !927
  br i1 %20, label %21, label %22, !dbg !923

; <label>:21:                                     ; preds = %18
  br label %23, !dbg !928

; <label>:22:                                     ; preds = %18
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.server_idle_add_first_redir, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)), !dbg !931
  store i32 -1, i32* %8, align 4, !dbg !934
  br label %48, !dbg !934

; <label>:23:                                     ; preds = %21
  br label %24, !dbg !935

; <label>:24:                                     ; preds = %23
  %25 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %16, i32 0, i32 0, !dbg !937
  %26 = bitcast %struct.__va_list_tag* %25 to i8*, !dbg !937
  call void @llvm.va_start(i8* %26), !dbg !937
  %27 = load i8*, i8** %10, align 8, !dbg !938
  %28 = load i8*, i8** %11, align 8, !dbg !939
  %29 = load i32, i32* %12, align 4, !dbg !940
  %30 = load i8*, i8** %13, align 8, !dbg !941
  %31 = load i32, i32* %14, align 4, !dbg !942
  %32 = load i8*, i8** %15, align 8, !dbg !943
  %33 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %16, i32 0, i32 0, !dbg !944
  %34 = call %struct.SERVER_IDLE_REC* @server_idle_create(i8* %27, i8* %28, i32 %29, i8* %30, i32 %31, i8* %32, %struct.__va_list_tag* %33), !dbg !945
  store %struct.SERVER_IDLE_REC* %34, %struct.SERVER_IDLE_REC** %17, align 8, !dbg !946
  %35 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %9, align 8, !dbg !947
  %36 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %35, i32 0, i32 62, !dbg !948
  %37 = load %struct._GSList*, %struct._GSList** %36, align 8, !dbg !948
  %38 = load %struct.SERVER_IDLE_REC*, %struct.SERVER_IDLE_REC** %17, align 8, !dbg !949
  %39 = bitcast %struct.SERVER_IDLE_REC* %38 to i8*, !dbg !949
  %40 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %37, i8* %39), !dbg !950
  %41 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %9, align 8, !dbg !951
  %42 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %41, i32 0, i32 62, !dbg !952
  store %struct._GSList* %40, %struct._GSList** %42, align 8, !dbg !953
  %43 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %16, i32 0, i32 0, !dbg !954
  %44 = bitcast %struct.__va_list_tag* %43 to i8*, !dbg !954
  call void @llvm.va_end(i8* %44), !dbg !954
  %45 = load %struct.SERVER_IDLE_REC*, %struct.SERVER_IDLE_REC** %17, align 8, !dbg !955
  %46 = getelementptr inbounds %struct.SERVER_IDLE_REC, %struct.SERVER_IDLE_REC* %45, i32 0, i32 2, !dbg !956
  %47 = load i32, i32* %46, align 8, !dbg !956
  store i32 %47, i32* %8, align 4, !dbg !957
  br label %48, !dbg !957

; <label>:48:                                     ; preds = %24, %22
  %49 = load i32, i32* %8, align 4, !dbg !958
  ret i32 %49, !dbg !958
}

declare %struct._GSList* @g_slist_prepend(%struct._GSList*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @server_idle_insert_redir(%struct._IRC_SERVER_REC*, i8*, i32, i8*, i32, i8*, i32, i8*, ...) #0 !dbg !959 {
  %9 = alloca i32, align 4
  %10 = alloca %struct._IRC_SERVER_REC*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca [1 x %struct.__va_list_tag], align 16
  %19 = alloca %struct.SERVER_IDLE_REC*, align 8
  %20 = alloca i32, align 4
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %10, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %10, metadata !962, metadata !706), !dbg !963
  store i8* %1, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !964, metadata !706), !dbg !965
  store i32 %2, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !966, metadata !706), !dbg !967
  store i8* %3, i8** %13, align 8
  call void @llvm.dbg.declare(metadata i8** %13, metadata !968, metadata !706), !dbg !969
  store i32 %4, i32* %14, align 4
  call void @llvm.dbg.declare(metadata i32* %14, metadata !970, metadata !706), !dbg !971
  store i8* %5, i8** %15, align 8
  call void @llvm.dbg.declare(metadata i8** %15, metadata !972, metadata !706), !dbg !973
  store i32 %6, i32* %16, align 4
  call void @llvm.dbg.declare(metadata i32* %16, metadata !974, metadata !706), !dbg !975
  store i8* %7, i8** %17, align 8
  call void @llvm.dbg.declare(metadata i8** %17, metadata !976, metadata !706), !dbg !977
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %18, metadata !978, metadata !706), !dbg !979
  call void @llvm.dbg.declare(metadata %struct.SERVER_IDLE_REC** %19, metadata !980, metadata !706), !dbg !981
  call void @llvm.dbg.declare(metadata i32* %20, metadata !982, metadata !706), !dbg !983
  br label %21, !dbg !984, !llvm.loop !985

; <label>:21:                                     ; preds = %8
  %22 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %10, align 8, !dbg !986
  %23 = icmp ne %struct._IRC_SERVER_REC* %22, null, !dbg !990
  br i1 %23, label %24, label %25, !dbg !986

; <label>:24:                                     ; preds = %21
  br label %26, !dbg !991

; <label>:25:                                     ; preds = %21
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.server_idle_insert_redir, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)), !dbg !994
  store i32 -1, i32* %9, align 4, !dbg !997
  br label %73, !dbg !997

; <label>:26:                                     ; preds = %24
  br label %27, !dbg !998

; <label>:27:                                     ; preds = %26
  %28 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %18, i32 0, i32 0, !dbg !1000
  %29 = bitcast %struct.__va_list_tag* %28 to i8*, !dbg !1000
  call void @llvm.va_start(i8* %29), !dbg !1000
  %30 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %10, align 8, !dbg !1001
  %31 = load i32, i32* %12, align 4, !dbg !1002
  %32 = call %struct.SERVER_IDLE_REC* @server_idle_find_rec(%struct._IRC_SERVER_REC* %30, i32 %31), !dbg !1003
  store %struct.SERVER_IDLE_REC* %32, %struct.SERVER_IDLE_REC** %19, align 8, !dbg !1004
  %33 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %10, align 8, !dbg !1005
  %34 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %33, i32 0, i32 62, !dbg !1006
  %35 = load %struct._GSList*, %struct._GSList** %34, align 8, !dbg !1006
  %36 = load %struct.SERVER_IDLE_REC*, %struct.SERVER_IDLE_REC** %19, align 8, !dbg !1007
  %37 = bitcast %struct.SERVER_IDLE_REC* %36 to i8*, !dbg !1007
  %38 = call i32 @g_slist_index(%struct._GSList* %35, i8* %37), !dbg !1008
  store i32 %38, i32* %20, align 4, !dbg !1009
  %39 = load i8*, i8** %11, align 8, !dbg !1010
  %40 = load i8*, i8** %13, align 8, !dbg !1011
  %41 = load i32, i32* %14, align 4, !dbg !1012
  %42 = load i8*, i8** %15, align 8, !dbg !1013
  %43 = load i32, i32* %16, align 4, !dbg !1014
  %44 = load i8*, i8** %17, align 8, !dbg !1015
  %45 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %18, i32 0, i32 0, !dbg !1016
  %46 = call %struct.SERVER_IDLE_REC* @server_idle_create(i8* %39, i8* %40, i32 %41, i8* %42, i32 %43, i8* %44, %struct.__va_list_tag* %45), !dbg !1017
  store %struct.SERVER_IDLE_REC* %46, %struct.SERVER_IDLE_REC** %19, align 8, !dbg !1018
  %47 = load i32, i32* %20, align 4, !dbg !1019
  %48 = icmp slt i32 %47, 0, !dbg !1020
  br i1 %48, label %49, label %56, !dbg !1019

; <label>:49:                                     ; preds = %27
  %50 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %10, align 8, !dbg !1021
  %51 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %50, i32 0, i32 62, !dbg !1022
  %52 = load %struct._GSList*, %struct._GSList** %51, align 8, !dbg !1022
  %53 = load %struct.SERVER_IDLE_REC*, %struct.SERVER_IDLE_REC** %19, align 8, !dbg !1023
  %54 = bitcast %struct.SERVER_IDLE_REC* %53 to i8*, !dbg !1023
  %55 = call %struct._GSList* @g_slist_append(%struct._GSList* %52, i8* %54), !dbg !1024
  br label %64, !dbg !1025

; <label>:56:                                     ; preds = %27
  %57 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %10, align 8, !dbg !1027
  %58 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %57, i32 0, i32 62, !dbg !1028
  %59 = load %struct._GSList*, %struct._GSList** %58, align 8, !dbg !1028
  %60 = load %struct.SERVER_IDLE_REC*, %struct.SERVER_IDLE_REC** %19, align 8, !dbg !1029
  %61 = bitcast %struct.SERVER_IDLE_REC* %60 to i8*, !dbg !1029
  %62 = load i32, i32* %20, align 4, !dbg !1030
  %63 = call %struct._GSList* @g_slist_insert(%struct._GSList* %59, i8* %61, i32 %62), !dbg !1031
  br label %64, !dbg !1032

; <label>:64:                                     ; preds = %56, %49
  %65 = phi %struct._GSList* [ %55, %49 ], [ %63, %56 ], !dbg !1034
  %66 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %10, align 8, !dbg !1036
  %67 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %66, i32 0, i32 62, !dbg !1037
  store %struct._GSList* %65, %struct._GSList** %67, align 8, !dbg !1038
  %68 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %18, i32 0, i32 0, !dbg !1039
  %69 = bitcast %struct.__va_list_tag* %68 to i8*, !dbg !1039
  call void @llvm.va_end(i8* %69), !dbg !1039
  %70 = load %struct.SERVER_IDLE_REC*, %struct.SERVER_IDLE_REC** %19, align 8, !dbg !1040
  %71 = getelementptr inbounds %struct.SERVER_IDLE_REC, %struct.SERVER_IDLE_REC* %70, i32 0, i32 2, !dbg !1041
  %72 = load i32, i32* %71, align 8, !dbg !1041
  store i32 %72, i32* %9, align 4, !dbg !1042
  br label %73, !dbg !1042

; <label>:73:                                     ; preds = %64, %25
  %74 = load i32, i32* %9, align 4, !dbg !1043
  ret i32 %74, !dbg !1043
}

; Function Attrs: nounwind uwtable
define internal %struct.SERVER_IDLE_REC* @server_idle_find_rec(%struct._IRC_SERVER_REC*, i32) #0 !dbg !1044 {
  %3 = alloca %struct.SERVER_IDLE_REC*, align 8
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca %struct.SERVER_IDLE_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !1047, metadata !706), !dbg !1048
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1049, metadata !706), !dbg !1050
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !1051, metadata !706), !dbg !1052
  br label %8, !dbg !1053, !llvm.loop !1054

; <label>:8:                                      ; preds = %2
  %9 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1055
  %10 = icmp ne %struct._IRC_SERVER_REC* %9, null, !dbg !1059
  br i1 %10, label %11, label %12, !dbg !1055

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !1060

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.server_idle_find_rec, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)), !dbg !1063
  store %struct.SERVER_IDLE_REC* null, %struct.SERVER_IDLE_REC** %3, align 8, !dbg !1066
  br label %39, !dbg !1066

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !1067

; <label>:14:                                     ; preds = %13
  %15 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1069
  %16 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %15, i32 0, i32 62, !dbg !1071
  %17 = load %struct._GSList*, %struct._GSList** %16, align 8, !dbg !1071
  store %struct._GSList* %17, %struct._GSList** %6, align 8, !dbg !1072
  br label %18, !dbg !1073

; <label>:18:                                     ; preds = %34, %14
  %19 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1074
  %20 = icmp ne %struct._GSList* %19, null, !dbg !1077
  br i1 %20, label %21, label %38, !dbg !1078

; <label>:21:                                     ; preds = %18
  call void @llvm.dbg.declare(metadata %struct.SERVER_IDLE_REC** %7, metadata !1079, metadata !706), !dbg !1081
  %22 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1082
  %23 = getelementptr inbounds %struct._GSList, %struct._GSList* %22, i32 0, i32 0, !dbg !1083
  %24 = load i8*, i8** %23, align 8, !dbg !1083
  %25 = bitcast i8* %24 to %struct.SERVER_IDLE_REC*, !dbg !1082
  store %struct.SERVER_IDLE_REC* %25, %struct.SERVER_IDLE_REC** %7, align 8, !dbg !1081
  %26 = load %struct.SERVER_IDLE_REC*, %struct.SERVER_IDLE_REC** %7, align 8, !dbg !1084
  %27 = getelementptr inbounds %struct.SERVER_IDLE_REC, %struct.SERVER_IDLE_REC* %26, i32 0, i32 2, !dbg !1086
  %28 = load i32, i32* %27, align 8, !dbg !1086
  %29 = load i32, i32* %5, align 4, !dbg !1087
  %30 = icmp eq i32 %28, %29, !dbg !1088
  br i1 %30, label %31, label %33, !dbg !1089

; <label>:31:                                     ; preds = %21
  %32 = load %struct.SERVER_IDLE_REC*, %struct.SERVER_IDLE_REC** %7, align 8, !dbg !1090
  store %struct.SERVER_IDLE_REC* %32, %struct.SERVER_IDLE_REC** %3, align 8, !dbg !1091
  br label %39, !dbg !1091

; <label>:33:                                     ; preds = %21
  br label %34, !dbg !1092

; <label>:34:                                     ; preds = %33
  %35 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1093
  %36 = getelementptr inbounds %struct._GSList, %struct._GSList* %35, i32 0, i32 1, !dbg !1095
  %37 = load %struct._GSList*, %struct._GSList** %36, align 8, !dbg !1095
  store %struct._GSList* %37, %struct._GSList** %6, align 8, !dbg !1096
  br label %18, !dbg !1097, !llvm.loop !1098

; <label>:38:                                     ; preds = %18
  store %struct.SERVER_IDLE_REC* null, %struct.SERVER_IDLE_REC** %3, align 8, !dbg !1100
  br label %39, !dbg !1100

; <label>:39:                                     ; preds = %38, %31, %12
  %40 = load %struct.SERVER_IDLE_REC*, %struct.SERVER_IDLE_REC** %3, align 8, !dbg !1101
  ret %struct.SERVER_IDLE_REC* %40, !dbg !1101
}

declare i32 @g_slist_index(%struct._GSList*, i8*) #2

declare %struct._GSList* @g_slist_insert(%struct._GSList*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @server_idle_find(%struct._IRC_SERVER_REC*, i32) #0 !dbg !1102 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca i32, align 4
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1105, metadata !706), !dbg !1106
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1107, metadata !706), !dbg !1108
  %5 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1109
  %6 = load i32, i32* %4, align 4, !dbg !1110
  %7 = call %struct.SERVER_IDLE_REC* @server_idle_find_rec(%struct._IRC_SERVER_REC* %5, i32 %6), !dbg !1111
  %8 = icmp ne %struct.SERVER_IDLE_REC* %7, null, !dbg !1112
  %9 = zext i1 %8 to i32, !dbg !1112
  ret i32 %9, !dbg !1113
}

; Function Attrs: nounwind uwtable
define i32 @server_idle_remove(%struct._IRC_SERVER_REC*, i32) #0 !dbg !1114 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.SERVER_IDLE_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !1115, metadata !706), !dbg !1116
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1117, metadata !706), !dbg !1118
  call void @llvm.dbg.declare(metadata %struct.SERVER_IDLE_REC** %6, metadata !1119, metadata !706), !dbg !1120
  br label %7, !dbg !1121, !llvm.loop !1122

; <label>:7:                                      ; preds = %2
  %8 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1123
  %9 = icmp ne %struct._IRC_SERVER_REC* %8, null, !dbg !1127
  br i1 %9, label %10, label %11, !dbg !1123

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !1128

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.server_idle_remove, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)), !dbg !1131
  store i32 0, i32* %3, align 4, !dbg !1134
  br label %23, !dbg !1134

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !1135

; <label>:13:                                     ; preds = %12
  %14 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1137
  %15 = load i32, i32* %5, align 4, !dbg !1138
  %16 = call %struct.SERVER_IDLE_REC* @server_idle_find_rec(%struct._IRC_SERVER_REC* %14, i32 %15), !dbg !1139
  store %struct.SERVER_IDLE_REC* %16, %struct.SERVER_IDLE_REC** %6, align 8, !dbg !1140
  %17 = load %struct.SERVER_IDLE_REC*, %struct.SERVER_IDLE_REC** %6, align 8, !dbg !1141
  %18 = icmp eq %struct.SERVER_IDLE_REC* %17, null, !dbg !1143
  br i1 %18, label %19, label %20, !dbg !1144

; <label>:19:                                     ; preds = %13
  store i32 0, i32* %3, align 4, !dbg !1145
  br label %23, !dbg !1145

; <label>:20:                                     ; preds = %13
  %21 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1146
  %22 = load %struct.SERVER_IDLE_REC*, %struct.SERVER_IDLE_REC** %6, align 8, !dbg !1147
  call void @server_idle_destroy(%struct._IRC_SERVER_REC* %21, %struct.SERVER_IDLE_REC* %22), !dbg !1148
  store i32 1, i32* %3, align 4, !dbg !1149
  br label %23, !dbg !1149

; <label>:23:                                     ; preds = %20, %19, %11
  %24 = load i32, i32* %3, align 4, !dbg !1150
  ret i32 %24, !dbg !1150
}

; Function Attrs: nounwind uwtable
define internal void @server_idle_destroy(%struct._IRC_SERVER_REC*, %struct.SERVER_IDLE_REC*) #0 !dbg !1151 {
  %3 = alloca %struct._IRC_SERVER_REC*, align 8
  %4 = alloca %struct.SERVER_IDLE_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %3, metadata !1154, metadata !706), !dbg !1155
  store %struct.SERVER_IDLE_REC* %1, %struct.SERVER_IDLE_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.SERVER_IDLE_REC** %4, metadata !1156, metadata !706), !dbg !1157
  br label %5, !dbg !1158, !llvm.loop !1159

; <label>:5:                                      ; preds = %2
  %6 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1160
  %7 = icmp ne %struct._IRC_SERVER_REC* %6, null, !dbg !1164
  br i1 %7, label %8, label %9, !dbg !1160

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !1165

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.server_idle_destroy, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)), !dbg !1168
  br label %40, !dbg !1171

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !1172

; <label>:11:                                     ; preds = %10
  %12 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1174
  %13 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %12, i32 0, i32 62, !dbg !1175
  %14 = load %struct._GSList*, %struct._GSList** %13, align 8, !dbg !1175
  %15 = load %struct.SERVER_IDLE_REC*, %struct.SERVER_IDLE_REC** %4, align 8, !dbg !1176
  %16 = bitcast %struct.SERVER_IDLE_REC* %15 to i8*, !dbg !1176
  %17 = call %struct._GSList* @g_slist_remove(%struct._GSList* %14, i8* %16), !dbg !1177
  %18 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %3, align 8, !dbg !1178
  %19 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %18, i32 0, i32 62, !dbg !1179
  store %struct._GSList* %17, %struct._GSList** %19, align 8, !dbg !1180
  %20 = load %struct.SERVER_IDLE_REC*, %struct.SERVER_IDLE_REC** %4, align 8, !dbg !1181
  %21 = getelementptr inbounds %struct.SERVER_IDLE_REC, %struct.SERVER_IDLE_REC* %20, i32 0, i32 7, !dbg !1182
  %22 = load %struct._GSList*, %struct._GSList** %21, align 8, !dbg !1182
  call void @g_slist_foreach(%struct._GSList* %22, void (i8*, i8*)* bitcast (void (i8*)* @g_free to void (i8*, i8*)*), i8* null), !dbg !1183
  %23 = load %struct.SERVER_IDLE_REC*, %struct.SERVER_IDLE_REC** %4, align 8, !dbg !1184
  %24 = getelementptr inbounds %struct.SERVER_IDLE_REC, %struct.SERVER_IDLE_REC* %23, i32 0, i32 7, !dbg !1185
  %25 = load %struct._GSList*, %struct._GSList** %24, align 8, !dbg !1185
  call void @g_slist_free(%struct._GSList* %25), !dbg !1186
  %26 = load %struct.SERVER_IDLE_REC*, %struct.SERVER_IDLE_REC** %4, align 8, !dbg !1187
  %27 = getelementptr inbounds %struct.SERVER_IDLE_REC, %struct.SERVER_IDLE_REC* %26, i32 0, i32 1, !dbg !1188
  %28 = load i8*, i8** %27, align 8, !dbg !1188
  call void @g_free(i8* %28), !dbg !1189
  %29 = load %struct.SERVER_IDLE_REC*, %struct.SERVER_IDLE_REC** %4, align 8, !dbg !1190
  %30 = getelementptr inbounds %struct.SERVER_IDLE_REC, %struct.SERVER_IDLE_REC* %29, i32 0, i32 3, !dbg !1191
  %31 = load i8*, i8** %30, align 8, !dbg !1191
  call void @g_free(i8* %31), !dbg !1192
  %32 = load %struct.SERVER_IDLE_REC*, %struct.SERVER_IDLE_REC** %4, align 8, !dbg !1193
  %33 = getelementptr inbounds %struct.SERVER_IDLE_REC, %struct.SERVER_IDLE_REC* %32, i32 0, i32 6, !dbg !1194
  %34 = load i8*, i8** %33, align 8, !dbg !1194
  call void @g_free(i8* %34), !dbg !1195
  %35 = load %struct.SERVER_IDLE_REC*, %struct.SERVER_IDLE_REC** %4, align 8, !dbg !1196
  %36 = getelementptr inbounds %struct.SERVER_IDLE_REC, %struct.SERVER_IDLE_REC* %35, i32 0, i32 0, !dbg !1197
  %37 = load i8*, i8** %36, align 8, !dbg !1197
  call void @g_free(i8* %37), !dbg !1198
  %38 = load %struct.SERVER_IDLE_REC*, %struct.SERVER_IDLE_REC** %4, align 8, !dbg !1199
  %39 = bitcast %struct.SERVER_IDLE_REC* %38 to i8*, !dbg !1199
  call void @g_free(i8* %39), !dbg !1200
  br label %40, !dbg !1201

; <label>:40:                                     ; preds = %11, %9
  ret void, !dbg !1202
}

; Function Attrs: nounwind uwtable
define void @servers_idle_init() #0 !dbg !1204 {
  store i32 0, i32* @idlepos, align 4, !dbg !1205
  %1 = call i32 @g_timeout_add(i32 1000, i32 (i8*)* bitcast (i32 ()* @sig_idle_timeout to i32 (i8*)*), i8* null), !dbg !1206
  store i32 %1, i32* @idle_tag, align 4, !dbg !1207
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @sig_disconnected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1208
  ret void, !dbg !1209
}

declare i32 @g_timeout_add(i32, i32 (i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @sig_idle_timeout() #0 !dbg !1210 {
  %1 = alloca %struct._GSList*, align 8
  %2 = alloca %struct._IRC_SERVER_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %1, metadata !1213, metadata !706), !dbg !1214
  %3 = load %struct._GSList*, %struct._GSList** @servers, align 8, !dbg !1215
  store %struct._GSList* %3, %struct._GSList** %1, align 8, !dbg !1217
  br label %4, !dbg !1218

; <label>:4:                                      ; preds = %35, %0
  %5 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !1219
  %6 = icmp ne %struct._GSList* %5, null, !dbg !1222
  br i1 %6, label %7, label %39, !dbg !1223

; <label>:7:                                      ; preds = %4
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %2, metadata !1224, metadata !706), !dbg !1226
  %8 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !1227
  %9 = getelementptr inbounds %struct._GSList, %struct._GSList* %8, i32 0, i32 0, !dbg !1228
  %10 = load i8*, i8** %9, align 8, !dbg !1228
  %11 = bitcast i8* %10 to %struct._IRC_SERVER_REC*, !dbg !1227
  store %struct._IRC_SERVER_REC* %11, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1226
  %12 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1229
  %13 = bitcast %struct._IRC_SERVER_REC* %12 to i8*, !dbg !1229
  %14 = call i8* @module_check_cast(i8* %13, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0)), !dbg !1231
  %15 = bitcast i8* %14 to %struct._SERVER_REC*, !dbg !1232
  %16 = bitcast %struct._SERVER_REC* %15 to i8*, !dbg !1233
  %17 = call i8* @chat_protocol_check_cast(i8* %16, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0)), !dbg !1234
  %18 = bitcast i8* %17 to %struct._IRC_SERVER_REC*, !dbg !1236
  %19 = icmp ne %struct._IRC_SERVER_REC* %18, null, !dbg !1236
  br i1 %19, label %20, label %21, !dbg !1237

; <label>:20:                                     ; preds = %7
  br i1 false, label %34, label %22, !dbg !1238

; <label>:21:                                     ; preds = %7
  br i1 false, label %22, label %34, !dbg !1240

; <label>:22:                                     ; preds = %21, %20
  %23 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1242
  %24 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %23, i32 0, i32 62, !dbg !1243
  %25 = load %struct._GSList*, %struct._GSList** %24, align 8, !dbg !1243
  %26 = icmp ne %struct._GSList* %25, null, !dbg !1244
  br i1 %26, label %27, label %34, !dbg !1245

; <label>:27:                                     ; preds = %22
  %28 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1246
  %29 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %28, i32 0, i32 55, !dbg !1247
  %30 = load i32, i32* %29, align 4, !dbg !1247
  %31 = icmp eq i32 %30, 0, !dbg !1248
  br i1 %31, label %32, label %34, !dbg !1249

; <label>:32:                                     ; preds = %27
  %33 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1251
  call void @server_idle_next(%struct._IRC_SERVER_REC* %33), !dbg !1253
  br label %34, !dbg !1254

; <label>:34:                                     ; preds = %32, %27, %22, %21, %20
  br label %35, !dbg !1255

; <label>:35:                                     ; preds = %34
  %36 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !1256
  %37 = getelementptr inbounds %struct._GSList, %struct._GSList* %36, i32 0, i32 1, !dbg !1258
  %38 = load %struct._GSList*, %struct._GSList** %37, align 8, !dbg !1258
  store %struct._GSList* %38, %struct._GSList** %1, align 8, !dbg !1259
  br label %4, !dbg !1260, !llvm.loop !1261

; <label>:39:                                     ; preds = %4
  ret i32 1, !dbg !1263
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @sig_disconnected(%struct._IRC_SERVER_REC*) #0 !dbg !1264 {
  %2 = alloca %struct._IRC_SERVER_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %2, metadata !1267, metadata !706), !dbg !1268
  br label %3, !dbg !1269, !llvm.loop !1270

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1271
  %5 = icmp ne %struct._IRC_SERVER_REC* %4, null, !dbg !1275
  br i1 %5, label %6, label %7, !dbg !1271

; <label>:6:                                      ; preds = %3
  br label %8, !dbg !1276

; <label>:7:                                      ; preds = %3
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.sig_disconnected, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)), !dbg !1279
  br label %35, !dbg !1282

; <label>:8:                                      ; preds = %6
  br label %9, !dbg !1283

; <label>:9:                                      ; preds = %8
  %10 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1285
  %11 = bitcast %struct._IRC_SERVER_REC* %10 to i8*, !dbg !1285
  %12 = call i8* @module_check_cast(i8* %11, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0)), !dbg !1287
  %13 = bitcast i8* %12 to %struct._SERVER_REC*, !dbg !1288
  %14 = bitcast %struct._SERVER_REC* %13 to i8*, !dbg !1289
  %15 = call i8* @chat_protocol_check_cast(i8* %14, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0)), !dbg !1290
  %16 = bitcast i8* %15 to %struct._IRC_SERVER_REC*, !dbg !1292
  %17 = icmp ne %struct._IRC_SERVER_REC* %16, null, !dbg !1292
  br i1 %17, label %18, label %19, !dbg !1293

; <label>:18:                                     ; preds = %9
  br i1 false, label %20, label %21, !dbg !1294

; <label>:19:                                     ; preds = %9
  br i1 false, label %21, label %20, !dbg !1296

; <label>:20:                                     ; preds = %19, %18
  br label %35, !dbg !1298

; <label>:21:                                     ; preds = %19, %18
  br label %22, !dbg !1299

; <label>:22:                                     ; preds = %27, %21
  %23 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1300
  %24 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %23, i32 0, i32 62, !dbg !1302
  %25 = load %struct._GSList*, %struct._GSList** %24, align 8, !dbg !1302
  %26 = icmp ne %struct._GSList* %25, null, !dbg !1303
  br i1 %26, label %27, label %35, !dbg !1304

; <label>:27:                                     ; preds = %22
  %28 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1305
  %29 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1306
  %30 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %29, i32 0, i32 62, !dbg !1307
  %31 = load %struct._GSList*, %struct._GSList** %30, align 8, !dbg !1307
  %32 = getelementptr inbounds %struct._GSList, %struct._GSList* %31, i32 0, i32 0, !dbg !1308
  %33 = load i8*, i8** %32, align 8, !dbg !1308
  %34 = bitcast i8* %33 to %struct.SERVER_IDLE_REC*, !dbg !1306
  call void @server_idle_destroy(%struct._IRC_SERVER_REC* %28, %struct.SERVER_IDLE_REC* %34), !dbg !1309
  br label %22, !dbg !1310, !llvm.loop !1311

; <label>:35:                                     ; preds = %7, %20, %22
  ret void, !dbg !1312
}

; Function Attrs: nounwind uwtable
define void @servers_idle_deinit() #0 !dbg !1313 {
  %1 = load i32, i32* @idle_tag, align 4, !dbg !1314
  %2 = call i32 @g_source_remove(i32 %1), !dbg !1315
  call void @signal_remove_full(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*)* @sig_disconnected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1316
  ret void, !dbg !1317
}

declare i32 @g_source_remove(i32) #2

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare noalias i8* @g_malloc0_n(i64, i64) #2

declare noalias i8* @g_strdup(i8*) #2

declare void @g_log(i8*, i32, i8*, ...) #2

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #2

declare void @g_slist_foreach(%struct._GSList*, void (i8*, i8*)*, i8*) #2

declare void @g_free(i8*) #2

declare void @g_slist_free(%struct._GSList*) #2

declare i8* @chat_protocol_check_cast(i8*, i32, i8*) #2

declare i8* @module_check_cast(i8*, i32, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @server_idle_next(%struct._IRC_SERVER_REC*) #0 !dbg !1318 {
  %2 = alloca %struct._IRC_SERVER_REC*, align 8
  %3 = alloca %struct.SERVER_IDLE_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %2, metadata !1319, metadata !706), !dbg !1320
  call void @llvm.dbg.declare(metadata %struct.SERVER_IDLE_REC** %3, metadata !1321, metadata !706), !dbg !1322
  br label %4, !dbg !1323, !llvm.loop !1324

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1325
  %6 = icmp ne %struct._IRC_SERVER_REC* %5, null, !dbg !1329
  br i1 %6, label %7, label %8, !dbg !1325

; <label>:7:                                      ; preds = %4
  br label %9, !dbg !1330

; <label>:8:                                      ; preds = %4
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.server_idle_next, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)), !dbg !1333
  br label %54, !dbg !1336

; <label>:9:                                      ; preds = %7
  br label %10, !dbg !1337

; <label>:10:                                     ; preds = %9
  %11 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1339
  %12 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %11, i32 0, i32 62, !dbg !1341
  %13 = load %struct._GSList*, %struct._GSList** %12, align 8, !dbg !1341
  %14 = icmp eq %struct._GSList* %13, null, !dbg !1342
  br i1 %14, label %15, label %16, !dbg !1343

; <label>:15:                                     ; preds = %10
  br label %54, !dbg !1344

; <label>:16:                                     ; preds = %10
  %17 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1345
  %18 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %17, i32 0, i32 62, !dbg !1346
  %19 = load %struct._GSList*, %struct._GSList** %18, align 8, !dbg !1346
  %20 = getelementptr inbounds %struct._GSList, %struct._GSList* %19, i32 0, i32 0, !dbg !1347
  %21 = load i8*, i8** %20, align 8, !dbg !1347
  %22 = bitcast i8* %21 to %struct.SERVER_IDLE_REC*, !dbg !1345
  store %struct.SERVER_IDLE_REC* %22, %struct.SERVER_IDLE_REC** %3, align 8, !dbg !1348
  %23 = load %struct.SERVER_IDLE_REC*, %struct.SERVER_IDLE_REC** %3, align 8, !dbg !1349
  %24 = getelementptr inbounds %struct.SERVER_IDLE_REC, %struct.SERVER_IDLE_REC* %23, i32 0, i32 3, !dbg !1351
  %25 = load i8*, i8** %24, align 8, !dbg !1351
  %26 = icmp ne i8* %25, null, !dbg !1352
  br i1 %26, label %27, label %47, !dbg !1353

; <label>:27:                                     ; preds = %16
  %28 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1354
  %29 = load %struct.SERVER_IDLE_REC*, %struct.SERVER_IDLE_REC** %3, align 8, !dbg !1356
  %30 = getelementptr inbounds %struct.SERVER_IDLE_REC, %struct.SERVER_IDLE_REC* %29, i32 0, i32 3, !dbg !1357
  %31 = load i8*, i8** %30, align 8, !dbg !1357
  %32 = load %struct.SERVER_IDLE_REC*, %struct.SERVER_IDLE_REC** %3, align 8, !dbg !1358
  %33 = getelementptr inbounds %struct.SERVER_IDLE_REC, %struct.SERVER_IDLE_REC* %32, i32 0, i32 4, !dbg !1359
  %34 = load i32, i32* %33, align 8, !dbg !1359
  %35 = load %struct.SERVER_IDLE_REC*, %struct.SERVER_IDLE_REC** %3, align 8, !dbg !1360
  %36 = getelementptr inbounds %struct.SERVER_IDLE_REC, %struct.SERVER_IDLE_REC* %35, i32 0, i32 1, !dbg !1361
  %37 = load i8*, i8** %36, align 8, !dbg !1361
  %38 = load %struct.SERVER_IDLE_REC*, %struct.SERVER_IDLE_REC** %3, align 8, !dbg !1362
  %39 = getelementptr inbounds %struct.SERVER_IDLE_REC, %struct.SERVER_IDLE_REC* %38, i32 0, i32 5, !dbg !1363
  %40 = load i32, i32* %39, align 4, !dbg !1363
  %41 = load %struct.SERVER_IDLE_REC*, %struct.SERVER_IDLE_REC** %3, align 8, !dbg !1364
  %42 = getelementptr inbounds %struct.SERVER_IDLE_REC, %struct.SERVER_IDLE_REC* %41, i32 0, i32 6, !dbg !1365
  %43 = load i8*, i8** %42, align 8, !dbg !1365
  %44 = load %struct.SERVER_IDLE_REC*, %struct.SERVER_IDLE_REC** %3, align 8, !dbg !1366
  %45 = getelementptr inbounds %struct.SERVER_IDLE_REC, %struct.SERVER_IDLE_REC* %44, i32 0, i32 7, !dbg !1367
  %46 = load %struct._GSList*, %struct._GSList** %45, align 8, !dbg !1367
  call void @server_redirect_event_list(%struct._IRC_SERVER_REC* %28, i8* %31, i32 %34, i8* %37, i32 %40, i8* %43, %struct._GSList* %46), !dbg !1368
  br label %47, !dbg !1369

; <label>:47:                                     ; preds = %27, %16
  %48 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1370
  %49 = load %struct.SERVER_IDLE_REC*, %struct.SERVER_IDLE_REC** %3, align 8, !dbg !1371
  %50 = getelementptr inbounds %struct.SERVER_IDLE_REC, %struct.SERVER_IDLE_REC* %49, i32 0, i32 0, !dbg !1372
  %51 = load i8*, i8** %50, align 8, !dbg !1372
  call void @irc_send_cmd(%struct._IRC_SERVER_REC* %48, i8* %51), !dbg !1373
  %52 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !1374
  %53 = load %struct.SERVER_IDLE_REC*, %struct.SERVER_IDLE_REC** %3, align 8, !dbg !1375
  call void @server_idle_destroy(%struct._IRC_SERVER_REC* %52, %struct.SERVER_IDLE_REC* %53), !dbg !1376
  br label %54, !dbg !1377

; <label>:54:                                     ; preds = %47, %15, %8
  ret void, !dbg !1378
}

declare void @server_redirect_event_list(%struct._IRC_SERVER_REC*, i8*, i32, i8*, i32, i8*, %struct._GSList*) #2

declare void @irc_send_cmd(%struct._IRC_SERVER_REC*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!698, !699}
!llvm.ident = !{!700}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !47, globals: !695)
!1 = !DIFile(filename: "line157-servers-idle.o.i", directory: "/home/lichi/Desktop/irssi/task1")
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
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 51, size: 32, align: 32, elements: !37)
!36 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/irssi/task1")
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46}
!38 = !DIEnumerator(name: "G_LOG_FLAG_RECURSION", value: 1)
!39 = !DIEnumerator(name: "G_LOG_FLAG_FATAL", value: 2)
!40 = !DIEnumerator(name: "G_LOG_LEVEL_ERROR", value: 4)
!41 = !DIEnumerator(name: "G_LOG_LEVEL_CRITICAL", value: 8)
!42 = !DIEnumerator(name: "G_LOG_LEVEL_WARNING", value: 16)
!43 = !DIEnumerator(name: "G_LOG_LEVEL_MESSAGE", value: 32)
!44 = !DIEnumerator(name: "G_LOG_LEVEL_INFO", value: 64)
!45 = !DIEnumerator(name: "G_LOG_LEVEL_DEBUG", value: 128)
!46 = !DIEnumerator(name: "G_LOG_LEVEL_MASK", value: -4)
!47 = !{!48, !49, !53, !55, !63, !70, !91, !95, !388}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !51, line: 46, baseType: !52)
!51 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!52 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!57 = !DISubroutineType(types: !58)
!58 = !{!59, !62}
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !51, line: 50, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !51, line: 49, baseType: !61)
!61 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !51, line: 77, baseType: !48)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !64, line: 9, baseType: !65)
!64 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{null, !68, !68, !68, !68, !68, !68}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_IDLE_REC", file: !72, line: 38, baseType: !73)
!72 = !DIFile(filename: "servers-idle.c", directory: "/home/lichi/Desktop/irssi/task1")
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !72, line: 28, size: 448, align: 64, elements: !74)
!74 = !{!75, !77, !78, !79, !80, !81, !82, !83}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !73, file: !72, line: 29, baseType: !76, size: 64, align: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !73, file: !72, line: 30, baseType: !76, size: 64, align: 64, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !73, file: !72, line: 31, baseType: !61, size: 32, align: 32, offset: 128)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_cmd", scope: !73, file: !72, line: 33, baseType: !76, size: 64, align: 64, offset: 192)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !73, file: !72, line: 34, baseType: !61, size: 32, align: 32, offset: 256)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "remote", scope: !73, file: !72, line: 35, baseType: !61, size: 32, align: 32, offset: 288)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "failure_signal", scope: !73, file: !72, line: 36, baseType: !76, size: 64, align: 64, offset: 320)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "redirects", scope: !73, file: !72, line: 37, baseType: !84, size: 64, align: 64, offset: 384)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !86, line: 37, baseType: !87)
!86 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !86, line: 39, size: 128, align: 64, elements: !88)
!88 = !{!89, !90}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !87, file: !86, line: 41, baseType: !62, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !87, file: !86, line: 42, baseType: !84, size: 64, align: 64, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "GFunc", file: !51, line: 88, baseType: !92)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64, align: 64)
!93 = !DISubroutineType(types: !94)
!94 = !{null, !62, !62}
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64, align: 64)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_REC", file: !97, line: 6, baseType: !98)
!97 = !DIFile(filename: "irc.h", directory: "/home/lichi/Desktop/irssi/task1")
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_REC", file: !99, line: 42, size: 39168, align: 64, elements: !100)
!99 = !DIFile(filename: "irc-servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!100 = !{!101, !103, !104, !105, !333, !338, !339, !340, !341, !342, !343, !344, !345, !346, !350, !351, !355, !356, !357, !361, !366, !367, !368, !369, !370, !371, !372, !373, !380, !381, !382, !383, !384, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !692, !694}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !98, file: !102, line: 3, baseType: !61, size: 32, align: 32)
!102 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!103 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !98, file: !102, line: 4, baseType: !61, size: 32, align: 32, offset: 32)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !98, file: !102, line: 6, baseType: !61, size: 32, align: 32, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !98, file: !102, line: 8, baseType: !106, size: 64, align: 64, offset: 128)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64, align: 64)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_CONNECT_REC", file: !97, line: 5, baseType: !108)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_CONNECT_REC", file: !99, line: 24, size: 2496, align: 64, elements: !109)
!109 = !{!110, !112, !113, !114, !115, !116, !117, !118, !119, !121, !122, !123, !124, !125, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !108, file: !111, line: 3, baseType: !61, size: 32, align: 32)
!111 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!112 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !108, file: !111, line: 4, baseType: !61, size: 32, align: 32, offset: 32)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !108, file: !111, line: 6, baseType: !61, size: 32, align: 32, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !108, file: !111, line: 9, baseType: !76, size: 64, align: 64, offset: 128)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !108, file: !111, line: 10, baseType: !61, size: 32, align: 32, offset: 192)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !108, file: !111, line: 11, baseType: !76, size: 64, align: 64, offset: 256)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !108, file: !111, line: 11, baseType: !76, size: 64, align: 64, offset: 320)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !108, file: !111, line: 11, baseType: !76, size: 64, align: 64, offset: 384)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !108, file: !111, line: 13, baseType: !120, size: 16, align: 16, offset: 448)
!120 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !108, file: !111, line: 14, baseType: !76, size: 64, align: 64, offset: 512)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !108, file: !111, line: 15, baseType: !76, size: 64, align: 64, offset: 576)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !108, file: !111, line: 16, baseType: !61, size: 32, align: 32, offset: 640)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !108, file: !111, line: 17, baseType: !76, size: 64, align: 64, offset: 704)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !108, file: !111, line: 19, baseType: !126, size: 64, align: 64, offset: 768)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64, align: 64)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !128, line: 99, baseType: !129)
!128 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!129 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !128, line: 99, flags: DIFlagFwdDecl)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !108, file: !111, line: 19, baseType: !126, size: 64, align: 64, offset: 832)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !108, file: !111, line: 21, baseType: !76, size: 64, align: 64, offset: 896)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !108, file: !111, line: 22, baseType: !76, size: 64, align: 64, offset: 960)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !108, file: !111, line: 23, baseType: !76, size: 64, align: 64, offset: 1024)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !108, file: !111, line: 24, baseType: !76, size: 64, align: 64, offset: 1088)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !108, file: !111, line: 26, baseType: !76, size: 64, align: 64, offset: 1152)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !108, file: !111, line: 27, baseType: !76, size: 64, align: 64, offset: 1216)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !108, file: !111, line: 28, baseType: !76, size: 64, align: 64, offset: 1280)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !108, file: !111, line: 29, baseType: !76, size: 64, align: 64, offset: 1344)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !108, file: !111, line: 30, baseType: !76, size: 64, align: 64, offset: 1408)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !108, file: !111, line: 31, baseType: !76, size: 64, align: 64, offset: 1472)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !108, file: !111, line: 32, baseType: !76, size: 64, align: 64, offset: 1536)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !108, file: !111, line: 33, baseType: !76, size: 64, align: 64, offset: 1600)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !108, file: !111, line: 35, baseType: !144, size: 64, align: 64, offset: 1664)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64, align: 64)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !146)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !147)
!147 = !{!148, !149, !278, !279, !284, !285, !286, !287, !288, !297, !298, !299, !303, !304, !305, !306, !307, !308, !309, !310}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !146, file: !4, line: 100, baseType: !60, size: 32, align: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !146, file: !4, line: 101, baseType: !150, size: 64, align: 64, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, align: 64)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !152)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !153)
!153 = !{!154, !176, !182, !189, !193, !265, !269, !274}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !152, file: !4, line: 133, baseType: !155, size: 64, align: 64)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64, align: 64)
!156 = !DISubroutineType(types: !157)
!157 = !{!158, !144, !49, !159, !162, !163}
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !160, line: 66, baseType: !161)
!160 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!161 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64, align: 64)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64, align: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64, align: 64)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !166, line: 42, baseType: !167)
!166 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !166, line: 44, size: 128, align: 64, elements: !168)
!168 = !{!169, !174, !175}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !167, file: !166, line: 46, baseType: !170, size: 32, align: 32)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !171, line: 36, baseType: !172)
!171 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !160, line: 45, baseType: !173)
!173 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !167, file: !166, line: 47, baseType: !60, size: 32, align: 32, offset: 32)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !167, file: !166, line: 48, baseType: !49, size: 64, align: 64, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !152, file: !4, line: 138, baseType: !177, size: 64, align: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64, align: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{!158, !144, !180, !159, !162, !163}
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64, align: 64)
!181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !152, file: !4, line: 143, baseType: !183, size: 64, align: 64, offset: 128)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!158, !144, !186, !188, !163}
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !160, line: 51, baseType: !187)
!187 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !152, file: !4, line: 147, baseType: !190, size: 64, align: 64, offset: 192)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!158, !144, !163}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !152, file: !4, line: 149, baseType: !194, size: 64, align: 64, offset: 256)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64, align: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{!197, !144, !264}
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64, align: 64)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !199)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !200)
!200 = !{!201, !202, !218, !247, !249, !253, !254, !255, !256, !257, !258, !259, !260}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !199, file: !16, line: 174, baseType: !62, size: 64, align: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !199, file: !16, line: 175, baseType: !203, size: 64, align: 64, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64, align: 64)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !205)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !206)
!206 = !{!207, !211, !212}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !205, file: !16, line: 198, baseType: !208, size: 64, align: 64)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64, align: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{null, !62}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !205, file: !16, line: 199, baseType: !208, size: 64, align: 64, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !205, file: !16, line: 200, baseType: !213, size: 64, align: 64, offset: 128)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64, align: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{null, !62, !197, !216, !217}
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !199, file: !16, line: 177, baseType: !219, size: 64, align: 64, offset: 128)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64, align: 64)
!220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !222)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !223)
!223 = !{!224, !229, !233, !237, !241, !242}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !222, file: !16, line: 216, baseType: !225, size: 64, align: 64)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64, align: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{!59, !197, !228}
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !222, file: !16, line: 218, baseType: !230, size: 64, align: 64, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64, align: 64)
!231 = !DISubroutineType(types: !232)
!232 = !{!59, !197}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !222, file: !16, line: 219, baseType: !234, size: 64, align: 64, offset: 128)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64, align: 64)
!235 = !DISubroutineType(types: !236)
!236 = !{!59, !197, !55, !62}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !222, file: !16, line: 222, baseType: !238, size: 64, align: 64, offset: 192)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64, align: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{null, !197}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !222, file: !16, line: 226, baseType: !55, size: 64, align: 64, offset: 256)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !222, file: !16, line: 227, baseType: !243, size: 64, align: 64, offset: 320)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !244)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64, align: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{null}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !199, file: !16, line: 178, baseType: !248, size: 32, align: 32, offset: 192)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !51, line: 55, baseType: !173)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !199, file: !16, line: 180, baseType: !250, size: 64, align: 64, offset: 256)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64, align: 64)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !252)
!252 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !199, file: !16, line: 182, baseType: !60, size: 32, align: 32, offset: 320)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !199, file: !16, line: 183, baseType: !248, size: 32, align: 32, offset: 352)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !199, file: !16, line: 184, baseType: !248, size: 32, align: 32, offset: 384)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !199, file: !16, line: 186, baseType: !84, size: 64, align: 64, offset: 448)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !199, file: !16, line: 188, baseType: !197, size: 64, align: 64, offset: 512)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !199, file: !16, line: 189, baseType: !197, size: 64, align: 64, offset: 576)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !199, file: !16, line: 191, baseType: !76, size: 64, align: 64, offset: 640)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !199, file: !16, line: 193, baseType: !261, size: 64, align: 64, offset: 704)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64, align: 64)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !263)
!263 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !152, file: !4, line: 151, baseType: !266, size: 64, align: 64, offset: 320)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64, align: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{null, !144}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !152, file: !4, line: 152, baseType: !270, size: 64, align: 64, offset: 384)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!158, !144, !273, !163}
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !152, file: !4, line: 155, baseType: !275, size: 64, align: 64, offset: 448)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64, align: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!273, !144}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !146, file: !4, line: 103, baseType: !49, size: 64, align: 64, offset: 128)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !146, file: !4, line: 104, baseType: !280, size: 64, align: 64, offset: 192)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !281, line: 77, baseType: !282)
!281 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64, align: 64)
!283 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !281, line: 77, flags: DIFlagFwdDecl)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !146, file: !4, line: 105, baseType: !280, size: 64, align: 64, offset: 256)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !146, file: !4, line: 106, baseType: !49, size: 64, align: 64, offset: 320)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !146, file: !4, line: 107, baseType: !248, size: 32, align: 32, offset: 384)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !146, file: !4, line: 109, baseType: !159, size: 64, align: 64, offset: 448)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !146, file: !4, line: 110, baseType: !289, size: 64, align: 64, offset: 512)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !291, line: 39, baseType: !292)
!291 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !291, line: 41, size: 192, align: 64, elements: !293)
!293 = !{!294, !295, !296}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !292, file: !291, line: 43, baseType: !49, size: 64, align: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !292, file: !291, line: 44, baseType: !159, size: 64, align: 64, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !292, file: !291, line: 45, baseType: !159, size: 64, align: 64, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !146, file: !4, line: 111, baseType: !289, size: 64, align: 64, offset: 576)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !146, file: !4, line: 112, baseType: !289, size: 64, align: 64, offset: 640)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !146, file: !4, line: 113, baseType: !300, size: 48, align: 8, offset: 704)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 48, align: 8, elements: !301)
!301 = !{!302}
!302 = !DISubrange(count: 6)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !146, file: !4, line: 117, baseType: !248, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !146, file: !4, line: 118, baseType: !248, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !146, file: !4, line: 119, baseType: !248, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !146, file: !4, line: 120, baseType: !248, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !146, file: !4, line: 121, baseType: !248, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !146, file: !4, line: 122, baseType: !248, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !146, file: !4, line: 124, baseType: !62, size: 64, align: 64, offset: 768)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !146, file: !4, line: 125, baseType: !62, size: 64, align: 64, offset: 832)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !108, file: !111, line: 38, baseType: !173, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !108, file: !111, line: 39, baseType: !173, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !108, file: !111, line: 40, baseType: !173, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !108, file: !111, line: 41, baseType: !173, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !108, file: !111, line: 42, baseType: !173, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !108, file: !111, line: 43, baseType: !173, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !108, file: !111, line: 44, baseType: !173, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !108, file: !111, line: 45, baseType: !173, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !108, file: !111, line: 46, baseType: !76, size: 64, align: 64, offset: 1792)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !108, file: !111, line: 47, baseType: !76, size: 64, align: 64, offset: 1856)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !108, file: !99, line: 27, baseType: !76, size: 64, align: 64, offset: 1920)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_nick", scope: !108, file: !99, line: 28, baseType: !76, size: 64, align: 64, offset: 1984)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !108, file: !99, line: 30, baseType: !61, size: 32, align: 32, offset: 2048)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_username", scope: !108, file: !99, line: 31, baseType: !76, size: 64, align: 64, offset: 2112)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !108, file: !99, line: 32, baseType: !76, size: 64, align: 64, offset: 2176)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !108, file: !99, line: 34, baseType: !61, size: 32, align: 32, offset: 2240)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !108, file: !99, line: 35, baseType: !61, size: 32, align: 32, offset: 2272)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !108, file: !99, line: 36, baseType: !61, size: 32, align: 32, offset: 2304)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks", scope: !108, file: !99, line: 38, baseType: !61, size: 32, align: 32, offset: 2336)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !108, file: !99, line: 38, baseType: !61, size: 32, align: 32, offset: 2368)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes", scope: !108, file: !99, line: 38, baseType: !61, size: 32, align: 32, offset: 2400)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois", scope: !108, file: !99, line: 38, baseType: !61, size: 32, align: 32, offset: 2432)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !98, file: !102, line: 9, baseType: !334, size: 64, align: 64, offset: 192)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !335, line: 75, baseType: !336)
!335 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !337, line: 139, baseType: !187)
!337 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!338 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !98, file: !102, line: 10, baseType: !334, size: 64, align: 64, offset: 256)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !98, file: !102, line: 12, baseType: !76, size: 64, align: 64, offset: 320)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !98, file: !102, line: 13, baseType: !76, size: 64, align: 64, offset: 384)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !98, file: !102, line: 15, baseType: !173, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !98, file: !102, line: 16, baseType: !173, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !98, file: !102, line: 17, baseType: !173, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !98, file: !102, line: 18, baseType: !173, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !98, file: !102, line: 19, baseType: !173, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !98, file: !102, line: 21, baseType: !347, size: 64, align: 64, offset: 512)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64, align: 64)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !128, line: 102, baseType: !349)
!349 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !128, line: 102, flags: DIFlagFwdDecl)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !98, file: !102, line: 22, baseType: !61, size: 32, align: 32, offset: 576)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !98, file: !102, line: 25, baseType: !352, size: 128, align: 64, offset: 640)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 128, align: 64, elements: !353)
!353 = !{!354}
!354 = !DISubrange(count: 2)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !98, file: !102, line: 26, baseType: !61, size: 32, align: 32, offset: 768)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !98, file: !102, line: 27, baseType: !61, size: 32, align: 32, offset: 800)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !98, file: !102, line: 29, baseType: !358, size: 64, align: 64, offset: 832)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64, align: 64)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !128, line: 103, baseType: !360)
!360 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !128, line: 103, flags: DIFlagFwdDecl)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !98, file: !102, line: 30, baseType: !362, size: 64, align: 64, offset: 896)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64, align: 64)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !364, line: 37, baseType: !365)
!364 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!365 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !364, line: 37, flags: DIFlagFwdDecl)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !98, file: !102, line: 32, baseType: !76, size: 64, align: 64, offset: 960)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !98, file: !102, line: 33, baseType: !76, size: 64, align: 64, offset: 1024)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !98, file: !102, line: 34, baseType: !76, size: 64, align: 64, offset: 1088)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !98, file: !102, line: 35, baseType: !173, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !98, file: !102, line: 36, baseType: !173, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !98, file: !102, line: 37, baseType: !173, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !98, file: !102, line: 38, baseType: !173, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !98, file: !102, line: 40, baseType: !374, size: 128, align: 64, offset: 1216)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !51, line: 504, baseType: !375)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !51, line: 506, size: 128, align: 64, elements: !376)
!376 = !{!377, !379}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !375, file: !51, line: 508, baseType: !378, size: 64, align: 64)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !51, line: 48, baseType: !187)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !375, file: !51, line: 509, baseType: !378, size: 64, align: 64, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !98, file: !102, line: 41, baseType: !334, size: 64, align: 64, offset: 1344)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !98, file: !102, line: 42, baseType: !61, size: 32, align: 32, offset: 1408)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !98, file: !102, line: 44, baseType: !84, size: 64, align: 64, offset: 1472)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !98, file: !102, line: 45, baseType: !84, size: 64, align: 64, offset: 1536)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !98, file: !102, line: 53, baseType: !385, size: 64, align: 64, offset: 1600)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64, align: 64)
!386 = !DISubroutineType(types: !387)
!387 = !{null, !388, !53, !61}
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64, align: 64)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !128, line: 107, baseType: !390)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !391, line: 30, size: 2240, align: 64, elements: !392)
!391 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!392 = !{!393, !394, !395, !396, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !472, !476, !480, !484, !489, !568, !575, !579}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !390, file: !102, line: 3, baseType: !61, size: 32, align: 32)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !390, file: !102, line: 4, baseType: !61, size: 32, align: 32, offset: 32)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !390, file: !102, line: 6, baseType: !61, size: 32, align: 32, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !390, file: !102, line: 8, baseType: !397, size: 64, align: 64, offset: 128)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64, align: 64)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !128, line: 113, baseType: !399)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !391, line: 25, size: 1920, align: 64, elements: !400)
!400 = !{!401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !399, file: !111, line: 3, baseType: !61, size: 32, align: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !399, file: !111, line: 4, baseType: !61, size: 32, align: 32, offset: 32)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !399, file: !111, line: 6, baseType: !61, size: 32, align: 32, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !399, file: !111, line: 9, baseType: !76, size: 64, align: 64, offset: 128)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !399, file: !111, line: 10, baseType: !61, size: 32, align: 32, offset: 192)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !399, file: !111, line: 11, baseType: !76, size: 64, align: 64, offset: 256)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !399, file: !111, line: 11, baseType: !76, size: 64, align: 64, offset: 320)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !399, file: !111, line: 11, baseType: !76, size: 64, align: 64, offset: 384)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !399, file: !111, line: 13, baseType: !120, size: 16, align: 16, offset: 448)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !399, file: !111, line: 14, baseType: !76, size: 64, align: 64, offset: 512)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !399, file: !111, line: 15, baseType: !76, size: 64, align: 64, offset: 576)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !399, file: !111, line: 16, baseType: !61, size: 32, align: 32, offset: 640)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !399, file: !111, line: 17, baseType: !76, size: 64, align: 64, offset: 704)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !399, file: !111, line: 19, baseType: !126, size: 64, align: 64, offset: 768)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !399, file: !111, line: 19, baseType: !126, size: 64, align: 64, offset: 832)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !399, file: !111, line: 21, baseType: !76, size: 64, align: 64, offset: 896)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !399, file: !111, line: 22, baseType: !76, size: 64, align: 64, offset: 960)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !399, file: !111, line: 23, baseType: !76, size: 64, align: 64, offset: 1024)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !399, file: !111, line: 24, baseType: !76, size: 64, align: 64, offset: 1088)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !399, file: !111, line: 26, baseType: !76, size: 64, align: 64, offset: 1152)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !399, file: !111, line: 27, baseType: !76, size: 64, align: 64, offset: 1216)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !399, file: !111, line: 28, baseType: !76, size: 64, align: 64, offset: 1280)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !399, file: !111, line: 29, baseType: !76, size: 64, align: 64, offset: 1344)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !399, file: !111, line: 30, baseType: !76, size: 64, align: 64, offset: 1408)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !399, file: !111, line: 31, baseType: !76, size: 64, align: 64, offset: 1472)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !399, file: !111, line: 32, baseType: !76, size: 64, align: 64, offset: 1536)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !399, file: !111, line: 33, baseType: !76, size: 64, align: 64, offset: 1600)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !399, file: !111, line: 35, baseType: !144, size: 64, align: 64, offset: 1664)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !399, file: !111, line: 38, baseType: !173, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !399, file: !111, line: 39, baseType: !173, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !399, file: !111, line: 40, baseType: !173, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !399, file: !111, line: 41, baseType: !173, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !399, file: !111, line: 42, baseType: !173, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !399, file: !111, line: 43, baseType: !173, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !399, file: !111, line: 44, baseType: !173, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !399, file: !111, line: 45, baseType: !173, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !399, file: !111, line: 46, baseType: !76, size: 64, align: 64, offset: 1792)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !399, file: !111, line: 47, baseType: !76, size: 64, align: 64, offset: 1856)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !390, file: !102, line: 9, baseType: !334, size: 64, align: 64, offset: 192)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !390, file: !102, line: 10, baseType: !334, size: 64, align: 64, offset: 256)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !390, file: !102, line: 12, baseType: !76, size: 64, align: 64, offset: 320)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !390, file: !102, line: 13, baseType: !76, size: 64, align: 64, offset: 384)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !390, file: !102, line: 15, baseType: !173, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !390, file: !102, line: 16, baseType: !173, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !390, file: !102, line: 17, baseType: !173, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !390, file: !102, line: 18, baseType: !173, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !390, file: !102, line: 19, baseType: !173, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !390, file: !102, line: 21, baseType: !347, size: 64, align: 64, offset: 512)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !390, file: !102, line: 22, baseType: !61, size: 32, align: 32, offset: 576)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !390, file: !102, line: 25, baseType: !352, size: 128, align: 64, offset: 640)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !390, file: !102, line: 26, baseType: !61, size: 32, align: 32, offset: 768)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !390, file: !102, line: 27, baseType: !61, size: 32, align: 32, offset: 800)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !390, file: !102, line: 29, baseType: !358, size: 64, align: 64, offset: 832)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !390, file: !102, line: 30, baseType: !362, size: 64, align: 64, offset: 896)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !390, file: !102, line: 32, baseType: !76, size: 64, align: 64, offset: 960)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !390, file: !102, line: 33, baseType: !76, size: 64, align: 64, offset: 1024)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !390, file: !102, line: 34, baseType: !76, size: 64, align: 64, offset: 1088)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !390, file: !102, line: 35, baseType: !173, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !390, file: !102, line: 36, baseType: !173, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !390, file: !102, line: 37, baseType: !173, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !390, file: !102, line: 38, baseType: !173, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !390, file: !102, line: 40, baseType: !374, size: 128, align: 64, offset: 1216)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !390, file: !102, line: 41, baseType: !334, size: 64, align: 64, offset: 1344)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !390, file: !102, line: 42, baseType: !61, size: 32, align: 32, offset: 1408)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !390, file: !102, line: 44, baseType: !84, size: 64, align: 64, offset: 1472)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !390, file: !102, line: 45, baseType: !84, size: 64, align: 64, offset: 1536)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !390, file: !102, line: 53, baseType: !385, size: 64, align: 64, offset: 1600)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !390, file: !102, line: 55, baseType: !469, size: 64, align: 64, offset: 1664)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64, align: 64)
!470 = !DISubroutineType(types: !471)
!471 = !{!61, !388, !52}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !390, file: !102, line: 57, baseType: !473, size: 64, align: 64, offset: 1728)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64, align: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{!61, !388, !53}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !390, file: !102, line: 60, baseType: !477, size: 64, align: 64, offset: 1792)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64, align: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{!53, !388}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !390, file: !102, line: 62, baseType: !481, size: 64, align: 64, offset: 1856)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64, align: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{null, !388, !53, !53, !61}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !390, file: !102, line: 65, baseType: !485, size: 64, align: 64, offset: 1920)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64, align: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{!488, !388, !53, !53}
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64, align: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !390, file: !102, line: 69, baseType: !490, size: 64, align: 64, offset: 1984)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64, align: 64)
!491 = !DISubroutineType(types: !492)
!492 = !{!493, !388, !53}
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64, align: 64)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !128, line: 109, baseType: !495)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !496, line: 15, size: 1408, align: 64, elements: !497)
!496 = !DIFile(filename: "../../../src/core/channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!497 = !{!498, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !516, !520, !522, !523, !524, !525, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !495, file: !499, line: 3, baseType: !61, size: 32, align: 32)
!499 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!500 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !495, file: !499, line: 4, baseType: !61, size: 32, align: 32, offset: 32)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !495, file: !499, line: 5, baseType: !362, size: 64, align: 64, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !495, file: !499, line: 7, baseType: !48, size: 64, align: 64, offset: 128)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !495, file: !499, line: 8, baseType: !388, size: 64, align: 64, offset: 192)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !495, file: !499, line: 9, baseType: !76, size: 64, align: 64, offset: 256)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !495, file: !499, line: 10, baseType: !76, size: 64, align: 64, offset: 320)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !495, file: !499, line: 11, baseType: !334, size: 64, align: 64, offset: 384)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !495, file: !499, line: 12, baseType: !61, size: 32, align: 32, offset: 448)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !495, file: !499, line: 13, baseType: !76, size: 64, align: 64, offset: 512)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !495, file: !499, line: 15, baseType: !510, size: 64, align: 64, offset: 576)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64, align: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{null, !513}
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64, align: 64)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !128, line: 108, baseType: !515)
!515 = !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !128, line: 108, flags: DIFlagFwdDecl)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !495, file: !499, line: 17, baseType: !517, size: 64, align: 64, offset: 640)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64, align: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{!53, !513}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !495, file: !521, line: 5, baseType: !76, size: 64, align: 64, offset: 704)
!521 = !DIFile(filename: "../../../src/core/channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!522 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !495, file: !521, line: 6, baseType: !76, size: 64, align: 64, offset: 768)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !495, file: !521, line: 7, baseType: !334, size: 64, align: 64, offset: 832)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !495, file: !521, line: 9, baseType: !362, size: 64, align: 64, offset: 896)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !495, file: !521, line: 10, baseType: !526, size: 64, align: 64, offset: 960)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64, align: 64)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !128, line: 111, baseType: !528)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !529, line: 13, size: 576, align: 64, elements: !530)
!529 = !DIFile(filename: "../../../src/core/nicklist.h", directory: "/home/lichi/Desktop/irssi/task1")
!530 = !{!531, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !549, !550}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !528, file: !532, line: 3, baseType: !61, size: 32, align: 32)
!532 = !DIFile(filename: "../../../src/core/nick-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!533 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !528, file: !532, line: 4, baseType: !61, size: 32, align: 32, offset: 32)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "last_check", scope: !528, file: !532, line: 6, baseType: !334, size: 64, align: 64, offset: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !528, file: !532, line: 8, baseType: !76, size: 64, align: 64, offset: 128)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !528, file: !532, line: 9, baseType: !76, size: 64, align: 64, offset: 192)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !528, file: !532, line: 10, baseType: !76, size: 64, align: 64, offset: 256)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "hops", scope: !528, file: !532, line: 11, baseType: !61, size: 32, align: 32, offset: 320)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "gone", scope: !528, file: !532, line: 14, baseType: !173, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "serverop", scope: !528, file: !532, line: 15, baseType: !173, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "send_massjoin", scope: !528, file: !532, line: 18, baseType: !173, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !528, file: !532, line: 19, baseType: !173, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !528, file: !532, line: 20, baseType: !173, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !528, file: !532, line: 21, baseType: !173, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !528, file: !532, line: 22, baseType: !546, size: 64, align: 8, offset: 360)
!546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 64, align: 8, elements: !547)
!547 = !{!548}
!548 = !DISubrange(count: 8)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !528, file: !532, line: 26, baseType: !48, size: 64, align: 64, offset: 448)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !528, file: !532, line: 28, baseType: !526, size: 64, align: 64, offset: 512)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !495, file: !521, line: 12, baseType: !173, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !495, file: !521, line: 13, baseType: !76, size: 64, align: 64, offset: 1088)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !495, file: !521, line: 14, baseType: !61, size: 32, align: 32, offset: 1152)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !495, file: !521, line: 15, baseType: !76, size: 64, align: 64, offset: 1216)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !495, file: !521, line: 17, baseType: !173, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !495, file: !521, line: 18, baseType: !173, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !495, file: !521, line: 19, baseType: !173, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !495, file: !521, line: 20, baseType: !173, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !495, file: !521, line: 22, baseType: !173, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !495, file: !521, line: 23, baseType: !173, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !495, file: !521, line: 24, baseType: !173, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !495, file: !521, line: 25, baseType: !173, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !495, file: !521, line: 26, baseType: !173, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !495, file: !521, line: 31, baseType: !565, size: 64, align: 64, offset: 1344)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64, align: 64)
!566 = !DISubroutineType(types: !567)
!567 = !{!76, !493}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !390, file: !102, line: 70, baseType: !569, size: 64, align: 64, offset: 2048)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64, align: 64)
!570 = !DISubroutineType(types: !571)
!571 = !{!572, !388, !53}
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64, align: 64)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !128, line: 110, baseType: !574)
!574 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !128, line: 110, flags: DIFlagFwdDecl)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !390, file: !102, line: 71, baseType: !576, size: 64, align: 64, offset: 2112)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64, align: 64)
!577 = !DISubroutineType(types: !578)
!578 = !{!61, !53, !53}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !390, file: !102, line: 73, baseType: !576, size: 64, align: 64, offset: 2176)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !98, file: !102, line: 55, baseType: !469, size: 64, align: 64, offset: 1664)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !98, file: !102, line: 57, baseType: !473, size: 64, align: 64, offset: 1728)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !98, file: !102, line: 60, baseType: !477, size: 64, align: 64, offset: 1792)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !98, file: !102, line: 62, baseType: !481, size: 64, align: 64, offset: 1856)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !98, file: !102, line: 65, baseType: !485, size: 64, align: 64, offset: 1920)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !98, file: !102, line: 69, baseType: !490, size: 64, align: 64, offset: 1984)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !98, file: !102, line: 70, baseType: !569, size: 64, align: 64, offset: 2048)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !98, file: !102, line: 71, baseType: !576, size: 64, align: 64, offset: 2112)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !98, file: !102, line: 73, baseType: !576, size: 64, align: 64, offset: 2176)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "redirects", scope: !98, file: !99, line: 46, baseType: !84, size: 64, align: 64, offset: 2240)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_queue", scope: !98, file: !99, line: 47, baseType: !84, size: 64, align: 64, offset: 2304)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_next", scope: !98, file: !99, line: 48, baseType: !592, size: 64, align: 64, offset: 2368)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64, align: 64)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "REDIRECT_REC", file: !97, line: 8, baseType: !594)
!594 = !DICompositeType(tag: DW_TAG_structure_type, name: "_REDIRECT_REC", file: !97, line: 8, flags: DIFlagFwdDecl)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_active", scope: !98, file: !99, line: 49, baseType: !84, size: 64, align: 64, offset: 2432)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "last_nick", scope: !98, file: !99, line: 51, baseType: !76, size: 64, align: 64, offset: 2496)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !98, file: !99, line: 53, baseType: !76, size: 64, align: 64, offset: 2560)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !98, file: !99, line: 54, baseType: !76, size: 64, align: 64, offset: 2624)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "wanted_usermode", scope: !98, file: !99, line: 55, baseType: !76, size: 64, align: 64, offset: 2688)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "userhost", scope: !98, file: !99, line: 56, baseType: !76, size: 64, align: 64, offset: 2752)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "channels_formed", scope: !98, file: !99, line: 57, baseType: !61, size: 32, align: 32, offset: 2816)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "whois_found", scope: !98, file: !99, line: 59, baseType: !173, size: 1, align: 32, offset: 2848, flags: DIFlagBitField, extraData: i64 2848)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "whowas_found", scope: !98, file: !99, line: 60, baseType: !173, size: 1, align: 32, offset: 2849, flags: DIFlagBitField, extraData: i64 2848)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "emode_known", scope: !98, file: !99, line: 62, baseType: !173, size: 1, align: 32, offset: 2850, flags: DIFlagBitField, extraData: i64 2848)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_mode", scope: !98, file: !99, line: 63, baseType: !173, size: 1, align: 32, offset: 2851, flags: DIFlagBitField, extraData: i64 2848)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_who", scope: !98, file: !99, line: 64, baseType: !173, size: 1, align: 32, offset: 2852, flags: DIFlagBitField, extraData: i64 2848)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "one_endofwho", scope: !98, file: !99, line: 65, baseType: !173, size: 1, align: 32, offset: 2853, flags: DIFlagBitField, extraData: i64 2848)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "disable_lag", scope: !98, file: !99, line: 66, baseType: !173, size: 1, align: 32, offset: 2854, flags: DIFlagBitField, extraData: i64 2848)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "nick_collision", scope: !98, file: !99, line: 67, baseType: !173, size: 1, align: 32, offset: 2855, flags: DIFlagBitField, extraData: i64 2848)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "motd_got", scope: !98, file: !99, line: 68, baseType: !173, size: 1, align: 32, offset: 2856, flags: DIFlagBitField, extraData: i64 2848)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "isupport_sent", scope: !98, file: !99, line: 69, baseType: !173, size: 1, align: 32, offset: 2857, flags: DIFlagBitField, extraData: i64 2848)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "cap_complete", scope: !98, file: !99, line: 70, baseType: !173, size: 1, align: 32, offset: 2858, flags: DIFlagBitField, extraData: i64 2848)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "cap_in_multiline", scope: !98, file: !99, line: 71, baseType: !173, size: 1, align: 32, offset: 2859, flags: DIFlagBitField, extraData: i64 2848)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_success", scope: !98, file: !99, line: 72, baseType: !173, size: 1, align: 32, offset: 2860, flags: DIFlagBitField, extraData: i64 2848)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks_in_cmd", scope: !98, file: !99, line: 74, baseType: !61, size: 32, align: 32, offset: 2880)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes_in_cmd", scope: !98, file: !99, line: 75, baseType: !61, size: 32, align: 32, offset: 2912)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois_in_cmd", scope: !98, file: !99, line: 76, baseType: !61, size: 32, align: 32, offset: 2944)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs_in_cmd", scope: !98, file: !99, line: 77, baseType: !61, size: 32, align: 32, offset: 2976)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "cap_supported", scope: !98, file: !99, line: 79, baseType: !362, size: 64, align: 64, offset: 3008)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "cap_active", scope: !98, file: !99, line: 80, baseType: !84, size: 64, align: 64, offset: 3072)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "cap_queue", scope: !98, file: !99, line: 81, baseType: !84, size: 64, align: 64, offset: 3136)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_buffer", scope: !98, file: !99, line: 83, baseType: !289, size: 64, align: 64, offset: 3200)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_timeout", scope: !98, file: !99, line: 84, baseType: !248, size: 32, align: 32, offset: 3264)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcount", scope: !98, file: !99, line: 87, baseType: !61, size: 32, align: 32, offset: 3296)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "cmdqueue", scope: !98, file: !99, line: 91, baseType: !84, size: 64, align: 64, offset: 3328)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "wait_cmd", scope: !98, file: !99, line: 92, baseType: !374, size: 128, align: 64, offset: 3392)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd", scope: !98, file: !99, line: 93, baseType: !374, size: 128, align: 64, offset: 3520)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !98, file: !99, line: 95, baseType: !61, size: 32, align: 32, offset: 3648)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !98, file: !99, line: 96, baseType: !61, size: 32, align: 32, offset: 3680)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !98, file: !99, line: 97, baseType: !61, size: 32, align: 32, offset: 3712)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "idles", scope: !98, file: !99, line: 100, baseType: !84, size: 64, align: 64, offset: 3776)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "ctcpqueue", scope: !98, file: !99, line: 103, baseType: !84, size: 64, align: 64, offset: 3840)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "knockoutlist", scope: !98, file: !99, line: 106, baseType: !84, size: 64, align: 64, offset: 3904)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "splits", scope: !98, file: !99, line: 108, baseType: !362, size: 64, align: 64, offset: 3968)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "split_servers", scope: !98, file: !99, line: 109, baseType: !84, size: 64, align: 64, offset: 4032)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "rejoin_channels", scope: !98, file: !99, line: 111, baseType: !84, size: 64, align: 64, offset: 4096)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "chanqueries", scope: !98, file: !99, line: 114, baseType: !48, size: 64, align: 64, offset: 4160)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "isupport", scope: !98, file: !99, line: 116, baseType: !362, size: 64, align: 64, offset: 4224)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !98, file: !99, line: 117, baseType: !640, size: 32768, align: 64, offset: 4288)
!640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !641, size: 32768, align: 64, elements: !690)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "modes_type", file: !642, line: 10, size: 128, align: 64, elements: !643)
!642 = !DIFile(filename: "modes.h", directory: "/home/lichi/Desktop/irssi/task1")
!643 = !{!644, !689}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !641, file: !642, line: 11, baseType: !645, size: 64, align: 64)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64, align: 64)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_func_t", file: !642, line: 7, baseType: !647)
!647 = !DISubroutineType(types: !648)
!648 = !{null, !649, !53, !52, !52, !76, !289}
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64, align: 64)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_CHANNEL_REC", file: !97, line: 7, baseType: !651)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_CHANNEL_REC", file: !652, line: 15, size: 1600, align: 64, elements: !653)
!652 = !DIFile(filename: "irc-channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!653 = !{!654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !651, file: !499, line: 3, baseType: !61, size: 32, align: 32)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !651, file: !499, line: 4, baseType: !61, size: 32, align: 32, offset: 32)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !651, file: !499, line: 5, baseType: !362, size: 64, align: 64, offset: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !651, file: !499, line: 7, baseType: !48, size: 64, align: 64, offset: 128)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !651, file: !499, line: 8, baseType: !95, size: 64, align: 64, offset: 192)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !651, file: !499, line: 9, baseType: !76, size: 64, align: 64, offset: 256)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !651, file: !499, line: 10, baseType: !76, size: 64, align: 64, offset: 320)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !651, file: !499, line: 11, baseType: !334, size: 64, align: 64, offset: 384)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !651, file: !499, line: 12, baseType: !61, size: 32, align: 32, offset: 448)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !651, file: !499, line: 13, baseType: !76, size: 64, align: 64, offset: 512)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !651, file: !499, line: 15, baseType: !510, size: 64, align: 64, offset: 576)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !651, file: !499, line: 17, baseType: !517, size: 64, align: 64, offset: 640)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !651, file: !521, line: 5, baseType: !76, size: 64, align: 64, offset: 704)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !651, file: !521, line: 6, baseType: !76, size: 64, align: 64, offset: 768)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !651, file: !521, line: 7, baseType: !334, size: 64, align: 64, offset: 832)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !651, file: !521, line: 9, baseType: !362, size: 64, align: 64, offset: 896)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !651, file: !521, line: 10, baseType: !526, size: 64, align: 64, offset: 960)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !651, file: !521, line: 12, baseType: !173, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !651, file: !521, line: 13, baseType: !76, size: 64, align: 64, offset: 1088)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !651, file: !521, line: 14, baseType: !61, size: 32, align: 32, offset: 1152)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !651, file: !521, line: 15, baseType: !76, size: 64, align: 64, offset: 1216)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !651, file: !521, line: 17, baseType: !173, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !651, file: !521, line: 18, baseType: !173, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !651, file: !521, line: 19, baseType: !173, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !651, file: !521, line: 20, baseType: !173, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !651, file: !521, line: 22, baseType: !173, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !651, file: !521, line: 23, baseType: !173, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !651, file: !521, line: 24, baseType: !173, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !651, file: !521, line: 25, baseType: !173, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !651, file: !521, line: 26, baseType: !173, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !651, file: !521, line: 31, baseType: !565, size: 64, align: 64, offset: 1344)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "banlist", scope: !651, file: !652, line: 18, baseType: !84, size: 64, align: 64, offset: 1408)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "massjoin_start", scope: !651, file: !652, line: 20, baseType: !334, size: 64, align: 64, offset: 1472)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "massjoins", scope: !651, file: !652, line: 21, baseType: !61, size: 32, align: 32, offset: 1536)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "last_massjoins", scope: !651, file: !652, line: 22, baseType: !61, size: 32, align: 32, offset: 1568)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !641, file: !642, line: 12, baseType: !52, size: 8, align: 8, offset: 64)
!690 = !{!691}
!691 = !DISubrange(count: 256)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !98, file: !99, line: 118, baseType: !693, size: 2048, align: 8, offset: 37056)
!693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 2048, align: 8, elements: !690)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "nick_comp_func", scope: !98, file: !99, line: 120, baseType: !576, size: 64, align: 64, offset: 39104)
!695 = !{!696, !697}
!696 = distinct !DIGlobalVariable(name: "idle_tag", scope: !0, file: !72, line: 40, type: !61, isLocal: true, isDefinition: true, variable: i32* @idle_tag)
!697 = distinct !DIGlobalVariable(name: "idlepos", scope: !0, file: !72, line: 40, type: !61, isLocal: true, isDefinition: true, variable: i32* @idlepos)
!698 = !{i32 2, !"Dwarf Version", i32 4}
!699 = !{i32 2, !"Debug Info Version", i32 3}
!700 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!701 = distinct !DISubprogram(name: "server_idle_add_redir", scope: !72, file: !72, line: 98, type: !702, isLocal: false, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !704)
!702 = !DISubroutineType(types: !703)
!703 = !{!61, !95, !53, !53, !61, !53, !61, !53, null}
!704 = !{}
!705 = !DILocalVariable(name: "server", arg: 1, scope: !701, file: !72, line: 98, type: !95)
!706 = !DIExpression()
!707 = !DILocation(line: 98, column: 43, scope: !701)
!708 = !DILocalVariable(name: "cmd", arg: 2, scope: !701, file: !72, line: 98, type: !53)
!709 = !DILocation(line: 98, column: 63, scope: !701)
!710 = !DILocalVariable(name: "redirect_cmd", arg: 3, scope: !701, file: !72, line: 99, type: !53)
!711 = !DILocation(line: 99, column: 18, scope: !701)
!712 = !DILocalVariable(name: "count", arg: 4, scope: !701, file: !72, line: 99, type: !61)
!713 = !DILocation(line: 99, column: 36, scope: !701)
!714 = !DILocalVariable(name: "arg", arg: 5, scope: !701, file: !72, line: 99, type: !53)
!715 = !DILocation(line: 99, column: 55, scope: !701)
!716 = !DILocalVariable(name: "remote", arg: 6, scope: !701, file: !72, line: 100, type: !61)
!717 = !DILocation(line: 100, column: 10, scope: !701)
!718 = !DILocalVariable(name: "failure_signal", arg: 7, scope: !701, file: !72, line: 100, type: !53)
!719 = !DILocation(line: 100, column: 30, scope: !701)
!720 = !DILocalVariable(name: "va", scope: !701, file: !72, line: 102, type: !721)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !722, line: 79, baseType: !723)
!722 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/irssi/task1")
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !724, line: 40, baseType: !725)
!724 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/irssi/task1")
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 102, baseType: !726)
!726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !727, size: 192, align: 64, elements: !733)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 102, size: 192, align: 64, elements: !728)
!728 = !{!729, !730, !731, !732}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !727, file: !1, line: 102, baseType: !173, size: 32, align: 32)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !727, file: !1, line: 102, baseType: !173, size: 32, align: 32, offset: 32)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !727, file: !1, line: 102, baseType: !48, size: 64, align: 64, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !727, file: !1, line: 102, baseType: !48, size: 64, align: 64, offset: 128)
!733 = !{!734}
!734 = !DISubrange(count: 1)
!735 = !DILocation(line: 102, column: 10, scope: !701)
!736 = !DILocalVariable(name: "rec", scope: !701, file: !72, line: 103, type: !70)
!737 = !DILocation(line: 103, column: 19, scope: !701)
!738 = !DILocation(line: 105, column: 2, scope: !701)
!739 = distinct !{!739, !738}
!740 = !DILocation(line: 105, column: 10, scope: !741)
!741 = !DILexicalBlockFile(scope: !742, file: !72, discriminator: 1)
!742 = distinct !DILexicalBlock(scope: !743, file: !72, line: 105, column: 10)
!743 = distinct !DILexicalBlock(scope: !701, file: !72, line: 105, column: 4)
!744 = !DILocation(line: 105, column: 17, scope: !741)
!745 = !DILocation(line: 105, column: 5, scope: !746)
!746 = !DILexicalBlockFile(scope: !747, file: !72, discriminator: 2)
!747 = distinct !DILexicalBlock(scope: !742, file: !72, line: 105, column: 3)
!748 = !DILocation(line: 105, column: 14, scope: !749)
!749 = !DILexicalBlockFile(scope: !750, file: !72, discriminator: 3)
!750 = distinct !DILexicalBlock(scope: !742, file: !72, line: 105, column: 12)
!751 = !DILocation(line: 105, column: 101, scope: !749)
!752 = !DILocation(line: 105, column: 117, scope: !753)
!753 = !DILexicalBlockFile(scope: !743, file: !72, discriminator: 4)
!754 = !DILocation(line: 107, column: 1, scope: !701)
!755 = !DILocation(line: 108, column: 27, scope: !701)
!756 = !DILocation(line: 108, column: 32, scope: !701)
!757 = !DILocation(line: 108, column: 46, scope: !701)
!758 = !DILocation(line: 108, column: 53, scope: !701)
!759 = !DILocation(line: 108, column: 58, scope: !701)
!760 = !DILocation(line: 109, column: 6, scope: !701)
!761 = !DILocation(line: 109, column: 22, scope: !701)
!762 = !DILocation(line: 108, column: 8, scope: !701)
!763 = !DILocation(line: 108, column: 6, scope: !701)
!764 = !DILocation(line: 110, column: 33, scope: !701)
!765 = !DILocation(line: 110, column: 41, scope: !701)
!766 = !DILocation(line: 110, column: 48, scope: !701)
!767 = !DILocation(line: 110, column: 18, scope: !701)
!768 = !DILocation(line: 110, column: 2, scope: !701)
!769 = !DILocation(line: 110, column: 10, scope: !701)
!770 = !DILocation(line: 110, column: 16, scope: !701)
!771 = !DILocation(line: 111, column: 1, scope: !701)
!772 = !DILocation(line: 113, column: 9, scope: !701)
!773 = !DILocation(line: 113, column: 14, scope: !701)
!774 = !DILocation(line: 113, column: 2, scope: !701)
!775 = !DILocation(line: 114, column: 1, scope: !701)
!776 = distinct !DISubprogram(name: "server_idle_create", scope: !72, file: !72, line: 44, type: !777, isLocal: true, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !704)
!777 = !DISubroutineType(types: !778)
!778 = !{!70, !53, !53, !61, !53, !61, !53, !779}
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64, align: 64)
!780 = !DILocalVariable(name: "cmd", arg: 1, scope: !776, file: !72, line: 44, type: !53)
!781 = !DILocation(line: 44, column: 32, scope: !776)
!782 = !DILocalVariable(name: "redirect_cmd", arg: 2, scope: !776, file: !72, line: 44, type: !53)
!783 = !DILocation(line: 44, column: 49, scope: !776)
!784 = !DILocalVariable(name: "count", arg: 3, scope: !776, file: !72, line: 44, type: !61)
!785 = !DILocation(line: 44, column: 67, scope: !776)
!786 = !DILocalVariable(name: "arg", arg: 4, scope: !776, file: !72, line: 45, type: !53)
!787 = !DILocation(line: 45, column: 18, scope: !776)
!788 = !DILocalVariable(name: "remote", arg: 5, scope: !776, file: !72, line: 45, type: !61)
!789 = !DILocation(line: 45, column: 27, scope: !776)
!790 = !DILocalVariable(name: "failure_signal", arg: 6, scope: !776, file: !72, line: 45, type: !53)
!791 = !DILocation(line: 45, column: 47, scope: !776)
!792 = !DILocalVariable(name: "va", arg: 7, scope: !776, file: !72, line: 46, type: !779)
!793 = !DILocation(line: 46, column: 14, scope: !776)
!794 = !DILocalVariable(name: "rec", scope: !776, file: !72, line: 48, type: !70)
!795 = !DILocation(line: 48, column: 19, scope: !776)
!796 = !DILocalVariable(name: "event", scope: !776, file: !72, line: 49, type: !53)
!797 = !DILocation(line: 49, column: 14, scope: !776)
!798 = !DILocalVariable(name: "signal", scope: !776, file: !72, line: 49, type: !53)
!799 = !DILocation(line: 49, column: 22, scope: !776)
!800 = !DILocation(line: 51, column: 2, scope: !776)
!801 = distinct !{!801, !800}
!802 = !DILocation(line: 51, column: 10, scope: !803)
!803 = !DILexicalBlockFile(scope: !804, file: !72, discriminator: 1)
!804 = distinct !DILexicalBlock(scope: !805, file: !72, line: 51, column: 10)
!805 = distinct !DILexicalBlock(scope: !776, file: !72, line: 51, column: 4)
!806 = !DILocation(line: 51, column: 14, scope: !803)
!807 = !DILocation(line: 51, column: 5, scope: !808)
!808 = !DILexicalBlockFile(scope: !809, file: !72, discriminator: 2)
!809 = distinct !DILexicalBlock(scope: !804, file: !72, line: 51, column: 3)
!810 = !DILocation(line: 51, column: 14, scope: !811)
!811 = !DILexicalBlockFile(scope: !812, file: !72, discriminator: 3)
!812 = distinct !DILexicalBlock(scope: !804, file: !72, line: 51, column: 12)
!813 = !DILocation(line: 51, column: 98, scope: !811)
!814 = !DILocation(line: 51, column: 115, scope: !815)
!815 = !DILexicalBlockFile(scope: !805, file: !72, discriminator: 4)
!816 = !DILocation(line: 53, column: 29, scope: !776)
!817 = !DILocation(line: 53, column: 9, scope: !776)
!818 = !DILocation(line: 53, column: 6, scope: !776)
!819 = !DILocation(line: 54, column: 22, scope: !776)
!820 = !DILocation(line: 54, column: 13, scope: !776)
!821 = !DILocation(line: 54, column: 2, scope: !776)
!822 = !DILocation(line: 54, column: 7, scope: !776)
!823 = !DILocation(line: 54, column: 11, scope: !776)
!824 = !DILocation(line: 55, column: 22, scope: !776)
!825 = !DILocation(line: 55, column: 13, scope: !776)
!826 = !DILocation(line: 55, column: 2, scope: !776)
!827 = !DILocation(line: 55, column: 7, scope: !776)
!828 = !DILocation(line: 55, column: 11, scope: !776)
!829 = !DILocation(line: 56, column: 13, scope: !776)
!830 = !DILocation(line: 56, column: 2, scope: !776)
!831 = !DILocation(line: 56, column: 7, scope: !776)
!832 = !DILocation(line: 56, column: 11, scope: !776)
!833 = !DILocation(line: 58, column: 38, scope: !776)
!834 = !DILocation(line: 58, column: 29, scope: !776)
!835 = !DILocation(line: 58, column: 9, scope: !776)
!836 = !DILocation(line: 58, column: 14, scope: !776)
!837 = !DILocation(line: 58, column: 27, scope: !776)
!838 = !DILocation(line: 59, column: 15, scope: !776)
!839 = !DILocation(line: 59, column: 2, scope: !776)
!840 = !DILocation(line: 59, column: 7, scope: !776)
!841 = !DILocation(line: 59, column: 13, scope: !776)
!842 = !DILocation(line: 60, column: 16, scope: !776)
!843 = !DILocation(line: 60, column: 2, scope: !776)
!844 = !DILocation(line: 60, column: 7, scope: !776)
!845 = !DILocation(line: 60, column: 14, scope: !776)
!846 = !DILocation(line: 61, column: 40, scope: !776)
!847 = !DILocation(line: 61, column: 31, scope: !776)
!848 = !DILocation(line: 61, column: 9, scope: !776)
!849 = !DILocation(line: 61, column: 14, scope: !776)
!850 = !DILocation(line: 61, column: 29, scope: !776)
!851 = !DILocation(line: 63, column: 2, scope: !776)
!852 = !DILocation(line: 63, column: 17, scope: !853)
!853 = !DILexicalBlockFile(scope: !776, file: !72, discriminator: 1)
!854 = !DILocation(line: 63, column: 17, scope: !855)
!855 = !DILexicalBlockFile(scope: !776, file: !72, discriminator: 2)
!856 = !DILocation(line: 63, column: 17, scope: !857)
!857 = !DILexicalBlockFile(scope: !776, file: !72, discriminator: 3)
!858 = !DILocation(line: 63, column: 17, scope: !859)
!859 = !DILexicalBlockFile(scope: !776, file: !72, discriminator: 4)
!860 = !DILocation(line: 63, column: 16, scope: !859)
!861 = !DILocation(line: 63, column: 43, scope: !859)
!862 = !DILocation(line: 63, column: 2, scope: !859)
!863 = !DILocation(line: 64, column: 11, scope: !864)
!864 = distinct !DILexicalBlock(scope: !776, file: !72, line: 63, column: 52)
!865 = !DILocation(line: 64, column: 11, scope: !866)
!866 = !DILexicalBlockFile(scope: !864, file: !72, discriminator: 1)
!867 = !DILocation(line: 64, column: 11, scope: !868)
!868 = !DILexicalBlockFile(scope: !864, file: !72, discriminator: 2)
!869 = !DILocation(line: 64, column: 11, scope: !870)
!870 = !DILexicalBlockFile(scope: !864, file: !72, discriminator: 3)
!871 = !DILocation(line: 64, column: 10, scope: !870)
!872 = !DILocation(line: 65, column: 7, scope: !873)
!873 = distinct !DILexicalBlock(scope: !864, file: !72, line: 65, column: 7)
!874 = !DILocation(line: 65, column: 14, scope: !873)
!875 = !DILocation(line: 65, column: 7, scope: !864)
!876 = !DILocation(line: 66, column: 107, scope: !877)
!877 = distinct !DILexicalBlock(scope: !873, file: !72, line: 65, column: 22)
!878 = !DILocation(line: 66, column: 4, scope: !877)
!879 = !DILocation(line: 69, column: 4, scope: !877)
!880 = !DILocation(line: 73, column: 19, scope: !864)
!881 = !DILocation(line: 73, column: 24, scope: !864)
!882 = !DILocation(line: 73, column: 44, scope: !864)
!883 = !DILocation(line: 73, column: 35, scope: !864)
!884 = !DILocation(line: 73, column: 4, scope: !866)
!885 = !DILocation(line: 72, column: 3, scope: !864)
!886 = !DILocation(line: 72, column: 8, scope: !864)
!887 = !DILocation(line: 72, column: 18, scope: !864)
!888 = !DILocation(line: 75, column: 19, scope: !864)
!889 = !DILocation(line: 75, column: 24, scope: !864)
!890 = !DILocation(line: 75, column: 44, scope: !864)
!891 = !DILocation(line: 75, column: 35, scope: !864)
!892 = !DILocation(line: 75, column: 4, scope: !866)
!893 = !DILocation(line: 74, column: 3, scope: !864)
!894 = !DILocation(line: 74, column: 8, scope: !864)
!895 = !DILocation(line: 74, column: 18, scope: !864)
!896 = !DILocation(line: 63, column: 2, scope: !897)
!897 = !DILexicalBlockFile(scope: !776, file: !72, discriminator: 5)
!898 = distinct !{!898, !851}
!899 = !DILocation(line: 78, column: 9, scope: !776)
!900 = !DILocation(line: 78, column: 2, scope: !776)
!901 = !DILocation(line: 79, column: 1, scope: !776)
!902 = distinct !DISubprogram(name: "server_idle_add_first_redir", scope: !72, file: !72, line: 117, type: !702, isLocal: false, isDefinition: true, scopeLine: 121, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !704)
!903 = !DILocalVariable(name: "server", arg: 1, scope: !902, file: !72, line: 117, type: !95)
!904 = !DILocation(line: 117, column: 49, scope: !902)
!905 = !DILocalVariable(name: "cmd", arg: 2, scope: !902, file: !72, line: 117, type: !53)
!906 = !DILocation(line: 117, column: 69, scope: !902)
!907 = !DILocalVariable(name: "redirect_cmd", arg: 3, scope: !902, file: !72, line: 118, type: !53)
!908 = !DILocation(line: 118, column: 17, scope: !902)
!909 = !DILocalVariable(name: "count", arg: 4, scope: !902, file: !72, line: 118, type: !61)
!910 = !DILocation(line: 118, column: 35, scope: !902)
!911 = !DILocalVariable(name: "arg", arg: 5, scope: !902, file: !72, line: 119, type: !53)
!912 = !DILocation(line: 119, column: 17, scope: !902)
!913 = !DILocalVariable(name: "remote", arg: 6, scope: !902, file: !72, line: 119, type: !61)
!914 = !DILocation(line: 119, column: 26, scope: !902)
!915 = !DILocalVariable(name: "failure_signal", arg: 7, scope: !902, file: !72, line: 120, type: !53)
!916 = !DILocation(line: 120, column: 17, scope: !902)
!917 = !DILocalVariable(name: "va", scope: !902, file: !72, line: 122, type: !721)
!918 = !DILocation(line: 122, column: 10, scope: !902)
!919 = !DILocalVariable(name: "rec", scope: !902, file: !72, line: 123, type: !70)
!920 = !DILocation(line: 123, column: 19, scope: !902)
!921 = !DILocation(line: 125, column: 2, scope: !902)
!922 = distinct !{!922, !921}
!923 = !DILocation(line: 125, column: 10, scope: !924)
!924 = !DILexicalBlockFile(scope: !925, file: !72, discriminator: 1)
!925 = distinct !DILexicalBlock(scope: !926, file: !72, line: 125, column: 10)
!926 = distinct !DILexicalBlock(scope: !902, file: !72, line: 125, column: 4)
!927 = !DILocation(line: 125, column: 17, scope: !924)
!928 = !DILocation(line: 125, column: 5, scope: !929)
!929 = !DILexicalBlockFile(scope: !930, file: !72, discriminator: 2)
!930 = distinct !DILexicalBlock(scope: !925, file: !72, line: 125, column: 3)
!931 = !DILocation(line: 125, column: 14, scope: !932)
!932 = !DILexicalBlockFile(scope: !933, file: !72, discriminator: 3)
!933 = distinct !DILexicalBlock(scope: !925, file: !72, line: 125, column: 12)
!934 = !DILocation(line: 125, column: 101, scope: !932)
!935 = !DILocation(line: 125, column: 117, scope: !936)
!936 = !DILexicalBlockFile(scope: !926, file: !72, discriminator: 4)
!937 = !DILocation(line: 127, column: 1, scope: !902)
!938 = !DILocation(line: 128, column: 27, scope: !902)
!939 = !DILocation(line: 128, column: 32, scope: !902)
!940 = !DILocation(line: 128, column: 46, scope: !902)
!941 = !DILocation(line: 128, column: 53, scope: !902)
!942 = !DILocation(line: 128, column: 58, scope: !902)
!943 = !DILocation(line: 129, column: 6, scope: !902)
!944 = !DILocation(line: 129, column: 22, scope: !902)
!945 = !DILocation(line: 128, column: 8, scope: !902)
!946 = !DILocation(line: 128, column: 6, scope: !902)
!947 = !DILocation(line: 130, column: 34, scope: !902)
!948 = !DILocation(line: 130, column: 42, scope: !902)
!949 = !DILocation(line: 130, column: 49, scope: !902)
!950 = !DILocation(line: 130, column: 18, scope: !902)
!951 = !DILocation(line: 130, column: 2, scope: !902)
!952 = !DILocation(line: 130, column: 10, scope: !902)
!953 = !DILocation(line: 130, column: 16, scope: !902)
!954 = !DILocation(line: 131, column: 1, scope: !902)
!955 = !DILocation(line: 133, column: 9, scope: !902)
!956 = !DILocation(line: 133, column: 14, scope: !902)
!957 = !DILocation(line: 133, column: 2, scope: !902)
!958 = !DILocation(line: 134, column: 1, scope: !902)
!959 = distinct !DISubprogram(name: "server_idle_insert_redir", scope: !72, file: !72, line: 137, type: !960, isLocal: false, isDefinition: true, scopeLine: 141, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !704)
!960 = !DISubroutineType(types: !961)
!961 = !{!61, !95, !53, !61, !53, !61, !53, !61, !53, null}
!962 = !DILocalVariable(name: "server", arg: 1, scope: !959, file: !72, line: 137, type: !95)
!963 = !DILocation(line: 137, column: 46, scope: !959)
!964 = !DILocalVariable(name: "cmd", arg: 2, scope: !959, file: !72, line: 137, type: !53)
!965 = !DILocation(line: 137, column: 66, scope: !959)
!966 = !DILocalVariable(name: "tag", arg: 3, scope: !959, file: !72, line: 137, type: !61)
!967 = !DILocation(line: 137, column: 75, scope: !959)
!968 = !DILocalVariable(name: "redirect_cmd", arg: 4, scope: !959, file: !72, line: 138, type: !53)
!969 = !DILocation(line: 138, column: 21, scope: !959)
!970 = !DILocalVariable(name: "count", arg: 5, scope: !959, file: !72, line: 138, type: !61)
!971 = !DILocation(line: 138, column: 39, scope: !959)
!972 = !DILocalVariable(name: "arg", arg: 6, scope: !959, file: !72, line: 139, type: !53)
!973 = !DILocation(line: 139, column: 21, scope: !959)
!974 = !DILocalVariable(name: "remote", arg: 7, scope: !959, file: !72, line: 139, type: !61)
!975 = !DILocation(line: 139, column: 30, scope: !959)
!976 = !DILocalVariable(name: "failure_signal", arg: 8, scope: !959, file: !72, line: 140, type: !53)
!977 = !DILocation(line: 140, column: 21, scope: !959)
!978 = !DILocalVariable(name: "va", scope: !959, file: !72, line: 142, type: !721)
!979 = !DILocation(line: 142, column: 10, scope: !959)
!980 = !DILocalVariable(name: "rec", scope: !959, file: !72, line: 143, type: !70)
!981 = !DILocation(line: 143, column: 19, scope: !959)
!982 = !DILocalVariable(name: "pos", scope: !959, file: !72, line: 144, type: !61)
!983 = !DILocation(line: 144, column: 6, scope: !959)
!984 = !DILocation(line: 146, column: 2, scope: !959)
!985 = distinct !{!985, !984}
!986 = !DILocation(line: 146, column: 10, scope: !987)
!987 = !DILexicalBlockFile(scope: !988, file: !72, discriminator: 1)
!988 = distinct !DILexicalBlock(scope: !989, file: !72, line: 146, column: 10)
!989 = distinct !DILexicalBlock(scope: !959, file: !72, line: 146, column: 4)
!990 = !DILocation(line: 146, column: 17, scope: !987)
!991 = !DILocation(line: 146, column: 5, scope: !992)
!992 = !DILexicalBlockFile(scope: !993, file: !72, discriminator: 2)
!993 = distinct !DILexicalBlock(scope: !988, file: !72, line: 146, column: 3)
!994 = !DILocation(line: 146, column: 14, scope: !995)
!995 = !DILexicalBlockFile(scope: !996, file: !72, discriminator: 3)
!996 = distinct !DILexicalBlock(scope: !988, file: !72, line: 146, column: 12)
!997 = !DILocation(line: 146, column: 101, scope: !995)
!998 = !DILocation(line: 146, column: 117, scope: !999)
!999 = !DILexicalBlockFile(scope: !989, file: !72, discriminator: 4)
!1000 = !DILocation(line: 148, column: 1, scope: !959)
!1001 = !DILocation(line: 151, column: 29, scope: !959)
!1002 = !DILocation(line: 151, column: 37, scope: !959)
!1003 = !DILocation(line: 151, column: 8, scope: !959)
!1004 = !DILocation(line: 151, column: 6, scope: !959)
!1005 = !DILocation(line: 152, column: 22, scope: !959)
!1006 = !DILocation(line: 152, column: 30, scope: !959)
!1007 = !DILocation(line: 152, column: 37, scope: !959)
!1008 = !DILocation(line: 152, column: 8, scope: !959)
!1009 = !DILocation(line: 152, column: 6, scope: !959)
!1010 = !DILocation(line: 154, column: 27, scope: !959)
!1011 = !DILocation(line: 154, column: 32, scope: !959)
!1012 = !DILocation(line: 154, column: 46, scope: !959)
!1013 = !DILocation(line: 154, column: 53, scope: !959)
!1014 = !DILocation(line: 154, column: 58, scope: !959)
!1015 = !DILocation(line: 155, column: 6, scope: !959)
!1016 = !DILocation(line: 155, column: 22, scope: !959)
!1017 = !DILocation(line: 154, column: 8, scope: !959)
!1018 = !DILocation(line: 154, column: 6, scope: !959)
!1019 = !DILocation(line: 156, column: 25, scope: !959)
!1020 = !DILocation(line: 156, column: 29, scope: !959)
!1021 = !DILocation(line: 157, column: 18, scope: !959)
!1022 = !DILocation(line: 157, column: 26, scope: !959)
!1023 = !DILocation(line: 157, column: 33, scope: !959)
!1024 = !DILocation(line: 157, column: 3, scope: !959)
!1025 = !DILocation(line: 156, column: 25, scope: !1026)
!1026 = !DILexicalBlockFile(scope: !959, file: !72, discriminator: 1)
!1027 = !DILocation(line: 158, column: 18, scope: !959)
!1028 = !DILocation(line: 158, column: 26, scope: !959)
!1029 = !DILocation(line: 158, column: 33, scope: !959)
!1030 = !DILocation(line: 158, column: 38, scope: !959)
!1031 = !DILocation(line: 158, column: 3, scope: !959)
!1032 = !DILocation(line: 156, column: 25, scope: !1033)
!1033 = !DILexicalBlockFile(scope: !959, file: !72, discriminator: 2)
!1034 = !DILocation(line: 156, column: 25, scope: !1035)
!1035 = !DILexicalBlockFile(scope: !959, file: !72, discriminator: 3)
!1036 = !DILocation(line: 156, column: 9, scope: !1035)
!1037 = !DILocation(line: 156, column: 17, scope: !1035)
!1038 = !DILocation(line: 156, column: 23, scope: !1035)
!1039 = !DILocation(line: 159, column: 1, scope: !959)
!1040 = !DILocation(line: 161, column: 9, scope: !959)
!1041 = !DILocation(line: 161, column: 14, scope: !959)
!1042 = !DILocation(line: 161, column: 2, scope: !959)
!1043 = !DILocation(line: 162, column: 1, scope: !959)
!1044 = distinct !DISubprogram(name: "server_idle_find_rec", scope: !72, file: !72, line: 81, type: !1045, isLocal: true, isDefinition: true, scopeLine: 82, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !704)
!1045 = !DISubroutineType(types: !1046)
!1046 = !{!70, !95, !61}
!1047 = !DILocalVariable(name: "server", arg: 1, scope: !1044, file: !72, line: 81, type: !95)
!1048 = !DILocation(line: 81, column: 62, scope: !1044)
!1049 = !DILocalVariable(name: "tag", arg: 2, scope: !1044, file: !72, line: 81, type: !61)
!1050 = !DILocation(line: 81, column: 74, scope: !1044)
!1051 = !DILocalVariable(name: "tmp", scope: !1044, file: !72, line: 83, type: !84)
!1052 = !DILocation(line: 83, column: 10, scope: !1044)
!1053 = !DILocation(line: 85, column: 2, scope: !1044)
!1054 = distinct !{!1054, !1053}
!1055 = !DILocation(line: 85, column: 10, scope: !1056)
!1056 = !DILexicalBlockFile(scope: !1057, file: !72, discriminator: 1)
!1057 = distinct !DILexicalBlock(scope: !1058, file: !72, line: 85, column: 10)
!1058 = distinct !DILexicalBlock(scope: !1044, file: !72, line: 85, column: 4)
!1059 = !DILocation(line: 85, column: 17, scope: !1056)
!1060 = !DILocation(line: 85, column: 5, scope: !1061)
!1061 = !DILexicalBlockFile(scope: !1062, file: !72, discriminator: 2)
!1062 = distinct !DILexicalBlock(scope: !1057, file: !72, line: 85, column: 3)
!1063 = !DILocation(line: 85, column: 14, scope: !1064)
!1064 = !DILexicalBlockFile(scope: !1065, file: !72, discriminator: 3)
!1065 = distinct !DILexicalBlock(scope: !1057, file: !72, line: 85, column: 12)
!1066 = !DILocation(line: 85, column: 101, scope: !1064)
!1067 = !DILocation(line: 85, column: 118, scope: !1068)
!1068 = !DILexicalBlockFile(scope: !1058, file: !72, discriminator: 4)
!1069 = !DILocation(line: 87, column: 13, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1044, file: !72, line: 87, column: 2)
!1071 = !DILocation(line: 87, column: 21, scope: !1070)
!1072 = !DILocation(line: 87, column: 11, scope: !1070)
!1073 = !DILocation(line: 87, column: 7, scope: !1070)
!1074 = !DILocation(line: 87, column: 28, scope: !1075)
!1075 = !DILexicalBlockFile(scope: !1076, file: !72, discriminator: 1)
!1076 = distinct !DILexicalBlock(scope: !1070, file: !72, line: 87, column: 2)
!1077 = !DILocation(line: 87, column: 32, scope: !1075)
!1078 = !DILocation(line: 87, column: 2, scope: !1075)
!1079 = !DILocalVariable(name: "rec", scope: !1080, file: !72, line: 88, type: !70)
!1080 = distinct !DILexicalBlock(scope: !1076, file: !72, line: 87, column: 57)
!1081 = !DILocation(line: 88, column: 20, scope: !1080)
!1082 = !DILocation(line: 88, column: 26, scope: !1080)
!1083 = !DILocation(line: 88, column: 31, scope: !1080)
!1084 = !DILocation(line: 90, column: 7, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1080, file: !72, line: 90, column: 7)
!1086 = !DILocation(line: 90, column: 12, scope: !1085)
!1087 = !DILocation(line: 90, column: 19, scope: !1085)
!1088 = !DILocation(line: 90, column: 16, scope: !1085)
!1089 = !DILocation(line: 90, column: 7, scope: !1080)
!1090 = !DILocation(line: 91, column: 11, scope: !1085)
!1091 = !DILocation(line: 91, column: 4, scope: !1085)
!1092 = !DILocation(line: 92, column: 2, scope: !1080)
!1093 = !DILocation(line: 87, column: 46, scope: !1094)
!1094 = !DILexicalBlockFile(scope: !1076, file: !72, discriminator: 2)
!1095 = !DILocation(line: 87, column: 51, scope: !1094)
!1096 = !DILocation(line: 87, column: 44, scope: !1094)
!1097 = !DILocation(line: 87, column: 2, scope: !1094)
!1098 = distinct !{!1098, !1099}
!1099 = !DILocation(line: 87, column: 2, scope: !1044)
!1100 = !DILocation(line: 94, column: 2, scope: !1044)
!1101 = !DILocation(line: 95, column: 1, scope: !1044)
!1102 = distinct !DISubprogram(name: "server_idle_find", scope: !72, file: !72, line: 181, type: !1103, isLocal: false, isDefinition: true, scopeLine: 182, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !704)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!61, !95, !61}
!1105 = !DILocalVariable(name: "server", arg: 1, scope: !1102, file: !72, line: 181, type: !95)
!1106 = !DILocation(line: 181, column: 38, scope: !1102)
!1107 = !DILocalVariable(name: "tag", arg: 2, scope: !1102, file: !72, line: 181, type: !61)
!1108 = !DILocation(line: 181, column: 50, scope: !1102)
!1109 = !DILocation(line: 183, column: 30, scope: !1102)
!1110 = !DILocation(line: 183, column: 38, scope: !1102)
!1111 = !DILocation(line: 183, column: 9, scope: !1102)
!1112 = !DILocation(line: 183, column: 43, scope: !1102)
!1113 = !DILocation(line: 183, column: 2, scope: !1102)
!1114 = distinct !DISubprogram(name: "server_idle_remove", scope: !72, file: !72, line: 187, type: !1103, isLocal: false, isDefinition: true, scopeLine: 188, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !704)
!1115 = !DILocalVariable(name: "server", arg: 1, scope: !1114, file: !72, line: 187, type: !95)
!1116 = !DILocation(line: 187, column: 40, scope: !1114)
!1117 = !DILocalVariable(name: "tag", arg: 2, scope: !1114, file: !72, line: 187, type: !61)
!1118 = !DILocation(line: 187, column: 52, scope: !1114)
!1119 = !DILocalVariable(name: "rec", scope: !1114, file: !72, line: 189, type: !70)
!1120 = !DILocation(line: 189, column: 19, scope: !1114)
!1121 = !DILocation(line: 191, column: 2, scope: !1114)
!1122 = distinct !{!1122, !1121}
!1123 = !DILocation(line: 191, column: 10, scope: !1124)
!1124 = !DILexicalBlockFile(scope: !1125, file: !72, discriminator: 1)
!1125 = distinct !DILexicalBlock(scope: !1126, file: !72, line: 191, column: 10)
!1126 = distinct !DILexicalBlock(scope: !1114, file: !72, line: 191, column: 4)
!1127 = !DILocation(line: 191, column: 17, scope: !1124)
!1128 = !DILocation(line: 191, column: 5, scope: !1129)
!1129 = !DILexicalBlockFile(scope: !1130, file: !72, discriminator: 2)
!1130 = distinct !DILexicalBlock(scope: !1125, file: !72, line: 191, column: 3)
!1131 = !DILocation(line: 191, column: 14, scope: !1132)
!1132 = !DILexicalBlockFile(scope: !1133, file: !72, discriminator: 3)
!1133 = distinct !DILexicalBlock(scope: !1125, file: !72, line: 191, column: 12)
!1134 = !DILocation(line: 191, column: 101, scope: !1132)
!1135 = !DILocation(line: 191, column: 118, scope: !1136)
!1136 = !DILexicalBlockFile(scope: !1126, file: !72, discriminator: 4)
!1137 = !DILocation(line: 193, column: 29, scope: !1114)
!1138 = !DILocation(line: 193, column: 37, scope: !1114)
!1139 = !DILocation(line: 193, column: 8, scope: !1114)
!1140 = !DILocation(line: 193, column: 6, scope: !1114)
!1141 = !DILocation(line: 194, column: 6, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1114, file: !72, line: 194, column: 6)
!1143 = !DILocation(line: 194, column: 10, scope: !1142)
!1144 = !DILocation(line: 194, column: 6, scope: !1114)
!1145 = !DILocation(line: 195, column: 3, scope: !1142)
!1146 = !DILocation(line: 197, column: 22, scope: !1114)
!1147 = !DILocation(line: 197, column: 30, scope: !1114)
!1148 = !DILocation(line: 197, column: 2, scope: !1114)
!1149 = !DILocation(line: 198, column: 2, scope: !1114)
!1150 = !DILocation(line: 199, column: 1, scope: !1114)
!1151 = distinct !DISubprogram(name: "server_idle_destroy", scope: !72, file: !72, line: 164, type: !1152, isLocal: true, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !704)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{null, !95, !70}
!1154 = !DILocalVariable(name: "server", arg: 1, scope: !1151, file: !72, line: 164, type: !95)
!1155 = !DILocation(line: 164, column: 49, scope: !1151)
!1156 = !DILocalVariable(name: "rec", arg: 2, scope: !1151, file: !72, line: 164, type: !70)
!1157 = !DILocation(line: 164, column: 74, scope: !1151)
!1158 = !DILocation(line: 166, column: 2, scope: !1151)
!1159 = distinct !{!1159, !1158}
!1160 = !DILocation(line: 166, column: 10, scope: !1161)
!1161 = !DILexicalBlockFile(scope: !1162, file: !72, discriminator: 1)
!1162 = distinct !DILexicalBlock(scope: !1163, file: !72, line: 166, column: 10)
!1163 = distinct !DILexicalBlock(scope: !1151, file: !72, line: 166, column: 4)
!1164 = !DILocation(line: 166, column: 17, scope: !1161)
!1165 = !DILocation(line: 166, column: 5, scope: !1166)
!1166 = !DILexicalBlockFile(scope: !1167, file: !72, discriminator: 2)
!1167 = distinct !DILexicalBlock(scope: !1162, file: !72, line: 166, column: 3)
!1168 = !DILocation(line: 166, column: 14, scope: !1169)
!1169 = !DILexicalBlockFile(scope: !1170, file: !72, discriminator: 3)
!1170 = distinct !DILexicalBlock(scope: !1162, file: !72, line: 166, column: 12)
!1171 = !DILocation(line: 166, column: 101, scope: !1169)
!1172 = !DILocation(line: 166, column: 112, scope: !1173)
!1173 = !DILexicalBlockFile(scope: !1163, file: !72, discriminator: 4)
!1174 = !DILocation(line: 168, column: 33, scope: !1151)
!1175 = !DILocation(line: 168, column: 41, scope: !1151)
!1176 = !DILocation(line: 168, column: 48, scope: !1151)
!1177 = !DILocation(line: 168, column: 18, scope: !1151)
!1178 = !DILocation(line: 168, column: 2, scope: !1151)
!1179 = !DILocation(line: 168, column: 10, scope: !1151)
!1180 = !DILocation(line: 168, column: 16, scope: !1151)
!1181 = !DILocation(line: 170, column: 25, scope: !1151)
!1182 = !DILocation(line: 170, column: 30, scope: !1151)
!1183 = !DILocation(line: 170, column: 9, scope: !1151)
!1184 = !DILocation(line: 171, column: 15, scope: !1151)
!1185 = !DILocation(line: 171, column: 20, scope: !1151)
!1186 = !DILocation(line: 171, column: 2, scope: !1151)
!1187 = !DILocation(line: 173, column: 9, scope: !1151)
!1188 = !DILocation(line: 173, column: 14, scope: !1151)
!1189 = !DILocation(line: 173, column: 2, scope: !1151)
!1190 = !DILocation(line: 174, column: 16, scope: !1151)
!1191 = !DILocation(line: 174, column: 21, scope: !1151)
!1192 = !DILocation(line: 174, column: 9, scope: !1151)
!1193 = !DILocation(line: 175, column: 16, scope: !1151)
!1194 = !DILocation(line: 175, column: 21, scope: !1151)
!1195 = !DILocation(line: 175, column: 9, scope: !1151)
!1196 = !DILocation(line: 176, column: 9, scope: !1151)
!1197 = !DILocation(line: 176, column: 14, scope: !1151)
!1198 = !DILocation(line: 176, column: 2, scope: !1151)
!1199 = !DILocation(line: 177, column: 9, scope: !1151)
!1200 = !DILocation(line: 177, column: 2, scope: !1151)
!1201 = !DILocation(line: 178, column: 1, scope: !1151)
!1202 = !DILocation(line: 178, column: 1, scope: !1203)
!1203 = !DILexicalBlockFile(scope: !1151, file: !72, discriminator: 1)
!1204 = distinct !DISubprogram(name: "servers_idle_init", scope: !72, file: !72, line: 252, type: !245, isLocal: false, isDefinition: true, scopeLine: 253, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !704)
!1205 = !DILocation(line: 254, column: 10, scope: !1204)
!1206 = !DILocation(line: 255, column: 13, scope: !1204)
!1207 = !DILocation(line: 255, column: 11, scope: !1204)
!1208 = !DILocation(line: 257, column: 2, scope: !1204)
!1209 = !DILocation(line: 258, column: 1, scope: !1204)
!1210 = distinct !DISubprogram(name: "sig_idle_timeout", scope: !72, file: !72, line: 235, type: !1211, isLocal: true, isDefinition: true, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !704)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!61}
!1213 = !DILocalVariable(name: "tmp", scope: !1210, file: !72, line: 237, type: !84)
!1214 = !DILocation(line: 237, column: 10, scope: !1210)
!1215 = !DILocation(line: 240, column: 13, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1210, file: !72, line: 240, column: 2)
!1217 = !DILocation(line: 240, column: 11, scope: !1216)
!1218 = !DILocation(line: 240, column: 7, scope: !1216)
!1219 = !DILocation(line: 240, column: 22, scope: !1220)
!1220 = !DILexicalBlockFile(scope: !1221, file: !72, discriminator: 1)
!1221 = distinct !DILexicalBlock(scope: !1216, file: !72, line: 240, column: 2)
!1222 = !DILocation(line: 240, column: 26, scope: !1220)
!1223 = !DILocation(line: 240, column: 2, scope: !1220)
!1224 = !DILocalVariable(name: "rec", scope: !1225, file: !72, line: 241, type: !95)
!1225 = distinct !DILexicalBlock(scope: !1221, file: !72, line: 240, column: 51)
!1226 = !DILocation(line: 241, column: 19, scope: !1225)
!1227 = !DILocation(line: 241, column: 25, scope: !1225)
!1228 = !DILocation(line: 241, column: 30, scope: !1225)
!1229 = !DILocation(line: 243, column: 87, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1225, file: !72, line: 243, column: 7)
!1231 = !DILocation(line: 243, column: 69, scope: !1230)
!1232 = !DILocation(line: 243, column: 54, scope: !1230)
!1233 = !DILocation(line: 243, column: 53, scope: !1230)
!1234 = !DILocation(line: 243, column: 28, scope: !1235)
!1235 = !DILexicalBlockFile(scope: !1230, file: !72, discriminator: 4)
!1236 = !DILocation(line: 243, column: 9, scope: !1230)
!1237 = !DILocation(line: 243, column: 32, scope: !1230)
!1238 = !DILocation(line: 243, column: 8, scope: !1239)
!1239 = !DILexicalBlockFile(scope: !1230, file: !72, discriminator: 1)
!1240 = !DILocation(line: 243, column: 32, scope: !1241)
!1241 = !DILexicalBlockFile(scope: !1230, file: !72, discriminator: 2)
!1242 = !DILocation(line: 244, column: 7, scope: !1230)
!1243 = !DILocation(line: 244, column: 12, scope: !1230)
!1244 = !DILocation(line: 244, column: 18, scope: !1230)
!1245 = !DILocation(line: 244, column: 25, scope: !1230)
!1246 = !DILocation(line: 244, column: 28, scope: !1239)
!1247 = !DILocation(line: 244, column: 33, scope: !1239)
!1248 = !DILocation(line: 244, column: 42, scope: !1239)
!1249 = !DILocation(line: 243, column: 7, scope: !1250)
!1250 = !DILexicalBlockFile(scope: !1225, file: !72, discriminator: 3)
!1251 = !DILocation(line: 246, column: 21, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1230, file: !72, line: 244, column: 48)
!1253 = !DILocation(line: 246, column: 4, scope: !1252)
!1254 = !DILocation(line: 247, column: 3, scope: !1252)
!1255 = !DILocation(line: 248, column: 2, scope: !1225)
!1256 = !DILocation(line: 240, column: 40, scope: !1257)
!1257 = !DILexicalBlockFile(scope: !1221, file: !72, discriminator: 2)
!1258 = !DILocation(line: 240, column: 45, scope: !1257)
!1259 = !DILocation(line: 240, column: 38, scope: !1257)
!1260 = !DILocation(line: 240, column: 2, scope: !1257)
!1261 = distinct !{!1261, !1262}
!1262 = !DILocation(line: 240, column: 2, scope: !1210)
!1263 = !DILocation(line: 249, column: 2, scope: !1210)
!1264 = distinct !DISubprogram(name: "sig_disconnected", scope: !72, file: !72, line: 224, type: !1265, isLocal: true, isDefinition: true, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !704)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{null, !95}
!1267 = !DILocalVariable(name: "server", arg: 1, scope: !1264, file: !72, line: 224, type: !95)
!1268 = !DILocation(line: 224, column: 46, scope: !1264)
!1269 = !DILocation(line: 226, column: 2, scope: !1264)
!1270 = distinct !{!1270, !1269}
!1271 = !DILocation(line: 226, column: 10, scope: !1272)
!1272 = !DILexicalBlockFile(scope: !1273, file: !72, discriminator: 1)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !72, line: 226, column: 10)
!1274 = distinct !DILexicalBlock(scope: !1264, file: !72, line: 226, column: 4)
!1275 = !DILocation(line: 226, column: 17, scope: !1272)
!1276 = !DILocation(line: 226, column: 5, scope: !1277)
!1277 = !DILexicalBlockFile(scope: !1278, file: !72, discriminator: 2)
!1278 = distinct !DILexicalBlock(scope: !1273, file: !72, line: 226, column: 3)
!1279 = !DILocation(line: 226, column: 14, scope: !1280)
!1280 = !DILexicalBlockFile(scope: !1281, file: !72, discriminator: 3)
!1281 = distinct !DILexicalBlock(scope: !1273, file: !72, line: 226, column: 12)
!1282 = !DILocation(line: 226, column: 101, scope: !1280)
!1283 = !DILocation(line: 226, column: 112, scope: !1284)
!1284 = !DILexicalBlockFile(scope: !1274, file: !72, discriminator: 4)
!1285 = !DILocation(line: 228, column: 87, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1264, file: !72, line: 228, column: 6)
!1287 = !DILocation(line: 228, column: 69, scope: !1286)
!1288 = !DILocation(line: 228, column: 54, scope: !1286)
!1289 = !DILocation(line: 228, column: 53, scope: !1286)
!1290 = !DILocation(line: 228, column: 28, scope: !1291)
!1291 = !DILexicalBlockFile(scope: !1286, file: !72, discriminator: 3)
!1292 = !DILocation(line: 228, column: 9, scope: !1286)
!1293 = !DILocation(line: 228, column: 6, scope: !1264)
!1294 = !DILocation(line: 228, column: 8, scope: !1295)
!1295 = !DILexicalBlockFile(scope: !1286, file: !72, discriminator: 1)
!1296 = !DILocation(line: 228, column: 6, scope: !1297)
!1297 = !DILexicalBlockFile(scope: !1264, file: !72, discriminator: 2)
!1298 = !DILocation(line: 229, column: 3, scope: !1286)
!1299 = !DILocation(line: 231, column: 2, scope: !1264)
!1300 = !DILocation(line: 231, column: 9, scope: !1301)
!1301 = !DILexicalBlockFile(scope: !1264, file: !72, discriminator: 1)
!1302 = !DILocation(line: 231, column: 17, scope: !1301)
!1303 = !DILocation(line: 231, column: 23, scope: !1301)
!1304 = !DILocation(line: 231, column: 2, scope: !1301)
!1305 = !DILocation(line: 232, column: 23, scope: !1264)
!1306 = !DILocation(line: 232, column: 31, scope: !1264)
!1307 = !DILocation(line: 232, column: 39, scope: !1264)
!1308 = !DILocation(line: 232, column: 46, scope: !1264)
!1309 = !DILocation(line: 232, column: 3, scope: !1264)
!1310 = !DILocation(line: 231, column: 2, scope: !1297)
!1311 = distinct !{!1311, !1299}
!1312 = !DILocation(line: 233, column: 1, scope: !1264)
!1313 = distinct !DISubprogram(name: "servers_idle_deinit", scope: !72, file: !72, line: 260, type: !245, isLocal: false, isDefinition: true, scopeLine: 261, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !704)
!1314 = !DILocation(line: 262, column: 18, scope: !1313)
!1315 = !DILocation(line: 262, column: 2, scope: !1313)
!1316 = !DILocation(line: 263, column: 2, scope: !1313)
!1317 = !DILocation(line: 264, column: 1, scope: !1313)
!1318 = distinct !DISubprogram(name: "server_idle_next", scope: !72, file: !72, line: 202, type: !1265, isLocal: true, isDefinition: true, scopeLine: 203, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !704)
!1319 = !DILocalVariable(name: "server", arg: 1, scope: !1318, file: !72, line: 202, type: !95)
!1320 = !DILocation(line: 202, column: 46, scope: !1318)
!1321 = !DILocalVariable(name: "rec", scope: !1318, file: !72, line: 204, type: !70)
!1322 = !DILocation(line: 204, column: 19, scope: !1318)
!1323 = !DILocation(line: 206, column: 2, scope: !1318)
!1324 = distinct !{!1324, !1323}
!1325 = !DILocation(line: 206, column: 10, scope: !1326)
!1326 = !DILexicalBlockFile(scope: !1327, file: !72, discriminator: 1)
!1327 = distinct !DILexicalBlock(scope: !1328, file: !72, line: 206, column: 10)
!1328 = distinct !DILexicalBlock(scope: !1318, file: !72, line: 206, column: 4)
!1329 = !DILocation(line: 206, column: 17, scope: !1326)
!1330 = !DILocation(line: 206, column: 5, scope: !1331)
!1331 = !DILexicalBlockFile(scope: !1332, file: !72, discriminator: 2)
!1332 = distinct !DILexicalBlock(scope: !1327, file: !72, line: 206, column: 3)
!1333 = !DILocation(line: 206, column: 14, scope: !1334)
!1334 = !DILexicalBlockFile(scope: !1335, file: !72, discriminator: 3)
!1335 = distinct !DILexicalBlock(scope: !1327, file: !72, line: 206, column: 12)
!1336 = !DILocation(line: 206, column: 101, scope: !1334)
!1337 = !DILocation(line: 206, column: 112, scope: !1338)
!1338 = !DILexicalBlockFile(scope: !1328, file: !72, discriminator: 4)
!1339 = !DILocation(line: 208, column: 6, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1318, file: !72, line: 208, column: 6)
!1341 = !DILocation(line: 208, column: 14, scope: !1340)
!1342 = !DILocation(line: 208, column: 20, scope: !1340)
!1343 = !DILocation(line: 208, column: 6, scope: !1318)
!1344 = !DILocation(line: 209, column: 3, scope: !1340)
!1345 = !DILocation(line: 210, column: 8, scope: !1318)
!1346 = !DILocation(line: 210, column: 16, scope: !1318)
!1347 = !DILocation(line: 210, column: 23, scope: !1318)
!1348 = !DILocation(line: 210, column: 6, scope: !1318)
!1349 = !DILocation(line: 213, column: 6, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1318, file: !72, line: 213, column: 6)
!1351 = !DILocation(line: 213, column: 11, scope: !1350)
!1352 = !DILocation(line: 213, column: 24, scope: !1350)
!1353 = !DILocation(line: 213, column: 6, scope: !1318)
!1354 = !DILocation(line: 214, column: 30, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1350, file: !72, line: 213, column: 32)
!1356 = !DILocation(line: 214, column: 38, scope: !1355)
!1357 = !DILocation(line: 214, column: 43, scope: !1355)
!1358 = !DILocation(line: 215, column: 9, scope: !1355)
!1359 = !DILocation(line: 215, column: 14, scope: !1355)
!1360 = !DILocation(line: 215, column: 21, scope: !1355)
!1361 = !DILocation(line: 215, column: 26, scope: !1355)
!1362 = !DILocation(line: 216, column: 9, scope: !1355)
!1363 = !DILocation(line: 216, column: 14, scope: !1355)
!1364 = !DILocation(line: 216, column: 22, scope: !1355)
!1365 = !DILocation(line: 216, column: 27, scope: !1355)
!1366 = !DILocation(line: 217, column: 9, scope: !1355)
!1367 = !DILocation(line: 217, column: 14, scope: !1355)
!1368 = !DILocation(line: 214, column: 3, scope: !1355)
!1369 = !DILocation(line: 218, column: 2, scope: !1355)
!1370 = !DILocation(line: 219, column: 15, scope: !1318)
!1371 = !DILocation(line: 219, column: 23, scope: !1318)
!1372 = !DILocation(line: 219, column: 28, scope: !1318)
!1373 = !DILocation(line: 219, column: 2, scope: !1318)
!1374 = !DILocation(line: 221, column: 22, scope: !1318)
!1375 = !DILocation(line: 221, column: 30, scope: !1318)
!1376 = !DILocation(line: 221, column: 2, scope: !1318)
!1377 = !DILocation(line: 222, column: 1, scope: !1318)
!1378 = !DILocation(line: 222, column: 1, scope: !1379)
!1379 = !DILexicalBlockFile(scope: !1318, file: !72, discriminator: 1)
