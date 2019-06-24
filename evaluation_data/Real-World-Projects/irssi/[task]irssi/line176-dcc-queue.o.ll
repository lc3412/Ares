; ModuleID = './line176-dcc-queue.o.i'
source_filename = "./line176-dcc-queue.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GPtrArray = type { i8**, i32 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct.DCC_QUEUE_REC = type { %struct.CHAT_DCC_REC*, i8*, i8*, i8*, i32 }
%struct.CHAT_DCC_REC = type { i32, i32, i64, %struct._IRC_SERVER_REC*, i8*, i8*, i8*, %struct.CHAT_DCC_REC*, i8*, i8*, %struct._IPADDR, [46 x i8], i32, %struct._GIOChannel*, i32, i32, i32, i64, i64, i32, i8, %struct._GHashTable*, i8*, %struct._NET_SENDBUF_REC*, i8 }
%struct._IRC_SERVER_REC = type { i32, i32, i32, %struct._IRC_SERVER_CONNECT_REC*, i64, i64, i8*, i8*, i8, %struct._NET_SENDBUF_REC*, i32, [2 x %struct._GIOChannel*], i32, i32, %struct._RAWLOG_REC*, %struct._GHashTable*, i8*, i8*, i8*, i8, %struct._GTimeVal, i64, i32, %struct._GSList*, %struct._GSList*, void (%struct._SERVER_REC*, i8*, i32)*, i32 (%struct._SERVER_REC*, i8)*, i32 (%struct._SERVER_REC*, i8*)*, i8* (%struct._SERVER_REC*)*, void (%struct._SERVER_REC*, i8*, i8*, i32)*, i8** (%struct._SERVER_REC*, i8*, i8*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)*, %struct._QUERY_REC* (%struct._SERVER_REC*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)*, %struct._GSList*, %struct._GSList*, %struct._REDIRECT_REC*, %struct._GSList*, i8*, i8*, i8*, i8*, i8*, i32, i16, i32, i32, i32, i32, %struct._GHashTable*, %struct._GSList*, %struct._GSList*, %struct._GString*, i32, i32, %struct._GSList*, %struct._GTimeVal, %struct._GTimeVal, i32, i32, i32, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GHashTable*, %struct._GSList*, %struct._GSList*, i8*, %struct._GHashTable*, [256 x %struct.modes_type], [256 x i8], i32 (i8*, i8*)* }
%struct._IRC_SERVER_CONNECT_REC = type { i32, i32, i32, i8*, i32, i8*, i8*, i8*, i16, i8*, i8*, i32, i8*, %struct._IPADDR*, %struct._IPADDR*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._GIOChannel*, i8, i8*, i8*, i8*, i8*, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.modes_type = type { void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, i8 }
%struct._IRC_CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._IRC_SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)*, %struct._GSList*, i64, i32, i32 }
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
%struct._GHashTable = type opaque
%struct._NET_SENDBUF_REC = type { %struct._GIOChannel*, %struct._LINEBUF_REC*, i32, i32, i32, i8*, i32, i8 }
%struct._LINEBUF_REC = type opaque

@queuelist = internal global %struct._GPtrArray* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"dcc-queue.c\00", align 1
@__func__.dcc_queue_free = private unnamed_addr constant [15 x i8] c"dcc_queue_free\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"queue >= 0 && queue < queuelist->len\00", align 1
@__func__.dcc_queue_add = private unnamed_addr constant [14 x i8] c"dcc_queue_add\00", align 1
@__func__.dcc_queue_get_next = private unnamed_addr constant [19 x i8] c"dcc_queue_get_next\00", align 1
@__func__.dcc_queue_get_queue = private unnamed_addr constant [20 x i8] c"dcc_queue_get_queue\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"irc/dcc\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"dcc destroyed\00", align 1
@__func__.dcc_queue_remove_entry = private unnamed_addr constant [23 x i8] c"dcc_queue_remove_entry\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"DCC\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"CHAT\00", align 1

; Function Attrs: nounwind uwtable
define i32 @dcc_queue_old(i8*, i8*) #0 !dbg !770 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._GSList*, align 8
  %8 = alloca %struct.DCC_QUEUE_REC*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !772, metadata !773), !dbg !774
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !775, metadata !773), !dbg !776
  call void @llvm.dbg.declare(metadata i32* %6, metadata !777, metadata !773), !dbg !778
  store i32 0, i32* %6, align 4, !dbg !779
  br label %9, !dbg !781

; <label>:9:                                      ; preds = %68, %2
  %10 = load i32, i32* %6, align 4, !dbg !782
  %11 = load %struct._GPtrArray*, %struct._GPtrArray** @queuelist, align 8, !dbg !785
  %12 = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %11, i32 0, i32 1, !dbg !786
  %13 = load i32, i32* %12, align 8, !dbg !786
  %14 = icmp ult i32 %10, %13, !dbg !787
  br i1 %14, label %15, label %71, !dbg !788

; <label>:15:                                     ; preds = %9
  call void @llvm.dbg.declare(metadata %struct._GSList** %7, metadata !789, metadata !773), !dbg !791
  %16 = load i32, i32* %6, align 4, !dbg !792
  %17 = sext i32 %16 to i64, !dbg !793
  %18 = load %struct._GPtrArray*, %struct._GPtrArray** @queuelist, align 8, !dbg !794
  %19 = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %18, i32 0, i32 0, !dbg !795
  %20 = load i8**, i8*** %19, align 8, !dbg !795
  %21 = getelementptr inbounds i8*, i8** %20, i64 %17, !dbg !793
  %22 = load i8*, i8** %21, align 8, !dbg !793
  %23 = bitcast i8* %22 to %struct._GSList*, !dbg !793
  store %struct._GSList* %23, %struct._GSList** %7, align 8, !dbg !791
  br label %24, !dbg !796

; <label>:24:                                     ; preds = %63, %15
  %25 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !797
  %26 = icmp ne %struct._GSList* %25, null, !dbg !801
  br i1 %26, label %27, label %67, !dbg !802

; <label>:27:                                     ; preds = %24
  call void @llvm.dbg.declare(metadata %struct.DCC_QUEUE_REC** %8, metadata !803, metadata !773), !dbg !805
  %28 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !806
  %29 = getelementptr inbounds %struct._GSList, %struct._GSList* %28, i32 0, i32 0, !dbg !807
  %30 = load i8*, i8** %29, align 8, !dbg !807
  %31 = bitcast i8* %30 to %struct.DCC_QUEUE_REC*, !dbg !806
  store %struct.DCC_QUEUE_REC* %31, %struct.DCC_QUEUE_REC** %8, align 8, !dbg !805
  %32 = load %struct.DCC_QUEUE_REC*, %struct.DCC_QUEUE_REC** %8, align 8, !dbg !808
  %33 = icmp eq %struct.DCC_QUEUE_REC* %32, null, !dbg !810
  br i1 %33, label %34, label %35, !dbg !811

; <label>:34:                                     ; preds = %27
  br label %63, !dbg !812

; <label>:35:                                     ; preds = %27
  %36 = load i8*, i8** %4, align 8, !dbg !813
  %37 = load i8, i8* %36, align 1, !dbg !815
  %38 = sext i8 %37 to i32, !dbg !815
  %39 = icmp ne i32 %38, 0, !dbg !816
  br i1 %39, label %40, label %48, !dbg !817

; <label>:40:                                     ; preds = %35
  %41 = load i8*, i8** %4, align 8, !dbg !818
  %42 = load %struct.DCC_QUEUE_REC*, %struct.DCC_QUEUE_REC** %8, align 8, !dbg !819
  %43 = getelementptr inbounds %struct.DCC_QUEUE_REC, %struct.DCC_QUEUE_REC* %42, i32 0, i32 2, !dbg !820
  %44 = load i8*, i8** %43, align 8, !dbg !820
  %45 = call i32 @g_ascii_strcasecmp(i8* %41, i8* %44), !dbg !821
  %46 = icmp ne i32 %45, 0, !dbg !822
  br i1 %46, label %47, label %48, !dbg !823

; <label>:47:                                     ; preds = %40
  br label %63, !dbg !825

; <label>:48:                                     ; preds = %40, %35
  %49 = load i8*, i8** %5, align 8, !dbg !826
  %50 = load i8, i8* %49, align 1, !dbg !828
  %51 = sext i8 %50 to i32, !dbg !828
  %52 = icmp ne i32 %51, 0, !dbg !829
  br i1 %52, label %53, label %61, !dbg !830

; <label>:53:                                     ; preds = %48
  %54 = load i8*, i8** %5, align 8, !dbg !831
  %55 = load %struct.DCC_QUEUE_REC*, %struct.DCC_QUEUE_REC** %8, align 8, !dbg !832
  %56 = getelementptr inbounds %struct.DCC_QUEUE_REC, %struct.DCC_QUEUE_REC* %55, i32 0, i32 1, !dbg !833
  %57 = load i8*, i8** %56, align 8, !dbg !833
  %58 = call i32 @g_ascii_strcasecmp(i8* %54, i8* %57), !dbg !834
  %59 = icmp ne i32 %58, 0, !dbg !835
  br i1 %59, label %60, label %61, !dbg !836

; <label>:60:                                     ; preds = %53
  br label %63, !dbg !837

; <label>:61:                                     ; preds = %53, %48
  %62 = load i32, i32* %6, align 4, !dbg !838
  store i32 %62, i32* %3, align 4, !dbg !839
  br label %72, !dbg !839

; <label>:63:                                     ; preds = %60, %47, %34
  %64 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !840
  %65 = getelementptr inbounds %struct._GSList, %struct._GSList* %64, i32 0, i32 1, !dbg !842
  %66 = load %struct._GSList*, %struct._GSList** %65, align 8, !dbg !842
  store %struct._GSList* %66, %struct._GSList** %7, align 8, !dbg !843
  br label %24, !dbg !844, !llvm.loop !845

; <label>:67:                                     ; preds = %24
  br label %68, !dbg !846

; <label>:68:                                     ; preds = %67
  %69 = load i32, i32* %6, align 4, !dbg !847
  %70 = add nsw i32 %69, 1, !dbg !847
  store i32 %70, i32* %6, align 4, !dbg !847
  br label %9, !dbg !849, !llvm.loop !850

; <label>:71:                                     ; preds = %9
  store i32 -1, i32* %3, align 4, !dbg !852
  br label %72, !dbg !852

; <label>:72:                                     ; preds = %71, %61
  %73 = load i32, i32* %3, align 4, !dbg !853
  ret i32 %73, !dbg !853
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @g_ascii_strcasecmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @dcc_queue_new() #0 !dbg !854 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !857, metadata !773), !dbg !858
  store i32 0, i32* %1, align 4, !dbg !859
  br label %2, !dbg !861

; <label>:2:                                      ; preds = %19, %0
  %3 = load i32, i32* %1, align 4, !dbg !862
  %4 = load %struct._GPtrArray*, %struct._GPtrArray** @queuelist, align 8, !dbg !865
  %5 = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %4, i32 0, i32 1, !dbg !866
  %6 = load i32, i32* %5, align 8, !dbg !866
  %7 = icmp ult i32 %3, %6, !dbg !867
  br i1 %7, label %8, label %22, !dbg !868

; <label>:8:                                      ; preds = %2
  %9 = load i32, i32* %1, align 4, !dbg !869
  %10 = sext i32 %9 to i64, !dbg !872
  %11 = load %struct._GPtrArray*, %struct._GPtrArray** @queuelist, align 8, !dbg !873
  %12 = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %11, i32 0, i32 0, !dbg !874
  %13 = load i8**, i8*** %12, align 8, !dbg !874
  %14 = getelementptr inbounds i8*, i8** %13, i64 %10, !dbg !872
  %15 = load i8*, i8** %14, align 8, !dbg !872
  %16 = icmp eq i8* %15, null, !dbg !875
  br i1 %16, label %17, label %18, !dbg !876

; <label>:17:                                     ; preds = %8
  br label %22, !dbg !877

; <label>:18:                                     ; preds = %8
  br label %19, !dbg !878

; <label>:19:                                     ; preds = %18
  %20 = load i32, i32* %1, align 4, !dbg !879
  %21 = add nsw i32 %20, 1, !dbg !879
  store i32 %21, i32* %1, align 4, !dbg !879
  br label %2, !dbg !881, !llvm.loop !882

; <label>:22:                                     ; preds = %17, %2
  %23 = load i32, i32* %1, align 4, !dbg !884
  %24 = load %struct._GPtrArray*, %struct._GPtrArray** @queuelist, align 8, !dbg !886
  %25 = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %24, i32 0, i32 1, !dbg !887
  %26 = load i32, i32* %25, align 8, !dbg !887
  %27 = icmp eq i32 %23, %26, !dbg !888
  br i1 %27, label %28, label %33, !dbg !889

; <label>:28:                                     ; preds = %22
  %29 = load %struct._GPtrArray*, %struct._GPtrArray** @queuelist, align 8, !dbg !890
  %30 = load i32, i32* %1, align 4, !dbg !891
  %31 = add nsw i32 %30, 1, !dbg !892
  %32 = mul nsw i32 %31, 2, !dbg !893
  call void @g_ptr_array_set_size(%struct._GPtrArray* %29, i32 %32), !dbg !894
  br label %33, !dbg !894

; <label>:33:                                     ; preds = %28, %22
  %34 = call %struct._GSList* @g_slist_append(%struct._GSList* null, i8* null), !dbg !895
  %35 = bitcast %struct._GSList* %34 to i8*, !dbg !895
  %36 = load i32, i32* %1, align 4, !dbg !896
  %37 = sext i32 %36 to i64, !dbg !897
  %38 = load %struct._GPtrArray*, %struct._GPtrArray** @queuelist, align 8, !dbg !898
  %39 = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %38, i32 0, i32 0, !dbg !899
  %40 = load i8**, i8*** %39, align 8, !dbg !899
  %41 = getelementptr inbounds i8*, i8** %40, i64 %37, !dbg !897
  store i8* %35, i8** %41, align 8, !dbg !900
  %42 = load i32, i32* %1, align 4, !dbg !901
  ret i32 %42, !dbg !902
}

declare void @g_ptr_array_set_size(%struct._GPtrArray*, i32) #2

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #2

; Function Attrs: nounwind uwtable
define void @dcc_queue_free(i32) #0 !dbg !903 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._GSList**, align 8
  %4 = alloca %struct.DCC_QUEUE_REC*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !906, metadata !773), !dbg !907
  call void @llvm.dbg.declare(metadata %struct._GSList*** %3, metadata !908, metadata !773), !dbg !909
  br label %5, !dbg !910, !llvm.loop !911

; <label>:5:                                      ; preds = %1
  %6 = load i32, i32* %2, align 4, !dbg !912
  %7 = icmp sge i32 %6, 0, !dbg !916
  br i1 %7, label %8, label %15, !dbg !917

; <label>:8:                                      ; preds = %5
  %9 = load i32, i32* %2, align 4, !dbg !918
  %10 = load %struct._GPtrArray*, %struct._GPtrArray** @queuelist, align 8, !dbg !920
  %11 = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %10, i32 0, i32 1, !dbg !921
  %12 = load i32, i32* %11, align 8, !dbg !921
  %13 = icmp ult i32 %9, %12, !dbg !922
  br i1 %13, label %14, label %15, !dbg !923

; <label>:14:                                     ; preds = %8
  br label %16, !dbg !924

; <label>:15:                                     ; preds = %8, %5
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 98, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.dcc_queue_free, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0)) #4, !dbg !926
  unreachable, !dbg !926

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !928

; <label>:17:                                     ; preds = %16
  %18 = load i32, i32* %2, align 4, !dbg !930
  %19 = sext i32 %18 to i64, !dbg !931
  %20 = load %struct._GPtrArray*, %struct._GPtrArray** @queuelist, align 8, !dbg !932
  %21 = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %20, i32 0, i32 0, !dbg !933
  %22 = load i8**, i8*** %21, align 8, !dbg !933
  %23 = getelementptr inbounds i8*, i8** %22, i64 %19, !dbg !931
  %24 = bitcast i8** %23 to %struct._GSList**, !dbg !934
  store %struct._GSList** %24, %struct._GSList*** %3, align 8, !dbg !935
  br label %25, !dbg !936

; <label>:25:                                     ; preds = %29, %17
  %26 = load %struct._GSList**, %struct._GSList*** %3, align 8, !dbg !937
  %27 = load %struct._GSList*, %struct._GSList** %26, align 8, !dbg !939
  %28 = icmp ne %struct._GSList* %27, null, !dbg !940
  br i1 %28, label %29, label %41, !dbg !941

; <label>:29:                                     ; preds = %25
  call void @llvm.dbg.declare(metadata %struct.DCC_QUEUE_REC** %4, metadata !942, metadata !773), !dbg !944
  %30 = load %struct._GSList**, %struct._GSList*** %3, align 8, !dbg !945
  %31 = load %struct._GSList*, %struct._GSList** %30, align 8, !dbg !946
  %32 = getelementptr inbounds %struct._GSList, %struct._GSList* %31, i32 0, i32 0, !dbg !947
  %33 = load i8*, i8** %32, align 8, !dbg !947
  %34 = bitcast i8* %33 to %struct.DCC_QUEUE_REC*, !dbg !948
  store %struct.DCC_QUEUE_REC* %34, %struct.DCC_QUEUE_REC** %4, align 8, !dbg !944
  %35 = load %struct._GSList**, %struct._GSList*** %3, align 8, !dbg !949
  %36 = load %struct._GSList*, %struct._GSList** %35, align 8, !dbg !950
  %37 = getelementptr inbounds %struct._GSList, %struct._GSList* %36, i32 0, i32 1, !dbg !951
  %38 = load %struct._GSList*, %struct._GSList** %37, align 8, !dbg !951
  %39 = load %struct._GSList**, %struct._GSList*** %3, align 8, !dbg !952
  store %struct._GSList* %38, %struct._GSList** %39, align 8, !dbg !953
  %40 = load %struct.DCC_QUEUE_REC*, %struct.DCC_QUEUE_REC** %4, align 8, !dbg !954
  call void @dcc_queue_free_rec(%struct.DCC_QUEUE_REC* %40), !dbg !955
  br label %25, !dbg !956, !llvm.loop !958

