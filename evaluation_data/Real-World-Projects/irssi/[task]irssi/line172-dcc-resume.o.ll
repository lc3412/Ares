; ModuleID = './line172-dcc-resume.o.i'
source_filename = "./line172-dcc-resume.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GSList = type { i8*, %struct._GSList* }
%struct._IRC_SERVER_REC = type opaque
%struct.DCC_REC = type { i32, i32, i64, %struct._IRC_SERVER_REC*, i8*, i8*, i8*, %struct.CHAT_DCC_REC*, i8*, i8*, %struct._IPADDR, [46 x i8], i32, %struct._GIOChannel*, i32, i32, i32, i64, i64, i32, i8, %struct._GHashTable* }
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
%struct.FILE_DCC_REC = type { i32, i32, i64, %struct._IRC_SERVER_REC*, i8*, i8*, i8*, %struct.CHAT_DCC_REC*, i8*, i8*, %struct._IPADDR, [46 x i8], i32, %struct._GIOChannel*, i32, i32, i32, i64, i64, i32, i8, %struct._GHashTable*, i64, i64, i32, i32, [4 x i8], i32 }
%struct.SEND_DCC_REC = type { i32, i32, i64, %struct._IRC_SERVER_REC*, i8*, i8*, i8*, %struct.CHAT_DCC_REC*, i8*, i8*, %struct._IPADDR, [46 x i8], i32, %struct._GIOChannel*, i32, i32, i32, i64, i64, i32, i8, %struct._GHashTable*, i64, i64, i32, i32, [4 x i8], i32, i8 }
%struct.GET_DCC_REC = type { i32, i32, i64, %struct._IRC_SERVER_REC*, i8*, i8*, i8*, %struct.CHAT_DCC_REC*, i8*, i8*, %struct._IPADDR, [46 x i8], i32, %struct._GIOChannel*, i32, i32, i32, i64, i64, i32, i8, %struct._GHashTable*, i64, i64, i32, i32, [4 x i8], i32, i32, i8*, i8 }

@.str = private unnamed_addr constant [8 x i8] c"irc/dcc\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"ctcp msg dcc resume\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"ctcp msg dcc accept\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"dcc resume\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"DCC\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"SEND\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"dcc error ctcp\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"RESUME\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"DCC ACCEPT \22%s\22 %d %lu\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"DCC ACCEPT %s %d %lu\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"DCC ACCEPT \22%s\22 0 %lu %d\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"DCC ACCEPT %s 0 %lu %d\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c" \00", align 1
@dcc_conns = external global %struct._GSList*, align 8
@.str.13 = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"ACCEPT\00", align 1
@__func__.dcc_send_resume = private unnamed_addr constant [16 x i8] c"dcc_send_resume\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"dcc != NULL\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"dcc error file open\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"DCC RESUME \22%s\22 %d %lu\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"DCC RESUME %s %d %lu\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"DCC RESUME \22%s\22 0 %lu %d\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"DCC RESUME %s 0 %lu %d\00", align 1

; Function Attrs: nounwind uwtable
define i32 @get_file_params_count_resume(i8**, i32) #0 !dbg !430 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !436, metadata !437), !dbg !438
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !439, metadata !437), !dbg !440
  call void @llvm.dbg.declare(metadata i32* %6, metadata !441, metadata !437), !dbg !442
  call void @llvm.dbg.declare(metadata i32* %7, metadata !443, metadata !437), !dbg !444
  %8 = load i8**, i8*** %4, align 8, !dbg !445
  %9 = getelementptr inbounds i8*, i8** %8, i64 0, !dbg !445
  %10 = load i8*, i8** %9, align 8, !dbg !445
  %11 = load i8, i8* %10, align 1, !dbg !447
  %12 = sext i8 %11 to i32, !dbg !447
  %13 = icmp eq i32 %12, 34, !dbg !448
  br i1 %13, label %14, label %82, !dbg !449

; <label>:14:                                     ; preds = %2
  store i32 0, i32* %6, align 4, !dbg !450
  br label %15, !dbg !453

; <label>:15:                                     ; preds = %78, %14
  %16 = load i32, i32* %6, align 4, !dbg !454
  %17 = load i32, i32* %5, align 4, !dbg !457
  %18 = sub nsw i32 %17, 2, !dbg !458
  %19 = icmp slt i32 %16, %18, !dbg !459
  br i1 %19, label %20, label %81, !dbg !460

; <label>:20:                                     ; preds = %15
  %21 = load i32, i32* %6, align 4, !dbg !461
  %22 = sext i32 %21 to i64, !dbg !464
  %23 = load i8**, i8*** %4, align 8, !dbg !464
  %24 = getelementptr inbounds i8*, i8** %23, i64 %22, !dbg !464
  %25 = load i8*, i8** %24, align 8, !dbg !464
  %26 = call i64 @strlen(i8* %25) #6, !dbg !465
  %27 = icmp eq i64 %26, 0, !dbg !466
  br i1 %27, label %28, label %29, !dbg !467

; <label>:28:                                     ; preds = %20
  br label %78, !dbg !468

; <label>:29:                                     ; preds = %20
  %30 = load i32, i32* %6, align 4, !dbg !469
  %31 = sext i32 %30 to i64, !dbg !471
  %32 = load i8**, i8*** %4, align 8, !dbg !471
  %33 = getelementptr inbounds i8*, i8** %32, i64 %31, !dbg !471
  %34 = load i8*, i8** %33, align 8, !dbg !471
  %35 = call i64 @strlen(i8* %34) #6, !dbg !472
  %36 = sub i64 %35, 1, !dbg !473
  %37 = load i32, i32* %6, align 4, !dbg !474
  %38 = sext i32 %37 to i64, !dbg !475
  %39 = load i8**, i8*** %4, align 8, !dbg !475
  %40 = getelementptr inbounds i8*, i8** %39, i64 %38, !dbg !475
  %41 = load i8*, i8** %40, align 8, !dbg !475
  %42 = getelementptr inbounds i8, i8* %41, i64 %36, !dbg !475
  %43 = load i8, i8* %42, align 1, !dbg !475
  %44 = sext i8 %43 to i32, !dbg !475
  %45 = icmp eq i32 %44, 34, !dbg !476
  br i1 %45, label %46, label %77, !dbg !477

; <label>:46:                                     ; preds = %29
  %47 = load i32, i32* %6, align 4, !dbg !478
  %48 = add nsw i32 %47, 1, !dbg !479
  %49 = sext i32 %48 to i64, !dbg !480
  %50 = load i8**, i8*** %4, align 8, !dbg !480
  %51 = getelementptr inbounds i8*, i8** %50, i64 %49, !dbg !480
  %52 = load i8*, i8** %51, align 8, !dbg !480
  %53 = call i32 @is_numeric(i8* %52, i8 signext 0), !dbg !481
  %54 = icmp ne i32 %53, 0, !dbg !481
  br i1 %54, label %55, label %77, !dbg !482

; <label>:55:                                     ; preds = %46
  %56 = load i32, i32* %6, align 4, !dbg !483
  %57 = add nsw i32 %56, 1, !dbg !485
  %58 = sext i32 %57 to i64, !dbg !486
  %59 = load i8**, i8*** %4, align 8, !dbg !486
  %60 = getelementptr inbounds i8*, i8** %59, i64 %58, !dbg !486
  %61 = load i8*, i8** %60, align 8, !dbg !486
  %62 = call i64 @atol(i8* %61) #6, !dbg !487
  %63 = icmp slt i64 %62, 65536, !dbg !488
  br i1 %63, label %64, label %77, !dbg !489

; <label>:64:                                     ; preds = %55
  %65 = load i32, i32* %6, align 4, !dbg !490
  %66 = add nsw i32 %65, 1, !dbg !492
  %67 = add nsw i32 %66, 1, !dbg !493
  %68 = sext i32 %67 to i64, !dbg !494
  %69 = load i8**, i8*** %4, align 8, !dbg !494
  %70 = getelementptr inbounds i8*, i8** %69, i64 %68, !dbg !494
  %71 = load i8*, i8** %70, align 8, !dbg !494
  %72 = call i32 @is_numeric(i8* %71, i8 signext 0), !dbg !495
  %73 = icmp ne i32 %72, 0, !dbg !495
  br i1 %73, label %74, label %77, !dbg !496

; <label>:74:                                     ; preds = %64
  %75 = load i32, i32* %6, align 4, !dbg !498
  %76 = add nsw i32 %75, 1, !dbg !499
  store i32 %76, i32* %3, align 4, !dbg !500
  br label %123, !dbg !500

; <label>:77:                                     ; preds = %64, %55, %46, %29
  br label %78, !dbg !501

; <label>:78:                                     ; preds = %77, %28
  %79 = load i32, i32* %6, align 4, !dbg !502
  %80 = add nsw i32 %79, 1, !dbg !502
  store i32 %80, i32* %6, align 4, !dbg !502
  br label %15, !dbg !504, !llvm.loop !505

; <label>:81:                                     ; preds = %15
  br label %82, !dbg !507

; <label>:82:                                     ; preds = %81, %2
  %83 = load i32, i32* %5, align 4, !dbg !508
  %84 = sub nsw i32 %83, 2, !dbg !509
  store i32 %84, i32* %7, align 4, !dbg !510
  %85 = load i32, i32* %5, align 4, !dbg !511
  %86 = sub nsw i32 %85, 2, !dbg !513
  store i32 %86, i32* %6, align 4, !dbg !514
  br label %87, !dbg !515

; <label>:87:                                     ; preds = %118, %82
  %88 = load i32, i32* %6, align 4, !dbg !516
  %89 = icmp sgt i32 %88, 0, !dbg !519
  br i1 %89, label %90, label %121, !dbg !520

; <label>:90:                                     ; preds = %87
  %91 = load i32, i32* %6, align 4, !dbg !521
  %92 = sext i32 %91 to i64, !dbg !524
  %93 = load i8**, i8*** %4, align 8, !dbg !524
  %94 = getelementptr inbounds i8*, i8** %93, i64 %92, !dbg !524
  %95 = load i8*, i8** %94, align 8, !dbg !524
  %96 = call i32 @is_numeric(i8* %95, i8 signext 0), !dbg !525
  %97 = icmp ne i32 %96, 0, !dbg !525
  br i1 %97, label %98, label %117, !dbg !526

; <label>:98:                                     ; preds = %90
  %99 = load i32, i32* %6, align 4, !dbg !527
  %100 = sext i32 %99 to i64, !dbg !529
  %101 = load i8**, i8*** %4, align 8, !dbg !529
  %102 = getelementptr inbounds i8*, i8** %101, i64 %100, !dbg !529
  %103 = load i8*, i8** %102, align 8, !dbg !529
  %104 = call i64 @atol(i8* %103) #6, !dbg !530
  %105 = icmp slt i64 %104, 65536, !dbg !531
  br i1 %105, label %106, label %117, !dbg !532

; <label>:106:                                    ; preds = %98
  %107 = load i32, i32* %6, align 4, !dbg !533
  %108 = add nsw i32 %107, 1, !dbg !535
  %109 = sext i32 %108 to i64, !dbg !536
  %110 = load i8**, i8*** %4, align 8, !dbg !536
  %111 = getelementptr inbounds i8*, i8** %110, i64 %109, !dbg !536
  %112 = load i8*, i8** %111, align 8, !dbg !536
  %113 = call i32 @is_numeric(i8* %112, i8 signext 0), !dbg !537
  %114 = icmp ne i32 %113, 0, !dbg !537
  br i1 %114, label %115, label %117, !dbg !538

; <label>:115:                                    ; preds = %106
  %116 = load i32, i32* %6, align 4, !dbg !539
  store i32 %116, i32* %7, align 4, !dbg !540
  br label %117, !dbg !541

; <label>:117:                                    ; preds = %115, %106, %98, %90
  br label %118, !dbg !542

; <label>:118:                                    ; preds = %117
  %119 = load i32, i32* %6, align 4, !dbg !543
  %120 = add nsw i32 %119, -1, !dbg !543
  store i32 %120, i32* %6, align 4, !dbg !543
  br label %87, !dbg !545, !llvm.loop !546

; <label>:121:                                    ; preds = %87
  %122 = load i32, i32* %7, align 4, !dbg !548
  store i32 %122, i32* %3, align 4, !dbg !549
  br label %123, !dbg !549

; <label>:123:                                    ; preds = %121, %74
  %124 = load i32, i32* %3, align 4, !dbg !550
  ret i32 %124, !dbg !550
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare i32 @is_numeric(i8*, i8 signext) #3

; Function Attrs: nounwind readonly
declare i64 @atol(i8*) #2

; Function Attrs: nounwind uwtable
define void @dcc_resume_init() #0 !dbg !551 {
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*, %struct.DCC_REC*)* @ctcp_msg_dcc_resume to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !552
  call void @signal_add_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*, %struct.DCC_REC*)* @ctcp_msg_dcc_accept to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !553
  call void @command_bind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_dcc_resume to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !554
  ret void, !dbg !555
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @ctcp_msg_dcc_resume(%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*, %struct.DCC_REC*) #0 !dbg !556 {
  %7 = alloca %struct._IRC_SERVER_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.DCC_REC*, align 8
  %13 = alloca %struct.FILE_DCC_REC*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %7, metadata !559, metadata !437), !dbg !560
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !561, metadata !437), !dbg !562
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !563, metadata !437), !dbg !564
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !565, metadata !437), !dbg !566
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !567, metadata !437), !dbg !568
  store %struct.DCC_REC* %5, %struct.DCC_REC** %12, align 8
  call void @llvm.dbg.declare(metadata %struct.DCC_REC** %12, metadata !569, metadata !437), !dbg !570
  call void @llvm.dbg.declare(metadata %struct.FILE_DCC_REC** %13, metadata !571, metadata !437), !dbg !605
  call void @llvm.dbg.declare(metadata i8** %14, metadata !606, metadata !437), !dbg !607
  call void @llvm.dbg.declare(metadata i64* %15, metadata !608, metadata !437), !dbg !609
  call void @llvm.dbg.declare(metadata i32* %16, metadata !610, metadata !437), !dbg !611
  store i32 -1, i32* %16, align 4, !dbg !611
  %17 = call i32 @module_get_uniq_id_str(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0)), !dbg !612
  %18 = load i8*, i8** %8, align 8, !dbg !614
  %19 = load i8*, i8** %9, align 8, !dbg !615
  %20 = call i32 @dcc_ctcp_resume_parse(i32 %17, i8* %18, i8* %19, %struct.FILE_DCC_REC** %13, i64* %15, i32* %16), !dbg !616
  %21 = icmp ne i32 %20, 0, !dbg !618
  br i1 %21, label %28, label %22, !dbg !619

; <label>:22:                                     ; preds = %6
  %23 = load i8*, i8** %8, align 8, !dbg !620
  %24 = load i8*, i8** %9, align 8, !dbg !622
  %25 = load i8*, i8** %10, align 8, !dbg !623
  %26 = load i8*, i8** %11, align 8, !dbg !624
  %27 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i32 5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* %23, i8* %24, i8* %25, i8* %26), !dbg !625
  br label %97, !dbg !626

; <label>:28:                                     ; preds = %6
  %29 = load %struct.FILE_DCC_REC*, %struct.FILE_DCC_REC** %13, align 8, !dbg !627
  %30 = icmp ne %struct.FILE_DCC_REC* %29, null, !dbg !630
  br i1 %30, label %31, label %96, !dbg !631

; <label>:31:                                     ; preds = %28
  %32 = load %struct.FILE_DCC_REC*, %struct.FILE_DCC_REC** %13, align 8, !dbg !632
  %33 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %7, align 8, !dbg !634
  %34 = load i64, i64* %15, align 8, !dbg !635
  %35 = call i32 @dcc_resume_file_check(%struct.FILE_DCC_REC* %32, %struct._IRC_SERVER_REC* %33, i64 %34), !dbg !636
  %36 = icmp ne i32 %35, 0, !dbg !636
  br i1 %36, label %37, label %96, !dbg !637

; <label>:37:                                     ; preds = %31
  %38 = load %struct.FILE_DCC_REC*, %struct.FILE_DCC_REC** %13, align 8, !dbg !638
  %39 = getelementptr inbounds %struct.FILE_DCC_REC, %struct.FILE_DCC_REC* %38, i32 0, i32 19, !dbg !641
  %40 = load i32, i32* %39, align 8, !dbg !641
  %41 = icmp sge i32 %40, 0, !dbg !642
  br i1 %41, label %63, label %42, !dbg !643

