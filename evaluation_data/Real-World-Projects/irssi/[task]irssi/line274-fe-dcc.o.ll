; ModuleID = './line274-fe-dcc.o.i'
source_filename = "./line274-fe-dcc.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._FORMAT_REC = type { i8*, i8*, i32, [10 x i32] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct.FILE_DCC_REC = type { i32, i32, i64, %struct._IRC_SERVER_REC*, i8*, i8*, i8*, %struct.CHAT_DCC_REC*, i8*, i8*, %struct._IPADDR, [46 x i8], i32, %struct._GIOChannel*, i32, i32, i32, i64, i64, i32, i8, %struct._GHashTable*, i64, i64, i32, i32, [4 x i8], i32 }
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
%struct._GSourcePrivate = type opaque
%struct._GIConv = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct._GHashTable = type opaque
%struct.MODULE_FILE_REC = type { %struct._MODULE_REC*, i8*, i8*, void ()*, %struct._GModule*, i8 }
%struct._MODULE_REC = type { i8*, %struct._GSList* }
%struct._GModule = type opaque
%struct.DCC_REC = type { i32, i32, i64, %struct._IRC_SERVER_REC*, i8*, i8*, i8*, %struct.CHAT_DCC_REC*, i8*, i8*, %struct._IPADDR, [46 x i8], i32, %struct._GIOChannel*, i32, i32, i32, i64, i64, i32, i8, %struct._GHashTable* }

@.str = private unnamed_addr constant [5 x i8] c"%luB\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%lukB\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%luMB\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"(stalled)\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"%02d:%02d:%02d\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"fe-common/irc/dcc\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"DCC\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"dcc request\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"dcc rejected\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"dcc request send\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"dcc error connect\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"dcc error unknown type\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"dcc\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"dcc list\00", align 1
@fecommon_irc_dcc_formats = external global [0 x %struct._FORMAT_REC], align 8
@.str.14 = private unnamed_addr constant [7 x i8] c"fe-irc\00", align 1
@__func__.dcc_request = private unnamed_addr constant [12 x i8] c"dcc_request\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"dcc != NULL\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@__func__.dcc_rejected = private unnamed_addr constant [13 x i8] c"dcc_rejected\00", align 1
@__func__.dcc_request_send = private unnamed_addr constant [17 x i8] c"dcc_request_send\00", align 1
@__func__.dcc_error_connect = private unnamed_addr constant [18 x i8] c"dcc_error_connect\00", align 1
@__func__.dcc_error_unknown_type = private unnamed_addr constant [23 x i8] c"dcc_error_unknown_type\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"type != NULL\00", align 1
@__func__.cmd_dcc_list = private unnamed_addr constant [13 x i8] c"cmd_dcc_list\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"data != NULL\00", align 1
@dcc_conns = external global %struct._GSList*, align 8
@.str.19 = private unnamed_addr constant [15 x i8] c"dcc list print\00", align 1

; Function Attrs: nounwind uwtable
define i8* @dcc_get_size_str(i64) #0 !dbg !138 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !147, metadata !148), !dbg !149
  %4 = load i64, i64* %3, align 8, !dbg !150
  %5 = icmp ult i64 %4, 1024, !dbg !152
  br i1 %5, label %6, label %9, !dbg !153

; <label>:6:                                      ; preds = %1
  %7 = load i64, i64* %3, align 8, !dbg !154
  %8 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 %7), !dbg !155
  store i8* %8, i8** %2, align 8, !dbg !156
  br label %21, !dbg !156

; <label>:9:                                      ; preds = %1
  %10 = load i64, i64* %3, align 8, !dbg !157
  %11 = icmp ult i64 %10, 1048576, !dbg !159
  br i1 %11, label %12, label %17, !dbg !160

; <label>:12:                                     ; preds = %9
  %13 = load i64, i64* %3, align 8, !dbg !161
  %14 = add i64 %13, 1023, !dbg !162
  %15 = udiv i64 %14, 1024, !dbg !163
  %16 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i64 %15), !dbg !164
  store i8* %16, i8** %2, align 8, !dbg !165
  br label %21, !dbg !165

; <label>:17:                                     ; preds = %9
  %18 = load i64, i64* %3, align 8, !dbg !166
  %19 = udiv i64 %18, 1048576, !dbg !167
  %20 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i64 %19), !dbg !168
  store i8* %20, i8** %2, align 8, !dbg !169
  br label %21, !dbg !169

; <label>:21:                                     ; preds = %17, %12, %6
  %22 = load i8*, i8** %2, align 8, !dbg !170
  ret i8* %22, !dbg !170
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @dcc_list_print_file(%struct.FILE_DCC_REC*) #0 !dbg !171 {
  %2 = alloca %struct.FILE_DCC_REC*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [20 x i8], align 16
  %8 = alloca i64, align 8
  store %struct.FILE_DCC_REC* %0, %struct.FILE_DCC_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.FILE_DCC_REC** %2, metadata !470, metadata !148), !dbg !471
  call void @llvm.dbg.declare(metadata i64* %3, metadata !472, metadata !148), !dbg !473
  call void @llvm.dbg.declare(metadata i64* %4, metadata !474, metadata !148), !dbg !475
  call void @llvm.dbg.declare(metadata i8** %5, metadata !476, metadata !148), !dbg !477
  call void @llvm.dbg.declare(metadata i8** %6, metadata !478, metadata !148), !dbg !479
  call void @llvm.dbg.declare(metadata [20 x i8]* %7, metadata !480, metadata !148), !dbg !484
  call void @llvm.dbg.declare(metadata i64* %8, metadata !485, metadata !148), !dbg !486
  %9 = call i64 @time(i64* null) #4, !dbg !487
  %10 = load %struct.FILE_DCC_REC*, %struct.FILE_DCC_REC** %2, align 8, !dbg !488
  %11 = getelementptr inbounds %struct.FILE_DCC_REC, %struct.FILE_DCC_REC* %10, i32 0, i32 17, !dbg !489
  %12 = load i64, i64* %11, align 8, !dbg !489
  %13 = sub nsw i64 %9, %12, !dbg !490
  store i64 %13, i64* %3, align 8, !dbg !491
  %14 = load i64, i64* %3, align 8, !dbg !492
  %15 = icmp sle i64 %14, 0, !dbg !494
  br i1 %15, label %16, label %17, !dbg !495

; <label>:16:                                     ; preds = %1
  store i64 1, i64* %3, align 8, !dbg !496
  br label %17, !dbg !498

; <label>:17:                                     ; preds = %16, %1
  %18 = load %struct.FILE_DCC_REC*, %struct.FILE_DCC_REC** %2, align 8, !dbg !499
  %19 = getelementptr inbounds %struct.FILE_DCC_REC, %struct.FILE_DCC_REC* %18, i32 0, i32 18, !dbg !500
  %20 = load i64, i64* %19, align 8, !dbg !500
  %21 = call i8* @dcc_get_size_str(i64 %20), !dbg !501
  store i8* %21, i8** %5, align 8, !dbg !502
  %22 = load %struct.FILE_DCC_REC*, %struct.FILE_DCC_REC** %2, align 8, !dbg !503
  %23 = getelementptr inbounds %struct.FILE_DCC_REC, %struct.FILE_DCC_REC* %22, i32 0, i32 22, !dbg !504
  %24 = load i64, i64* %23, align 8, !dbg !504
  %25 = call i8* @dcc_get_size_str(i64 %24), !dbg !505
  store i8* %25, i8** %6, align 8, !dbg !506
  %26 = load %struct.FILE_DCC_REC*, %struct.FILE_DCC_REC** %2, align 8, !dbg !507
  %27 = getelementptr inbounds %struct.FILE_DCC_REC, %struct.FILE_DCC_REC* %26, i32 0, i32 18, !dbg !508
  %28 = load i64, i64* %27, align 8, !dbg !508
  %29 = load %struct.FILE_DCC_REC*, %struct.FILE_DCC_REC** %2, align 8, !dbg !509
  %30 = getelementptr inbounds %struct.FILE_DCC_REC, %struct.FILE_DCC_REC* %29, i32 0, i32 23, !dbg !510
  %31 = load i64, i64* %30, align 8, !dbg !510
  %32 = sub i64 %28, %31, !dbg !511
  %33 = load i64, i64* %3, align 8, !dbg !512
  %34 = udiv i64 %32, %33, !dbg !513
  store i64 %34, i64* %8, align 8, !dbg !514
  %35 = load i64, i64* %8, align 8, !dbg !515
  %36 = icmp eq i64 %35, 0, !dbg !517
  br i1 %36, label %37, label %40, !dbg !518

; <label>:37:                                     ; preds = %17
  %38 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i32 0, i32 0, !dbg !519
  %39 = call i8* @strcpy(i8* %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0)) #4, !dbg !521
  br label %62, !dbg !522

; <label>:40:                                     ; preds = %17
  %41 = load %struct.FILE_DCC_REC*, %struct.FILE_DCC_REC** %2, align 8, !dbg !523
  %42 = getelementptr inbounds %struct.FILE_DCC_REC, %struct.FILE_DCC_REC* %41, i32 0, i32 22, !dbg !525
  %43 = load i64, i64* %42, align 8, !dbg !525
  %44 = load %struct.FILE_DCC_REC*, %struct.FILE_DCC_REC** %2, align 8, !dbg !526
  %45 = getelementptr inbounds %struct.FILE_DCC_REC, %struct.FILE_DCC_REC* %44, i32 0, i32 18, !dbg !527
  %46 = load i64, i64* %45, align 8, !dbg !527
  %47 = sub i64 %43, %46, !dbg !528
  %48 = load i64, i64* %8, align 8, !dbg !529
  %49 = udiv i64 %47, %48, !dbg !530
  store i64 %49, i64* %4, align 8, !dbg !531
  %50 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i32 0, i32 0, !dbg !532
  %51 = load i64, i64* %4, align 8, !dbg !533
  %52 = sdiv i64 %51, 3600, !dbg !534
  %53 = trunc i64 %52 to i32, !dbg !535
  %54 = load i64, i64* %4, align 8, !dbg !536
  %55 = sdiv i64 %54, 60, !dbg !537
  %56 = srem i64 %55, 60, !dbg !538
  %57 = trunc i64 %56 to i32, !dbg !539
  %58 = load i64, i64* %4, align 8, !dbg !540
  %59 = srem i64 %58, 60, !dbg !541
  %60 = trunc i64 %59 to i32, !dbg !542
  %61 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %50, i64 20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i32 %53, i32 %57, i32 %60), !dbg !543
  br label %62

