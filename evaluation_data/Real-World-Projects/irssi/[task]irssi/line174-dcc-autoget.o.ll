; ModuleID = './line174-dcc-autoget.o.i'
source_filename = "./line174-dcc-autoget.o.i"
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
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct._SERVER_REC = type { i32, i32, i32, %struct._SERVER_CONNECT_REC*, i64, i64, i8*, i8*, i8, %struct._NET_SENDBUF_REC*, i32, [2 x %struct._GIOChannel*], i32, i32, %struct._RAWLOG_REC*, %struct._GHashTable*, i8*, i8*, i8*, i8, %struct._GTimeVal, i64, i32, %struct._GSList*, %struct._GSList*, void (%struct._SERVER_REC*, i8*, i32)*, i32 (%struct._SERVER_REC*, i8)*, i32 (%struct._SERVER_REC*, i8*)*, i8* (%struct._SERVER_REC*)*, void (%struct._SERVER_REC*, i8*, i8*, i32)*, i8** (%struct._SERVER_REC*, i8*, i8*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)*, %struct._QUERY_REC* (%struct._SERVER_REC*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)* }
%struct._SERVER_CONNECT_REC = type { i32, i32, i32, i8*, i32, i8*, i8*, i8*, i16, i8*, i8*, i32, i8*, %struct._IPADDR*, %struct._IPADDR*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._GIOChannel*, i8, i8*, i8* }
%struct._NET_SENDBUF_REC = type opaque
%struct._RAWLOG_REC = type opaque
%struct._GTimeVal = type { i64, i64 }
%struct._CHANNEL_REC = type opaque
%struct._QUERY_REC = type opaque

@.str = private unnamed_addr constant [8 x i8] c"irc/dcc\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"dcc\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"dcc_autoget\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"dcc_autoaccept_lowports\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"dcc_autoresume\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"dcc_autoget_max_size\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"0k\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"dcc_autoget_masks\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"dcc request\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"DCC\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"dcc_download_path\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"RESUME %s \22%s\22\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"GET %s \22%s\22\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"command dcc\00", align 1

; Function Attrs: nounwind uwtable
define void @dcc_autoget_init() #0 !dbg !468 {
  call void @settings_add_bool_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 0), !dbg !471
  call void @settings_add_bool_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), i32 0), !dbg !472
  call void @settings_add_bool_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i32 0), !dbg !473
  call void @settings_add_size_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0)), !dbg !474
  call void @settings_add_str_module(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0)), !dbg !475
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 100, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.GET_DCC_REC*, i8*)* @sig_dcc_request to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !476
  ret void, !dbg !477
}

declare void @settings_add_bool_module(i8*, i8*, i8*, i32) #1

declare void @settings_add_size_module(i8*, i8*, i8*, i8*) #1

declare void @settings_add_str_module(i8*, i8*, i8*, i8*) #1

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @sig_dcc_request(%struct.GET_DCC_REC*, i8*) #0 !dbg !478 {
  %3 = alloca %struct.GET_DCC_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stat, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.GET_DCC_REC* %0, %struct.GET_DCC_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.GET_DCC_REC** %3, metadata !481, metadata !482), !dbg !483
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !484, metadata !482), !dbg !485
  call void @llvm.dbg.declare(metadata %struct.stat* %5, metadata !486, metadata !482), !dbg !522
  call void @llvm.dbg.declare(metadata i8** %6, metadata !523, metadata !482), !dbg !524
  call void @llvm.dbg.declare(metadata i8** %7, metadata !525, metadata !482), !dbg !526
  call void @llvm.dbg.declare(metadata i8** %8, metadata !527, metadata !482), !dbg !528
  call void @llvm.dbg.declare(metadata i8** %9, metadata !529, metadata !482), !dbg !530
  call void @llvm.dbg.declare(metadata i32* %10, metadata !531, metadata !482), !dbg !532
  %11 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %3, align 8, !dbg !533
  %12 = bitcast %struct.GET_DCC_REC* %11 to i8*, !dbg !533
  %13 = call i8* @module_check_cast_module(i8* %12, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0)), !dbg !535
  %14 = bitcast i8* %13 to %struct.GET_DCC_REC*, !dbg !536
  %15 = icmp ne %struct.GET_DCC_REC* %14, null, !dbg !536
  br i1 %15, label %16, label %17, !dbg !537

; <label>:16:                                     ; preds = %2
  br i1 false, label %18, label %19, !dbg !538

; <label>:17:                                     ; preds = %2
  br i1 false, label %19, label %18, !dbg !540

; <label>:18:                                     ; preds = %17, %16
  br label %139, !dbg !542

; <label>:19:                                     ; preds = %17, %16
  %20 = call i32 @settings_get_bool(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0)), !dbg !544
  %21 = icmp ne i32 %20, 0, !dbg !544
  br i1 %21, label %23, label %22, !dbg !546

; <label>:22:                                     ; preds = %19
  br label %139, !dbg !547

; <label>:23:                                     ; preds = %19
  %24 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %3, align 8, !dbg !548
  %25 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %24, i32 0, i32 12, !dbg !550
  %26 = load i32, i32* %25, align 4, !dbg !550
  %27 = icmp slt i32 %26, 1024, !dbg !551
  br i1 %27, label %28, label %32, !dbg !552

; <label>:28:                                     ; preds = %23
  %29 = call i32 @settings_get_bool(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0)), !dbg !553
  %30 = icmp ne i32 %29, 0, !dbg !553
  br i1 %30, label %32, label %31, !dbg !555

; <label>:31:                                     ; preds = %28
  br label %139, !dbg !556

; <label>:32:                                     ; preds = %28, %23
  %33 = call i8* @settings_get_str(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i32 0, i32 0)), !dbg !557
  store i8* %33, i8** %6, align 8, !dbg !558
  %34 = load i8*, i8** %6, align 8, !dbg !559
  %35 = load i8, i8* %34, align 1, !dbg !561
  %36 = sext i8 %35 to i32, !dbg !561
  %37 = icmp ne i32 %36, 0, !dbg !562
  br i1 %37, label %38, label %53, !dbg !563

; <label>:38:                                     ; preds = %32
  %39 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %3, align 8, !dbg !564
  %40 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %39, i32 0, i32 3, !dbg !565
  %41 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %40, align 8, !dbg !565
  %42 = bitcast %struct._IRC_SERVER_REC* %41 to i8*, !dbg !564
  %43 = call i8* @module_check_cast(i8* %42, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0)), !dbg !566
  %44 = bitcast i8* %43 to %struct._SERVER_REC*, !dbg !567
  %45 = load i8*, i8** %6, align 8, !dbg !568
  %46 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %3, align 8, !dbg !569
  %47 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %46, i32 0, i32 6, !dbg !570
  %48 = load i8*, i8** %47, align 8, !dbg !570
  %49 = load i8*, i8** %4, align 8, !dbg !571
  %50 = call i32 @masks_match(%struct._SERVER_REC* %44, i8* %45, i8* %48, i8* %49), !dbg !572
  %51 = icmp ne i32 %50, 0, !dbg !574
  br i1 %51, label %53, label %52, !dbg !575