; <label>:42:                                     ; preds = %37
  %43 = load %struct.FILE_DCC_REC*, %struct.FILE_DCC_REC** %13, align 8, !dbg !644
  %44 = bitcast %struct.FILE_DCC_REC* %43 to i8*, !dbg !644
  %45 = call i8* @module_check_cast_module(i8* %44, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0)), !dbg !646
  %46 = bitcast i8* %45 to %struct.SEND_DCC_REC*, !dbg !647
  %47 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %46, i32 0, i32 28, !dbg !646
  %48 = load i8, i8* %47, align 8, !dbg !646
  %49 = and i8 %48, 1, !dbg !646
  %50 = zext i8 %49 to i32, !dbg !646
  %51 = icmp ne i32 %50, 0, !dbg !648
  %52 = select i1 %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0), !dbg !648
  %53 = load %struct.FILE_DCC_REC*, %struct.FILE_DCC_REC** %13, align 8, !dbg !649
  %54 = getelementptr inbounds %struct.FILE_DCC_REC, %struct.FILE_DCC_REC* %53, i32 0, i32 9, !dbg !650
  %55 = load i8*, i8** %54, align 8, !dbg !650
  %56 = load %struct.FILE_DCC_REC*, %struct.FILE_DCC_REC** %13, align 8, !dbg !651
  %57 = getelementptr inbounds %struct.FILE_DCC_REC, %struct.FILE_DCC_REC* %56, i32 0, i32 12, !dbg !652
  %58 = load i32, i32* %57, align 4, !dbg !652
  %59 = load %struct.FILE_DCC_REC*, %struct.FILE_DCC_REC** %13, align 8, !dbg !653
  %60 = getelementptr inbounds %struct.FILE_DCC_REC, %struct.FILE_DCC_REC* %59, i32 0, i32 18, !dbg !654
  %61 = load i64, i64* %60, align 8, !dbg !654
  %62 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %52, i8* %55, i32 %58, i64 %61), !dbg !655
  store i8* %62, i8** %14, align 8, !dbg !657
  br label %84, !dbg !658

; <label>:63:                                     ; preds = %37
  %64 = load %struct.FILE_DCC_REC*, %struct.FILE_DCC_REC** %13, align 8, !dbg !659
  %65 = bitcast %struct.FILE_DCC_REC* %64 to i8*, !dbg !659
  %66 = call i8* @module_check_cast_module(i8* %65, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0)), !dbg !661
  %67 = bitcast i8* %66 to %struct.SEND_DCC_REC*, !dbg !662
  %68 = getelementptr inbounds %struct.SEND_DCC_REC, %struct.SEND_DCC_REC* %67, i32 0, i32 28, !dbg !661
  %69 = load i8, i8* %68, align 8, !dbg !661
  %70 = and i8 %69, 1, !dbg !661
  %71 = zext i8 %70 to i32, !dbg !661
  %72 = icmp ne i32 %71, 0, !dbg !663
  %73 = select i1 %72, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0), !dbg !663
  %74 = load %struct.FILE_DCC_REC*, %struct.FILE_DCC_REC** %13, align 8, !dbg !664
  %75 = getelementptr inbounds %struct.FILE_DCC_REC, %struct.FILE_DCC_REC* %74, i32 0, i32 9, !dbg !665
  %76 = load i8*, i8** %75, align 8, !dbg !665
  %77 = load %struct.FILE_DCC_REC*, %struct.FILE_DCC_REC** %13, align 8, !dbg !666
  %78 = getelementptr inbounds %struct.FILE_DCC_REC, %struct.FILE_DCC_REC* %77, i32 0, i32 18, !dbg !667
  %79 = load i64, i64* %78, align 8, !dbg !667
  %80 = load %struct.FILE_DCC_REC*, %struct.FILE_DCC_REC** %13, align 8, !dbg !668
  %81 = getelementptr inbounds %struct.FILE_DCC_REC, %struct.FILE_DCC_REC* %80, i32 0, i32 19, !dbg !669
  %82 = load i32, i32* %81, align 8, !dbg !669
  %83 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %73, i8* %76, i64 %79, i32 %82), !dbg !670
  store i8* %83, i8** %14, align 8, !dbg !672
  br label %84

; <label>:84:                                     ; preds = %63, %42
  %85 = load %struct.FILE_DCC_REC*, %struct.FILE_DCC_REC** %13, align 8, !dbg !673
  %86 = getelementptr inbounds %struct.FILE_DCC_REC, %struct.FILE_DCC_REC* %85, i32 0, i32 3, !dbg !674
  %87 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %86, align 8, !dbg !674
  %88 = load %struct.FILE_DCC_REC*, %struct.FILE_DCC_REC** %13, align 8, !dbg !675
  %89 = getelementptr inbounds %struct.FILE_DCC_REC, %struct.FILE_DCC_REC* %88, i32 0, i32 6, !dbg !676
  %90 = load i8*, i8** %89, align 8, !dbg !676
  %91 = load %struct.FILE_DCC_REC*, %struct.FILE_DCC_REC** %13, align 8, !dbg !677
  %92 = getelementptr inbounds %struct.FILE_DCC_REC, %struct.FILE_DCC_REC* %91, i32 0, i32 7, !dbg !678
  %93 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %92, align 8, !dbg !678
  %94 = load i8*, i8** %14, align 8, !dbg !679
  call void @dcc_ctcp_message(%struct._IRC_SERVER_REC* %87, i8* %90, %struct.CHAT_DCC_REC* %93, i32 0, i8* %94), !dbg !680
  %95 = load i8*, i8** %14, align 8, !dbg !681
  call void @g_free(i8* %95), !dbg !682
  br label %96, !dbg !683

; <label>:96:                                     ; preds = %84, %31, %28
  br label %97

; <label>:97:                                     ; preds = %96, %22
  ret void, !dbg !684
}

; Function Attrs: nounwind uwtable
define internal void @ctcp_msg_dcc_accept(%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*, %struct.DCC_REC*) #0 !dbg !685 {
  %7 = alloca %struct._IRC_SERVER_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.DCC_REC*, align 8
  %13 = alloca %struct.FILE_DCC_REC*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %7, metadata !686, metadata !437), !dbg !687
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !688, metadata !437), !dbg !689
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !690, metadata !437), !dbg !691
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !692, metadata !437), !dbg !693
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !694, metadata !437), !dbg !695
  store %struct.DCC_REC* %5, %struct.DCC_REC** %12, align 8
  call void @llvm.dbg.declare(metadata %struct.DCC_REC** %12, metadata !696, metadata !437), !dbg !697
  call void @llvm.dbg.declare(metadata %struct.FILE_DCC_REC** %13, metadata !698, metadata !437), !dbg !699
  call void @llvm.dbg.declare(metadata i64* %14, metadata !700, metadata !437), !dbg !701
  call void @llvm.dbg.declare(metadata i32* %15, metadata !702, metadata !437), !dbg !703
  %16 = call i32 @module_get_uniq_id_str(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0)), !dbg !704
  %17 = load i8*, i8** %8, align 8, !dbg !706
  %18 = load i8*, i8** %9, align 8, !dbg !707
  %19 = call i32 @dcc_ctcp_resume_parse(i32 %16, i8* %17, i8* %18, %struct.FILE_DCC_REC** %13, i64* %14, i32* %15), !dbg !708
  %20 = icmp ne i32 %19, 0, !dbg !710
  br i1 %20, label %21, label %32, !dbg !711

; <label>:21:                                     ; preds = %6
  %22 = load %struct.FILE_DCC_REC*, %struct.FILE_DCC_REC** %13, align 8, !dbg !712
  %23 = icmp ne %struct.FILE_DCC_REC* %22, null, !dbg !713
  br i1 %23, label %24, label %38, !dbg !714

; <label>:24:                                     ; preds = %21
  %25 = load %struct.FILE_DCC_REC*, %struct.FILE_DCC_REC** %13, align 8, !dbg !715
  %26 = bitcast %struct.FILE_DCC_REC* %25 to i8*, !dbg !715
  %27 = call i8* @module_check_cast_module(i8* %26, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0)), !dbg !717
  %28 = bitcast i8* %27 to %struct.GET_DCC_REC*, !dbg !718
  %29 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %28, i32 0, i32 28, !dbg !719
  %30 = load i32, i32* %29, align 8, !dbg !719
  %31 = icmp ne i32 %30, 3, !dbg !720
  br i1 %31, label %32, label %38, !dbg !721

; <label>:32:                                     ; preds = %24, %6
  %33 = load i8*, i8** %8, align 8, !dbg !723
  %34 = load i8*, i8** %9, align 8, !dbg !725
  %35 = load i8*, i8** %10, align 8, !dbg !726
  %36 = load i8*, i8** %11, align 8, !dbg !727
  %37 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i32 5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i8* %33, i8* %34, i8* %35, i8* %36), !dbg !728
  br label %64, !dbg !729

; <label>:38:                                     ; preds = %24, %21
  %39 = load %struct.FILE_DCC_REC*, %struct.FILE_DCC_REC** %13, align 8, !dbg !730
  %40 = icmp ne %struct.FILE_DCC_REC* %39, null, !dbg !733
  br i1 %40, label %41, label %63, !dbg !734

; <label>:41:                                     ; preds = %38
  %42 = load %struct.FILE_DCC_REC*, %struct.FILE_DCC_REC** %13, align 8, !dbg !735
  %43 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %7, align 8, !dbg !737
  %44 = load i64, i64* %14, align 8, !dbg !738
  %45 = call i32 @dcc_resume_file_check(%struct.FILE_DCC_REC* %42, %struct._IRC_SERVER_REC* %43, i64 %44), !dbg !739
  %46 = icmp ne i32 %45, 0, !dbg !739
  br i1 %46, label %47, label %63, !dbg !740

; <label>:47:                                     ; preds = %41
  %48 = load %struct.FILE_DCC_REC*, %struct.FILE_DCC_REC** %13, align 8, !dbg !741
  %49 = getelementptr inbounds %struct.FILE_DCC_REC, %struct.FILE_DCC_REC* %48, i32 0, i32 19, !dbg !744
  %50 = load i32, i32* %49, align 8, !dbg !744
  %51 = icmp sge i32 %50, 0, !dbg !745
  br i1 %51, label %57, label %52, !dbg !746

; <label>:52:                                     ; preds = %47
  %53 = load %struct.FILE_DCC_REC*, %struct.FILE_DCC_REC** %13, align 8, !dbg !747
  %54 = bitcast %struct.FILE_DCC_REC* %53 to i8*, !dbg !747
  %55 = call i8* @module_check_cast_module(i8* %54, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0)), !dbg !748
  %56 = bitcast i8* %55 to %struct.GET_DCC_REC*, !dbg !749
  call void @dcc_get_connect(%struct.GET_DCC_REC* %56), !dbg !750
  br label %62, !dbg !752

; <label>:57:                                     ; preds = %47
  %58 = load %struct.FILE_DCC_REC*, %struct.FILE_DCC_REC** %13, align 8, !dbg !753
  %59 = bitcast %struct.FILE_DCC_REC* %58 to i8*, !dbg !753
  %60 = call i8* @module_check_cast_module(i8* %59, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0)), !dbg !754
  %61 = bitcast i8* %60 to %struct.GET_DCC_REC*, !dbg !755
  call void @dcc_get_passive(%struct.GET_DCC_REC* %61), !dbg !756
  br label %62

; <label>:62:                                     ; preds = %57, %52
  br label %63, !dbg !757

; <label>:63:                                     ; preds = %62, %41, %38
  br label %64

; <label>:64:                                     ; preds = %63, %32
  ret void, !dbg !758
}

declare void @command_bind_full(i8*, i32, i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @cmd_dcc_resume(i8*) #0 !dbg !759 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !762, metadata !437), !dbg !763
  %3 = load i8*, i8** %2, align 8, !dbg !764
  call void @cmd_dcc_receive(i8* %3, void (%struct.GET_DCC_REC*)* @dcc_send_resume, void (%struct.GET_DCC_REC*)* @dcc_send_resume), !dbg !765
  ret void, !dbg !766
}

; Function Attrs: nounwind uwtable
define void @dcc_resume_deinit() #0 !dbg !767 {
  call void @signal_remove_full(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*, %struct.DCC_REC*)* @ctcp_msg_dcc_resume to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !768
  call void @signal_remove_full(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*, i8*, %struct.DCC_REC*)* @ctcp_msg_dcc_accept to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !769
  call void @command_unbind_full(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_dcc_resume to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !770
  ret void, !dbg !771
}

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #3

declare void @command_unbind_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i32 @dcc_ctcp_resume_parse(i32, i8*, i8*, %struct.FILE_DCC_REC**, i64*, i32*) #0 !dbg !772 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.FILE_DCC_REC**, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !778, metadata !437), !dbg !779
  store i8* %1, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !780, metadata !437), !dbg !781
  store i8* %2, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !782, metadata !437), !dbg !783
  store %struct.FILE_DCC_REC** %3, %struct.FILE_DCC_REC*** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.FILE_DCC_REC*** %11, metadata !784, metadata !437), !dbg !785
  store i64* %4, i64** %12, align 8
  call void @llvm.dbg.declare(metadata i64** %12, metadata !786, metadata !437), !dbg !787
  store i32* %5, i32** %13, align 8
  call void @llvm.dbg.declare(metadata i32** %13, metadata !788, metadata !437), !dbg !789
  call void @llvm.dbg.declare(metadata i8*** %14, metadata !790, metadata !437), !dbg !791
  call void @llvm.dbg.declare(metadata i32* %15, metadata !792, metadata !437), !dbg !793
  call void @llvm.dbg.declare(metadata i32* %16, metadata !794, metadata !437), !dbg !795
  call void @llvm.dbg.declare(metadata i32* %17, metadata !796, metadata !437), !dbg !797
  %18 = load i8*, i8** %9, align 8, !dbg !798
  %19 = call noalias i8** @g_strsplit(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), i32 -1), !dbg !799
  store i8** %19, i8*** %14, align 8, !dbg !800
  %20 = load i8**, i8*** %14, align 8, !dbg !801
  %21 = call i32 @g_strv_length(i8** %20), !dbg !802
  store i32 %21, i32* %15, align 4, !dbg !803
  %22 = load i32, i32* %15, align 4, !dbg !804
  %23 = icmp slt i32 %22, 3, !dbg !806
  br i1 %23, label %24, label %25, !dbg !807

; <label>:24:                                     ; preds = %6
  store i32 0, i32* %7, align 4, !dbg !808
  br label %89, !dbg !808

; <label>:25:                                     ; preds = %6
  %26 = load i8**, i8*** %14, align 8, !dbg !809
  %27 = load i32, i32* %15, align 4, !dbg !810
  %28 = call i32 @get_file_params_count_resume(i8** %26, i32 %27), !dbg !811
  store i32 %28, i32* %16, align 4, !dbg !812
  %29 = load i32, i32* %15, align 4, !dbg !813
  %30 = load i32, i32* %16, align 4, !dbg !815
  %31 = add nsw i32 %30, 2, !dbg !816
  %32 = icmp sge i32 %29, %31, !dbg !817
  br i1 %32, label %33, label %87, !dbg !818

; <label>:33:                                     ; preds = %25
  %34 = load i32, i32* %16, align 4, !dbg !819
  %35 = sext i32 %34 to i64, !dbg !821
  %36 = load i8**, i8*** %14, align 8, !dbg !821
  %37 = getelementptr inbounds i8*, i8** %36, i64 %35, !dbg !821
  %38 = load i8*, i8** %37, align 8, !dbg !821
  %39 = call i32 @atoi(i8* %38) #6, !dbg !822
  store i32 %39, i32* %17, align 4, !dbg !823
  %40 = load i32, i32* %16, align 4, !dbg !824
  %41 = add nsw i32 %40, 1, !dbg !825
  %42 = sext i32 %41 to i64, !dbg !826
  %43 = load i8**, i8*** %14, align 8, !dbg !826
  %44 = getelementptr inbounds i8*, i8** %43, i64 %42, !dbg !826
  %45 = load i8*, i8** %44, align 8, !dbg !826
  %46 = call i64 @str_to_uofft(i8* %45), !dbg !827
  %47 = load i64*, i64** %12, align 8, !dbg !828
  store i64 %46, i64* %47, align 8, !dbg !829
  %48 = load i32, i32* %17, align 4, !dbg !830
  %49 = icmp eq i32 %48, 0, !dbg !831
  br i1 %49, label %50, label %63, !dbg !832