; <label>:62:                                     ; preds = %40, %37
  %63 = load %struct.FILE_DCC_REC*, %struct.FILE_DCC_REC** %2, align 8, !dbg !544
  %64 = getelementptr inbounds %struct.FILE_DCC_REC, %struct.FILE_DCC_REC* %63, i32 0, i32 6, !dbg !545
  %65 = load i8*, i8** %64, align 8, !dbg !545
  %66 = load %struct.FILE_DCC_REC*, %struct.FILE_DCC_REC** %2, align 8, !dbg !546
  %67 = getelementptr inbounds %struct.FILE_DCC_REC, %struct.FILE_DCC_REC* %66, i32 0, i32 0, !dbg !547
  %68 = load i32, i32* %67, align 8, !dbg !547
  %69 = call i8* @module_find_id_str(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i32 %68), !dbg !548
  %70 = load i8*, i8** %5, align 8, !dbg !549
  %71 = load i8*, i8** %6, align 8, !dbg !550
  %72 = load %struct.FILE_DCC_REC*, %struct.FILE_DCC_REC** %2, align 8, !dbg !551
  %73 = getelementptr inbounds %struct.FILE_DCC_REC, %struct.FILE_DCC_REC* %72, i32 0, i32 22, !dbg !552
  %74 = load i64, i64* %73, align 8, !dbg !552
  %75 = icmp eq i64 %74, 0, !dbg !553
  br i1 %75, label %76, label %77, !dbg !551

; <label>:76:                                     ; preds = %62
  br label %89, !dbg !554

; <label>:77:                                     ; preds = %62
  %78 = load %struct.FILE_DCC_REC*, %struct.FILE_DCC_REC** %2, align 8, !dbg !556
  %79 = getelementptr inbounds %struct.FILE_DCC_REC, %struct.FILE_DCC_REC* %78, i32 0, i32 18, !dbg !558
  %80 = load i64, i64* %79, align 8, !dbg !558
  %81 = uitofp i64 %80 to double, !dbg !559
  %82 = load %struct.FILE_DCC_REC*, %struct.FILE_DCC_REC** %2, align 8, !dbg !560
  %83 = getelementptr inbounds %struct.FILE_DCC_REC, %struct.FILE_DCC_REC* %82, i32 0, i32 22, !dbg !561
  %84 = load i64, i64* %83, align 8, !dbg !561
  %85 = uitofp i64 %84 to double, !dbg !562
  %86 = fdiv double %81, %85, !dbg !563
  %87 = fmul double %86, 1.000000e+02, !dbg !564
  %88 = fptosi double %87 to i32, !dbg !565
  br label %89, !dbg !566

; <label>:89:                                     ; preds = %77, %76
  %90 = phi i32 [ 0, %76 ], [ %88, %77 ], !dbg !567
  %91 = load i64, i64* %8, align 8, !dbg !569
  %92 = uitofp i64 %91 to double, !dbg !570
  %93 = fdiv double %92, 1.024000e+03, !dbg !571
  %94 = load %struct.FILE_DCC_REC*, %struct.FILE_DCC_REC** %2, align 8, !dbg !572
  %95 = getelementptr inbounds %struct.FILE_DCC_REC, %struct.FILE_DCC_REC* %94, i32 0, i32 9, !dbg !573
  %96 = load i8*, i8** %95, align 8, !dbg !573
  %97 = getelementptr inbounds [20 x i8], [20 x i8]* %7, i32 0, i32 0, !dbg !574
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null, i32 65536, i32 43, i8* %65, i8* %69, i8* %70, i8* %71, i32 %90, double %93, i8* %96, i8* %97), !dbg !575
  %98 = load i8*, i8** %5, align 8, !dbg !576
  call void @g_free(i8* %98), !dbg !577
  %99 = load i8*, i8** %6, align 8, !dbg !578
  call void @g_free(i8* %99), !dbg !579
  ret void, !dbg !580
}

; Function Attrs: nounwind
declare i64 @time(i64*) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

declare i32 @g_snprintf(i8*, i64, i8*, ...) #2

declare void @printformat_module(i8*, i8*, i8*, i32, i32, ...) #2

declare i8* @module_find_id_str(i8*, i32) #2

declare void @g_free(i8*) #2

; Function Attrs: nounwind uwtable
define void @fe_irc_dcc_init() #0 !dbg !581 {
  call void @fe_dcc_chat_init(), !dbg !582
  call void @fe_dcc_get_init(), !dbg !583
  call void @fe_dcc_send_init(), !dbg !584
  call void @fe_dcc_server_init(), !dbg !585
  call void @signal_add_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.DCC_REC*)* @dcc_request to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !586
  call void @signal_add_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.DCC_REC*)* @dcc_rejected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !587
  call void @signal_add_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.DCC_REC*)* @dcc_request_send to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !588
  call void @signal_add_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.DCC_REC*)* @dcc_error_connect to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !589
  call void @signal_add_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @dcc_error_unknown_type to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !590
  call void @command_bind_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_dcc to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !591
  call void @command_bind_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_dcc_list to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !592
  call void @theme_register_module(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), %struct._FORMAT_REC* getelementptr inbounds ([0 x %struct._FORMAT_REC], [0 x %struct._FORMAT_REC]* @fecommon_irc_dcc_formats, i32 0, i32 0)), !dbg !593
  call void @settings_check_module(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0)), !dbg !594
  %1 = call %struct.MODULE_FILE_REC* @module_register_full(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0)), !dbg !595
  ret void, !dbg !596
}

declare void @fe_dcc_chat_init() #2

declare void @fe_dcc_get_init() #2

declare void @fe_dcc_send_init() #2

declare void @fe_dcc_server_init() #2

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @dcc_request(%struct.DCC_REC*) #0 !dbg !597 {
  %2 = alloca %struct.DCC_REC*, align 8
  %3 = alloca i8*, align 8
  store %struct.DCC_REC* %0, %struct.DCC_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.DCC_REC** %2, metadata !626, metadata !148), !dbg !627
  call void @llvm.dbg.declare(metadata i8** %3, metadata !628, metadata !148), !dbg !629
  br label %4, !dbg !630, !llvm.loop !631

; <label>:4:                                      ; preds = %1
  %5 = load %struct.DCC_REC*, %struct.DCC_REC** %2, align 8, !dbg !632
  %6 = icmp ne %struct.DCC_REC* %5, null, !dbg !636
  br i1 %6, label %7, label %8, !dbg !632

; <label>:7:                                      ; preds = %4
  br label %9, !dbg !637

; <label>:8:                                      ; preds = %4
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.dcc_request, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0)), !dbg !640
  br label %34, !dbg !643

; <label>:9:                                      ; preds = %7
  br label %10, !dbg !644

; <label>:10:                                     ; preds = %9
  %11 = load %struct.DCC_REC*, %struct.DCC_REC** %2, align 8, !dbg !646
  %12 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %11, i32 0, i32 12, !dbg !648
  %13 = load i32, i32* %12, align 4, !dbg !648
  %14 = icmp slt i32 %13, 1024, !dbg !649
  br i1 %14, label %15, label %34, !dbg !650

; <label>:15:                                     ; preds = %10
  %16 = load %struct.DCC_REC*, %struct.DCC_REC** %2, align 8, !dbg !651
  %17 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %16, i32 0, i32 12, !dbg !653
  %18 = load i32, i32* %17, align 4, !dbg !653
  %19 = call i8* @net_getservbyport(i32 %18), !dbg !654
  store i8* %19, i8** %3, align 8, !dbg !655
  %20 = load %struct.DCC_REC*, %struct.DCC_REC** %2, align 8, !dbg !656
  %21 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %20, i32 0, i32 3, !dbg !657
  %22 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %21, align 8, !dbg !657
  %23 = bitcast %struct._IRC_SERVER_REC* %22 to i8*, !dbg !656
  %24 = load %struct.DCC_REC*, %struct.DCC_REC** %2, align 8, !dbg !658
  %25 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %24, i32 0, i32 12, !dbg !656
  %26 = load i32, i32* %25, align 4, !dbg !656
  %27 = load i8*, i8** %3, align 8, !dbg !659
  %28 = icmp ne i8* %27, null, !dbg !660
  br i1 %28, label %29, label %31, !dbg !659

; <label>:29:                                     ; preds = %15
  %30 = load i8*, i8** %3, align 8, !dbg !661
  br label %32, !dbg !663

; <label>:31:                                     ; preds = %15
  br label %32, !dbg !664

; <label>:32:                                     ; preds = %31, %29
  %33 = phi i8* [ %30, %29 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), %31 ], !dbg !666
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i8* %23, i8* null, i32 65536, i32 40, i32 %26, i8* %33), !dbg !668
  br label %34, !dbg !669

; <label>:34:                                     ; preds = %8, %32, %10
  ret void, !dbg !670
}

; Function Attrs: nounwind uwtable
define internal void @dcc_rejected(%struct.DCC_REC*) #0 !dbg !671 {
  %2 = alloca %struct.DCC_REC*, align 8
  store %struct.DCC_REC* %0, %struct.DCC_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.DCC_REC** %2, metadata !672, metadata !148), !dbg !673
  br label %3, !dbg !674, !llvm.loop !675

; <label>:3:                                      ; preds = %1
  %4 = load %struct.DCC_REC*, %struct.DCC_REC** %2, align 8, !dbg !676
  %5 = icmp ne %struct.DCC_REC* %4, null, !dbg !680
  br i1 %5, label %6, label %7, !dbg !676

; <label>:6:                                      ; preds = %3
  br label %8, !dbg !681

; <label>:7:                                      ; preds = %3
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.dcc_rejected, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0)), !dbg !684
  br label %24, !dbg !687

; <label>:8:                                      ; preds = %6
  br label %9, !dbg !688