; <label>:52:                                     ; preds = %38
  br label %139, !dbg !577

; <label>:53:                                     ; preds = %38, %32
  %54 = load i8*, i8** %6, align 8, !dbg !578
  %55 = load i8, i8* %54, align 1, !dbg !580
  %56 = sext i8 %55 to i32, !dbg !580
  %57 = icmp eq i32 %56, 0, !dbg !581
  br i1 %57, label %58, label %84, !dbg !582

; <label>:58:                                     ; preds = %53
  %59 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %3, align 8, !dbg !583
  %60 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %59, i32 0, i32 8, !dbg !585
  %61 = load i8*, i8** %60, align 8, !dbg !585
  %62 = icmp ne i8* %61, null, !dbg !586
  br i1 %62, label %63, label %84, !dbg !587

; <label>:63:                                     ; preds = %58
  %64 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %3, align 8, !dbg !588
  %65 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %64, i32 0, i32 3, !dbg !590
  %66 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %65, align 8, !dbg !590
  %67 = bitcast %struct._IRC_SERVER_REC* %66 to i8*, !dbg !588
  %68 = call i8* @module_check_cast(i8* %67, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0)), !dbg !591
  %69 = bitcast i8* %68 to %struct._SERVER_REC*, !dbg !592
  %70 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %69, i32 0, i32 27, !dbg !593
  %71 = load i32 (%struct._SERVER_REC*, i8*)*, i32 (%struct._SERVER_REC*, i8*)** %70, align 8, !dbg !593
  %72 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %3, align 8, !dbg !594
  %73 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %72, i32 0, i32 3, !dbg !595
  %74 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %73, align 8, !dbg !595
  %75 = bitcast %struct._IRC_SERVER_REC* %74 to i8*, !dbg !594
  %76 = call i8* @module_check_cast(i8* %75, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0)), !dbg !596
  %77 = bitcast i8* %76 to %struct._SERVER_REC*, !dbg !598
  %78 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %3, align 8, !dbg !599
  %79 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %78, i32 0, i32 8, !dbg !600
  %80 = load i8*, i8** %79, align 8, !dbg !600
  %81 = call i32 %71(%struct._SERVER_REC* %77, i8* %80), !dbg !601
  %82 = icmp ne i32 %81, 0, !dbg !603
  br i1 %82, label %83, label %84, !dbg !604

; <label>:83:                                     ; preds = %63
  br label %139, !dbg !605

; <label>:84:                                     ; preds = %63, %58, %53
  %85 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %3, align 8, !dbg !606
  %86 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %85, i32 0, i32 9, !dbg !608
  %87 = load i8*, i8** %86, align 8, !dbg !608
  %88 = load i8, i8* %87, align 1, !dbg !609
  %89 = sext i8 %88 to i32, !dbg !609
  %90 = icmp eq i32 %89, 46, !dbg !610
  br i1 %90, label %91, label %96, !dbg !611

; <label>:91:                                     ; preds = %84
  %92 = call i8* @settings_get_str(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i32 0, i32 0)), !dbg !612
  %93 = call i32 @g_strcmp0(i8* %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)), !dbg !613
  %94 = icmp eq i32 %93, 0, !dbg !615
  br i1 %94, label %95, label %96, !dbg !616

; <label>:95:                                     ; preds = %91
  br label %139, !dbg !617

; <label>:96:                                     ; preds = %91, %84
  %97 = call i32 @settings_get_size(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0)), !dbg !618
  store i32 %97, i32* %10, align 4, !dbg !619
  %98 = load i32, i32* %10, align 4, !dbg !620
  %99 = icmp sgt i32 %98, 0, !dbg !622
  br i1 %99, label %100, label %108, !dbg !623

; <label>:100:                                    ; preds = %96
  %101 = load i32, i32* %10, align 4, !dbg !624
  %102 = sext i32 %101 to i64, !dbg !626
  %103 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %3, align 8, !dbg !627
  %104 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %103, i32 0, i32 22, !dbg !628
  %105 = load i64, i64* %104, align 8, !dbg !628
  %106 = icmp ult i64 %102, %105, !dbg !629
  br i1 %106, label %107, label %108, !dbg !630

; <label>:107:                                    ; preds = %100
  br label %139, !dbg !631

; <label>:108:                                    ; preds = %100, %96
  %109 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %3, align 8, !dbg !632
  %110 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %109, i32 0, i32 9, !dbg !633
  %111 = load i8*, i8** %110, align 8, !dbg !633
  %112 = call i8* @dcc_get_download_path(i8* %111), !dbg !634
  store i8* %112, i8** %8, align 8, !dbg !635
  %113 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %3, align 8, !dbg !636
  %114 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %113, i32 0, i32 9, !dbg !637
  %115 = load i8*, i8** %114, align 8, !dbg !637
  %116 = call i8* @escape_string(i8* %115), !dbg !638
  store i8* %116, i8** %9, align 8, !dbg !639
  %117 = call i32 @settings_get_bool(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0)), !dbg !640
  %118 = icmp ne i32 %117, 0, !dbg !640
  br i1 %118, label %119, label %123, !dbg !641

; <label>:119:                                    ; preds = %108
  %120 = load i8*, i8** %8, align 8, !dbg !642
  %121 = call i32 @stat(i8* %120, %struct.stat* %5) #4, !dbg !643
  %122 = icmp eq i32 %121, 0, !dbg !644
  br label %123

; <label>:123:                                    ; preds = %119, %108
  %124 = phi i1 [ false, %108 ], [ %122, %119 ]
  %125 = select i1 %124, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), !dbg !645
  %126 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %3, align 8, !dbg !646
  %127 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %126, i32 0, i32 6, !dbg !647
  %128 = load i8*, i8** %127, align 8, !dbg !647
  %129 = load i8*, i8** %9, align 8, !dbg !648
  %130 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %125, i8* %128, i8* %129), !dbg !649
  store i8* %130, i8** %7, align 8, !dbg !650
  %131 = load i8*, i8** %7, align 8, !dbg !651
  %132 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %3, align 8, !dbg !652
  %133 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %132, i32 0, i32 3, !dbg !653
  %134 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %133, align 8, !dbg !653
  %135 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i32 2, i8* %131, %struct._IRC_SERVER_REC* %134), !dbg !654
  %136 = load i8*, i8** %9, align 8, !dbg !655
  call void @g_free(i8* %136), !dbg !656
  %137 = load i8*, i8** %8, align 8, !dbg !657
  call void @g_free(i8* %137), !dbg !658
  %138 = load i8*, i8** %7, align 8, !dbg !659
  call void @g_free(i8* %138), !dbg !660
  br label %139, !dbg !661