; <label>:50:                                     ; preds = %33
  %51 = load i32, i32* %15, align 4, !dbg !833
  %52 = load i32, i32* %16, align 4, !dbg !835
  %53 = add nsw i32 %52, 3, !dbg !836
  %54 = icmp eq i32 %51, %53, !dbg !837
  br i1 %54, label %55, label %63, !dbg !838

; <label>:55:                                     ; preds = %50
  %56 = load i32, i32* %16, align 4, !dbg !839
  %57 = add nsw i32 %56, 2, !dbg !841
  %58 = sext i32 %57 to i64, !dbg !842
  %59 = load i8**, i8*** %14, align 8, !dbg !842
  %60 = getelementptr inbounds i8*, i8** %59, i64 %58, !dbg !842
  %61 = load i8*, i8** %60, align 8, !dbg !842
  %62 = call i32 @atoi(i8* %61) #6, !dbg !843
  br label %64, !dbg !844

; <label>:63:                                     ; preds = %50, %33
  br label %64, !dbg !845

; <label>:64:                                     ; preds = %63, %55
  %65 = phi i32 [ %62, %55 ], [ -1, %63 ], !dbg !847
  %66 = load i32*, i32** %13, align 8, !dbg !849
  store i32 %65, i32* %66, align 4, !dbg !850
  %67 = load i32, i32* %8, align 4, !dbg !851
  %68 = load i8*, i8** %10, align 8, !dbg !852
  %69 = load i32, i32* %17, align 4, !dbg !853
  %70 = call %struct.FILE_DCC_REC* @dcc_resume_find(i32 %67, i8* %68, i32 %69), !dbg !854
  %71 = load %struct.FILE_DCC_REC**, %struct.FILE_DCC_REC*** %11, align 8, !dbg !855
  store %struct.FILE_DCC_REC* %70, %struct.FILE_DCC_REC** %71, align 8, !dbg !856
  %72 = load i8**, i8*** %14, align 8, !dbg !857
  call void @g_strfreev(i8** %72), !dbg !858
  %73 = load %struct.FILE_DCC_REC**, %struct.FILE_DCC_REC*** %11, align 8, !dbg !859
  %74 = load %struct.FILE_DCC_REC*, %struct.FILE_DCC_REC** %73, align 8, !dbg !860
  %75 = icmp ne %struct.FILE_DCC_REC* %74, null, !dbg !861
  br i1 %75, label %76, label %84, !dbg !862

; <label>:76:                                     ; preds = %64
  %77 = load %struct.FILE_DCC_REC**, %struct.FILE_DCC_REC*** %11, align 8, !dbg !863
  %78 = load %struct.FILE_DCC_REC*, %struct.FILE_DCC_REC** %77, align 8, !dbg !864
  %79 = getelementptr inbounds %struct.FILE_DCC_REC, %struct.FILE_DCC_REC* %78, i32 0, i32 19, !dbg !865
  %80 = load i32, i32* %79, align 8, !dbg !865
  %81 = load i32*, i32** %13, align 8, !dbg !866
  %82 = load i32, i32* %81, align 4, !dbg !867
  %83 = icmp eq i32 %80, %82, !dbg !868
  br label %84

; <label>:84:                                     ; preds = %76, %64
  %85 = phi i1 [ false, %64 ], [ %83, %76 ]
  %86 = zext i1 %85 to i32, !dbg !869
  store i32 %86, i32* %7, align 4, !dbg !870
  br label %89, !dbg !870

; <label>:87:                                     ; preds = %25
  %88 = load i8**, i8*** %14, align 8, !dbg !871
  call void @g_strfreev(i8** %88), !dbg !872
  store i32 0, i32* %7, align 4, !dbg !873
  br label %89, !dbg !873

; <label>:89:                                     ; preds = %87, %84, %24
  %90 = load i32, i32* %7, align 4, !dbg !874
  ret i32 %90, !dbg !874
}

declare i32 @module_get_uniq_id_str(i8*, i8*) #3

declare i32 @signal_emit(i8*, i32, ...) #3

; Function Attrs: nounwind uwtable
define internal i32 @dcc_resume_file_check(%struct.FILE_DCC_REC*, %struct._IRC_SERVER_REC*, i64) #0 !dbg !875 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.FILE_DCC_REC*, align 8
  %6 = alloca %struct._IRC_SERVER_REC*, align 8
  %7 = alloca i64, align 8
  store %struct.FILE_DCC_REC* %0, %struct.FILE_DCC_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.FILE_DCC_REC** %5, metadata !878, metadata !437), !dbg !879
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %6, metadata !880, metadata !437), !dbg !881
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !882, metadata !437), !dbg !883
  %8 = load i64, i64* %7, align 8, !dbg !884
  %9 = load %struct.FILE_DCC_REC*, %struct.FILE_DCC_REC** %5, align 8, !dbg !886
  %10 = getelementptr inbounds %struct.FILE_DCC_REC, %struct.FILE_DCC_REC* %9, i32 0, i32 22, !dbg !887
  %11 = load i64, i64* %10, align 8, !dbg !887
  %12 = icmp uge i64 %8, %11, !dbg !888
  br i1 %12, label %13, label %20, !dbg !889

; <label>:13:                                     ; preds = %3
  %14 = call i64 @time(i64* null) #7, !dbg !890
  %15 = load %struct.FILE_DCC_REC*, %struct.FILE_DCC_REC** %5, align 8, !dbg !892
  %16 = getelementptr inbounds %struct.FILE_DCC_REC, %struct.FILE_DCC_REC* %15, i32 0, i32 17, !dbg !893
  store i64 %14, i64* %16, align 8, !dbg !894
  %17 = load %struct.FILE_DCC_REC*, %struct.FILE_DCC_REC** %5, align 8, !dbg !895
  %18 = bitcast %struct.FILE_DCC_REC* %17 to %struct.DCC_REC*, !dbg !896
  %19 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !897
  call void @dcc_reject(%struct.DCC_REC* %18, %struct._IRC_SERVER_REC* %19), !dbg !898
  br label %39, !dbg !899

; <label>:20:                                     ; preds = %3
  %21 = load %struct.FILE_DCC_REC*, %struct.FILE_DCC_REC** %5, align 8, !dbg !900
  %22 = getelementptr inbounds %struct.FILE_DCC_REC, %struct.FILE_DCC_REC* %21, i32 0, i32 24, !dbg !903
  %23 = load i32, i32* %22, align 8, !dbg !903
  %24 = load i64, i64* %7, align 8, !dbg !904
  %25 = call i64 @lseek(i32 %23, i64 %24, i32 0) #7, !dbg !905
  %26 = load i64, i64* %7, align 8, !dbg !906
  %27 = icmp ne i64 %25, %26, !dbg !907
  br i1 %27, label %28, label %32, !dbg !905

; <label>:28:                                     ; preds = %20
  %29 = load %struct.FILE_DCC_REC*, %struct.FILE_DCC_REC** %5, align 8, !dbg !908
  %30 = bitcast %struct.FILE_DCC_REC* %29 to %struct.DCC_REC*, !dbg !910
  %31 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %6, align 8, !dbg !911
  call void @dcc_reject(%struct.DCC_REC* %30, %struct._IRC_SERVER_REC* %31), !dbg !912
  br label %38, !dbg !913

; <label>:32:                                     ; preds = %20
  %33 = load i64, i64* %7, align 8, !dbg !914
  %34 = load %struct.FILE_DCC_REC*, %struct.FILE_DCC_REC** %5, align 8, !dbg !916
  %35 = getelementptr inbounds %struct.FILE_DCC_REC, %struct.FILE_DCC_REC* %34, i32 0, i32 23, !dbg !917
  store i64 %33, i64* %35, align 8, !dbg !918
  %36 = load %struct.FILE_DCC_REC*, %struct.FILE_DCC_REC** %5, align 8, !dbg !919
  %37 = getelementptr inbounds %struct.FILE_DCC_REC, %struct.FILE_DCC_REC* %36, i32 0, i32 18, !dbg !920
  store i64 %33, i64* %37, align 8, !dbg !921
  store i32 1, i32* %4, align 4, !dbg !922
  br label %40, !dbg !922

; <label>:38:                                     ; preds = %28
  br label %39

; <label>:39:                                     ; preds = %38, %13
  store i32 0, i32* %4, align 4, !dbg !923
  br label %40, !dbg !923

; <label>:40:                                     ; preds = %39, %32
  %41 = load i32, i32* %4, align 4, !dbg !924
  ret i32 %41, !dbg !924
}

declare noalias i8* @g_strdup_printf(i8*, ...) #3

declare i8* @module_check_cast_module(i8*, i32, i8*, i8*) #3

declare void @dcc_ctcp_message(%struct._IRC_SERVER_REC*, i8*, %struct.CHAT_DCC_REC*, i32, i8*) #3

declare void @g_free(i8*) #3

declare noalias i8** @g_strsplit(i8*, i8*, i32) #3

declare i32 @g_strv_length(i8**) #3

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #2

declare i64 @str_to_uofft(i8*) #3

; Function Attrs: nounwind uwtable
define internal %struct.FILE_DCC_REC* @dcc_resume_find(i32, i8*, i32) #0 !dbg !925 {
  %4 = alloca %struct.FILE_DCC_REC*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._GSList*, align 8
  %9 = alloca %struct.FILE_DCC_REC*, align 8
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !928, metadata !437), !dbg !929
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !930, metadata !437), !dbg !931
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !932, metadata !437), !dbg !933
  call void @llvm.dbg.declare(metadata %struct._GSList** %8, metadata !934, metadata !437), !dbg !935
  %10 = load %struct._GSList*, %struct._GSList** @dcc_conns, align 8, !dbg !936
  store %struct._GSList* %10, %struct._GSList** %8, align 8, !dbg !938
  br label %11, !dbg !939

; <label>:11:                                     ; preds = %45, %3
  %12 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !940
  %13 = icmp ne %struct._GSList* %12, null, !dbg !943
  br i1 %13, label %14, label %49, !dbg !944

; <label>:14:                                     ; preds = %11
  call void @llvm.dbg.declare(metadata %struct.FILE_DCC_REC** %9, metadata !945, metadata !437), !dbg !947
  %15 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !948
  %16 = getelementptr inbounds %struct._GSList, %struct._GSList* %15, i32 0, i32 0, !dbg !949
  %17 = load i8*, i8** %16, align 8, !dbg !949
  %18 = bitcast i8* %17 to %struct.FILE_DCC_REC*, !dbg !948
  store %struct.FILE_DCC_REC* %18, %struct.FILE_DCC_REC** %9, align 8, !dbg !947
  %19 = load %struct.FILE_DCC_REC*, %struct.FILE_DCC_REC** %9, align 8, !dbg !950
  %20 = getelementptr inbounds %struct.FILE_DCC_REC, %struct.FILE_DCC_REC* %19, i32 0, i32 0, !dbg !952
  %21 = load i32, i32* %20, align 8, !dbg !952
  %22 = load i32, i32* %5, align 4, !dbg !953
  %23 = icmp eq i32 %21, %22, !dbg !954
  br i1 %23, label %24, label %44, !dbg !955

; <label>:24:                                     ; preds = %14
  %25 = load %struct.FILE_DCC_REC*, %struct.FILE_DCC_REC** %9, align 8, !dbg !956
  %26 = getelementptr inbounds %struct.FILE_DCC_REC, %struct.FILE_DCC_REC* %25, i32 0, i32 17, !dbg !958
  %27 = load i64, i64* %26, align 8, !dbg !958
  %28 = icmp ne i64 %27, 0, !dbg !959
  br i1 %28, label %44, label %29, !dbg !960

; <label>:29:                                     ; preds = %24
  %30 = load %struct.FILE_DCC_REC*, %struct.FILE_DCC_REC** %9, align 8, !dbg !961
  %31 = getelementptr inbounds %struct.FILE_DCC_REC, %struct.FILE_DCC_REC* %30, i32 0, i32 12, !dbg !962
  %32 = load i32, i32* %31, align 4, !dbg !962
  %33 = load i32, i32* %7, align 4, !dbg !963
  %34 = icmp eq i32 %32, %33, !dbg !964
  br i1 %34, label %35, label %44, !dbg !965

; <label>:35:                                     ; preds = %29
  %36 = load %struct.FILE_DCC_REC*, %struct.FILE_DCC_REC** %9, align 8, !dbg !966
  %37 = getelementptr inbounds %struct.FILE_DCC_REC, %struct.FILE_DCC_REC* %36, i32 0, i32 6, !dbg !967
  %38 = load i8*, i8** %37, align 8, !dbg !967
  %39 = load i8*, i8** %6, align 8, !dbg !968
  %40 = call i32 @g_ascii_strcasecmp(i8* %38, i8* %39), !dbg !969
  %41 = icmp eq i32 %40, 0, !dbg !970
  br i1 %41, label %42, label %44, !dbg !971

; <label>:42:                                     ; preds = %35
  %43 = load %struct.FILE_DCC_REC*, %struct.FILE_DCC_REC** %9, align 8, !dbg !973
  store %struct.FILE_DCC_REC* %43, %struct.FILE_DCC_REC** %4, align 8, !dbg !974
  br label %50, !dbg !974

; <label>:44:                                     ; preds = %35, %29, %24, %14
  br label %45, !dbg !975

; <label>:45:                                     ; preds = %44
  %46 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !976
  %47 = getelementptr inbounds %struct._GSList, %struct._GSList* %46, i32 0, i32 1, !dbg !978
  %48 = load %struct._GSList*, %struct._GSList** %47, align 8, !dbg !978
  store %struct._GSList* %48, %struct._GSList** %8, align 8, !dbg !979
  br label %11, !dbg !980, !llvm.loop !981

; <label>:49:                                     ; preds = %11
  store %struct.FILE_DCC_REC* null, %struct.FILE_DCC_REC** %4, align 8, !dbg !983
  br label %50, !dbg !983

; <label>:50:                                     ; preds = %49, %42
  %51 = load %struct.FILE_DCC_REC*, %struct.FILE_DCC_REC** %4, align 8, !dbg !984
  ret %struct.FILE_DCC_REC* %51, !dbg !984
}

declare void @g_strfreev(i8**) #3

declare i32 @g_ascii_strcasecmp(i8*, i8*) #3

; Function Attrs: nounwind
declare i64 @time(i64*) #4

declare void @dcc_reject(%struct.DCC_REC*, %struct._IRC_SERVER_REC*) #3

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #4

declare void @dcc_get_connect(%struct.GET_DCC_REC*) #3

declare void @dcc_get_passive(%struct.GET_DCC_REC*) #3

declare void @cmd_dcc_receive(i8*, void (%struct.GET_DCC_REC*)*, void (%struct.GET_DCC_REC*)*) #3

; Function Attrs: nounwind uwtable
define internal void @dcc_send_resume(%struct.GET_DCC_REC*) #0 !dbg !985 {
  %2 = alloca %struct.GET_DCC_REC*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store %struct.GET_DCC_REC* %0, %struct.GET_DCC_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.GET_DCC_REC** %2, metadata !988, metadata !437), !dbg !989
  call void @llvm.dbg.declare(metadata i64* %3, metadata !990, metadata !437), !dbg !991
  call void @llvm.dbg.declare(metadata i8** %4, metadata !992, metadata !437), !dbg !993
  br label %5, !dbg !994, !llvm.loop !995

; <label>:5:                                      ; preds = %1
  %6 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !996
  %7 = icmp ne %struct.GET_DCC_REC* %6, null, !dbg !1000
  br i1 %7, label %8, label %9, !dbg !996

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !1001

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.dcc_send_resume, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0)), !dbg !1004
  br label %127, !dbg !1007

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !1008

; <label>:11:                                     ; preds = %10
  %12 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1010
  %13 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %12, i32 0, i32 9, !dbg !1011
  %14 = load i8*, i8** %13, align 8, !dbg !1011
  %15 = call i8* @dcc_get_download_path(i8* %14), !dbg !1012
  %16 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1013
  %17 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %16, i32 0, i32 29, !dbg !1014
  store i8* %15, i8** %17, align 8, !dbg !1015
  %18 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1016
  %19 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %18, i32 0, i32 29, !dbg !1017
  %20 = load i8*, i8** %19, align 8, !dbg !1017
  %21 = call i32 (i8*, i32, ...) @open(i8* %20, i32 1), !dbg !1018
  %22 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1019
  %23 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %22, i32 0, i32 24, !dbg !1020
  store i32 %21, i32* %23, align 8, !dbg !1021
  %24 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1022
  %25 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %24, i32 0, i32 24, !dbg !1024
  %26 = load i32, i32* %25, align 8, !dbg !1024
  %27 = icmp eq i32 %26, -1, !dbg !1025
  br i1 %27, label %28, label %40, !dbg !1026