; <label>:9:                                      ; preds = %8
  %10 = load %struct.DCC_REC*, %struct.DCC_REC** %2, align 8, !dbg !690
  %11 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %10, i32 0, i32 3, !dbg !691
  %12 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %11, align 8, !dbg !691
  %13 = bitcast %struct._IRC_SERVER_REC* %12 to i8*, !dbg !690
  %14 = load %struct.DCC_REC*, %struct.DCC_REC** %2, align 8, !dbg !692
  %15 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %14, i32 0, i32 0, !dbg !693
  %16 = load i32, i32* %15, align 8, !dbg !693
  %17 = call i8* @module_find_id_str(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i32 %16), !dbg !694
  %18 = load %struct.DCC_REC*, %struct.DCC_REC** %2, align 8, !dbg !695
  %19 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %18, i32 0, i32 6, !dbg !696
  %20 = load i8*, i8** %19, align 8, !dbg !696
  %21 = load %struct.DCC_REC*, %struct.DCC_REC** %2, align 8, !dbg !697
  %22 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %21, i32 0, i32 9, !dbg !698
  %23 = load i8*, i8** %22, align 8, !dbg !698
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i8* %13, i8* null, i32 65536, i32 39, i8* %17, i8* %20, i8* %23), !dbg !699
  br label %24, !dbg !701

; <label>:24:                                     ; preds = %9, %7
  ret void, !dbg !702
}

; Function Attrs: nounwind uwtable
define internal void @dcc_request_send(%struct.DCC_REC*) #0 !dbg !703 {
  %2 = alloca %struct.DCC_REC*, align 8
  store %struct.DCC_REC* %0, %struct.DCC_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.DCC_REC** %2, metadata !704, metadata !148), !dbg !705
  br label %3, !dbg !706, !llvm.loop !707

; <label>:3:                                      ; preds = %1
  %4 = load %struct.DCC_REC*, %struct.DCC_REC** %2, align 8, !dbg !708
  %5 = icmp ne %struct.DCC_REC* %4, null, !dbg !712
  br i1 %5, label %6, label %7, !dbg !708

; <label>:6:                                      ; preds = %3
  br label %8, !dbg !713

; <label>:7:                                      ; preds = %3
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.dcc_request_send, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0)), !dbg !716
  br label %24, !dbg !719

; <label>:8:                                      ; preds = %6
  br label %9, !dbg !720

; <label>:9:                                      ; preds = %8
  %10 = load %struct.DCC_REC*, %struct.DCC_REC** %2, align 8, !dbg !722
  %11 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %10, i32 0, i32 3, !dbg !723
  %12 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %11, align 8, !dbg !723
  %13 = bitcast %struct._IRC_SERVER_REC* %12 to i8*, !dbg !722
  %14 = load %struct.DCC_REC*, %struct.DCC_REC** %2, align 8, !dbg !724
  %15 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %14, i32 0, i32 0, !dbg !725
  %16 = load i32, i32* %15, align 8, !dbg !725
  %17 = call i8* @module_find_id_str(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i32 %16), !dbg !726
  %18 = load %struct.DCC_REC*, %struct.DCC_REC** %2, align 8, !dbg !727
  %19 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %18, i32 0, i32 6, !dbg !728
  %20 = load i8*, i8** %19, align 8, !dbg !728
  %21 = load %struct.DCC_REC*, %struct.DCC_REC** %2, align 8, !dbg !729
  %22 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %21, i32 0, i32 9, !dbg !730
  %23 = load i8*, i8** %22, align 8, !dbg !730
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i8* %13, i8* null, i32 65536, i32 38, i8* %17, i8* %20, i8* %23), !dbg !731
  br label %24, !dbg !733

; <label>:24:                                     ; preds = %9, %7
  ret void, !dbg !734
}

; Function Attrs: nounwind uwtable
define internal void @dcc_error_connect(%struct.DCC_REC*) #0 !dbg !735 {
  %2 = alloca %struct.DCC_REC*, align 8
  store %struct.DCC_REC* %0, %struct.DCC_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.DCC_REC** %2, metadata !736, metadata !148), !dbg !737
  br label %3, !dbg !738, !llvm.loop !739

; <label>:3:                                      ; preds = %1
  %4 = load %struct.DCC_REC*, %struct.DCC_REC** %2, align 8, !dbg !740
  %5 = icmp ne %struct.DCC_REC* %4, null, !dbg !744
  br i1 %5, label %6, label %7, !dbg !740

; <label>:6:                                      ; preds = %3
  br label %8, !dbg !745

; <label>:7:                                      ; preds = %3
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.dcc_error_connect, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0)), !dbg !748
  br label %20, !dbg !751

; <label>:8:                                      ; preds = %6
  br label %9, !dbg !752

; <label>:9:                                      ; preds = %8
  %10 = load %struct.DCC_REC*, %struct.DCC_REC** %2, align 8, !dbg !754
  %11 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %10, i32 0, i32 3, !dbg !755
  %12 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %11, align 8, !dbg !755
  %13 = bitcast %struct._IRC_SERVER_REC* %12 to i8*, !dbg !754
  %14 = load %struct.DCC_REC*, %struct.DCC_REC** %2, align 8, !dbg !756
  %15 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %14, i32 0, i32 11, !dbg !757
  %16 = getelementptr inbounds [46 x i8], [46 x i8]* %15, i32 0, i32 0, !dbg !756
  %17 = load %struct.DCC_REC*, %struct.DCC_REC** %2, align 8, !dbg !758
  %18 = getelementptr inbounds %struct.DCC_REC, %struct.DCC_REC* %17, i32 0, i32 12, !dbg !759
  %19 = load i32, i32* %18, align 4, !dbg !759
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i8* %13, i8* null, i32 65536, i32 35, i8* %16, i32 %19), !dbg !760
  br label %20, !dbg !761

; <label>:20:                                     ; preds = %9, %7
  ret void, !dbg !762
}

; Function Attrs: nounwind uwtable
define internal void @dcc_error_unknown_type(i8*) #0 !dbg !764 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !767, metadata !148), !dbg !768
  br label %3, !dbg !769, !llvm.loop !770

; <label>:3:                                      ; preds = %1
  %4 = load i8*, i8** %2, align 8, !dbg !771
  %5 = icmp ne i8* %4, null, !dbg !775
  br i1 %5, label %6, label %7, !dbg !771

; <label>:6:                                      ; preds = %3
  br label %8, !dbg !776

; <label>:7:                                      ; preds = %3
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.dcc_error_unknown_type, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0)), !dbg !779
  br label %11, !dbg !782

; <label>:8:                                      ; preds = %6
  br label %9, !dbg !783

; <label>:9:                                      ; preds = %8
  %10 = load i8*, i8** %2, align 8, !dbg !785
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null, i32 65536, i32 33, i8* %10), !dbg !786
  br label %11, !dbg !787

; <label>:11:                                     ; preds = %9, %7
  ret void, !dbg !788
}

declare void @command_bind_full(i8*, i32, i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @cmd_dcc(i8*) #0 !dbg !790 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !791, metadata !148), !dbg !792
  %3 = load i8*, i8** %2, align 8, !dbg !793
  %4 = load i8, i8* %3, align 1, !dbg !795
  %5 = sext i8 %4 to i32, !dbg !795
  %6 = icmp eq i32 %5, 0, !dbg !796
  br i1 %6, label %7, label %9, !dbg !797

; <label>:7:                                      ; preds = %1
  %8 = load i8*, i8** %2, align 8, !dbg !798
  call void @cmd_dcc_list(i8* %8), !dbg !800
  call void @signal_stop(), !dbg !801
  br label %9, !dbg !802

; <label>:9:                                      ; preds = %7, %1
  ret void, !dbg !803
}

; Function Attrs: nounwind uwtable
define internal void @cmd_dcc_list(i8*) #0 !dbg !804 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._GSList*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !805, metadata !148), !dbg !806
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !807, metadata !148), !dbg !808
  br label %4, !dbg !809, !llvm.loop !810

; <label>:4:                                      ; preds = %1
  %5 = load i8*, i8** %2, align 8, !dbg !811
  %6 = icmp ne i8* %5, null, !dbg !815
  br i1 %6, label %7, label %8, !dbg !811

; <label>:7:                                      ; preds = %4
  br label %9, !dbg !816

; <label>:8:                                      ; preds = %4
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.cmd_dcc_list, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0)), !dbg !819
  br label %25, !dbg !822

; <label>:9:                                      ; preds = %7
  br label %10, !dbg !823

; <label>:10:                                     ; preds = %9
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null, i32 65536, i32 41), !dbg !825
  %11 = load %struct._GSList*, %struct._GSList** @dcc_conns, align 8, !dbg !826
  store %struct._GSList* %11, %struct._GSList** %3, align 8, !dbg !828
  br label %12, !dbg !829

; <label>:12:                                     ; preds = %20, %10
  %13 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !830
  %14 = icmp ne %struct._GSList* %13, null, !dbg !833
  br i1 %14, label %15, label %24, !dbg !834

; <label>:15:                                     ; preds = %12
  %16 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !835
  %17 = getelementptr inbounds %struct._GSList, %struct._GSList* %16, i32 0, i32 0, !dbg !836
  %18 = load i8*, i8** %17, align 8, !dbg !836
  %19 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0), i32 1, i8* %18), !dbg !837
  br label %20, !dbg !837

; <label>:20:                                     ; preds = %15
  %21 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !838
  %22 = getelementptr inbounds %struct._GSList, %struct._GSList* %21, i32 0, i32 1, !dbg !840
  %23 = load %struct._GSList*, %struct._GSList** %22, align 8, !dbg !840
  store %struct._GSList* %23, %struct._GSList** %3, align 8, !dbg !841
  br label %12, !dbg !842, !llvm.loop !843

; <label>:24:                                     ; preds = %12
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* null, i32 65536, i32 45), !dbg !845
  br label %25, !dbg !846

; <label>:25:                                     ; preds = %24, %8
  ret void, !dbg !847
}

declare void @theme_register_module(i8*, %struct._FORMAT_REC*) #2

declare void @settings_check_module(i8*) #2

