; ModuleID = './line282-fe-dcc-send.o.i'
source_filename = "./line282-fe-dcc-send.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.SEND_DCC_REC = type { i32, i32, i64, %struct._IRC_SERVER_REC*, i8*, i8*, i8*, %struct.CHAT_DCC_REC*, i8*, i8*, %struct._IPADDR, [46 x i8], i32, %struct._GIOChannel*, i32, i32, i32, i64, i64, i32, i8, %struct._GHashTable*, i64, i64, i32, i32, [4 x i8], i32, i8 }
%struct._IRC_SERVER_REC = type opaque
%struct.CHAT_DCC_REC = type { i32, i32, i64, %struct._IRC_SERVER_REC*, i8*, i8*, i8*, %struct.CHAT_DCC_REC*, i8*, i8*, %struct._IPADDR, [46 x i8], i32, %struct._GIOChannel*, i32, i32, i32, i64, i64, i32, i8, %struct._GHashTable*, i8*, %struct._NET_SENDBUF_REC*, i8 }
%struct._NET_SENDBUF_REC = type opaque
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
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._WINDOW_REC = type { i32, i8*, i32, i32, %struct._GSList*, %struct._WI_ITEM_REC*, %struct._SERVER_REC*, %struct._SERVER_REC*, i8*, i32, %struct._GSList*, i8, %struct.HISTORY_REC*, i8*, i32, i8*, i64, i64, i8*, i8*, i8* }
%struct._WI_ITEM_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)* }
%struct._SERVER_REC = type opaque
%struct.HISTORY_REC = type { i8*, %struct._GList*, i32, i32, i8 }
%struct.DCC_QUEUE_REC = type { %struct.CHAT_DCC_REC*, i8*, i8*, i8*, i32 }
%struct.FILE_DCC_REC = type { i32, i32, i64, %struct._IRC_SERVER_REC*, i8*, i8*, i8*, %struct.CHAT_DCC_REC*, i8*, i8*, %struct._IPADDR, [46 x i8], i32, %struct._GIOChannel*, i32, i32, i32, i64, i64, i32, i8, %struct._GHashTable*, i64, i64, i32, i32, [4 x i8], i32 }

@.str = private unnamed_addr constant [18 x i8] c"fe-common/irc/dcc\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"dcc connected\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"dcc closed\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"dcc error file open\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"dcc error send exists\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"dcc error send no route\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"dcc error close not found\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"complete command dcc send\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"dcc list print\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"DCC\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"SEND\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"%02d:%02d:%02d\00", align 1
@__func__.dcc_error_file_open = private unnamed_addr constant [20 x i8] c"dcc_error_file_open\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"nick != NULL\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"fname != NULL\00", align 1
@__func__.dcc_error_send_exists = private unnamed_addr constant [22 x i8] c"dcc_error_send_exists\00", align 1
@__func__.dcc_error_close_not_found = private unnamed_addr constant [26 x i8] c"dcc_error_close_not_found\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"type != NULL\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"(ANY)\00", align 1
@__func__.sig_dcc_send_complete = private unnamed_addr constant [22 x i8] c"sig_dcc_send_complete\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"list != NULL\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"word != NULL\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"line != NULL\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"dcc_upload_path\00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define void @fe_dcc_send_init() #0 !dbg !475 {
  call void @signal_add_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.SEND_DCC_REC*)* @dcc_connected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !478
  call void @signal_add_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.SEND_DCC_REC*)* @dcc_closed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !479
  call void @signal_add_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, i8*, i8*)* @dcc_error_file_open to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !480
  call void @signal_add_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, i8*)* @dcc_error_send_exists to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !481
  call void @signal_add_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, i8*)* @dcc_error_send_no_route to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !482
  call void @signal_add_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, i8*, i8*)* @dcc_error_close_not_found to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !483
  call void @signal_add_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_dcc_send_complete to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !484
  call void @signal_add_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.SEND_DCC_REC*)* @sig_dcc_list_print to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !485
  ret void, !dbg !486
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @dcc_connected(%struct.SEND_DCC_REC*) #0 !dbg !487 {
  %2 = alloca %struct.SEND_DCC_REC*, align 8
  store %struct.SEND_DCC_REC* %0, %struct.SEND_DCC_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.SEND_DCC_REC** %2, metadata !490, metadata !491), !dbg !492
  %3 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !493
  %4 = bitcast %struct.SEND_DCC_REC* %3 to i8*, !dbg !493
  %5 = call i8* @module_check_cast_module(i8* %4, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0)), !dbg !495
  %6 = bitcast i8* %5 to %struct.SEND_DCC_REC*, !dbg !496
  %7 = icmp ne %struct.SEND_DCC_REC* %6, null, !dbg !496
  br i1 %7, label %8, label %9, !dbg !497

; <label>:8:                                      ; preds = %1
  br i1 false, label %10, label %11, !dbg !498

; <label>:9:                                      ; preds = %1
  br i1 false, label %11, label %10, !dbg !500

; <label>:10:                                     ; preds = %9, %8
  br label %28, !dbg !502

; <label>:11:                                     ; preds = %9, %8
  %12 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !504
  %13 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %12, i32 0, i32 3, !dbg !505
  %14 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %13, align 8, !dbg !505
  %15 = bitcast %struct._IRC_SERVER_REC* %14 to i8*, !dbg !504
  %16 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !506
  %17 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %16, i32 0, i32 9, !dbg !507
  %18 = load i8*, i8** %17, align 8, !dbg !507
  %19 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !508
  %20 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %19, i32 0, i32 6, !dbg !509
  %21 = load i8*, i8** %20, align 8, !dbg !509
  %22 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !510
  %23 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %22, i32 0, i32 11, !dbg !511
  %24 = getelementptr inbounds [46 x i8], [46 x i8]* %23, i32 0, i32 0, !dbg !510
  %25 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !512
  %26 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %25, i32 0, i32 12, !dbg !513
  %27 = load i32, i32* %26, align 4, !dbg !513
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* %15, i8* null, i32 65536, i32 23, i8* %18, i8* %21, i8* %24, i32 %27), !dbg !514
  br label %28, !dbg !515

; <label>:28:                                     ; preds = %11, %10
  ret void, !dbg !516
}

; Function Attrs: nounwind uwtable
define internal void @dcc_closed(%struct.SEND_DCC_REC*) #0 !dbg !518 {
  %2 = alloca %struct.SEND_DCC_REC*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [20 x i8], align 16
  %5 = alloca double, align 8
  %6 = alloca i64, align 8
  store %struct.SEND_DCC_REC* %0, %struct.SEND_DCC_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.SEND_DCC_REC** %2, metadata !519, metadata !491), !dbg !520
  call void @llvm.dbg.declare(metadata i8** %3, metadata !521, metadata !491), !dbg !522
  call void @llvm.dbg.declare(metadata [20 x i8]* %4, metadata !523, metadata !491), !dbg !527
  call void @llvm.dbg.declare(metadata double* %5, metadata !528, metadata !491), !dbg !529
  call void @llvm.dbg.declare(metadata i64* %6, metadata !530, metadata !491), !dbg !531
  %7 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !532
  %8 = bitcast %struct.SEND_DCC_REC* %7 to i8*, !dbg !532
  %9 = call i8* @module_check_cast_module(i8* %8, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0)), !dbg !534
  %10 = bitcast i8* %9 to %struct.SEND_DCC_REC*, !dbg !535
  %11 = icmp ne %struct.SEND_DCC_REC* %10, null, !dbg !535
  br i1 %11, label %12, label %13, !dbg !536

; <label>:12:                                     ; preds = %1
  br i1 false, label %14, label %15, !dbg !537

; <label>:13:                                     ; preds = %1
  br i1 false, label %15, label %14, !dbg !539

; <label>:14:                                     ; preds = %13, %12
  br label %91, !dbg !541

; <label>:15:                                     ; preds = %13, %12
  %16 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !543
  %17 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %16, i32 0, i32 17, !dbg !544
  %18 = load i64, i64* %17, align 8, !dbg !544
  %19 = icmp eq i64 %18, 0, !dbg !545
  br i1 %19, label %20, label %21, !dbg !543

; <label>:20:                                     ; preds = %15
  br label %27, !dbg !546

; <label>:21:                                     ; preds = %15
  %22 = call i64 @time(i64* null) #6, !dbg !548
  %23 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !549
  %24 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %23, i32 0, i32 17, !dbg !550
  %25 = load i64, i64* %24, align 8, !dbg !550
  %26 = sub nsw i64 %22, %25, !dbg !551
  br label %27, !dbg !552

; <label>:27:                                     ; preds = %21, %20
  %28 = phi i64 [ -1, %20 ], [ %26, %21 ], !dbg !553
  store i64 %28, i64* %6, align 8, !dbg !555
  %29 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !556
  %30 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %29, i32 0, i32 18, !dbg !557
  %31 = load i64, i64* %30, align 8, !dbg !557
  %32 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !558
  %33 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %32, i32 0, i32 23, !dbg !559
  %34 = load i64, i64* %33, align 8, !dbg !559
  %35 = sub i64 %31, %34, !dbg !560
  %36 = uitofp i64 %35 to double, !dbg !561
  %37 = load i64, i64* %6, align 8, !dbg !562
  %38 = icmp eq i64 %37, 0, !dbg !563
  br i1 %38, label %39, label %40, !dbg !562

; <label>:39:                                     ; preds = %27
  br label %42, !dbg !564

; <label>:40:                                     ; preds = %27
  %41 = load i64, i64* %6, align 8, !dbg !565
  br label %42, !dbg !566

; <label>:42:                                     ; preds = %40, %39
  %43 = phi i64 [ 1, %39 ], [ %41, %40 ], !dbg !567
  %44 = sitofp i64 %43 to double, !dbg !568
  %45 = fdiv double %36, %44, !dbg !569
  %46 = fdiv double %45, 1.024000e+03, !dbg !570
  store double %46, double* %5, align 8, !dbg !571
  %47 = load i64, i64* %6, align 8, !dbg !572
  %48 = icmp eq i64 %47, -1, !dbg !574
  br i1 %48, label %49, label %60, !dbg !575

; <label>:49:                                     ; preds = %42
  %50 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !576
  %51 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %50, i32 0, i32 3, !dbg !578
  %52 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %51, align 8, !dbg !578
  %53 = bitcast %struct._IRC_SERVER_REC* %52 to i8*, !dbg !576
  %54 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !576
  %55 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %54, i32 0, i32 9, !dbg !578
  %56 = load i8*, i8** %55, align 8, !dbg !578
  %57 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !579
  %58 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %57, i32 0, i32 6, !dbg !580
  %59 = load i8*, i8** %58, align 8, !dbg !580
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* %53, i8* null, i32 65536, i32 25, i8* %56, i8* %59), !dbg !581
  br label %91, !dbg !582

; <label>:60:                                     ; preds = %42
  %61 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !583
  %62 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %61, i32 0, i32 18, !dbg !585
  %63 = load i64, i64* %62, align 8, !dbg !585
  %64 = call i8* @dcc_get_size_str(i64 %63), !dbg !586
  store i8* %64, i8** %3, align 8, !dbg !587
  %65 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i32 0, i32 0, !dbg !588
  %66 = load i64, i64* %6, align 8, !dbg !589
  %67 = sdiv i64 %66, 3600, !dbg !590
  %68 = trunc i64 %67 to i32, !dbg !591
  %69 = load i64, i64* %6, align 8, !dbg !592
  %70 = sdiv i64 %69, 60, !dbg !593
  %71 = srem i64 %70, 60, !dbg !594
  %72 = trunc i64 %71 to i32, !dbg !595
  %73 = load i64, i64* %6, align 8, !dbg !596
  %74 = srem i64 %73, 60, !dbg !597
  %75 = trunc i64 %74 to i32, !dbg !598
  %76 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %65, i64 20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i32 %68, i32 %72, i32 %75), !dbg !599
  %77 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !600
  %78 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %77, i32 0, i32 3, !dbg !601
  %79 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %78, align 8, !dbg !601
  %80 = bitcast %struct._IRC_SERVER_REC* %79 to i8*, !dbg !600
  %81 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !602
  %82 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %81, i32 0, i32 9, !dbg !603
  %83 = load i8*, i8** %82, align 8, !dbg !603
  %84 = load i8*, i8** %3, align 8, !dbg !604
  %85 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !605
  %86 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %85, i32 0, i32 6, !dbg !606
  %87 = load i8*, i8** %86, align 8, !dbg !606
  %88 = getelementptr inbounds [20 x i8], [20 x i8]* %4, i32 0, i32 0, !dbg !607
  %89 = load double, double* %5, align 8, !dbg !608
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* %80, i8* null, i32 65536, i32 24, i8* %83, i8* %84, i8* %87, i8* %88, double %89), !dbg !609
  %90 = load i8*, i8** %3, align 8, !dbg !610
  call void @g_free(i8* %90), !dbg !611
  br label %91