; <label>:139:                                    ; preds = %123, %107, %95, %83, %52, %31, %22, %18
  ret void, !dbg !662
}

; Function Attrs: nounwind uwtable
define void @dcc_autoget_deinit() #0 !dbg !663 {
  call void @signal_remove_full(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.GET_DCC_REC*, i8*)* @sig_dcc_request to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !664
  ret void, !dbg !665
}

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare i8* @module_check_cast_module(i8*, i32, i8*, i8*) #1

declare i32 @settings_get_bool(i8*) #1

declare i8* @settings_get_str(i8*) #1

declare i32 @masks_match(%struct._SERVER_REC*, i8*, i8*, i8*) #1

declare i8* @module_check_cast(i8*, i32, i8*) #1

declare i32 @g_strcmp0(i8*, i8*) #1

declare i32 @settings_get_size(i8*) #1

declare i8* @dcc_get_download_path(i8*) #1

declare i8* @escape_string(i8*) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #3

declare i32 @signal_emit(i8*, i32, ...) #1

declare void @g_free(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!465, !466}
!llvm.ident = !{!467}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !35)
!1 = !DIFile(filename: "line174-dcc-autoget.o.i", directory: "/home/lichi/Desktop/irssi/task1")
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
!35 = !{!36, !43, !44, !322, !302}
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !37, line: 9, baseType: !38)
!37 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !41, !41, !41, !41, !41, !41}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "GET_DCC_REC", file: !46, line: 28, baseType: !47)
!46 = !DIFile(filename: "dcc-get.h", directory: "/home/lichi/Desktop/irssi/task1")
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !46, line: 20, size: 2048, align: 64, elements: !48)
!48 = !{!49, !52, !53, !59, !64, !67, !68, !69, !74, !75, !76, !109, !113, !114, !297, !298, !299, !300, !301, !303, !304, !305, !310, !312, !313, !314, !315, !317, !318, !319, !320, !321}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !47, file: !50, line: 1, baseType: !51, size: 32, align: 32)
!50 = !DIFile(filename: "dcc-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!51 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !47, file: !50, line: 2, baseType: !51, size: 32, align: 32, offset: 32)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "created", scope: !47, file: !50, line: 3, baseType: !54, size: 64, align: 64, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !55, line: 75, baseType: !56)
!55 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !57, line: 139, baseType: !58)
!57 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!58 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !47, file: !50, line: 5, baseType: !60, size: 64, align: 64, offset: 128)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_REC", file: !62, line: 6, baseType: !63)
!62 = !DIFile(filename: "../../../src/irc/core/irc.h", directory: "/home/lichi/Desktop/irssi/task1")
!63 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_REC", file: !62, line: 6, flags: DIFlagFwdDecl)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !47, file: !50, line: 6, baseType: !65, size: 64, align: 64, offset: 192)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!66 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "mynick", scope: !47, file: !50, line: 7, baseType: !65, size: 64, align: 64, offset: 256)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !47, file: !50, line: 8, baseType: !65, size: 64, align: 64, offset: 320)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "chat", scope: !47, file: !50, line: 10, baseType: !70, size: 64, align: 64, offset: 384)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHAT_DCC_REC", file: !72, line: 9, baseType: !73)
!72 = !DIFile(filename: "dcc.h", directory: "/home/lichi/Desktop/irssi/task1")
!73 = !DICompositeType(tag: DW_TAG_structure_type, name: "CHAT_DCC_REC", file: !72, line: 9, flags: DIFlagFwdDecl)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !47, file: !50, line: 11, baseType: !65, size: 64, align: 64, offset: 448)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !47, file: !50, line: 12, baseType: !65, size: 64, align: 64, offset: 512)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !47, file: !50, line: 14, baseType: !77, size: 160, align: 32, offset: 576)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !78, line: 99, baseType: !79)
!78 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !80, line: 22, size: 160, align: 32, elements: !81)
!80 = !DIFile(filename: "../../../src/core/network.h", directory: "/home/lichi/Desktop/irssi/task1")
!81 = !{!82, !84}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !79, file: !80, line: 23, baseType: !83, size: 16, align: 16)
!83 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !79, file: !80, line: 24, baseType: !85, size: 128, align: 32, offset: 32)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !86, line: 211, size: 128, align: 32, elements: !87)
!86 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/irssi/task1")
!87 = !{!88}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !85, file: !86, line: 220, baseType: !89, size: 128, align: 32)
!89 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !85, file: !86, line: 213, size: 128, align: 32, elements: !90)
!90 = !{!91, !98, !103}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !89, file: !86, line: 215, baseType: !92, size: 128, align: 8)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 128, align: 8, elements: !96)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !94, line: 48, baseType: !95)
!94 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/irssi/task1")
!95 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!96 = !{!97}
!97 = !DISubrange(count: 16)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !89, file: !86, line: 217, baseType: !99, size: 128, align: 16)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 128, align: 16, elements: !101)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !94, line: 49, baseType: !83)
!101 = !{!102}
!102 = !DISubrange(count: 8)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !89, file: !86, line: 218, baseType: !104, size: 128, align: 32)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 128, align: 32, elements: !107)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !94, line: 51, baseType: !106)
!106 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!107 = !{!108}
!108 = !DISubrange(count: 4)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "addrstr", scope: !47, file: !50, line: 15, baseType: !110, size: 368, align: 8, offset: 736)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 368, align: 8, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 46)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !47, file: !50, line: 16, baseType: !51, size: 32, align: 32, offset: 1120)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !47, file: !50, line: 18, baseType: !115, size: 64, align: 64, offset: 1152)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64, align: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !117)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !118)
!118 = !{!119, !122, !264, !265, !270, !271, !272, !273, !274, !283, !284, !285, !289, !290, !291, !292, !293, !294, !295, !296}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !117, file: !4, line: 100, baseType: !120, size: 32, align: 32)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !121, line: 49, baseType: !51)
!121 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!122 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !117, file: !4, line: 101, baseType: !123, size: 64, align: 64, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64, align: 64)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !125)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !126)
!126 = !{!127, !150, !156, !162, !166, !251, !255, !260}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !125, file: !4, line: 133, baseType: !128, size: 64, align: 64)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64, align: 64)
!129 = !DISubroutineType(types: !130)
!130 = !{!131, !115, !132, !134, !137, !138}
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64, align: 64)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !121, line: 46, baseType: !66)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !135, line: 66, baseType: !136)
!135 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!136 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64, align: 64)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64, align: 64)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, align: 64)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !141, line: 42, baseType: !142)
!141 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !141, line: 44, size: 128, align: 64, elements: !143)
!143 = !{!144, !148, !149}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !142, file: !141, line: 46, baseType: !145, size: 32, align: 32)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !146, line: 36, baseType: !147)
!146 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !135, line: 45, baseType: !106)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !142, file: !141, line: 47, baseType: !120, size: 32, align: 32, offset: 32)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !142, file: !141, line: 48, baseType: !132, size: 64, align: 64, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !125, file: !4, line: 138, baseType: !151, size: 64, align: 64, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64, align: 64)
!152 = !DISubroutineType(types: !153)
!153 = !{!131, !115, !154, !134, !137, !138}
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64, align: 64)
!155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !125, file: !4, line: 143, baseType: !157, size: 64, align: 64, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64, align: 64)
!158 = !DISubroutineType(types: !159)
!159 = !{!131, !115, !160, !161, !138}
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !135, line: 51, baseType: !58)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !125, file: !4, line: 147, baseType: !163, size: 64, align: 64, offset: 192)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64, align: 64)
!164 = !DISubroutineType(types: !165)
!165 = !{!131, !115, !138}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !125, file: !4, line: 149, baseType: !167, size: 64, align: 64, offset: 256)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64, align: 64)
!168 = !DISubroutineType(types: !169)
!169 = !{!170, !115, !250}
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64, align: 64)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !172)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !173)
!173 = !{!174, !176, !197, !226, !228, !232, !233, !234, !235, !243, !244, !245, !246}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !172, file: !16, line: 174, baseType: !175, size: 64, align: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !121, line: 77, baseType: !43)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !172, file: !16, line: 175, baseType: !177, size: 64, align: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64, align: 64)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !179)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !180)
!180 = !{!181, !185, !186}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !179, file: !16, line: 198, baseType: !182, size: 64, align: 64)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64, align: 64)
!183 = !DISubroutineType(types: !184)
!184 = !{null, !175}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !179, file: !16, line: 199, baseType: !182, size: 64, align: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !179, file: !16, line: 200, baseType: !187, size: 64, align: 64, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64, align: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{null, !175, !170, !190, !196}
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64, align: 64)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !192)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64, align: 64)
!193 = !DISubroutineType(types: !194)
!194 = !{!195, !175}
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !121, line: 50, baseType: !120)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64, align: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !172, file: !16, line: 177, baseType: !198, size: 64, align: 64, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64, align: 64)
!199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !200)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !201)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !202)
!202 = !{!203, !208, !212, !216, !220, !221}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !201, file: !16, line: 216, baseType: !204, size: 64, align: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64, align: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!195, !170, !207}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !201, file: !16, line: 218, baseType: !209, size: 64, align: 64, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64, align: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{!195, !170}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !201, file: !16, line: 219, baseType: !213, size: 64, align: 64, offset: 128)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64, align: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{!195, !170, !191, !175}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !201, file: !16, line: 222, baseType: !217, size: 64, align: 64, offset: 192)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64, align: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{null, !170}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !201, file: !16, line: 226, baseType: !191, size: 64, align: 64, offset: 256)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !201, file: !16, line: 227, baseType: !222, size: 64, align: 64, offset: 320)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64, align: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{null}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !172, file: !16, line: 178, baseType: !227, size: 32, align: 32, offset: 192)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !121, line: 55, baseType: !106)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !172, file: !16, line: 180, baseType: !229, size: 64, align: 64, offset: 256)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64, align: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !231)
!231 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !172, file: !16, line: 182, baseType: !120, size: 32, align: 32, offset: 320)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !172, file: !16, line: 183, baseType: !227, size: 32, align: 32, offset: 352)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !172, file: !16, line: 184, baseType: !227, size: 32, align: 32, offset: 384)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !172, file: !16, line: 186, baseType: !236, size: 64, align: 64, offset: 448)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64, align: 64)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !238, line: 37, baseType: !239)
!238 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !238, line: 39, size: 128, align: 64, elements: !240)
!240 = !{!241, !242}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !239, file: !238, line: 41, baseType: !175, size: 64, align: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !239, file: !238, line: 42, baseType: !236, size: 64, align: 64, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !172, file: !16, line: 188, baseType: !170, size: 64, align: 64, offset: 512)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !172, file: !16, line: 189, baseType: !170, size: 64, align: 64, offset: 576)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !172, file: !16, line: 191, baseType: !65, size: 64, align: 64, offset: 640)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !172, file: !16, line: 193, baseType: !247, size: 64, align: 64, offset: 704)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64, align: 64)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !249)
!249 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !125, file: !4, line: 151, baseType: !252, size: 64, align: 64, offset: 320)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64, align: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{null, !115}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !125, file: !4, line: 152, baseType: !256, size: 64, align: 64, offset: 384)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64, align: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{!131, !115, !259, !138}
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !125, file: !4, line: 155, baseType: !261, size: 64, align: 64, offset: 448)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64, align: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{!259, !115}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !117, file: !4, line: 103, baseType: !132, size: 64, align: 64, offset: 128)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !117, file: !4, line: 104, baseType: !266, size: 64, align: 64, offset: 192)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !267, line: 77, baseType: !268)
!267 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64, align: 64)
!269 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !267, line: 77, flags: DIFlagFwdDecl)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !117, file: !4, line: 105, baseType: !266, size: 64, align: 64, offset: 256)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !117, file: !4, line: 106, baseType: !132, size: 64, align: 64, offset: 320)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !117, file: !4, line: 107, baseType: !227, size: 32, align: 32, offset: 384)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !117, file: !4, line: 109, baseType: !134, size: 64, align: 64, offset: 448)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !117, file: !4, line: 110, baseType: !275, size: 64, align: 64, offset: 512)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64, align: 64)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !277, line: 39, baseType: !278)
!277 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !277, line: 41, size: 192, align: 64, elements: !279)
!279 = !{!280, !281, !282}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !278, file: !277, line: 43, baseType: !132, size: 64, align: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !278, file: !277, line: 44, baseType: !134, size: 64, align: 64, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !278, file: !277, line: 45, baseType: !134, size: 64, align: 64, offset: 128)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !117, file: !4, line: 111, baseType: !275, size: 64, align: 64, offset: 576)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !117, file: !4, line: 112, baseType: !275, size: 64, align: 64, offset: 640)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !117, file: !4, line: 113, baseType: !286, size: 48, align: 8, offset: 704)
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 48, align: 8, elements: !287)
!287 = !{!288}
!288 = !DISubrange(count: 6)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !117, file: !4, line: 117, baseType: !227, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !117, file: !4, line: 118, baseType: !227, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !117, file: !4, line: 119, baseType: !227, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !117, file: !4, line: 120, baseType: !227, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !117, file: !4, line: 121, baseType: !227, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !117, file: !4, line: 122, baseType: !227, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !117, file: !4, line: 124, baseType: !175, size: 64, align: 64, offset: 768)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !117, file: !4, line: 125, baseType: !175, size: 64, align: 64, offset: 832)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "tagconn", scope: !47, file: !50, line: 19, baseType: !51, size: 32, align: 32, offset: 1216)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "tagread", scope: !47, file: !50, line: 19, baseType: !51, size: 32, align: 32, offset: 1248)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "tagwrite", scope: !47, file: !50, line: 19, baseType: !51, size: 32, align: 32, offset: 1280)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "starttime", scope: !47, file: !50, line: 20, baseType: !54, size: 64, align: 64, offset: 1344)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "transfd", scope: !47, file: !50, line: 21, baseType: !302, size: 64, align: 64, offset: 1408)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "uoff_t", file: !78, line: 49, baseType: !136)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "pasv_id", scope: !47, file: !50, line: 23, baseType: !51, size: 32, align: 32, offset: 1472)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "destroyed", scope: !47, file: !50, line: 25, baseType: !106, size: 1, align: 32, offset: 1504, flags: DIFlagBitField, extraData: i64 1504)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !47, file: !50, line: 27, baseType: !306, size: 64, align: 64, offset: 1536)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64, align: 64)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !308, line: 37, baseType: !309)
!308 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!309 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !308, line: 37, flags: DIFlagFwdDecl)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !47, file: !311, line: 3, baseType: !302, size: 64, align: 64, offset: 1600)
!311 = !DIFile(filename: "dcc-file-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!312 = !DIDerivedType(tag: DW_TAG_member, name: "skipped", scope: !47, file: !311, line: 3, baseType: !302, size: 64, align: 64, offset: 1664)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "fhandle", scope: !47, file: !311, line: 4, baseType: !51, size: 32, align: 32, offset: 1728)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !47, file: !311, line: 5, baseType: !51, size: 32, align: 32, offset: 1760)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "count_buf", scope: !47, file: !311, line: 8, baseType: !316, size: 32, align: 8, offset: 1792)
!316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 32, align: 8, elements: !107)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "count_pos", scope: !47, file: !311, line: 9, baseType: !51, size: 32, align: 32, offset: 1824)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "get_type", scope: !47, file: !46, line: 23, baseType: !51, size: 32, align: 32, offset: 1856)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !47, file: !46, line: 24, baseType: !65, size: 64, align: 64, offset: 1920)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "file_quoted", scope: !47, file: !46, line: 26, baseType: !106, size: 1, align: 32, offset: 1984, flags: DIFlagBitField, extraData: i64 1984)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "from_dccserver", scope: !47, file: !46, line: 27, baseType: !106, size: 1, align: 32, offset: 1985, flags: DIFlagBitField, extraData: i64 1984)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64, align: 64)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !78, line: 107, baseType: !324)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !325, line: 30, size: 2240, align: 64, elements: !326)
!325 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!326 = !{!327, !329, !330, !331, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !389, !390, !394, !395, !396, !400, !401, !402, !403, !404, !405, !406, !407, !408, !415, !416, !417, !418, !419, !425, !429, !433, !437, !441, !446, !453, !460, !464}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !324, file: !328, line: 3, baseType: !51, size: 32, align: 32)
!328 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!329 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !324, file: !328, line: 4, baseType: !51, size: 32, align: 32, offset: 32)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !324, file: !328, line: 6, baseType: !51, size: 32, align: 32, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !324, file: !328, line: 8, baseType: !332, size: 64, align: 64, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64, align: 64)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !78, line: 113, baseType: !334)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !325, line: 25, size: 1920, align: 64, elements: !335)
!335 = !{!336, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !334, file: !337, line: 3, baseType: !51, size: 32, align: 32)
!337 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!338 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !334, file: !337, line: 4, baseType: !51, size: 32, align: 32, offset: 32)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !334, file: !337, line: 6, baseType: !51, size: 32, align: 32, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !334, file: !337, line: 9, baseType: !65, size: 64, align: 64, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !334, file: !337, line: 10, baseType: !51, size: 32, align: 32, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !334, file: !337, line: 11, baseType: !65, size: 64, align: 64, offset: 256)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !334, file: !337, line: 11, baseType: !65, size: 64, align: 64, offset: 320)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !334, file: !337, line: 11, baseType: !65, size: 64, align: 64, offset: 384)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !334, file: !337, line: 13, baseType: !83, size: 16, align: 16, offset: 448)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !334, file: !337, line: 14, baseType: !65, size: 64, align: 64, offset: 512)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !334, file: !337, line: 15, baseType: !65, size: 64, align: 64, offset: 576)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !334, file: !337, line: 16, baseType: !51, size: 32, align: 32, offset: 640)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !334, file: !337, line: 17, baseType: !65, size: 64, align: 64, offset: 704)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !334, file: !337, line: 19, baseType: !351, size: 64, align: 64, offset: 768)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64, align: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !334, file: !337, line: 19, baseType: !351, size: 64, align: 64, offset: 832)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !334, file: !337, line: 21, baseType: !65, size: 64, align: 64, offset: 896)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !334, file: !337, line: 22, baseType: !65, size: 64, align: 64, offset: 960)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !334, file: !337, line: 23, baseType: !65, size: 64, align: 64, offset: 1024)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !334, file: !337, line: 24, baseType: !65, size: 64, align: 64, offset: 1088)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !334, file: !337, line: 26, baseType: !65, size: 64, align: 64, offset: 1152)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !334, file: !337, line: 27, baseType: !65, size: 64, align: 64, offset: 1216)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !334, file: !337, line: 28, baseType: !65, size: 64, align: 64, offset: 1280)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !334, file: !337, line: 29, baseType: !65, size: 64, align: 64, offset: 1344)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !334, file: !337, line: 30, baseType: !65, size: 64, align: 64, offset: 1408)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !334, file: !337, line: 31, baseType: !65, size: 64, align: 64, offset: 1472)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !334, file: !337, line: 32, baseType: !65, size: 64, align: 64, offset: 1536)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !334, file: !337, line: 33, baseType: !65, size: 64, align: 64, offset: 1600)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !334, file: !337, line: 35, baseType: !115, size: 64, align: 64, offset: 1664)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !334, file: !337, line: 38, baseType: !106, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !334, file: !337, line: 39, baseType: !106, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !334, file: !337, line: 40, baseType: !106, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !334, file: !337, line: 41, baseType: !106, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !334, file: !337, line: 42, baseType: !106, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !334, file: !337, line: 43, baseType: !106, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !334, file: !337, line: 44, baseType: !106, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !334, file: !337, line: 45, baseType: !106, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !334, file: !337, line: 46, baseType: !65, size: 64, align: 64, offset: 1792)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !334, file: !337, line: 47, baseType: !65, size: 64, align: 64, offset: 1856)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !324, file: !328, line: 9, baseType: !54, size: 64, align: 64, offset: 192)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !324, file: !328, line: 10, baseType: !54, size: 64, align: 64, offset: 256)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !324, file: !328, line: 12, baseType: !65, size: 64, align: 64, offset: 320)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !324, file: !328, line: 13, baseType: !65, size: 64, align: 64, offset: 384)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !324, file: !328, line: 15, baseType: !106, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !324, file: !328, line: 16, baseType: !106, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !324, file: !328, line: 17, baseType: !106, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !324, file: !328, line: 18, baseType: !106, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !324, file: !328, line: 19, baseType: !106, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !324, file: !328, line: 21, baseType: !386, size: 64, align: 64, offset: 512)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64, align: 64)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !78, line: 102, baseType: !388)
!388 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !78, line: 102, flags: DIFlagFwdDecl)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !324, file: !328, line: 22, baseType: !51, size: 32, align: 32, offset: 576)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !324, file: !328, line: 25, baseType: !391, size: 128, align: 64, offset: 640)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 128, align: 64, elements: !392)
!392 = !{!393}
!393 = !DISubrange(count: 2)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !324, file: !328, line: 26, baseType: !51, size: 32, align: 32, offset: 768)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !324, file: !328, line: 27, baseType: !51, size: 32, align: 32, offset: 800)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !324, file: !328, line: 29, baseType: !397, size: 64, align: 64, offset: 832)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64, align: 64)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !78, line: 103, baseType: !399)
!399 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !78, line: 103, flags: DIFlagFwdDecl)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !324, file: !328, line: 30, baseType: !306, size: 64, align: 64, offset: 896)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !324, file: !328, line: 32, baseType: !65, size: 64, align: 64, offset: 960)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !324, file: !328, line: 33, baseType: !65, size: 64, align: 64, offset: 1024)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !324, file: !328, line: 34, baseType: !65, size: 64, align: 64, offset: 1088)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !324, file: !328, line: 35, baseType: !106, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !324, file: !328, line: 36, baseType: !106, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !324, file: !328, line: 37, baseType: !106, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !324, file: !328, line: 38, baseType: !106, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !324, file: !328, line: 40, baseType: !409, size: 128, align: 64, offset: 1216)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !121, line: 504, baseType: !410)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !121, line: 506, size: 128, align: 64, elements: !411)
!411 = !{!412, !414}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !410, file: !121, line: 508, baseType: !413, size: 64, align: 64)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !121, line: 48, baseType: !58)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !410, file: !121, line: 509, baseType: !413, size: 64, align: 64, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !324, file: !328, line: 41, baseType: !54, size: 64, align: 64, offset: 1344)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !324, file: !328, line: 42, baseType: !51, size: 32, align: 32, offset: 1408)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !324, file: !328, line: 44, baseType: !236, size: 64, align: 64, offset: 1472)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !324, file: !328, line: 45, baseType: !236, size: 64, align: 64, offset: 1536)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !324, file: !328, line: 53, baseType: !420, size: 64, align: 64, offset: 1600)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64, align: 64)
!421 = !DISubroutineType(types: !422)
!422 = !{null, !322, !423, !51}
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64, align: 64)
!424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !324, file: !328, line: 55, baseType: !426, size: 64, align: 64, offset: 1664)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64, align: 64)
!427 = !DISubroutineType(types: !428)
!428 = !{!51, !322, !66}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !324, file: !328, line: 57, baseType: !430, size: 64, align: 64, offset: 1728)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64, align: 64)
!431 = !DISubroutineType(types: !432)
!432 = !{!51, !322, !423}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !324, file: !328, line: 60, baseType: !434, size: 64, align: 64, offset: 1792)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64, align: 64)
!435 = !DISubroutineType(types: !436)
!436 = !{!423, !322}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !324, file: !328, line: 62, baseType: !438, size: 64, align: 64, offset: 1856)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64, align: 64)
!439 = !DISubroutineType(types: !440)
!440 = !{null, !322, !423, !423, !51}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !324, file: !328, line: 65, baseType: !442, size: 64, align: 64, offset: 1920)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64, align: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{!445, !322, !423, !423}
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !324, file: !328, line: 69, baseType: !447, size: 64, align: 64, offset: 1984)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64, align: 64)
!448 = !DISubroutineType(types: !449)
!449 = !{!450, !322, !423}
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64, align: 64)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !78, line: 109, baseType: !452)
!452 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !78, line: 109, flags: DIFlagFwdDecl)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !324, file: !328, line: 70, baseType: !454, size: 64, align: 64, offset: 2048)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64, align: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{!457, !322, !423}
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64, align: 64)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !78, line: 110, baseType: !459)
!459 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !78, line: 110, flags: DIFlagFwdDecl)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !324, file: !328, line: 71, baseType: !461, size: 64, align: 64, offset: 2112)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64, align: 64)
!462 = !DISubroutineType(types: !463)
!463 = !{!51, !423, !423}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !324, file: !328, line: 73, baseType: !461, size: 64, align: 64, offset: 2176)
!465 = !{i32 2, !"Dwarf Version", i32 4}
!466 = !{i32 2, !"Debug Info Version", i32 3}
!467 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!468 = distinct !DISubprogram(name: "dcc_autoget_init", scope: !469, file: !469, line: 83, type: !224, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !470)
!469 = !DIFile(filename: "dcc-autoget.c", directory: "/home/lichi/Desktop/irssi/task1")
!470 = !{}
!471 = !DILocation(line: 85, column: 2, scope: !468)
!472 = !DILocation(line: 86, column: 2, scope: !468)
!473 = !DILocation(line: 87, column: 2, scope: !468)
!474 = !DILocation(line: 88, column: 2, scope: !468)
!475 = !DILocation(line: 89, column: 2, scope: !468)
!476 = !DILocation(line: 91, column: 2, scope: !468)
!477 = !DILocation(line: 92, column: 1, scope: !468)
!478 = distinct !DISubprogram(name: "sig_dcc_request", scope: !469, file: !469, line: 30, type: !479, isLocal: true, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !470)
!479 = !DISubroutineType(types: !480)
!480 = !{null, !44, !423}
!481 = !DILocalVariable(name: "dcc", arg: 1, scope: !478, file: !469, line: 30, type: !44)
!482 = !DIExpression()
!483 = !DILocation(line: 30, column: 42, scope: !478)
!484 = !DILocalVariable(name: "nickaddr", arg: 2, scope: !478, file: !469, line: 30, type: !423)
!485 = !DILocation(line: 30, column: 59, scope: !478)
!486 = !DILocalVariable(name: "statbuf", scope: !478, file: !469, line: 32, type: !487)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !488, line: 46, size: 1152, align: 64, elements: !489)
!488 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "/home/lichi/Desktop/irssi/task1")
!489 = !{!490, !492, !494, !496, !498, !500, !502, !503, !504, !506, !508, !510, !516, !517, !518}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !487, file: !488, line: 48, baseType: !491, size: 64, align: 64)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !57, line: 124, baseType: !136)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !487, file: !488, line: 53, baseType: !493, size: 64, align: 64, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !57, line: 127, baseType: !136)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !487, file: !488, line: 61, baseType: !495, size: 64, align: 64, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !57, line: 130, baseType: !136)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !487, file: !488, line: 62, baseType: !497, size: 32, align: 32, offset: 192)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !57, line: 129, baseType: !106)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !487, file: !488, line: 64, baseType: !499, size: 32, align: 32, offset: 224)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !57, line: 125, baseType: !106)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !487, file: !488, line: 65, baseType: !501, size: 32, align: 32, offset: 256)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !57, line: 126, baseType: !106)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !487, file: !488, line: 67, baseType: !51, size: 32, align: 32, offset: 288)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !487, file: !488, line: 69, baseType: !491, size: 64, align: 64, offset: 320)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !487, file: !488, line: 74, baseType: !505, size: 64, align: 64, offset: 384)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !57, line: 131, baseType: !58)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !487, file: !488, line: 78, baseType: !507, size: 64, align: 64, offset: 448)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !57, line: 153, baseType: !58)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !487, file: !488, line: 80, baseType: !509, size: 64, align: 64, offset: 512)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !57, line: 158, baseType: !58)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !487, file: !488, line: 91, baseType: !511, size: 128, align: 64, offset: 576)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !55, line: 120, size: 128, align: 64, elements: !512)
!512 = !{!513, !514}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !511, file: !55, line: 122, baseType: !56, size: 64, align: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !511, file: !55, line: 123, baseType: !515, size: 64, align: 64, offset: 64)
!515 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !57, line: 175, baseType: !58)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !487, file: !488, line: 92, baseType: !511, size: 128, align: 64, offset: 704)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !487, file: !488, line: 93, baseType: !511, size: 128, align: 64, offset: 832)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !487, file: !488, line: 106, baseType: !519, size: 192, align: 64, offset: 960)
!519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !515, size: 192, align: 64, elements: !520)
!520 = !{!521}
!521 = !DISubrange(count: 3)
!522 = !DILocation(line: 32, column: 21, scope: !478)
!523 = !DILocalVariable(name: "masks", scope: !478, file: !469, line: 33, type: !423)
!524 = !DILocation(line: 33, column: 14, scope: !478)
!525 = !DILocalVariable(name: "str", scope: !478, file: !469, line: 34, type: !65)
!526 = !DILocation(line: 34, column: 15, scope: !478)
!527 = !DILocalVariable(name: "file", scope: !478, file: !469, line: 34, type: !65)
!528 = !DILocation(line: 34, column: 21, scope: !478)
!529 = !DILocalVariable(name: "esc_arg", scope: !478, file: !469, line: 34, type: !65)
!530 = !DILocation(line: 34, column: 28, scope: !478)
!531 = !DILocalVariable(name: "max_size", scope: !478, file: !469, line: 35, type: !51)
!532 = !DILocation(line: 35, column: 13, scope: !478)
!533 = !DILocation(line: 37, column: 57, scope: !534)
!534 = distinct !DILexicalBlock(scope: !478, file: !469, line: 37, column: 13)
!535 = !DILocation(line: 37, column: 32, scope: !534)
!536 = !DILocation(line: 37, column: 16, scope: !534)
!537 = !DILocation(line: 37, column: 13, scope: !478)
!538 = !DILocation(line: 37, column: 15, scope: !539)
!539 = !DILexicalBlockFile(scope: !534, file: !469, discriminator: 1)
!540 = !DILocation(line: 37, column: 13, scope: !541)
!541 = !DILexicalBlockFile(scope: !478, file: !469, discriminator: 2)
!542 = !DILocation(line: 37, column: 47, scope: !543)
!543 = !DILexicalBlockFile(scope: !534, file: !469, discriminator: 3)
!544 = !DILocation(line: 40, column: 7, scope: !545)
!545 = distinct !DILexicalBlock(scope: !478, file: !469, line: 40, column: 6)
!546 = !DILocation(line: 40, column: 6, scope: !478)
!547 = !DILocation(line: 41, column: 3, scope: !545)
!548 = !DILocation(line: 44, column: 6, scope: !549)
!549 = distinct !DILexicalBlock(scope: !478, file: !469, line: 44, column: 6)
!550 = !DILocation(line: 44, column: 11, scope: !549)
!551 = !DILocation(line: 44, column: 16, scope: !549)
!552 = !DILocation(line: 44, column: 23, scope: !549)
!553 = !DILocation(line: 44, column: 27, scope: !554)
!554 = !DILexicalBlockFile(scope: !549, file: !469, discriminator: 1)
!555 = !DILocation(line: 44, column: 6, scope: !554)
!556 = !DILocation(line: 45, column: 17, scope: !549)
!557 = !DILocation(line: 48, column: 10, scope: !478)
!558 = !DILocation(line: 48, column: 8, scope: !478)
!559 = !DILocation(line: 49, column: 7, scope: !560)
!560 = distinct !DILexicalBlock(scope: !478, file: !469, line: 49, column: 6)
!561 = !DILocation(line: 49, column: 6, scope: !560)
!562 = !DILocation(line: 49, column: 13, scope: !560)
!563 = !DILocation(line: 49, column: 21, scope: !560)
!564 = !DILocation(line: 50, column: 53, scope: !560)
!565 = !DILocation(line: 50, column: 58, scope: !560)
!566 = !DILocation(line: 50, column: 35, scope: !560)
!567 = !DILocation(line: 50, column: 20, scope: !560)
!568 = !DILocation(line: 50, column: 32, scope: !560)
!569 = !DILocation(line: 50, column: 39, scope: !560)
!570 = !DILocation(line: 50, column: 44, scope: !560)
!571 = !DILocation(line: 50, column: 50, scope: !560)
!572 = !DILocation(line: 50, column: 7, scope: !573)
!573 = !DILexicalBlockFile(scope: !560, file: !469, discriminator: 1)
!574 = !DILocation(line: 50, column: 7, scope: !560)
!575 = !DILocation(line: 49, column: 6, scope: !576)
!576 = !DILexicalBlockFile(scope: !478, file: !469, discriminator: 1)
!577 = !DILocation(line: 51, column: 3, scope: !560)
!578 = !DILocation(line: 55, column: 7, scope: !579)
!579 = distinct !DILexicalBlock(scope: !478, file: !469, line: 55, column: 6)
!580 = !DILocation(line: 55, column: 6, scope: !579)
!581 = !DILocation(line: 55, column: 13, scope: !579)
!582 = !DILocation(line: 55, column: 21, scope: !579)
!583 = !DILocation(line: 55, column: 24, scope: !584)
!584 = !DILexicalBlockFile(scope: !579, file: !469, discriminator: 1)
!585 = !DILocation(line: 55, column: 29, scope: !584)
!586 = !DILocation(line: 55, column: 36, scope: !584)
!587 = !DILocation(line: 55, column: 43, scope: !584)
!588 = !DILocation(line: 55, column: 82, scope: !589)
!589 = !DILexicalBlockFile(scope: !579, file: !469, discriminator: 2)
!590 = !DILocation(line: 55, column: 87, scope: !589)
!591 = !DILocation(line: 55, column: 64, scope: !589)
!592 = !DILocation(line: 55, column: 49, scope: !589)
!593 = !DILocation(line: 55, column: 61, scope: !589)
!594 = !DILocation(line: 55, column: 105, scope: !589)
!595 = !DILocation(line: 55, column: 110, scope: !589)
!596 = !DILocation(line: 55, column: 87, scope: !597)
!597 = !DILexicalBlockFile(scope: !589, file: !469, discriminator: 3)
!598 = !DILocation(line: 55, column: 72, scope: !589)
!599 = !DILocation(line: 55, column: 60, scope: !589)
!600 = !DILocation(line: 55, column: 65, scope: !589)
!601 = !DILocation(line: 55, column: 47, scope: !602)
!602 = !DILexicalBlockFile(scope: !589, file: !469, discriminator: 4)
!603 = !DILocation(line: 55, column: 47, scope: !589)
!604 = !DILocation(line: 55, column: 6, scope: !589)
!605 = !DILocation(line: 56, column: 3, scope: !579)
!606 = !DILocation(line: 60, column: 7, scope: !607)
!607 = distinct !DILexicalBlock(scope: !478, file: !469, line: 60, column: 6)
!608 = !DILocation(line: 60, column: 12, scope: !607)
!609 = !DILocation(line: 60, column: 6, scope: !607)
!610 = !DILocation(line: 60, column: 16, scope: !607)
!611 = !DILocation(line: 60, column: 23, scope: !607)
!612 = !DILocation(line: 61, column: 16, scope: !607)
!613 = !DILocation(line: 61, column: 6, scope: !614)
!614 = !DILexicalBlockFile(scope: !607, file: !469, discriminator: 1)
!615 = !DILocation(line: 61, column: 60, scope: !607)
!616 = !DILocation(line: 60, column: 6, scope: !576)
!617 = !DILocation(line: 62, column: 3, scope: !607)
!618 = !DILocation(line: 66, column: 20, scope: !478)
!619 = !DILocation(line: 66, column: 18, scope: !478)
!620 = !DILocation(line: 67, column: 6, scope: !621)
!621 = distinct !DILexicalBlock(scope: !478, file: !469, line: 67, column: 6)
!622 = !DILocation(line: 67, column: 15, scope: !621)
!623 = !DILocation(line: 67, column: 19, scope: !621)
!624 = !DILocation(line: 67, column: 30, scope: !625)
!625 = !DILexicalBlockFile(scope: !621, file: !469, discriminator: 1)
!626 = !DILocation(line: 67, column: 22, scope: !625)
!627 = !DILocation(line: 67, column: 41, scope: !625)
!628 = !DILocation(line: 67, column: 46, scope: !625)
!629 = !DILocation(line: 67, column: 39, scope: !625)
!630 = !DILocation(line: 67, column: 6, scope: !625)
!631 = !DILocation(line: 68, column: 17, scope: !621)
!632 = !DILocation(line: 71, column: 31, scope: !478)
!633 = !DILocation(line: 71, column: 36, scope: !478)
!634 = !DILocation(line: 71, column: 9, scope: !478)
!635 = !DILocation(line: 71, column: 7, scope: !478)
!636 = !DILocation(line: 72, column: 26, scope: !478)
!637 = !DILocation(line: 72, column: 31, scope: !478)
!638 = !DILocation(line: 72, column: 12, scope: !478)
!639 = !DILocation(line: 72, column: 10, scope: !478)
!640 = !DILocation(line: 73, column: 24, scope: !478)
!641 = !DILocation(line: 73, column: 60, scope: !478)
!642 = !DILocation(line: 74, column: 15, scope: !478)
!643 = !DILocation(line: 74, column: 10, scope: !478)
!644 = !DILocation(line: 74, column: 31, scope: !478)
!645 = !DILocation(line: 73, column: 24, scope: !576)
!646 = !DILocation(line: 76, column: 10, scope: !478)
!647 = !DILocation(line: 76, column: 15, scope: !478)
!648 = !DILocation(line: 76, column: 21, scope: !478)
!649 = !DILocation(line: 73, column: 8, scope: !576)
!650 = !DILocation(line: 73, column: 6, scope: !576)
!651 = !DILocation(line: 77, column: 32, scope: !478)
!652 = !DILocation(line: 77, column: 37, scope: !478)
!653 = !DILocation(line: 77, column: 42, scope: !478)
!654 = !DILocation(line: 77, column: 2, scope: !478)
!655 = !DILocation(line: 78, column: 9, scope: !478)
!656 = !DILocation(line: 78, column: 2, scope: !478)
!657 = !DILocation(line: 79, column: 16, scope: !478)
!658 = !DILocation(line: 79, column: 9, scope: !478)
!659 = !DILocation(line: 80, column: 9, scope: !478)
!660 = !DILocation(line: 80, column: 2, scope: !478)
!661 = !DILocation(line: 81, column: 1, scope: !478)
!662 = !DILocation(line: 81, column: 1, scope: !576)
!663 = distinct !DISubprogram(name: "dcc_autoget_deinit", scope: !469, file: !469, line: 94, type: !224, isLocal: false, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !470)
!664 = !DILocation(line: 96, column: 2, scope: !663)
!665 = !DILocation(line: 97, column: 1, scope: !663)