declare %struct.MODULE_FILE_REC* @module_register_full(i8*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @fe_irc_dcc_deinit() #0 !dbg !849 {
  call void @fe_dcc_chat_deinit(), !dbg !850
  call void @fe_dcc_get_deinit(), !dbg !851
  call void @fe_dcc_send_deinit(), !dbg !852
  call void @fe_dcc_server_deinit(), !dbg !853
  call void @theme_unregister_module(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0)), !dbg !854
  call void @signal_remove_full(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.DCC_REC*)* @dcc_request to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !855
  call void @signal_remove_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.DCC_REC*)* @dcc_rejected to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !856
  call void @signal_remove_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.DCC_REC*)* @dcc_request_send to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !857
  call void @signal_remove_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.DCC_REC*)* @dcc_error_connect to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !858
  call void @signal_remove_full(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @dcc_error_unknown_type to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !859
  call void @command_unbind_full(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_dcc to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !860
  call void @command_unbind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_dcc_list to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !861
  ret void, !dbg !862
}

declare void @fe_dcc_chat_deinit() #2

declare void @fe_dcc_get_deinit() #2

declare void @fe_dcc_send_deinit() #2

declare void @fe_dcc_server_deinit() #2

declare void @theme_unregister_module(i8*) #2

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare void @command_unbind_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare i8* @net_getservbyport(i32) #2

declare void @signal_stop() #2

declare i32 @signal_emit(i8*, i32, ...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!135, !136}
!llvm.ident = !{!137}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !118)
!1 = !DIFile(filename: "line274-fe-dcc.o.i", directory: "/home/lichi/Desktop/irssi/task1")
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
!118 = !{!119, !120, !121, !122, !129, !133}
!119 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!121 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !123, line: 9, baseType: !124)
!123 = !DIFile(filename: "../../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!125 = !DISubroutineType(types: !126)
!126 = !{null, !127, !127, !127, !127, !127, !127}
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !131, line: 46, baseType: !132)
!131 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!132 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64, align: 64)
!134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!135 = !{i32 2, !"Dwarf Version", i32 4}
!136 = !{i32 2, !"Debug Info Version", i32 3}
!137 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!138 = distinct !DISubprogram(name: "dcc_get_size_str", scope: !139, file: !139, line: 49, type: !140, isLocal: false, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !146)
!139 = !DIFile(filename: "fe-dcc.c", directory: "/home/lichi/Desktop/irssi/task1")
!140 = !DISubroutineType(types: !141)
!141 = !{!142, !143}
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64, align: 64)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "uoff_t", file: !144, line: 49, baseType: !145)
!144 = !DIFile(filename: "../../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!145 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!146 = !{}
!147 = !DILocalVariable(name: "size", arg: 1, scope: !138, file: !139, line: 49, type: !143)
!148 = !DIExpression()
!149 = !DILocation(line: 49, column: 31, scope: !138)
!150 = !DILocation(line: 51, column: 6, scope: !151)
!151 = distinct !DILexicalBlock(scope: !138, file: !139, line: 51, column: 6)
!152 = !DILocation(line: 51, column: 11, scope: !151)
!153 = !DILocation(line: 51, column: 6, scope: !138)
!154 = !DILocation(line: 52, column: 38, scope: !151)
!155 = !DILocation(line: 52, column: 10, scope: !151)
!156 = !DILocation(line: 52, column: 3, scope: !151)
!157 = !DILocation(line: 53, column: 6, scope: !158)
!158 = distinct !DILexicalBlock(scope: !138, file: !139, line: 53, column: 6)
!159 = !DILocation(line: 53, column: 11, scope: !158)
!160 = !DILocation(line: 53, column: 6, scope: !138)
!161 = !DILocation(line: 54, column: 40, scope: !158)
!162 = !DILocation(line: 54, column: 44, scope: !158)
!163 = !DILocation(line: 54, column: 51, scope: !158)
!164 = !DILocation(line: 54, column: 10, scope: !158)
!165 = !DILocation(line: 54, column: 3, scope: !158)
!166 = !DILocation(line: 55, column: 38, scope: !138)
!167 = !DILocation(line: 55, column: 43, scope: !138)
!168 = !DILocation(line: 55, column: 9, scope: !138)
!169 = !DILocation(line: 55, column: 2, scope: !138)
!170 = !DILocation(line: 56, column: 1, scope: !138)
!171 = distinct !DISubprogram(name: "dcc_list_print_file", scope: !139, file: !139, line: 105, type: !172, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !146)
!172 = !DISubroutineType(types: !173)
!173 = !{null, !174}
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64, align: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE_DCC_REC", file: !176, line: 8, baseType: !177)
!176 = !DIFile(filename: "../../../../src/irc/dcc/dcc-file.h", directory: "/home/lichi/Desktop/irssi/task1")
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !176, line: 6, size: 1856, align: 64, elements: !178)
!178 = !{!179, !181, !182, !188, !193, !194, !195, !196, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !464, !465, !466, !467, !469}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !177, file: !180, line: 1, baseType: !119, size: 32, align: 32)
!180 = !DIFile(filename: "../../../../src/irc/dcc/dcc-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!181 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !177, file: !180, line: 2, baseType: !119, size: 32, align: 32, offset: 32)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "created", scope: !177, file: !180, line: 3, baseType: !183, size: 64, align: 64, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !184, line: 75, baseType: !185)
!184 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !186, line: 139, baseType: !187)
!186 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!187 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !177, file: !180, line: 5, baseType: !189, size: 64, align: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64, align: 64)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_REC", file: !191, line: 6, baseType: !192)
!191 = !DIFile(filename: "../../../../src/irc/core/irc.h", directory: "/home/lichi/Desktop/irssi/task1")
!192 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_REC", file: !191, line: 6, flags: DIFlagFwdDecl)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !177, file: !180, line: 6, baseType: !142, size: 64, align: 64, offset: 192)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "mynick", scope: !177, file: !180, line: 7, baseType: !142, size: 64, align: 64, offset: 256)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !177, file: !180, line: 8, baseType: !142, size: 64, align: 64, offset: 320)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "chat", scope: !177, file: !180, line: 10, baseType: !197, size: 64, align: 64, offset: 384)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64, align: 64)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHAT_DCC_REC", file: !199, line: 9, baseType: !200)
!199 = !DIFile(filename: "../../../../src/irc/dcc/dcc.h", directory: "/home/lichi/Desktop/irssi/task1")
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CHAT_DCC_REC", file: !201, line: 12, size: 1792, align: 64, elements: !202)
!201 = !DIFile(filename: "../../../../src/irc/dcc/dcc-chat.h", directory: "/home/lichi/Desktop/irssi/task1")
!202 = !{!203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !245, !249, !250, !429, !430, !431, !432, !433, !434, !435, !436, !441, !442, !446, !447}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !200, file: !180, line: 1, baseType: !119, size: 32, align: 32)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !200, file: !180, line: 2, baseType: !119, size: 32, align: 32, offset: 32)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "created", scope: !200, file: !180, line: 3, baseType: !183, size: 64, align: 64, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !200, file: !180, line: 5, baseType: !189, size: 64, align: 64, offset: 128)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !200, file: !180, line: 6, baseType: !142, size: 64, align: 64, offset: 192)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "mynick", scope: !200, file: !180, line: 7, baseType: !142, size: 64, align: 64, offset: 256)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !200, file: !180, line: 8, baseType: !142, size: 64, align: 64, offset: 320)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "chat", scope: !200, file: !180, line: 10, baseType: !197, size: 64, align: 64, offset: 384)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !200, file: !180, line: 11, baseType: !142, size: 64, align: 64, offset: 448)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !200, file: !180, line: 12, baseType: !142, size: 64, align: 64, offset: 512)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !200, file: !180, line: 14, baseType: !214, size: 160, align: 32, offset: 576)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !144, line: 99, baseType: !215)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !216, line: 22, size: 160, align: 32, elements: !217)
!216 = !DIFile(filename: "../../../../src/core/network.h", directory: "/home/lichi/Desktop/irssi/task1")
!217 = !{!218, !220}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !215, file: !216, line: 23, baseType: !219, size: 16, align: 16)
!219 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !215, file: !216, line: 24, baseType: !221, size: 128, align: 32, offset: 32)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !222, line: 211, size: 128, align: 32, elements: !223)
!222 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/irssi/task1")
!223 = !{!224}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !221, file: !222, line: 220, baseType: !225, size: 128, align: 32)
!225 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !221, file: !222, line: 213, size: 128, align: 32, elements: !226)
!226 = !{!227, !234, !239}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !225, file: !222, line: 215, baseType: !228, size: 128, align: 8)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 128, align: 8, elements: !232)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !230, line: 48, baseType: !231)
!230 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/irssi/task1")
!231 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!232 = !{!233}
!233 = !DISubrange(count: 16)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !225, file: !222, line: 217, baseType: !235, size: 128, align: 16)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !236, size: 128, align: 16, elements: !237)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !230, line: 49, baseType: !219)
!237 = !{!238}
!238 = !DISubrange(count: 8)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !225, file: !222, line: 218, baseType: !240, size: 128, align: 32)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 128, align: 32, elements: !243)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !230, line: 51, baseType: !242)
!242 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!243 = !{!244}
!244 = !DISubrange(count: 4)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "addrstr", scope: !200, file: !180, line: 15, baseType: !246, size: 368, align: 8, offset: 736)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 368, align: 8, elements: !247)
!247 = !{!248}
!248 = !DISubrange(count: 46)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !200, file: !180, line: 16, baseType: !119, size: 32, align: 32, offset: 1120)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !200, file: !180, line: 18, baseType: !251, size: 64, align: 64, offset: 1152)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64, align: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !253)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !254)
!254 = !{!255, !257, !396, !397, !402, !403, !404, !405, !406, !415, !416, !417, !421, !422, !423, !424, !425, !426, !427, !428}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !253, file: !4, line: 100, baseType: !256, size: 32, align: 32)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !131, line: 49, baseType: !119)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !253, file: !4, line: 101, baseType: !258, size: 64, align: 64, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64, align: 64)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !260)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !261)
!261 = !{!262, !282, !288, !294, !298, !383, !387, !392}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !260, file: !4, line: 133, baseType: !263, size: 64, align: 64)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64, align: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{!266, !251, !129, !267, !269, !270}
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !268, line: 66, baseType: !145)
!268 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64, align: 64)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64, align: 64)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !273, line: 42, baseType: !274)
!273 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !273, line: 44, size: 128, align: 64, elements: !275)
!275 = !{!276, !280, !281}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !274, file: !273, line: 46, baseType: !277, size: 32, align: 32)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !278, line: 36, baseType: !279)
!278 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !268, line: 45, baseType: !242)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !274, file: !273, line: 47, baseType: !256, size: 32, align: 32, offset: 32)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !274, file: !273, line: 48, baseType: !129, size: 64, align: 64, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !260, file: !4, line: 138, baseType: !283, size: 64, align: 64, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64, align: 64)
!284 = !DISubroutineType(types: !285)
!285 = !{!266, !251, !286, !267, !269, !270}
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64, align: 64)
!287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !260, file: !4, line: 143, baseType: !289, size: 64, align: 64, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!290 = !DISubroutineType(types: !291)
!291 = !{!266, !251, !292, !293, !270}
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !268, line: 51, baseType: !187)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !260, file: !4, line: 147, baseType: !295, size: 64, align: 64, offset: 192)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64, align: 64)
!296 = !DISubroutineType(types: !297)
!297 = !{!266, !251, !270}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !260, file: !4, line: 149, baseType: !299, size: 64, align: 64, offset: 256)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!300 = !DISubroutineType(types: !301)
!301 = !{!302, !251, !382}
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64, align: 64)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !304)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !305)
!305 = !{!306, !308, !329, !358, !360, !364, !365, !366, !367, !375, !376, !377, !378}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !304, file: !16, line: 174, baseType: !307, size: 64, align: 64)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !131, line: 77, baseType: !120)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !304, file: !16, line: 175, baseType: !309, size: 64, align: 64, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64, align: 64)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !311)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !312)
!312 = !{!313, !317, !318}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !311, file: !16, line: 198, baseType: !314, size: 64, align: 64)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64, align: 64)
!315 = !DISubroutineType(types: !316)
!316 = !{null, !307}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !311, file: !16, line: 199, baseType: !314, size: 64, align: 64, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !311, file: !16, line: 200, baseType: !319, size: 64, align: 64, offset: 128)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64, align: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{null, !307, !302, !322, !328}
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64, align: 64)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !324)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64, align: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{!327, !307}
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !131, line: 50, baseType: !256)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64, align: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !304, file: !16, line: 177, baseType: !330, size: 64, align: 64, offset: 128)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64, align: 64)
!331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !333)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !334)
!334 = !{!335, !340, !344, !348, !352, !353}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !333, file: !16, line: 216, baseType: !336, size: 64, align: 64)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64, align: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{!327, !302, !339}
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64, align: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !333, file: !16, line: 218, baseType: !341, size: 64, align: 64, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64, align: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{!327, !302}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !333, file: !16, line: 219, baseType: !345, size: 64, align: 64, offset: 128)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64, align: 64)
!346 = !DISubroutineType(types: !347)
!347 = !{!327, !302, !323, !307}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !333, file: !16, line: 222, baseType: !349, size: 64, align: 64, offset: 192)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64, align: 64)
!350 = !DISubroutineType(types: !351)
!351 = !{null, !302}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !333, file: !16, line: 226, baseType: !323, size: 64, align: 64, offset: 256)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !333, file: !16, line: 227, baseType: !354, size: 64, align: 64, offset: 320)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !355)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64, align: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{null}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !304, file: !16, line: 178, baseType: !359, size: 32, align: 32, offset: 192)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !131, line: 55, baseType: !242)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !304, file: !16, line: 180, baseType: !361, size: 64, align: 64, offset: 256)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64, align: 64)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !363)
!363 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !304, file: !16, line: 182, baseType: !256, size: 32, align: 32, offset: 320)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !304, file: !16, line: 183, baseType: !359, size: 32, align: 32, offset: 352)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !304, file: !16, line: 184, baseType: !359, size: 32, align: 32, offset: 384)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !304, file: !16, line: 186, baseType: !368, size: 64, align: 64, offset: 448)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64, align: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !370, line: 37, baseType: !371)
!370 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !370, line: 39, size: 128, align: 64, elements: !372)
!372 = !{!373, !374}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !371, file: !370, line: 41, baseType: !307, size: 64, align: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !371, file: !370, line: 42, baseType: !368, size: 64, align: 64, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !304, file: !16, line: 188, baseType: !302, size: 64, align: 64, offset: 512)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !304, file: !16, line: 189, baseType: !302, size: 64, align: 64, offset: 576)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !304, file: !16, line: 191, baseType: !142, size: 64, align: 64, offset: 640)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !304, file: !16, line: 193, baseType: !379, size: 64, align: 64, offset: 704)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64, align: 64)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !381)
!381 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !260, file: !4, line: 151, baseType: !384, size: 64, align: 64, offset: 320)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64, align: 64)
!385 = !DISubroutineType(types: !386)
!386 = !{null, !251}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !260, file: !4, line: 152, baseType: !388, size: 64, align: 64, offset: 384)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64, align: 64)
!389 = !DISubroutineType(types: !390)
!390 = !{!266, !251, !391, !270}
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !260, file: !4, line: 155, baseType: !393, size: 64, align: 64, offset: 448)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64, align: 64)
!394 = !DISubroutineType(types: !395)
!395 = !{!391, !251}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !253, file: !4, line: 103, baseType: !129, size: 64, align: 64, offset: 128)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !253, file: !4, line: 104, baseType: !398, size: 64, align: 64, offset: 192)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !399, line: 77, baseType: !400)
!399 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64, align: 64)
!401 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !399, line: 77, flags: DIFlagFwdDecl)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !253, file: !4, line: 105, baseType: !398, size: 64, align: 64, offset: 256)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !253, file: !4, line: 106, baseType: !129, size: 64, align: 64, offset: 320)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !253, file: !4, line: 107, baseType: !359, size: 32, align: 32, offset: 384)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !253, file: !4, line: 109, baseType: !267, size: 64, align: 64, offset: 448)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !253, file: !4, line: 110, baseType: !407, size: 64, align: 64, offset: 512)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64, align: 64)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !409, line: 39, baseType: !410)
!409 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !409, line: 41, size: 192, align: 64, elements: !411)
!411 = !{!412, !413, !414}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !410, file: !409, line: 43, baseType: !129, size: 64, align: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !410, file: !409, line: 44, baseType: !267, size: 64, align: 64, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !410, file: !409, line: 45, baseType: !267, size: 64, align: 64, offset: 128)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !253, file: !4, line: 111, baseType: !407, size: 64, align: 64, offset: 576)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !253, file: !4, line: 112, baseType: !407, size: 64, align: 64, offset: 640)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !253, file: !4, line: 113, baseType: !418, size: 48, align: 8, offset: 704)
!418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 48, align: 8, elements: !419)
!419 = !{!420}
!420 = !DISubrange(count: 6)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !253, file: !4, line: 117, baseType: !359, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !253, file: !4, line: 118, baseType: !359, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !253, file: !4, line: 119, baseType: !359, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !253, file: !4, line: 120, baseType: !359, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !253, file: !4, line: 121, baseType: !359, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !253, file: !4, line: 122, baseType: !359, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !253, file: !4, line: 124, baseType: !307, size: 64, align: 64, offset: 768)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !253, file: !4, line: 125, baseType: !307, size: 64, align: 64, offset: 832)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "tagconn", scope: !200, file: !180, line: 19, baseType: !119, size: 32, align: 32, offset: 1216)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "tagread", scope: !200, file: !180, line: 19, baseType: !119, size: 32, align: 32, offset: 1248)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "tagwrite", scope: !200, file: !180, line: 19, baseType: !119, size: 32, align: 32, offset: 1280)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "starttime", scope: !200, file: !180, line: 20, baseType: !183, size: 64, align: 64, offset: 1344)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "transfd", scope: !200, file: !180, line: 21, baseType: !143, size: 64, align: 64, offset: 1408)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "pasv_id", scope: !200, file: !180, line: 23, baseType: !119, size: 32, align: 32, offset: 1472)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "destroyed", scope: !200, file: !180, line: 25, baseType: !242, size: 1, align: 32, offset: 1504, flags: DIFlagBitField, extraData: i64 1504)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !200, file: !180, line: 27, baseType: !437, size: 64, align: 64, offset: 1536)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64, align: 64)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !439, line: 37, baseType: !440)
!439 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!440 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !439, line: 37, flags: DIFlagFwdDecl)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !200, file: !201, line: 15, baseType: !142, size: 64, align: 64, offset: 1600)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "sendbuf", scope: !200, file: !201, line: 16, baseType: !443, size: 64, align: 64, offset: 1664)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64, align: 64)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !144, line: 102, baseType: !445)
!445 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !144, line: 102, flags: DIFlagFwdDecl)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "mirc_ctcp", scope: !200, file: !201, line: 18, baseType: !242, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !200, file: !201, line: 19, baseType: !242, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !177, file: !180, line: 11, baseType: !142, size: 64, align: 64, offset: 448)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !177, file: !180, line: 12, baseType: !142, size: 64, align: 64, offset: 512)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !177, file: !180, line: 14, baseType: !214, size: 160, align: 32, offset: 576)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "addrstr", scope: !177, file: !180, line: 15, baseType: !246, size: 368, align: 8, offset: 736)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !177, file: !180, line: 16, baseType: !119, size: 32, align: 32, offset: 1120)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !177, file: !180, line: 18, baseType: !251, size: 64, align: 64, offset: 1152)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "tagconn", scope: !177, file: !180, line: 19, baseType: !119, size: 32, align: 32, offset: 1216)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "tagread", scope: !177, file: !180, line: 19, baseType: !119, size: 32, align: 32, offset: 1248)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "tagwrite", scope: !177, file: !180, line: 19, baseType: !119, size: 32, align: 32, offset: 1280)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "starttime", scope: !177, file: !180, line: 20, baseType: !183, size: 64, align: 64, offset: 1344)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "transfd", scope: !177, file: !180, line: 21, baseType: !143, size: 64, align: 64, offset: 1408)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "pasv_id", scope: !177, file: !180, line: 23, baseType: !119, size: 32, align: 32, offset: 1472)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "destroyed", scope: !177, file: !180, line: 25, baseType: !242, size: 1, align: 32, offset: 1504, flags: DIFlagBitField, extraData: i64 1504)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !177, file: !180, line: 27, baseType: !437, size: 64, align: 64, offset: 1536)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !177, file: !463, line: 3, baseType: !143, size: 64, align: 64, offset: 1600)
!463 = !DIFile(filename: "../../../../src/irc/dcc/dcc-file-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!464 = !DIDerivedType(tag: DW_TAG_member, name: "skipped", scope: !177, file: !463, line: 3, baseType: !143, size: 64, align: 64, offset: 1664)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "fhandle", scope: !177, file: !463, line: 4, baseType: !119, size: 32, align: 32, offset: 1728)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !177, file: !463, line: 5, baseType: !119, size: 32, align: 32, offset: 1760)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "count_buf", scope: !177, file: !463, line: 8, baseType: !468, size: 32, align: 8, offset: 1792)
!468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 32, align: 8, elements: !243)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "count_pos", scope: !177, file: !463, line: 9, baseType: !119, size: 32, align: 32, offset: 1824)
!470 = !DILocalVariable(name: "dcc", arg: 1, scope: !171, file: !139, line: 105, type: !174)
!471 = !DILocation(line: 105, column: 40, scope: !171)
!472 = !DILocalVariable(name: "going", scope: !171, file: !139, line: 107, type: !183)
!473 = !DILocation(line: 107, column: 9, scope: !171)
!474 = !DILocalVariable(name: "eta", scope: !171, file: !139, line: 107, type: !183)
!475 = !DILocation(line: 107, column: 16, scope: !171)
!476 = !DILocalVariable(name: "transfd_str", scope: !171, file: !139, line: 108, type: !142)
!477 = !DILocation(line: 108, column: 8, scope: !171)
!478 = !DILocalVariable(name: "size_str", scope: !171, file: !139, line: 108, type: !142)
!479 = !DILocation(line: 108, column: 22, scope: !171)
!480 = !DILocalVariable(name: "etastr", scope: !171, file: !139, line: 108, type: !481)
!481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 160, align: 8, elements: !482)
!482 = !{!483}
!483 = !DISubrange(count: 20)
!484 = !DILocation(line: 108, column: 32, scope: !171)
!485 = !DILocalVariable(name: "bps", scope: !171, file: !139, line: 109, type: !143)
!486 = !DILocation(line: 109, column: 9, scope: !171)
!487 = !DILocation(line: 111, column: 10, scope: !171)
!488 = !DILocation(line: 111, column: 22, scope: !171)
!489 = !DILocation(line: 111, column: 27, scope: !171)
!490 = !DILocation(line: 111, column: 20, scope: !171)
!491 = !DILocation(line: 111, column: 8, scope: !171)
!492 = !DILocation(line: 112, column: 6, scope: !493)
!493 = distinct !DILexicalBlock(scope: !171, file: !139, line: 112, column: 6)
!494 = !DILocation(line: 112, column: 12, scope: !493)
!495 = !DILocation(line: 112, column: 6, scope: !171)
!496 = !DILocation(line: 112, column: 24, scope: !497)
!497 = !DILexicalBlockFile(scope: !493, file: !139, discriminator: 1)
!498 = !DILocation(line: 112, column: 18, scope: !497)
!499 = !DILocation(line: 114, column: 33, scope: !171)
!500 = !DILocation(line: 114, column: 38, scope: !171)
!501 = !DILocation(line: 114, column: 16, scope: !171)
!502 = !DILocation(line: 114, column: 14, scope: !171)
!503 = !DILocation(line: 115, column: 30, scope: !171)
!504 = !DILocation(line: 115, column: 35, scope: !171)
!505 = !DILocation(line: 115, column: 13, scope: !171)
!506 = !DILocation(line: 115, column: 11, scope: !171)
!507 = !DILocation(line: 117, column: 9, scope: !171)
!508 = !DILocation(line: 117, column: 14, scope: !171)
!509 = !DILocation(line: 117, column: 22, scope: !171)
!510 = !DILocation(line: 117, column: 27, scope: !171)
!511 = !DILocation(line: 117, column: 21, scope: !171)
!512 = !DILocation(line: 117, column: 38, scope: !171)
!513 = !DILocation(line: 117, column: 36, scope: !171)
!514 = !DILocation(line: 117, column: 6, scope: !171)
!515 = !DILocation(line: 118, column: 6, scope: !516)
!516 = distinct !DILexicalBlock(scope: !171, file: !139, line: 118, column: 6)
!517 = !DILocation(line: 118, column: 10, scope: !516)
!518 = !DILocation(line: 118, column: 6, scope: !171)
!519 = !DILocation(line: 119, column: 10, scope: !520)
!520 = distinct !DILexicalBlock(scope: !516, file: !139, line: 118, column: 16)
!521 = !DILocation(line: 119, column: 3, scope: !520)
!522 = !DILocation(line: 120, column: 2, scope: !520)
!523 = !DILocation(line: 121, column: 10, scope: !524)
!524 = distinct !DILexicalBlock(scope: !516, file: !139, line: 120, column: 9)
!525 = !DILocation(line: 121, column: 15, scope: !524)
!526 = !DILocation(line: 121, column: 22, scope: !524)
!527 = !DILocation(line: 121, column: 27, scope: !524)
!528 = !DILocation(line: 121, column: 20, scope: !524)
!529 = !DILocation(line: 121, column: 38, scope: !524)
!530 = !DILocation(line: 121, column: 36, scope: !524)
!531 = !DILocation(line: 121, column: 7, scope: !524)
!532 = !DILocation(line: 122, column: 14, scope: !524)
!533 = !DILocation(line: 123, column: 13, scope: !524)
!534 = !DILocation(line: 123, column: 16, scope: !524)
!535 = !DILocation(line: 123, column: 7, scope: !524)
!536 = !DILocation(line: 123, column: 31, scope: !524)
!537 = !DILocation(line: 123, column: 34, scope: !524)
!538 = !DILocation(line: 123, column: 38, scope: !524)
!539 = !DILocation(line: 123, column: 24, scope: !524)
!540 = !DILocation(line: 123, column: 50, scope: !524)
!541 = !DILocation(line: 123, column: 53, scope: !524)
!542 = !DILocation(line: 123, column: 44, scope: !524)
!543 = !DILocation(line: 122, column: 3, scope: !524)
!544 = !DILocation(line: 126, column: 44, scope: !171)
!545 = !DILocation(line: 126, column: 49, scope: !171)
!546 = !DILocation(line: 126, column: 82, scope: !171)
!547 = !DILocation(line: 126, column: 87, scope: !171)
!548 = !DILocation(line: 126, column: 56, scope: !171)
!549 = !DILocation(line: 126, column: 95, scope: !171)
!550 = !DILocation(line: 126, column: 108, scope: !171)
!551 = !DILocation(line: 126, column: 118, scope: !171)
!552 = !DILocation(line: 126, column: 123, scope: !171)
!553 = !DILocation(line: 126, column: 128, scope: !171)
!554 = !DILocation(line: 126, column: 118, scope: !555)
!555 = !DILexicalBlockFile(scope: !171, file: !139, discriminator: 1)
!556 = !DILocation(line: 126, column: 153, scope: !557)
!557 = !DILexicalBlockFile(scope: !171, file: !139, discriminator: 2)
!558 = !DILocation(line: 126, column: 158, scope: !557)
!559 = !DILocation(line: 126, column: 145, scope: !557)
!560 = !DILocation(line: 126, column: 174, scope: !557)
!561 = !DILocation(line: 126, column: 179, scope: !557)
!562 = !DILocation(line: 126, column: 166, scope: !557)
!563 = !DILocation(line: 126, column: 165, scope: !557)
!564 = !DILocation(line: 126, column: 183, scope: !557)
!565 = !DILocation(line: 126, column: 139, scope: !557)
!566 = !DILocation(line: 126, column: 118, scope: !557)
!567 = !DILocation(line: 126, column: 118, scope: !568)
!568 = !DILexicalBlockFile(scope: !171, file: !139, discriminator: 3)
!569 = !DILocation(line: 126, column: 200, scope: !568)
!570 = !DILocation(line: 126, column: 192, scope: !568)
!571 = !DILocation(line: 126, column: 203, scope: !568)
!572 = !DILocation(line: 126, column: 212, scope: !568)
!573 = !DILocation(line: 126, column: 217, scope: !568)
!574 = !DILocation(line: 126, column: 222, scope: !568)
!575 = !DILocation(line: 126, column: 2, scope: !568)
!576 = !DILocation(line: 133, column: 9, scope: !171)
!577 = !DILocation(line: 133, column: 2, scope: !171)
!578 = !DILocation(line: 134, column: 9, scope: !171)
!579 = !DILocation(line: 134, column: 2, scope: !171)
!580 = !DILocation(line: 135, column: 1, scope: !171)
!581 = distinct !DISubprogram(name: "fe_irc_dcc_init", scope: !139, file: !139, line: 157, type: !356, isLocal: false, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !146)
!582 = !DILocation(line: 159, column: 2, scope: !581)
!583 = !DILocation(line: 160, column: 2, scope: !581)
!584 = !DILocation(line: 161, column: 2, scope: !581)
!585 = !DILocation(line: 162, column: 2, scope: !581)
!586 = !DILocation(line: 164, column: 2, scope: !581)
!587 = !DILocation(line: 165, column: 2, scope: !581)
!588 = !DILocation(line: 166, column: 2, scope: !581)
!589 = !DILocation(line: 167, column: 2, scope: !581)
!590 = !DILocation(line: 168, column: 2, scope: !581)
!591 = !DILocation(line: 169, column: 2, scope: !581)
!592 = !DILocation(line: 170, column: 2, scope: !581)
!593 = !DILocation(line: 172, column: 2, scope: !581)
!594 = !DILocation(line: 173, column: 2, scope: !581)
!595 = !DILocation(line: 174, column: 2, scope: !581)
!596 = !DILocation(line: 175, column: 1, scope: !581)
!597 = distinct !DISubprogram(name: "dcc_request", scope: !139, file: !139, line: 58, type: !598, isLocal: true, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !146)
!598 = !DISubroutineType(types: !599)
!599 = !{null, !600}
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64, align: 64)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "DCC_REC", file: !199, line: 13, baseType: !602)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !199, line: 11, size: 1600, align: 64, elements: !603)
!603 = !{!604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !602, file: !180, line: 1, baseType: !119, size: 32, align: 32)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !602, file: !180, line: 2, baseType: !119, size: 32, align: 32, offset: 32)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "created", scope: !602, file: !180, line: 3, baseType: !183, size: 64, align: 64, offset: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !602, file: !180, line: 5, baseType: !189, size: 64, align: 64, offset: 128)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !602, file: !180, line: 6, baseType: !142, size: 64, align: 64, offset: 192)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "mynick", scope: !602, file: !180, line: 7, baseType: !142, size: 64, align: 64, offset: 256)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !602, file: !180, line: 8, baseType: !142, size: 64, align: 64, offset: 320)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "chat", scope: !602, file: !180, line: 10, baseType: !197, size: 64, align: 64, offset: 384)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !602, file: !180, line: 11, baseType: !142, size: 64, align: 64, offset: 448)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !602, file: !180, line: 12, baseType: !142, size: 64, align: 64, offset: 512)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !602, file: !180, line: 14, baseType: !214, size: 160, align: 32, offset: 576)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "addrstr", scope: !602, file: !180, line: 15, baseType: !246, size: 368, align: 8, offset: 736)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !602, file: !180, line: 16, baseType: !119, size: 32, align: 32, offset: 1120)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !602, file: !180, line: 18, baseType: !251, size: 64, align: 64, offset: 1152)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "tagconn", scope: !602, file: !180, line: 19, baseType: !119, size: 32, align: 32, offset: 1216)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "tagread", scope: !602, file: !180, line: 19, baseType: !119, size: 32, align: 32, offset: 1248)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "tagwrite", scope: !602, file: !180, line: 19, baseType: !119, size: 32, align: 32, offset: 1280)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "starttime", scope: !602, file: !180, line: 20, baseType: !183, size: 64, align: 64, offset: 1344)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "transfd", scope: !602, file: !180, line: 21, baseType: !143, size: 64, align: 64, offset: 1408)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "pasv_id", scope: !602, file: !180, line: 23, baseType: !119, size: 32, align: 32, offset: 1472)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "destroyed", scope: !602, file: !180, line: 25, baseType: !242, size: 1, align: 32, offset: 1504, flags: DIFlagBitField, extraData: i64 1504)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !602, file: !180, line: 27, baseType: !437, size: 64, align: 64, offset: 1536)
!626 = !DILocalVariable(name: "dcc", arg: 1, scope: !597, file: !139, line: 58, type: !600)
!627 = !DILocation(line: 58, column: 34, scope: !597)
!628 = !DILocalVariable(name: "service", scope: !597, file: !139, line: 60, type: !142)
!629 = !DILocation(line: 60, column: 8, scope: !597)
!630 = !DILocation(line: 62, column: 2, scope: !597)
!631 = distinct !{!631, !630}
!632 = !DILocation(line: 62, column: 10, scope: !633)
!633 = !DILexicalBlockFile(scope: !634, file: !139, discriminator: 1)
!634 = distinct !DILexicalBlock(scope: !635, file: !139, line: 62, column: 10)
!635 = distinct !DILexicalBlock(scope: !597, file: !139, line: 62, column: 4)
!636 = !DILocation(line: 62, column: 14, scope: !633)
!637 = !DILocation(line: 62, column: 5, scope: !638)
!638 = !DILexicalBlockFile(scope: !639, file: !139, discriminator: 2)
!639 = distinct !DILexicalBlock(scope: !634, file: !139, line: 62, column: 3)
!640 = !DILocation(line: 62, column: 14, scope: !641)
!641 = !DILexicalBlockFile(scope: !642, file: !139, discriminator: 3)
!642 = distinct !DILexicalBlock(scope: !634, file: !139, line: 62, column: 12)
!643 = !DILocation(line: 62, column: 98, scope: !641)
!644 = !DILocation(line: 62, column: 109, scope: !645)
!645 = !DILexicalBlockFile(scope: !635, file: !139, discriminator: 4)
!646 = !DILocation(line: 64, column: 6, scope: !647)
!647 = distinct !DILexicalBlock(scope: !597, file: !139, line: 64, column: 6)
!648 = !DILocation(line: 64, column: 11, scope: !647)
!649 = !DILocation(line: 64, column: 16, scope: !647)
!650 = !DILocation(line: 64, column: 6, scope: !597)
!651 = !DILocation(line: 66, column: 31, scope: !652)
!652 = distinct !DILexicalBlock(scope: !647, file: !139, line: 64, column: 24)
!653 = !DILocation(line: 66, column: 36, scope: !652)
!654 = !DILocation(line: 66, column: 13, scope: !652)
!655 = !DILocation(line: 66, column: 11, scope: !652)
!656 = !DILocation(line: 68, column: 43, scope: !652)
!657 = !DILocation(line: 68, column: 48, scope: !652)
!658 = !DILocation(line: 68, column: 38, scope: !652)
!659 = !DILocation(line: 68, column: 49, scope: !652)
!660 = !DILocation(line: 68, column: 57, scope: !652)
!661 = !DILocation(line: 68, column: 4, scope: !662)
!662 = !DILexicalBlockFile(scope: !652, file: !139, discriminator: 1)
!663 = !DILocation(line: 68, column: 49, scope: !662)
!664 = !DILocation(line: 68, column: 49, scope: !665)
!665 = !DILexicalBlockFile(scope: !652, file: !139, discriminator: 2)
!666 = !DILocation(line: 68, column: 49, scope: !667)
!667 = !DILexicalBlockFile(scope: !652, file: !139, discriminator: 3)
!668 = !DILocation(line: 68, column: 3, scope: !667)
!669 = !DILocation(line: 71, column: 2, scope: !652)
!670 = !DILocation(line: 72, column: 1, scope: !597)
!671 = distinct !DISubprogram(name: "dcc_rejected", scope: !139, file: !139, line: 74, type: !598, isLocal: true, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !146)
!672 = !DILocalVariable(name: "dcc", arg: 1, scope: !671, file: !139, line: 74, type: !600)
!673 = !DILocation(line: 74, column: 35, scope: !671)
!674 = !DILocation(line: 76, column: 2, scope: !671)
!675 = distinct !{!675, !674}
!676 = !DILocation(line: 76, column: 10, scope: !677)
!677 = !DILexicalBlockFile(scope: !678, file: !139, discriminator: 1)
!678 = distinct !DILexicalBlock(scope: !679, file: !139, line: 76, column: 10)
!679 = distinct !DILexicalBlock(scope: !671, file: !139, line: 76, column: 4)
!680 = !DILocation(line: 76, column: 14, scope: !677)
!681 = !DILocation(line: 76, column: 5, scope: !682)
!682 = !DILexicalBlockFile(scope: !683, file: !139, discriminator: 2)
!683 = distinct !DILexicalBlock(scope: !678, file: !139, line: 76, column: 3)
!684 = !DILocation(line: 76, column: 14, scope: !685)
!685 = !DILexicalBlockFile(scope: !686, file: !139, discriminator: 3)
!686 = distinct !DILexicalBlock(scope: !678, file: !139, line: 76, column: 12)
!687 = !DILocation(line: 76, column: 98, scope: !685)
!688 = !DILocation(line: 76, column: 109, scope: !689)
!689 = !DILexicalBlockFile(scope: !679, file: !139, discriminator: 4)
!690 = !DILocation(line: 78, column: 42, scope: !671)
!691 = !DILocation(line: 78, column: 47, scope: !671)
!692 = !DILocation(line: 78, column: 62, scope: !671)
!693 = !DILocation(line: 78, column: 67, scope: !671)
!694 = !DILocation(line: 78, column: 36, scope: !671)
!695 = !DILocation(line: 78, column: 75, scope: !671)
!696 = !DILocation(line: 78, column: 80, scope: !671)
!697 = !DILocation(line: 78, column: 86, scope: !671)
!698 = !DILocation(line: 78, column: 91, scope: !671)
!699 = !DILocation(line: 78, column: 2, scope: !700)
!700 = !DILexicalBlockFile(scope: !671, file: !139, discriminator: 1)
!701 = !DILocation(line: 80, column: 1, scope: !671)
!702 = !DILocation(line: 80, column: 1, scope: !700)
!703 = distinct !DISubprogram(name: "dcc_request_send", scope: !139, file: !139, line: 82, type: !598, isLocal: true, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !146)
!704 = !DILocalVariable(name: "dcc", arg: 1, scope: !703, file: !139, line: 82, type: !600)
!705 = !DILocation(line: 82, column: 39, scope: !703)
!706 = !DILocation(line: 84, column: 2, scope: !703)
!707 = distinct !{!707, !706}
!708 = !DILocation(line: 84, column: 10, scope: !709)
!709 = !DILexicalBlockFile(scope: !710, file: !139, discriminator: 1)
!710 = distinct !DILexicalBlock(scope: !711, file: !139, line: 84, column: 10)
!711 = distinct !DILexicalBlock(scope: !703, file: !139, line: 84, column: 4)
!712 = !DILocation(line: 84, column: 14, scope: !709)
!713 = !DILocation(line: 84, column: 5, scope: !714)
!714 = !DILexicalBlockFile(scope: !715, file: !139, discriminator: 2)
!715 = distinct !DILexicalBlock(scope: !710, file: !139, line: 84, column: 3)
!716 = !DILocation(line: 84, column: 14, scope: !717)
!717 = !DILexicalBlockFile(scope: !718, file: !139, discriminator: 3)
!718 = distinct !DILexicalBlock(scope: !710, file: !139, line: 84, column: 12)
!719 = !DILocation(line: 84, column: 98, scope: !717)
!720 = !DILocation(line: 84, column: 109, scope: !721)
!721 = !DILexicalBlockFile(scope: !711, file: !139, discriminator: 4)
!722 = !DILocation(line: 86, column: 42, scope: !703)
!723 = !DILocation(line: 86, column: 47, scope: !703)
!724 = !DILocation(line: 86, column: 69, scope: !703)
!725 = !DILocation(line: 86, column: 74, scope: !703)
!726 = !DILocation(line: 86, column: 43, scope: !703)
!727 = !DILocation(line: 86, column: 82, scope: !703)
!728 = !DILocation(line: 86, column: 87, scope: !703)
!729 = !DILocation(line: 86, column: 93, scope: !703)
!730 = !DILocation(line: 86, column: 98, scope: !703)
!731 = !DILocation(line: 86, column: 2, scope: !732)
!732 = !DILexicalBlockFile(scope: !703, file: !139, discriminator: 1)
!733 = !DILocation(line: 88, column: 1, scope: !703)
!734 = !DILocation(line: 88, column: 1, scope: !732)
!735 = distinct !DISubprogram(name: "dcc_error_connect", scope: !139, file: !139, line: 90, type: !598, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !146)
!736 = !DILocalVariable(name: "dcc", arg: 1, scope: !735, file: !139, line: 90, type: !600)
!737 = !DILocation(line: 90, column: 40, scope: !735)
!738 = !DILocation(line: 92, column: 2, scope: !735)
!739 = distinct !{!739, !738}
!740 = !DILocation(line: 92, column: 10, scope: !741)
!741 = !DILexicalBlockFile(scope: !742, file: !139, discriminator: 1)
!742 = distinct !DILexicalBlock(scope: !743, file: !139, line: 92, column: 10)
!743 = distinct !DILexicalBlock(scope: !735, file: !139, line: 92, column: 4)
!744 = !DILocation(line: 92, column: 14, scope: !741)
!745 = !DILocation(line: 92, column: 5, scope: !746)
!746 = !DILexicalBlockFile(scope: !747, file: !139, discriminator: 2)
!747 = distinct !DILexicalBlock(scope: !742, file: !139, line: 92, column: 3)
!748 = !DILocation(line: 92, column: 14, scope: !749)
!749 = !DILexicalBlockFile(scope: !750, file: !139, discriminator: 3)
!750 = distinct !DILexicalBlock(scope: !742, file: !139, line: 92, column: 12)
!751 = !DILocation(line: 92, column: 98, scope: !749)
!752 = !DILocation(line: 92, column: 109, scope: !753)
!753 = !DILexicalBlockFile(scope: !743, file: !139, discriminator: 4)
!754 = !DILocation(line: 94, column: 49, scope: !735)
!755 = !DILocation(line: 94, column: 54, scope: !735)
!756 = !DILocation(line: 94, column: 50, scope: !735)
!757 = !DILocation(line: 94, column: 55, scope: !735)
!758 = !DILocation(line: 94, column: 64, scope: !735)
!759 = !DILocation(line: 94, column: 69, scope: !735)
!760 = !DILocation(line: 94, column: 9, scope: !735)
!761 = !DILocation(line: 96, column: 1, scope: !735)
!762 = !DILocation(line: 96, column: 1, scope: !763)
!763 = !DILexicalBlockFile(scope: !735, file: !139, discriminator: 1)
!764 = distinct !DISubprogram(name: "dcc_error_unknown_type", scope: !139, file: !139, line: 98, type: !765, isLocal: true, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !146)
!765 = !DISubroutineType(types: !766)
!766 = !{null, !133}
!767 = !DILocalVariable(name: "type", arg: 1, scope: !764, file: !139, line: 98, type: !133)
!768 = !DILocation(line: 98, column: 48, scope: !764)
!769 = !DILocation(line: 100, column: 2, scope: !764)
!770 = distinct !{!770, !769}
!771 = !DILocation(line: 100, column: 10, scope: !772)
!772 = !DILexicalBlockFile(scope: !773, file: !139, discriminator: 1)
!773 = distinct !DILexicalBlock(scope: !774, file: !139, line: 100, column: 10)
!774 = distinct !DILexicalBlock(scope: !764, file: !139, line: 100, column: 4)
!775 = !DILocation(line: 100, column: 15, scope: !772)
!776 = !DILocation(line: 100, column: 5, scope: !777)
!777 = !DILexicalBlockFile(scope: !778, file: !139, discriminator: 2)
!778 = distinct !DILexicalBlock(scope: !773, file: !139, line: 100, column: 3)
!779 = !DILocation(line: 100, column: 14, scope: !780)
!780 = !DILexicalBlockFile(scope: !781, file: !139, discriminator: 3)
!781 = distinct !DILexicalBlock(scope: !773, file: !139, line: 100, column: 12)
!782 = !DILocation(line: 100, column: 99, scope: !780)
!783 = !DILocation(line: 100, column: 110, scope: !784)
!784 = !DILexicalBlockFile(scope: !774, file: !139, discriminator: 4)
!785 = !DILocation(line: 102, column: 42, scope: !764)
!786 = !DILocation(line: 102, column: 2, scope: !764)
!787 = !DILocation(line: 103, column: 1, scope: !764)
!788 = !DILocation(line: 103, column: 1, scope: !789)
!789 = !DILexicalBlockFile(scope: !764, file: !139, discriminator: 1)
!790 = distinct !DISubprogram(name: "cmd_dcc", scope: !139, file: !139, line: 149, type: !765, isLocal: true, isDefinition: true, scopeLine: 150, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !146)
!791 = !DILocalVariable(name: "data", arg: 1, scope: !790, file: !139, line: 149, type: !133)
!792 = !DILocation(line: 149, column: 33, scope: !790)
!793 = !DILocation(line: 151, column: 7, scope: !794)
!794 = distinct !DILexicalBlock(scope: !790, file: !139, line: 151, column: 6)
!795 = !DILocation(line: 151, column: 6, scope: !794)
!796 = !DILocation(line: 151, column: 12, scope: !794)
!797 = !DILocation(line: 151, column: 6, scope: !790)
!798 = !DILocation(line: 152, column: 16, scope: !799)
!799 = distinct !DILexicalBlock(scope: !794, file: !139, line: 151, column: 21)
!800 = !DILocation(line: 152, column: 3, scope: !799)
!801 = !DILocation(line: 153, column: 3, scope: !799)
!802 = !DILocation(line: 154, column: 2, scope: !799)
!803 = !DILocation(line: 155, column: 1, scope: !790)
!804 = distinct !DISubprogram(name: "cmd_dcc_list", scope: !139, file: !139, line: 137, type: !765, isLocal: true, isDefinition: true, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !146)
!805 = !DILocalVariable(name: "data", arg: 1, scope: !804, file: !139, line: 137, type: !133)
!806 = !DILocation(line: 137, column: 38, scope: !804)
!807 = !DILocalVariable(name: "tmp", scope: !804, file: !139, line: 139, type: !368)
!808 = !DILocation(line: 139, column: 10, scope: !804)
!809 = !DILocation(line: 141, column: 2, scope: !804)
!810 = distinct !{!810, !809}
!811 = !DILocation(line: 141, column: 10, scope: !812)
!812 = !DILexicalBlockFile(scope: !813, file: !139, discriminator: 1)
!813 = distinct !DILexicalBlock(scope: !814, file: !139, line: 141, column: 10)
!814 = distinct !DILexicalBlock(scope: !804, file: !139, line: 141, column: 4)
!815 = !DILocation(line: 141, column: 15, scope: !812)
!816 = !DILocation(line: 141, column: 5, scope: !817)
!817 = !DILexicalBlockFile(scope: !818, file: !139, discriminator: 2)
!818 = distinct !DILexicalBlock(scope: !813, file: !139, line: 141, column: 3)
!819 = !DILocation(line: 141, column: 14, scope: !820)
!820 = !DILexicalBlockFile(scope: !821, file: !139, discriminator: 3)
!821 = distinct !DILexicalBlock(scope: !813, file: !139, line: 141, column: 12)
!822 = !DILocation(line: 141, column: 99, scope: !820)
!823 = !DILocation(line: 141, column: 110, scope: !824)
!824 = !DILexicalBlockFile(scope: !814, file: !139, discriminator: 4)
!825 = !DILocation(line: 143, column: 2, scope: !804)
!826 = !DILocation(line: 144, column: 13, scope: !827)
!827 = distinct !DILexicalBlock(scope: !804, file: !139, line: 144, column: 2)
!828 = !DILocation(line: 144, column: 11, scope: !827)
!829 = !DILocation(line: 144, column: 7, scope: !827)
!830 = !DILocation(line: 144, column: 24, scope: !831)
!831 = !DILexicalBlockFile(scope: !832, file: !139, discriminator: 1)
!832 = distinct !DILexicalBlock(scope: !827, file: !139, line: 144, column: 2)
!833 = !DILocation(line: 144, column: 28, scope: !831)
!834 = !DILocation(line: 144, column: 2, scope: !831)
!835 = !DILocation(line: 145, column: 36, scope: !832)
!836 = !DILocation(line: 145, column: 41, scope: !832)
!837 = !DILocation(line: 145, column: 3, scope: !832)
!838 = !DILocation(line: 144, column: 42, scope: !839)
!839 = !DILexicalBlockFile(scope: !832, file: !139, discriminator: 2)
!840 = !DILocation(line: 144, column: 47, scope: !839)
!841 = !DILocation(line: 144, column: 40, scope: !839)
!842 = !DILocation(line: 144, column: 2, scope: !839)
!843 = distinct !{!843, !844}
!844 = !DILocation(line: 144, column: 2, scope: !804)
!845 = !DILocation(line: 146, column: 2, scope: !804)
!846 = !DILocation(line: 147, column: 1, scope: !804)
!847 = !DILocation(line: 147, column: 1, scope: !848)
!848 = !DILexicalBlockFile(scope: !804, file: !139, discriminator: 1)
!849 = distinct !DISubprogram(name: "fe_irc_dcc_deinit", scope: !139, file: !139, line: 177, type: !356, isLocal: false, isDefinition: true, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !146)
!850 = !DILocation(line: 179, column: 2, scope: !849)
!851 = !DILocation(line: 180, column: 2, scope: !849)
!852 = !DILocation(line: 181, column: 2, scope: !849)
!853 = !DILocation(line: 182, column: 2, scope: !849)
!854 = !DILocation(line: 184, column: 2, scope: !849)
!855 = !DILocation(line: 186, column: 2, scope: !849)
!856 = !DILocation(line: 187, column: 2, scope: !849)
!857 = !DILocation(line: 188, column: 2, scope: !849)
!858 = !DILocation(line: 189, column: 2, scope: !849)
!859 = !DILocation(line: 190, column: 2, scope: !849)
!860 = !DILocation(line: 191, column: 2, scope: !849)
!861 = !DILocation(line: 192, column: 2, scope: !849)
!862 = !DILocation(line: 193, column: 1, scope: !849)