; <label>:91:                                     ; preds = %14, %60, %49
  ret void, !dbg !612
}

; Function Attrs: nounwind uwtable
define internal void @dcc_error_file_open(i8*, i8*, i8*) #0 !dbg !613 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !616, metadata !491), !dbg !617
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !618, metadata !491), !dbg !619
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !620, metadata !491), !dbg !621
  br label %7, !dbg !622, !llvm.loop !623

; <label>:7:                                      ; preds = %3
  %8 = load i8*, i8** %4, align 8, !dbg !624
  %9 = icmp ne i8* %8, null, !dbg !628
  br i1 %9, label %10, label %11, !dbg !624

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !629

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.dcc_error_file_open, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0)), !dbg !632
  br label %26, !dbg !635

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !636

; <label>:13:                                     ; preds = %12
  br label %14, !dbg !638, !llvm.loop !639

; <label>:14:                                     ; preds = %13
  %15 = load i8*, i8** %5, align 8, !dbg !640
  %16 = icmp ne i8* %15, null, !dbg !644
  br i1 %16, label %17, label %18, !dbg !640

; <label>:17:                                     ; preds = %14
  br label %19, !dbg !645

; <label>:18:                                     ; preds = %14
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.dcc_error_file_open, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0)), !dbg !648
  br label %26, !dbg !651

; <label>:19:                                     ; preds = %17
  br label %20, !dbg !652

; <label>:20:                                     ; preds = %19
  %21 = load i8*, i8** %5, align 8, !dbg !654
  %22 = load i8*, i8** %6, align 8, !dbg !655
  %23 = ptrtoint i8* %22 to i64, !dbg !656
  %24 = trunc i64 %23 to i32, !dbg !657
  %25 = call i8* @g_strerror(i32 %24) #2, !dbg !658
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 65536, i32 22, i8* %21, i8* %25), !dbg !659
  br label %26, !dbg !661

; <label>:26:                                     ; preds = %20, %18, %11
  ret void, !dbg !662
}

; Function Attrs: nounwind uwtable
define internal void @dcc_error_send_exists(i8*, i8*) #0 !dbg !663 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !666, metadata !491), !dbg !667
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !668, metadata !491), !dbg !669
  br label %5, !dbg !670, !llvm.loop !671

; <label>:5:                                      ; preds = %2
  %6 = load i8*, i8** %3, align 8, !dbg !672
  %7 = icmp ne i8* %6, null, !dbg !676
  br i1 %7, label %8, label %9, !dbg !672

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !677

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.dcc_error_send_exists, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0)), !dbg !680
  br label %21, !dbg !683

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !684

; <label>:11:                                     ; preds = %10
  br label %12, !dbg !686, !llvm.loop !687

; <label>:12:                                     ; preds = %11
  %13 = load i8*, i8** %4, align 8, !dbg !688
  %14 = icmp ne i8* %13, null, !dbg !692
  br i1 %14, label %15, label %16, !dbg !688

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !693

; <label>:16:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.dcc_error_send_exists, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0)), !dbg !696
  br label %21, !dbg !699

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !700

; <label>:18:                                     ; preds = %17
  %19 = load i8*, i8** %4, align 8, !dbg !702
  %20 = load i8*, i8** %3, align 8, !dbg !703
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 65536, i32 19, i8* %19, i8* %20), !dbg !704
  br label %21, !dbg !705

; <label>:21:                                     ; preds = %18, %16, %9
  ret void, !dbg !706
}

; Function Attrs: nounwind uwtable
define internal void @dcc_error_send_no_route(i8*, i8*) #0 !dbg !708 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !709, metadata !491), !dbg !710
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !711, metadata !491), !dbg !712
  %5 = load i8*, i8** %3, align 8, !dbg !713
  %6 = load i8*, i8** %4, align 8, !dbg !714
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 65536, i32 20, i8* %5, i8* %6), !dbg !715
  ret void, !dbg !716
}

; Function Attrs: nounwind uwtable
define internal void @dcc_error_close_not_found(i8*, i8*, i8*) #0 !dbg !717 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !720, metadata !491), !dbg !721
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !722, metadata !491), !dbg !723
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !724, metadata !491), !dbg !725
  br label %7, !dbg !726, !llvm.loop !727

; <label>:7:                                      ; preds = %3
  %8 = load i8*, i8** %4, align 8, !dbg !728
  %9 = icmp ne i8* %8, null, !dbg !732
  br i1 %9, label %10, label %11, !dbg !728

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !733

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.dcc_error_close_not_found, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0)), !dbg !736
  br label %44, !dbg !739

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !740

; <label>:13:                                     ; preds = %12
  br label %14, !dbg !742, !llvm.loop !743

; <label>:14:                                     ; preds = %13
  %15 = load i8*, i8** %5, align 8, !dbg !744
  %16 = icmp ne i8* %15, null, !dbg !748
  br i1 %16, label %17, label %18, !dbg !744

; <label>:17:                                     ; preds = %14
  br label %19, !dbg !749

; <label>:18:                                     ; preds = %14
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.dcc_error_close_not_found, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0)), !dbg !752
  br label %44, !dbg !755

; <label>:19:                                     ; preds = %17
  br label %20, !dbg !756

; <label>:20:                                     ; preds = %19
  br label %21, !dbg !758, !llvm.loop !759

; <label>:21:                                     ; preds = %20
  %22 = load i8*, i8** %6, align 8, !dbg !760
  %23 = icmp ne i8* %22, null, !dbg !764
  br i1 %23, label %24, label %25, !dbg !760

; <label>:24:                                     ; preds = %21
  br label %26, !dbg !765

; <label>:25:                                     ; preds = %21
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.dcc_error_close_not_found, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i32 0, i32 0)), !dbg !768
  br label %44, !dbg !771

; <label>:26:                                     ; preds = %24
  br label %27, !dbg !772

; <label>:27:                                     ; preds = %26
  %28 = load i8*, i8** %4, align 8, !dbg !774
  %29 = call i32 @g_ascii_strcasecmp(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0)), !dbg !776
  %30 = icmp ne i32 %29, 0, !dbg !777
  br i1 %30, label %31, label %32, !dbg !778

; <label>:31:                                     ; preds = %27
  br label %44, !dbg !779

; <label>:32:                                     ; preds = %27
  %33 = load i8*, i8** %6, align 8, !dbg !781
  %34 = icmp eq i8* %33, null, !dbg !783
  br i1 %34, label %40, label %35, !dbg !784

; <label>:35:                                     ; preds = %32
  %36 = load i8*, i8** %6, align 8, !dbg !785
  %37 = load i8, i8* %36, align 1, !dbg !787
  %38 = sext i8 %37 to i32, !dbg !787
  %39 = icmp eq i32 %38, 0, !dbg !788
  br i1 %39, label %40, label %41, !dbg !789

; <label>:40:                                     ; preds = %35, %32
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i8** %6, align 8, !dbg !790
  br label %41, !dbg !792

; <label>:41:                                     ; preds = %40, %35
  %42 = load i8*, i8** %5, align 8, !dbg !793
  %43 = load i8*, i8** %6, align 8, !dbg !794
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 65536, i32 21, i8* %42, i8* %43), !dbg !795
  br label %44, !dbg !796

; <label>:44:                                     ; preds = %41, %31, %25, %18, %11
  ret void, !dbg !797
}

; Function Attrs: nounwind uwtable
define internal void @sig_dcc_send_complete(%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*) #0 !dbg !799 {
  %6 = alloca %struct._GList**, align 8
  %7 = alloca %struct._WINDOW_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  store %struct._GList** %0, %struct._GList*** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._GList*** %6, metadata !877, metadata !491), !dbg !878
  store %struct._WINDOW_REC* %1, %struct._WINDOW_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %7, metadata !879, metadata !491), !dbg !880
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !881, metadata !491), !dbg !882
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !883, metadata !491), !dbg !884
  store i32* %4, i32** %10, align 8
  call void @llvm.dbg.declare(metadata i32** %10, metadata !885, metadata !491), !dbg !886
  call void @llvm.dbg.declare(metadata i8** %11, metadata !887, metadata !491), !dbg !888
  br label %12, !dbg !889, !llvm.loop !890

; <label>:12:                                     ; preds = %5
  %13 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !891
  %14 = icmp ne %struct._GList** %13, null, !dbg !895
  br i1 %14, label %15, label %16, !dbg !891

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !896

; <label>:16:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.sig_dcc_send_complete, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0)), !dbg !899
  br label %67, !dbg !902

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !903

; <label>:18:                                     ; preds = %17
  br label %19, !dbg !905, !llvm.loop !906

; <label>:19:                                     ; preds = %18
  %20 = load i8*, i8** %8, align 8, !dbg !907
  %21 = icmp ne i8* %20, null, !dbg !911
  br i1 %21, label %22, label %23, !dbg !907

; <label>:22:                                     ; preds = %19
  br label %24, !dbg !912

; <label>:23:                                     ; preds = %19
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.sig_dcc_send_complete, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0)), !dbg !915
  br label %67, !dbg !918

; <label>:24:                                     ; preds = %22
  br label %25, !dbg !919

; <label>:25:                                     ; preds = %24
  br label %26, !dbg !921, !llvm.loop !922

; <label>:26:                                     ; preds = %25
  %27 = load i8*, i8** %9, align 8, !dbg !923
  %28 = icmp ne i8* %27, null, !dbg !927
  br i1 %28, label %29, label %30, !dbg !923

; <label>:29:                                     ; preds = %26
  br label %31, !dbg !928

; <label>:30:                                     ; preds = %26
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.sig_dcc_send_complete, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0)), !dbg !931
  br label %67, !dbg !934

; <label>:31:                                     ; preds = %29
  br label %32, !dbg !935

; <label>:32:                                     ; preds = %31
  %33 = load i8*, i8** %9, align 8, !dbg !937
  %34 = load i8, i8* %33, align 1, !dbg !939
  %35 = sext i8 %34 to i32, !dbg !939
  %36 = icmp eq i32 %35, 0, !dbg !940
  br i1 %36, label %41, label %37, !dbg !941

; <label>:37:                                     ; preds = %32
  %38 = load i8*, i8** %9, align 8, !dbg !942
  %39 = call i8* @strchr(i8* %38, i32 32) #7, !dbg !944
  %40 = icmp ne i8* %39, null, !dbg !945
  br i1 %40, label %41, label %42, !dbg !946

; <label>:41:                                     ; preds = %37, %32
  br label %67, !dbg !947

; <label>:42:                                     ; preds = %37
  %43 = call i8* @settings_get_str(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0)), !dbg !948
  %44 = call i8* @convert_home(i8* %43), !dbg !949
  store i8* %44, i8** %11, align 8, !dbg !951
  %45 = load i8*, i8** %11, align 8, !dbg !952
  %46 = load i8, i8* %45, align 1, !dbg !954
  %47 = sext i8 %46 to i32, !dbg !954
  %48 = icmp eq i32 %47, 0, !dbg !955
  br i1 %48, label %49, label %57, !dbg !956

; <label>:49:                                     ; preds = %42
  br label %50, !dbg !957, !llvm.loop !959

; <label>:50:                                     ; preds = %49
  %51 = load i8*, i8** %11, align 8, !dbg !960
  %52 = icmp ne i8* %51, null, !dbg !960
  br i1 %52, label %53, label %55, !dbg !960

; <label>:53:                                     ; preds = %50
  %54 = load i8*, i8** %11, align 8, !dbg !964
  call void @g_free(i8* %54), !dbg !967
  store i8* null, i8** %11, align 8, !dbg !968
  br label %55, !dbg !969

; <label>:55:                                     ; preds = %53, %50
  br label %56, !dbg !970