; <label>:28:                                     ; preds = %11
  %29 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1027
  %30 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %29, i32 0, i32 6, !dbg !1029
  %31 = load i8*, i8** %30, align 8, !dbg !1029
  %32 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1030
  %33 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %32, i32 0, i32 29, !dbg !1031
  %34 = load i8*, i8** %33, align 8, !dbg !1031
  %35 = call i32* @__errno_location() #1, !dbg !1032
  %36 = load i32, i32* %35, align 4, !dbg !1033
  %37 = sext i32 %36 to i64, !dbg !1034
  %38 = inttoptr i64 %37 to i8*, !dbg !1032
  %39 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0), i32 3, i8* %31, i8* %34, i8* %38), !dbg !1035
  br label %127, !dbg !1036

; <label>:40:                                     ; preds = %11
  %41 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1037
  %42 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %41, i32 0, i32 28, !dbg !1038
  store i32 3, i32* %42, align 8, !dbg !1039
  %43 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1040
  %44 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %43, i32 0, i32 24, !dbg !1041
  %45 = load i32, i32* %44, align 8, !dbg !1041
  %46 = call i64 @lseek(i32 %45, i64 0, i32 2) #7, !dbg !1042
  store i64 %46, i64* %3, align 8, !dbg !1043
  %47 = load i64, i64* %3, align 8, !dbg !1044
  %48 = icmp slt i64 %47, 0, !dbg !1045
  br i1 %48, label %49, label %50, !dbg !1044

; <label>:49:                                     ; preds = %40
  br label %52, !dbg !1046

; <label>:50:                                     ; preds = %40
  %51 = load i64, i64* %3, align 8, !dbg !1048
  br label %52, !dbg !1050

; <label>:52:                                     ; preds = %50, %49
  %53 = phi i64 [ 0, %49 ], [ %51, %50 ], !dbg !1051
  %54 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1053
  %55 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %54, i32 0, i32 18, !dbg !1054
  store i64 %53, i64* %55, align 8, !dbg !1055
  %56 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1056
  %57 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %56, i32 0, i32 18, !dbg !1057
  %58 = load i64, i64* %57, align 8, !dbg !1057
  %59 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1058
  %60 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %59, i32 0, i32 23, !dbg !1059
  store i64 %58, i64* %60, align 8, !dbg !1060
  %61 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1061
  %62 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %61, i32 0, i32 23, !dbg !1063
  %63 = load i64, i64* %62, align 8, !dbg !1063
  %64 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1064
  %65 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %64, i32 0, i32 22, !dbg !1065
  %66 = load i64, i64* %65, align 8, !dbg !1065
  %67 = icmp eq i64 %63, %66, !dbg !1066
  br i1 %67, label %68, label %74, !dbg !1067

; <label>:68:                                     ; preds = %52
  %69 = call i64 @time(i64* null) #7, !dbg !1068
  %70 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1070
  %71 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %70, i32 0, i32 17, !dbg !1071
  store i64 %69, i64* %71, align 8, !dbg !1072
  %72 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1073
  %73 = bitcast %struct.GET_DCC_REC* %72 to %struct.DCC_REC*, !dbg !1074
  call void @dcc_reject(%struct.DCC_REC* %73, %struct._IRC_SERVER_REC* null), !dbg !1075
  br label %127, !dbg !1076

; <label>:74:                                     ; preds = %52
  %75 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1077
  %76 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %75, i32 0, i32 19, !dbg !1080
  %77 = load i32, i32* %76, align 8, !dbg !1080
  %78 = icmp sge i32 %77, 0, !dbg !1081
  br i1 %78, label %97, label %79, !dbg !1082

; <label>:79:                                     ; preds = %74
  %80 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1083
  %81 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %80, i32 0, i32 30, !dbg !1085
  %82 = load i8, i8* %81, align 8, !dbg !1085
  %83 = and i8 %82, 1, !dbg !1085
  %84 = zext i8 %83 to i32, !dbg !1085
  %85 = icmp ne i32 %84, 0, !dbg !1083
  %86 = select i1 %85, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i32 0, i32 0), !dbg !1083
  %87 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1086
  %88 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %87, i32 0, i32 9, !dbg !1087
  %89 = load i8*, i8** %88, align 8, !dbg !1087
  %90 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1088
  %91 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %90, i32 0, i32 12, !dbg !1089
  %92 = load i32, i32* %91, align 4, !dbg !1089
  %93 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1090
  %94 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %93, i32 0, i32 18, !dbg !1091
  %95 = load i64, i64* %94, align 8, !dbg !1091
  %96 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %86, i8* %89, i32 %92, i64 %95), !dbg !1092
  store i8* %96, i8** %4, align 8, !dbg !1093
  br label %115, !dbg !1094

; <label>:97:                                     ; preds = %74
  %98 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1095
  %99 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %98, i32 0, i32 30, !dbg !1097
  %100 = load i8, i8* %99, align 8, !dbg !1097
  %101 = and i8 %100, 1, !dbg !1097
  %102 = zext i8 %101 to i32, !dbg !1097
  %103 = icmp ne i32 %102, 0, !dbg !1095
  %104 = select i1 %103, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i32 0, i32 0), !dbg !1095
  %105 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1098
  %106 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %105, i32 0, i32 9, !dbg !1099
  %107 = load i8*, i8** %106, align 8, !dbg !1099
  %108 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1100
  %109 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %108, i32 0, i32 18, !dbg !1101
  %110 = load i64, i64* %109, align 8, !dbg !1101
  %111 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1102
  %112 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %111, i32 0, i32 19, !dbg !1103
  %113 = load i32, i32* %112, align 8, !dbg !1103
  %114 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %104, i8* %107, i64 %110, i32 %113), !dbg !1104
  store i8* %114, i8** %4, align 8, !dbg !1105
  br label %115

; <label>:115:                                    ; preds = %97, %79
  %116 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1106
  %117 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %116, i32 0, i32 3, !dbg !1107
  %118 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %117, align 8, !dbg !1107
  %119 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1108
  %120 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %119, i32 0, i32 6, !dbg !1109
  %121 = load i8*, i8** %120, align 8, !dbg !1109
  %122 = load %struct.GET_DCC_REC*, %struct.GET_DCC_REC** %2, align 8, !dbg !1110
  %123 = getelementptr inbounds %struct.GET_DCC_REC, %struct.GET_DCC_REC* %122, i32 0, i32 7, !dbg !1111
  %124 = load %struct.CHAT_DCC_REC*, %struct.CHAT_DCC_REC** %123, align 8, !dbg !1111
  %125 = load i8*, i8** %4, align 8, !dbg !1112
  call void @dcc_ctcp_message(%struct._IRC_SERVER_REC* %118, i8* %121, %struct.CHAT_DCC_REC* %124, i32 0, i8* %125), !dbg !1113
  %126 = load i8*, i8** %4, align 8, !dbg !1114
  call void @g_free(i8* %126), !dbg !1115
  br label %127

; <label>:127:                                    ; preds = %9, %28, %115, %68
  ret void, !dbg !1116
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare i8* @dcc_get_download_path(i8*) #3