; <label>:41:                                     ; preds = %25
  ret void, !dbg !959
}

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @dcc_queue_free_rec(%struct.DCC_QUEUE_REC*) #0 !dbg !960 {
  %2 = alloca %struct.DCC_QUEUE_REC*, align 8
  store %struct.DCC_QUEUE_REC* %0, %struct.DCC_QUEUE_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.DCC_QUEUE_REC** %2, metadata !963, metadata !773), !dbg !964
  %3 = load %struct.DCC_QUEUE_REC*, %struct.DCC_QUEUE_REC** %2, align 8, !dbg !965
  %4 = icmp ne %struct.DCC_QUEUE_REC* %3, null, !dbg !967
  br i1 %4, label %5, label %17, !dbg !968

; <label>:5:                                      ; preds = %1
  %6 = load %struct.DCC_QUEUE_REC*, %struct.DCC_QUEUE_REC** %2, align 8, !dbg !969
  %7 = getelementptr inbounds %struct.DCC_QUEUE_REC, %struct.DCC_QUEUE_REC* %6, i32 0, i32 1, !dbg !971
  %8 = load i8*, i8** %7, align 8, !dbg !971
  call void @g_free(i8* %8), !dbg !972
  %9 = load %struct.DCC_QUEUE_REC*, %struct.DCC_QUEUE_REC** %2, align 8, !dbg !973
  %10 = getelementptr inbounds %struct.DCC_QUEUE_REC, %struct.DCC_QUEUE_REC* %9, i32 0, i32 2, !dbg !974
  %11 = load i8*, i8** %10, align 8, !dbg !974
  call void @g_free(i8* %11), !dbg !975
  %12 = load %struct.DCC_QUEUE_REC*, %struct.DCC_QUEUE_REC** %2, align 8, !dbg !976
  %13 = getelementptr inbounds %struct.DCC_QUEUE_REC, %struct.DCC_QUEUE_REC* %12, i32 0, i32 3, !dbg !977
  %14 = load i8*, i8** %13, align 8, !dbg !977
  call void @g_free(i8* %14), !dbg !978
  %15 = load %struct.DCC_QUEUE_REC*, %struct.DCC_QUEUE_REC** %2, align 8, !dbg !979
  %16 = bitcast %struct.DCC_QUEUE_REC* %15 to i8*, !dbg !979
  call void @g_free(i8* %16), !dbg !980
  br label %17, !dbg !981

; <label>:17:                                     ; preds = %5, %1
  ret void, !dbg !982
}

; Function Attrs: nounwind uwtable
define void @dcc_queue_add(i32, i32, i8*, i8*, i8*, %struct.CHAT_DCC_REC*, i32) #0 !dbg !983 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.CHAT_DCC_REC*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.DCC_QUEUE_REC*, align 8
  %16 = alloca %struct._GSList**, align 8
  store i32 %0, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !986, metadata !773), !dbg !987
  store i32 %1, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !988, metadata !773), !dbg !989
  store i8* %2, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !990, metadata !773), !dbg !991
  store i8* %3, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !992, metadata !773), !dbg !993
  store i8* %4, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !994, metadata !773), !dbg !995
  store %struct.CHAT_DCC_REC* %5, %struct.CHAT_DCC_REC** %13, align 8
  call void @llvm.dbg.declare(metadata %struct.CHAT_DCC_REC** %13, metadata !996, metadata !773), !dbg !997
  store i32 %6, i32* %14, align 4
  call void @llvm.dbg.declare(metadata i32* %14, metadata !998, metadata !773), !dbg !999
  call void @llvm.dbg.declare(metadata %struct.DCC_QUEUE_REC** %15, metadata !1000, metadata !773), !dbg !1001
  call void @llvm.dbg.declare(metadata %struct._GSList*** %16, metadata !1002, metadata !773), !dbg !1003
  br label %17, !dbg !1004, !llvm.loop !1005

; <label>:17:                                     ; preds = %7
  %18 = load i32, i32* %8, align 4, !dbg !1006
  %19 = icmp sge i32 %18, 0, !dbg !1010
  br i1 %19, label %20, label %27, !dbg !1011

; <label>:20:                                     ; preds = %17
  %21 = load i32, i32* %8, align 4, !dbg !1012
  %22 = load %struct._GPtrArray*, %struct._GPtrArray** @queuelist, align 8, !dbg !1014
  %23 = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %22, i32 0, i32 1, !dbg !1015
  %24 = load i32, i32* %23, align 8, !dbg !1015
  %25 = icmp ult i32 %21, %24, !dbg !1016
  br i1 %25, label %26, label %27, !dbg !1017

; <label>:26:                                     ; preds = %20
  br label %28, !dbg !1018

; <label>:27:                                     ; preds = %20, %17
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 119, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.dcc_queue_add, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0)) #4, !dbg !1020
  unreachable, !dbg !1020

; <label>:28:                                     ; preds = %26
  br label %29, !dbg !1022

; <label>:29:                                     ; preds = %28
  %30 = call noalias i8* @g_malloc0_n(i64 1, i64 40), !dbg !1024
  %31 = bitcast i8* %30 to %struct.DCC_QUEUE_REC*, !dbg !1025
  store %struct.DCC_QUEUE_REC* %31, %struct.DCC_QUEUE_REC** %15, align 8, !dbg !1026
  %32 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %13, align 8, !dbg !1027
  %33 = load %struct.DCC_QUEUE_REC*, %struct.DCC_QUEUE_REC** %15, align 8, !dbg !1028
  %34 = getelementptr inbounds %struct.DCC_QUEUE_REC, %struct.DCC_QUEUE_REC* %33, i32 0, i32 0, !dbg !1029
  store %struct.CHAT_DCC_REC* %32, %struct.CHAT_DCC_REC** %34, align 8, !dbg !1030
  %35 = load i8*, i8** %12, align 8, !dbg !1031
  %36 = call noalias i8* @g_strdup(i8* %35), !dbg !1032
  %37 = load %struct.DCC_QUEUE_REC*, %struct.DCC_QUEUE_REC** %15, align 8, !dbg !1033
  %38 = getelementptr inbounds %struct.DCC_QUEUE_REC, %struct.DCC_QUEUE_REC* %37, i32 0, i32 1, !dbg !1034
  store i8* %36, i8** %38, align 8, !dbg !1035
  %39 = load i8*, i8** %10, align 8, !dbg !1036
  %40 = call noalias i8* @g_strdup(i8* %39), !dbg !1037
  %41 = load %struct.DCC_QUEUE_REC*, %struct.DCC_QUEUE_REC** %15, align 8, !dbg !1038
  %42 = getelementptr inbounds %struct.DCC_QUEUE_REC, %struct.DCC_QUEUE_REC* %41, i32 0, i32 2, !dbg !1039
  store i8* %40, i8** %42, align 8, !dbg !1040
  %43 = load i8*, i8** %11, align 8, !dbg !1041
  %44 = call noalias i8* @g_strdup(i8* %43), !dbg !1042
  %45 = load %struct.DCC_QUEUE_REC*, %struct.DCC_QUEUE_REC** %15, align 8, !dbg !1043
  %46 = getelementptr inbounds %struct.DCC_QUEUE_REC, %struct.DCC_QUEUE_REC* %45, i32 0, i32 3, !dbg !1044
  store i8* %44, i8** %46, align 8, !dbg !1045
  %47 = load i32, i32* %14, align 4, !dbg !1046
  %48 = load %struct.DCC_QUEUE_REC*, %struct.DCC_QUEUE_REC** %15, align 8, !dbg !1047
  %49 = getelementptr inbounds %struct.DCC_QUEUE_REC, %struct.DCC_QUEUE_REC* %48, i32 0, i32 4, !dbg !1048
  store i32 %47, i32* %49, align 8, !dbg !1049
  %50 = load i32, i32* %8, align 4, !dbg !1050
  %51 = sext i32 %50 to i64, !dbg !1051
  %52 = load %struct._GPtrArray*, %struct._GPtrArray** @queuelist, align 8, !dbg !1052
  %53 = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %52, i32 0, i32 0, !dbg !1053
  %54 = load i8**, i8*** %53, align 8, !dbg !1053
  %55 = getelementptr inbounds i8*, i8** %54, i64 %51, !dbg !1051
  %56 = bitcast i8** %55 to %struct._GSList**, !dbg !1054
  store %struct._GSList** %56, %struct._GSList*** %16, align 8, !dbg !1055
  %57 = load i32, i32* %9, align 4, !dbg !1056
  %58 = icmp eq i32 %57, 1, !dbg !1058
  br i1 %58, label %59, label %66, !dbg !1059

; <label>:59:                                     ; preds = %29
  %60 = load %struct._GSList**, %struct._GSList*** %16, align 8, !dbg !1060
  %61 = load %struct._GSList*, %struct._GSList** %60, align 8, !dbg !1061
  %62 = load %struct.DCC_QUEUE_REC*, %struct.DCC_QUEUE_REC** %15, align 8, !dbg !1062
  %63 = bitcast %struct.DCC_QUEUE_REC* %62 to i8*, !dbg !1062
  %64 = call %struct._GSList* @g_slist_insert(%struct._GSList* %61, i8* %63, i32 1), !dbg !1063
  %65 = load %struct._GSList**, %struct._GSList*** %16, align 8, !dbg !1064
  store %struct._GSList* %64, %struct._GSList** %65, align 8, !dbg !1065
  br label %73, !dbg !1066

; <label>:66:                                     ; preds = %29
  %67 = load %struct._GSList**, %struct._GSList*** %16, align 8, !dbg !1067
  %68 = load %struct._GSList*, %struct._GSList** %67, align 8, !dbg !1068
  %69 = load %struct.DCC_QUEUE_REC*, %struct.DCC_QUEUE_REC** %15, align 8, !dbg !1069
  %70 = bitcast %struct.DCC_QUEUE_REC* %69 to i8*, !dbg !1069
  %71 = call %struct._GSList* @g_slist_append(%struct._GSList* %68, i8* %70), !dbg !1070
  %72 = load %struct._GSList**, %struct._GSList*** %16, align 8, !dbg !1071
  store %struct._GSList* %71, %struct._GSList** %72, align 8, !dbg !1072
  br label %73

; <label>:73:                                     ; preds = %66, %59
  ret void, !dbg !1073
}

declare noalias i8* @g_malloc0_n(i64, i64) #2

declare noalias i8* @g_strdup(i8*) #2

declare %struct._GSList* @g_slist_insert(%struct._GSList*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @dcc_queue_remove_head(i32) #0 !dbg !1074 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1077, metadata !773), !dbg !1078
  %3 = load i32, i32* %2, align 4, !dbg !1079
  %4 = call i32 @dcc_queue_remove_entry(i32 %3, i32 1), !dbg !1080
  ret i32 %4, !dbg !1081
}

; Function Attrs: nounwind uwtable
define internal i32 @dcc_queue_remove_entry(i32, i32) #0 !dbg !1082 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.DCC_QUEUE_REC*, align 8
  %7 = alloca %struct._GSList**, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1085, metadata !773), !dbg !1086
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1087, metadata !773), !dbg !1088
  call void @llvm.dbg.declare(metadata %struct.DCC_QUEUE_REC** %6, metadata !1089, metadata !773), !dbg !1090
  call void @llvm.dbg.declare(metadata %struct._GSList*** %7, metadata !1091, metadata !773), !dbg !1092
  br label %8, !dbg !1093, !llvm.loop !1094

; <label>:8:                                      ; preds = %2
  %9 = load i32, i32* %4, align 4, !dbg !1095
  %10 = icmp sge i32 %9, 0, !dbg !1099
  br i1 %10, label %11, label %18, !dbg !1100

; <label>:11:                                     ; preds = %8
  %12 = load i32, i32* %4, align 4, !dbg !1101
  %13 = load %struct._GPtrArray*, %struct._GPtrArray** @queuelist, align 8, !dbg !1103
  %14 = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %13, i32 0, i32 1, !dbg !1104
  %15 = load i32, i32* %14, align 8, !dbg !1104
  %16 = icmp ult i32 %12, %15, !dbg !1105
  br i1 %16, label %17, label %18, !dbg !1106

; <label>:17:                                     ; preds = %11
  br label %19, !dbg !1107

; <label>:18:                                     ; preds = %11, %8
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 144, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.dcc_queue_remove_entry, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0)) #4, !dbg !1109
  unreachable, !dbg !1109

; <label>:19:                                     ; preds = %17
  br label %20, !dbg !1111

; <label>:20:                                     ; preds = %19
  %21 = load i32, i32* %4, align 4, !dbg !1113
  %22 = sext i32 %21 to i64, !dbg !1114
  %23 = load %struct._GPtrArray*, %struct._GPtrArray** @queuelist, align 8, !dbg !1115
  %24 = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %23, i32 0, i32 0, !dbg !1116
  %25 = load i8**, i8*** %24, align 8, !dbg !1116
  %26 = getelementptr inbounds i8*, i8** %25, i64 %22, !dbg !1114
  %27 = bitcast i8** %26 to %struct._GSList**, !dbg !1117
  store %struct._GSList** %27, %struct._GSList*** %7, align 8, !dbg !1118
  %28 = load %struct._GSList**, %struct._GSList*** %7, align 8, !dbg !1119
  %29 = load %struct._GSList*, %struct._GSList** %28, align 8, !dbg !1121
  %30 = icmp eq %struct._GSList* %29, null, !dbg !1122
  br i1 %30, label %37, label %31, !dbg !1123

; <label>:31:                                     ; preds = %20
  %32 = load %struct._GSList**, %struct._GSList*** %7, align 8, !dbg !1124
  %33 = load %struct._GSList*, %struct._GSList** %32, align 8, !dbg !1126
  %34 = getelementptr inbounds %struct._GSList, %struct._GSList* %33, i32 0, i32 1, !dbg !1127
  %35 = load %struct._GSList*, %struct._GSList** %34, align 8, !dbg !1127
  %36 = icmp eq %struct._GSList* %35, null, !dbg !1128
  br i1 %36, label %37, label %38, !dbg !1129

; <label>:37:                                     ; preds = %31, %20
  store i32 0, i32* %3, align 4, !dbg !1130
  br label %62, !dbg !1130

; <label>:38:                                     ; preds = %31
  %39 = load i32, i32* %5, align 4, !dbg !1131
  %40 = icmp ne i32 %39, 0, !dbg !1131
  br i1 %40, label %41, label %46, !dbg !1131

; <label>:41:                                     ; preds = %38
  %42 = load %struct._GSList**, %struct._GSList*** %7, align 8, !dbg !1132
  %43 = load %struct._GSList*, %struct._GSList** %42, align 8, !dbg !1134
  %44 = getelementptr inbounds %struct._GSList, %struct._GSList* %43, i32 0, i32 0, !dbg !1135
  %45 = load i8*, i8** %44, align 8, !dbg !1135
  br label %52, !dbg !1136

; <label>:46:                                     ; preds = %38
  %47 = load %struct._GSList**, %struct._GSList*** %7, align 8, !dbg !1137
  %48 = load %struct._GSList*, %struct._GSList** %47, align 8, !dbg !1139
  %49 = call %struct._GSList* @g_slist_last(%struct._GSList* %48), !dbg !1140
  %50 = getelementptr inbounds %struct._GSList, %struct._GSList* %49, i32 0, i32 0, !dbg !1141
  %51 = load i8*, i8** %50, align 8, !dbg !1141
  br label %52, !dbg !1142

; <label>:52:                                     ; preds = %46, %41
  %53 = phi i8* [ %45, %41 ], [ %51, %46 ], !dbg !1143
  %54 = bitcast i8* %53 to %struct.DCC_QUEUE_REC*, !dbg !1143
  store %struct.DCC_QUEUE_REC* %54, %struct.DCC_QUEUE_REC** %6, align 8, !dbg !1145
  %55 = load %struct._GSList**, %struct._GSList*** %7, align 8, !dbg !1146
  %56 = load %struct._GSList*, %struct._GSList** %55, align 8, !dbg !1147
  %57 = load %struct.DCC_QUEUE_REC*, %struct.DCC_QUEUE_REC** %6, align 8, !dbg !1148
  %58 = bitcast %struct.DCC_QUEUE_REC* %57 to i8*, !dbg !1148
  %59 = call %struct._GSList* @g_slist_remove(%struct._GSList* %56, i8* %58), !dbg !1149
  %60 = load %struct._GSList**, %struct._GSList*** %7, align 8, !dbg !1150
  store %struct._GSList* %59, %struct._GSList** %60, align 8, !dbg !1151
  %61 = load %struct.DCC_QUEUE_REC*, %struct.DCC_QUEUE_REC** %6, align 8, !dbg !1152
  call void @dcc_queue_free_rec(%struct.DCC_QUEUE_REC* %61), !dbg !1153
  store i32 1, i32* %3, align 4, !dbg !1154
  br label %62, !dbg !1154

; <label>:62:                                     ; preds = %52, %37
  %63 = load i32, i32* %3, align 4, !dbg !1155
  ret i32 %63, !dbg !1155
}

; Function Attrs: nounwind uwtable
define i32 @dcc_queue_remove_tail(i32) #0 !dbg !1156 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1157, metadata !773), !dbg !1158
  %3 = load i32, i32* %2, align 4, !dbg !1159
  %4 = call i32 @dcc_queue_remove_entry(i32 %3, i32 0), !dbg !1160
  ret i32 %4, !dbg !1161
}

; Function Attrs: nounwind uwtable
define %struct.DCC_QUEUE_REC* @dcc_queue_get_next(i32) #0 !dbg !1162 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._GSList*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1165, metadata !773), !dbg !1166
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !1167, metadata !773), !dbg !1168
  br label %4, !dbg !1169, !llvm.loop !1170