; <label>:56:                                     ; preds = %55
  br label %57, !dbg !972

; <label>:57:                                     ; preds = %56, %42
  %58 = load i8*, i8** %8, align 8, !dbg !973
  %59 = load i8*, i8** %11, align 8, !dbg !974
  %60 = call %struct._GList* @filename_complete(i8* %58, i8* %59), !dbg !975
  %61 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !976
  store %struct._GList* %60, %struct._GList** %61, align 8, !dbg !977
  %62 = load %struct._GList**, %struct._GList*** %6, align 8, !dbg !978
  %63 = load %struct._GList*, %struct._GList** %62, align 8, !dbg !980
  %64 = icmp ne %struct._GList* %63, null, !dbg !981
  br i1 %64, label %65, label %67, !dbg !982

; <label>:65:                                     ; preds = %57
  %66 = load i32*, i32** %10, align 8, !dbg !983
  store i32 0, i32* %66, align 4, !dbg !985
  call void @signal_stop(), !dbg !986
  br label %67, !dbg !987

; <label>:67:                                     ; preds = %16, %23, %30, %41, %65, %57
  ret void, !dbg !988
}

; Function Attrs: nounwind uwtable
define internal void @sig_dcc_list_print(%struct.SEND_DCC_REC*) #0 !dbg !989 {
  %2 = alloca %struct.SEND_DCC_REC*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct.DCC_QUEUE_REC*, align 8
  store %struct.SEND_DCC_REC* %0, %struct.SEND_DCC_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.SEND_DCC_REC** %2, metadata !990, metadata !491), !dbg !991
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !992, metadata !491), !dbg !993
  %5 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !994
  %6 = bitcast %struct.SEND_DCC_REC* %5 to i8*, !dbg !994
  %7 = call i8* @module_check_cast_module(i8* %6, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0)), !dbg !996
  %8 = bitcast i8* %7 to %struct.SEND_DCC_REC*, !dbg !997
  %9 = icmp ne %struct.SEND_DCC_REC* %8, null, !dbg !997
  br i1 %9, label %10, label %11, !dbg !998

; <label>:10:                                     ; preds = %1
  br i1 false, label %12, label %13, !dbg !999

; <label>:11:                                     ; preds = %1
  br i1 false, label %13, label %12, !dbg !1001

; <label>:12:                                     ; preds = %11, %10
  br label %49, !dbg !1003

; <label>:13:                                     ; preds = %11, %10
  %14 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !1004
  %15 = bitcast %struct.SEND_DCC_REC* %14 to %struct.FILE_DCC_REC*, !dbg !1005
  call void @dcc_list_print_file(%struct.FILE_DCC_REC* %15), !dbg !1006
  %16 = load %struct.SEND_DCC_REC*, %struct.SEND_DCC_REC** %2, align 8, !dbg !1007
  %17 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %16, i32 0, i32 25, !dbg !1008
  %18 = load i32, i32* %17, align 4, !dbg !1008
  %19 = call %struct._GSList* @dcc_queue_get_queue(i32 %18), !dbg !1009
  store %struct._GSList* %19, %struct._GSList** %3, align 8, !dbg !1010
  br label %20, !dbg !1011

; <label>:20:                                     ; preds = %45, %13
  %21 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1012
  %22 = icmp ne %struct._GSList* %21, null, !dbg !1016
  br i1 %22, label %23, label %49, !dbg !1017

; <label>:23:                                     ; preds = %20
  call void @llvm.dbg.declare(metadata %struct.DCC_QUEUE_REC** %4, metadata !1018, metadata !491), !dbg !1030
  %24 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1031
  %25 = getelementptr inbounds %struct._GSList, %struct._GSList* %24, i32 0, i32 0, !dbg !1032
  %26 = load i8*, i8** %25, align 8, !dbg !1032
  %27 = bitcast i8* %26 to %struct.DCC_QUEUE_REC*, !dbg !1031
  store %struct.DCC_QUEUE_REC* %27, %struct.DCC_QUEUE_REC** %4, align 8, !dbg !1030
  %28 = load %struct.DCC_QUEUE_REC*, %struct.DCC_QUEUE_REC** %4, align 8, !dbg !1033
  %29 = getelementptr inbounds %struct.DCC_QUEUE_REC, %struct.DCC_QUEUE_REC* %28, i32 0, i32 2, !dbg !1034
  %30 = load i8*, i8** %29, align 8, !dbg !1034
  %31 = load %struct.DCC_QUEUE_REC*, %struct.DCC_QUEUE_REC** %4, align 8, !dbg !1035
  %32 = getelementptr inbounds %struct.DCC_QUEUE_REC, %struct.DCC_QUEUE_REC* %31, i32 0, i32 1, !dbg !1036
  %33 = load i8*, i8** %32, align 8, !dbg !1036
  %34 = icmp eq i8* %33, null, !dbg !1037
  br i1 %34, label %35, label %36, !dbg !1035

; <label>:35:                                     ; preds = %23
  br label %40, !dbg !1038

; <label>:36:                                     ; preds = %23
  %37 = load %struct.DCC_QUEUE_REC*, %struct.DCC_QUEUE_REC** %4, align 8, !dbg !1040
  %38 = getelementptr inbounds %struct.DCC_QUEUE_REC, %struct.DCC_QUEUE_REC* %37, i32 0, i32 1, !dbg !1042
  %39 = load i8*, i8** %38, align 8, !dbg !1042
  br label %40, !dbg !1043

; <label>:40:                                     ; preds = %36, %35
  %41 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i32 0, i32 0), %35 ], [ %39, %36 ], !dbg !1044
  %42 = load %struct.DCC_QUEUE_REC*, %struct.DCC_QUEUE_REC** %4, align 8, !dbg !1046
  %43 = getelementptr inbounds %struct.DCC_QUEUE_REC, %struct.DCC_QUEUE_REC* %42, i32 0, i32 3, !dbg !1047
  %44 = load i8*, i8** %43, align 8, !dbg !1047
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 65536, i32 44, i8* %30, i8* %41, i8* %44), !dbg !1048
  br label %45, !dbg !1049

; <label>:45:                                     ; preds = %40
  %46 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1050
  %47 = getelementptr inbounds %struct._GSList, %struct._GSList* %46, i32 0, i32 1, !dbg !1052
  %48 = load %struct._GSList*, %struct._GSList** %47, align 8, !dbg !1052
  store %struct._GSList* %48, %struct._GSList** %3, align 8, !dbg !1053
  br label %20, !dbg !1054, !llvm.loop !1055

; <label>:49:                                     ; preds = %12, %20
  ret void, !dbg !1056
}

; Function Attrs: nounwind uwtable
define void @fe_dcc_send_deinit() #0 !dbg !1057 {
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.SEND_DCC_REC*)* @dcc_connected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1058
  call void @signal_remove_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.SEND_DCC_REC*)* @dcc_closed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1059
  call void @signal_remove_full(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, i8*, i8*)* @dcc_error_file_open to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1060
  call void @signal_remove_full(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, i8*)* @dcc_error_send_exists to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1061
  call void @signal_remove_full(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, i8*)* @dcc_error_send_no_route to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1062
  call void @signal_remove_full(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, i8*, i8*)* @dcc_error_close_not_found to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1063
  call void @signal_remove_full(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._GList**, %struct._WINDOW_REC*, i8*, i8*, i32*)* @sig_dcc_send_complete to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1064
  call void @signal_remove_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.SEND_DCC_REC*)* @sig_dcc_list_print to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1065
  ret void, !dbg !1066
}

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare i8* @module_check_cast_module(i8*, i32, i8*, i8*) #1

declare void @printformat_module(i8*, i8*, i8*, i32, i32, ...) #1

; Function Attrs: nounwind
declare i64 @time(i64*) #3

declare i8* @dcc_get_size_str(i64) #1

declare i32 @g_snprintf(i8*, i64, i8*, ...) #1

declare void @g_free(i8*) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #4