declare i32 @open(i8*, i32, ...) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!427, !428}
!llvm.ident = !{!429}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !42)
!1 = !DIFile(filename: "line172-dcc-resume.o.i", directory: "/home/lichi/Desktop/irssi/task1")
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
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 12, size: 32, align: 32, elements: !37)
!36 = !DIFile(filename: "dcc-get.h", directory: "/home/lichi/Desktop/irssi/task1")
!37 = !{!38, !39, !40, !41}
!38 = !DIEnumerator(name: "DCC_GET_DEFAULT", value: 0)
!39 = !DIEnumerator(name: "DCC_GET_RENAME", value: 1)
!40 = !DIEnumerator(name: "DCC_GET_OVERWRITE", value: 2)
!41 = !DIEnumerator(name: "DCC_GET_RESUME", value: 3)
!42 = !{!43, !50, !51, !359, !385, !388, !149, !424, !192, !426, !319}
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !44, line: 9, baseType: !45)
!44 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DISubroutineType(types: !47)
!47 = !{null, !48, !48, !48, !48, !48, !48}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "SEND_DCC_REC", file: !53, line: 20, baseType: !54)
!53 = !DIFile(filename: "dcc-send.h", directory: "/home/lichi/Desktop/irssi/task1")
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !53, line: 12, size: 1920, align: 64, elements: !55)
!55 = !{!56, !59, !60, !66, !71, !74, !75, !76, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !350, !351, !352, !353, !355, !356, !357, !358}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !54, file: !57, line: 1, baseType: !58, size: 32, align: 32)
!57 = !DIFile(filename: "dcc-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!58 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !54, file: !57, line: 2, baseType: !58, size: 32, align: 32, offset: 32)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "created", scope: !54, file: !57, line: 3, baseType: !61, size: 64, align: 64, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !62, line: 75, baseType: !63)
!62 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !64, line: 139, baseType: !65)
!64 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!65 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !54, file: !57, line: 5, baseType: !67, size: 64, align: 64, offset: 128)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_REC", file: !69, line: 6, baseType: !70)
!69 = !DIFile(filename: "../../../src/irc/core/irc.h", directory: "/home/lichi/Desktop/irssi/task1")
!70 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_REC", file: !69, line: 6, flags: DIFlagFwdDecl)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !54, file: !57, line: 6, baseType: !72, size: 64, align: 64, offset: 192)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!73 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "mynick", scope: !54, file: !57, line: 7, baseType: !72, size: 64, align: 64, offset: 256)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !54, file: !57, line: 8, baseType: !72, size: 64, align: 64, offset: 320)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "chat", scope: !54, file: !57, line: 10, baseType: !77, size: 64, align: 64, offset: 384)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64, align: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHAT_DCC_REC", file: !79, line: 9, baseType: !80)
!79 = !DIFile(filename: "dcc.h", directory: "/home/lichi/Desktop/irssi/task1")
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "CHAT_DCC_REC", file: !81, line: 12, size: 1792, align: 64, elements: !82)
!81 = !DIFile(filename: "dcc-chat.h", directory: "/home/lichi/Desktop/irssi/task1")
!82 = !{!83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !126, !130, !131, !314, !315, !316, !317, !318, !320, !321, !322, !327, !328, !332, !333}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !80, file: !57, line: 1, baseType: !58, size: 32, align: 32)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !80, file: !57, line: 2, baseType: !58, size: 32, align: 32, offset: 32)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "created", scope: !80, file: !57, line: 3, baseType: !61, size: 64, align: 64, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !80, file: !57, line: 5, baseType: !67, size: 64, align: 64, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !80, file: !57, line: 6, baseType: !72, size: 64, align: 64, offset: 192)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "mynick", scope: !80, file: !57, line: 7, baseType: !72, size: 64, align: 64, offset: 256)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !80, file: !57, line: 8, baseType: !72, size: 64, align: 64, offset: 320)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "chat", scope: !80, file: !57, line: 10, baseType: !77, size: 64, align: 64, offset: 384)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !80, file: !57, line: 11, baseType: !72, size: 64, align: 64, offset: 448)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !80, file: !57, line: 12, baseType: !72, size: 64, align: 64, offset: 512)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !80, file: !57, line: 14, baseType: !94, size: 160, align: 32, offset: 576)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !95, line: 99, baseType: !96)
!95 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !97, line: 22, size: 160, align: 32, elements: !98)
!97 = !DIFile(filename: "../../../src/core/network.h", directory: "/home/lichi/Desktop/irssi/task1")
!98 = !{!99, !101}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !96, file: !97, line: 23, baseType: !100, size: 16, align: 16)
!100 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !96, file: !97, line: 24, baseType: !102, size: 128, align: 32, offset: 32)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !103, line: 211, size: 128, align: 32, elements: !104)
!103 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/irssi/task1")
!104 = !{!105}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !102, file: !103, line: 220, baseType: !106, size: 128, align: 32)
!106 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !102, file: !103, line: 213, size: 128, align: 32, elements: !107)
!107 = !{!108, !115, !120}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !106, file: !103, line: 215, baseType: !109, size: 128, align: 8)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 128, align: 8, elements: !113)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !111, line: 48, baseType: !112)
!111 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/irssi/task1")
!112 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!113 = !{!114}
!114 = !DISubrange(count: 16)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !106, file: !103, line: 217, baseType: !116, size: 128, align: 16)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 128, align: 16, elements: !118)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !111, line: 49, baseType: !100)
!118 = !{!119}
!119 = !DISubrange(count: 8)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !106, file: !103, line: 218, baseType: !121, size: 128, align: 32)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 128, align: 32, elements: !124)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !111, line: 51, baseType: !123)
!123 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!124 = !{!125}
!125 = !DISubrange(count: 4)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "addrstr", scope: !80, file: !57, line: 15, baseType: !127, size: 368, align: 8, offset: 736)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 368, align: 8, elements: !128)
!128 = !{!129}
!129 = !DISubrange(count: 46)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !80, file: !57, line: 16, baseType: !58, size: 32, align: 32, offset: 1120)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !80, file: !57, line: 18, baseType: !132, size: 64, align: 64, offset: 1152)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64, align: 64)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !134)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !135)
!135 = !{!136, !139, !281, !282, !287, !288, !289, !290, !291, !300, !301, !302, !306, !307, !308, !309, !310, !311, !312, !313}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !134, file: !4, line: 100, baseType: !137, size: 32, align: 32)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !138, line: 49, baseType: !58)
!138 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!139 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !134, file: !4, line: 101, baseType: !140, size: 64, align: 64, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !142)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !143)
!143 = !{!144, !167, !173, !179, !183, !268, !272, !277}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !142, file: !4, line: 133, baseType: !145, size: 64, align: 64)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64, align: 64)
!146 = !DISubroutineType(types: !147)
!147 = !{!148, !132, !149, !151, !154, !155}
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !138, line: 46, baseType: !73)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !152, line: 66, baseType: !153)
!152 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!153 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, align: 64)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64, align: 64)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64, align: 64)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !158, line: 42, baseType: !159)
!158 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !158, line: 44, size: 128, align: 64, elements: !160)
!160 = !{!161, !165, !166}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !159, file: !158, line: 46, baseType: !162, size: 32, align: 32)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !163, line: 36, baseType: !164)
!163 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !152, line: 45, baseType: !123)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !159, file: !158, line: 47, baseType: !137, size: 32, align: 32, offset: 32)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !159, file: !158, line: 48, baseType: !149, size: 64, align: 64, offset: 64)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !142, file: !4, line: 138, baseType: !168, size: 64, align: 64, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64, align: 64)
!169 = !DISubroutineType(types: !170)
!170 = !{!148, !132, !171, !151, !154, !155}
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64, align: 64)
!172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !150)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !142, file: !4, line: 143, baseType: !174, size: 64, align: 64, offset: 128)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64, align: 64)
!175 = !DISubroutineType(types: !176)
!176 = !{!148, !132, !177, !178, !155}
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !152, line: 51, baseType: !65)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !142, file: !4, line: 147, baseType: !180, size: 64, align: 64, offset: 192)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64, align: 64)
!181 = !DISubroutineType(types: !182)
!182 = !{!148, !132, !155}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !142, file: !4, line: 149, baseType: !184, size: 64, align: 64, offset: 256)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64, align: 64)
!185 = !DISubroutineType(types: !186)
!186 = !{!187, !132, !267}
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64, align: 64)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !189)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !190)
!190 = !{!191, !193, !214, !243, !245, !249, !250, !251, !252, !260, !261, !262, !263}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !189, file: !16, line: 174, baseType: !192, size: 64, align: 64)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !138, line: 77, baseType: !50)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !189, file: !16, line: 175, baseType: !194, size: 64, align: 64, offset: 64)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64, align: 64)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !196)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !197)
!197 = !{!198, !202, !203}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !196, file: !16, line: 198, baseType: !199, size: 64, align: 64)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64, align: 64)
!200 = !DISubroutineType(types: !201)
!201 = !{null, !192}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !196, file: !16, line: 199, baseType: !199, size: 64, align: 64, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !196, file: !16, line: 200, baseType: !204, size: 64, align: 64, offset: 128)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64, align: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{null, !192, !187, !207, !213}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64, align: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64, align: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{!212, !192}
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !138, line: 50, baseType: !137)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64, align: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !189, file: !16, line: 177, baseType: !215, size: 64, align: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, align: 64)
!216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !218)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !219)
!219 = !{!220, !225, !229, !233, !237, !238}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !218, file: !16, line: 216, baseType: !221, size: 64, align: 64)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64, align: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!212, !187, !224}
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64, align: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !218, file: !16, line: 218, baseType: !226, size: 64, align: 64, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{!212, !187}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !218, file: !16, line: 219, baseType: !230, size: 64, align: 64, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64, align: 64)
!231 = !DISubroutineType(types: !232)
!232 = !{!212, !187, !208, !192}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !218, file: !16, line: 222, baseType: !234, size: 64, align: 64, offset: 192)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64, align: 64)
!235 = !DISubroutineType(types: !236)
!236 = !{null, !187}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !218, file: !16, line: 226, baseType: !208, size: 64, align: 64, offset: 256)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !218, file: !16, line: 227, baseType: !239, size: 64, align: 64, offset: 320)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !240)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64, align: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{null}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !189, file: !16, line: 178, baseType: !244, size: 32, align: 32, offset: 192)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !138, line: 55, baseType: !123)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !189, file: !16, line: 180, baseType: !246, size: 64, align: 64, offset: 256)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64, align: 64)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !248)
!248 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !189, file: !16, line: 182, baseType: !137, size: 32, align: 32, offset: 320)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !189, file: !16, line: 183, baseType: !244, size: 32, align: 32, offset: 352)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !189, file: !16, line: 184, baseType: !244, size: 32, align: 32, offset: 384)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !189, file: !16, line: 186, baseType: !253, size: 64, align: 64, offset: 448)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !255, line: 37, baseType: !256)
!255 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !255, line: 39, size: 128, align: 64, elements: !257)
!257 = !{!258, !259}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !256, file: !255, line: 41, baseType: !192, size: 64, align: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !256, file: !255, line: 42, baseType: !253, size: 64, align: 64, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !189, file: !16, line: 188, baseType: !187, size: 64, align: 64, offset: 512)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !189, file: !16, line: 189, baseType: !187, size: 64, align: 64, offset: 576)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !189, file: !16, line: 191, baseType: !72, size: 64, align: 64, offset: 640)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !189, file: !16, line: 193, baseType: !264, size: 64, align: 64, offset: 704)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64, align: 64)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !266)
!266 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !142, file: !4, line: 151, baseType: !269, size: 64, align: 64, offset: 320)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64, align: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{null, !132}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !142, file: !4, line: 152, baseType: !273, size: 64, align: 64, offset: 384)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64, align: 64)
!274 = !DISubroutineType(types: !275)
!275 = !{!148, !132, !276, !155}
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !142, file: !4, line: 155, baseType: !278, size: 64, align: 64, offset: 448)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64, align: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{!276, !132}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !134, file: !4, line: 103, baseType: !149, size: 64, align: 64, offset: 128)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !134, file: !4, line: 104, baseType: !283, size: 64, align: 64, offset: 192)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !284, line: 77, baseType: !285)
!284 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64, align: 64)
!286 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !284, line: 77, flags: DIFlagFwdDecl)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !134, file: !4, line: 105, baseType: !283, size: 64, align: 64, offset: 256)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !134, file: !4, line: 106, baseType: !149, size: 64, align: 64, offset: 320)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !134, file: !4, line: 107, baseType: !244, size: 32, align: 32, offset: 384)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !134, file: !4, line: 109, baseType: !151, size: 64, align: 64, offset: 448)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !134, file: !4, line: 110, baseType: !292, size: 64, align: 64, offset: 512)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64, align: 64)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !294, line: 39, baseType: !295)
!294 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !294, line: 41, size: 192, align: 64, elements: !296)
!296 = !{!297, !298, !299}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !295, file: !294, line: 43, baseType: !149, size: 64, align: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !295, file: !294, line: 44, baseType: !151, size: 64, align: 64, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !295, file: !294, line: 45, baseType: !151, size: 64, align: 64, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !134, file: !4, line: 111, baseType: !292, size: 64, align: 64, offset: 576)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !134, file: !4, line: 112, baseType: !292, size: 64, align: 64, offset: 640)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !134, file: !4, line: 113, baseType: !303, size: 48, align: 8, offset: 704)
!303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 48, align: 8, elements: !304)
!304 = !{!305}
!305 = !DISubrange(count: 6)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !134, file: !4, line: 117, baseType: !244, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !134, file: !4, line: 118, baseType: !244, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !134, file: !4, line: 119, baseType: !244, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !134, file: !4, line: 120, baseType: !244, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !134, file: !4, line: 121, baseType: !244, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !134, file: !4, line: 122, baseType: !244, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !134, file: !4, line: 124, baseType: !192, size: 64, align: 64, offset: 768)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !134, file: !4, line: 125, baseType: !192, size: 64, align: 64, offset: 832)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "tagconn", scope: !80, file: !57, line: 19, baseType: !58, size: 32, align: 32, offset: 1216)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "tagread", scope: !80, file: !57, line: 19, baseType: !58, size: 32, align: 32, offset: 1248)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tagwrite", scope: !80, file: !57, line: 19, baseType: !58, size: 32, align: 32, offset: 1280)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "starttime", scope: !80, file: !57, line: 20, baseType: !61, size: 64, align: 64, offset: 1344)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "transfd", scope: !80, file: !57, line: 21, baseType: !319, size: 64, align: 64, offset: 1408)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "uoff_t", file: !95, line: 49, baseType: !153)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "pasv_id", scope: !80, file: !57, line: 23, baseType: !58, size: 32, align: 32, offset: 1472)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "destroyed", scope: !80, file: !57, line: 25, baseType: !123, size: 1, align: 32, offset: 1504, flags: DIFlagBitField, extraData: i64 1504)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !80, file: !57, line: 27, baseType: !323, size: 64, align: 64, offset: 1536)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64, align: 64)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !325, line: 37, baseType: !326)
!325 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!326 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !325, line: 37, flags: DIFlagFwdDecl)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !80, file: !81, line: 15, baseType: !72, size: 64, align: 64, offset: 1600)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "sendbuf", scope: !80, file: !81, line: 16, baseType: !329, size: 64, align: 64, offset: 1664)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64, align: 64)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !95, line: 102, baseType: !331)
!331 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !95, line: 102, flags: DIFlagFwdDecl)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "mirc_ctcp", scope: !80, file: !81, line: 18, baseType: !123, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !80, file: !81, line: 19, baseType: !123, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !54, file: !57, line: 11, baseType: !72, size: 64, align: 64, offset: 448)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !54, file: !57, line: 12, baseType: !72, size: 64, align: 64, offset: 512)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !54, file: !57, line: 14, baseType: !94, size: 160, align: 32, offset: 576)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "addrstr", scope: !54, file: !57, line: 15, baseType: !127, size: 368, align: 8, offset: 736)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !54, file: !57, line: 16, baseType: !58, size: 32, align: 32, offset: 1120)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !54, file: !57, line: 18, baseType: !132, size: 64, align: 64, offset: 1152)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tagconn", scope: !54, file: !57, line: 19, baseType: !58, size: 32, align: 32, offset: 1216)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tagread", scope: !54, file: !57, line: 19, baseType: !58, size: 32, align: 32, offset: 1248)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tagwrite", scope: !54, file: !57, line: 19, baseType: !58, size: 32, align: 32, offset: 1280)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "starttime", scope: !54, file: !57, line: 20, baseType: !61, size: 64, align: 64, offset: 1344)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "transfd", scope: !54, file: !57, line: 21, baseType: !319, size: 64, align: 64, offset: 1408)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "pasv_id", scope: !54, file: !57, line: 23, baseType: !58, size: 32, align: 32, offset: 1472)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "destroyed", scope: !54, file: !57, line: 25, baseType: !123, size: 1, align: 32, offset: 1504, flags: DIFlagBitField, extraData: i64 1504)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !54, file: !57, line: 27, baseType: !323, size: 64, align: 64, offset: 1536)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !54, file: !349, line: 3, baseType: !319, size: 64, align: 64, offset: 1600)
!349 = !DIFile(filename: "dcc-file-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!350 = !DIDerivedType(tag: DW_TAG_member, name: "skipped", scope: !54, file: !349, line: 3, baseType: !319, size: 64, align: 64, offset: 1664)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "fhandle", scope: !54, file: !349, line: 4, baseType: !58, size: 32, align: 32, offset: 1728)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !54, file: !349, line: 5, baseType: !58, size: 32, align: 32, offset: 1760)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "count_buf", scope: !54, file: !349, line: 8, baseType: !354, size: 32, align: 8, offset: 1792)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 32, align: 8, elements: !124)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "count_pos", scope: !54, file: !349, line: 9, baseType: !58, size: 32, align: 32, offset: 1824)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "file_quoted", scope: !54, file: !53, line: 15, baseType: !123, size: 1, align: 32, offset: 1856, flags: DIFlagBitField, extraData: i64 1856)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "waitforend", scope: !54, file: !53, line: 18, baseType: !123, size: 1, align: 32, offset: 1857, flags: DIFlagBitField, extraData: i64 1856)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "gotalldata", scope: !54, file: !53, line: 19, baseType: !123, size: 1, align: 32, offset: 1858, flags: DIFlagBitField, extraData: i64 1856)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64, align: 64)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "DCC_REC", file: !79, line: 13, baseType: !361)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !79, line: 11, size: 1600, align: 64, elements: !362)
!362 = !{!363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !361, file: !57, line: 1, baseType: !58, size: 32, align: 32)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !361, file: !57, line: 2, baseType: !58, size: 32, align: 32, offset: 32)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "created", scope: !361, file: !57, line: 3, baseType: !61, size: 64, align: 64, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !361, file: !57, line: 5, baseType: !67, size: 64, align: 64, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !361, file: !57, line: 6, baseType: !72, size: 64, align: 64, offset: 192)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "mynick", scope: !361, file: !57, line: 7, baseType: !72, size: 64, align: 64, offset: 256)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !361, file: !57, line: 8, baseType: !72, size: 64, align: 64, offset: 320)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "chat", scope: !361, file: !57, line: 10, baseType: !77, size: 64, align: 64, offset: 384)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !361, file: !57, line: 11, baseType: !72, size: 64, align: 64, offset: 448)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !361, file: !57, line: 12, baseType: !72, size: 64, align: 64, offset: 512)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !361, file: !57, line: 14, baseType: !94, size: 160, align: 32, offset: 576)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "addrstr", scope: !361, file: !57, line: 15, baseType: !127, size: 368, align: 8, offset: 736)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !361, file: !57, line: 16, baseType: !58, size: 32, align: 32, offset: 1120)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !361, file: !57, line: 18, baseType: !132, size: 64, align: 64, offset: 1152)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "tagconn", scope: !361, file: !57, line: 19, baseType: !58, size: 32, align: 32, offset: 1216)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "tagread", scope: !361, file: !57, line: 19, baseType: !58, size: 32, align: 32, offset: 1248)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "tagwrite", scope: !361, file: !57, line: 19, baseType: !58, size: 32, align: 32, offset: 1280)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "starttime", scope: !361, file: !57, line: 20, baseType: !61, size: 64, align: 64, offset: 1344)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "transfd", scope: !361, file: !57, line: 21, baseType: !319, size: 64, align: 64, offset: 1408)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "pasv_id", scope: !361, file: !57, line: 23, baseType: !58, size: 32, align: 32, offset: 1472)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "destroyed", scope: !361, file: !57, line: 25, baseType: !123, size: 1, align: 32, offset: 1504, flags: DIFlagBitField, extraData: i64 1504)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !361, file: !57, line: 27, baseType: !323, size: 64, align: 64, offset: 1536)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !386, line: 90, baseType: !387)
!386 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/irssi/task1")
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !64, line: 131, baseType: !65)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64, align: 64)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "GET_DCC_REC", file: !36, line: 28, baseType: !390)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !36, line: 20, size: 2048, align: 64, elements: !391)
!391 = !{!392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !390, file: !57, line: 1, baseType: !58, size: 32, align: 32)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !390, file: !57, line: 2, baseType: !58, size: 32, align: 32, offset: 32)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "created", scope: !390, file: !57, line: 3, baseType: !61, size: 64, align: 64, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !390, file: !57, line: 5, baseType: !67, size: 64, align: 64, offset: 128)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !390, file: !57, line: 6, baseType: !72, size: 64, align: 64, offset: 192)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "mynick", scope: !390, file: !57, line: 7, baseType: !72, size: 64, align: 64, offset: 256)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !390, file: !57, line: 8, baseType: !72, size: 64, align: 64, offset: 320)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "chat", scope: !390, file: !57, line: 10, baseType: !77, size: 64, align: 64, offset: 384)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !390, file: !57, line: 11, baseType: !72, size: 64, align: 64, offset: 448)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !390, file: !57, line: 12, baseType: !72, size: 64, align: 64, offset: 512)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !390, file: !57, line: 14, baseType: !94, size: 160, align: 32, offset: 576)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "addrstr", scope: !390, file: !57, line: 15, baseType: !127, size: 368, align: 8, offset: 736)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !390, file: !57, line: 16, baseType: !58, size: 32, align: 32, offset: 1120)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !390, file: !57, line: 18, baseType: !132, size: 64, align: 64, offset: 1152)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "tagconn", scope: !390, file: !57, line: 19, baseType: !58, size: 32, align: 32, offset: 1216)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "tagread", scope: !390, file: !57, line: 19, baseType: !58, size: 32, align: 32, offset: 1248)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "tagwrite", scope: !390, file: !57, line: 19, baseType: !58, size: 32, align: 32, offset: 1280)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "starttime", scope: !390, file: !57, line: 20, baseType: !61, size: 64, align: 64, offset: 1344)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "transfd", scope: !390, file: !57, line: 21, baseType: !319, size: 64, align: 64, offset: 1408)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "pasv_id", scope: !390, file: !57, line: 23, baseType: !58, size: 32, align: 32, offset: 1472)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "destroyed", scope: !390, file: !57, line: 25, baseType: !123, size: 1, align: 32, offset: 1504, flags: DIFlagBitField, extraData: i64 1504)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !390, file: !57, line: 27, baseType: !323, size: 64, align: 64, offset: 1536)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !390, file: !349, line: 3, baseType: !319, size: 64, align: 64, offset: 1600)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "skipped", scope: !390, file: !349, line: 3, baseType: !319, size: 64, align: 64, offset: 1664)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "fhandle", scope: !390, file: !349, line: 4, baseType: !58, size: 32, align: 32, offset: 1728)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !390, file: !349, line: 5, baseType: !58, size: 32, align: 32, offset: 1760)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "count_buf", scope: !390, file: !349, line: 8, baseType: !354, size: 32, align: 8, offset: 1792)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "count_pos", scope: !390, file: !349, line: 9, baseType: !58, size: 32, align: 32, offset: 1824)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "get_type", scope: !390, file: !36, line: 23, baseType: !58, size: 32, align: 32, offset: 1856)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !390, file: !36, line: 24, baseType: !72, size: 64, align: 64, offset: 1920)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "file_quoted", scope: !390, file: !36, line: 26, baseType: !123, size: 1, align: 32, offset: 1984, flags: DIFlagBitField, extraData: i64 1984)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "from_dccserver", scope: !390, file: !36, line: 27, baseType: !123, size: 1, align: 32, offset: 1985, flags: DIFlagBitField, extraData: i64 1984)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64, align: 64)
!425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !138, line: 48, baseType: !65)
!427 = !{i32 2, !"Dwarf Version", i32 4}
!428 = !{i32 2, !"Debug Info Version", i32 3}
!429 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!430 = distinct !DISubprogram(name: "get_file_params_count_resume", scope: !431, file: !431, line: 58, type: !432, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !435)
!431 = !DIFile(filename: "dcc-resume.c", directory: "/home/lichi/Desktop/irssi/task1")
!432 = !DISubroutineType(types: !433)
!433 = !{!58, !434, !58}
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64)
!435 = !{}
!436 = !DILocalVariable(name: "params", arg: 1, scope: !430, file: !431, line: 58, type: !434)
!437 = !DIExpression()
!438 = !DILocation(line: 58, column: 41, scope: !430)
!439 = !DILocalVariable(name: "paramcount", arg: 2, scope: !430, file: !431, line: 58, type: !58)
!440 = !DILocation(line: 58, column: 53, scope: !430)
!441 = !DILocalVariable(name: "pos", scope: !430, file: !431, line: 60, type: !58)
!442 = !DILocation(line: 60, column: 6, scope: !430)
!443 = !DILocalVariable(name: "best", scope: !430, file: !431, line: 60, type: !58)
!444 = !DILocation(line: 60, column: 11, scope: !430)
!445 = !DILocation(line: 62, column: 7, scope: !446)
!446 = distinct !DILexicalBlock(scope: !430, file: !431, line: 62, column: 6)
!447 = !DILocation(line: 62, column: 6, scope: !446)
!448 = !DILocation(line: 62, column: 17, scope: !446)
!449 = !DILocation(line: 62, column: 6, scope: !430)
!450 = !DILocation(line: 64, column: 12, scope: !451)
!451 = distinct !DILexicalBlock(scope: !452, file: !431, line: 64, column: 3)
!452 = distinct !DILexicalBlock(scope: !446, file: !431, line: 62, column: 25)
!453 = !DILocation(line: 64, column: 8, scope: !451)
!454 = !DILocation(line: 64, column: 17, scope: !455)
!455 = !DILexicalBlockFile(scope: !456, file: !431, discriminator: 1)
!456 = distinct !DILexicalBlock(scope: !451, file: !431, line: 64, column: 3)
!457 = !DILocation(line: 64, column: 23, scope: !455)
!458 = !DILocation(line: 64, column: 33, scope: !455)
!459 = !DILocation(line: 64, column: 21, scope: !455)
!460 = !DILocation(line: 64, column: 3, scope: !455)
!461 = !DILocation(line: 65, column: 22, scope: !462)
!462 = distinct !DILexicalBlock(scope: !463, file: !431, line: 65, column: 8)
!463 = distinct !DILexicalBlock(scope: !456, file: !431, line: 64, column: 44)
!464 = !DILocation(line: 65, column: 15, scope: !462)
!465 = !DILocation(line: 65, column: 8, scope: !462)
!466 = !DILocation(line: 65, column: 28, scope: !462)
!467 = !DILocation(line: 65, column: 8, scope: !463)
!468 = !DILocation(line: 66, column: 5, scope: !462)
!469 = !DILocation(line: 67, column: 34, scope: !470)
!470 = distinct !DILexicalBlock(scope: !463, file: !431, line: 67, column: 8)
!471 = !DILocation(line: 67, column: 27, scope: !470)
!472 = !DILocation(line: 67, column: 20, scope: !470)
!473 = !DILocation(line: 67, column: 39, scope: !470)
!474 = !DILocation(line: 67, column: 15, scope: !470)
!475 = !DILocation(line: 67, column: 8, scope: !470)
!476 = !DILocation(line: 67, column: 43, scope: !470)
!477 = !DILocation(line: 67, column: 50, scope: !470)
!478 = !DILocation(line: 68, column: 27, scope: !470)
!479 = !DILocation(line: 68, column: 30, scope: !470)
!480 = !DILocation(line: 68, column: 20, scope: !470)
!481 = !DILocation(line: 68, column: 9, scope: !470)
!482 = !DILocation(line: 68, column: 41, scope: !470)
!483 = !DILocation(line: 68, column: 56, scope: !484)
!484 = !DILexicalBlockFile(scope: !470, file: !431, discriminator: 1)
!485 = !DILocation(line: 68, column: 59, scope: !484)
!486 = !DILocation(line: 68, column: 49, scope: !484)
!487 = !DILocation(line: 68, column: 44, scope: !484)
!488 = !DILocation(line: 68, column: 64, scope: !484)
!489 = !DILocation(line: 68, column: 72, scope: !484)
!490 = !DILocation(line: 68, column: 94, scope: !491)
!491 = !DILexicalBlockFile(scope: !470, file: !431, discriminator: 2)
!492 = !DILocation(line: 68, column: 97, scope: !491)
!493 = !DILocation(line: 68, column: 100, scope: !491)
!494 = !DILocation(line: 68, column: 86, scope: !491)
!495 = !DILocation(line: 68, column: 75, scope: !491)
!496 = !DILocation(line: 67, column: 8, scope: !497)
!497 = !DILexicalBlockFile(scope: !463, file: !431, discriminator: 1)
!498 = !DILocation(line: 69, column: 12, scope: !470)
!499 = !DILocation(line: 69, column: 15, scope: !470)
!500 = !DILocation(line: 69, column: 5, scope: !470)
!501 = !DILocation(line: 70, column: 3, scope: !463)
!502 = !DILocation(line: 64, column: 40, scope: !503)
!503 = !DILexicalBlockFile(scope: !456, file: !431, discriminator: 2)
!504 = !DILocation(line: 64, column: 3, scope: !503)
!505 = distinct !{!505, !506}
!506 = !DILocation(line: 64, column: 3, scope: !452)
!507 = !DILocation(line: 71, column: 2, scope: !452)
!508 = !DILocation(line: 73, column: 9, scope: !430)
!509 = !DILocation(line: 73, column: 19, scope: !430)
!510 = !DILocation(line: 73, column: 7, scope: !430)
!511 = !DILocation(line: 74, column: 13, scope: !512)
!512 = distinct !DILexicalBlock(scope: !430, file: !431, line: 74, column: 2)
!513 = !DILocation(line: 74, column: 23, scope: !512)
!514 = !DILocation(line: 74, column: 11, scope: !512)
!515 = !DILocation(line: 74, column: 7, scope: !512)
!516 = !DILocation(line: 74, column: 27, scope: !517)
!517 = !DILexicalBlockFile(scope: !518, file: !431, discriminator: 1)
!518 = distinct !DILexicalBlock(scope: !512, file: !431, line: 74, column: 2)
!519 = !DILocation(line: 74, column: 31, scope: !517)
!520 = !DILocation(line: 74, column: 2, scope: !517)
!521 = !DILocation(line: 75, column: 26, scope: !522)
!522 = distinct !DILexicalBlock(scope: !523, file: !431, line: 75, column: 7)
!523 = distinct !DILexicalBlock(scope: !518, file: !431, line: 74, column: 43)
!524 = !DILocation(line: 75, column: 19, scope: !522)
!525 = !DILocation(line: 75, column: 8, scope: !522)
!526 = !DILocation(line: 75, column: 38, scope: !522)
!527 = !DILocation(line: 75, column: 53, scope: !528)
!528 = !DILexicalBlockFile(scope: !522, file: !431, discriminator: 1)
!529 = !DILocation(line: 75, column: 46, scope: !528)
!530 = !DILocation(line: 75, column: 41, scope: !528)
!531 = !DILocation(line: 75, column: 59, scope: !528)
!532 = !DILocation(line: 75, column: 67, scope: !528)
!533 = !DILocation(line: 75, column: 89, scope: !534)
!534 = !DILexicalBlockFile(scope: !522, file: !431, discriminator: 2)
!535 = !DILocation(line: 75, column: 93, scope: !534)
!536 = !DILocation(line: 75, column: 81, scope: !534)
!537 = !DILocation(line: 75, column: 70, scope: !534)
!538 = !DILocation(line: 75, column: 7, scope: !534)
!539 = !DILocation(line: 76, column: 11, scope: !522)
!540 = !DILocation(line: 76, column: 9, scope: !522)
!541 = !DILocation(line: 76, column: 4, scope: !522)
!542 = !DILocation(line: 77, column: 2, scope: !523)
!543 = !DILocation(line: 74, column: 39, scope: !544)
!544 = !DILexicalBlockFile(scope: !518, file: !431, discriminator: 2)
!545 = !DILocation(line: 74, column: 2, scope: !544)
!546 = distinct !{!546, !547}
!547 = !DILocation(line: 74, column: 2, scope: !430)
!548 = !DILocation(line: 79, column: 9, scope: !430)
!549 = !DILocation(line: 79, column: 2, scope: !430)
!550 = !DILocation(line: 80, column: 1, scope: !430)
!551 = distinct !DISubprogram(name: "dcc_resume_init", scope: !431, file: !431, line: 234, type: !241, isLocal: false, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !435)
!552 = !DILocation(line: 236, column: 2, scope: !551)
!553 = !DILocation(line: 237, column: 2, scope: !551)
!554 = !DILocation(line: 238, column: 2, scope: !551)
!555 = !DILocation(line: 239, column: 1, scope: !551)
!556 = distinct !DISubprogram(name: "ctcp_msg_dcc_resume", scope: !431, file: !431, line: 133, type: !557, isLocal: true, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !435)
!557 = !DISubroutineType(types: !558)
!558 = !{null, !67, !424, !424, !424, !424, !359}
!559 = !DILocalVariable(name: "server", arg: 1, scope: !556, file: !431, line: 133, type: !67)
!560 = !DILocation(line: 133, column: 49, scope: !556)
!561 = !DILocalVariable(name: "data", arg: 2, scope: !556, file: !431, line: 133, type: !424)
!562 = !DILocation(line: 133, column: 69, scope: !556)
!563 = !DILocalVariable(name: "nick", arg: 3, scope: !556, file: !431, line: 134, type: !424)
!564 = !DILocation(line: 134, column: 17, scope: !556)
!565 = !DILocalVariable(name: "addr", arg: 4, scope: !556, file: !431, line: 134, type: !424)
!566 = !DILocation(line: 134, column: 35, scope: !556)
!567 = !DILocalVariable(name: "target", arg: 5, scope: !556, file: !431, line: 135, type: !424)
!568 = !DILocation(line: 135, column: 17, scope: !556)
!569 = !DILocalVariable(name: "chat", arg: 6, scope: !556, file: !431, line: 135, type: !359)
!570 = !DILocation(line: 135, column: 34, scope: !556)
!571 = !DILocalVariable(name: "dcc", scope: !556, file: !431, line: 137, type: !572)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64, align: 64)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE_DCC_REC", file: !574, line: 8, baseType: !575)
!574 = !DIFile(filename: "dcc-file.h", directory: "/home/lichi/Desktop/irssi/task1")
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !574, line: 6, size: 1856, align: 64, elements: !576)
!576 = !{!577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !575, file: !57, line: 1, baseType: !58, size: 32, align: 32)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "orig_type", scope: !575, file: !57, line: 2, baseType: !58, size: 32, align: 32, offset: 32)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "created", scope: !575, file: !57, line: 3, baseType: !61, size: 64, align: 64, offset: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !575, file: !57, line: 5, baseType: !67, size: 64, align: 64, offset: 128)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !575, file: !57, line: 6, baseType: !72, size: 64, align: 64, offset: 192)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "mynick", scope: !575, file: !57, line: 7, baseType: !72, size: 64, align: 64, offset: 256)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !575, file: !57, line: 8, baseType: !72, size: 64, align: 64, offset: 320)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "chat", scope: !575, file: !57, line: 10, baseType: !77, size: 64, align: 64, offset: 384)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !575, file: !57, line: 11, baseType: !72, size: 64, align: 64, offset: 448)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !575, file: !57, line: 12, baseType: !72, size: 64, align: 64, offset: 512)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !575, file: !57, line: 14, baseType: !94, size: 160, align: 32, offset: 576)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "addrstr", scope: !575, file: !57, line: 15, baseType: !127, size: 368, align: 8, offset: 736)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !575, file: !57, line: 16, baseType: !58, size: 32, align: 32, offset: 1120)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !575, file: !57, line: 18, baseType: !132, size: 64, align: 64, offset: 1152)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "tagconn", scope: !575, file: !57, line: 19, baseType: !58, size: 32, align: 32, offset: 1216)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "tagread", scope: !575, file: !57, line: 19, baseType: !58, size: 32, align: 32, offset: 1248)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "tagwrite", scope: !575, file: !57, line: 19, baseType: !58, size: 32, align: 32, offset: 1280)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "starttime", scope: !575, file: !57, line: 20, baseType: !61, size: 64, align: 64, offset: 1344)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "transfd", scope: !575, file: !57, line: 21, baseType: !319, size: 64, align: 64, offset: 1408)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "pasv_id", scope: !575, file: !57, line: 23, baseType: !58, size: 32, align: 32, offset: 1472)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "destroyed", scope: !575, file: !57, line: 25, baseType: !123, size: 1, align: 32, offset: 1504, flags: DIFlagBitField, extraData: i64 1504)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !575, file: !57, line: 27, baseType: !323, size: 64, align: 64, offset: 1536)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !575, file: !349, line: 3, baseType: !319, size: 64, align: 64, offset: 1600)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "skipped", scope: !575, file: !349, line: 3, baseType: !319, size: 64, align: 64, offset: 1664)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "fhandle", scope: !575, file: !349, line: 4, baseType: !58, size: 32, align: 32, offset: 1728)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "queue", scope: !575, file: !349, line: 5, baseType: !58, size: 32, align: 32, offset: 1760)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "count_buf", scope: !575, file: !349, line: 8, baseType: !354, size: 32, align: 8, offset: 1792)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "count_pos", scope: !575, file: !349, line: 9, baseType: !58, size: 32, align: 32, offset: 1824)
!605 = !DILocation(line: 137, column: 16, scope: !556)
!606 = !DILocalVariable(name: "str", scope: !556, file: !431, line: 138, type: !72)
!607 = !DILocation(line: 138, column: 15, scope: !556)
!608 = !DILocalVariable(name: "size", scope: !556, file: !431, line: 139, type: !319)
!609 = !DILocation(line: 139, column: 9, scope: !556)
!610 = !DILocalVariable(name: "pasv_id", scope: !556, file: !431, line: 140, type: !58)
!611 = !DILocation(line: 140, column: 6, scope: !556)
!612 = !DILocation(line: 142, column: 29, scope: !613)
!613 = distinct !DILexicalBlock(scope: !556, file: !431, line: 142, column: 6)
!614 = !DILocation(line: 142, column: 68, scope: !613)
!615 = !DILocation(line: 142, column: 74, scope: !613)
!616 = !DILocation(line: 142, column: 7, scope: !617)
!617 = !DILexicalBlockFile(scope: !613, file: !431, discriminator: 1)
!618 = !DILocation(line: 142, column: 7, scope: !613)
!619 = !DILocation(line: 142, column: 6, scope: !556)
!620 = !DILocation(line: 143, column: 46, scope: !621)
!621 = distinct !DILexicalBlock(scope: !613, file: !431, line: 142, column: 104)
!622 = !DILocation(line: 144, column: 8, scope: !621)
!623 = !DILocation(line: 144, column: 14, scope: !621)
!624 = !DILocation(line: 144, column: 20, scope: !621)
!625 = !DILocation(line: 143, column: 3, scope: !621)
!626 = !DILocation(line: 145, column: 2, scope: !621)
!627 = !DILocation(line: 145, column: 13, scope: !628)
!628 = !DILexicalBlockFile(scope: !629, file: !431, discriminator: 1)
!629 = distinct !DILexicalBlock(scope: !613, file: !431, line: 145, column: 13)
!630 = !DILocation(line: 145, column: 17, scope: !628)
!631 = !DILocation(line: 145, column: 24, scope: !628)
!632 = !DILocation(line: 145, column: 49, scope: !633)
!633 = !DILexicalBlockFile(scope: !629, file: !431, discriminator: 2)
!634 = !DILocation(line: 145, column: 54, scope: !633)
!635 = !DILocation(line: 145, column: 62, scope: !633)
!636 = !DILocation(line: 145, column: 27, scope: !633)
!637 = !DILocation(line: 145, column: 13, scope: !633)
!638 = !DILocation(line: 146, column: 10, scope: !639)
!639 = distinct !DILexicalBlock(scope: !640, file: !431, line: 146, column: 7)
!640 = distinct !DILexicalBlock(scope: !629, file: !431, line: 145, column: 69)
!641 = !DILocation(line: 146, column: 16, scope: !639)
!642 = !DILocation(line: 146, column: 24, scope: !639)
!643 = !DILocation(line: 146, column: 7, scope: !640)
!644 = !DILocation(line: 147, column: 69, scope: !645)
!645 = distinct !DILexicalBlock(scope: !639, file: !431, line: 146, column: 31)
!646 = !DILocation(line: 147, column: 44, scope: !645)
!647 = !DILocation(line: 147, column: 27, scope: !645)
!648 = !DILocation(line: 147, column: 26, scope: !645)
!649 = !DILocation(line: 150, column: 12, scope: !645)
!650 = !DILocation(line: 150, column: 17, scope: !645)
!651 = !DILocation(line: 150, column: 22, scope: !645)
!652 = !DILocation(line: 150, column: 27, scope: !645)
!653 = !DILocation(line: 150, column: 33, scope: !645)
!654 = !DILocation(line: 150, column: 38, scope: !645)
!655 = !DILocation(line: 147, column: 10, scope: !656)
!656 = !DILexicalBlockFile(scope: !645, file: !431, discriminator: 1)
!657 = !DILocation(line: 147, column: 8, scope: !645)
!658 = !DILocation(line: 151, column: 3, scope: !645)
!659 = !DILocation(line: 152, column: 69, scope: !660)
!660 = distinct !DILexicalBlock(scope: !639, file: !431, line: 151, column: 10)
!661 = !DILocation(line: 152, column: 44, scope: !660)
!662 = !DILocation(line: 152, column: 27, scope: !660)
!663 = !DILocation(line: 152, column: 26, scope: !660)
!664 = !DILocation(line: 155, column: 12, scope: !660)
!665 = !DILocation(line: 155, column: 17, scope: !660)
!666 = !DILocation(line: 155, column: 22, scope: !660)
!667 = !DILocation(line: 155, column: 27, scope: !660)
!668 = !DILocation(line: 155, column: 36, scope: !660)
!669 = !DILocation(line: 155, column: 41, scope: !660)
!670 = !DILocation(line: 152, column: 10, scope: !671)
!671 = !DILexicalBlockFile(scope: !660, file: !431, discriminator: 1)
!672 = !DILocation(line: 152, column: 8, scope: !660)
!673 = !DILocation(line: 157, column: 20, scope: !640)
!674 = !DILocation(line: 157, column: 25, scope: !640)
!675 = !DILocation(line: 157, column: 33, scope: !640)
!676 = !DILocation(line: 157, column: 38, scope: !640)
!677 = !DILocation(line: 158, column: 6, scope: !640)
!678 = !DILocation(line: 158, column: 11, scope: !640)
!679 = !DILocation(line: 158, column: 22, scope: !640)
!680 = !DILocation(line: 157, column: 3, scope: !640)
!681 = !DILocation(line: 159, column: 10, scope: !640)
!682 = !DILocation(line: 159, column: 3, scope: !640)
!683 = !DILocation(line: 160, column: 2, scope: !640)
!684 = !DILocation(line: 161, column: 1, scope: !556)
!685 = distinct !DISubprogram(name: "ctcp_msg_dcc_accept", scope: !431, file: !431, line: 164, type: !557, isLocal: true, isDefinition: true, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !435)
!686 = !DILocalVariable(name: "server", arg: 1, scope: !685, file: !431, line: 164, type: !67)
!687 = !DILocation(line: 164, column: 49, scope: !685)
!688 = !DILocalVariable(name: "data", arg: 2, scope: !685, file: !431, line: 164, type: !424)
!689 = !DILocation(line: 164, column: 69, scope: !685)
!690 = !DILocalVariable(name: "nick", arg: 3, scope: !685, file: !431, line: 165, type: !424)
!691 = !DILocation(line: 165, column: 17, scope: !685)
!692 = !DILocalVariable(name: "addr", arg: 4, scope: !685, file: !431, line: 165, type: !424)
!693 = !DILocation(line: 165, column: 35, scope: !685)
!694 = !DILocalVariable(name: "target", arg: 5, scope: !685, file: !431, line: 166, type: !424)
!695 = !DILocation(line: 166, column: 17, scope: !685)
!696 = !DILocalVariable(name: "chat", arg: 6, scope: !685, file: !431, line: 166, type: !359)
!697 = !DILocation(line: 166, column: 34, scope: !685)
!698 = !DILocalVariable(name: "dcc", scope: !685, file: !431, line: 168, type: !572)
!699 = !DILocation(line: 168, column: 16, scope: !685)
!700 = !DILocalVariable(name: "size", scope: !685, file: !431, line: 169, type: !319)
!701 = !DILocation(line: 169, column: 16, scope: !685)
!702 = !DILocalVariable(name: "pasv_id", scope: !685, file: !431, line: 170, type: !58)
!703 = !DILocation(line: 170, column: 6, scope: !685)
!704 = !DILocation(line: 172, column: 29, scope: !705)
!705 = distinct !DILexicalBlock(scope: !685, file: !431, line: 172, column: 6)
!706 = !DILocation(line: 172, column: 67, scope: !705)
!707 = !DILocation(line: 172, column: 73, scope: !705)
!708 = !DILocation(line: 172, column: 7, scope: !709)
!709 = !DILexicalBlockFile(scope: !705, file: !431, discriminator: 2)
!710 = !DILocation(line: 172, column: 7, scope: !705)
!711 = !DILocation(line: 172, column: 102, scope: !705)
!712 = !DILocation(line: 173, column: 7, scope: !705)
!713 = !DILocation(line: 173, column: 11, scope: !705)
!714 = !DILocation(line: 173, column: 18, scope: !705)
!715 = !DILocation(line: 173, column: 63, scope: !716)
!716 = !DILexicalBlockFile(scope: !705, file: !431, discriminator: 1)
!717 = !DILocation(line: 173, column: 38, scope: !716)
!718 = !DILocation(line: 173, column: 22, scope: !716)
!719 = !DILocation(line: 173, column: 39, scope: !716)
!720 = !DILocation(line: 173, column: 48, scope: !716)
!721 = !DILocation(line: 172, column: 6, scope: !722)
!722 = !DILexicalBlockFile(scope: !685, file: !431, discriminator: 1)
!723 = !DILocation(line: 174, column: 46, scope: !724)
!724 = distinct !DILexicalBlock(scope: !705, file: !431, line: 173, column: 68)
!725 = !DILocation(line: 175, column: 8, scope: !724)
!726 = !DILocation(line: 175, column: 14, scope: !724)
!727 = !DILocation(line: 175, column: 20, scope: !724)
!728 = !DILocation(line: 174, column: 3, scope: !724)
!729 = !DILocation(line: 176, column: 2, scope: !724)
!730 = !DILocation(line: 176, column: 13, scope: !731)
!731 = !DILexicalBlockFile(scope: !732, file: !431, discriminator: 1)
!732 = distinct !DILexicalBlock(scope: !705, file: !431, line: 176, column: 13)
!733 = !DILocation(line: 176, column: 17, scope: !731)
!734 = !DILocation(line: 176, column: 24, scope: !731)
!735 = !DILocation(line: 176, column: 49, scope: !736)
!736 = !DILexicalBlockFile(scope: !732, file: !431, discriminator: 2)
!737 = !DILocation(line: 176, column: 54, scope: !736)
!738 = !DILocation(line: 176, column: 62, scope: !736)
!739 = !DILocation(line: 176, column: 27, scope: !736)
!740 = !DILocation(line: 176, column: 13, scope: !736)
!741 = !DILocation(line: 177, column: 10, scope: !742)
!742 = distinct !DILexicalBlock(scope: !743, file: !431, line: 177, column: 7)
!743 = distinct !DILexicalBlock(scope: !732, file: !431, line: 176, column: 69)
!744 = !DILocation(line: 177, column: 16, scope: !742)
!745 = !DILocation(line: 177, column: 24, scope: !742)
!746 = !DILocation(line: 177, column: 7, scope: !743)
!747 = !DILocation(line: 178, column: 62, scope: !742)
!748 = !DILocation(line: 178, column: 37, scope: !742)
!749 = !DILocation(line: 178, column: 21, scope: !742)
!750 = !DILocation(line: 178, column: 4, scope: !751)
!751 = !DILexicalBlockFile(scope: !742, file: !431, discriminator: 1)
!752 = !DILocation(line: 178, column: 4, scope: !742)
!753 = !DILocation(line: 180, column: 62, scope: !742)
!754 = !DILocation(line: 180, column: 37, scope: !742)
!755 = !DILocation(line: 180, column: 21, scope: !742)
!756 = !DILocation(line: 180, column: 4, scope: !751)
!757 = !DILocation(line: 181, column: 2, scope: !743)
!758 = !DILocation(line: 182, column: 1, scope: !685)
!759 = distinct !DISubprogram(name: "cmd_dcc_resume", scope: !431, file: !431, line: 229, type: !760, isLocal: true, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !435)
!760 = !DISubroutineType(types: !761)
!761 = !{null, !424}
!762 = !DILocalVariable(name: "data", arg: 1, scope: !759, file: !431, line: 229, type: !424)
!763 = !DILocation(line: 229, column: 40, scope: !759)
!764 = !DILocation(line: 231, column: 18, scope: !759)
!765 = !DILocation(line: 231, column: 2, scope: !759)
!766 = !DILocation(line: 232, column: 1, scope: !759)
!767 = distinct !DISubprogram(name: "dcc_resume_deinit", scope: !431, file: !431, line: 241, type: !241, isLocal: false, isDefinition: true, scopeLine: 242, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !435)
!768 = !DILocation(line: 243, column: 2, scope: !767)
!769 = !DILocation(line: 244, column: 2, scope: !767)
!770 = !DILocation(line: 245, column: 2, scope: !767)
!771 = !DILocation(line: 246, column: 1, scope: !767)
!772 = distinct !DISubprogram(name: "dcc_ctcp_resume_parse", scope: !431, file: !431, line: 83, type: !773, isLocal: true, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !435)
!773 = !DISubroutineType(types: !774)
!774 = !{!58, !58, !424, !424, !775, !776, !777}
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64, align: 64)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64, align: 64)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!778 = !DILocalVariable(name: "type", arg: 1, scope: !772, file: !431, line: 83, type: !58)
!779 = !DILocation(line: 83, column: 38, scope: !772)
!780 = !DILocalVariable(name: "data", arg: 2, scope: !772, file: !431, line: 83, type: !424)
!781 = !DILocation(line: 83, column: 56, scope: !772)
!782 = !DILocalVariable(name: "nick", arg: 3, scope: !772, file: !431, line: 83, type: !424)
!783 = !DILocation(line: 83, column: 74, scope: !772)
!784 = !DILocalVariable(name: "dcc", arg: 4, scope: !772, file: !431, line: 84, type: !775)
!785 = !DILocation(line: 84, column: 21, scope: !772)
!786 = !DILocalVariable(name: "size", arg: 5, scope: !772, file: !431, line: 84, type: !776)
!787 = !DILocation(line: 84, column: 34, scope: !772)
!788 = !DILocalVariable(name: "pasv_id", arg: 6, scope: !772, file: !431, line: 84, type: !777)
!789 = !DILocation(line: 84, column: 45, scope: !772)
!790 = !DILocalVariable(name: "params", scope: !772, file: !431, line: 86, type: !434)
!791 = !DILocation(line: 86, column: 9, scope: !772)
!792 = !DILocalVariable(name: "paramcount", scope: !772, file: !431, line: 87, type: !58)
!793 = !DILocation(line: 87, column: 6, scope: !772)
!794 = !DILocalVariable(name: "fileparams", scope: !772, file: !431, line: 87, type: !58)
!795 = !DILocation(line: 87, column: 18, scope: !772)
!796 = !DILocalVariable(name: "port", scope: !772, file: !431, line: 88, type: !58)
!797 = !DILocation(line: 88, column: 6, scope: !772)
!798 = !DILocation(line: 92, column: 22, scope: !772)
!799 = !DILocation(line: 92, column: 11, scope: !772)
!800 = !DILocation(line: 92, column: 9, scope: !772)
!801 = !DILocation(line: 93, column: 29, scope: !772)
!802 = !DILocation(line: 93, column: 15, scope: !772)
!803 = !DILocation(line: 93, column: 13, scope: !772)
!804 = !DILocation(line: 95, column: 6, scope: !805)
!805 = distinct !DILexicalBlock(scope: !772, file: !431, line: 95, column: 6)
!806 = !DILocation(line: 95, column: 17, scope: !805)
!807 = !DILocation(line: 95, column: 6, scope: !772)
!808 = !DILocation(line: 96, column: 3, scope: !805)
!809 = !DILocation(line: 98, column: 44, scope: !772)
!810 = !DILocation(line: 98, column: 52, scope: !772)
!811 = !DILocation(line: 98, column: 15, scope: !772)
!812 = !DILocation(line: 98, column: 13, scope: !772)
!813 = !DILocation(line: 100, column: 6, scope: !814)
!814 = distinct !DILexicalBlock(scope: !772, file: !431, line: 100, column: 6)
!815 = !DILocation(line: 100, column: 20, scope: !814)
!816 = !DILocation(line: 100, column: 31, scope: !814)
!817 = !DILocation(line: 100, column: 17, scope: !814)
!818 = !DILocation(line: 100, column: 6, scope: !772)
!819 = !DILocation(line: 101, column: 22, scope: !820)
!820 = distinct !DILexicalBlock(scope: !814, file: !431, line: 100, column: 36)
!821 = !DILocation(line: 101, column: 15, scope: !820)
!822 = !DILocation(line: 101, column: 10, scope: !820)
!823 = !DILocation(line: 101, column: 8, scope: !820)
!824 = !DILocation(line: 102, column: 31, scope: !820)
!825 = !DILocation(line: 102, column: 41, scope: !820)
!826 = !DILocation(line: 102, column: 24, scope: !820)
!827 = !DILocation(line: 102, column: 11, scope: !820)
!828 = !DILocation(line: 102, column: 4, scope: !820)
!829 = !DILocation(line: 102, column: 9, scope: !820)
!830 = !DILocation(line: 103, column: 16, scope: !820)
!831 = !DILocation(line: 103, column: 21, scope: !820)
!832 = !DILocation(line: 103, column: 27, scope: !820)
!833 = !DILocation(line: 103, column: 31, scope: !834)
!834 = !DILexicalBlockFile(scope: !820, file: !431, discriminator: 1)
!835 = !DILocation(line: 103, column: 45, scope: !834)
!836 = !DILocation(line: 103, column: 56, scope: !834)
!837 = !DILocation(line: 103, column: 42, scope: !834)
!838 = !DILocation(line: 103, column: 14, scope: !834)
!839 = !DILocation(line: 103, column: 76, scope: !840)
!840 = !DILexicalBlockFile(scope: !820, file: !431, discriminator: 2)
!841 = !DILocation(line: 103, column: 86, scope: !840)
!842 = !DILocation(line: 103, column: 69, scope: !840)
!843 = !DILocation(line: 103, column: 64, scope: !840)
!844 = !DILocation(line: 103, column: 14, scope: !840)
!845 = !DILocation(line: 103, column: 14, scope: !846)
!846 = !DILexicalBlockFile(scope: !820, file: !431, discriminator: 3)
!847 = !DILocation(line: 103, column: 14, scope: !848)
!848 = !DILexicalBlockFile(scope: !820, file: !431, discriminator: 4)
!849 = !DILocation(line: 103, column: 4, scope: !848)
!850 = !DILocation(line: 103, column: 12, scope: !848)
!851 = !DILocation(line: 104, column: 26, scope: !820)
!852 = !DILocation(line: 104, column: 32, scope: !820)
!853 = !DILocation(line: 104, column: 38, scope: !820)
!854 = !DILocation(line: 104, column: 10, scope: !820)
!855 = !DILocation(line: 104, column: 4, scope: !820)
!856 = !DILocation(line: 104, column: 8, scope: !820)
!857 = !DILocation(line: 105, column: 14, scope: !820)
!858 = !DILocation(line: 105, column: 3, scope: !820)
!859 = !DILocation(line: 108, column: 13, scope: !820)
!860 = !DILocation(line: 108, column: 12, scope: !820)
!861 = !DILocation(line: 108, column: 17, scope: !820)
!862 = !DILocation(line: 108, column: 25, scope: !820)
!863 = !DILocation(line: 108, column: 31, scope: !834)
!864 = !DILocation(line: 108, column: 30, scope: !834)
!865 = !DILocation(line: 108, column: 37, scope: !834)
!866 = !DILocation(line: 108, column: 49, scope: !834)
!867 = !DILocation(line: 108, column: 48, scope: !834)
!868 = !DILocation(line: 108, column: 45, scope: !834)
!869 = !DILocation(line: 108, column: 25, scope: !840)
!870 = !DILocation(line: 108, column: 3, scope: !840)
!871 = !DILocation(line: 110, column: 13, scope: !772)
!872 = !DILocation(line: 110, column: 2, scope: !772)
!873 = !DILocation(line: 111, column: 2, scope: !772)
!874 = !DILocation(line: 112, column: 1, scope: !772)
!875 = distinct !DISubprogram(name: "dcc_resume_file_check", scope: !431, file: !431, line: 114, type: !876, isLocal: true, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !435)
!876 = !DISubroutineType(types: !877)
!877 = !{!58, !572, !67, !319}
!878 = !DILocalVariable(name: "dcc", arg: 1, scope: !875, file: !431, line: 114, type: !572)
!879 = !DILocation(line: 114, column: 48, scope: !875)
!880 = !DILocalVariable(name: "server", arg: 2, scope: !875, file: !431, line: 114, type: !67)
!881 = !DILocation(line: 114, column: 69, scope: !875)
!882 = !DILocalVariable(name: "size", arg: 3, scope: !875, file: !431, line: 115, type: !319)
!883 = !DILocation(line: 115, column: 13, scope: !875)
!884 = !DILocation(line: 117, column: 6, scope: !885)
!885 = distinct !DILexicalBlock(scope: !875, file: !431, line: 117, column: 6)
!886 = !DILocation(line: 117, column: 14, scope: !885)
!887 = !DILocation(line: 117, column: 19, scope: !885)
!888 = !DILocation(line: 117, column: 11, scope: !885)
!889 = !DILocation(line: 117, column: 6, scope: !875)
!890 = !DILocation(line: 119, column: 20, scope: !891)
!891 = distinct !DILexicalBlock(scope: !885, file: !431, line: 117, column: 25)
!892 = !DILocation(line: 119, column: 3, scope: !891)
!893 = !DILocation(line: 119, column: 8, scope: !891)
!894 = !DILocation(line: 119, column: 18, scope: !891)
!895 = !DILocation(line: 120, column: 28, scope: !891)
!896 = !DILocation(line: 120, column: 15, scope: !891)
!897 = !DILocation(line: 120, column: 35, scope: !891)
!898 = !DILocation(line: 120, column: 3, scope: !891)
!899 = !DILocation(line: 121, column: 2, scope: !891)
!900 = !DILocation(line: 121, column: 19, scope: !901)
!901 = !DILexicalBlockFile(scope: !902, file: !431, discriminator: 1)
!902 = distinct !DILexicalBlock(scope: !885, file: !431, line: 121, column: 13)
!903 = !DILocation(line: 121, column: 24, scope: !901)
!904 = !DILocation(line: 121, column: 40, scope: !901)
!905 = !DILocation(line: 121, column: 13, scope: !901)
!906 = !DILocation(line: 121, column: 65, scope: !901)
!907 = !DILocation(line: 121, column: 55, scope: !901)
!908 = !DILocation(line: 123, column: 28, scope: !909)
!909 = distinct !DILexicalBlock(scope: !902, file: !431, line: 121, column: 71)
!910 = !DILocation(line: 123, column: 15, scope: !909)
!911 = !DILocation(line: 123, column: 35, scope: !909)
!912 = !DILocation(line: 123, column: 3, scope: !909)
!913 = !DILocation(line: 124, column: 2, scope: !909)
!914 = !DILocation(line: 125, column: 33, scope: !915)
!915 = distinct !DILexicalBlock(scope: !902, file: !431, line: 124, column: 9)
!916 = !DILocation(line: 125, column: 18, scope: !915)
!917 = !DILocation(line: 125, column: 23, scope: !915)
!918 = !DILocation(line: 125, column: 31, scope: !915)
!919 = !DILocation(line: 125, column: 3, scope: !915)
!920 = !DILocation(line: 125, column: 8, scope: !915)
!921 = !DILocation(line: 125, column: 16, scope: !915)
!922 = !DILocation(line: 126, column: 17, scope: !915)
!923 = !DILocation(line: 129, column: 2, scope: !875)
!924 = !DILocation(line: 130, column: 1, scope: !875)
!925 = distinct !DISubprogram(name: "dcc_resume_find", scope: !431, file: !431, line: 32, type: !926, isLocal: true, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !435)
!926 = !DISubroutineType(types: !927)
!927 = !{!572, !58, !424, !58}
!928 = !DILocalVariable(name: "type", arg: 1, scope: !925, file: !431, line: 32, type: !58)
!929 = !DILocation(line: 32, column: 42, scope: !925)
!930 = !DILocalVariable(name: "nick", arg: 2, scope: !925, file: !431, line: 32, type: !424)
!931 = !DILocation(line: 32, column: 60, scope: !925)
!932 = !DILocalVariable(name: "port", arg: 3, scope: !925, file: !431, line: 32, type: !58)
!933 = !DILocation(line: 32, column: 70, scope: !925)
!934 = !DILocalVariable(name: "tmp", scope: !925, file: !431, line: 34, type: !253)
!935 = !DILocation(line: 34, column: 10, scope: !925)
!936 = !DILocation(line: 36, column: 13, scope: !937)
!937 = distinct !DILexicalBlock(scope: !925, file: !431, line: 36, column: 2)
!938 = !DILocation(line: 36, column: 11, scope: !937)
!939 = !DILocation(line: 36, column: 7, scope: !937)
!940 = !DILocation(line: 36, column: 24, scope: !941)
!941 = !DILexicalBlockFile(scope: !942, file: !431, discriminator: 1)
!942 = distinct !DILexicalBlock(scope: !937, file: !431, line: 36, column: 2)
!943 = !DILocation(line: 36, column: 28, scope: !941)
!944 = !DILocation(line: 36, column: 2, scope: !941)
!945 = !DILocalVariable(name: "dcc", scope: !946, file: !431, line: 37, type: !572)
!946 = distinct !DILexicalBlock(scope: !942, file: !431, line: 36, column: 53)
!947 = !DILocation(line: 37, column: 17, scope: !946)
!948 = !DILocation(line: 37, column: 23, scope: !946)
!949 = !DILocation(line: 37, column: 28, scope: !946)
!950 = !DILocation(line: 39, column: 7, scope: !951)
!951 = distinct !DILexicalBlock(scope: !946, file: !431, line: 39, column: 7)
!952 = !DILocation(line: 39, column: 12, scope: !951)
!953 = !DILocation(line: 39, column: 20, scope: !951)
!954 = !DILocation(line: 39, column: 17, scope: !951)
!955 = !DILocation(line: 39, column: 25, scope: !951)
!956 = !DILocation(line: 39, column: 31, scope: !957)
!957 = !DILexicalBlockFile(scope: !951, file: !431, discriminator: 1)
!958 = !DILocation(line: 39, column: 37, scope: !957)
!959 = !DILocation(line: 39, column: 47, scope: !957)
!960 = !DILocation(line: 39, column: 53, scope: !957)
!961 = !DILocation(line: 40, column: 7, scope: !951)
!962 = !DILocation(line: 40, column: 12, scope: !951)
!963 = !DILocation(line: 40, column: 20, scope: !951)
!964 = !DILocation(line: 40, column: 17, scope: !951)
!965 = !DILocation(line: 40, column: 25, scope: !951)
!966 = !DILocation(line: 41, column: 26, scope: !951)
!967 = !DILocation(line: 41, column: 31, scope: !951)
!968 = !DILocation(line: 41, column: 37, scope: !951)
!969 = !DILocation(line: 41, column: 7, scope: !951)
!970 = !DILocation(line: 41, column: 43, scope: !951)
!971 = !DILocation(line: 39, column: 7, scope: !972)
!972 = !DILexicalBlockFile(scope: !946, file: !431, discriminator: 2)
!973 = !DILocation(line: 42, column: 11, scope: !951)
!974 = !DILocation(line: 42, column: 4, scope: !951)
!975 = !DILocation(line: 43, column: 2, scope: !946)
!976 = !DILocation(line: 36, column: 42, scope: !977)
!977 = !DILexicalBlockFile(scope: !942, file: !431, discriminator: 2)
!978 = !DILocation(line: 36, column: 47, scope: !977)
!979 = !DILocation(line: 36, column: 40, scope: !977)
!980 = !DILocation(line: 36, column: 2, scope: !977)
!981 = distinct !{!981, !982}
!982 = !DILocation(line: 36, column: 2, scope: !925)
!983 = !DILocation(line: 45, column: 2, scope: !925)
!984 = !DILocation(line: 46, column: 1, scope: !925)
!985 = distinct !DISubprogram(name: "dcc_send_resume", scope: !431, file: !431, line: 185, type: !986, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !435)
!986 = !DISubroutineType(types: !987)
!987 = !{null, !388}
!988 = !DILocalVariable(name: "dcc", arg: 1, scope: !985, file: !431, line: 185, type: !388)
!989 = !DILocation(line: 185, column: 42, scope: !985)
!990 = !DILocalVariable(name: "pos", scope: !985, file: !431, line: 187, type: !385)
!991 = !DILocation(line: 187, column: 15, scope: !985)
!992 = !DILocalVariable(name: "str", scope: !985, file: !431, line: 188, type: !72)
!993 = !DILocation(line: 188, column: 8, scope: !985)
!994 = !DILocation(line: 190, column: 9, scope: !985)
!995 = distinct !{!995, !994}
!996 = !DILocation(line: 190, column: 17, scope: !997)
!997 = !DILexicalBlockFile(scope: !998, file: !431, discriminator: 1)
!998 = distinct !DILexicalBlock(scope: !999, file: !431, line: 190, column: 17)
!999 = distinct !DILexicalBlock(scope: !985, file: !431, line: 190, column: 11)
!1000 = !DILocation(line: 190, column: 21, scope: !997)
!1001 = !DILocation(line: 190, column: 12, scope: !1002)
!1002 = !DILexicalBlockFile(scope: !1003, file: !431, discriminator: 2)
!1003 = distinct !DILexicalBlock(scope: !998, file: !431, line: 190, column: 10)
!1004 = !DILocation(line: 190, column: 21, scope: !1005)
!1005 = !DILexicalBlockFile(scope: !1006, file: !431, discriminator: 3)
!1006 = distinct !DILexicalBlock(scope: !998, file: !431, line: 190, column: 19)
!1007 = !DILocation(line: 190, column: 105, scope: !1005)
!1008 = !DILocation(line: 190, column: 116, scope: !1009)
!1009 = !DILexicalBlockFile(scope: !999, file: !431, discriminator: 4)
!1010 = !DILocation(line: 192, column: 36, scope: !985)
!1011 = !DILocation(line: 192, column: 41, scope: !985)
!1012 = !DILocation(line: 192, column: 14, scope: !985)
!1013 = !DILocation(line: 192, column: 2, scope: !985)
!1014 = !DILocation(line: 192, column: 7, scope: !985)
!1015 = !DILocation(line: 192, column: 12, scope: !985)
!1016 = !DILocation(line: 193, column: 22, scope: !985)
!1017 = !DILocation(line: 193, column: 27, scope: !985)
!1018 = !DILocation(line: 193, column: 17, scope: !985)
!1019 = !DILocation(line: 193, column: 2, scope: !985)
!1020 = !DILocation(line: 193, column: 7, scope: !985)
!1021 = !DILocation(line: 193, column: 15, scope: !985)
!1022 = !DILocation(line: 194, column: 6, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !985, file: !431, line: 194, column: 6)
!1024 = !DILocation(line: 194, column: 11, scope: !1023)
!1025 = !DILocation(line: 194, column: 19, scope: !1023)
!1026 = !DILocation(line: 194, column: 6, scope: !985)
!1027 = !DILocation(line: 195, column: 41, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1023, file: !431, line: 194, column: 26)
!1029 = !DILocation(line: 195, column: 46, scope: !1028)
!1030 = !DILocation(line: 195, column: 52, scope: !1028)
!1031 = !DILocation(line: 195, column: 57, scope: !1028)
!1032 = !DILocation(line: 196, column: 9, scope: !1028)
!1033 = !DILocation(line: 196, column: 8, scope: !1028)
!1034 = !DILocation(line: 196, column: 20, scope: !1028)
!1035 = !DILocation(line: 195, column: 3, scope: !1028)
!1036 = !DILocation(line: 197, column: 3, scope: !1028)
!1037 = !DILocation(line: 200, column: 2, scope: !985)
!1038 = !DILocation(line: 200, column: 7, scope: !985)
!1039 = !DILocation(line: 200, column: 16, scope: !985)
!1040 = !DILocation(line: 202, column: 14, scope: !985)
!1041 = !DILocation(line: 202, column: 19, scope: !985)
!1042 = !DILocation(line: 202, column: 8, scope: !985)
!1043 = !DILocation(line: 202, column: 6, scope: !985)
!1044 = !DILocation(line: 203, column: 17, scope: !985)
!1045 = !DILocation(line: 203, column: 21, scope: !985)
!1046 = !DILocation(line: 203, column: 17, scope: !1047)
!1047 = !DILexicalBlockFile(scope: !985, file: !431, discriminator: 1)
!1048 = !DILocation(line: 203, column: 39, scope: !1049)
!1049 = !DILexicalBlockFile(scope: !985, file: !431, discriminator: 2)
!1050 = !DILocation(line: 203, column: 17, scope: !1049)
!1051 = !DILocation(line: 203, column: 17, scope: !1052)
!1052 = !DILexicalBlockFile(scope: !985, file: !431, discriminator: 3)
!1053 = !DILocation(line: 203, column: 2, scope: !1052)
!1054 = !DILocation(line: 203, column: 7, scope: !1052)
!1055 = !DILocation(line: 203, column: 15, scope: !1052)
!1056 = !DILocation(line: 204, column: 17, scope: !985)
!1057 = !DILocation(line: 204, column: 22, scope: !985)
!1058 = !DILocation(line: 204, column: 2, scope: !985)
!1059 = !DILocation(line: 204, column: 7, scope: !985)
!1060 = !DILocation(line: 204, column: 15, scope: !985)
!1061 = !DILocation(line: 206, column: 6, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !985, file: !431, line: 206, column: 6)
!1063 = !DILocation(line: 206, column: 11, scope: !1062)
!1064 = !DILocation(line: 206, column: 22, scope: !1062)
!1065 = !DILocation(line: 206, column: 27, scope: !1062)
!1066 = !DILocation(line: 206, column: 19, scope: !1062)
!1067 = !DILocation(line: 206, column: 6, scope: !985)
!1068 = !DILocation(line: 208, column: 20, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1062, file: !431, line: 206, column: 33)
!1070 = !DILocation(line: 208, column: 3, scope: !1069)
!1071 = !DILocation(line: 208, column: 8, scope: !1069)
!1072 = !DILocation(line: 208, column: 18, scope: !1069)
!1073 = !DILocation(line: 209, column: 28, scope: !1069)
!1074 = !DILocation(line: 209, column: 15, scope: !1069)
!1075 = !DILocation(line: 209, column: 3, scope: !1069)
!1076 = !DILocation(line: 210, column: 2, scope: !1069)
!1077 = !DILocation(line: 211, column: 10, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1079, file: !431, line: 211, column: 7)
!1079 = distinct !DILexicalBlock(scope: !1062, file: !431, line: 210, column: 9)
!1080 = !DILocation(line: 211, column: 16, scope: !1078)
!1081 = !DILocation(line: 211, column: 24, scope: !1078)
!1082 = !DILocation(line: 211, column: 7, scope: !1079)
!1083 = !DILocation(line: 212, column: 26, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1078, file: !431, line: 211, column: 31)
!1085 = !DILocation(line: 212, column: 31, scope: !1084)
!1086 = !DILocation(line: 215, column: 12, scope: !1084)
!1087 = !DILocation(line: 215, column: 17, scope: !1084)
!1088 = !DILocation(line: 215, column: 22, scope: !1084)
!1089 = !DILocation(line: 215, column: 27, scope: !1084)
!1090 = !DILocation(line: 215, column: 33, scope: !1084)
!1091 = !DILocation(line: 215, column: 38, scope: !1084)
!1092 = !DILocation(line: 212, column: 10, scope: !1084)
!1093 = !DILocation(line: 212, column: 8, scope: !1084)
!1094 = !DILocation(line: 216, column: 3, scope: !1084)
!1095 = !DILocation(line: 217, column: 26, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1078, file: !431, line: 216, column: 10)
!1097 = !DILocation(line: 217, column: 31, scope: !1096)
!1098 = !DILocation(line: 220, column: 12, scope: !1096)
!1099 = !DILocation(line: 220, column: 17, scope: !1096)
!1100 = !DILocation(line: 220, column: 22, scope: !1096)
!1101 = !DILocation(line: 220, column: 27, scope: !1096)
!1102 = !DILocation(line: 220, column: 36, scope: !1096)
!1103 = !DILocation(line: 220, column: 41, scope: !1096)
!1104 = !DILocation(line: 217, column: 10, scope: !1096)
!1105 = !DILocation(line: 217, column: 8, scope: !1096)
!1106 = !DILocation(line: 222, column: 20, scope: !1079)
!1107 = !DILocation(line: 222, column: 25, scope: !1079)
!1108 = !DILocation(line: 222, column: 33, scope: !1079)
!1109 = !DILocation(line: 222, column: 38, scope: !1079)
!1110 = !DILocation(line: 223, column: 6, scope: !1079)
!1111 = !DILocation(line: 223, column: 11, scope: !1079)
!1112 = !DILocation(line: 223, column: 22, scope: !1079)
!1113 = !DILocation(line: 222, column: 3, scope: !1079)
!1114 = !DILocation(line: 224, column: 10, scope: !1079)
!1115 = !DILocation(line: 224, column: 3, scope: !1079)
!1116 = !DILocation(line: 226, column: 1, scope: !985)