; <label>:4:                                      ; preds = %1
  %5 = load i32, i32* %2, align 4, !dbg !1171
  %6 = icmp sge i32 %5, 0, !dbg !1175
  br i1 %6, label %7, label %14, !dbg !1176

; <label>:7:                                      ; preds = %4
  %8 = load i32, i32* %2, align 4, !dbg !1177
  %9 = load %struct._GPtrArray*, %struct._GPtrArray** @queuelist, align 8, !dbg !1179
  %10 = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %9, i32 0, i32 1, !dbg !1180
  %11 = load i32, i32* %10, align 8, !dbg !1180
  %12 = icmp ult i32 %8, %11, !dbg !1181
  br i1 %12, label %13, label %14, !dbg !1182

; <label>:13:                                     ; preds = %7
  br label %15, !dbg !1183

; <label>:14:                                     ; preds = %7, %4
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 175, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.dcc_queue_get_next, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0)) #4, !dbg !1185
  unreachable, !dbg !1185

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !1187

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %2, align 4, !dbg !1189
  %18 = sext i32 %17 to i64, !dbg !1190
  %19 = load %struct._GPtrArray*, %struct._GPtrArray** @queuelist, align 8, !dbg !1191
  %20 = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %19, i32 0, i32 0, !dbg !1192
  %21 = load i8**, i8*** %20, align 8, !dbg !1192
  %22 = getelementptr inbounds i8*, i8** %21, i64 %18, !dbg !1190
  %23 = load i8*, i8** %22, align 8, !dbg !1190
  %24 = bitcast i8* %23 to %struct._GSList*, !dbg !1190
  store %struct._GSList* %24, %struct._GSList** %3, align 8, !dbg !1193
  %25 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1194
  %26 = icmp eq %struct._GSList* %25, null, !dbg !1195
  br i1 %26, label %32, label %27, !dbg !1196

; <label>:27:                                     ; preds = %16
  %28 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1197
  %29 = getelementptr inbounds %struct._GSList, %struct._GSList* %28, i32 0, i32 1, !dbg !1199
  %30 = load %struct._GSList*, %struct._GSList** %29, align 8, !dbg !1199
  %31 = icmp eq %struct._GSList* %30, null, !dbg !1200
  br i1 %31, label %32, label %33, !dbg !1201

; <label>:32:                                     ; preds = %27, %16
  br label %39, !dbg !1202

; <label>:33:                                     ; preds = %27
  %34 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1204
  %35 = getelementptr inbounds %struct._GSList, %struct._GSList* %34, i32 0, i32 1, !dbg !1206
  %36 = load %struct._GSList*, %struct._GSList** %35, align 8, !dbg !1206
  %37 = getelementptr inbounds %struct._GSList, %struct._GSList* %36, i32 0, i32 0, !dbg !1207
  %38 = load i8*, i8** %37, align 8, !dbg !1207
  br label %39, !dbg !1208

; <label>:39:                                     ; preds = %33, %32
  %40 = phi i8* [ null, %32 ], [ %38, %33 ], !dbg !1209
  %41 = bitcast i8* %40 to %struct.DCC_QUEUE_REC*, !dbg !1209
  ret %struct.DCC_QUEUE_REC* %41, !dbg !1211
}

; Function Attrs: nounwind uwtable
define %struct._GSList* @dcc_queue_get_queue(i32) #0 !dbg !1212 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._GSList*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1215, metadata !773), !dbg !1216
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !1217, metadata !773), !dbg !1218
  br label %4, !dbg !1219, !llvm.loop !1220

; <label>:4:                                      ; preds = %1
  %5 = load i32, i32* %2, align 4, !dbg !1221
  %6 = icmp sge i32 %5, 0, !dbg !1225
  br i1 %6, label %7, label %14, !dbg !1226

; <label>:7:                                      ; preds = %4
  %8 = load i32, i32* %2, align 4, !dbg !1227
  %9 = load %struct._GPtrArray*, %struct._GPtrArray** @queuelist, align 8, !dbg !1229
  %10 = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %9, i32 0, i32 1, !dbg !1230
  %11 = load i32, i32* %10, align 8, !dbg !1230
  %12 = icmp ult i32 %8, %11, !dbg !1231
  br i1 %12, label %13, label %14, !dbg !1232

; <label>:13:                                     ; preds = %7
  br label %15, !dbg !1233

; <label>:14:                                     ; preds = %7, %4
  call void @g_assertion_message_expr(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 185, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.dcc_queue_get_queue, i32 0, i32 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i32 0, i32 0)) #4, !dbg !1235
  unreachable, !dbg !1235

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !1237

; <label>:16:                                     ; preds = %15
  %17 = load i32, i32* %2, align 4, !dbg !1239
  %18 = sext i32 %17 to i64, !dbg !1240
  %19 = load %struct._GPtrArray*, %struct._GPtrArray** @queuelist, align 8, !dbg !1241
  %20 = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %19, i32 0, i32 0, !dbg !1242
  %21 = load i8**, i8*** %20, align 8, !dbg !1242
  %22 = getelementptr inbounds i8*, i8** %21, i64 %18, !dbg !1240
  %23 = load i8*, i8** %22, align 8, !dbg !1240
  %24 = bitcast i8* %23 to %struct._GSList*, !dbg !1240
  store %struct._GSList* %24, %struct._GSList** %3, align 8, !dbg !1243
  %25 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1244
  %26 = icmp eq %struct._GSList* %25, null, !dbg !1245
  br i1 %26, label %27, label %28, !dbg !1244

; <label>:27:                                     ; preds = %16
  br label %32, !dbg !1246

; <label>:28:                                     ; preds = %16
  %29 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1248
  %30 = getelementptr inbounds %struct._GSList, %struct._GSList* %29, i32 0, i32 1, !dbg !1250
  %31 = load %struct._GSList*, %struct._GSList** %30, align 8, !dbg !1250
  br label %32, !dbg !1251

; <label>:32:                                     ; preds = %28, %27
  %33 = phi %struct._GSList* [ null, %27 ], [ %31, %28 ], !dbg !1252
  ret %struct._GSList* %33, !dbg !1254
}

; Function Attrs: nounwind uwtable
define void @dcc_queue_init() #0 !dbg !1255 {
  %1 = call %struct._GPtrArray* @g_ptr_array_new(), !dbg !1256
  store %struct._GPtrArray* %1, %struct._GPtrArray** @queuelist, align 8, !dbg !1257
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.CHAT_DCC_REC*)* @sig_dcc_destroyed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1258
  ret void, !dbg !1259
}

declare %struct._GPtrArray* @g_ptr_array_new() #2

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @sig_dcc_destroyed(%struct.CHAT_DCC_REC*) #0 !dbg !1260 {
  %2 = alloca %struct.CHAT_DCC_REC*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct.DCC_QUEUE_REC*, align 8
  store %struct.CHAT_DCC_REC* %0, %struct.CHAT_DCC_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.CHAT_DCC_REC** %2, metadata !1263, metadata !773), !dbg !1264
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1265, metadata !773), !dbg !1266
  %6 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !1267
  %7 = bitcast %struct.CHAT_DCC_REC* %6 to i8*, !dbg !1267
  %8 = call i8* @module_check_cast_module(i8* %7, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0)), !dbg !1269
  %9 = bitcast i8* %8 to %struct.CHAT_DCC_REC*, !dbg !1270
  %10 = icmp ne %struct.CHAT_DCC_REC* %9, null, !dbg !1270
  br i1 %10, label %11, label %12, !dbg !1271

; <label>:11:                                     ; preds = %1
  br i1 false, label %13, label %14, !dbg !1272

; <label>:12:                                     ; preds = %1
  br i1 false, label %14, label %13, !dbg !1274

; <label>:13:                                     ; preds = %12, %11
  br label %58, !dbg !1276

; <label>:14:                                     ; preds = %12, %11
  store i32 0, i32* %3, align 4, !dbg !1277
  br label %15, !dbg !1279

; <label>:15:                                     ; preds = %55, %14
  %16 = load i32, i32* %3, align 4, !dbg !1280
  %17 = load %struct._GPtrArray*, %struct._GPtrArray** @queuelist, align 8, !dbg !1283
  %18 = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %17, i32 0, i32 1, !dbg !1284
  %19 = load i32, i32* %18, align 8, !dbg !1284
  %20 = icmp ult i32 %16, %19, !dbg !1285
  br i1 %20, label %21, label %58, !dbg !1286

; <label>:21:                                     ; preds = %15
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !1287, metadata !773), !dbg !1289
  %22 = load i32, i32* %3, align 4, !dbg !1290
  %23 = sext i32 %22 to i64, !dbg !1291
  %24 = load %struct._GPtrArray*, %struct._GPtrArray** @queuelist, align 8, !dbg !1292
  %25 = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %24, i32 0, i32 0, !dbg !1293
  %26 = load i8**, i8*** %25, align 8, !dbg !1293
  %27 = getelementptr inbounds i8*, i8** %26, i64 %23, !dbg !1291
  %28 = load i8*, i8** %27, align 8, !dbg !1291
  %29 = bitcast i8* %28 to %struct._GSList*, !dbg !1291
  store %struct._GSList* %29, %struct._GSList** %4, align 8, !dbg !1289
  br label %30, !dbg !1294

; <label>:30:                                     ; preds = %50, %21
  %31 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1295
  %32 = icmp ne %struct._GSList* %31, null, !dbg !1299
  br i1 %32, label %33, label %54, !dbg !1300

; <label>:33:                                     ; preds = %30
  call void @llvm.dbg.declare(metadata %struct.DCC_QUEUE_REC** %5, metadata !1301, metadata !773), !dbg !1303
  %34 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1304
  %35 = getelementptr inbounds %struct._GSList, %struct._GSList* %34, i32 0, i32 0, !dbg !1305
  %36 = load i8*, i8** %35, align 8, !dbg !1305
  %37 = bitcast i8* %36 to %struct.DCC_QUEUE_REC*, !dbg !1304
  store %struct.DCC_QUEUE_REC* %37, %struct.DCC_QUEUE_REC** %5, align 8, !dbg !1303
  %38 = load %struct.DCC_QUEUE_REC*, %struct.DCC_QUEUE_REC** %5, align 8, !dbg !1306
  %39 = icmp ne %struct.DCC_QUEUE_REC* %38, null, !dbg !1308
  br i1 %39, label %40, label %49, !dbg !1309

; <label>:40:                                     ; preds = %33
  %41 = load %struct.DCC_QUEUE_REC*, %struct.DCC_QUEUE_REC** %5, align 8, !dbg !1310
  %42 = getelementptr inbounds %struct.DCC_QUEUE_REC, %struct.DCC_QUEUE_REC* %41, i32 0, i32 0, !dbg !1312
  %43 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %42, align 8, !dbg !1312
  %44 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %2, align 8, !dbg !1313
  %45 = icmp eq %struct.CHAT_DCC_REC* %43, %44, !dbg !1314
  br i1 %45, label %46, label %49, !dbg !1315

; <label>:46:                                     ; preds = %40
  %47 = load %struct.DCC_QUEUE_REC*, %struct.DCC_QUEUE_REC** %5, align 8, !dbg !1316
  %48 = getelementptr inbounds %struct.DCC_QUEUE_REC, %struct.DCC_QUEUE_REC* %47, i32 0, i32 0, !dbg !1317
  store %struct.CHAT_DCC_REC* null, %struct.CHAT_DCC_REC** %48, align 8, !dbg !1318
  br label %49, !dbg !1316

; <label>:49:                                     ; preds = %46, %40, %33
  br label %50, !dbg !1319

; <label>:50:                                     ; preds = %49
  %51 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1320
  %52 = getelementptr inbounds %struct._GSList, %struct._GSList* %51, i32 0, i32 1, !dbg !1322
  %53 = load %struct._GSList*, %struct._GSList** %52, align 8, !dbg !1322
  store %struct._GSList* %53, %struct._GSList** %4, align 8, !dbg !1323
  br label %30, !dbg !1324, !llvm.loop !1325

; <label>:54:                                     ; preds = %30
  br label %55, !dbg !1326

; <label>:55:                                     ; preds = %54
  %56 = load i32, i32* %3, align 4, !dbg !1327
  %57 = add nsw i32 %56, 1, !dbg !1327
  store i32 %57, i32* %3, align 4, !dbg !1327
  br label %15, !dbg !1329, !llvm.loop !1330

; <label>:58:                                     ; preds = %13, %15
  ret void, !dbg !1332
}

; Function Attrs: nounwind uwtable
define void @dcc_queue_deinit() #0 !dbg !1333 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1334, metadata !773), !dbg !1335
  store i32 0, i32* %1, align 4, !dbg !1336
  br label %2, !dbg !1338

; <label>:2:                                      ; preds = %10, %0
  %3 = load i32, i32* %1, align 4, !dbg !1339
  %4 = load %struct._GPtrArray*, %struct._GPtrArray** @queuelist, align 8, !dbg !1342
  %5 = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %4, i32 0, i32 1, !dbg !1343
  %6 = load i32, i32* %5, align 8, !dbg !1343
  %7 = icmp ult i32 %3, %6, !dbg !1344
  br i1 %7, label %8, label %13, !dbg !1345

; <label>:8:                                      ; preds = %2
  %9 = load i32, i32* %1, align 4, !dbg !1346
  call void @dcc_queue_free(i32 %9), !dbg !1347
  br label %10, !dbg !1347

; <label>:10:                                     ; preds = %8
  %11 = load i32, i32* %1, align 4, !dbg !1348
  %12 = add nsw i32 %11, 1, !dbg !1348
  store i32 %12, i32* %1, align 4, !dbg !1348
  br label %2, !dbg !1350, !llvm.loop !1351

; <label>:13:                                     ; preds = %2
  %14 = load %struct._GPtrArray*, %struct._GPtrArray** @queuelist, align 8, !dbg !1353
  %15 = call i8** @g_ptr_array_free(%struct._GPtrArray* %14, i32 1), !dbg !1354
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.CHAT_DCC_REC*)* @sig_dcc_destroyed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1355
  ret void, !dbg !1356
}

declare i8** @g_ptr_array_free(%struct._GPtrArray*, i32) #2

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare void @g_free(i8*) #2

declare %struct._GSList* @g_slist_last(%struct._GSList*) #2

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #2