declare i32 @g_ascii_strcasecmp(i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #5

declare i8* @convert_home(i8*) #1

declare i8* @settings_get_str(i8*) #1

declare %struct._GList* @filename_complete(i8*, i8*) #1

declare void @signal_stop() #1

declare void @dcc_list_print_file(%struct.FILE_DCC_REC*) #1

declare %struct._GSList* @dcc_queue_get_queue(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!472, !473}
!llvm.ident = !{!474}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !118)
!1 = !DIFile(filename: "line282-fe-dcc-send.o.i", directory: "/home/lichi/Desktop/irssi/task1")
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
!118 = !{!119, !126, !127, !435, !134, !225, !436, !213, !438, !439}
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !120, line: 9, baseType: !121)
!120 = !DIFile(filename: "../../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, align: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{null, !124, !124, !124, !124, !124, !124}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "SEND_DCC_REC", file: !129, line: 20, baseType: !130)
!129 = !DIFile(filename: "../../../../src/irc/dcc/dcc-send.h", directory: "/home/lichi/Desktop/irssi/task1")
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !129, line: 12, size: 1920, align: 64, elements: !131)
!131 = !{!132, !135, !136, !142, !147, !150, !151, !152, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !426, !427, !428, !429, !431, !432, !433, !434}
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
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CHAT_DCC_REC", file: !157, line: 12, size: 1792, align: 64, elements: !158)
!157 = !DIFile(filename: "../../../../src/irc/dcc/dcc-chat.h", directory: "/home/lichi/Desktop/irssi/task1")
!158 = !{!159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !202, !206, !207, !390, !391, !392, !393, !394, !396, !397, !398, !403, !404, !408, !409}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !156, file: !133, line: 1, baseType: !134, size: 32, align: 32)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !156, file: !133, line: 2, baseType: !134, size: 32, align: 32, offset: 32)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "created", scope: !156, file: !133, line: 3, baseType: !137, size: 64, align: 64, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !156, file: !133, line: 5, baseType: !143, size: 64, align: 64, offset: 128)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !156, file: !133, line: 6, baseType: !148, size: 64, align: 64, offset: 192)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "mynick", scope: !156, file: !133, line: 7, baseType: !148, size: 64, align: 64, offset: 256)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !156, file: !133, line: 8, baseType: !148, size: 64, align: 64, offset: 320)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "chat", scope: !156, file: !133, line: 10, baseType: !153, size: 64, align: 64, offset: 384)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !156, file: !133, line: 11, baseType: !148, size: 64, align: 64, offset: 448)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !156, file: !133, line: 12, baseType: !148, size: 64, align: 64, offset: 512)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !156, file: !133, line: 14, baseType: !170, size: 160, align: 32, offset: 576)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !171, line: 99, baseType: !172)
!171 = !DIFile(filename: "../../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !173, line: 22, size: 160, align: 32, elements: !174)
!173 = !DIFile(filename: "../../../../src/core/network.h", directory: "/home/lichi/Desktop/irssi/task1")
!174 = !{!175, !177}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !172, file: !173, line: 23, baseType: !176, size: 16, align: 16)
!176 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !172, file: !173, line: 24, baseType: !178, size: 128, align: 32, offset: 32)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !179, line: 211, size: 128, align: 32, elements: !180)
!179 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/irssi/task1")
!180 = !{!181}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !178, file: !179, line: 220, baseType: !182, size: 128, align: 32)
!182 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !178, file: !179, line: 213, size: 128, align: 32, elements: !183)
!183 = !{!184, !191, !196}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !182, file: !179, line: 215, baseType: !185, size: 128, align: 8)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 128, align: 8, elements: !189)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !187, line: 48, baseType: !188)
!187 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/irssi/task1")
!188 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!189 = !{!190}
!190 = !DISubrange(count: 16)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !182, file: !179, line: 217, baseType: !192, size: 128, align: 16)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !193, size: 128, align: 16, elements: !194)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !187, line: 49, baseType: !176)
!194 = !{!195}
!195 = !DISubrange(count: 8)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !182, file: !179, line: 218, baseType: !197, size: 128, align: 32)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 128, align: 32, elements: !200)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !187, line: 51, baseType: !199)
!199 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!200 = !{!201}
!201 = !DISubrange(count: 4)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "addrstr", scope: !156, file: !133, line: 15, baseType: !203, size: 368, align: 8, offset: 736)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 368, align: 8, elements: !204)
!204 = !{!205}
!205 = !DISubrange(count: 46)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !156, file: !133, line: 16, baseType: !134, size: 32, align: 32, offset: 1120)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !156, file: !133, line: 18, baseType: !208, size: 64, align: 64, offset: 1152)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64, align: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !210)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !211)
!211 = !{!212, !215, !357, !358, !363, !364, !365, !366, !367, !376, !377, !378, !382, !383, !384, !385, !386, !387, !388, !389}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !210, file: !4, line: 100, baseType: !213, size: 32, align: 32)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !214, line: 49, baseType: !134)
!214 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!215 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !210, file: !4, line: 101, baseType: !216, size: 64, align: 64, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !218)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !219)
!219 = !{!220, !243, !249, !255, !259, !344, !348, !353}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !218, file: !4, line: 133, baseType: !221, size: 64, align: 64)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!224, !208, !225, !227, !230, !231}
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64, align: 64)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !214, line: 46, baseType: !149)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !228, line: 66, baseType: !229)
!228 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!229 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64, align: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !234, line: 42, baseType: !235)
!234 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !234, line: 44, size: 128, align: 64, elements: !236)
!236 = !{!237, !241, !242}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !235, file: !234, line: 46, baseType: !238, size: 32, align: 32)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !239, line: 36, baseType: !240)
!239 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !228, line: 45, baseType: !199)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !235, file: !234, line: 47, baseType: !213, size: 32, align: 32, offset: 32)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !235, file: !234, line: 48, baseType: !225, size: 64, align: 64, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !218, file: !4, line: 138, baseType: !244, size: 64, align: 64, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64, align: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!224, !208, !247, !227, !230, !231}
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64, align: 64)
!248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !226)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !218, file: !4, line: 143, baseType: !250, size: 64, align: 64, offset: 128)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64, align: 64)
!251 = !DISubroutineType(types: !252)
!252 = !{!224, !208, !253, !254, !231}
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !228, line: 51, baseType: !141)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !218, file: !4, line: 147, baseType: !256, size: 64, align: 64, offset: 192)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64, align: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{!224, !208, !231}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !218, file: !4, line: 149, baseType: !260, size: 64, align: 64, offset: 256)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!263, !208, !343}
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64, align: 64)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !265)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !266)
!266 = !{!267, !269, !290, !319, !321, !325, !326, !327, !328, !336, !337, !338, !339}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !265, file: !16, line: 174, baseType: !268, size: 64, align: 64)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !214, line: 77, baseType: !126)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !265, file: !16, line: 175, baseType: !270, size: 64, align: 64, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !272)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !273)
!273 = !{!274, !278, !279}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !272, file: !16, line: 198, baseType: !275, size: 64, align: 64)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64, align: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{null, !268}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !272, file: !16, line: 199, baseType: !275, size: 64, align: 64, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !272, file: !16, line: 200, baseType: !280, size: 64, align: 64, offset: 128)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64, align: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{null, !268, !263, !283, !289}
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64, align: 64)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64, align: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{!288, !268}
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !214, line: 50, baseType: !213)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64, align: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !265, file: !16, line: 177, baseType: !291, size: 64, align: 64, offset: 128)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64, align: 64)
!292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !293)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !294)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !295)
!295 = !{!296, !301, !305, !309, !313, !314}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !294, file: !16, line: 216, baseType: !297, size: 64, align: 64)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64, align: 64)
!298 = !DISubroutineType(types: !299)
!299 = !{!288, !263, !300}
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64, align: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !294, file: !16, line: 218, baseType: !302, size: 64, align: 64, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64, align: 64)
!303 = !DISubroutineType(types: !304)
!304 = !{!288, !263}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !294, file: !16, line: 219, baseType: !306, size: 64, align: 64, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64, align: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!288, !263, !284, !268}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !294, file: !16, line: 222, baseType: !310, size: 64, align: 64, offset: 192)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64, align: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{null, !263}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !294, file: !16, line: 226, baseType: !284, size: 64, align: 64, offset: 256)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !294, file: !16, line: 227, baseType: !315, size: 64, align: 64, offset: 320)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !316)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64, align: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{null}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !265, file: !16, line: 178, baseType: !320, size: 32, align: 32, offset: 192)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !214, line: 55, baseType: !199)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !265, file: !16, line: 180, baseType: !322, size: 64, align: 64, offset: 256)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64, align: 64)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !324)
!324 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !265, file: !16, line: 182, baseType: !213, size: 32, align: 32, offset: 320)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !265, file: !16, line: 183, baseType: !320, size: 32, align: 32, offset: 352)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !265, file: !16, line: 184, baseType: !320, size: 32, align: 32, offset: 384)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !265, file: !16, line: 186, baseType: !329, size: 64, align: 64, offset: 448)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64, align: 64)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !331, line: 37, baseType: !332)
!331 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !331, line: 39, size: 128, align: 64, elements: !333)
!333 = !{!334, !335}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !332, file: !331, line: 41, baseType: !268, size: 64, align: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !332, file: !331, line: 42, baseType: !329, size: 64, align: 64, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !265, file: !16, line: 188, baseType: !263, size: 64, align: 64, offset: 512)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !265, file: !16, line: 189, baseType: !263, size: 64, align: 64, offset: 576)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !265, file: !16, line: 191, baseType: !148, size: 64, align: 64, offset: 640)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !265, file: !16, line: 193, baseType: !340, size: 64, align: 64, offset: 704)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64, align: 64)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !342)
!342 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !218, file: !4, line: 151, baseType: !345, size: 64, align: 64, offset: 320)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64, align: 64)
!346 = !DISubroutineType(types: !347)
!347 = !{null, !208}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !218, file: !4, line: 152, baseType: !349, size: 64, align: 64, offset: 384)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64, align: 64)
!350 = !DISubroutineType(types: !351)
!351 = !{!224, !208, !352, !231}
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !218, file: !4, line: 155, baseType: !354, size: 64, align: 64, offset: 448)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64, align: 64)
!355 = !DISubroutineType(types: !356)
!356 = !{!352, !208}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !210, file: !4, line: 103, baseType: !225, size: 64, align: 64, offset: 128)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !210, file: !4, line: 104, baseType: !359, size: 64, align: 64, offset: 192)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !360, line: 77, baseType: !361)
!360 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64, align: 64)
!362 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !360, line: 77, flags: DIFlagFwdDecl)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !210, file: !4, line: 105, baseType: !359, size: 64, align: 64, offset: 256)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !210, file: !4, line: 106, baseType: !225, size: 64, align: 64, offset: 320)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !210, file: !4, line: 107, baseType: !320, size: 32, align: 32, offset: 384)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !210, file: !4, line: 109, baseType: !227, size: 64, align: 64, offset: 448)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !210, file: !4, line: 110, baseType: !368, size: 64, align: 64, offset: 512)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64, align: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !370, line: 39, baseType: !371)
!370 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !370, line: 41, size: 192, align: 64, elements: !372)
!372 = !{!373, !374, !375}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !371, file: !370, line: 43, baseType: !225, size: 64, align: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !371, file: !370, line: 44, baseType: !227, size: 64, align: 64, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !371, file: !370, line: 45, baseType: !227, size: 64, align: 64, offset: 128)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !210, file: !4, line: 111, baseType: !368, size: 64, align: 64, offset: 576)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !210, file: !4, line: 112, baseType: !368, size: 64, align: 64, offset: 640)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !210, file: !4, line: 113, baseType: !379, size: 48, align: 8, offset: 704)
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 48, align: 8, elements: !380)
!380 = !{!381}
!381 = !DISubrange(count: 6)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !210, file: !4, line: 117, baseType: !320, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !210, file: !4, line: 118, baseType: !320, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !210, file: !4, line: 119, baseType: !320, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !210, file: !4, line: 120, baseType: !320, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !210, file: !4, line: 121, baseType: !320, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !210, file: !4, line: 122, baseType: !320, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !210, file: !4, line: 124, baseType: !268, size: 64, align: 64, offset: 768)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !210, file: !4, line: 125, baseType: !268, size: 64, align: 64, offset: 832)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "tagconn", scope: !156, file: !133, line: 19, baseType: !134, size: 32, align: 32, offset: 1216)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "tagread", scope: !156, file: !133, line: 19, baseType: !134, size: 32, align: 32, offset: 1248)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "tagwrite", scope: !156, file: !133, line: 19, baseType: !134, size: 32, align: 32, offset: 1280)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "starttime", scope: !156, file: !133, line: 20, baseType: !137, size: 64, align: 64, offset: 1344)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "transfd", scope: !156, file: !133, line: 21, baseType: !395, size: 64, align: 64, offset: 1408)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "uoff_t", file: !171, line: 49, baseType: !229)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "pasv_id", scope: !156, file: !133, line: 23, baseType: !134, size: 32, align: 32, offset: 1472)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "destroyed", scope: !156, file: !133, line: 25, baseType: !199, size: 1, align: 32, offset: 1504, flags: DIFlagBitField, extraData: i64 1504)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !156, file: !133, line: 27, baseType: !399, size: 64, align: 64, offset: 1536)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64, align: 64)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !401, line: 37, baseType: !402)
!401 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!402 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !401, line: 37, flags: DIFlagFwdDecl)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !156, file: !157, line: 15, baseType: !148, size: 64, align: 64, offset: 1600)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "sendbuf", scope: !156, file: !157, line: 16, baseType: !405, size: 64, align: 64, offset: 1664)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64, align: 64)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !171, line: 102, baseType: !407)
!407 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !171, line: 102, flags: DIFlagFwdDecl)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "mirc_ctcp", scope: !156, file: !157, line: 18, baseType: !199, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !156, file: !157, line: 19, baseType: !199, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !130, file: !133, line: 11, baseType: !148, size: 64, align: 64, offset: 448)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !130, file: !133, line: 12, baseType: !148, size: 64, align: 64, offset: 512)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !130, file: !133, line: 14, baseType: !170, size: 160, align: 32, offset: 576)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "addrstr", scope: !130, file: !133, line: 15, baseType: !203, size: 368, align: 8, offset: 736)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !130, file: !133, line: 16, baseType: !134, size: 32, align: 32, offset: 1120)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !130, file: !133, line: 18, baseType: !208, size: 64, align: 64, offset: 1152)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "tagconn", scope: !130, file: !133, line: 19, baseType: !134, size: 32, align: 32, offset: 1216)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "tagread", scope: !130, file: !133, line: 19, baseType: !134, size: 32, align: 32, offset: 1248)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "tagwrite", scope: !130, file: !133, line: 19, baseType: !134, size: 32, align: 32, offset: 1280)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "starttime", scope: !130, file: !133, line: 20, baseType: !137, size: 64, align: 64, offset: 1344)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "transfd", scope: !130, file: !133, line: 21, baseType: !395, size: 64, align: 64, offset: 1408)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "pasv_id", scope: !130, file: !133, line: 23, baseType: !134, size: 32, align: 32, offset: 1472)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "destroyed", scope: !130, file: !133, line: 25, baseType: !199, size: 1, align: 32, offset: 1504, flags: DIFlagBitField, extraData: i64 1504)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !130, file: !133, line: 27, baseType: !399, size: 64, align: 64, offset: 1536)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !130, file: !425, line: 3, baseType: !395, size: 64, align: 64, offset: 1600)
!425 = !DIFile(filename: "../../../../src/irc/dcc/dcc-file-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!426 = !DIDerivedType(tag: DW_TAG_member, name: "skipped", scope: !130, file: !425, line: 3, baseType: !395, size: 64, align: 64, offset: 1664)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "fhandle", scope: !130, file: !425, line: 4, baseType: !134, size: 32, align: 32, offset: 1728)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !130, file: !425, line: 5, baseType: !134, size: 32, align: 32, offset: 1760)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "count_buf", scope: !130, file: !425, line: 8, baseType: !430, size: 32, align: 8, offset: 1792)
!430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 32, align: 8, elements: !200)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "count_pos", scope: !130, file: !425, line: 9, baseType: !134, size: 32, align: 32, offset: 1824)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "file_quoted", scope: !130, file: !129, line: 15, baseType: !199, size: 1, align: 32, offset: 1856, flags: DIFlagBitField, extraData: i64 1856)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "waitforend", scope: !130, file: !129, line: 18, baseType: !199, size: 1, align: 32, offset: 1857, flags: DIFlagBitField, extraData: i64 1856)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "gotalldata", scope: !130, file: !129, line: 19, baseType: !199, size: 1, align: 32, offset: 1858, flags: DIFlagBitField, extraData: i64 1856)
!435 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64, align: 64)
!437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !214, line: 48, baseType: !141)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64, align: 64)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE_DCC_REC", file: !441, line: 8, baseType: !442)
!441 = !DIFile(filename: "../../../../src/irc/dcc/dcc-file.h", directory: "/home/lichi/Desktop/irssi/task1")
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !441, line: 6, size: 1856, align: 64, elements: !443)
!443 = !{!444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !442, file: !133, line: 1, baseType: !134, size: 32, align: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !442, file: !133, line: 2, baseType: !134, size: 32, align: 32, offset: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "created", scope: !442, file: !133, line: 3, baseType: !137, size: 64, align: 64, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !442, file: !133, line: 5, baseType: !143, size: 64, align: 64, offset: 128)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !442, file: !133, line: 6, baseType: !148, size: 64, align: 64, offset: 192)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "mynick", scope: !442, file: !133, line: 7, baseType: !148, size: 64, align: 64, offset: 256)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !442, file: !133, line: 8, baseType: !148, size: 64, align: 64, offset: 320)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "chat", scope: !442, file: !133, line: 10, baseType: !153, size: 64, align: 64, offset: 384)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !442, file: !133, line: 11, baseType: !148, size: 64, align: 64, offset: 448)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !442, file: !133, line: 12, baseType: !148, size: 64, align: 64, offset: 512)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !442, file: !133, line: 14, baseType: !170, size: 160, align: 32, offset: 576)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "addrstr", scope: !442, file: !133, line: 15, baseType: !203, size: 368, align: 8, offset: 736)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !442, file: !133, line: 16, baseType: !134, size: 32, align: 32, offset: 1120)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !442, file: !133, line: 18, baseType: !208, size: 64, align: 64, offset: 1152)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "tagconn", scope: !442, file: !133, line: 19, baseType: !134, size: 32, align: 32, offset: 1216)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "tagread", scope: !442, file: !133, line: 19, baseType: !134, size: 32, align: 32, offset: 1248)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "tagwrite", scope: !442, file: !133, line: 19, baseType: !134, size: 32, align: 32, offset: 1280)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "starttime", scope: !442, file: !133, line: 20, baseType: !137, size: 64, align: 64, offset: 1344)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "transfd", scope: !442, file: !133, line: 21, baseType: !395, size: 64, align: 64, offset: 1408)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "pasv_id", scope: !442, file: !133, line: 23, baseType: !134, size: 32, align: 32, offset: 1472)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "destroyed", scope: !442, file: !133, line: 25, baseType: !199, size: 1, align: 32, offset: 1504, flags: DIFlagBitField, extraData: i64 1504)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !442, file: !133, line: 27, baseType: !399, size: 64, align: 64, offset: 1536)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !442, file: !425, line: 3, baseType: !395, size: 64, align: 64, offset: 1600)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "skipped", scope: !442, file: !425, line: 3, baseType: !395, size: 64, align: 64, offset: 1664)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "fhandle", scope: !442, file: !425, line: 4, baseType: !134, size: 32, align: 32, offset: 1728)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !442, file: !425, line: 5, baseType: !134, size: 32, align: 32, offset: 1760)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "count_buf", scope: !442, file: !425, line: 8, baseType: !430, size: 32, align: 8, offset: 1792)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "count_pos", scope: !442, file: !425, line: 9, baseType: !134, size: 32, align: 32, offset: 1824)
!472 = !{i32 2, !"Dwarf Version", i32 4}
!473 = !{i32 2, !"Debug Info Version", i32 3}
!474 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!475 = distinct !DISubprogram(name: "fe_dcc_send_init", scope: !476, file: !476, line: 164, type: !317, isLocal: false, isDefinition: true, scopeLine: 165, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !477)
!476 = !DIFile(filename: "fe-dcc-send.c", directory: "/home/lichi/Desktop/irssi/task1")
!477 = !{}
!478 = !DILocation(line: 166, column: 2, scope: !475)
!479 = !DILocation(line: 167, column: 2, scope: !475)
!480 = !DILocation(line: 168, column: 2, scope: !475)
!481 = !DILocation(line: 169, column: 2, scope: !475)
!482 = !DILocation(line: 170, column: 2, scope: !475)
!483 = !DILocation(line: 171, column: 2, scope: !475)
!484 = !DILocation(line: 172, column: 2, scope: !475)
!485 = !DILocation(line: 173, column: 9, scope: !475)
!486 = !DILocation(line: 174, column: 1, scope: !475)
!487 = distinct !DISubprogram(name: "dcc_connected", scope: !476, file: !476, line: 37, type: !488, isLocal: true, isDefinition: true, scopeLine: 38, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !477)
!488 = !DISubroutineType(types: !489)
!489 = !{null, !127}
!490 = !DILocalVariable(name: "dcc", arg: 1, scope: !487, file: !476, line: 37, type: !127)
!491 = !DIExpression()
!492 = !DILocation(line: 37, column: 41, scope: !487)
!493 = !DILocation(line: 39, column: 58, scope: !494)
!494 = distinct !DILexicalBlock(scope: !487, file: !476, line: 39, column: 13)
!495 = !DILocation(line: 39, column: 33, scope: !494)
!496 = !DILocation(line: 39, column: 16, scope: !494)
!497 = !DILocation(line: 39, column: 13, scope: !487)
!498 = !DILocation(line: 39, column: 15, scope: !499)
!499 = !DILexicalBlockFile(scope: !494, file: !476, discriminator: 1)
!500 = !DILocation(line: 39, column: 13, scope: !501)
!501 = !DILexicalBlockFile(scope: !487, file: !476, discriminator: 2)
!502 = !DILocation(line: 39, column: 48, scope: !503)
!503 = !DILexicalBlockFile(scope: !494, file: !476, discriminator: 3)
!504 = !DILocation(line: 41, column: 42, scope: !487)
!505 = !DILocation(line: 41, column: 47, scope: !487)
!506 = !DILocation(line: 41, column: 44, scope: !487)
!507 = !DILocation(line: 41, column: 49, scope: !487)
!508 = !DILocation(line: 41, column: 54, scope: !487)
!509 = !DILocation(line: 41, column: 59, scope: !487)
!510 = !DILocation(line: 41, column: 65, scope: !487)
!511 = !DILocation(line: 41, column: 70, scope: !487)
!512 = !DILocation(line: 41, column: 79, scope: !487)
!513 = !DILocation(line: 41, column: 84, scope: !487)
!514 = !DILocation(line: 41, column: 2, scope: !487)
!515 = !DILocation(line: 44, column: 1, scope: !487)
!516 = !DILocation(line: 44, column: 1, scope: !517)
!517 = !DILexicalBlockFile(scope: !487, file: !476, discriminator: 1)
!518 = distinct !DISubprogram(name: "dcc_closed", scope: !476, file: !476, line: 46, type: !488, isLocal: true, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !477)
!519 = !DILocalVariable(name: "dcc", arg: 1, scope: !518, file: !476, line: 46, type: !127)
!520 = !DILocation(line: 46, column: 38, scope: !518)
!521 = !DILocalVariable(name: "sizestr", scope: !518, file: !476, line: 48, type: !148)
!522 = !DILocation(line: 48, column: 8, scope: !518)
!523 = !DILocalVariable(name: "timestr", scope: !518, file: !476, line: 48, type: !524)
!524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 160, align: 8, elements: !525)
!525 = !{!526}
!526 = !DISubrange(count: 20)
!527 = !DILocation(line: 48, column: 17, scope: !518)
!528 = !DILocalVariable(name: "kbs", scope: !518, file: !476, line: 49, type: !435)
!529 = !DILocation(line: 49, column: 9, scope: !518)
!530 = !DILocalVariable(name: "secs", scope: !518, file: !476, line: 50, type: !137)
!531 = !DILocation(line: 50, column: 9, scope: !518)
!532 = !DILocation(line: 52, column: 58, scope: !533)
!533 = distinct !DILexicalBlock(scope: !518, file: !476, line: 52, column: 13)
!534 = !DILocation(line: 52, column: 33, scope: !533)
!535 = !DILocation(line: 52, column: 16, scope: !533)
!536 = !DILocation(line: 52, column: 13, scope: !518)
!537 = !DILocation(line: 52, column: 15, scope: !538)
!538 = !DILexicalBlockFile(scope: !533, file: !476, discriminator: 1)
!539 = !DILocation(line: 52, column: 13, scope: !540)
!540 = !DILexicalBlockFile(scope: !518, file: !476, discriminator: 2)
!541 = !DILocation(line: 52, column: 48, scope: !542)
!542 = !DILexicalBlockFile(scope: !533, file: !476, discriminator: 3)
!543 = !DILocation(line: 54, column: 9, scope: !518)
!544 = !DILocation(line: 54, column: 14, scope: !518)
!545 = !DILocation(line: 54, column: 24, scope: !518)
!546 = !DILocation(line: 54, column: 9, scope: !547)
!547 = !DILexicalBlockFile(scope: !518, file: !476, discriminator: 1)
!548 = !DILocation(line: 54, column: 36, scope: !540)
!549 = !DILocation(line: 54, column: 46, scope: !540)
!550 = !DILocation(line: 54, column: 51, scope: !540)
!551 = !DILocation(line: 54, column: 45, scope: !540)
!552 = !DILocation(line: 54, column: 9, scope: !540)
!553 = !DILocation(line: 54, column: 9, scope: !554)
!554 = !DILexicalBlockFile(scope: !518, file: !476, discriminator: 3)
!555 = !DILocation(line: 54, column: 7, scope: !554)
!556 = !DILocation(line: 55, column: 18, scope: !518)
!557 = !DILocation(line: 55, column: 23, scope: !518)
!558 = !DILocation(line: 55, column: 31, scope: !518)
!559 = !DILocation(line: 55, column: 36, scope: !518)
!560 = !DILocation(line: 55, column: 30, scope: !518)
!561 = !DILocation(line: 55, column: 8, scope: !518)
!562 = !DILocation(line: 56, column: 4, scope: !518)
!563 = !DILocation(line: 56, column: 9, scope: !518)
!564 = !DILocation(line: 56, column: 4, scope: !547)
!565 = !DILocation(line: 56, column: 20, scope: !540)
!566 = !DILocation(line: 56, column: 4, scope: !540)
!567 = !DILocation(line: 56, column: 4, scope: !554)
!568 = !DILocation(line: 56, column: 3, scope: !554)
!569 = !DILocation(line: 55, column: 45, scope: !547)
!570 = !DILocation(line: 56, column: 26, scope: !554)
!571 = !DILocation(line: 55, column: 6, scope: !547)
!572 = !DILocation(line: 58, column: 6, scope: !573)
!573 = distinct !DILexicalBlock(scope: !518, file: !476, line: 58, column: 6)
!574 = !DILocation(line: 58, column: 11, scope: !573)
!575 = !DILocation(line: 58, column: 6, scope: !518)
!576 = !DILocation(line: 60, column: 43, scope: !577)
!577 = distinct !DILexicalBlock(scope: !573, file: !476, line: 58, column: 18)
!578 = !DILocation(line: 60, column: 48, scope: !577)
!579 = !DILocation(line: 60, column: 53, scope: !577)
!580 = !DILocation(line: 60, column: 58, scope: !577)
!581 = !DILocation(line: 60, column: 3, scope: !577)
!582 = !DILocation(line: 63, column: 2, scope: !577)
!583 = !DILocation(line: 64, column: 30, scope: !584)
!584 = distinct !DILexicalBlock(scope: !573, file: !476, line: 63, column: 9)
!585 = !DILocation(line: 64, column: 35, scope: !584)
!586 = !DILocation(line: 64, column: 13, scope: !584)
!587 = !DILocation(line: 64, column: 11, scope: !584)
!588 = !DILocation(line: 65, column: 14, scope: !584)
!589 = !DILocation(line: 66, column: 13, scope: !584)
!590 = !DILocation(line: 66, column: 17, scope: !584)
!591 = !DILocation(line: 66, column: 7, scope: !584)
!592 = !DILocation(line: 66, column: 32, scope: !584)
!593 = !DILocation(line: 66, column: 36, scope: !584)
!594 = !DILocation(line: 66, column: 40, scope: !584)
!595 = !DILocation(line: 66, column: 25, scope: !584)
!596 = !DILocation(line: 67, column: 13, scope: !584)
!597 = !DILocation(line: 67, column: 17, scope: !584)
!598 = !DILocation(line: 67, column: 7, scope: !584)
!599 = !DILocation(line: 65, column: 3, scope: !584)
!600 = !DILocation(line: 69, column: 43, scope: !584)
!601 = !DILocation(line: 69, column: 48, scope: !584)
!602 = !DILocation(line: 69, column: 44, scope: !584)
!603 = !DILocation(line: 69, column: 49, scope: !584)
!604 = !DILocation(line: 69, column: 54, scope: !584)
!605 = !DILocation(line: 69, column: 63, scope: !584)
!606 = !DILocation(line: 69, column: 68, scope: !584)
!607 = !DILocation(line: 69, column: 74, scope: !584)
!608 = !DILocation(line: 69, column: 83, scope: !584)
!609 = !DILocation(line: 69, column: 3, scope: !584)
!610 = !DILocation(line: 73, column: 10, scope: !584)
!611 = !DILocation(line: 73, column: 3, scope: !584)
!612 = !DILocation(line: 75, column: 1, scope: !518)
!613 = distinct !DISubprogram(name: "dcc_error_file_open", scope: !476, file: !476, line: 77, type: !614, isLocal: true, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !477)
!614 = !DISubroutineType(types: !615)
!615 = !{null, !436, !436, !126}
!616 = !DILocalVariable(name: "nick", arg: 1, scope: !613, file: !476, line: 77, type: !436)
!617 = !DILocation(line: 77, column: 45, scope: !613)
!618 = !DILocalVariable(name: "fname", arg: 2, scope: !613, file: !476, line: 77, type: !436)
!619 = !DILocation(line: 77, column: 63, scope: !613)
!620 = !DILocalVariable(name: "error", arg: 3, scope: !613, file: !476, line: 78, type: !126)
!621 = !DILocation(line: 78, column: 11, scope: !613)
!622 = !DILocation(line: 80, column: 2, scope: !613)
!623 = distinct !{!623, !622}
!624 = !DILocation(line: 80, column: 10, scope: !625)
!625 = !DILexicalBlockFile(scope: !626, file: !476, discriminator: 1)
!626 = distinct !DILexicalBlock(scope: !627, file: !476, line: 80, column: 10)
!627 = distinct !DILexicalBlock(scope: !613, file: !476, line: 80, column: 4)
!628 = !DILocation(line: 80, column: 15, scope: !625)
!629 = !DILocation(line: 80, column: 5, scope: !630)
!630 = !DILexicalBlockFile(scope: !631, file: !476, discriminator: 2)
!631 = distinct !DILexicalBlock(scope: !626, file: !476, line: 80, column: 3)
!632 = !DILocation(line: 80, column: 14, scope: !633)
!633 = !DILexicalBlockFile(scope: !634, file: !476, discriminator: 3)
!634 = distinct !DILexicalBlock(scope: !626, file: !476, line: 80, column: 12)
!635 = !DILocation(line: 80, column: 99, scope: !633)
!636 = !DILocation(line: 80, column: 110, scope: !637)
!637 = !DILexicalBlockFile(scope: !627, file: !476, discriminator: 4)
!638 = !DILocation(line: 81, column: 2, scope: !613)
!639 = distinct !{!639, !638}
!640 = !DILocation(line: 81, column: 10, scope: !641)
!641 = !DILexicalBlockFile(scope: !642, file: !476, discriminator: 1)
!642 = distinct !DILexicalBlock(scope: !643, file: !476, line: 81, column: 10)
!643 = distinct !DILexicalBlock(scope: !613, file: !476, line: 81, column: 4)
!644 = !DILocation(line: 81, column: 16, scope: !641)
!645 = !DILocation(line: 81, column: 5, scope: !646)
!646 = !DILexicalBlockFile(scope: !647, file: !476, discriminator: 2)
!647 = distinct !DILexicalBlock(scope: !642, file: !476, line: 81, column: 3)
!648 = !DILocation(line: 81, column: 14, scope: !649)
!649 = !DILexicalBlockFile(scope: !650, file: !476, discriminator: 3)
!650 = distinct !DILexicalBlock(scope: !642, file: !476, line: 81, column: 12)
!651 = !DILocation(line: 81, column: 100, scope: !649)
!652 = !DILocation(line: 81, column: 111, scope: !653)
!653 = !DILexicalBlockFile(scope: !643, file: !476, discriminator: 4)
!654 = !DILocation(line: 83, column: 50, scope: !613)
!655 = !DILocation(line: 83, column: 85, scope: !613)
!656 = !DILocation(line: 83, column: 76, scope: !613)
!657 = !DILocation(line: 83, column: 69, scope: !613)
!658 = !DILocation(line: 83, column: 57, scope: !613)
!659 = !DILocation(line: 83, column: 2, scope: !660)
!660 = !DILexicalBlockFile(scope: !613, file: !476, discriminator: 1)
!661 = !DILocation(line: 86, column: 1, scope: !613)
!662 = !DILocation(line: 86, column: 1, scope: !660)
!663 = distinct !DISubprogram(name: "dcc_error_send_exists", scope: !476, file: !476, line: 88, type: !664, isLocal: true, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !477)
!664 = !DISubroutineType(types: !665)
!665 = !{null, !436, !436}
!666 = !DILocalVariable(name: "nick", arg: 1, scope: !663, file: !476, line: 88, type: !436)
!667 = !DILocation(line: 88, column: 47, scope: !663)
!668 = !DILocalVariable(name: "fname", arg: 2, scope: !663, file: !476, line: 88, type: !436)
!669 = !DILocation(line: 88, column: 65, scope: !663)
!670 = !DILocation(line: 90, column: 2, scope: !663)
!671 = distinct !{!671, !670}
!672 = !DILocation(line: 90, column: 10, scope: !673)
!673 = !DILexicalBlockFile(scope: !674, file: !476, discriminator: 1)
!674 = distinct !DILexicalBlock(scope: !675, file: !476, line: 90, column: 10)
!675 = distinct !DILexicalBlock(scope: !663, file: !476, line: 90, column: 4)
!676 = !DILocation(line: 90, column: 15, scope: !673)
!677 = !DILocation(line: 90, column: 5, scope: !678)
!678 = !DILexicalBlockFile(scope: !679, file: !476, discriminator: 2)
!679 = distinct !DILexicalBlock(scope: !674, file: !476, line: 90, column: 3)
!680 = !DILocation(line: 90, column: 14, scope: !681)
!681 = !DILexicalBlockFile(scope: !682, file: !476, discriminator: 3)
!682 = distinct !DILexicalBlock(scope: !674, file: !476, line: 90, column: 12)
!683 = !DILocation(line: 90, column: 99, scope: !681)
!684 = !DILocation(line: 90, column: 110, scope: !685)
!685 = !DILexicalBlockFile(scope: !675, file: !476, discriminator: 4)
!686 = !DILocation(line: 91, column: 2, scope: !663)
!687 = distinct !{!687, !686}
!688 = !DILocation(line: 91, column: 10, scope: !689)
!689 = !DILexicalBlockFile(scope: !690, file: !476, discriminator: 1)
!690 = distinct !DILexicalBlock(scope: !691, file: !476, line: 91, column: 10)
!691 = distinct !DILexicalBlock(scope: !663, file: !476, line: 91, column: 4)
!692 = !DILocation(line: 91, column: 16, scope: !689)
!693 = !DILocation(line: 91, column: 5, scope: !694)
!694 = !DILexicalBlockFile(scope: !695, file: !476, discriminator: 2)
!695 = distinct !DILexicalBlock(scope: !690, file: !476, line: 91, column: 3)
!696 = !DILocation(line: 91, column: 14, scope: !697)
!697 = !DILexicalBlockFile(scope: !698, file: !476, discriminator: 3)
!698 = distinct !DILexicalBlock(scope: !690, file: !476, line: 91, column: 12)
!699 = !DILocation(line: 91, column: 100, scope: !697)
!700 = !DILocation(line: 91, column: 111, scope: !701)
!701 = !DILexicalBlockFile(scope: !691, file: !476, discriminator: 4)
!702 = !DILocation(line: 93, column: 41, scope: !663)
!703 = !DILocation(line: 93, column: 48, scope: !663)
!704 = !DILocation(line: 93, column: 2, scope: !663)
!705 = !DILocation(line: 95, column: 1, scope: !663)
!706 = !DILocation(line: 95, column: 1, scope: !707)
!707 = !DILexicalBlockFile(scope: !663, file: !476, discriminator: 1)
!708 = distinct !DISubprogram(name: "dcc_error_send_no_route", scope: !476, file: !476, line: 97, type: !664, isLocal: true, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !477)
!709 = !DILocalVariable(name: "nick", arg: 1, scope: !708, file: !476, line: 97, type: !436)
!710 = !DILocation(line: 97, column: 49, scope: !708)
!711 = !DILocalVariable(name: "fname", arg: 2, scope: !708, file: !476, line: 97, type: !436)
!712 = !DILocation(line: 97, column: 67, scope: !708)
!713 = !DILocation(line: 99, column: 43, scope: !708)
!714 = !DILocation(line: 99, column: 49, scope: !708)
!715 = !DILocation(line: 99, column: 2, scope: !708)
!716 = !DILocation(line: 101, column: 1, scope: !708)
!717 = distinct !DISubprogram(name: "dcc_error_close_not_found", scope: !476, file: !476, line: 103, type: !718, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !477)
!718 = !DISubroutineType(types: !719)
!719 = !{null, !436, !436, !436}
!720 = !DILocalVariable(name: "type", arg: 1, scope: !717, file: !476, line: 103, type: !436)
!721 = !DILocation(line: 103, column: 51, scope: !717)
!722 = !DILocalVariable(name: "nick", arg: 2, scope: !717, file: !476, line: 103, type: !436)
!723 = !DILocation(line: 103, column: 69, scope: !717)
!724 = !DILocalVariable(name: "fname", arg: 3, scope: !717, file: !476, line: 104, type: !436)
!725 = !DILocation(line: 104, column: 23, scope: !717)
!726 = !DILocation(line: 106, column: 2, scope: !717)
!727 = distinct !{!727, !726}
!728 = !DILocation(line: 106, column: 10, scope: !729)
!729 = !DILexicalBlockFile(scope: !730, file: !476, discriminator: 1)
!730 = distinct !DILexicalBlock(scope: !731, file: !476, line: 106, column: 10)
!731 = distinct !DILexicalBlock(scope: !717, file: !476, line: 106, column: 4)
!732 = !DILocation(line: 106, column: 15, scope: !729)
!733 = !DILocation(line: 106, column: 5, scope: !734)
!734 = !DILexicalBlockFile(scope: !735, file: !476, discriminator: 2)
!735 = distinct !DILexicalBlock(scope: !730, file: !476, line: 106, column: 3)
!736 = !DILocation(line: 106, column: 14, scope: !737)
!737 = !DILexicalBlockFile(scope: !738, file: !476, discriminator: 3)
!738 = distinct !DILexicalBlock(scope: !730, file: !476, line: 106, column: 12)
!739 = !DILocation(line: 106, column: 99, scope: !737)
!740 = !DILocation(line: 106, column: 110, scope: !741)
!741 = !DILexicalBlockFile(scope: !731, file: !476, discriminator: 4)
!742 = !DILocation(line: 107, column: 2, scope: !717)
!743 = distinct !{!743, !742}
!744 = !DILocation(line: 107, column: 10, scope: !745)
!745 = !DILexicalBlockFile(scope: !746, file: !476, discriminator: 1)
!746 = distinct !DILexicalBlock(scope: !747, file: !476, line: 107, column: 10)
!747 = distinct !DILexicalBlock(scope: !717, file: !476, line: 107, column: 4)
!748 = !DILocation(line: 107, column: 15, scope: !745)
!749 = !DILocation(line: 107, column: 5, scope: !750)
!750 = !DILexicalBlockFile(scope: !751, file: !476, discriminator: 2)
!751 = distinct !DILexicalBlock(scope: !746, file: !476, line: 107, column: 3)
!752 = !DILocation(line: 107, column: 14, scope: !753)
!753 = !DILexicalBlockFile(scope: !754, file: !476, discriminator: 3)
!754 = distinct !DILexicalBlock(scope: !746, file: !476, line: 107, column: 12)
!755 = !DILocation(line: 107, column: 99, scope: !753)
!756 = !DILocation(line: 107, column: 110, scope: !757)
!757 = !DILexicalBlockFile(scope: !747, file: !476, discriminator: 4)
!758 = !DILocation(line: 108, column: 2, scope: !717)
!759 = distinct !{!759, !758}
!760 = !DILocation(line: 108, column: 10, scope: !761)
!761 = !DILexicalBlockFile(scope: !762, file: !476, discriminator: 1)
!762 = distinct !DILexicalBlock(scope: !763, file: !476, line: 108, column: 10)
!763 = distinct !DILexicalBlock(scope: !717, file: !476, line: 108, column: 4)
!764 = !DILocation(line: 108, column: 16, scope: !761)
!765 = !DILocation(line: 108, column: 5, scope: !766)
!766 = !DILexicalBlockFile(scope: !767, file: !476, discriminator: 2)
!767 = distinct !DILexicalBlock(scope: !762, file: !476, line: 108, column: 3)
!768 = !DILocation(line: 108, column: 14, scope: !769)
!769 = !DILexicalBlockFile(scope: !770, file: !476, discriminator: 3)
!770 = distinct !DILexicalBlock(scope: !762, file: !476, line: 108, column: 12)
!771 = !DILocation(line: 108, column: 100, scope: !769)
!772 = !DILocation(line: 108, column: 111, scope: !773)
!773 = !DILexicalBlockFile(scope: !763, file: !476, discriminator: 4)
!774 = !DILocation(line: 109, column: 25, scope: !775)
!775 = distinct !DILexicalBlock(scope: !717, file: !476, line: 109, column: 6)
!776 = !DILocation(line: 109, column: 6, scope: !775)
!777 = !DILocation(line: 109, column: 39, scope: !775)
!778 = !DILocation(line: 109, column: 6, scope: !717)
!779 = !DILocation(line: 109, column: 45, scope: !780)
!780 = !DILexicalBlockFile(scope: !775, file: !476, discriminator: 1)
!781 = !DILocation(line: 111, column: 6, scope: !782)
!782 = distinct !DILexicalBlock(scope: !717, file: !476, line: 111, column: 6)
!783 = !DILocation(line: 111, column: 12, scope: !782)
!784 = !DILocation(line: 111, column: 19, scope: !782)
!785 = !DILocation(line: 111, column: 23, scope: !786)
!786 = !DILexicalBlockFile(scope: !782, file: !476, discriminator: 1)
!787 = !DILocation(line: 111, column: 22, scope: !786)
!788 = !DILocation(line: 111, column: 29, scope: !786)
!789 = !DILocation(line: 111, column: 6, scope: !786)
!790 = !DILocation(line: 111, column: 44, scope: !791)
!791 = !DILexicalBlockFile(scope: !782, file: !476, discriminator: 2)
!792 = !DILocation(line: 111, column: 38, scope: !791)
!793 = !DILocation(line: 112, column: 44, scope: !717)
!794 = !DILocation(line: 112, column: 50, scope: !717)
!795 = !DILocation(line: 112, column: 2, scope: !717)
!796 = !DILocation(line: 114, column: 1, scope: !717)
!797 = !DILocation(line: 114, column: 1, scope: !798)
!798 = !DILexicalBlockFile(scope: !717, file: !476, discriminator: 1)
!799 = distinct !DISubprogram(name: "sig_dcc_send_complete", scope: !476, file: !476, line: 116, type: !800, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !477)
!800 = !DISubroutineType(types: !801)
!801 = !{null, !802, !811, !436, !436, !876}
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64, align: 64)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64, align: 64)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "GList", file: !805, line: 37, baseType: !806)
!805 = !DIFile(filename: "/usr/include/glib-2.0/glib/glist.h", directory: "/home/lichi/Desktop/irssi/task1")
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GList", file: !805, line: 39, size: 192, align: 64, elements: !807)
!807 = !{!808, !809, !810}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !806, file: !805, line: 41, baseType: !268, size: 64, align: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !806, file: !805, line: 42, baseType: !803, size: 64, align: 64, offset: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !806, file: !805, line: 43, baseType: !803, size: 64, align: 64, offset: 128)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64, align: 64)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "WINDOW_REC", file: !171, line: 117, baseType: !813)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WINDOW_REC", file: !814, line: 28, size: 1280, align: 64, elements: !815)
!814 = !DIFile(filename: "../../../../src/fe-common/core/fe-windows.h", directory: "/home/lichi/Desktop/irssi/task1")
!815 = !{!816, !817, !818, !819, !820, !821, !849, !850, !851, !852, !853, !854, !855, !856, !857, !868, !869, !870, !871, !872, !873, !874, !875}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "refnum", scope: !813, file: !814, line: 29, baseType: !134, size: 32, align: 32)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !813, file: !814, line: 30, baseType: !148, size: 64, align: 64, offset: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !813, file: !814, line: 32, baseType: !134, size: 32, align: 32, offset: 128)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !813, file: !814, line: 32, baseType: !134, size: 32, align: 32, offset: 160)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !813, file: !814, line: 34, baseType: !329, size: 64, align: 64, offset: 192)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !813, file: !814, line: 35, baseType: !822, size: 64, align: 64, offset: 256)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64, align: 64)
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !171, line: 108, baseType: !824)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !825, line: 5, size: 704, align: 64, elements: !826)
!825 = !DIFile(filename: "../../../../src/core/window-item-def.h", directory: "/home/lichi/Desktop/irssi/task1")
!826 = !{!827, !829, !830, !831, !832, !836, !837, !838, !839, !840, !841, !845}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !824, file: !828, line: 3, baseType: !134, size: 32, align: 32)
!828 = !DIFile(filename: "../../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!829 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !824, file: !828, line: 4, baseType: !134, size: 32, align: 32, offset: 32)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !824, file: !828, line: 5, baseType: !399, size: 64, align: 64, offset: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !824, file: !828, line: 7, baseType: !126, size: 64, align: 64, offset: 128)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !824, file: !828, line: 8, baseType: !833, size: 64, align: 64, offset: 192)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64, align: 64)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !171, line: 107, baseType: !835)
!835 = !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !171, line: 107, flags: DIFlagFwdDecl)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !824, file: !828, line: 9, baseType: !148, size: 64, align: 64, offset: 256)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !824, file: !828, line: 10, baseType: !148, size: 64, align: 64, offset: 320)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !824, file: !828, line: 11, baseType: !137, size: 64, align: 64, offset: 384)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !824, file: !828, line: 12, baseType: !134, size: 32, align: 32, offset: 448)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !824, file: !828, line: 13, baseType: !148, size: 64, align: 64, offset: 512)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !824, file: !828, line: 15, baseType: !842, size: 64, align: 64, offset: 576)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64, align: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{null, !822}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !824, file: !828, line: 17, baseType: !846, size: 64, align: 64, offset: 640)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64, align: 64)
!847 = !DISubroutineType(types: !848)
!848 = !{!436, !822}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "active_server", scope: !813, file: !814, line: 36, baseType: !833, size: 64, align: 64, offset: 320)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "connect_server", scope: !813, file: !814, line: 37, baseType: !833, size: 64, align: 64, offset: 384)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !813, file: !814, line: 38, baseType: !148, size: 64, align: 64, offset: 448)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !813, file: !814, line: 40, baseType: !134, size: 32, align: 32, offset: 512)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "bound_items", scope: !813, file: !814, line: 41, baseType: !329, size: 64, align: 64, offset: 576)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "immortal", scope: !813, file: !814, line: 43, baseType: !199, size: 1, align: 32, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "sticky_refnum", scope: !813, file: !814, line: 44, baseType: !199, size: 1, align: 32, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !813, file: !814, line: 45, baseType: !199, size: 1, align: 32, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !813, file: !814, line: 48, baseType: !858, size: 64, align: 64, offset: 704)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64, align: 64)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "HISTORY_REC", file: !860, line: 14, baseType: !861)
!860 = !DIFile(filename: "../../../../src/fe-common/core/command-history.h", directory: "/home/lichi/Desktop/irssi/task1")
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !860, line: 6, size: 256, align: 64, elements: !862)
!862 = !{!863, !864, !865, !866, !867}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !861, file: !860, line: 7, baseType: !148, size: 64, align: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !861, file: !860, line: 9, baseType: !803, size: 64, align: 64, offset: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "lines", scope: !861, file: !860, line: 10, baseType: !134, size: 32, align: 32, offset: 128)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !861, file: !860, line: 12, baseType: !134, size: 32, align: 32, offset: 160)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "redo", scope: !861, file: !860, line: 13, baseType: !134, size: 1, align: 32, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "history_name", scope: !813, file: !814, line: 49, baseType: !148, size: 64, align: 64, offset: 768)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !813, file: !814, line: 51, baseType: !134, size: 32, align: 32, offset: 832)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !813, file: !814, line: 52, baseType: !148, size: 64, align: 64, offset: 896)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "last_timestamp", scope: !813, file: !814, line: 54, baseType: !137, size: 64, align: 64, offset: 960)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "last_line", scope: !813, file: !814, line: 55, baseType: !137, size: 64, align: 64, offset: 1024)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "theme_name", scope: !813, file: !814, line: 57, baseType: !148, size: 64, align: 64, offset: 1088)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "theme", scope: !813, file: !814, line: 58, baseType: !126, size: 64, align: 64, offset: 1152)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "gui_data", scope: !813, file: !814, line: 60, baseType: !126, size: 64, align: 64, offset: 1216)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64, align: 64)
!877 = !DILocalVariable(name: "list", arg: 1, scope: !799, file: !476, line: 116, type: !802)
!878 = !DILocation(line: 116, column: 43, scope: !799)
!879 = !DILocalVariable(name: "window", arg: 2, scope: !799, file: !476, line: 116, type: !811)
!880 = !DILocation(line: 116, column: 61, scope: !799)
!881 = !DILocalVariable(name: "word", arg: 3, scope: !799, file: !476, line: 117, type: !436)
!882 = !DILocation(line: 117, column: 19, scope: !799)
!883 = !DILocalVariable(name: "line", arg: 4, scope: !799, file: !476, line: 117, type: !436)
!884 = !DILocation(line: 117, column: 37, scope: !799)
!885 = !DILocalVariable(name: "want_space", arg: 5, scope: !799, file: !476, line: 118, type: !876)
!886 = !DILocation(line: 118, column: 12, scope: !799)
!887 = !DILocalVariable(name: "path", scope: !799, file: !476, line: 120, type: !148)
!888 = !DILocation(line: 120, column: 8, scope: !799)
!889 = !DILocation(line: 122, column: 2, scope: !799)
!890 = distinct !{!890, !889}
!891 = !DILocation(line: 122, column: 10, scope: !892)
!892 = !DILexicalBlockFile(scope: !893, file: !476, discriminator: 1)
!893 = distinct !DILexicalBlock(scope: !894, file: !476, line: 122, column: 10)
!894 = distinct !DILexicalBlock(scope: !799, file: !476, line: 122, column: 4)
!895 = !DILocation(line: 122, column: 15, scope: !892)
!896 = !DILocation(line: 122, column: 5, scope: !897)
!897 = !DILexicalBlockFile(scope: !898, file: !476, discriminator: 2)
!898 = distinct !DILexicalBlock(scope: !893, file: !476, line: 122, column: 3)
!899 = !DILocation(line: 122, column: 14, scope: !900)
!900 = !DILexicalBlockFile(scope: !901, file: !476, discriminator: 3)
!901 = distinct !DILexicalBlock(scope: !893, file: !476, line: 122, column: 12)
!902 = !DILocation(line: 122, column: 99, scope: !900)
!903 = !DILocation(line: 122, column: 110, scope: !904)
!904 = !DILexicalBlockFile(scope: !894, file: !476, discriminator: 4)
!905 = !DILocation(line: 123, column: 2, scope: !799)
!906 = distinct !{!906, !905}
!907 = !DILocation(line: 123, column: 10, scope: !908)
!908 = !DILexicalBlockFile(scope: !909, file: !476, discriminator: 1)
!909 = distinct !DILexicalBlock(scope: !910, file: !476, line: 123, column: 10)
!910 = distinct !DILexicalBlock(scope: !799, file: !476, line: 123, column: 4)
!911 = !DILocation(line: 123, column: 15, scope: !908)
!912 = !DILocation(line: 123, column: 5, scope: !913)
!913 = !DILexicalBlockFile(scope: !914, file: !476, discriminator: 2)
!914 = distinct !DILexicalBlock(scope: !909, file: !476, line: 123, column: 3)
!915 = !DILocation(line: 123, column: 14, scope: !916)
!916 = !DILexicalBlockFile(scope: !917, file: !476, discriminator: 3)
!917 = distinct !DILexicalBlock(scope: !909, file: !476, line: 123, column: 12)
!918 = !DILocation(line: 123, column: 99, scope: !916)
!919 = !DILocation(line: 123, column: 110, scope: !920)
!920 = !DILexicalBlockFile(scope: !910, file: !476, discriminator: 4)
!921 = !DILocation(line: 124, column: 2, scope: !799)
!922 = distinct !{!922, !921}
!923 = !DILocation(line: 124, column: 10, scope: !924)
!924 = !DILexicalBlockFile(scope: !925, file: !476, discriminator: 1)
!925 = distinct !DILexicalBlock(scope: !926, file: !476, line: 124, column: 10)
!926 = distinct !DILexicalBlock(scope: !799, file: !476, line: 124, column: 4)
!927 = !DILocation(line: 124, column: 15, scope: !924)
!928 = !DILocation(line: 124, column: 5, scope: !929)
!929 = !DILexicalBlockFile(scope: !930, file: !476, discriminator: 2)
!930 = distinct !DILexicalBlock(scope: !925, file: !476, line: 124, column: 3)
!931 = !DILocation(line: 124, column: 14, scope: !932)
!932 = !DILexicalBlockFile(scope: !933, file: !476, discriminator: 3)
!933 = distinct !DILexicalBlock(scope: !925, file: !476, line: 124, column: 12)
!934 = !DILocation(line: 124, column: 99, scope: !932)
!935 = !DILocation(line: 124, column: 110, scope: !936)
!936 = !DILexicalBlockFile(scope: !926, file: !476, discriminator: 4)
!937 = !DILocation(line: 126, column: 7, scope: !938)
!938 = distinct !DILexicalBlock(scope: !799, file: !476, line: 126, column: 6)
!939 = !DILocation(line: 126, column: 6, scope: !938)
!940 = !DILocation(line: 126, column: 12, scope: !938)
!941 = !DILocation(line: 126, column: 20, scope: !938)
!942 = !DILocation(line: 126, column: 30, scope: !943)
!943 = !DILexicalBlockFile(scope: !938, file: !476, discriminator: 1)
!944 = !DILocation(line: 126, column: 23, scope: !943)
!945 = !DILocation(line: 126, column: 41, scope: !943)
!946 = !DILocation(line: 126, column: 6, scope: !943)
!947 = !DILocation(line: 127, column: 3, scope: !938)
!948 = !DILocation(line: 130, column: 22, scope: !799)
!949 = !DILocation(line: 130, column: 9, scope: !950)
!950 = !DILexicalBlockFile(scope: !799, file: !476, discriminator: 1)
!951 = !DILocation(line: 130, column: 7, scope: !799)
!952 = !DILocation(line: 131, column: 7, scope: !953)
!953 = distinct !DILexicalBlock(scope: !799, file: !476, line: 131, column: 6)
!954 = !DILocation(line: 131, column: 6, scope: !953)
!955 = !DILocation(line: 131, column: 12, scope: !953)
!956 = !DILocation(line: 131, column: 6, scope: !799)
!957 = !DILocation(line: 133, column: 3, scope: !958)
!958 = distinct !DILexicalBlock(scope: !953, file: !476, line: 131, column: 21)
!959 = distinct !{!959, !957}
!960 = !DILocation(line: 133, column: 12, scope: !961)
!961 = !DILexicalBlockFile(scope: !962, file: !476, discriminator: 1)
!962 = distinct !DILexicalBlock(scope: !963, file: !476, line: 133, column: 12)
!963 = distinct !DILexicalBlock(scope: !958, file: !476, line: 133, column: 6)
!964 = !DILocation(line: 133, column: 27, scope: !965)
!965 = !DILexicalBlockFile(scope: !966, file: !476, discriminator: 2)
!966 = distinct !DILexicalBlock(scope: !962, file: !476, line: 133, column: 18)
!967 = !DILocation(line: 133, column: 20, scope: !965)
!968 = !DILocation(line: 133, column: 41, scope: !965)
!969 = !DILocation(line: 133, column: 4, scope: !965)
!970 = !DILocation(line: 133, column: 6, scope: !971)
!971 = !DILexicalBlockFile(scope: !963, file: !476, discriminator: 3)
!972 = !DILocation(line: 134, column: 2, scope: !958)
!973 = !DILocation(line: 136, column: 28, scope: !799)
!974 = !DILocation(line: 136, column: 34, scope: !799)
!975 = !DILocation(line: 136, column: 10, scope: !799)
!976 = !DILocation(line: 136, column: 3, scope: !799)
!977 = !DILocation(line: 136, column: 8, scope: !799)
!978 = !DILocation(line: 138, column: 7, scope: !979)
!979 = distinct !DILexicalBlock(scope: !799, file: !476, line: 138, column: 6)
!980 = !DILocation(line: 138, column: 6, scope: !979)
!981 = !DILocation(line: 138, column: 12, scope: !979)
!982 = !DILocation(line: 138, column: 6, scope: !799)
!983 = !DILocation(line: 139, column: 4, scope: !984)
!984 = distinct !DILexicalBlock(scope: !979, file: !476, line: 138, column: 20)
!985 = !DILocation(line: 139, column: 15, scope: !984)
!986 = !DILocation(line: 140, column: 3, scope: !984)
!987 = !DILocation(line: 141, column: 2, scope: !984)
!988 = !DILocation(line: 142, column: 1, scope: !799)
!989 = distinct !DISubprogram(name: "sig_dcc_list_print", scope: !476, file: !476, line: 144, type: !488, isLocal: true, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !477)
!990 = !DILocalVariable(name: "dcc", arg: 1, scope: !989, file: !476, line: 144, type: !127)
!991 = !DILocation(line: 144, column: 46, scope: !989)
!992 = !DILocalVariable(name: "queue", scope: !989, file: !476, line: 146, type: !329)
!993 = !DILocation(line: 146, column: 10, scope: !989)
!994 = !DILocation(line: 148, column: 51, scope: !995)
!995 = distinct !DILexicalBlock(scope: !989, file: !476, line: 148, column: 6)
!996 = !DILocation(line: 148, column: 26, scope: !995)
!997 = !DILocation(line: 148, column: 9, scope: !995)
!998 = !DILocation(line: 148, column: 6, scope: !989)
!999 = !DILocation(line: 148, column: 8, scope: !1000)
!1000 = !DILexicalBlockFile(scope: !995, file: !476, discriminator: 1)
!1001 = !DILocation(line: 148, column: 6, scope: !1002)
!1002 = !DILexicalBlockFile(scope: !989, file: !476, discriminator: 2)
!1003 = !DILocation(line: 149, column: 3, scope: !995)
!1004 = !DILocation(line: 151, column: 39, scope: !989)
!1005 = !DILocation(line: 151, column: 22, scope: !989)
!1006 = !DILocation(line: 151, column: 2, scope: !989)
!1007 = !DILocation(line: 153, column: 30, scope: !989)
!1008 = !DILocation(line: 153, column: 35, scope: !989)
!1009 = !DILocation(line: 153, column: 10, scope: !989)
!1010 = !DILocation(line: 153, column: 8, scope: !989)
!1011 = !DILocation(line: 154, column: 2, scope: !989)
!1012 = !DILocation(line: 154, column: 9, scope: !1013)
!1013 = !DILexicalBlockFile(scope: !1014, file: !476, discriminator: 1)
!1014 = distinct !DILexicalBlock(scope: !1015, file: !476, line: 154, column: 2)
!1015 = distinct !DILexicalBlock(scope: !989, file: !476, line: 154, column: 2)
!1016 = !DILocation(line: 154, column: 15, scope: !1013)
!1017 = !DILocation(line: 154, column: 2, scope: !1013)
!1018 = !DILocalVariable(name: "rec", scope: !1019, file: !476, line: 155, type: !1020)
!1019 = distinct !DILexicalBlock(scope: !1014, file: !476, line: 154, column: 44)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64, align: 64)
!1021 = !DIDerivedType(tag: DW_TAG_typedef, name: "DCC_QUEUE_REC", file: !1022, line: 18, baseType: !1023)
!1022 = !DIFile(filename: "../../../../src/irc/dcc/dcc-queue.h", directory: "/home/lichi/Desktop/irssi/task1")
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1022, line: 12, size: 320, align: 64, elements: !1024)
!1024 = !{!1025, !1026, !1027, !1028, !1029}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "chat", scope: !1023, file: !1022, line: 13, baseType: !153, size: 64, align: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !1023, file: !1022, line: 14, baseType: !148, size: 64, align: 64, offset: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !1023, file: !1022, line: 15, baseType: !148, size: 64, align: 64, offset: 128)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1023, file: !1022, line: 16, baseType: !148, size: 64, align: 64, offset: 192)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "passive", scope: !1023, file: !1022, line: 17, baseType: !134, size: 32, align: 32, offset: 256)
!1030 = !DILocation(line: 155, column: 18, scope: !1019)
!1031 = !DILocation(line: 155, column: 24, scope: !1019)
!1032 = !DILocation(line: 155, column: 31, scope: !1019)
!1033 = !DILocation(line: 157, column: 52, scope: !1019)
!1034 = !DILocation(line: 157, column: 57, scope: !1019)
!1035 = !DILocation(line: 157, column: 63, scope: !1019)
!1036 = !DILocation(line: 157, column: 68, scope: !1019)
!1037 = !DILocation(line: 157, column: 78, scope: !1019)
!1038 = !DILocation(line: 157, column: 63, scope: !1039)
!1039 = !DILexicalBlockFile(scope: !1019, file: !476, discriminator: 1)
!1040 = !DILocation(line: 157, column: 9, scope: !1041)
!1041 = !DILexicalBlockFile(scope: !1019, file: !476, discriminator: 2)
!1042 = !DILocation(line: 157, column: 14, scope: !1041)
!1043 = !DILocation(line: 157, column: 63, scope: !1041)
!1044 = !DILocation(line: 157, column: 63, scope: !1045)
!1045 = !DILexicalBlockFile(scope: !1019, file: !476, discriminator: 3)
!1046 = !DILocation(line: 157, column: 25, scope: !1045)
!1047 = !DILocation(line: 157, column: 30, scope: !1045)
!1048 = !DILocation(line: 157, column: 3, scope: !1045)
!1049 = !DILocation(line: 161, column: 2, scope: !1019)
!1050 = !DILocation(line: 154, column: 31, scope: !1051)
!1051 = !DILexicalBlockFile(scope: !1014, file: !476, discriminator: 2)
!1052 = !DILocation(line: 154, column: 38, scope: !1051)
!1053 = !DILocation(line: 154, column: 29, scope: !1051)
!1054 = !DILocation(line: 154, column: 2, scope: !1051)
!1055 = distinct !{!1055, !1011}
!1056 = !DILocation(line: 162, column: 1, scope: !989)
!1057 = distinct !DISubprogram(name: "fe_dcc_send_deinit", scope: !476, file: !476, line: 176, type: !317, isLocal: false, isDefinition: true, scopeLine: 177, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !477)
!1058 = !DILocation(line: 178, column: 2, scope: !1057)
!1059 = !DILocation(line: 179, column: 2, scope: !1057)
!1060 = !DILocation(line: 180, column: 2, scope: !1057)
!1061 = !DILocation(line: 181, column: 2, scope: !1057)
!1062 = !DILocation(line: 182, column: 2, scope: !1057)
!1063 = !DILocation(line: 183, column: 2, scope: !1057)
!1064 = !DILocation(line: 184, column: 2, scope: !1057)
!1065 = !DILocation(line: 185, column: 9, scope: !1057)
!1066 = !DILocation(line: 186, column: 1, scope: !1057)