declare i8* @module_check_cast_module(i8*, i32, i8*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!767, !768}
!llvm.ident = !{!769}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !41, globals: !757)
!1 = !DIFile(filename: "line176-dcc-queue.o.i", directory: "/home/lichi/Desktop/irssi/task1")
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
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 6, size: 32, align: 32, elements: !37)
!36 = !DIFile(filename: "dcc-queue.h", directory: "/home/lichi/Desktop/irssi/task1")
!37 = !{!38, !39, !40}
!38 = !DIEnumerator(name: "DCC_QUEUE_NORMAL", value: 0)
!39 = !DIEnumerator(name: "DCC_QUEUE_PREPEND", value: 1)
!40 = !DIEnumerator(name: "DCC_QUEUE_APPEND", value: 2)
!41 = !{!42, !43, !47, !49, !58, !750, !63}
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !45, line: 46, baseType: !46)
!45 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!46 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !52, line: 37, baseType: !53)
!52 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !52, line: 39, size: 128, align: 64, elements: !54)
!54 = !{!55, !57}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !53, file: !52, line: 41, baseType: !56, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !45, line: 77, baseType: !42)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !53, file: !52, line: 42, baseType: !50, size: 64, align: 64, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "DCC_QUEUE_REC", file: !36, line: 18, baseType: !60)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 12, size: 320, align: 64, elements: !61)
!61 = !{!62, !746, !747, !748, !749}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "chat", scope: !60, file: !36, line: 13, baseType: !63, size: 64, align: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHAT_DCC_REC", file: !65, line: 9, baseType: !66)
!65 = !DIFile(filename: "dcc.h", directory: "/home/lichi/Desktop/irssi/task1")
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CHAT_DCC_REC", file: !67, line: 12, size: 1792, align: 64, elements: !68)
!67 = !DIFile(filename: "dcc-chat.h", directory: "/home/lichi/Desktop/irssi/task1")
!68 = !{!69, !72, !73, !79, !720, !721, !722, !723, !724, !725, !726, !727, !731, !732, !733, !734, !735, !736, !737, !739, !740, !741, !742, !743, !744, !745}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !66, file: !70, line: 1, baseType: !71, size: 32, align: 32)
!70 = !DIFile(filename: "dcc-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!71 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !66, file: !70, line: 2, baseType: !71, size: 32, align: 32, offset: 32)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "created", scope: !66, file: !70, line: 3, baseType: !74, size: 64, align: 64, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !75, line: 75, baseType: !76)
!75 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !77, line: 139, baseType: !78)
!77 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!78 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !66, file: !70, line: 5, baseType: !80, size: 64, align: 64, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64, align: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_REC", file: !82, line: 6, baseType: !83)
!82 = !DIFile(filename: "../../../src/irc/core/irc.h", directory: "/home/lichi/Desktop/irssi/task1")
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_REC", file: !84, line: 42, size: 39168, align: 64, elements: !85)
!84 = !DIFile(filename: "../../../src/irc/core/irc-servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!85 = !{!86, !88, !89, !90, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !377, !378, !382, !383, !384, !388, !393, !394, !395, !396, !397, !398, !399, !400, !407, !408, !409, !410, !411, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !717, !719}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !83, file: !87, line: 3, baseType: !71, size: 32, align: 32)
!87 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!88 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !83, file: !87, line: 4, baseType: !71, size: 32, align: 32, offset: 32)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !83, file: !87, line: 6, baseType: !71, size: 32, align: 32, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !83, file: !87, line: 8, baseType: !91, size: 64, align: 64, offset: 128)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, align: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_CONNECT_REC", file: !82, line: 5, baseType: !93)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_CONNECT_REC", file: !84, line: 24, size: 2496, align: 64, elements: !94)
!94 = !{!95, !97, !98, !99, !101, !102, !103, !104, !105, !107, !108, !109, !110, !111, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !93, file: !96, line: 3, baseType: !71, size: 32, align: 32)
!96 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!97 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !93, file: !96, line: 4, baseType: !71, size: 32, align: 32, offset: 32)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !93, file: !96, line: 6, baseType: !71, size: 32, align: 32, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !93, file: !96, line: 9, baseType: !100, size: 64, align: 64, offset: 128)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !93, file: !96, line: 10, baseType: !71, size: 32, align: 32, offset: 192)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !93, file: !96, line: 11, baseType: !100, size: 64, align: 64, offset: 256)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !93, file: !96, line: 11, baseType: !100, size: 64, align: 64, offset: 320)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !93, file: !96, line: 11, baseType: !100, size: 64, align: 64, offset: 384)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !93, file: !96, line: 13, baseType: !106, size: 16, align: 16, offset: 448)
!106 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !93, file: !96, line: 14, baseType: !100, size: 64, align: 64, offset: 512)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !93, file: !96, line: 15, baseType: !100, size: 64, align: 64, offset: 576)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !93, file: !96, line: 16, baseType: !71, size: 32, align: 32, offset: 640)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !93, file: !96, line: 17, baseType: !100, size: 64, align: 64, offset: 704)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !93, file: !96, line: 19, baseType: !112, size: 64, align: 64, offset: 768)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64, align: 64)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !114, line: 99, baseType: !115)
!114 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !116, line: 22, size: 160, align: 32, elements: !117)
!116 = !DIFile(filename: "../../../src/core/network.h", directory: "/home/lichi/Desktop/irssi/task1")
!117 = !{!118, !119}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !115, file: !116, line: 23, baseType: !106, size: 16, align: 16)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !115, file: !116, line: 24, baseType: !120, size: 128, align: 32, offset: 32)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !121, line: 211, size: 128, align: 32, elements: !122)
!121 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/irssi/task1")
!122 = !{!123}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !120, file: !121, line: 220, baseType: !124, size: 128, align: 32)
!124 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !120, file: !121, line: 213, size: 128, align: 32, elements: !125)
!125 = !{!126, !133, !138}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !124, file: !121, line: 215, baseType: !127, size: 128, align: 8)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 128, align: 8, elements: !131)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !129, line: 48, baseType: !130)
!129 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/irssi/task1")
!130 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!131 = !{!132}
!132 = !DISubrange(count: 16)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !124, file: !121, line: 217, baseType: !134, size: 128, align: 16)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 128, align: 16, elements: !136)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !129, line: 49, baseType: !106)
!136 = !{!137}
!137 = !DISubrange(count: 8)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !124, file: !121, line: 218, baseType: !139, size: 128, align: 32)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 128, align: 32, elements: !142)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !129, line: 51, baseType: !141)
!141 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!142 = !{!143}
!143 = !DISubrange(count: 4)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !93, file: !96, line: 19, baseType: !112, size: 64, align: 64, offset: 832)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !93, file: !96, line: 21, baseType: !100, size: 64, align: 64, offset: 896)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !93, file: !96, line: 22, baseType: !100, size: 64, align: 64, offset: 960)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !93, file: !96, line: 23, baseType: !100, size: 64, align: 64, offset: 1024)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !93, file: !96, line: 24, baseType: !100, size: 64, align: 64, offset: 1088)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !93, file: !96, line: 26, baseType: !100, size: 64, align: 64, offset: 1152)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !93, file: !96, line: 27, baseType: !100, size: 64, align: 64, offset: 1216)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !93, file: !96, line: 28, baseType: !100, size: 64, align: 64, offset: 1280)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !93, file: !96, line: 29, baseType: !100, size: 64, align: 64, offset: 1344)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !93, file: !96, line: 30, baseType: !100, size: 64, align: 64, offset: 1408)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !93, file: !96, line: 31, baseType: !100, size: 64, align: 64, offset: 1472)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !93, file: !96, line: 32, baseType: !100, size: 64, align: 64, offset: 1536)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !93, file: !96, line: 33, baseType: !100, size: 64, align: 64, offset: 1600)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !93, file: !96, line: 35, baseType: !158, size: 64, align: 64, offset: 1664)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64, align: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !160)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !161)
!161 = !{!162, !164, !296, !297, !302, !303, !304, !305, !306, !315, !316, !317, !321, !322, !323, !324, !325, !326, !327, !328}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !160, file: !4, line: 100, baseType: !163, size: 32, align: 32)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !45, line: 49, baseType: !71)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !160, file: !4, line: 101, baseType: !165, size: 64, align: 64, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64, align: 64)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !167)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !168)
!168 = !{!169, !190, !196, !202, !206, !283, !287, !292}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !167, file: !4, line: 133, baseType: !170, size: 64, align: 64)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64, align: 64)
!171 = !DISubroutineType(types: !172)
!172 = !{!173, !158, !43, !174, !177, !178}
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !175, line: 66, baseType: !176)
!175 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!176 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64, align: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64, align: 64)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64, align: 64)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !181, line: 42, baseType: !182)
!181 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !181, line: 44, size: 128, align: 64, elements: !183)
!183 = !{!184, !188, !189}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !182, file: !181, line: 46, baseType: !185, size: 32, align: 32)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !186, line: 36, baseType: !187)
!186 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !175, line: 45, baseType: !141)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !182, file: !181, line: 47, baseType: !163, size: 32, align: 32, offset: 32)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !182, file: !181, line: 48, baseType: !43, size: 64, align: 64, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !167, file: !4, line: 138, baseType: !191, size: 64, align: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64, align: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{!173, !158, !194, !174, !177, !178}
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64, align: 64)
!195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !167, file: !4, line: 143, baseType: !197, size: 64, align: 64, offset: 128)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64, align: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!173, !158, !200, !201, !178}
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !175, line: 51, baseType: !78)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !167, file: !4, line: 147, baseType: !203, size: 64, align: 64, offset: 192)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64, align: 64)
!204 = !DISubroutineType(types: !205)
!205 = !{!173, !158, !178}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !167, file: !4, line: 149, baseType: !207, size: 64, align: 64, offset: 256)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64, align: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{!210, !158, !282}
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !212)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !213)
!213 = !{!214, !215, !236, !265, !267, !271, !272, !273, !274, !275, !276, !277, !278}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !212, file: !16, line: 174, baseType: !56, size: 64, align: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !212, file: !16, line: 175, baseType: !216, size: 64, align: 64, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !218)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !219)
!219 = !{!220, !224, !225}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !218, file: !16, line: 198, baseType: !221, size: 64, align: 64)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{null, !56}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !218, file: !16, line: 199, baseType: !221, size: 64, align: 64, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !218, file: !16, line: 200, baseType: !226, size: 64, align: 64, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{null, !56, !210, !229, !235}
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64, align: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64, align: 64)
!232 = !DISubroutineType(types: !233)
!233 = !{!234, !56}
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !45, line: 50, baseType: !163)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !212, file: !16, line: 177, baseType: !237, size: 64, align: 64, offset: 128)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64, align: 64)
!238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !240)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !241)
!241 = !{!242, !247, !251, !255, !259, !260}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !240, file: !16, line: 216, baseType: !243, size: 64, align: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64, align: 64)
!244 = !DISubroutineType(types: !245)
!245 = !{!234, !210, !246}
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64, align: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !240, file: !16, line: 218, baseType: !248, size: 64, align: 64, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64, align: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{!234, !210}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !240, file: !16, line: 219, baseType: !252, size: 64, align: 64, offset: 128)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64, align: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{!234, !210, !230, !56}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !240, file: !16, line: 222, baseType: !256, size: 64, align: 64, offset: 192)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64, align: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{null, !210}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !240, file: !16, line: 226, baseType: !230, size: 64, align: 64, offset: 256)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !240, file: !16, line: 227, baseType: !261, size: 64, align: 64, offset: 320)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64, align: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{null}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !212, file: !16, line: 178, baseType: !266, size: 32, align: 32, offset: 192)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !45, line: 55, baseType: !141)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !212, file: !16, line: 180, baseType: !268, size: 64, align: 64, offset: 256)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64, align: 64)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !270)
!270 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !212, file: !16, line: 182, baseType: !163, size: 32, align: 32, offset: 320)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !212, file: !16, line: 183, baseType: !266, size: 32, align: 32, offset: 352)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !212, file: !16, line: 184, baseType: !266, size: 32, align: 32, offset: 384)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !212, file: !16, line: 186, baseType: !50, size: 64, align: 64, offset: 448)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !212, file: !16, line: 188, baseType: !210, size: 64, align: 64, offset: 512)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !212, file: !16, line: 189, baseType: !210, size: 64, align: 64, offset: 576)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !212, file: !16, line: 191, baseType: !100, size: 64, align: 64, offset: 640)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !212, file: !16, line: 193, baseType: !279, size: 64, align: 64, offset: 704)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, align: 64)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !281)
!281 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !167, file: !4, line: 151, baseType: !284, size: 64, align: 64, offset: 320)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64, align: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{null, !158}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !167, file: !4, line: 152, baseType: !288, size: 64, align: 64, offset: 384)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64, align: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{!173, !158, !291, !178}
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !167, file: !4, line: 155, baseType: !293, size: 64, align: 64, offset: 448)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64, align: 64)
!294 = !DISubroutineType(types: !295)
!295 = !{!291, !158}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !160, file: !4, line: 103, baseType: !43, size: 64, align: 64, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !160, file: !4, line: 104, baseType: !298, size: 64, align: 64, offset: 192)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !299, line: 77, baseType: !300)
!299 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64, align: 64)
!301 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !299, line: 77, flags: DIFlagFwdDecl)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !160, file: !4, line: 105, baseType: !298, size: 64, align: 64, offset: 256)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !160, file: !4, line: 106, baseType: !43, size: 64, align: 64, offset: 320)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !160, file: !4, line: 107, baseType: !266, size: 32, align: 32, offset: 384)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !160, file: !4, line: 109, baseType: !174, size: 64, align: 64, offset: 448)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !160, file: !4, line: 110, baseType: !307, size: 64, align: 64, offset: 512)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64, align: 64)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !309, line: 39, baseType: !310)
!309 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !309, line: 41, size: 192, align: 64, elements: !311)
!311 = !{!312, !313, !314}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !310, file: !309, line: 43, baseType: !43, size: 64, align: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !310, file: !309, line: 44, baseType: !174, size: 64, align: 64, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !310, file: !309, line: 45, baseType: !174, size: 64, align: 64, offset: 128)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !160, file: !4, line: 111, baseType: !307, size: 64, align: 64, offset: 576)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !160, file: !4, line: 112, baseType: !307, size: 64, align: 64, offset: 640)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !160, file: !4, line: 113, baseType: !318, size: 48, align: 8, offset: 704)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !44, size: 48, align: 8, elements: !319)
!319 = !{!320}
!320 = !DISubrange(count: 6)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !160, file: !4, line: 117, baseType: !266, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !160, file: !4, line: 118, baseType: !266, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !160, file: !4, line: 119, baseType: !266, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !160, file: !4, line: 120, baseType: !266, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !160, file: !4, line: 121, baseType: !266, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !160, file: !4, line: 122, baseType: !266, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !160, file: !4, line: 124, baseType: !56, size: 64, align: 64, offset: 768)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !160, file: !4, line: 125, baseType: !56, size: 64, align: 64, offset: 832)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !93, file: !96, line: 38, baseType: !141, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !93, file: !96, line: 39, baseType: !141, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !93, file: !96, line: 40, baseType: !141, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !93, file: !96, line: 41, baseType: !141, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !93, file: !96, line: 42, baseType: !141, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !93, file: !96, line: 43, baseType: !141, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !93, file: !96, line: 44, baseType: !141, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !93, file: !96, line: 45, baseType: !141, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !93, file: !96, line: 46, baseType: !100, size: 64, align: 64, offset: 1792)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !93, file: !96, line: 47, baseType: !100, size: 64, align: 64, offset: 1856)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !93, file: !84, line: 27, baseType: !100, size: 64, align: 64, offset: 1920)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_nick", scope: !93, file: !84, line: 28, baseType: !100, size: 64, align: 64, offset: 1984)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !93, file: !84, line: 30, baseType: !71, size: 32, align: 32, offset: 2048)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_username", scope: !93, file: !84, line: 31, baseType: !100, size: 64, align: 64, offset: 2112)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !93, file: !84, line: 32, baseType: !100, size: 64, align: 64, offset: 2176)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !93, file: !84, line: 34, baseType: !71, size: 32, align: 32, offset: 2240)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !93, file: !84, line: 35, baseType: !71, size: 32, align: 32, offset: 2272)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !93, file: !84, line: 36, baseType: !71, size: 32, align: 32, offset: 2304)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks", scope: !93, file: !84, line: 38, baseType: !71, size: 32, align: 32, offset: 2336)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !93, file: !84, line: 38, baseType: !71, size: 32, align: 32, offset: 2368)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes", scope: !93, file: !84, line: 38, baseType: !71, size: 32, align: 32, offset: 2400)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois", scope: !93, file: !84, line: 38, baseType: !71, size: 32, align: 32, offset: 2432)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !83, file: !87, line: 9, baseType: !74, size: 64, align: 64, offset: 192)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !83, file: !87, line: 10, baseType: !74, size: 64, align: 64, offset: 256)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !83, file: !87, line: 12, baseType: !100, size: 64, align: 64, offset: 320)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !83, file: !87, line: 13, baseType: !100, size: 64, align: 64, offset: 384)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !83, file: !87, line: 15, baseType: !141, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !83, file: !87, line: 16, baseType: !141, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !83, file: !87, line: 17, baseType: !141, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !83, file: !87, line: 18, baseType: !141, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !83, file: !87, line: 19, baseType: !141, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !83, file: !87, line: 21, baseType: !361, size: 64, align: 64, offset: 512)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64, align: 64)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !114, line: 102, baseType: !363)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !364, line: 7, size: 384, align: 64, elements: !365)
!364 = !DIFile(filename: "../../../src/core/net-sendbuffer.h", directory: "/home/lichi/Desktop/irssi/task1")
!365 = !{!366, !367, !371, !372, !373, !374, !375, !376}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !363, file: !364, line: 8, baseType: !158, size: 64, align: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "readbuffer", scope: !363, file: !364, line: 9, baseType: !368, size: 64, align: 64, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64, align: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "LINEBUF_REC", file: !114, line: 101, baseType: !370)
!370 = !DICompositeType(tag: DW_TAG_structure_type, name: "_LINEBUF_REC", file: !114, line: 101, flags: DIFlagFwdDecl)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "send_tag", scope: !363, file: !364, line: 11, baseType: !71, size: 32, align: 32, offset: 128)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "bufsize", scope: !363, file: !364, line: 12, baseType: !71, size: 32, align: 32, offset: 160)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "bufpos", scope: !363, file: !364, line: 13, baseType: !71, size: 32, align: 32, offset: 192)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !363, file: !364, line: 14, baseType: !100, size: 64, align: 64, offset: 256)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "def_bufsize", scope: !363, file: !364, line: 15, baseType: !71, size: 32, align: 32, offset: 320)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "dead", scope: !363, file: !364, line: 16, baseType: !141, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !83, file: !87, line: 22, baseType: !71, size: 32, align: 32, offset: 576)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !83, file: !87, line: 25, baseType: !379, size: 128, align: 64, offset: 640)
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 128, align: 64, elements: !380)
!380 = !{!381}
!381 = !DISubrange(count: 2)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !83, file: !87, line: 26, baseType: !71, size: 32, align: 32, offset: 768)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !83, file: !87, line: 27, baseType: !71, size: 32, align: 32, offset: 800)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !83, file: !87, line: 29, baseType: !385, size: 64, align: 64, offset: 832)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64, align: 64)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !114, line: 103, baseType: !387)
!387 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !114, line: 103, flags: DIFlagFwdDecl)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !83, file: !87, line: 30, baseType: !389, size: 64, align: 64, offset: 896)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64, align: 64)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !391, line: 37, baseType: !392)
!391 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!392 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !391, line: 37, flags: DIFlagFwdDecl)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !83, file: !87, line: 32, baseType: !100, size: 64, align: 64, offset: 960)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !83, file: !87, line: 33, baseType: !100, size: 64, align: 64, offset: 1024)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !83, file: !87, line: 34, baseType: !100, size: 64, align: 64, offset: 1088)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !83, file: !87, line: 35, baseType: !141, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !83, file: !87, line: 36, baseType: !141, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !83, file: !87, line: 37, baseType: !141, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !83, file: !87, line: 38, baseType: !141, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !83, file: !87, line: 40, baseType: !401, size: 128, align: 64, offset: 1216)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !45, line: 504, baseType: !402)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !45, line: 506, size: 128, align: 64, elements: !403)
!403 = !{!404, !406}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !402, file: !45, line: 508, baseType: !405, size: 64, align: 64)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !45, line: 48, baseType: !78)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !402, file: !45, line: 509, baseType: !405, size: 64, align: 64, offset: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !83, file: !87, line: 41, baseType: !74, size: 64, align: 64, offset: 1344)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !83, file: !87, line: 42, baseType: !71, size: 32, align: 32, offset: 1408)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !83, file: !87, line: 44, baseType: !50, size: 64, align: 64, offset: 1472)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !83, file: !87, line: 45, baseType: !50, size: 64, align: 64, offset: 1536)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !83, file: !87, line: 53, baseType: !412, size: 64, align: 64, offset: 1600)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64, align: 64)
!413 = !DISubroutineType(types: !414)
!414 = !{null, !415, !47, !71}
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64, align: 64)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !114, line: 107, baseType: !417)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !418, line: 30, size: 2240, align: 64, elements: !419)
!418 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!419 = !{!420, !421, !422, !423, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !499, !503, !507, !511, !516, !593, !600, !604}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !417, file: !87, line: 3, baseType: !71, size: 32, align: 32)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !417, file: !87, line: 4, baseType: !71, size: 32, align: 32, offset: 32)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !417, file: !87, line: 6, baseType: !71, size: 32, align: 32, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !417, file: !87, line: 8, baseType: !424, size: 64, align: 64, offset: 128)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64, align: 64)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !114, line: 113, baseType: !426)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !418, line: 25, size: 1920, align: 64, elements: !427)
!427 = !{!428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !426, file: !96, line: 3, baseType: !71, size: 32, align: 32)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !426, file: !96, line: 4, baseType: !71, size: 32, align: 32, offset: 32)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !426, file: !96, line: 6, baseType: !71, size: 32, align: 32, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !426, file: !96, line: 9, baseType: !100, size: 64, align: 64, offset: 128)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !426, file: !96, line: 10, baseType: !71, size: 32, align: 32, offset: 192)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !426, file: !96, line: 11, baseType: !100, size: 64, align: 64, offset: 256)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !426, file: !96, line: 11, baseType: !100, size: 64, align: 64, offset: 320)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !426, file: !96, line: 11, baseType: !100, size: 64, align: 64, offset: 384)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !426, file: !96, line: 13, baseType: !106, size: 16, align: 16, offset: 448)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !426, file: !96, line: 14, baseType: !100, size: 64, align: 64, offset: 512)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !426, file: !96, line: 15, baseType: !100, size: 64, align: 64, offset: 576)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !426, file: !96, line: 16, baseType: !71, size: 32, align: 32, offset: 640)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !426, file: !96, line: 17, baseType: !100, size: 64, align: 64, offset: 704)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !426, file: !96, line: 19, baseType: !112, size: 64, align: 64, offset: 768)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !426, file: !96, line: 19, baseType: !112, size: 64, align: 64, offset: 832)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !426, file: !96, line: 21, baseType: !100, size: 64, align: 64, offset: 896)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !426, file: !96, line: 22, baseType: !100, size: 64, align: 64, offset: 960)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !426, file: !96, line: 23, baseType: !100, size: 64, align: 64, offset: 1024)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !426, file: !96, line: 24, baseType: !100, size: 64, align: 64, offset: 1088)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !426, file: !96, line: 26, baseType: !100, size: 64, align: 64, offset: 1152)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !426, file: !96, line: 27, baseType: !100, size: 64, align: 64, offset: 1216)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !426, file: !96, line: 28, baseType: !100, size: 64, align: 64, offset: 1280)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !426, file: !96, line: 29, baseType: !100, size: 64, align: 64, offset: 1344)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !426, file: !96, line: 30, baseType: !100, size: 64, align: 64, offset: 1408)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !426, file: !96, line: 31, baseType: !100, size: 64, align: 64, offset: 1472)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !426, file: !96, line: 32, baseType: !100, size: 64, align: 64, offset: 1536)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !426, file: !96, line: 33, baseType: !100, size: 64, align: 64, offset: 1600)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !426, file: !96, line: 35, baseType: !158, size: 64, align: 64, offset: 1664)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !426, file: !96, line: 38, baseType: !141, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !426, file: !96, line: 39, baseType: !141, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !426, file: !96, line: 40, baseType: !141, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !426, file: !96, line: 41, baseType: !141, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !426, file: !96, line: 42, baseType: !141, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !426, file: !96, line: 43, baseType: !141, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !426, file: !96, line: 44, baseType: !141, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !426, file: !96, line: 45, baseType: !141, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !426, file: !96, line: 46, baseType: !100, size: 64, align: 64, offset: 1792)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !426, file: !96, line: 47, baseType: !100, size: 64, align: 64, offset: 1856)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !417, file: !87, line: 9, baseType: !74, size: 64, align: 64, offset: 192)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !417, file: !87, line: 10, baseType: !74, size: 64, align: 64, offset: 256)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !417, file: !87, line: 12, baseType: !100, size: 64, align: 64, offset: 320)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !417, file: !87, line: 13, baseType: !100, size: 64, align: 64, offset: 384)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !417, file: !87, line: 15, baseType: !141, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !417, file: !87, line: 16, baseType: !141, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !417, file: !87, line: 17, baseType: !141, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !417, file: !87, line: 18, baseType: !141, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !417, file: !87, line: 19, baseType: !141, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !417, file: !87, line: 21, baseType: !361, size: 64, align: 64, offset: 512)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !417, file: !87, line: 22, baseType: !71, size: 32, align: 32, offset: 576)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !417, file: !87, line: 25, baseType: !379, size: 128, align: 64, offset: 640)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !417, file: !87, line: 26, baseType: !71, size: 32, align: 32, offset: 768)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !417, file: !87, line: 27, baseType: !71, size: 32, align: 32, offset: 800)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !417, file: !87, line: 29, baseType: !385, size: 64, align: 64, offset: 832)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !417, file: !87, line: 30, baseType: !389, size: 64, align: 64, offset: 896)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !417, file: !87, line: 32, baseType: !100, size: 64, align: 64, offset: 960)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !417, file: !87, line: 33, baseType: !100, size: 64, align: 64, offset: 1024)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !417, file: !87, line: 34, baseType: !100, size: 64, align: 64, offset: 1088)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !417, file: !87, line: 35, baseType: !141, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !417, file: !87, line: 36, baseType: !141, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !417, file: !87, line: 37, baseType: !141, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !417, file: !87, line: 38, baseType: !141, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !417, file: !87, line: 40, baseType: !401, size: 128, align: 64, offset: 1216)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !417, file: !87, line: 41, baseType: !74, size: 64, align: 64, offset: 1344)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !417, file: !87, line: 42, baseType: !71, size: 32, align: 32, offset: 1408)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !417, file: !87, line: 44, baseType: !50, size: 64, align: 64, offset: 1472)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !417, file: !87, line: 45, baseType: !50, size: 64, align: 64, offset: 1536)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !417, file: !87, line: 53, baseType: !412, size: 64, align: 64, offset: 1600)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !417, file: !87, line: 55, baseType: !496, size: 64, align: 64, offset: 1664)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64, align: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{!71, !415, !46}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !417, file: !87, line: 57, baseType: !500, size: 64, align: 64, offset: 1728)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64, align: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{!71, !415, !47}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !417, file: !87, line: 60, baseType: !504, size: 64, align: 64, offset: 1792)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64, align: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{!47, !415}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !417, file: !87, line: 62, baseType: !508, size: 64, align: 64, offset: 1856)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64, align: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{null, !415, !47, !47, !71}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !417, file: !87, line: 65, baseType: !512, size: 64, align: 64, offset: 1920)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64, align: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!515, !415, !47, !47}
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64, align: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !417, file: !87, line: 69, baseType: !517, size: 64, align: 64, offset: 1984)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64, align: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{!520, !415, !47}
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64, align: 64)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !114, line: 109, baseType: !522)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !523, line: 15, size: 1408, align: 64, elements: !524)
!523 = !DIFile(filename: "../../../src/core/channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!524 = !{!525, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !543, !547, !549, !550, !551, !552, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !522, file: !526, line: 3, baseType: !71, size: 32, align: 32)
!526 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!527 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !522, file: !526, line: 4, baseType: !71, size: 32, align: 32, offset: 32)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !522, file: !526, line: 5, baseType: !389, size: 64, align: 64, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !522, file: !526, line: 7, baseType: !42, size: 64, align: 64, offset: 128)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !522, file: !526, line: 8, baseType: !415, size: 64, align: 64, offset: 192)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !522, file: !526, line: 9, baseType: !100, size: 64, align: 64, offset: 256)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !522, file: !526, line: 10, baseType: !100, size: 64, align: 64, offset: 320)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !522, file: !526, line: 11, baseType: !74, size: 64, align: 64, offset: 384)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !522, file: !526, line: 12, baseType: !71, size: 32, align: 32, offset: 448)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !522, file: !526, line: 13, baseType: !100, size: 64, align: 64, offset: 512)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !522, file: !526, line: 15, baseType: !537, size: 64, align: 64, offset: 576)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64, align: 64)
!538 = !DISubroutineType(types: !539)
!539 = !{null, !540}
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64, align: 64)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !114, line: 108, baseType: !542)
!542 = !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !114, line: 108, flags: DIFlagFwdDecl)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !522, file: !526, line: 17, baseType: !544, size: 64, align: 64, offset: 640)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !545, size: 64, align: 64)
!545 = !DISubroutineType(types: !546)
!546 = !{!47, !540}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !522, file: !548, line: 5, baseType: !100, size: 64, align: 64, offset: 704)
!548 = !DIFile(filename: "../../../src/core/channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!549 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !522, file: !548, line: 6, baseType: !100, size: 64, align: 64, offset: 768)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !522, file: !548, line: 7, baseType: !74, size: 64, align: 64, offset: 832)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !522, file: !548, line: 9, baseType: !389, size: 64, align: 64, offset: 896)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !522, file: !548, line: 10, baseType: !553, size: 64, align: 64, offset: 960)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64, align: 64)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !114, line: 111, baseType: !555)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !556, line: 13, size: 576, align: 64, elements: !557)
!556 = !DIFile(filename: "../../../src/core/nicklist.h", directory: "/home/lichi/Desktop/irssi/task1")
!557 = !{!558, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !574, !575}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !555, file: !559, line: 3, baseType: !71, size: 32, align: 32)
!559 = !DIFile(filename: "../../../src/core/nick-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!560 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !555, file: !559, line: 4, baseType: !71, size: 32, align: 32, offset: 32)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "last_check", scope: !555, file: !559, line: 6, baseType: !74, size: 64, align: 64, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !555, file: !559, line: 8, baseType: !100, size: 64, align: 64, offset: 128)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !555, file: !559, line: 9, baseType: !100, size: 64, align: 64, offset: 192)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !555, file: !559, line: 10, baseType: !100, size: 64, align: 64, offset: 256)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "hops", scope: !555, file: !559, line: 11, baseType: !71, size: 32, align: 32, offset: 320)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "gone", scope: !555, file: !559, line: 14, baseType: !141, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "serverop", scope: !555, file: !559, line: 15, baseType: !141, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "send_massjoin", scope: !555, file: !559, line: 18, baseType: !141, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !555, file: !559, line: 19, baseType: !141, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !555, file: !559, line: 20, baseType: !141, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !555, file: !559, line: 21, baseType: !141, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !555, file: !559, line: 22, baseType: !573, size: 64, align: 8, offset: 360)
!573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 64, align: 8, elements: !136)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !555, file: !559, line: 26, baseType: !42, size: 64, align: 64, offset: 448)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !555, file: !559, line: 28, baseType: !553, size: 64, align: 64, offset: 512)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !522, file: !548, line: 12, baseType: !141, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !522, file: !548, line: 13, baseType: !100, size: 64, align: 64, offset: 1088)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !522, file: !548, line: 14, baseType: !71, size: 32, align: 32, offset: 1152)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !522, file: !548, line: 15, baseType: !100, size: 64, align: 64, offset: 1216)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !522, file: !548, line: 17, baseType: !141, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !522, file: !548, line: 18, baseType: !141, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !522, file: !548, line: 19, baseType: !141, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !522, file: !548, line: 20, baseType: !141, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !522, file: !548, line: 22, baseType: !141, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !522, file: !548, line: 23, baseType: !141, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !522, file: !548, line: 24, baseType: !141, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !522, file: !548, line: 25, baseType: !141, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !522, file: !548, line: 26, baseType: !141, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !522, file: !548, line: 31, baseType: !590, size: 64, align: 64, offset: 1344)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64, align: 64)
!591 = !DISubroutineType(types: !592)
!592 = !{!100, !520}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !417, file: !87, line: 70, baseType: !594, size: 64, align: 64, offset: 2048)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64, align: 64)
!595 = !DISubroutineType(types: !596)
!596 = !{!597, !415, !47}
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64, align: 64)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !114, line: 110, baseType: !599)
!599 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !114, line: 110, flags: DIFlagFwdDecl)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !417, file: !87, line: 71, baseType: !601, size: 64, align: 64, offset: 2112)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64, align: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{!71, !47, !47}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !417, file: !87, line: 73, baseType: !601, size: 64, align: 64, offset: 2176)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !83, file: !87, line: 55, baseType: !496, size: 64, align: 64, offset: 1664)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !83, file: !87, line: 57, baseType: !500, size: 64, align: 64, offset: 1728)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !83, file: !87, line: 60, baseType: !504, size: 64, align: 64, offset: 1792)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !83, file: !87, line: 62, baseType: !508, size: 64, align: 64, offset: 1856)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !83, file: !87, line: 65, baseType: !512, size: 64, align: 64, offset: 1920)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !83, file: !87, line: 69, baseType: !517, size: 64, align: 64, offset: 1984)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !83, file: !87, line: 70, baseType: !594, size: 64, align: 64, offset: 2048)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !83, file: !87, line: 71, baseType: !601, size: 64, align: 64, offset: 2112)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !83, file: !87, line: 73, baseType: !601, size: 64, align: 64, offset: 2176)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "redirects", scope: !83, file: !84, line: 46, baseType: !50, size: 64, align: 64, offset: 2240)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_queue", scope: !83, file: !84, line: 47, baseType: !50, size: 64, align: 64, offset: 2304)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_next", scope: !83, file: !84, line: 48, baseType: !617, size: 64, align: 64, offset: 2368)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64, align: 64)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "REDIRECT_REC", file: !82, line: 8, baseType: !619)
!619 = !DICompositeType(tag: DW_TAG_structure_type, name: "_REDIRECT_REC", file: !82, line: 8, flags: DIFlagFwdDecl)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_active", scope: !83, file: !84, line: 49, baseType: !50, size: 64, align: 64, offset: 2432)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "last_nick", scope: !83, file: !84, line: 51, baseType: !100, size: 64, align: 64, offset: 2496)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !83, file: !84, line: 53, baseType: !100, size: 64, align: 64, offset: 2560)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !83, file: !84, line: 54, baseType: !100, size: 64, align: 64, offset: 2624)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "wanted_usermode", scope: !83, file: !84, line: 55, baseType: !100, size: 64, align: 64, offset: 2688)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "userhost", scope: !83, file: !84, line: 56, baseType: !100, size: 64, align: 64, offset: 2752)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "channels_formed", scope: !83, file: !84, line: 57, baseType: !71, size: 32, align: 32, offset: 2816)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "whois_found", scope: !83, file: !84, line: 59, baseType: !141, size: 1, align: 32, offset: 2848, flags: DIFlagBitField, extraData: i64 2848)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "whowas_found", scope: !83, file: !84, line: 60, baseType: !141, size: 1, align: 32, offset: 2849, flags: DIFlagBitField, extraData: i64 2848)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "emode_known", scope: !83, file: !84, line: 62, baseType: !141, size: 1, align: 32, offset: 2850, flags: DIFlagBitField, extraData: i64 2848)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_mode", scope: !83, file: !84, line: 63, baseType: !141, size: 1, align: 32, offset: 2851, flags: DIFlagBitField, extraData: i64 2848)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_who", scope: !83, file: !84, line: 64, baseType: !141, size: 1, align: 32, offset: 2852, flags: DIFlagBitField, extraData: i64 2848)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "one_endofwho", scope: !83, file: !84, line: 65, baseType: !141, size: 1, align: 32, offset: 2853, flags: DIFlagBitField, extraData: i64 2848)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "disable_lag", scope: !83, file: !84, line: 66, baseType: !141, size: 1, align: 32, offset: 2854, flags: DIFlagBitField, extraData: i64 2848)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "nick_collision", scope: !83, file: !84, line: 67, baseType: !141, size: 1, align: 32, offset: 2855, flags: DIFlagBitField, extraData: i64 2848)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "motd_got", scope: !83, file: !84, line: 68, baseType: !141, size: 1, align: 32, offset: 2856, flags: DIFlagBitField, extraData: i64 2848)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "isupport_sent", scope: !83, file: !84, line: 69, baseType: !141, size: 1, align: 32, offset: 2857, flags: DIFlagBitField, extraData: i64 2848)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "cap_complete", scope: !83, file: !84, line: 70, baseType: !141, size: 1, align: 32, offset: 2858, flags: DIFlagBitField, extraData: i64 2848)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "cap_in_multiline", scope: !83, file: !84, line: 71, baseType: !141, size: 1, align: 32, offset: 2859, flags: DIFlagBitField, extraData: i64 2848)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_success", scope: !83, file: !84, line: 72, baseType: !141, size: 1, align: 32, offset: 2860, flags: DIFlagBitField, extraData: i64 2848)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks_in_cmd", scope: !83, file: !84, line: 74, baseType: !71, size: 32, align: 32, offset: 2880)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes_in_cmd", scope: !83, file: !84, line: 75, baseType: !71, size: 32, align: 32, offset: 2912)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois_in_cmd", scope: !83, file: !84, line: 76, baseType: !71, size: 32, align: 32, offset: 2944)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs_in_cmd", scope: !83, file: !84, line: 77, baseType: !71, size: 32, align: 32, offset: 2976)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "cap_supported", scope: !83, file: !84, line: 79, baseType: !389, size: 64, align: 64, offset: 3008)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "cap_active", scope: !83, file: !84, line: 80, baseType: !50, size: 64, align: 64, offset: 3072)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "cap_queue", scope: !83, file: !84, line: 81, baseType: !50, size: 64, align: 64, offset: 3136)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_buffer", scope: !83, file: !84, line: 83, baseType: !307, size: 64, align: 64, offset: 3200)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_timeout", scope: !83, file: !84, line: 84, baseType: !266, size: 32, align: 32, offset: 3264)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcount", scope: !83, file: !84, line: 87, baseType: !71, size: 32, align: 32, offset: 3296)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "cmdqueue", scope: !83, file: !84, line: 91, baseType: !50, size: 64, align: 64, offset: 3328)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "wait_cmd", scope: !83, file: !84, line: 92, baseType: !401, size: 128, align: 64, offset: 3392)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd", scope: !83, file: !84, line: 93, baseType: !401, size: 128, align: 64, offset: 3520)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !83, file: !84, line: 95, baseType: !71, size: 32, align: 32, offset: 3648)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !83, file: !84, line: 96, baseType: !71, size: 32, align: 32, offset: 3680)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !83, file: !84, line: 97, baseType: !71, size: 32, align: 32, offset: 3712)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "idles", scope: !83, file: !84, line: 100, baseType: !50, size: 64, align: 64, offset: 3776)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "ctcpqueue", scope: !83, file: !84, line: 103, baseType: !50, size: 64, align: 64, offset: 3840)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "knockoutlist", scope: !83, file: !84, line: 106, baseType: !50, size: 64, align: 64, offset: 3904)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "splits", scope: !83, file: !84, line: 108, baseType: !389, size: 64, align: 64, offset: 3968)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "split_servers", scope: !83, file: !84, line: 109, baseType: !50, size: 64, align: 64, offset: 4032)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "rejoin_channels", scope: !83, file: !84, line: 111, baseType: !50, size: 64, align: 64, offset: 4096)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "chanqueries", scope: !83, file: !84, line: 114, baseType: !42, size: 64, align: 64, offset: 4160)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "isupport", scope: !83, file: !84, line: 116, baseType: !389, size: 64, align: 64, offset: 4224)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !83, file: !84, line: 117, baseType: !665, size: 32768, align: 64, offset: 4288)
!665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !666, size: 32768, align: 64, elements: !715)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "modes_type", file: !667, line: 10, size: 128, align: 64, elements: !668)
!667 = !DIFile(filename: "../../../src/irc/core/modes.h", directory: "/home/lichi/Desktop/irssi/task1")
!668 = !{!669, !714}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !666, file: !667, line: 11, baseType: !670, size: 64, align: 64)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64, align: 64)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_func_t", file: !667, line: 7, baseType: !672)
!672 = !DISubroutineType(types: !673)
!673 = !{null, !674, !47, !46, !46, !100, !307}
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64, align: 64)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_CHANNEL_REC", file: !82, line: 7, baseType: !676)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_CHANNEL_REC", file: !677, line: 15, size: 1600, align: 64, elements: !678)
!677 = !DIFile(filename: "../../../src/irc/core/irc-channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!678 = !{!679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !676, file: !526, line: 3, baseType: !71, size: 32, align: 32)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !676, file: !526, line: 4, baseType: !71, size: 32, align: 32, offset: 32)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !676, file: !526, line: 5, baseType: !389, size: 64, align: 64, offset: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !676, file: !526, line: 7, baseType: !42, size: 64, align: 64, offset: 128)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !676, file: !526, line: 8, baseType: !80, size: 64, align: 64, offset: 192)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !676, file: !526, line: 9, baseType: !100, size: 64, align: 64, offset: 256)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !676, file: !526, line: 10, baseType: !100, size: 64, align: 64, offset: 320)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !676, file: !526, line: 11, baseType: !74, size: 64, align: 64, offset: 384)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !676, file: !526, line: 12, baseType: !71, size: 32, align: 32, offset: 448)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !676, file: !526, line: 13, baseType: !100, size: 64, align: 64, offset: 512)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !676, file: !526, line: 15, baseType: !537, size: 64, align: 64, offset: 576)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !676, file: !526, line: 17, baseType: !544, size: 64, align: 64, offset: 640)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !676, file: !548, line: 5, baseType: !100, size: 64, align: 64, offset: 704)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !676, file: !548, line: 6, baseType: !100, size: 64, align: 64, offset: 768)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !676, file: !548, line: 7, baseType: !74, size: 64, align: 64, offset: 832)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !676, file: !548, line: 9, baseType: !389, size: 64, align: 64, offset: 896)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !676, file: !548, line: 10, baseType: !553, size: 64, align: 64, offset: 960)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !676, file: !548, line: 12, baseType: !141, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !676, file: !548, line: 13, baseType: !100, size: 64, align: 64, offset: 1088)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !676, file: !548, line: 14, baseType: !71, size: 32, align: 32, offset: 1152)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !676, file: !548, line: 15, baseType: !100, size: 64, align: 64, offset: 1216)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !676, file: !548, line: 17, baseType: !141, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !676, file: !548, line: 18, baseType: !141, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !676, file: !548, line: 19, baseType: !141, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !676, file: !548, line: 20, baseType: !141, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !676, file: !548, line: 22, baseType: !141, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !676, file: !548, line: 23, baseType: !141, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !676, file: !548, line: 24, baseType: !141, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !676, file: !548, line: 25, baseType: !141, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !676, file: !548, line: 26, baseType: !141, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !676, file: !548, line: 31, baseType: !590, size: 64, align: 64, offset: 1344)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "banlist", scope: !676, file: !677, line: 18, baseType: !50, size: 64, align: 64, offset: 1408)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "massjoin_start", scope: !676, file: !677, line: 20, baseType: !74, size: 64, align: 64, offset: 1472)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "massjoins", scope: !676, file: !677, line: 21, baseType: !71, size: 32, align: 32, offset: 1536)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "last_massjoins", scope: !676, file: !677, line: 22, baseType: !71, size: 32, align: 32, offset: 1568)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !666, file: !667, line: 12, baseType: !46, size: 8, align: 8, offset: 64)
!715 = !{!716}
!716 = !DISubrange(count: 256)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !83, file: !84, line: 118, baseType: !718, size: 2048, align: 8, offset: 37056)
!718 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 2048, align: 8, elements: !715)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "nick_comp_func", scope: !83, file: !84, line: 120, baseType: !601, size: 64, align: 64, offset: 39104)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !66, file: !70, line: 6, baseType: !100, size: 64, align: 64, offset: 192)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "mynick", scope: !66, file: !70, line: 7, baseType: !100, size: 64, align: 64, offset: 256)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !66, file: !70, line: 8, baseType: !100, size: 64, align: 64, offset: 320)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "chat", scope: !66, file: !70, line: 10, baseType: !63, size: 64, align: 64, offset: 384)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !66, file: !70, line: 11, baseType: !100, size: 64, align: 64, offset: 448)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !66, file: !70, line: 12, baseType: !100, size: 64, align: 64, offset: 512)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !66, file: !70, line: 14, baseType: !113, size: 160, align: 32, offset: 576)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "addrstr", scope: !66, file: !70, line: 15, baseType: !728, size: 368, align: 8, offset: 736)
!728 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 368, align: 8, elements: !729)
!729 = !{!730}
!730 = !DISubrange(count: 46)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !66, file: !70, line: 16, baseType: !71, size: 32, align: 32, offset: 1120)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !66, file: !70, line: 18, baseType: !158, size: 64, align: 64, offset: 1152)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "tagconn", scope: !66, file: !70, line: 19, baseType: !71, size: 32, align: 32, offset: 1216)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "tagread", scope: !66, file: !70, line: 19, baseType: !71, size: 32, align: 32, offset: 1248)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "tagwrite", scope: !66, file: !70, line: 19, baseType: !71, size: 32, align: 32, offset: 1280)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "starttime", scope: !66, file: !70, line: 20, baseType: !74, size: 64, align: 64, offset: 1344)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "transfd", scope: !66, file: !70, line: 21, baseType: !738, size: 64, align: 64, offset: 1408)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "uoff_t", file: !114, line: 49, baseType: !176)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "pasv_id", scope: !66, file: !70, line: 23, baseType: !71, size: 32, align: 32, offset: 1472)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "destroyed", scope: !66, file: !70, line: 25, baseType: !141, size: 1, align: 32, offset: 1504, flags: DIFlagBitField, extraData: i64 1504)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !66, file: !70, line: 27, baseType: !389, size: 64, align: 64, offset: 1536)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !66, file: !67, line: 15, baseType: !100, size: 64, align: 64, offset: 1600)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "sendbuf", scope: !66, file: !67, line: 16, baseType: !361, size: 64, align: 64, offset: 1664)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "mirc_ctcp", scope: !66, file: !67, line: 18, baseType: !141, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !66, file: !67, line: 19, baseType: !141, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !60, file: !36, line: 14, baseType: !100, size: 64, align: 64, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !60, file: !36, line: 15, baseType: !100, size: 64, align: 64, offset: 128)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !60, file: !36, line: 16, baseType: !100, size: 64, align: 64, offset: 192)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "passive", scope: !60, file: !36, line: 17, baseType: !71, size: 32, align: 32, offset: 256)
!750 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !751, line: 9, baseType: !752)
!751 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64, align: 64)
!753 = !DISubroutineType(types: !754)
!754 = !{null, !755, !755, !755, !755, !755, !755}
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64, align: 64)
!756 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!757 = !{!758}
!758 = distinct !DIGlobalVariable(name: "queuelist", scope: !0, file: !759, line: 34, type: !760, isLocal: true, isDefinition: true, variable: %struct._GPtrArray** @queuelist)
!759 = !DIFile(filename: "dcc-queue.c", directory: "/home/lichi/Desktop/irssi/task1")
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64, align: 64)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPtrArray", file: !762, line: 39, baseType: !763)
!762 = !DIFile(filename: "/usr/include/glib-2.0/glib/garray.h", directory: "/home/lichi/Desktop/irssi/task1")
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GPtrArray", file: !762, line: 53, size: 128, align: 64, elements: !764)
!764 = !{!765, !766}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "pdata", scope: !763, file: !762, line: 55, baseType: !235, size: 64, align: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !763, file: !762, line: 56, baseType: !266, size: 32, align: 32, offset: 64)
!767 = !{i32 2, !"Dwarf Version", i32 4}
!768 = !{i32 2, !"Debug Info Version", i32 3}
!769 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!770 = distinct !DISubprogram(name: "dcc_queue_old", scope: !759, file: !759, line: 37, type: !602, isLocal: false, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !771)
!771 = !{}
!772 = !DILocalVariable(name: "nick", arg: 1, scope: !770, file: !759, line: 37, type: !47)
!773 = !DIExpression()
!774 = !DILocation(line: 37, column: 31, scope: !770)
!775 = !DILocalVariable(name: "servertag", arg: 2, scope: !770, file: !759, line: 37, type: !47)
!776 = !DILocation(line: 37, column: 49, scope: !770)
!777 = !DILocalVariable(name: "i", scope: !770, file: !759, line: 39, type: !71)
!778 = !DILocation(line: 39, column: 6, scope: !770)
!779 = !DILocation(line: 41, column: 9, scope: !780)
!780 = distinct !DILexicalBlock(scope: !770, file: !759, line: 41, column: 2)
!781 = !DILocation(line: 41, column: 7, scope: !780)
!782 = !DILocation(line: 41, column: 14, scope: !783)
!783 = !DILexicalBlockFile(scope: !784, file: !759, discriminator: 1)
!784 = distinct !DILexicalBlock(scope: !780, file: !759, line: 41, column: 2)
!785 = !DILocation(line: 41, column: 18, scope: !783)
!786 = !DILocation(line: 41, column: 29, scope: !783)
!787 = !DILocation(line: 41, column: 16, scope: !783)
!788 = !DILocation(line: 41, column: 2, scope: !783)
!789 = !DILocalVariable(name: "qlist", scope: !790, file: !759, line: 42, type: !50)
!790 = distinct !DILexicalBlock(scope: !784, file: !759, line: 41, column: 39)
!791 = !DILocation(line: 42, column: 11, scope: !790)
!792 = !DILocation(line: 42, column: 40, scope: !790)
!793 = !DILocation(line: 42, column: 19, scope: !790)
!794 = !DILocation(line: 42, column: 21, scope: !790)
!795 = !DILocation(line: 42, column: 33, scope: !790)
!796 = !DILocation(line: 44, column: 3, scope: !790)
!797 = !DILocation(line: 44, column: 10, scope: !798)
!798 = !DILexicalBlockFile(scope: !799, file: !759, discriminator: 1)
!799 = distinct !DILexicalBlock(scope: !800, file: !759, line: 44, column: 3)
!800 = distinct !DILexicalBlock(scope: !790, file: !759, line: 44, column: 3)
!801 = !DILocation(line: 44, column: 16, scope: !798)
!802 = !DILocation(line: 44, column: 3, scope: !798)
!803 = !DILocalVariable(name: "rec", scope: !804, file: !759, line: 45, type: !58)
!804 = distinct !DILexicalBlock(scope: !799, file: !759, line: 44, column: 45)
!805 = !DILocation(line: 45, column: 19, scope: !804)
!806 = !DILocation(line: 45, column: 25, scope: !804)
!807 = !DILocation(line: 45, column: 32, scope: !804)
!808 = !DILocation(line: 47, column: 8, scope: !809)
!809 = distinct !DILexicalBlock(scope: !804, file: !759, line: 47, column: 8)
!810 = !DILocation(line: 47, column: 12, scope: !809)
!811 = !DILocation(line: 47, column: 8, scope: !804)
!812 = !DILocation(line: 48, column: 5, scope: !809)
!813 = !DILocation(line: 50, column: 9, scope: !814)
!814 = distinct !DILexicalBlock(scope: !804, file: !759, line: 50, column: 8)
!815 = !DILocation(line: 50, column: 8, scope: !814)
!816 = !DILocation(line: 50, column: 14, scope: !814)
!817 = !DILocation(line: 50, column: 22, scope: !814)
!818 = !DILocation(line: 51, column: 27, scope: !814)
!819 = !DILocation(line: 51, column: 33, scope: !814)
!820 = !DILocation(line: 51, column: 38, scope: !814)
!821 = !DILocation(line: 51, column: 8, scope: !814)
!822 = !DILocation(line: 51, column: 44, scope: !814)
!823 = !DILocation(line: 50, column: 8, scope: !824)
!824 = !DILexicalBlockFile(scope: !804, file: !759, discriminator: 1)
!825 = !DILocation(line: 52, column: 5, scope: !814)
!826 = !DILocation(line: 54, column: 9, scope: !827)
!827 = distinct !DILexicalBlock(scope: !804, file: !759, line: 54, column: 8)
!828 = !DILocation(line: 54, column: 8, scope: !827)
!829 = !DILocation(line: 54, column: 19, scope: !827)
!830 = !DILocation(line: 54, column: 27, scope: !827)
!831 = !DILocation(line: 55, column: 27, scope: !827)
!832 = !DILocation(line: 55, column: 38, scope: !827)
!833 = !DILocation(line: 55, column: 43, scope: !827)
!834 = !DILocation(line: 55, column: 8, scope: !827)
!835 = !DILocation(line: 55, column: 54, scope: !827)
!836 = !DILocation(line: 54, column: 8, scope: !824)
!837 = !DILocation(line: 56, column: 5, scope: !827)
!838 = !DILocation(line: 59, column: 11, scope: !804)
!839 = !DILocation(line: 59, column: 4, scope: !804)
!840 = !DILocation(line: 44, column: 32, scope: !841)
!841 = !DILexicalBlockFile(scope: !799, file: !759, discriminator: 2)
!842 = !DILocation(line: 44, column: 39, scope: !841)
!843 = !DILocation(line: 44, column: 30, scope: !841)
!844 = !DILocation(line: 44, column: 3, scope: !841)
!845 = distinct !{!845, !796}
!846 = !DILocation(line: 61, column: 2, scope: !790)
!847 = !DILocation(line: 41, column: 35, scope: !848)
!848 = !DILexicalBlockFile(scope: !784, file: !759, discriminator: 2)
!849 = !DILocation(line: 41, column: 2, scope: !848)
!850 = distinct !{!850, !851}
!851 = !DILocation(line: 41, column: 2, scope: !770)
!852 = !DILocation(line: 63, column: 2, scope: !770)
!853 = !DILocation(line: 64, column: 1, scope: !770)
!854 = distinct !DISubprogram(name: "dcc_queue_new", scope: !759, file: !759, line: 67, type: !855, isLocal: false, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !771)
!855 = !DISubroutineType(types: !856)
!856 = !{!71}
!857 = !DILocalVariable(name: "i", scope: !854, file: !759, line: 69, type: !71)
!858 = !DILocation(line: 69, column: 6, scope: !854)
!859 = !DILocation(line: 71, column: 9, scope: !860)
!860 = distinct !DILexicalBlock(scope: !854, file: !759, line: 71, column: 2)
!861 = !DILocation(line: 71, column: 7, scope: !860)
!862 = !DILocation(line: 71, column: 14, scope: !863)
!863 = !DILexicalBlockFile(scope: !864, file: !759, discriminator: 1)
!864 = distinct !DILexicalBlock(scope: !860, file: !759, line: 71, column: 2)
!865 = !DILocation(line: 71, column: 18, scope: !863)
!866 = !DILocation(line: 71, column: 29, scope: !863)
!867 = !DILocation(line: 71, column: 16, scope: !863)
!868 = !DILocation(line: 71, column: 2, scope: !863)
!869 = !DILocation(line: 72, column: 28, scope: !870)
!870 = distinct !DILexicalBlock(scope: !871, file: !759, line: 72, column: 7)
!871 = distinct !DILexicalBlock(scope: !864, file: !759, line: 71, column: 39)
!872 = !DILocation(line: 72, column: 7, scope: !870)
!873 = !DILocation(line: 72, column: 9, scope: !870)
!874 = !DILocation(line: 72, column: 21, scope: !870)
!875 = !DILocation(line: 72, column: 31, scope: !870)
!876 = !DILocation(line: 72, column: 7, scope: !871)
!877 = !DILocation(line: 73, column: 4, scope: !870)
!878 = !DILocation(line: 74, column: 2, scope: !871)
!879 = !DILocation(line: 71, column: 35, scope: !880)
!880 = !DILexicalBlockFile(scope: !864, file: !759, discriminator: 2)
!881 = !DILocation(line: 71, column: 2, scope: !880)
!882 = distinct !{!882, !883}
!883 = !DILocation(line: 71, column: 2, scope: !854)
!884 = !DILocation(line: 76, column: 6, scope: !885)
!885 = distinct !DILexicalBlock(scope: !854, file: !759, line: 76, column: 6)
!886 = !DILocation(line: 76, column: 11, scope: !885)
!887 = !DILocation(line: 76, column: 22, scope: !885)
!888 = !DILocation(line: 76, column: 8, scope: !885)
!889 = !DILocation(line: 76, column: 6, scope: !854)
!890 = !DILocation(line: 77, column: 24, scope: !885)
!891 = !DILocation(line: 77, column: 36, scope: !885)
!892 = !DILocation(line: 77, column: 38, scope: !885)
!893 = !DILocation(line: 77, column: 43, scope: !885)
!894 = !DILocation(line: 77, column: 3, scope: !885)
!895 = !DILocation(line: 80, column: 35, scope: !854)
!896 = !DILocation(line: 80, column: 30, scope: !854)
!897 = !DILocation(line: 80, column: 9, scope: !854)
!898 = !DILocation(line: 80, column: 11, scope: !854)
!899 = !DILocation(line: 80, column: 23, scope: !854)
!900 = !DILocation(line: 80, column: 33, scope: !854)
!901 = !DILocation(line: 81, column: 9, scope: !854)
!902 = !DILocation(line: 81, column: 2, scope: !854)
!903 = distinct !DISubprogram(name: "dcc_queue_free", scope: !759, file: !759, line: 94, type: !904, isLocal: false, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !771)
!904 = !DISubroutineType(types: !905)
!905 = !{null, !71}
!906 = !DILocalVariable(name: "queue", arg: 1, scope: !903, file: !759, line: 94, type: !71)
!907 = !DILocation(line: 94, column: 25, scope: !903)
!908 = !DILocalVariable(name: "qlist", scope: !903, file: !759, line: 96, type: !49)
!909 = !DILocation(line: 96, column: 11, scope: !903)
!910 = !DILocation(line: 98, column: 2, scope: !903)
!911 = distinct !{!911, !910}
!912 = !DILocation(line: 98, column: 11, scope: !913)
!913 = !DILexicalBlockFile(scope: !914, file: !759, discriminator: 1)
!914 = distinct !DILexicalBlock(scope: !915, file: !759, line: 98, column: 11)
!915 = distinct !DILexicalBlock(scope: !903, file: !759, line: 98, column: 5)
!916 = !DILocation(line: 98, column: 17, scope: !913)
!917 = !DILocation(line: 98, column: 22, scope: !913)
!918 = !DILocation(line: 98, column: 25, scope: !919)
!919 = !DILexicalBlockFile(scope: !914, file: !759, discriminator: 2)
!920 = !DILocation(line: 98, column: 33, scope: !919)
!921 = !DILocation(line: 98, column: 44, scope: !919)
!922 = !DILocation(line: 98, column: 31, scope: !919)
!923 = !DILocation(line: 98, column: 11, scope: !919)
!924 = !DILocation(line: 98, column: 11, scope: !925)
!925 = !DILexicalBlockFile(scope: !915, file: !759, discriminator: 3)
!926 = !DILocation(line: 98, column: 56, scope: !927)
!927 = !DILexicalBlockFile(scope: !914, file: !759, discriminator: 4)
!928 = !DILocation(line: 98, column: 184, scope: !929)
!929 = !DILexicalBlockFile(scope: !915, file: !759, discriminator: 5)
!930 = !DILocation(line: 100, column: 44, scope: !903)
!931 = !DILocation(line: 100, column: 23, scope: !903)
!932 = !DILocation(line: 100, column: 25, scope: !903)
!933 = !DILocation(line: 100, column: 37, scope: !903)
!934 = !DILocation(line: 100, column: 10, scope: !903)
!935 = !DILocation(line: 100, column: 8, scope: !903)
!936 = !DILocation(line: 101, column: 2, scope: !903)
!937 = !DILocation(line: 101, column: 10, scope: !938)
!938 = !DILexicalBlockFile(scope: !903, file: !759, discriminator: 1)
!939 = !DILocation(line: 101, column: 9, scope: !938)
!940 = !DILocation(line: 101, column: 16, scope: !938)
!941 = !DILocation(line: 101, column: 2, scope: !938)
!942 = !DILocalVariable(name: "rec", scope: !943, file: !759, line: 102, type: !58)
!943 = distinct !DILexicalBlock(scope: !903, file: !759, line: 101, column: 24)
!944 = !DILocation(line: 102, column: 18, scope: !943)
!945 = !DILocation(line: 102, column: 26, scope: !943)
!946 = !DILocation(line: 102, column: 25, scope: !943)
!947 = !DILocation(line: 102, column: 34, scope: !943)
!948 = !DILocation(line: 102, column: 24, scope: !943)
!949 = !DILocation(line: 104, column: 14, scope: !943)
!950 = !DILocation(line: 104, column: 13, scope: !943)
!951 = !DILocation(line: 104, column: 22, scope: !943)
!952 = !DILocation(line: 104, column: 4, scope: !943)
!953 = !DILocation(line: 104, column: 10, scope: !943)
!954 = !DILocation(line: 105, column: 22, scope: !943)
!955 = !DILocation(line: 105, column: 3, scope: !943)
!956 = !DILocation(line: 101, column: 2, scope: !957)
!957 = !DILexicalBlockFile(scope: !903, file: !759, discriminator: 2)
!958 = distinct !{!958, !936}
!959 = !DILocation(line: 107, column: 1, scope: !903)
!960 = distinct !DISubprogram(name: "dcc_queue_free_rec", scope: !759, file: !759, line: 84, type: !961, isLocal: true, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !771)
!961 = !DISubroutineType(types: !962)
!962 = !{null, !58}
!963 = !DILocalVariable(name: "rec", arg: 1, scope: !960, file: !759, line: 84, type: !58)
!964 = !DILocation(line: 84, column: 47, scope: !960)
!965 = !DILocation(line: 86, column: 6, scope: !966)
!966 = distinct !DILexicalBlock(scope: !960, file: !759, line: 86, column: 6)
!967 = !DILocation(line: 86, column: 10, scope: !966)
!968 = !DILocation(line: 86, column: 6, scope: !960)
!969 = !DILocation(line: 87, column: 10, scope: !970)
!970 = distinct !DILexicalBlock(scope: !966, file: !759, line: 86, column: 18)
!971 = !DILocation(line: 87, column: 15, scope: !970)
!972 = !DILocation(line: 87, column: 3, scope: !970)
!973 = !DILocation(line: 88, column: 10, scope: !970)
!974 = !DILocation(line: 88, column: 15, scope: !970)
!975 = !DILocation(line: 88, column: 3, scope: !970)
!976 = !DILocation(line: 89, column: 10, scope: !970)
!977 = !DILocation(line: 89, column: 15, scope: !970)
!978 = !DILocation(line: 89, column: 3, scope: !970)
!979 = !DILocation(line: 90, column: 10, scope: !970)
!980 = !DILocation(line: 90, column: 3, scope: !970)
!981 = !DILocation(line: 91, column: 2, scope: !970)
!982 = !DILocation(line: 92, column: 1, scope: !960)
!983 = distinct !DISubprogram(name: "dcc_queue_add", scope: !759, file: !759, line: 113, type: !984, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !771)
!984 = !DISubroutineType(types: !985)
!985 = !{null, !71, !71, !47, !47, !47, !63, !71}
!986 = !DILocalVariable(name: "queue", arg: 1, scope: !983, file: !759, line: 113, type: !71)
!987 = !DILocation(line: 113, column: 24, scope: !983)
!988 = !DILocalVariable(name: "mode", arg: 2, scope: !983, file: !759, line: 113, type: !71)
!989 = !DILocation(line: 113, column: 35, scope: !983)
!990 = !DILocalVariable(name: "nick", arg: 3, scope: !983, file: !759, line: 113, type: !47)
!991 = !DILocation(line: 113, column: 53, scope: !983)
!992 = !DILocalVariable(name: "fname", arg: 4, scope: !983, file: !759, line: 113, type: !47)
!993 = !DILocation(line: 113, column: 71, scope: !983)
!994 = !DILocalVariable(name: "servertag", arg: 5, scope: !983, file: !759, line: 114, type: !47)
!995 = !DILocation(line: 114, column: 18, scope: !983)
!996 = !DILocalVariable(name: "chat", arg: 6, scope: !983, file: !759, line: 114, type: !63)
!997 = !DILocation(line: 114, column: 43, scope: !983)
!998 = !DILocalVariable(name: "passive", arg: 7, scope: !983, file: !759, line: 114, type: !71)
!999 = !DILocation(line: 114, column: 53, scope: !983)
!1000 = !DILocalVariable(name: "rec", scope: !983, file: !759, line: 116, type: !58)
!1001 = !DILocation(line: 116, column: 17, scope: !983)
!1002 = !DILocalVariable(name: "qlist", scope: !983, file: !759, line: 117, type: !49)
!1003 = !DILocation(line: 117, column: 11, scope: !983)
!1004 = !DILocation(line: 119, column: 2, scope: !983)
!1005 = distinct !{!1005, !1004}
!1006 = !DILocation(line: 119, column: 11, scope: !1007)
!1007 = !DILexicalBlockFile(scope: !1008, file: !759, discriminator: 1)
!1008 = distinct !DILexicalBlock(scope: !1009, file: !759, line: 119, column: 11)
!1009 = distinct !DILexicalBlock(scope: !983, file: !759, line: 119, column: 5)
!1010 = !DILocation(line: 119, column: 17, scope: !1007)
!1011 = !DILocation(line: 119, column: 22, scope: !1007)
!1012 = !DILocation(line: 119, column: 25, scope: !1013)
!1013 = !DILexicalBlockFile(scope: !1008, file: !759, discriminator: 2)
!1014 = !DILocation(line: 119, column: 33, scope: !1013)
!1015 = !DILocation(line: 119, column: 44, scope: !1013)
!1016 = !DILocation(line: 119, column: 31, scope: !1013)
!1017 = !DILocation(line: 119, column: 11, scope: !1013)
!1018 = !DILocation(line: 119, column: 11, scope: !1019)
!1019 = !DILexicalBlockFile(scope: !1009, file: !759, discriminator: 3)
!1020 = !DILocation(line: 119, column: 56, scope: !1021)
!1021 = !DILexicalBlockFile(scope: !1008, file: !759, discriminator: 4)
!1022 = !DILocation(line: 119, column: 185, scope: !1023)
!1023 = !DILexicalBlockFile(scope: !1009, file: !759, discriminator: 5)
!1024 = !DILocation(line: 121, column: 27, scope: !983)
!1025 = !DILocation(line: 121, column: 9, scope: !983)
!1026 = !DILocation(line: 121, column: 6, scope: !983)
!1027 = !DILocation(line: 122, column: 14, scope: !983)
!1028 = !DILocation(line: 122, column: 2, scope: !983)
!1029 = !DILocation(line: 122, column: 7, scope: !983)
!1030 = !DILocation(line: 122, column: 12, scope: !983)
!1031 = !DILocation(line: 123, column: 28, scope: !983)
!1032 = !DILocation(line: 123, column: 19, scope: !983)
!1033 = !DILocation(line: 123, column: 2, scope: !983)
!1034 = !DILocation(line: 123, column: 7, scope: !983)
!1035 = !DILocation(line: 123, column: 17, scope: !983)
!1036 = !DILocation(line: 124, column: 23, scope: !983)
!1037 = !DILocation(line: 124, column: 14, scope: !983)
!1038 = !DILocation(line: 124, column: 2, scope: !983)
!1039 = !DILocation(line: 124, column: 7, scope: !983)
!1040 = !DILocation(line: 124, column: 12, scope: !983)
!1041 = !DILocation(line: 125, column: 23, scope: !983)
!1042 = !DILocation(line: 125, column: 14, scope: !983)
!1043 = !DILocation(line: 125, column: 2, scope: !983)
!1044 = !DILocation(line: 125, column: 7, scope: !983)
!1045 = !DILocation(line: 125, column: 12, scope: !983)
!1046 = !DILocation(line: 126, column: 17, scope: !983)
!1047 = !DILocation(line: 126, column: 2, scope: !983)
!1048 = !DILocation(line: 126, column: 7, scope: !983)
!1049 = !DILocation(line: 126, column: 15, scope: !983)
!1050 = !DILocation(line: 128, column: 44, scope: !983)
!1051 = !DILocation(line: 128, column: 23, scope: !983)
!1052 = !DILocation(line: 128, column: 25, scope: !983)
!1053 = !DILocation(line: 128, column: 37, scope: !983)
!1054 = !DILocation(line: 128, column: 10, scope: !983)
!1055 = !DILocation(line: 128, column: 8, scope: !983)
!1056 = !DILocation(line: 129, column: 6, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !983, file: !759, line: 129, column: 6)
!1058 = !DILocation(line: 129, column: 11, scope: !1057)
!1059 = !DILocation(line: 129, column: 6, scope: !983)
!1060 = !DILocation(line: 130, column: 28, scope: !1057)
!1061 = !DILocation(line: 130, column: 27, scope: !1057)
!1062 = !DILocation(line: 130, column: 35, scope: !1057)
!1063 = !DILocation(line: 130, column: 12, scope: !1057)
!1064 = !DILocation(line: 130, column: 4, scope: !1057)
!1065 = !DILocation(line: 130, column: 10, scope: !1057)
!1066 = !DILocation(line: 130, column: 3, scope: !1057)
!1067 = !DILocation(line: 132, column: 28, scope: !1057)
!1068 = !DILocation(line: 132, column: 27, scope: !1057)
!1069 = !DILocation(line: 132, column: 35, scope: !1057)
!1070 = !DILocation(line: 132, column: 12, scope: !1057)
!1071 = !DILocation(line: 132, column: 4, scope: !1057)
!1072 = !DILocation(line: 132, column: 10, scope: !1057)
!1073 = !DILocation(line: 133, column: 1, scope: !983)
!1074 = distinct !DISubprogram(name: "dcc_queue_remove_head", scope: !759, file: !759, line: 159, type: !1075, isLocal: false, isDefinition: true, scopeLine: 160, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !771)
!1075 = !DISubroutineType(types: !1076)
!1076 = !{!71, !71}
!1077 = !DILocalVariable(name: "queue", arg: 1, scope: !1074, file: !759, line: 159, type: !71)
!1078 = !DILocation(line: 159, column: 31, scope: !1074)
!1079 = !DILocation(line: 161, column: 32, scope: !1074)
!1080 = !DILocation(line: 161, column: 9, scope: !1074)
!1081 = !DILocation(line: 161, column: 2, scope: !1074)
!1082 = distinct !DISubprogram(name: "dcc_queue_remove_entry", scope: !759, file: !759, line: 139, type: !1083, isLocal: true, isDefinition: true, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !771)
!1083 = !DISubroutineType(types: !1084)
!1084 = !{!71, !71, !71}
!1085 = !DILocalVariable(name: "queue", arg: 1, scope: !1082, file: !759, line: 139, type: !71)
!1086 = !DILocation(line: 139, column: 39, scope: !1082)
!1087 = !DILocalVariable(name: "remove_head", arg: 2, scope: !1082, file: !759, line: 139, type: !71)
!1088 = !DILocation(line: 139, column: 50, scope: !1082)
!1089 = !DILocalVariable(name: "rec", scope: !1082, file: !759, line: 141, type: !58)
!1090 = !DILocation(line: 141, column: 17, scope: !1082)
!1091 = !DILocalVariable(name: "qlist", scope: !1082, file: !759, line: 142, type: !49)
!1092 = !DILocation(line: 142, column: 11, scope: !1082)
!1093 = !DILocation(line: 144, column: 2, scope: !1082)
!1094 = distinct !{!1094, !1093}
!1095 = !DILocation(line: 144, column: 11, scope: !1096)
!1096 = !DILexicalBlockFile(scope: !1097, file: !759, discriminator: 1)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !759, line: 144, column: 11)
!1098 = distinct !DILexicalBlock(scope: !1082, file: !759, line: 144, column: 5)
!1099 = !DILocation(line: 144, column: 17, scope: !1096)
!1100 = !DILocation(line: 144, column: 22, scope: !1096)
!1101 = !DILocation(line: 144, column: 25, scope: !1102)
!1102 = !DILexicalBlockFile(scope: !1097, file: !759, discriminator: 2)
!1103 = !DILocation(line: 144, column: 33, scope: !1102)
!1104 = !DILocation(line: 144, column: 44, scope: !1102)
!1105 = !DILocation(line: 144, column: 31, scope: !1102)
!1106 = !DILocation(line: 144, column: 11, scope: !1102)
!1107 = !DILocation(line: 144, column: 11, scope: !1108)
!1108 = !DILexicalBlockFile(scope: !1098, file: !759, discriminator: 3)
!1109 = !DILocation(line: 144, column: 56, scope: !1110)
!1110 = !DILexicalBlockFile(scope: !1097, file: !759, discriminator: 4)
!1111 = !DILocation(line: 144, column: 185, scope: !1112)
!1112 = !DILexicalBlockFile(scope: !1098, file: !759, discriminator: 5)
!1113 = !DILocation(line: 146, column: 44, scope: !1082)
!1114 = !DILocation(line: 146, column: 23, scope: !1082)
!1115 = !DILocation(line: 146, column: 25, scope: !1082)
!1116 = !DILocation(line: 146, column: 37, scope: !1082)
!1117 = !DILocation(line: 146, column: 10, scope: !1082)
!1118 = !DILocation(line: 146, column: 8, scope: !1082)
!1119 = !DILocation(line: 147, column: 7, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1082, file: !759, line: 147, column: 6)
!1121 = !DILocation(line: 147, column: 6, scope: !1120)
!1122 = !DILocation(line: 147, column: 13, scope: !1120)
!1123 = !DILocation(line: 147, column: 20, scope: !1120)
!1124 = !DILocation(line: 147, column: 25, scope: !1125)
!1125 = !DILexicalBlockFile(scope: !1120, file: !759, discriminator: 1)
!1126 = !DILocation(line: 147, column: 24, scope: !1125)
!1127 = !DILocation(line: 147, column: 33, scope: !1125)
!1128 = !DILocation(line: 147, column: 38, scope: !1125)
!1129 = !DILocation(line: 147, column: 6, scope: !1125)
!1130 = !DILocation(line: 148, column: 3, scope: !1120)
!1131 = !DILocation(line: 150, column: 8, scope: !1082)
!1132 = !DILocation(line: 150, column: 24, scope: !1133)
!1133 = !DILexicalBlockFile(scope: !1082, file: !759, discriminator: 1)
!1134 = !DILocation(line: 150, column: 23, scope: !1133)
!1135 = !DILocation(line: 150, column: 32, scope: !1133)
!1136 = !DILocation(line: 150, column: 8, scope: !1133)
!1137 = !DILocation(line: 150, column: 53, scope: !1138)
!1138 = !DILexicalBlockFile(scope: !1082, file: !759, discriminator: 2)
!1139 = !DILocation(line: 150, column: 52, scope: !1138)
!1140 = !DILocation(line: 150, column: 39, scope: !1138)
!1141 = !DILocation(line: 150, column: 61, scope: !1138)
!1142 = !DILocation(line: 150, column: 8, scope: !1138)
!1143 = !DILocation(line: 150, column: 8, scope: !1144)
!1144 = !DILexicalBlockFile(scope: !1082, file: !759, discriminator: 3)
!1145 = !DILocation(line: 150, column: 6, scope: !1144)
!1146 = !DILocation(line: 151, column: 27, scope: !1082)
!1147 = !DILocation(line: 151, column: 26, scope: !1082)
!1148 = !DILocation(line: 151, column: 34, scope: !1082)
!1149 = !DILocation(line: 151, column: 11, scope: !1082)
!1150 = !DILocation(line: 151, column: 3, scope: !1082)
!1151 = !DILocation(line: 151, column: 9, scope: !1082)
!1152 = !DILocation(line: 153, column: 21, scope: !1082)
!1153 = !DILocation(line: 153, column: 2, scope: !1082)
!1154 = !DILocation(line: 154, column: 2, scope: !1082)
!1155 = !DILocation(line: 155, column: 1, scope: !1082)
!1156 = distinct !DISubprogram(name: "dcc_queue_remove_tail", scope: !759, file: !759, line: 166, type: !1075, isLocal: false, isDefinition: true, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !771)
!1157 = !DILocalVariable(name: "queue", arg: 1, scope: !1156, file: !759, line: 166, type: !71)
!1158 = !DILocation(line: 166, column: 31, scope: !1156)
!1159 = !DILocation(line: 168, column: 32, scope: !1156)
!1160 = !DILocation(line: 168, column: 9, scope: !1156)
!1161 = !DILocation(line: 168, column: 2, scope: !1156)
!1162 = distinct !DISubprogram(name: "dcc_queue_get_next", scope: !759, file: !759, line: 171, type: !1163, isLocal: false, isDefinition: true, scopeLine: 172, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !771)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!58, !71}
!1165 = !DILocalVariable(name: "queue", arg: 1, scope: !1162, file: !759, line: 171, type: !71)
!1166 = !DILocation(line: 171, column: 39, scope: !1162)
!1167 = !DILocalVariable(name: "qlist", scope: !1162, file: !759, line: 173, type: !50)
!1168 = !DILocation(line: 173, column: 10, scope: !1162)
!1169 = !DILocation(line: 175, column: 2, scope: !1162)
!1170 = distinct !{!1170, !1169}
!1171 = !DILocation(line: 175, column: 11, scope: !1172)
!1172 = !DILexicalBlockFile(scope: !1173, file: !759, discriminator: 1)
!1173 = distinct !DILexicalBlock(scope: !1174, file: !759, line: 175, column: 11)
!1174 = distinct !DILexicalBlock(scope: !1162, file: !759, line: 175, column: 5)
!1175 = !DILocation(line: 175, column: 17, scope: !1172)
!1176 = !DILocation(line: 175, column: 22, scope: !1172)
!1177 = !DILocation(line: 175, column: 25, scope: !1178)
!1178 = !DILexicalBlockFile(scope: !1173, file: !759, discriminator: 2)
!1179 = !DILocation(line: 175, column: 33, scope: !1178)
!1180 = !DILocation(line: 175, column: 44, scope: !1178)
!1181 = !DILocation(line: 175, column: 31, scope: !1178)
!1182 = !DILocation(line: 175, column: 11, scope: !1178)
!1183 = !DILocation(line: 175, column: 11, scope: !1184)
!1184 = !DILexicalBlockFile(scope: !1174, file: !759, discriminator: 3)
!1185 = !DILocation(line: 175, column: 56, scope: !1186)
!1186 = !DILexicalBlockFile(scope: !1173, file: !759, discriminator: 4)
!1187 = !DILocation(line: 175, column: 185, scope: !1188)
!1188 = !DILexicalBlockFile(scope: !1174, file: !759, discriminator: 5)
!1189 = !DILocation(line: 177, column: 31, scope: !1162)
!1190 = !DILocation(line: 177, column: 10, scope: !1162)
!1191 = !DILocation(line: 177, column: 12, scope: !1162)
!1192 = !DILocation(line: 177, column: 24, scope: !1162)
!1193 = !DILocation(line: 177, column: 8, scope: !1162)
!1194 = !DILocation(line: 178, column: 9, scope: !1162)
!1195 = !DILocation(line: 178, column: 15, scope: !1162)
!1196 = !DILocation(line: 178, column: 22, scope: !1162)
!1197 = !DILocation(line: 178, column: 25, scope: !1198)
!1198 = !DILexicalBlockFile(scope: !1162, file: !759, discriminator: 1)
!1199 = !DILocation(line: 178, column: 32, scope: !1198)
!1200 = !DILocation(line: 178, column: 37, scope: !1198)
!1201 = !DILocation(line: 178, column: 9, scope: !1198)
!1202 = !DILocation(line: 178, column: 9, scope: !1203)
!1203 = !DILexicalBlockFile(scope: !1162, file: !759, discriminator: 2)
!1204 = !DILocation(line: 178, column: 54, scope: !1205)
!1205 = !DILexicalBlockFile(scope: !1162, file: !759, discriminator: 3)
!1206 = !DILocation(line: 178, column: 61, scope: !1205)
!1207 = !DILocation(line: 178, column: 67, scope: !1205)
!1208 = !DILocation(line: 178, column: 9, scope: !1205)
!1209 = !DILocation(line: 178, column: 9, scope: !1210)
!1210 = !DILexicalBlockFile(scope: !1162, file: !759, discriminator: 4)
!1211 = !DILocation(line: 178, column: 2, scope: !1210)
!1212 = distinct !DISubprogram(name: "dcc_queue_get_queue", scope: !759, file: !759, line: 181, type: !1213, isLocal: false, isDefinition: true, scopeLine: 182, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !771)
!1213 = !DISubroutineType(types: !1214)
!1214 = !{!50, !71}
!1215 = !DILocalVariable(name: "queue", arg: 1, scope: !1212, file: !759, line: 181, type: !71)
!1216 = !DILocation(line: 181, column: 33, scope: !1212)
!1217 = !DILocalVariable(name: "qlist", scope: !1212, file: !759, line: 183, type: !50)
!1218 = !DILocation(line: 183, column: 10, scope: !1212)
!1219 = !DILocation(line: 185, column: 2, scope: !1212)
!1220 = distinct !{!1220, !1219}
!1221 = !DILocation(line: 185, column: 11, scope: !1222)
!1222 = !DILexicalBlockFile(scope: !1223, file: !759, discriminator: 1)
!1223 = distinct !DILexicalBlock(scope: !1224, file: !759, line: 185, column: 11)
!1224 = distinct !DILexicalBlock(scope: !1212, file: !759, line: 185, column: 5)
!1225 = !DILocation(line: 185, column: 17, scope: !1222)
!1226 = !DILocation(line: 185, column: 22, scope: !1222)
!1227 = !DILocation(line: 185, column: 25, scope: !1228)
!1228 = !DILexicalBlockFile(scope: !1223, file: !759, discriminator: 2)
!1229 = !DILocation(line: 185, column: 33, scope: !1228)
!1230 = !DILocation(line: 185, column: 44, scope: !1228)
!1231 = !DILocation(line: 185, column: 31, scope: !1228)
!1232 = !DILocation(line: 185, column: 11, scope: !1228)
!1233 = !DILocation(line: 185, column: 11, scope: !1234)
!1234 = !DILexicalBlockFile(scope: !1224, file: !759, discriminator: 3)
!1235 = !DILocation(line: 185, column: 56, scope: !1236)
!1236 = !DILexicalBlockFile(scope: !1223, file: !759, discriminator: 4)
!1237 = !DILocation(line: 185, column: 185, scope: !1238)
!1238 = !DILexicalBlockFile(scope: !1224, file: !759, discriminator: 5)
!1239 = !DILocation(line: 187, column: 31, scope: !1212)
!1240 = !DILocation(line: 187, column: 10, scope: !1212)
!1241 = !DILocation(line: 187, column: 12, scope: !1212)
!1242 = !DILocation(line: 187, column: 24, scope: !1212)
!1243 = !DILocation(line: 187, column: 8, scope: !1212)
!1244 = !DILocation(line: 188, column: 9, scope: !1212)
!1245 = !DILocation(line: 188, column: 15, scope: !1212)
!1246 = !DILocation(line: 188, column: 9, scope: !1247)
!1247 = !DILexicalBlockFile(scope: !1212, file: !759, discriminator: 1)
!1248 = !DILocation(line: 188, column: 31, scope: !1249)
!1249 = !DILexicalBlockFile(scope: !1212, file: !759, discriminator: 2)
!1250 = !DILocation(line: 188, column: 38, scope: !1249)
!1251 = !DILocation(line: 188, column: 9, scope: !1249)
!1252 = !DILocation(line: 188, column: 9, scope: !1253)
!1253 = !DILexicalBlockFile(scope: !1212, file: !759, discriminator: 3)
!1254 = !DILocation(line: 188, column: 2, scope: !1253)
!1255 = distinct !DISubprogram(name: "dcc_queue_init", scope: !759, file: !759, line: 210, type: !263, isLocal: false, isDefinition: true, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !771)
!1256 = !DILocation(line: 212, column: 14, scope: !1255)
!1257 = !DILocation(line: 212, column: 12, scope: !1255)
!1258 = !DILocation(line: 214, column: 2, scope: !1255)
!1259 = !DILocation(line: 215, column: 1, scope: !1255)
!1260 = distinct !DISubprogram(name: "sig_dcc_destroyed", scope: !759, file: !759, line: 191, type: !1261, isLocal: true, isDefinition: true, scopeLine: 192, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !771)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{null, !63}
!1263 = !DILocalVariable(name: "dcc", arg: 1, scope: !1260, file: !759, line: 191, type: !63)
!1264 = !DILocation(line: 191, column: 45, scope: !1260)
!1265 = !DILocalVariable(name: "i", scope: !1260, file: !759, line: 193, type: !71)
!1266 = !DILocation(line: 193, column: 6, scope: !1260)
!1267 = !DILocation(line: 195, column: 51, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1260, file: !759, line: 195, column: 6)
!1269 = !DILocation(line: 195, column: 26, scope: !1268)
!1270 = !DILocation(line: 195, column: 9, scope: !1268)
!1271 = !DILocation(line: 195, column: 6, scope: !1260)
!1272 = !DILocation(line: 195, column: 8, scope: !1273)
!1273 = !DILexicalBlockFile(scope: !1268, file: !759, discriminator: 1)
!1274 = !DILocation(line: 195, column: 6, scope: !1275)
!1275 = !DILexicalBlockFile(scope: !1260, file: !759, discriminator: 2)
!1276 = !DILocation(line: 196, column: 3, scope: !1268)
!1277 = !DILocation(line: 198, column: 9, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1260, file: !759, line: 198, column: 2)
!1279 = !DILocation(line: 198, column: 7, scope: !1278)
!1280 = !DILocation(line: 198, column: 14, scope: !1281)
!1281 = !DILexicalBlockFile(scope: !1282, file: !759, discriminator: 1)
!1282 = distinct !DILexicalBlock(scope: !1278, file: !759, line: 198, column: 2)
!1283 = !DILocation(line: 198, column: 18, scope: !1281)
!1284 = !DILocation(line: 198, column: 29, scope: !1281)
!1285 = !DILocation(line: 198, column: 16, scope: !1281)
!1286 = !DILocation(line: 198, column: 2, scope: !1281)
!1287 = !DILocalVariable(name: "qlist", scope: !1288, file: !759, line: 199, type: !50)
!1288 = distinct !DILexicalBlock(scope: !1282, file: !759, line: 198, column: 39)
!1289 = !DILocation(line: 199, column: 11, scope: !1288)
!1290 = !DILocation(line: 199, column: 40, scope: !1288)
!1291 = !DILocation(line: 199, column: 19, scope: !1288)
!1292 = !DILocation(line: 199, column: 21, scope: !1288)
!1293 = !DILocation(line: 199, column: 33, scope: !1288)
!1294 = !DILocation(line: 201, column: 3, scope: !1288)
!1295 = !DILocation(line: 201, column: 10, scope: !1296)
!1296 = !DILexicalBlockFile(scope: !1297, file: !759, discriminator: 1)
!1297 = distinct !DILexicalBlock(scope: !1298, file: !759, line: 201, column: 3)
!1298 = distinct !DILexicalBlock(scope: !1288, file: !759, line: 201, column: 3)
!1299 = !DILocation(line: 201, column: 16, scope: !1296)
!1300 = !DILocation(line: 201, column: 3, scope: !1296)
!1301 = !DILocalVariable(name: "rec", scope: !1302, file: !759, line: 202, type: !58)
!1302 = distinct !DILexicalBlock(scope: !1297, file: !759, line: 201, column: 45)
!1303 = !DILocation(line: 202, column: 19, scope: !1302)
!1304 = !DILocation(line: 202, column: 25, scope: !1302)
!1305 = !DILocation(line: 202, column: 32, scope: !1302)
!1306 = !DILocation(line: 204, column: 8, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1302, file: !759, line: 204, column: 8)
!1308 = !DILocation(line: 204, column: 12, scope: !1307)
!1309 = !DILocation(line: 204, column: 19, scope: !1307)
!1310 = !DILocation(line: 204, column: 22, scope: !1311)
!1311 = !DILexicalBlockFile(scope: !1307, file: !759, discriminator: 1)
!1312 = !DILocation(line: 204, column: 27, scope: !1311)
!1313 = !DILocation(line: 204, column: 35, scope: !1311)
!1314 = !DILocation(line: 204, column: 32, scope: !1311)
!1315 = !DILocation(line: 204, column: 8, scope: !1311)
!1316 = !DILocation(line: 205, column: 5, scope: !1307)
!1317 = !DILocation(line: 205, column: 10, scope: !1307)
!1318 = !DILocation(line: 205, column: 15, scope: !1307)
!1319 = !DILocation(line: 206, column: 9, scope: !1302)
!1320 = !DILocation(line: 201, column: 32, scope: !1321)
!1321 = !DILexicalBlockFile(scope: !1297, file: !759, discriminator: 2)
!1322 = !DILocation(line: 201, column: 39, scope: !1321)
!1323 = !DILocation(line: 201, column: 30, scope: !1321)
!1324 = !DILocation(line: 201, column: 3, scope: !1321)
!1325 = distinct !{!1325, !1294}
!1326 = !DILocation(line: 207, column: 2, scope: !1288)
!1327 = !DILocation(line: 198, column: 35, scope: !1328)
!1328 = !DILexicalBlockFile(scope: !1282, file: !759, discriminator: 2)
!1329 = !DILocation(line: 198, column: 2, scope: !1328)
!1330 = distinct !{!1330, !1331}
!1331 = !DILocation(line: 198, column: 2, scope: !1260)
!1332 = !DILocation(line: 208, column: 1, scope: !1260)
!1333 = distinct !DISubprogram(name: "dcc_queue_deinit", scope: !759, file: !759, line: 217, type: !263, isLocal: false, isDefinition: true, scopeLine: 218, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !771)
!1334 = !DILocalVariable(name: "i", scope: !1333, file: !759, line: 219, type: !71)
!1335 = !DILocation(line: 219, column: 6, scope: !1333)
!1336 = !DILocation(line: 221, column: 9, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1333, file: !759, line: 221, column: 2)
!1338 = !DILocation(line: 221, column: 7, scope: !1337)
!1339 = !DILocation(line: 221, column: 14, scope: !1340)
!1340 = !DILexicalBlockFile(scope: !1341, file: !759, discriminator: 1)
!1341 = distinct !DILexicalBlock(scope: !1337, file: !759, line: 221, column: 2)
!1342 = !DILocation(line: 221, column: 18, scope: !1340)
!1343 = !DILocation(line: 221, column: 29, scope: !1340)
!1344 = !DILocation(line: 221, column: 16, scope: !1340)
!1345 = !DILocation(line: 221, column: 2, scope: !1340)
!1346 = !DILocation(line: 222, column: 18, scope: !1341)
!1347 = !DILocation(line: 222, column: 3, scope: !1341)
!1348 = !DILocation(line: 221, column: 35, scope: !1349)
!1349 = !DILexicalBlockFile(scope: !1341, file: !759, discriminator: 2)
!1350 = !DILocation(line: 221, column: 2, scope: !1349)
!1351 = distinct !{!1351, !1352}
!1352 = !DILocation(line: 221, column: 2, scope: !1333)
!1353 = !DILocation(line: 224, column: 19, scope: !1333)
!1354 = !DILocation(line: 224, column: 2, scope: !1333)
!1355 = !DILocation(line: 226, column: 2, scope: !1333)
!1356 = !DILocation(line: 227, column: 1, scope: !1333)
