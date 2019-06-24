; ModuleID = './libvmtools_la-i18n.o.i'
source_filename = "./libvmtools_la-i18n.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.MsgState = type { %struct.HashTable*, %struct.GStaticMutex }
%struct.HashTable = type opaque
%struct.GStaticMutex = type { %union._GMutex*, %union.pthread_mutex_t }
%union._GMutex = type { i8* }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%struct._GOnce = type { i32, i8* }
%struct.MsgCatalog = type { %struct.HashTable* }
%struct._GError = type { i32, i32, i8* }
%struct._GIOChannel = type { i32, %struct._GIOFuncs*, i8*, %struct._GIConv*, %struct._GIConv*, i8*, i32, i64, %struct._GString*, %struct._GString*, %struct._GString*, [6 x i8], i8, i8*, i8* }
%struct._GIOFuncs = type { i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i8*, i64, i64*, %struct._GError**)*, i32 (%struct._GIOChannel*, i64, i32, %struct._GError**)*, i32 (%struct._GIOChannel*, %struct._GError**)*, %struct._GSource* (%struct._GIOChannel*, i32)*, void (%struct._GIOChannel*)*, i32 (%struct._GIOChannel*, i32, %struct._GError**)*, i32 (%struct._GIOChannel*)* }
%struct._GSource = type { i8*, %struct._GSourceCallbackFuncs*, %struct._GSourceFuncs*, i32, %struct._GMainContext*, i32, i32, i32, %struct._GSList*, %struct._GSource*, %struct._GSource*, i8*, %struct._GSourcePrivate* }
%struct._GSourceCallbackFuncs = type { void (i8*)*, void (i8*)*, void (i8*, %struct._GSource*, i32 (i8*)**, i8**)* }
%struct._GSourceFuncs = type { i32 (%struct._GSource*, i32*)*, i32 (%struct._GSource*)*, i32 (%struct._GSource*, i32 (i8*)*, i8*)*, void (%struct._GSource*)*, i32 (i8*)*, void ()* }
%struct._GMainContext = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GSourcePrivate = type opaque
%struct._GIConv = type opaque
%struct._GString = type { i8*, i64, i64 }

@gMsgState = internal global %struct.MsgState* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"%s: user locale=%s\0A\00", align 1
@__FUNCTION__.VMTools_BindTextDomain = private unnamed_addr constant [23 x i8] c"VMTools_BindTextDomain\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"/usr/local/share/open-vm-tools\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"%s%smessages%s%s%s%s.vmsg\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.6 = private unnamed_addr constant [79 x i8] c"Cannot load message catalog for domain '%s', language '%s', catalog dir '%s'.\0A\00", align 1
@MsgGetState.msgStateInit = internal global %struct._GOnce zeroinitializer, align 8
@.str.7 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"Unable to open '%s': %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"MEM_ALLOC %s:%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"i18n.c\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"Unable to read a line from '%s': %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"Couldn't parse line from catalog: %s\00", align 1
@.str.15 = private unnamed_addr constant [52 x i8] c"Invalid UTF-8 string in message catalog (key = %s)\0A\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"NOT_IMPLEMENTED %s:%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @VMToolsMsgCleanup() #0 !dbg !478 {
  %1 = load %struct.MsgState*, %struct.MsgState** @gMsgState, align 8, !dbg !481
  %2 = icmp ne %struct.MsgState* %1, null, !dbg !483
  br i1 %2, label %3, label %17, !dbg !484

; <label>:3:                                      ; preds = %0
  %4 = load %struct.MsgState*, %struct.MsgState** @gMsgState, align 8, !dbg !485
  %5 = getelementptr inbounds %struct.MsgState, %struct.MsgState* %4, i32 0, i32 0, !dbg !488
  %6 = load %struct.HashTable*, %struct.HashTable** %5, align 8, !dbg !488
  %7 = icmp ne %struct.HashTable* %6, null, !dbg !489
  br i1 %7, label %8, label %12, !dbg !490

; <label>:8:                                      ; preds = %3
  %9 = load %struct.MsgState*, %struct.MsgState** @gMsgState, align 8, !dbg !491
  %10 = getelementptr inbounds %struct.MsgState, %struct.MsgState* %9, i32 0, i32 0, !dbg !493
  %11 = load %struct.HashTable*, %struct.HashTable** %10, align 8, !dbg !493
  call void @HashTable_Free(%struct.HashTable* %11), !dbg !494
  br label %12, !dbg !495

; <label>:12:                                     ; preds = %8, %3
  %13 = load %struct.MsgState*, %struct.MsgState** @gMsgState, align 8, !dbg !496
  %14 = getelementptr inbounds %struct.MsgState, %struct.MsgState* %13, i32 0, i32 1, !dbg !497
  call void @g_static_mutex_free(%struct.GStaticMutex* %14), !dbg !498
  %15 = load %struct.MsgState*, %struct.MsgState** @gMsgState, align 8, !dbg !499
  %16 = bitcast %struct.MsgState* %15 to i8*, !dbg !499
  call void @g_free(i8* %16), !dbg !500
  br label %17, !dbg !501

; <label>:17:                                     ; preds = %12, %0
  ret void, !dbg !502
}

declare void @HashTable_Free(%struct.HashTable*) #1

declare void @g_static_mutex_free(%struct.GStaticMutex*) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define void @VMTools_BindTextDomain(i8*, i8*, i8*) #0 !dbg !503 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.MsgState*, align 8
  %11 = alloca %struct.MsgCatalog*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !508, metadata !509), !dbg !510
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !511, metadata !509), !dbg !512
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !513, metadata !509), !dbg !514
  call void @llvm.dbg.declare(metadata i8** %7, metadata !515, metadata !509), !dbg !517
  store i8* null, i8** %7, align 8, !dbg !517
  call void @llvm.dbg.declare(metadata i8** %8, metadata !518, metadata !509), !dbg !519
  call void @llvm.dbg.declare(metadata i8** %9, metadata !520, metadata !509), !dbg !521
  store i8* null, i8** %9, align 8, !dbg !521
  call void @llvm.dbg.declare(metadata %struct.MsgState** %10, metadata !522, metadata !509), !dbg !523
  %13 = call %struct.MsgState* @MsgGetState(), !dbg !524
  store %struct.MsgState* %13, %struct.MsgState** %10, align 8, !dbg !523
  call void @llvm.dbg.declare(metadata %struct.MsgCatalog** %11, metadata !525, metadata !509), !dbg !526
  %14 = load i8*, i8** %5, align 8, !dbg !527
  %15 = icmp eq i8* %14, null, !dbg !529
  br i1 %15, label %21, label %16, !dbg !530

; <label>:16:                                     ; preds = %3
  %17 = load i8*, i8** %5, align 8, !dbg !531
  %18 = load i8, i8* %17, align 1, !dbg !533
  %19 = sext i8 %18 to i32, !dbg !533
  %20 = icmp eq i32 %19, 0, !dbg !534
  br i1 %20, label %21, label %24, !dbg !535

; <label>:21:                                     ; preds = %16, %3
  %22 = call i8* @MsgGetUserLanguage(), !dbg !536
  store i8* %22, i8** %9, align 8, !dbg !538
  %23 = load i8*, i8** %9, align 8, !dbg !539
  store i8* %23, i8** %5, align 8, !dbg !540
  br label %24, !dbg !541

; <label>:24:                                     ; preds = %21, %16
  %25 = load i8*, i8** %5, align 8, !dbg !542
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 128, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.VMTools_BindTextDomain, i32 0, i32 0), i8* %25), !dbg !543
  %26 = load i8*, i8** %6, align 8, !dbg !544
  %27 = icmp eq i8* %26, null, !dbg !546
  br i1 %27, label %28, label %37, !dbg !547

; <label>:28:                                     ; preds = %24
  %29 = call i8* @UtilSafeStrdup0(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0)), !dbg !548
  store i8* %29, i8** %7, align 8, !dbg !550
  %30 = load i8*, i8** %7, align 8, !dbg !551
  %31 = icmp ne i8* %30, null, !dbg !552
  br i1 %31, label %32, label %34, !dbg !552

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %7, align 8, !dbg !553
  br label %35, !dbg !555

; <label>:34:                                     ; preds = %28
  br label %35, !dbg !556

; <label>:35:                                     ; preds = %34, %32
  %36 = phi i8* [ %33, %32 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), %34 ], !dbg !558
  store i8* %36, i8** %6, align 8, !dbg !560
  br label %37, !dbg !561

; <label>:37:                                     ; preds = %35, %24
  %38 = load i8*, i8** %6, align 8, !dbg !562
  %39 = load i8*, i8** %5, align 8, !dbg !563
  %40 = load i8*, i8** %4, align 8, !dbg !564
  %41 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0), i8* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* %40), !dbg !565
  store i8* %41, i8** %8, align 8, !dbg !566
  %42 = load i8*, i8** %8, align 8, !dbg !567
  %43 = call signext i8 @File_IsFile(i8* %42), !dbg !569
  %44 = icmp ne i8 %43, 0, !dbg !569
  br i1 %44, label %70, label %45, !dbg !570

; <label>:45:                                     ; preds = %37
  call void @llvm.dbg.declare(metadata i8** %12, metadata !571, metadata !509), !dbg !573
  %46 = load i8*, i8** %5, align 8, !dbg !574
  %47 = call i8* @strrchr(i8* %46, i32 95) #8, !dbg !575
  store i8* %47, i8** %12, align 8, !dbg !573
  %48 = load i8*, i8** %12, align 8, !dbg !576
  %49 = icmp ne i8* %48, null, !dbg !578
  br i1 %49, label %50, label %69, !dbg !579

; <label>:50:                                     ; preds = %45
  %51 = load i8*, i8** %9, align 8, !dbg !580
  %52 = icmp eq i8* %51, null, !dbg !583
  br i1 %52, label %53, label %56, !dbg !584

; <label>:53:                                     ; preds = %50
  %54 = load i8*, i8** %5, align 8, !dbg !585
  %55 = call i8* @UtilSafeStrdup0(i8* %54), !dbg !587
  store i8* %55, i8** %9, align 8, !dbg !588
  br label %56, !dbg !589

; <label>:56:                                     ; preds = %53, %50
  %57 = load i8*, i8** %12, align 8, !dbg !590
  %58 = load i8*, i8** %5, align 8, !dbg !591
  %59 = ptrtoint i8* %57 to i64, !dbg !592
  %60 = ptrtoint i8* %58 to i64, !dbg !592
  %61 = sub i64 %59, %60, !dbg !592
  %62 = load i8*, i8** %9, align 8, !dbg !593
  %63 = getelementptr inbounds i8, i8* %62, i64 %61, !dbg !593
  store i8 0, i8* %63, align 1, !dbg !594
  %64 = load i8*, i8** %8, align 8, !dbg !595
  call void @g_free(i8* %64), !dbg !596
  %65 = load i8*, i8** %6, align 8, !dbg !597
  %66 = load i8*, i8** %9, align 8, !dbg !598
  %67 = load i8*, i8** %4, align 8, !dbg !599
  %68 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0), i8* %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* %67), !dbg !600
  store i8* %68, i8** %8, align 8, !dbg !601
  br label %69, !dbg !602

; <label>:69:                                     ; preds = %56, %45
  br label %70, !dbg !603

; <label>:70:                                     ; preds = %69, %37
  %71 = load i8*, i8** %8, align 8, !dbg !604
  %72 = call %struct.MsgCatalog* @MsgLoadCatalog(i8* %71), !dbg !605
  store %struct.MsgCatalog* %72, %struct.MsgCatalog** %11, align 8, !dbg !606
  %73 = load %struct.MsgCatalog*, %struct.MsgCatalog** %11, align 8, !dbg !607
  %74 = icmp eq %struct.MsgCatalog* %73, null, !dbg !609
  br i1 %74, label %75, label %84, !dbg !610

; <label>:75:                                     ; preds = %70
  %76 = load i8*, i8** %5, align 8, !dbg !611
  %77 = call i32 @strncmp(i8* %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i64 2) #8, !dbg !614
  %78 = icmp ne i32 %77, 0, !dbg !614
  br i1 %78, label %79, label %83, !dbg !615

; <label>:79:                                     ; preds = %75
  %80 = load i8*, i8** %4, align 8, !dbg !616
  %81 = load i8*, i8** %5, align 8, !dbg !618
  %82 = load i8*, i8** %6, align 8, !dbg !619
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 32, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.6, i32 0, i32 0), i8* %80, i8* %81, i8* %82), !dbg !620
  br label %83, !dbg !621

; <label>:83:                                     ; preds = %79, %75
  br label %93, !dbg !622

; <label>:84:                                     ; preds = %70
  %85 = load %struct.MsgState*, %struct.MsgState** %10, align 8, !dbg !623
  %86 = getelementptr inbounds %struct.MsgState, %struct.MsgState* %85, i32 0, i32 1, !dbg !625
  %87 = call %union._GMutex* @g_static_mutex_get_mutex_impl(%struct.GStaticMutex* %86), !dbg !626
  call void @g_mutex_lock(%union._GMutex* %87), !dbg !627
  %88 = load i8*, i8** %4, align 8, !dbg !629
  %89 = load %struct.MsgCatalog*, %struct.MsgCatalog** %11, align 8, !dbg !630
  call void @MsgSetCatalog(i8* %88, %struct.MsgCatalog* %89), !dbg !631
  %90 = load %struct.MsgState*, %struct.MsgState** %10, align 8, !dbg !632
  %91 = getelementptr inbounds %struct.MsgState, %struct.MsgState* %90, i32 0, i32 1, !dbg !633
  %92 = call %union._GMutex* @g_static_mutex_get_mutex_impl(%struct.GStaticMutex* %91), !dbg !634
  call void @g_mutex_unlock(%union._GMutex* %92), !dbg !635
  br label %93

; <label>:93:                                     ; preds = %84, %83
  %94 = load i8*, i8** %8, align 8, !dbg !636
  call void @g_free(i8* %94), !dbg !637
  %95 = load i8*, i8** %7, align 8, !dbg !638
  call void @free(i8* %95) #9, !dbg !639
  %96 = load i8*, i8** %9, align 8, !dbg !640
  call void @g_free(i8* %96), !dbg !641
  ret void, !dbg !642
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.MsgState* @MsgGetState() #3 !dbg !463 {
  %1 = load volatile i32, i32* getelementptr inbounds (%struct._GOnce, %struct._GOnce* @MsgGetState.msgStateInit, i32 0, i32 0), align 8, !dbg !643
  %2 = icmp eq i32 %1, 2, !dbg !644
  br i1 %2, label %3, label %5, !dbg !645

; <label>:3:                                      ; preds = %0
  %4 = load volatile i8*, i8** getelementptr inbounds (%struct._GOnce, %struct._GOnce* @MsgGetState.msgStateInit, i32 0, i32 1), align 8, !dbg !646
  br label %7, !dbg !648

; <label>:5:                                      ; preds = %0
  %6 = call i8* @g_once_impl(%struct._GOnce* @MsgGetState.msgStateInit, i8* (i8*)* @MsgInitState, i8* null), !dbg !649
  br label %7, !dbg !651

; <label>:7:                                      ; preds = %5, %3
  %8 = phi i8* [ %4, %3 ], [ %6, %5 ], !dbg !652
  %9 = load %struct.MsgState*, %struct.MsgState** @gMsgState, align 8, !dbg !654
  ret %struct.MsgState* %9, !dbg !655
}

; Function Attrs: nounwind uwtable
define internal i8* @MsgGetUserLanguage() #0 !dbg !656 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %1, metadata !659, metadata !509), !dbg !660
  call void @llvm.dbg.declare(metadata i8** %2, metadata !661, metadata !509), !dbg !662
  %4 = call i8* @setlocale(i32 5, i8* null) #9, !dbg !663
  store i8* %4, i8** %2, align 8, !dbg !662
  %5 = load i8*, i8** %2, align 8, !dbg !664
  %6 = icmp eq i8* %5, null, !dbg !666
  br i1 %6, label %7, label %9, !dbg !667

; <label>:7:                                      ; preds = %0
  %8 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)), !dbg !668
  store i8* %8, i8** %1, align 8, !dbg !670
  br label %19, !dbg !671

; <label>:9:                                      ; preds = %0
  call void @llvm.dbg.declare(metadata i8** %3, metadata !672, metadata !509), !dbg !674
  %10 = load i8*, i8** %2, align 8, !dbg !675
  %11 = call noalias i8* @g_strdup(i8* %10), !dbg !676
  store i8* %11, i8** %1, align 8, !dbg !677
  %12 = load i8*, i8** %1, align 8, !dbg !678
  %13 = call i8* @strchr(i8* %12, i32 46) #8, !dbg !679
  store i8* %13, i8** %3, align 8, !dbg !680
  %14 = load i8*, i8** %3, align 8, !dbg !681
  %15 = icmp ne i8* %14, null, !dbg !683
  br i1 %15, label %16, label %18, !dbg !684

; <label>:16:                                     ; preds = %9
  %17 = load i8*, i8** %3, align 8, !dbg !685
  store i8 0, i8* %17, align 1, !dbg !687
  br label %18, !dbg !688

; <label>:18:                                     ; preds = %16, %9
  br label %19

; <label>:19:                                     ; preds = %18, %7
  %20 = load i8*, i8** %1, align 8, !dbg !689
  ret i8* %20, !dbg !690
}

declare void @g_log(i8*, i32, i8*, ...) #1

declare i8* @UtilSafeStrdup0(i8*) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare signext i8 @File_IsFile(i8*) #1

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #4

; Function Attrs: nounwind uwtable
define internal %struct.MsgCatalog* @MsgLoadCatalog(i8*) #0 !dbg !691 {
  %2 = alloca %struct.MsgCatalog*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._GError*, align 8
  %6 = alloca %struct._GIOChannel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.MsgCatalog*, align 8
  %9 = alloca %struct.HashTable*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !694, metadata !509), !dbg !695
  call void @llvm.dbg.declare(metadata i8** %4, metadata !696, metadata !509), !dbg !697
  call void @llvm.dbg.declare(metadata %struct._GError** %5, metadata !698, metadata !509), !dbg !712
  store %struct._GError* null, %struct._GError** %5, align 8, !dbg !712
  call void @llvm.dbg.declare(metadata %struct._GIOChannel** %6, metadata !713, metadata !509), !dbg !876
  call void @llvm.dbg.declare(metadata i32* %7, metadata !877, metadata !509), !dbg !878
  store i32 0, i32* %7, align 4, !dbg !878
  call void @llvm.dbg.declare(metadata %struct.MsgCatalog** %8, metadata !879, metadata !509), !dbg !880
  store %struct.MsgCatalog* null, %struct.MsgCatalog** %8, align 8, !dbg !880
  call void @llvm.dbg.declare(metadata %struct.HashTable** %9, metadata !881, metadata !509), !dbg !882
  %21 = load i8*, i8** %3, align 8, !dbg !883
  %22 = call noalias i8* @g_filename_from_utf8(i8* %21, i64 -1, i64* null, i64* null, %struct._GError** null), !dbg !884
  store i8* %22, i8** %4, align 8, !dbg !885
  %23 = load i8*, i8** %4, align 8, !dbg !886
  %24 = call %struct._GIOChannel* @g_io_channel_new_file(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), %struct._GError** %5), !dbg !887
  store %struct._GIOChannel* %24, %struct._GIOChannel** %6, align 8, !dbg !888
  %25 = load i8*, i8** %4, align 8, !dbg !889
  call void @g_free(i8* %25), !dbg !890
  %26 = load %struct._GError*, %struct._GError** %5, align 8, !dbg !891
  %27 = icmp ne %struct._GError* %26, null, !dbg !893
  br i1 %27, label %28, label %33, !dbg !894

; <label>:28:                                     ; preds = %1
  %29 = load i8*, i8** %3, align 8, !dbg !895
  %30 = load %struct._GError*, %struct._GError** %5, align 8, !dbg !897
  %31 = getelementptr inbounds %struct._GError, %struct._GError* %30, i32 0, i32 2, !dbg !898
  %32 = load i8*, i8** %31, align 8, !dbg !898
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 128, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i32 0, i32 0), i8* %29, i8* %32), !dbg !899
  call void @g_clear_error(%struct._GError** %5), !dbg !900
  store %struct.MsgCatalog* null, %struct.MsgCatalog** %2, align 8, !dbg !901
  br label %217, !dbg !901

; <label>:33:                                     ; preds = %1
  %34 = call %struct.HashTable* @HashTable_Alloc(i32 8, i32 16, void (i8*)* @g_free), !dbg !902
  store %struct.HashTable* %34, %struct.HashTable** %9, align 8, !dbg !903
  %35 = load %struct.HashTable*, %struct.HashTable** %9, align 8, !dbg !904
  %36 = icmp ne %struct.HashTable* %35, null, !dbg !907
  %37 = xor i1 %36, true, !dbg !907
  %38 = zext i1 %37 to i32, !dbg !907
  %39 = sext i32 %38 to i64, !dbg !908
  %40 = icmp ne i64 %39, 0, !dbg !909
  br i1 %40, label %41, label %42, !dbg !910

; <label>:41:                                     ; preds = %33
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 537) #10, !dbg !911
  unreachable, !dbg !911

; <label>:42:                                     ; preds = %33
  br label %43, !dbg !914

; <label>:43:                                     ; preds = %202, %42
  call void @llvm.dbg.declare(metadata i32* %10, metadata !915, metadata !509), !dbg !919
  store i32 0, i32* %10, align 4, !dbg !919
  call void @llvm.dbg.declare(metadata i8** %11, metadata !920, metadata !509), !dbg !921
  store i8* null, i8** %11, align 8, !dbg !921
  call void @llvm.dbg.declare(metadata i8** %12, metadata !922, metadata !509), !dbg !923
  store i8* null, i8** %12, align 8, !dbg !923
  call void @llvm.dbg.declare(metadata i8** %13, metadata !924, metadata !509), !dbg !925
  br label %44, !dbg !926

; <label>:44:                                     ; preds = %163, %43
  call void @llvm.dbg.declare(metadata i64* %14, metadata !927, metadata !509), !dbg !931
  call void @llvm.dbg.declare(metadata i64* %15, metadata !932, metadata !509), !dbg !933
  call void @llvm.dbg.declare(metadata i64* %16, metadata !934, metadata !509), !dbg !935
  call void @llvm.dbg.declare(metadata i8** %17, metadata !936, metadata !509), !dbg !937
  store i8* null, i8** %17, align 8, !dbg !937
  call void @llvm.dbg.declare(metadata i32* %18, metadata !938, metadata !509), !dbg !939
  store i32 0, i32* %18, align 4, !dbg !939
  %45 = load %struct._GIOChannel*, %struct._GIOChannel** %6, align 8, !dbg !940
  %46 = call i32 @g_io_channel_read_line(%struct._GIOChannel* %45, i8** %13, i64* %15, i64* %16, %struct._GError** %5), !dbg !941
  %47 = load %struct._GError*, %struct._GError** %5, align 8, !dbg !942
  %48 = icmp ne %struct._GError* %47, null, !dbg !944
  br i1 %48, label %49, label %55, !dbg !945

; <label>:49:                                     ; preds = %44
  %50 = load i8*, i8** %3, align 8, !dbg !946
  %51 = load %struct._GError*, %struct._GError** %5, align 8, !dbg !948
  %52 = getelementptr inbounds %struct._GError, %struct._GError* %51, i32 0, i32 2, !dbg !949
  %53 = load i8*, i8** %52, align 8, !dbg !949
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i32 0, i32 0), i8* %50, i8* %53), !dbg !950
  call void @g_clear_error(%struct._GError** %5), !dbg !951
  store i32 1, i32* %7, align 4, !dbg !952
  %54 = load i8*, i8** %13, align 8, !dbg !953
  call void @g_free(i8* %54), !dbg !954
  br label %166, !dbg !955

; <label>:55:                                     ; preds = %44
  %56 = load i8*, i8** %13, align 8, !dbg !956
  %57 = icmp eq i8* %56, null, !dbg !958
  br i1 %57, label %58, label %59, !dbg !959

; <label>:58:                                     ; preds = %55
  store i32 1, i32* %10, align 4, !dbg !960
  br label %166, !dbg !962

; <label>:59:                                     ; preds = %55
  %60 = load i64, i64* %16, align 8, !dbg !963
  %61 = load i8*, i8** %13, align 8, !dbg !965
  %62 = getelementptr inbounds i8, i8* %61, i64 %60, !dbg !965
  %63 = load i8, i8* %62, align 1, !dbg !965
  %64 = sext i8 %63 to i32, !dbg !965
  %65 = icmp eq i32 %64, 13, !dbg !966
  br i1 %65, label %66, label %79, !dbg !967

; <label>:66:                                     ; preds = %59
  %67 = load i64, i64* %16, align 8, !dbg !968
  %68 = load i8*, i8** %13, align 8, !dbg !970
  %69 = getelementptr inbounds i8, i8* %68, i64 %67, !dbg !970
  store i8 10, i8* %69, align 1, !dbg !971
  %70 = load i64, i64* %15, align 8, !dbg !972
  %71 = load i64, i64* %16, align 8, !dbg !974
  %72 = icmp ugt i64 %70, %71, !dbg !975
  br i1 %72, label %73, label %78, !dbg !976

; <label>:73:                                     ; preds = %66
  %74 = load i64, i64* %16, align 8, !dbg !977
  %75 = add i64 %74, 1, !dbg !979
  %76 = load i8*, i8** %13, align 8, !dbg !980
  %77 = getelementptr inbounds i8, i8* %76, i64 %75, !dbg !980
  store i8 0, i8* %77, align 1, !dbg !981
  br label %78, !dbg !982

; <label>:78:                                     ; preds = %73, %66
  br label %79, !dbg !983

; <label>:79:                                     ; preds = %78, %59
  %80 = load i64, i64* %16, align 8, !dbg !984
  %81 = icmp ugt i64 %80, 0, !dbg !986
  br i1 %81, label %82, label %145, !dbg !987

; <label>:82:                                     ; preds = %79
  %83 = load i8*, i8** %11, align 8, !dbg !988
  %84 = icmp ne i8* %83, null, !dbg !990
  br i1 %84, label %85, label %145, !dbg !991

; <label>:85:                                     ; preds = %82
  %86 = load i64, i64* %16, align 8, !dbg !992
  %87 = sub i64 %86, 1, !dbg !994
  %88 = load i8*, i8** %13, align 8, !dbg !995
  %89 = getelementptr inbounds i8, i8* %88, i64 %87, !dbg !995
  %90 = load i8, i8* %89, align 1, !dbg !995
  %91 = sext i8 %90 to i32, !dbg !995
  %92 = icmp eq i32 %91, 34, !dbg !996
  br i1 %92, label %93, label %145, !dbg !997

; <label>:93:                                     ; preds = %85
  store i64 0, i64* %14, align 8, !dbg !998
  br label %94, !dbg !1001

; <label>:94:                                     ; preds = %141, %93
  %95 = load i64, i64* %14, align 8, !dbg !1002
  %96 = load i64, i64* %15, align 8, !dbg !1005
  %97 = icmp ult i64 %95, %96, !dbg !1006
  br i1 %97, label %98, label %144, !dbg !1007

; <label>:98:                                     ; preds = %94
  %99 = load i64, i64* %14, align 8, !dbg !1008
  %100 = load i8*, i8** %13, align 8, !dbg !1011
  %101 = getelementptr inbounds i8, i8* %100, i64 %99, !dbg !1011
  %102 = load i8, i8* %101, align 1, !dbg !1011
  %103 = sext i8 %102 to i32, !dbg !1011
  %104 = icmp eq i32 %103, 34, !dbg !1012
  br i1 %104, label %105, label %124, !dbg !1013

; <label>:105:                                    ; preds = %98
  call void @llvm.dbg.declare(metadata i8** %19, metadata !1014, metadata !509), !dbg !1016
  call void @llvm.dbg.declare(metadata i8** %20, metadata !1017, metadata !509), !dbg !1018
  %106 = load i64, i64* %16, align 8, !dbg !1019
  %107 = sub i64 %106, 1, !dbg !1020
  %108 = load i8*, i8** %13, align 8, !dbg !1021
  %109 = getelementptr inbounds i8, i8* %108, i64 %107, !dbg !1021
  store i8 0, i8* %109, align 1, !dbg !1022
  %110 = load i8*, i8** %13, align 8, !dbg !1023
  %111 = load i64, i64* %14, align 8, !dbg !1024
  %112 = getelementptr inbounds i8, i8* %110, i64 %111, !dbg !1025
  %113 = getelementptr inbounds i8, i8* %112, i64 1, !dbg !1026
  %114 = load i64, i64* %15, align 8, !dbg !1027
  %115 = load i64, i64* %14, align 8, !dbg !1028
  %116 = sub i64 %114, %115, !dbg !1029
  %117 = call i8* @Escape_Undo(i8 signext 124, i8* %113, i64 %116, i64* null), !dbg !1030
  store i8* %117, i8** %20, align 8, !dbg !1031
  %118 = load i8*, i8** %12, align 8, !dbg !1032
  %119 = load i8*, i8** %20, align 8, !dbg !1033
  %120 = call i8* (i64*, i8*, ...) @Str_Asprintf(i64* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* %118, i8* %119), !dbg !1034
  store i8* %120, i8** %19, align 8, !dbg !1035
  %121 = load i8*, i8** %20, align 8, !dbg !1036
  call void @free(i8* %121) #9, !dbg !1037
  %122 = load i8*, i8** %12, align 8, !dbg !1038
  call void @free(i8* %122) #9, !dbg !1039
  %123 = load i8*, i8** %19, align 8, !dbg !1040
  store i8* %123, i8** %12, align 8, !dbg !1041
  store i32 1, i32* %18, align 4, !dbg !1042
  br label %144, !dbg !1043

; <label>:124:                                    ; preds = %98
  %125 = load i64, i64* %14, align 8, !dbg !1044
  %126 = load i8*, i8** %13, align 8, !dbg !1046
  %127 = getelementptr inbounds i8, i8* %126, i64 %125, !dbg !1046
  %128 = load i8, i8* %127, align 1, !dbg !1046
  %129 = sext i8 %128 to i32, !dbg !1046
  %130 = icmp ne i32 %129, 32, !dbg !1047
  br i1 %130, label %131, label %139, !dbg !1048

; <label>:131:                                    ; preds = %124
  %132 = load i64, i64* %14, align 8, !dbg !1049
  %133 = load i8*, i8** %13, align 8, !dbg !1051
  %134 = getelementptr inbounds i8, i8* %133, i64 %132, !dbg !1051
  %135 = load i8, i8* %134, align 1, !dbg !1051
  %136 = sext i8 %135 to i32, !dbg !1051
  %137 = icmp ne i32 %136, 9, !dbg !1052
  br i1 %137, label %138, label %139, !dbg !1053

; <label>:138:                                    ; preds = %131
  br label %144, !dbg !1054

; <label>:139:                                    ; preds = %131, %124
  br label %140

; <label>:140:                                    ; preds = %139
  br label %141, !dbg !1056

; <label>:141:                                    ; preds = %140
  %142 = load i64, i64* %14, align 8, !dbg !1057
  %143 = add i64 %142, 1, !dbg !1057
  store i64 %143, i64* %14, align 8, !dbg !1057
  br label %94, !dbg !1059, !llvm.loop !1060

; <label>:144:                                    ; preds = %138, %105, %94
  br label %145, !dbg !1062

; <label>:145:                                    ; preds = %144, %85, %82, %79
  %146 = load i32, i32* %18, align 4, !dbg !1063
  %147 = icmp ne i32 %146, 0, !dbg !1063
  br i1 %147, label %153, label %148, !dbg !1065

; <label>:148:                                    ; preds = %145
  %149 = load i8*, i8** %11, align 8, !dbg !1066
  %150 = icmp ne i8* %149, null, !dbg !1068
  br i1 %150, label %151, label %153, !dbg !1069

; <label>:151:                                    ; preds = %148
  %152 = load i8*, i8** %13, align 8, !dbg !1070
  call void @g_free(i8* %152), !dbg !1072
  br label %166, !dbg !1073

; <label>:153:                                    ; preds = %148, %145
  %154 = load i32, i32* %18, align 4, !dbg !1074
  %155 = icmp ne i32 %154, 0, !dbg !1074
  br i1 %155, label %163, label %156, !dbg !1076

; <label>:156:                                    ; preds = %153
  %157 = load i8*, i8** %13, align 8, !dbg !1077
  %158 = load i64, i64* %15, align 8, !dbg !1079
  %159 = call i8* @DictLL_UnmarshalLine(i8* %157, i64 %158, i8** %17, i8** %11, i8** %12), !dbg !1080
  %160 = icmp eq i8* %159, null, !dbg !1081
  br i1 %160, label %161, label %163, !dbg !1082

; <label>:161:                                    ; preds = %156
  %162 = load i8*, i8** %13, align 8, !dbg !1083
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i32 0, i32 0), i8* %162), !dbg !1085
  store i32 1, i32* %7, align 4, !dbg !1086
  br label %163, !dbg !1087

; <label>:163:                                    ; preds = %161, %156, %153
  %164 = load i8*, i8** %13, align 8, !dbg !1088
  call void @g_free(i8* %164), !dbg !1089
  %165 = load i8*, i8** %17, align 8, !dbg !1090
  call void @free(i8* %165) #9, !dbg !1091
  br label %44, !dbg !1092, !llvm.loop !1094

; <label>:166:                                    ; preds = %151, %58, %49
  %167 = load i32, i32* %7, align 4, !dbg !1095
  %168 = icmp ne i32 %167, 0, !dbg !1095
  br i1 %168, label %169, label %170, !dbg !1097

; <label>:169:                                    ; preds = %166
  br label %203, !dbg !1098

; <label>:170:                                    ; preds = %166
  %171 = load i8*, i8** %11, align 8, !dbg !1100
  %172 = icmp ne i8* %171, null, !dbg !1102
  br i1 %172, label %173, label %198, !dbg !1103

; <label>:173:                                    ; preds = %170
  %174 = load i8*, i8** %11, align 8, !dbg !1104
  %175 = load i8*, i8** %11, align 8, !dbg !1107
  %176 = call i64 @strlen(i8* %175) #8, !dbg !1108
  %177 = add i64 %176, 1, !dbg !1109
  %178 = call signext i8 @Unicode_IsBufferValid(i8* %174, i64 %177, i32 0), !dbg !1110
  %179 = icmp ne i8 %178, 0, !dbg !1112
  br i1 %179, label %180, label %187, !dbg !1113

; <label>:180:                                    ; preds = %173
  %181 = load i8*, i8** %12, align 8, !dbg !1114
  %182 = load i8*, i8** %12, align 8, !dbg !1115
  %183 = call i64 @strlen(i8* %182) #8, !dbg !1116
  %184 = add i64 %183, 1, !dbg !1117
  %185 = call signext i8 @Unicode_IsBufferValid(i8* %181, i64 %184, i32 0), !dbg !1118
  %186 = icmp ne i8 %185, 0, !dbg !1120
  br i1 %186, label %189, label %187, !dbg !1121

; <label>:187:                                    ; preds = %180, %173
  %188 = load i8*, i8** %11, align 8, !dbg !1123
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15, i32 0, i32 0), i8* %188), !dbg !1125
  store i32 1, i32* %7, align 4, !dbg !1126
  br label %203, !dbg !1127

; <label>:189:                                    ; preds = %180
  %190 = load i8*, i8** %12, align 8, !dbg !1128
  call void @MsgUnescape(i8* %190), !dbg !1129
  %191 = load %struct.HashTable*, %struct.HashTable** %9, align 8, !dbg !1130
  %192 = load i8*, i8** %11, align 8, !dbg !1131
  %193 = load i8*, i8** %12, align 8, !dbg !1132
  %194 = call noalias i8* @g_strdup(i8* %193), !dbg !1133
  %195 = call signext i8 @HashTable_ReplaceOrInsert(%struct.HashTable* %191, i8* %192, i8* %194), !dbg !1134
  %196 = load i8*, i8** %11, align 8, !dbg !1135
  call void @free(i8* %196) #9, !dbg !1136
  %197 = load i8*, i8** %12, align 8, !dbg !1137
  call void @free(i8* %197) #9, !dbg !1138
  store i8* null, i8** %11, align 8, !dbg !1139
  store i8* null, i8** %12, align 8, !dbg !1140
  br label %198, !dbg !1141

; <label>:198:                                    ; preds = %189, %170
  %199 = load i32, i32* %10, align 4, !dbg !1142
  %200 = icmp ne i32 %199, 0, !dbg !1142
  br i1 %200, label %201, label %202, !dbg !1144

; <label>:201:                                    ; preds = %198
  br label %203, !dbg !1145

; <label>:202:                                    ; preds = %198
  br label %43, !dbg !1147, !llvm.loop !1149

; <label>:203:                                    ; preds = %201, %187, %169
  %204 = load %struct._GIOChannel*, %struct._GIOChannel** %6, align 8, !dbg !1150
  call void @g_io_channel_unref(%struct._GIOChannel* %204), !dbg !1151
  %205 = load i32, i32* %7, align 4, !dbg !1152
  %206 = icmp ne i32 %205, 0, !dbg !1152
  br i1 %206, label %207, label %209, !dbg !1154

; <label>:207:                                    ; preds = %203
  %208 = load %struct.HashTable*, %struct.HashTable** %9, align 8, !dbg !1155
  call void @HashTable_Free(%struct.HashTable* %208), !dbg !1157
  store %struct.HashTable* null, %struct.HashTable** %9, align 8, !dbg !1158
  br label %215, !dbg !1159

; <label>:209:                                    ; preds = %203
  %210 = call noalias i8* @g_malloc0_n(i64 1, i64 8), !dbg !1160
  %211 = bitcast i8* %210 to %struct.MsgCatalog*, !dbg !1162
  store %struct.MsgCatalog* %211, %struct.MsgCatalog** %8, align 8, !dbg !1163
  %212 = load %struct.HashTable*, %struct.HashTable** %9, align 8, !dbg !1164
  %213 = load %struct.MsgCatalog*, %struct.MsgCatalog** %8, align 8, !dbg !1165
  %214 = getelementptr inbounds %struct.MsgCatalog, %struct.MsgCatalog* %213, i32 0, i32 0, !dbg !1166
  store %struct.HashTable* %212, %struct.HashTable** %214, align 8, !dbg !1167
  br label %215

; <label>:215:                                    ; preds = %209, %207
  %216 = load %struct.MsgCatalog*, %struct.MsgCatalog** %8, align 8, !dbg !1168
  store %struct.MsgCatalog* %216, %struct.MsgCatalog** %2, align 8, !dbg !1169
  br label %217, !dbg !1169

; <label>:217:                                    ; preds = %215, %28
  %218 = load %struct.MsgCatalog*, %struct.MsgCatalog** %2, align 8, !dbg !1170
  ret %struct.MsgCatalog* %218, !dbg !1170
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #4

declare void @g_mutex_lock(%union._GMutex*) #1

declare %union._GMutex* @g_static_mutex_get_mutex_impl(%struct.GStaticMutex*) #1

; Function Attrs: nounwind uwtable
define internal void @MsgSetCatalog(i8*, %struct.MsgCatalog*) #0 !dbg !1171 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.MsgCatalog*, align 8
  %5 = alloca %struct.MsgState*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1174, metadata !509), !dbg !1175
  store %struct.MsgCatalog* %1, %struct.MsgCatalog** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.MsgCatalog** %4, metadata !1176, metadata !509), !dbg !1177
  call void @llvm.dbg.declare(metadata %struct.MsgState** %5, metadata !1178, metadata !509), !dbg !1179
  %6 = call %struct.MsgState* @MsgGetState(), !dbg !1180
  store %struct.MsgState* %6, %struct.MsgState** %5, align 8, !dbg !1179
  %7 = load %struct.MsgState*, %struct.MsgState** %5, align 8, !dbg !1181
  %8 = getelementptr inbounds %struct.MsgState, %struct.MsgState* %7, i32 0, i32 0, !dbg !1183
  %9 = load %struct.HashTable*, %struct.HashTable** %8, align 8, !dbg !1183
  %10 = icmp eq %struct.HashTable* %9, null, !dbg !1184
  br i1 %10, label %11, label %25, !dbg !1185

; <label>:11:                                     ; preds = %2
  %12 = call %struct.HashTable* @HashTable_Alloc(i32 8, i32 16, void (i8*)* bitcast (void (%struct.MsgCatalog*)* @MsgCatalogFree to void (i8*)*)), !dbg !1186
  %13 = load %struct.MsgState*, %struct.MsgState** %5, align 8, !dbg !1188
  %14 = getelementptr inbounds %struct.MsgState, %struct.MsgState* %13, i32 0, i32 0, !dbg !1189
  store %struct.HashTable* %12, %struct.HashTable** %14, align 8, !dbg !1190
  %15 = load %struct.MsgState*, %struct.MsgState** %5, align 8, !dbg !1191
  %16 = getelementptr inbounds %struct.MsgState, %struct.MsgState* %15, i32 0, i32 0, !dbg !1194
  %17 = load %struct.HashTable*, %struct.HashTable** %16, align 8, !dbg !1194
  %18 = icmp ne %struct.HashTable* %17, null, !dbg !1195
  %19 = xor i1 %18, true, !dbg !1195
  %20 = zext i1 %19 to i32, !dbg !1195
  %21 = sext i32 %20 to i64, !dbg !1196
  %22 = icmp ne i64 %21, 0, !dbg !1197
  br i1 %22, label %23, label %24, !dbg !1198

; <label>:23:                                     ; preds = %11
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 278) #10, !dbg !1199
  unreachable, !dbg !1199

; <label>:24:                                     ; preds = %11
  br label %25, !dbg !1202

; <label>:25:                                     ; preds = %24, %2
  %26 = load %struct.MsgState*, %struct.MsgState** %5, align 8, !dbg !1203
  %27 = getelementptr inbounds %struct.MsgState, %struct.MsgState* %26, i32 0, i32 0, !dbg !1204
  %28 = load %struct.HashTable*, %struct.HashTable** %27, align 8, !dbg !1204
  %29 = load i8*, i8** %3, align 8, !dbg !1205
  %30 = load %struct.MsgCatalog*, %struct.MsgCatalog** %4, align 8, !dbg !1206
  %31 = bitcast %struct.MsgCatalog* %30 to i8*, !dbg !1206
  %32 = call signext i8 @HashTable_ReplaceOrInsert(%struct.HashTable* %28, i8* %29, i8* %31), !dbg !1207
  ret void, !dbg !1208
}

declare void @g_mutex_unlock(%union._GMutex*) #1

; Function Attrs: nounwind
declare void @free(i8*) #5

; Function Attrs: nounwind uwtable
define i8* @VMTools_GetString(i8*, i8*) #0 !dbg !1209 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1212, metadata !509), !dbg !1213
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1214, metadata !509), !dbg !1215
  %5 = load i8*, i8** %3, align 8, !dbg !1216
  %6 = load i8*, i8** %4, align 8, !dbg !1217
  %7 = call i8* @MsgGetString(i8* %5, i8* %6, i32 0), !dbg !1218
  ret i8* %7, !dbg !1219
}

; Function Attrs: nounwind uwtable
define internal i8* @MsgGetString(i8*, i8*, i32) #0 !dbg !1220 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [128 x i8], align 16
  %10 = alloca i64, align 8
  %11 = alloca %struct.HashTable*, align 8
  %12 = alloca %struct.MsgCatalog*, align 8
  %13 = alloca %struct.MsgState*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1226, metadata !509), !dbg !1227
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1228, metadata !509), !dbg !1229
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1230, metadata !509), !dbg !1231
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1232, metadata !509), !dbg !1233
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1234, metadata !509), !dbg !1235
  call void @llvm.dbg.declare(metadata [128 x i8]* %9, metadata !1236, metadata !509), !dbg !1240
  call void @llvm.dbg.declare(metadata i64* %10, metadata !1241, metadata !509), !dbg !1244
  call void @llvm.dbg.declare(metadata %struct.HashTable** %11, metadata !1245, metadata !509), !dbg !1246
  store %struct.HashTable* null, %struct.HashTable** %11, align 8, !dbg !1246
  call void @llvm.dbg.declare(metadata %struct.MsgCatalog** %12, metadata !1247, metadata !509), !dbg !1248
  call void @llvm.dbg.declare(metadata %struct.MsgState** %13, metadata !1249, metadata !509), !dbg !1250
  %15 = call %struct.MsgState* @MsgGetState(), !dbg !1251
  store %struct.MsgState* %15, %struct.MsgState** %13, align 8, !dbg !1250
  %16 = load i8*, i8** %5, align 8, !dbg !1252
  %17 = getelementptr inbounds i8, i8* %16, i64 7, !dbg !1253
  %18 = getelementptr inbounds i8, i8* %17, i64 1, !dbg !1254
  store i8* %18, i8** %7, align 8, !dbg !1255
  %19 = load i8*, i8** %7, align 8, !dbg !1256
  %20 = call i8* @strchr(i8* %19, i32 41) #8, !dbg !1257
  %21 = getelementptr inbounds i8, i8* %20, i64 1, !dbg !1258
  store i8* %21, i8** %8, align 8, !dbg !1259
  %22 = load i8*, i8** %8, align 8, !dbg !1260
  %23 = load i8*, i8** %7, align 8, !dbg !1261
  %24 = ptrtoint i8* %22 to i64, !dbg !1262
  %25 = ptrtoint i8* %23 to i64, !dbg !1262
  %26 = sub i64 %24, %25, !dbg !1262
  %27 = sub nsw i64 %26, 1, !dbg !1263
  store i64 %27, i64* %10, align 8, !dbg !1264
  %28 = load i64, i64* %10, align 8, !dbg !1265
  %29 = icmp ule i64 %28, 127, !dbg !1268
  %30 = xor i1 %29, true, !dbg !1269
  %31 = zext i1 %30 to i32, !dbg !1269
  %32 = sext i32 %31 to i64, !dbg !1270
  %33 = icmp ne i64 %32, 0, !dbg !1271
  br i1 %33, label %34, label %35, !dbg !1272

; <label>:34:                                     ; preds = %3
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 339) #10, !dbg !1273
  unreachable, !dbg !1273

; <label>:35:                                     ; preds = %3
  %36 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i32 0, i32 0, !dbg !1276
  %37 = load i8*, i8** %7, align 8, !dbg !1277
  %38 = load i64, i64* %10, align 8, !dbg !1278
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %36, i8* %37, i64 %38, i32 1, i1 false), !dbg !1276
  %39 = load i64, i64* %10, align 8, !dbg !1279
  %40 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 %39, !dbg !1280
  store i8 0, i8* %40, align 1, !dbg !1281
  %41 = load %struct.MsgState*, %struct.MsgState** %13, align 8, !dbg !1282
  %42 = getelementptr inbounds %struct.MsgState, %struct.MsgState* %41, i32 0, i32 1, !dbg !1283
  %43 = call %union._GMutex* @g_static_mutex_get_mutex_impl(%struct.GStaticMutex* %42), !dbg !1284
  call void @g_mutex_lock(%union._GMutex* %43), !dbg !1285
  %44 = load i8*, i8** %4, align 8, !dbg !1287
  %45 = call %struct.MsgCatalog* @MsgGetCatalog(i8* %44), !dbg !1288
  store %struct.MsgCatalog* %45, %struct.MsgCatalog** %12, align 8, !dbg !1289
  %46 = load %struct.MsgCatalog*, %struct.MsgCatalog** %12, align 8, !dbg !1290
  %47 = icmp ne %struct.MsgCatalog* %46, null, !dbg !1292
  br i1 %47, label %48, label %56, !dbg !1293

; <label>:48:                                     ; preds = %35
  %49 = load i32, i32* %6, align 4, !dbg !1294
  switch i32 %49, label %54 [
    i32 0, label %50
  ], !dbg !1296

; <label>:50:                                     ; preds = %48
  %51 = load %struct.MsgCatalog*, %struct.MsgCatalog** %12, align 8, !dbg !1297
  %52 = getelementptr inbounds %struct.MsgCatalog, %struct.MsgCatalog* %51, i32 0, i32 0, !dbg !1299
  %53 = load %struct.HashTable*, %struct.HashTable** %52, align 8, !dbg !1299
  store %struct.HashTable* %53, %struct.HashTable** %11, align 8, !dbg !1300
  br label %55, !dbg !1301

; <label>:54:                                     ; preds = %48
  call void (i8*, ...) @Panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 363) #10, !dbg !1302
  unreachable, !dbg !1302

; <label>:55:                                     ; preds = %50
  br label %56, !dbg !1303

; <label>:56:                                     ; preds = %55, %35
  %57 = load %struct.HashTable*, %struct.HashTable** %11, align 8, !dbg !1304
  %58 = icmp ne %struct.HashTable* %57, null, !dbg !1306
  br i1 %58, label %59, label %67, !dbg !1307

; <label>:59:                                     ; preds = %56
  call void @llvm.dbg.declare(metadata i8** %14, metadata !1308, metadata !509), !dbg !1310
  store i8* null, i8** %14, align 8, !dbg !1310
  %60 = load %struct.HashTable*, %struct.HashTable** %11, align 8, !dbg !1311
  %61 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i32 0, i32 0, !dbg !1313
  %62 = call signext i8 @HashTable_Lookup(%struct.HashTable* %60, i8* %61, i8** %14), !dbg !1314
  %63 = icmp ne i8 %62, 0, !dbg !1314
  br i1 %63, label %64, label %66, !dbg !1315

; <label>:64:                                     ; preds = %59
  %65 = load i8*, i8** %14, align 8, !dbg !1316
  store i8* %65, i8** %8, align 8, !dbg !1318
  br label %66, !dbg !1319

; <label>:66:                                     ; preds = %64, %59
  br label %67, !dbg !1320

; <label>:67:                                     ; preds = %66, %56
  %68 = load %struct.MsgState*, %struct.MsgState** %13, align 8, !dbg !1321
  %69 = getelementptr inbounds %struct.MsgState, %struct.MsgState* %68, i32 0, i32 1, !dbg !1322
  %70 = call %union._GMutex* @g_static_mutex_get_mutex_impl(%struct.GStaticMutex* %69), !dbg !1323
  call void @g_mutex_unlock(%union._GMutex* %70), !dbg !1324
  %71 = load i8*, i8** %8, align 8, !dbg !1325
  ret i8* %71, !dbg !1326
}

declare i8* @g_once_impl(%struct._GOnce*, i8* (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i8* @MsgInitState(i8*) #0 !dbg !1327 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1330, metadata !509), !dbg !1331
  %3 = call noalias i8* @g_malloc0_n(i64 1, i64 56), !dbg !1332
  %4 = bitcast i8* %3 to %struct.MsgState*, !dbg !1333
  store %struct.MsgState* %4, %struct.MsgState** @gMsgState, align 8, !dbg !1334
  %5 = load %struct.MsgState*, %struct.MsgState** @gMsgState, align 8, !dbg !1335
  %6 = getelementptr inbounds %struct.MsgState, %struct.MsgState* %5, i32 0, i32 1, !dbg !1336
  call void @g_static_mutex_init(%struct.GStaticMutex* %6), !dbg !1337
  ret i8* null, !dbg !1338
}

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare void @g_static_mutex_init(%struct.GStaticMutex*) #1

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) #5

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

declare noalias i8* @g_filename_from_utf8(i8*, i64, i64*, i64*, %struct._GError**) #1

declare %struct._GIOChannel* @g_io_channel_new_file(i8*, i8*, %struct._GError**) #1

declare void @g_clear_error(%struct._GError**) #1

declare %struct.HashTable* @HashTable_Alloc(i32, i32, void (i8*)*) #1

; Function Attrs: noreturn
declare void @Panic(i8*, ...) #6

declare i32 @g_io_channel_read_line(%struct._GIOChannel*, i8**, i64*, i64*, %struct._GError**) #1

declare i8* @Escape_Undo(i8 signext, i8*, i64, i64*) #1

declare i8* @Str_Asprintf(i64*, i8*, ...) #1

declare i8* @DictLL_UnmarshalLine(i8*, i64, i8**, i8**, i8**) #1

declare signext i8 @Unicode_IsBufferValid(i8*, i64, i32) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind uwtable
define internal void @MsgUnescape(i8*) #0 !dbg !1339 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1342, metadata !509), !dbg !1343
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1344, metadata !509), !dbg !1345
  %7 = load i8*, i8** %2, align 8, !dbg !1346
  store i8* %7, i8** %3, align 8, !dbg !1345
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1347, metadata !509), !dbg !1348
  store i32 0, i32* %4, align 4, !dbg !1348
  call void @llvm.dbg.declare(metadata i64* %5, metadata !1349, metadata !509), !dbg !1350
  %8 = load i8*, i8** %2, align 8, !dbg !1351
  %9 = call i64 @strlen(i8* %8) #8, !dbg !1352
  %10 = add i64 %9, 1, !dbg !1353
  store i64 %10, i64* %5, align 8, !dbg !1350
  br label %11, !dbg !1354

; <label>:11:                                     ; preds = %51, %1
  %12 = load i8*, i8** %3, align 8, !dbg !1355
  %13 = load i8, i8* %12, align 1, !dbg !1359
  %14 = sext i8 %13 to i32, !dbg !1359
  %15 = icmp ne i32 %14, 0, !dbg !1360
  br i1 %15, label %16, label %56, !dbg !1361

; <label>:16:                                     ; preds = %11
  %17 = load i32, i32* %4, align 4, !dbg !1362
  %18 = icmp ne i32 %17, 0, !dbg !1362
  br i1 %18, label %19, label %43, !dbg !1365

; <label>:19:                                     ; preds = %16
  call void @llvm.dbg.declare(metadata i8* %6, metadata !1366, metadata !509), !dbg !1368
  store i8 0, i8* %6, align 1, !dbg !1368
  %20 = load i8*, i8** %3, align 8, !dbg !1369
  %21 = load i8, i8* %20, align 1, !dbg !1370
  %22 = sext i8 %21 to i32, !dbg !1370
  switch i32 %22, label %27 [
    i32 92, label %23
    i32 110, label %24
    i32 114, label %25
    i32 116, label %26
  ], !dbg !1371

; <label>:23:                                     ; preds = %19
  store i8 92, i8* %6, align 1, !dbg !1372
  br label %28, !dbg !1374

; <label>:24:                                     ; preds = %19
  store i8 10, i8* %6, align 1, !dbg !1375
  br label %28, !dbg !1376

; <label>:25:                                     ; preds = %19
  store i8 13, i8* %6, align 1, !dbg !1377
  br label %28, !dbg !1378

; <label>:26:                                     ; preds = %19
  store i8 9, i8* %6, align 1, !dbg !1379
  br label %28, !dbg !1380

; <label>:27:                                     ; preds = %19
  br label %28, !dbg !1381

; <label>:28:                                     ; preds = %27, %26, %25, %24, %23
  %29 = load i8, i8* %6, align 1, !dbg !1382
  %30 = sext i8 %29 to i32, !dbg !1382
  %31 = icmp ne i32 %30, 0, !dbg !1384
  br i1 %31, label %32, label %42, !dbg !1385

; <label>:32:                                     ; preds = %28
  %33 = load i8, i8* %6, align 1, !dbg !1386
  %34 = load i8*, i8** %3, align 8, !dbg !1388
  %35 = getelementptr inbounds i8, i8* %34, i64 -1, !dbg !1389
  store i8 %33, i8* %35, align 1, !dbg !1390
  %36 = load i8*, i8** %3, align 8, !dbg !1391
  %37 = load i8*, i8** %3, align 8, !dbg !1392
  %38 = getelementptr inbounds i8, i8* %37, i64 1, !dbg !1393
  %39 = load i64, i64* %5, align 8, !dbg !1394
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %36, i8* %38, i64 %39, i32 1, i1 false), !dbg !1395
  %40 = load i8*, i8** %3, align 8, !dbg !1396
  %41 = getelementptr inbounds i8, i8* %40, i32 -1, !dbg !1396
  store i8* %41, i8** %3, align 8, !dbg !1396
  br label %42, !dbg !1397

; <label>:42:                                     ; preds = %32, %28
  store i32 0, i32* %4, align 4, !dbg !1398
  br label %50, !dbg !1399

; <label>:43:                                     ; preds = %16
  %44 = load i8*, i8** %3, align 8, !dbg !1400
  %45 = load i8, i8* %44, align 1, !dbg !1403
  %46 = sext i8 %45 to i32, !dbg !1403
  %47 = icmp eq i32 %46, 92, !dbg !1404
  br i1 %47, label %48, label %49, !dbg !1403

; <label>:48:                                     ; preds = %43
  store i32 1, i32* %4, align 4, !dbg !1405
  br label %49, !dbg !1407

; <label>:49:                                     ; preds = %48, %43
  br label %50

; <label>:50:                                     ; preds = %49, %42
  br label %51, !dbg !1408

; <label>:51:                                     ; preds = %50
  %52 = load i8*, i8** %3, align 8, !dbg !1409
  %53 = getelementptr inbounds i8, i8* %52, i32 1, !dbg !1409
  store i8* %53, i8** %3, align 8, !dbg !1409
  %54 = load i64, i64* %5, align 8, !dbg !1411
  %55 = add i64 %54, -1, !dbg !1411
  store i64 %55, i64* %5, align 8, !dbg !1411
  br label %11, !dbg !1412, !llvm.loop !1413

; <label>:56:                                     ; preds = %11
  ret void, !dbg !1414
}

declare signext i8 @HashTable_ReplaceOrInsert(%struct.HashTable*, i8*, i8*) #1

declare void @g_io_channel_unref(%struct._GIOChannel*) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: nounwind uwtable
define internal void @MsgCatalogFree(%struct.MsgCatalog*) #0 !dbg !1415 {
  %2 = alloca %struct.MsgCatalog*, align 8
  store %struct.MsgCatalog* %0, %struct.MsgCatalog** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.MsgCatalog** %2, metadata !1418, metadata !509), !dbg !1419
  %3 = load %struct.MsgCatalog*, %struct.MsgCatalog** %2, align 8, !dbg !1420
  %4 = getelementptr inbounds %struct.MsgCatalog, %struct.MsgCatalog* %3, i32 0, i32 0, !dbg !1422
  %5 = load %struct.HashTable*, %struct.HashTable** %4, align 8, !dbg !1422
  %6 = icmp ne %struct.HashTable* %5, null, !dbg !1423
  br i1 %6, label %7, label %11, !dbg !1424

; <label>:7:                                      ; preds = %1
  %8 = load %struct.MsgCatalog*, %struct.MsgCatalog** %2, align 8, !dbg !1425
  %9 = getelementptr inbounds %struct.MsgCatalog, %struct.MsgCatalog* %8, i32 0, i32 0, !dbg !1427
  %10 = load %struct.HashTable*, %struct.HashTable** %9, align 8, !dbg !1427
  call void @HashTable_Free(%struct.HashTable* %10), !dbg !1428
  br label %11, !dbg !1429

; <label>:11:                                     ; preds = %7, %1
  %12 = load %struct.MsgCatalog*, %struct.MsgCatalog** %2, align 8, !dbg !1430
  %13 = bitcast %struct.MsgCatalog* %12 to i8*, !dbg !1430
  call void @g_free(i8* %13), !dbg !1431
  ret void, !dbg !1432
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.MsgCatalog* @MsgGetCatalog(i8*) #3 !dbg !1433 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.MsgState*, align 8
  %4 = alloca %struct.MsgCatalog*, align 8
  %5 = alloca %struct.MsgCatalog*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1434, metadata !509), !dbg !1435
  call void @llvm.dbg.declare(metadata %struct.MsgState** %3, metadata !1436, metadata !509), !dbg !1437
  %6 = call %struct.MsgState* @MsgGetState(), !dbg !1438
  store %struct.MsgState* %6, %struct.MsgState** %3, align 8, !dbg !1437
  call void @llvm.dbg.declare(metadata %struct.MsgCatalog** %4, metadata !1439, metadata !509), !dbg !1440
  store %struct.MsgCatalog* null, %struct.MsgCatalog** %4, align 8, !dbg !1440
  %7 = load %struct.MsgState*, %struct.MsgState** %3, align 8, !dbg !1441
  %8 = getelementptr inbounds %struct.MsgState, %struct.MsgState* %7, i32 0, i32 0, !dbg !1443
  %9 = load %struct.HashTable*, %struct.HashTable** %8, align 8, !dbg !1443
  %10 = icmp ne %struct.HashTable* %9, null, !dbg !1444
  br i1 %10, label %11, label %22, !dbg !1445

; <label>:11:                                     ; preds = %1
  call void @llvm.dbg.declare(metadata %struct.MsgCatalog** %5, metadata !1446, metadata !509), !dbg !1448
  %12 = load %struct.MsgState*, %struct.MsgState** %3, align 8, !dbg !1449
  %13 = getelementptr inbounds %struct.MsgState, %struct.MsgState* %12, i32 0, i32 0, !dbg !1451
  %14 = load %struct.HashTable*, %struct.HashTable** %13, align 8, !dbg !1451
  %15 = load i8*, i8** %2, align 8, !dbg !1452
  %16 = bitcast %struct.MsgCatalog** %5 to i8**, !dbg !1453
  %17 = call signext i8 @HashTable_Lookup(%struct.HashTable* %14, i8* %15, i8** %16), !dbg !1454
  %18 = icmp ne i8 %17, 0, !dbg !1454
  br i1 %18, label %19, label %21, !dbg !1455

; <label>:19:                                     ; preds = %11
  %20 = load %struct.MsgCatalog*, %struct.MsgCatalog** %5, align 8, !dbg !1456
  store %struct.MsgCatalog* %20, %struct.MsgCatalog** %4, align 8, !dbg !1458
  br label %21, !dbg !1459

; <label>:21:                                     ; preds = %19, %11
  br label %22, !dbg !1460

; <label>:22:                                     ; preds = %21, %1
  %23 = load %struct.MsgCatalog*, %struct.MsgCatalog** %4, align 8, !dbg !1461
  ret %struct.MsgCatalog* %23, !dbg !1462
}

declare signext i8 @HashTable_Lookup(%struct.HashTable*, i8*, i8**) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!475, !476}
!llvm.ident = !{!477}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !386, globals: !460)
!1 = !DIFile(filename: "libvmtools_la-i18n.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1127")
!2 = !{!3, !15, !348, !354, !361, !366, !375}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 51, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/open-vm-tools/line1127")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14}
!6 = !DIEnumerator(name: "G_LOG_FLAG_RECURSION", value: 1)
!7 = !DIEnumerator(name: "G_LOG_FLAG_FATAL", value: 2)
!8 = !DIEnumerator(name: "G_LOG_LEVEL_ERROR", value: 4)
!9 = !DIEnumerator(name: "G_LOG_LEVEL_CRITICAL", value: 8)
!10 = !DIEnumerator(name: "G_LOG_LEVEL_WARNING", value: 16)
!11 = !DIEnumerator(name: "G_LOG_LEVEL_MESSAGE", value: 32)
!12 = !DIEnumerator(name: "G_LOG_LEVEL_INFO", value: 64)
!13 = !DIEnumerator(name: "G_LOG_LEVEL_DEBUG", value: 128)
!14 = !DIEnumerator(name: "G_LOG_LEVEL_MASK", value: -4)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 58, size: 32, align: 32, elements: !17)
!16 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/unicodeTypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1127")
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347}
!18 = !DIEnumerator(name: "STRING_ENCODING_FIRST", value: 0)
!19 = !DIEnumerator(name: "STRING_ENCODING_UTF8", value: 0)
!20 = !DIEnumerator(name: "STRING_ENCODING_UTF16_LE", value: 1)
!21 = !DIEnumerator(name: "STRING_ENCODING_UTF16_BE", value: 2)
!22 = !DIEnumerator(name: "STRING_ENCODING_UTF16_XE", value: 3)
!23 = !DIEnumerator(name: "STRING_ENCODING_UTF32_LE", value: 4)
!24 = !DIEnumerator(name: "STRING_ENCODING_UTF32_BE", value: 5)
!25 = !DIEnumerator(name: "STRING_ENCODING_UTF32_XE", value: 6)
!26 = !DIEnumerator(name: "STRING_ENCODING_US_ASCII", value: 7)
!27 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_1", value: 8)
!28 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_2", value: 9)
!29 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_3", value: 10)
!30 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_4", value: 11)
!31 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_5", value: 12)
!32 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_6", value: 13)
!33 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_7", value: 14)
!34 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_8", value: 15)
!35 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_9", value: 16)
!36 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_10", value: 17)
!37 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_13", value: 18)
!38 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_14", value: 19)
!39 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_15", value: 20)
!40 = !DIEnumerator(name: "STRING_ENCODING_GB_18030", value: 21)
!41 = !DIEnumerator(name: "STRING_ENCODING_BIG_5", value: 22)
!42 = !DIEnumerator(name: "STRING_ENCODING_BIG_5_HK", value: 23)
!43 = !DIEnumerator(name: "STRING_ENCODING_GBK", value: 24)
!44 = !DIEnumerator(name: "STRING_ENCODING_GB_2312", value: 25)
!45 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_CN", value: 26)
!46 = !DIEnumerator(name: "STRING_ENCODING_SHIFT_JIS", value: 27)
!47 = !DIEnumerator(name: "STRING_ENCODING_EUC_JP", value: 28)
!48 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_JP", value: 29)
!49 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_JP_1", value: 30)
!50 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_JP_2", value: 31)
!51 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_KR", value: 32)
!52 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1250", value: 33)
!53 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1251", value: 34)
!54 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1252", value: 35)
!55 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1253", value: 36)
!56 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1254", value: 37)
!57 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1255", value: 38)
!58 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1256", value: 39)
!59 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1257", value: 40)
!60 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1258", value: 41)
!61 = !DIEnumerator(name: "STRING_ENCODING_ISO_6937_2_ADD", value: 42)
!62 = !DIEnumerator(name: "STRING_ENCODING_JIS_X0201", value: 43)
!63 = !DIEnumerator(name: "STRING_ENCODING_JIS_ENCODING", value: 44)
!64 = !DIEnumerator(name: "STRING_ENCODING_EXTENDED_UNIX_CODE_FIXED_WIDTH_FOR_JAPANESE", value: 45)
!65 = !DIEnumerator(name: "STRING_ENCODING_BS_4730", value: 46)
!66 = !DIEnumerator(name: "STRING_ENCODING_SEN_850200_C", value: 47)
!67 = !DIEnumerator(name: "STRING_ENCODING_IT", value: 48)
!68 = !DIEnumerator(name: "STRING_ENCODING_ES", value: 49)
!69 = !DIEnumerator(name: "STRING_ENCODING_DIN_66003", value: 50)
!70 = !DIEnumerator(name: "STRING_ENCODING_NS_4551_1", value: 51)
!71 = !DIEnumerator(name: "STRING_ENCODING_NF_Z_62_010", value: 52)
!72 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_UTF_1", value: 53)
!73 = !DIEnumerator(name: "STRING_ENCODING_ISO_646_BASIC_1983", value: 54)
!74 = !DIEnumerator(name: "STRING_ENCODING_INVARIANT", value: 55)
!75 = !DIEnumerator(name: "STRING_ENCODING_ISO_646_IRV_1983", value: 56)
!76 = !DIEnumerator(name: "STRING_ENCODING_NATS_SEFI", value: 57)
!77 = !DIEnumerator(name: "STRING_ENCODING_NATS_SEFI_ADD", value: 58)
!78 = !DIEnumerator(name: "STRING_ENCODING_NATS_DANO", value: 59)
!79 = !DIEnumerator(name: "STRING_ENCODING_NATS_DANO_ADD", value: 60)
!80 = !DIEnumerator(name: "STRING_ENCODING_SEN_850200_B", value: 61)
!81 = !DIEnumerator(name: "STRING_ENCODING_KS_C_5601_1987", value: 62)
!82 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6220_1969_JP", value: 63)
!83 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6220_1969_RO", value: 64)
!84 = !DIEnumerator(name: "STRING_ENCODING_PT", value: 65)
!85 = !DIEnumerator(name: "STRING_ENCODING_GREEK7_OLD", value: 66)
!86 = !DIEnumerator(name: "STRING_ENCODING_LATIN_GREEK", value: 67)
!87 = !DIEnumerator(name: "STRING_ENCODING_NF_Z_62_010__1973_", value: 68)
!88 = !DIEnumerator(name: "STRING_ENCODING_LATIN_GREEK_1", value: 69)
!89 = !DIEnumerator(name: "STRING_ENCODING_ISO_5427", value: 70)
!90 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6226_1978", value: 71)
!91 = !DIEnumerator(name: "STRING_ENCODING_BS_VIEWDATA", value: 72)
!92 = !DIEnumerator(name: "STRING_ENCODING_INIS", value: 73)
!93 = !DIEnumerator(name: "STRING_ENCODING_INIS_8", value: 74)
!94 = !DIEnumerator(name: "STRING_ENCODING_INIS_CYRILLIC", value: 75)
!95 = !DIEnumerator(name: "STRING_ENCODING_ISO_5427_1981", value: 76)
!96 = !DIEnumerator(name: "STRING_ENCODING_ISO_5428_1980", value: 77)
!97 = !DIEnumerator(name: "STRING_ENCODING_GB_1988_80", value: 78)
!98 = !DIEnumerator(name: "STRING_ENCODING_GB_2312_80", value: 79)
!99 = !DIEnumerator(name: "STRING_ENCODING_NS_4551_2", value: 80)
!100 = !DIEnumerator(name: "STRING_ENCODING_VIDEOTEX_SUPPL", value: 81)
!101 = !DIEnumerator(name: "STRING_ENCODING_PT2", value: 82)
!102 = !DIEnumerator(name: "STRING_ENCODING_ES2", value: 83)
!103 = !DIEnumerator(name: "STRING_ENCODING_MSZ_7795_3", value: 84)
!104 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6226_1983", value: 85)
!105 = !DIEnumerator(name: "STRING_ENCODING_GREEK7", value: 86)
!106 = !DIEnumerator(name: "STRING_ENCODING_ASMO_449", value: 87)
!107 = !DIEnumerator(name: "STRING_ENCODING_ISO_IR_90", value: 88)
!108 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_A", value: 89)
!109 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_B", value: 90)
!110 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_B_ADD", value: 91)
!111 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_HAND", value: 92)
!112 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_HAND_ADD", value: 93)
!113 = !DIEnumerator(name: "STRING_ENCODING_JIS_C6229_1984_KANA", value: 94)
!114 = !DIEnumerator(name: "STRING_ENCODING_ISO_2033_1983", value: 95)
!115 = !DIEnumerator(name: "STRING_ENCODING_ANSI_X3_110_1983", value: 96)
!116 = !DIEnumerator(name: "STRING_ENCODING_T_61_7BIT", value: 97)
!117 = !DIEnumerator(name: "STRING_ENCODING_T_61_8BIT", value: 98)
!118 = !DIEnumerator(name: "STRING_ENCODING_ECMA_CYRILLIC", value: 99)
!119 = !DIEnumerator(name: "STRING_ENCODING_CSA_Z243_4_1985_1", value: 100)
!120 = !DIEnumerator(name: "STRING_ENCODING_CSA_Z243_4_1985_2", value: 101)
!121 = !DIEnumerator(name: "STRING_ENCODING_CSA_Z243_4_1985_GR", value: 102)
!122 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_6_E", value: 103)
!123 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_6_I", value: 104)
!124 = !DIEnumerator(name: "STRING_ENCODING_T_101_G2", value: 105)
!125 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_8_E", value: 106)
!126 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_8_I", value: 107)
!127 = !DIEnumerator(name: "STRING_ENCODING_CSN_369103", value: 108)
!128 = !DIEnumerator(name: "STRING_ENCODING_JUS_I_B1_002", value: 109)
!129 = !DIEnumerator(name: "STRING_ENCODING_IEC_P27_1", value: 110)
!130 = !DIEnumerator(name: "STRING_ENCODING_JUS_I_B1_003_SERB", value: 111)
!131 = !DIEnumerator(name: "STRING_ENCODING_JUS_I_B1_003_MAC", value: 112)
!132 = !DIEnumerator(name: "STRING_ENCODING_GREEK_CCITT", value: 113)
!133 = !DIEnumerator(name: "STRING_ENCODING_NC_NC00_10_81", value: 114)
!134 = !DIEnumerator(name: "STRING_ENCODING_ISO_6937_2_25", value: 115)
!135 = !DIEnumerator(name: "STRING_ENCODING_GOST_19768_74", value: 116)
!136 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_SUPP", value: 117)
!137 = !DIEnumerator(name: "STRING_ENCODING_ISO_10367_BOX", value: 118)
!138 = !DIEnumerator(name: "STRING_ENCODING_LATIN_LAP", value: 119)
!139 = !DIEnumerator(name: "STRING_ENCODING_JIS_X0212_1990", value: 120)
!140 = !DIEnumerator(name: "STRING_ENCODING_DS_2089", value: 121)
!141 = !DIEnumerator(name: "STRING_ENCODING_US_DK", value: 122)
!142 = !DIEnumerator(name: "STRING_ENCODING_DK_US", value: 123)
!143 = !DIEnumerator(name: "STRING_ENCODING_KSC5636", value: 124)
!144 = !DIEnumerator(name: "STRING_ENCODING_UNICODE_1_1_UTF_7", value: 125)
!145 = !DIEnumerator(name: "STRING_ENCODING_ISO_2022_CN_EXT", value: 126)
!146 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_16", value: 127)
!147 = !DIEnumerator(name: "STRING_ENCODING_OSD_EBCDIC_DF04_15", value: 128)
!148 = !DIEnumerator(name: "STRING_ENCODING_OSD_EBCDIC_DF03_IRV", value: 129)
!149 = !DIEnumerator(name: "STRING_ENCODING_OSD_EBCDIC_DF04_1", value: 130)
!150 = !DIEnumerator(name: "STRING_ENCODING_ISO_11548_1", value: 131)
!151 = !DIEnumerator(name: "STRING_ENCODING_KZ_1048", value: 132)
!152 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_UCS_2", value: 133)
!153 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_UCS_4", value: 134)
!154 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_UCS_BASIC", value: 135)
!155 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_UNICODE_LATIN1", value: 136)
!156 = !DIEnumerator(name: "STRING_ENCODING_ISO_10646_J_1", value: 137)
!157 = !DIEnumerator(name: "STRING_ENCODING_ISO_UNICODE_IBM_1261", value: 138)
!158 = !DIEnumerator(name: "STRING_ENCODING_ISO_UNICODE_IBM_1268", value: 139)
!159 = !DIEnumerator(name: "STRING_ENCODING_ISO_UNICODE_IBM_1276", value: 140)
!160 = !DIEnumerator(name: "STRING_ENCODING_ISO_UNICODE_IBM_1264", value: 141)
!161 = !DIEnumerator(name: "STRING_ENCODING_ISO_UNICODE_IBM_1265", value: 142)
!162 = !DIEnumerator(name: "STRING_ENCODING_UNICODE_1_1", value: 143)
!163 = !DIEnumerator(name: "STRING_ENCODING_SCSU", value: 144)
!164 = !DIEnumerator(name: "STRING_ENCODING_UTF_7", value: 145)
!165 = !DIEnumerator(name: "STRING_ENCODING_CESU_8", value: 146)
!166 = !DIEnumerator(name: "STRING_ENCODING_BOCU_1", value: 147)
!167 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_1_WINDOWS_3_0_LATIN_1", value: 148)
!168 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_1_WINDOWS_3_1_LATIN_1", value: 149)
!169 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_2_WINDOWS_LATIN_2", value: 150)
!170 = !DIEnumerator(name: "STRING_ENCODING_ISO_8859_9_WINDOWS_LATIN_5", value: 151)
!171 = !DIEnumerator(name: "STRING_ENCODING_HP_ROMAN8", value: 152)
!172 = !DIEnumerator(name: "STRING_ENCODING_ADOBE_STANDARD_ENCODING", value: 153)
!173 = !DIEnumerator(name: "STRING_ENCODING_VENTURA_US", value: 154)
!174 = !DIEnumerator(name: "STRING_ENCODING_VENTURA_INTERNATIONAL", value: 155)
!175 = !DIEnumerator(name: "STRING_ENCODING_DEC_MCS", value: 156)
!176 = !DIEnumerator(name: "STRING_ENCODING_IBM_850", value: 157)
!177 = !DIEnumerator(name: "STRING_ENCODING_PC8_DANISH_NORWEGIAN", value: 158)
!178 = !DIEnumerator(name: "STRING_ENCODING_IBM_862", value: 159)
!179 = !DIEnumerator(name: "STRING_ENCODING_PC8_TURKISH", value: 160)
!180 = !DIEnumerator(name: "STRING_ENCODING_IBM_SYMBOLS", value: 161)
!181 = !DIEnumerator(name: "STRING_ENCODING_IBM_THAI", value: 162)
!182 = !DIEnumerator(name: "STRING_ENCODING_HP_LEGAL", value: 163)
!183 = !DIEnumerator(name: "STRING_ENCODING_HP_PI_FONT", value: 164)
!184 = !DIEnumerator(name: "STRING_ENCODING_HP_MATH8", value: 165)
!185 = !DIEnumerator(name: "STRING_ENCODING_ADOBE_SYMBOL_ENCODING", value: 166)
!186 = !DIEnumerator(name: "STRING_ENCODING_HP_DESKTOP", value: 167)
!187 = !DIEnumerator(name: "STRING_ENCODING_VENTURA_MATH", value: 168)
!188 = !DIEnumerator(name: "STRING_ENCODING_MICROSOFT_PUBLISHING", value: 169)
!189 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_31J", value: 170)
!190 = !DIEnumerator(name: "STRING_ENCODING_MACINTOSH", value: 171)
!191 = !DIEnumerator(name: "STRING_ENCODING_IBM_037", value: 172)
!192 = !DIEnumerator(name: "STRING_ENCODING_IBM_038", value: 173)
!193 = !DIEnumerator(name: "STRING_ENCODING_IBM_273", value: 174)
!194 = !DIEnumerator(name: "STRING_ENCODING_IBM_274", value: 175)
!195 = !DIEnumerator(name: "STRING_ENCODING_IBM_275", value: 176)
!196 = !DIEnumerator(name: "STRING_ENCODING_IBM_277", value: 177)
!197 = !DIEnumerator(name: "STRING_ENCODING_IBM_278", value: 178)
!198 = !DIEnumerator(name: "STRING_ENCODING_IBM_280", value: 179)
!199 = !DIEnumerator(name: "STRING_ENCODING_IBM_281", value: 180)
!200 = !DIEnumerator(name: "STRING_ENCODING_IBM_284", value: 181)
!201 = !DIEnumerator(name: "STRING_ENCODING_IBM_285", value: 182)
!202 = !DIEnumerator(name: "STRING_ENCODING_IBM_290", value: 183)
!203 = !DIEnumerator(name: "STRING_ENCODING_IBM_297", value: 184)
!204 = !DIEnumerator(name: "STRING_ENCODING_IBM_420", value: 185)
!205 = !DIEnumerator(name: "STRING_ENCODING_IBM_423", value: 186)
!206 = !DIEnumerator(name: "STRING_ENCODING_IBM_424", value: 187)
!207 = !DIEnumerator(name: "STRING_ENCODING_IBM_437", value: 188)
!208 = !DIEnumerator(name: "STRING_ENCODING_IBM_500", value: 189)
!209 = !DIEnumerator(name: "STRING_ENCODING_IBM_851", value: 190)
!210 = !DIEnumerator(name: "STRING_ENCODING_IBM_852", value: 191)
!211 = !DIEnumerator(name: "STRING_ENCODING_IBM_855", value: 192)
!212 = !DIEnumerator(name: "STRING_ENCODING_IBM_857", value: 193)
!213 = !DIEnumerator(name: "STRING_ENCODING_IBM_860", value: 194)
!214 = !DIEnumerator(name: "STRING_ENCODING_IBM_861", value: 195)
!215 = !DIEnumerator(name: "STRING_ENCODING_IBM_863", value: 196)
!216 = !DIEnumerator(name: "STRING_ENCODING_IBM_864", value: 197)
!217 = !DIEnumerator(name: "STRING_ENCODING_IBM_865", value: 198)
!218 = !DIEnumerator(name: "STRING_ENCODING_IBM_868", value: 199)
!219 = !DIEnumerator(name: "STRING_ENCODING_IBM_869", value: 200)
!220 = !DIEnumerator(name: "STRING_ENCODING_IBM_870", value: 201)
!221 = !DIEnumerator(name: "STRING_ENCODING_IBM_871", value: 202)
!222 = !DIEnumerator(name: "STRING_ENCODING_IBM_880", value: 203)
!223 = !DIEnumerator(name: "STRING_ENCODING_IBM_891", value: 204)
!224 = !DIEnumerator(name: "STRING_ENCODING_IBM_903", value: 205)
!225 = !DIEnumerator(name: "STRING_ENCODING_IBM_904", value: 206)
!226 = !DIEnumerator(name: "STRING_ENCODING_IBM_905", value: 207)
!227 = !DIEnumerator(name: "STRING_ENCODING_IBM_918", value: 208)
!228 = !DIEnumerator(name: "STRING_ENCODING_IBM_1026", value: 209)
!229 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_AT_DE", value: 210)
!230 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_AT_DE_A", value: 211)
!231 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_CA_FR", value: 212)
!232 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_DK_NO", value: 213)
!233 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_DK_NO_A", value: 214)
!234 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_FI_SE", value: 215)
!235 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_FI_SE_A", value: 216)
!236 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_FR", value: 217)
!237 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_IT", value: 218)
!238 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_PT", value: 219)
!239 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_ES", value: 220)
!240 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_ES_A", value: 221)
!241 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_ES_S", value: 222)
!242 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_UK", value: 223)
!243 = !DIEnumerator(name: "STRING_ENCODING_EBCDIC_US", value: 224)
!244 = !DIEnumerator(name: "STRING_ENCODING_UNKNOWN_8BIT", value: 225)
!245 = !DIEnumerator(name: "STRING_ENCODING_MNEMONIC", value: 226)
!246 = !DIEnumerator(name: "STRING_ENCODING_MNEM", value: 227)
!247 = !DIEnumerator(name: "STRING_ENCODING_VISCII", value: 228)
!248 = !DIEnumerator(name: "STRING_ENCODING_VIQR", value: 229)
!249 = !DIEnumerator(name: "STRING_ENCODING_KOI8_R", value: 230)
!250 = !DIEnumerator(name: "STRING_ENCODING_HZ_GB_2312", value: 231)
!251 = !DIEnumerator(name: "STRING_ENCODING_IBM_866", value: 232)
!252 = !DIEnumerator(name: "STRING_ENCODING_IBM_775", value: 233)
!253 = !DIEnumerator(name: "STRING_ENCODING_KOI8_U", value: 234)
!254 = !DIEnumerator(name: "STRING_ENCODING_IBM_00858", value: 235)
!255 = !DIEnumerator(name: "STRING_ENCODING_IBM_00924", value: 236)
!256 = !DIEnumerator(name: "STRING_ENCODING_IBM_01140", value: 237)
!257 = !DIEnumerator(name: "STRING_ENCODING_IBM_01141", value: 238)
!258 = !DIEnumerator(name: "STRING_ENCODING_IBM_01142", value: 239)
!259 = !DIEnumerator(name: "STRING_ENCODING_IBM_01143", value: 240)
!260 = !DIEnumerator(name: "STRING_ENCODING_IBM_01144", value: 241)
!261 = !DIEnumerator(name: "STRING_ENCODING_IBM_01145", value: 242)
!262 = !DIEnumerator(name: "STRING_ENCODING_IBM_01146", value: 243)
!263 = !DIEnumerator(name: "STRING_ENCODING_IBM_01147", value: 244)
!264 = !DIEnumerator(name: "STRING_ENCODING_IBM_01148", value: 245)
!265 = !DIEnumerator(name: "STRING_ENCODING_IBM_01149", value: 246)
!266 = !DIEnumerator(name: "STRING_ENCODING_IBM_1047", value: 247)
!267 = !DIEnumerator(name: "STRING_ENCODING_PTCP154", value: 248)
!268 = !DIEnumerator(name: "STRING_ENCODING_AMIGA_1251", value: 249)
!269 = !DIEnumerator(name: "STRING_ENCODING_KOI7_SWITCHED", value: 250)
!270 = !DIEnumerator(name: "STRING_ENCODING_BRF", value: 251)
!271 = !DIEnumerator(name: "STRING_ENCODING_TSCII", value: 252)
!272 = !DIEnumerator(name: "STRING_ENCODING_TIS_620", value: 253)
!273 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_709", value: 254)
!274 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_710", value: 255)
!275 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_720", value: 256)
!276 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_737", value: 257)
!277 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_875", value: 258)
!278 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_1361", value: 259)
!279 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10000", value: 260)
!280 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10001", value: 261)
!281 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10002", value: 262)
!282 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10003", value: 263)
!283 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10004", value: 264)
!284 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10005", value: 265)
!285 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10006", value: 266)
!286 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10007", value: 267)
!287 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10008", value: 268)
!288 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10010", value: 269)
!289 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10017", value: 270)
!290 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10021", value: 271)
!291 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10029", value: 272)
!292 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10079", value: 273)
!293 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10081", value: 274)
!294 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_10082", value: 275)
!295 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20000", value: 276)
!296 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20001", value: 277)
!297 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20002", value: 278)
!298 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20003", value: 279)
!299 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20004", value: 280)
!300 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20005", value: 281)
!301 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20105", value: 282)
!302 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20106", value: 283)
!303 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20107", value: 284)
!304 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20108", value: 285)
!305 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20269", value: 286)
!306 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20833", value: 287)
!307 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_20949", value: 288)
!308 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_21025", value: 289)
!309 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_21027", value: 290)
!310 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_29001", value: 291)
!311 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_38598", value: 292)
!312 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50221", value: 293)
!313 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50222", value: 294)
!314 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50229", value: 295)
!315 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50930", value: 296)
!316 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50931", value: 297)
!317 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50933", value: 298)
!318 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50935", value: 299)
!319 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50936", value: 300)
!320 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50937", value: 301)
!321 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_50939", value: 302)
!322 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_51936", value: 303)
!323 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_51950", value: 304)
!324 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57002", value: 305)
!325 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57003", value: 306)
!326 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57004", value: 307)
!327 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57005", value: 308)
!328 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57006", value: 309)
!329 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57007", value: 310)
!330 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57008", value: 311)
!331 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57009", value: 312)
!332 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57010", value: 313)
!333 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_57011", value: 314)
!334 = !DIEnumerator(name: "STRING_ENCODING_IBM_813", value: 315)
!335 = !DIEnumerator(name: "STRING_ENCODING_IBM_943_P130_1999", value: 316)
!336 = !DIEnumerator(name: "STRING_ENCODING_IBM_33722", value: 317)
!337 = !DIEnumerator(name: "STRING_ENCODING_WINDOWS_949", value: 318)
!338 = !DIEnumerator(name: "STRING_ENCODING_IBM_1363", value: 319)
!339 = !DIEnumerator(name: "STRING_ENCODING_IBM_1386", value: 320)
!340 = !DIEnumerator(name: "STRING_ENCODING_IBM_1373", value: 321)
!341 = !DIEnumerator(name: "STRING_ENCODING_IBM_5471", value: 322)
!342 = !DIEnumerator(name: "STRING_ENCODING_IBM_874", value: 323)
!343 = !DIEnumerator(name: "STRING_ENCODING_MAX_SPECIFIED", value: 324)
!344 = !DIEnumerator(name: "STRING_ENCODING_DEFAULT", value: -1)
!345 = !DIEnumerator(name: "STRING_ENCODING_UNKNOWN", value: -2)
!346 = !DIEnumerator(name: "STRING_ENCODING_UTF16", value: 1)
!347 = !DIEnumerator(name: "STRING_ENCODING_UTF32", value: 4)
!348 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !349, line: 95, size: 32, align: 32, elements: !350)
!349 = !DIFile(filename: "/usr/include/glib-2.0/glib/gthread.h", directory: "/home/lichi/Desktop/open-vm-tools/line1127")
!350 = !{!351, !352, !353}
!351 = !DIEnumerator(name: "G_ONCE_STATUS_NOTCALLED", value: 0)
!352 = !DIEnumerator(name: "G_ONCE_STATUS_PROGRESS", value: 1)
!353 = !DIEnumerator(name: "G_ONCE_STATUS_READY", value: 2)
!354 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !355, line: 69, size: 32, align: 32, elements: !356)
!355 = !DIFile(filename: "/usr/include/glib-2.0/glib/giochannel.h", directory: "/home/lichi/Desktop/open-vm-tools/line1127")
!356 = !{!357, !358, !359, !360}
!357 = !DIEnumerator(name: "G_IO_STATUS_ERROR", value: 0)
!358 = !DIEnumerator(name: "G_IO_STATUS_NORMAL", value: 1)
!359 = !DIEnumerator(name: "G_IO_STATUS_EOF", value: 2)
!360 = !DIEnumerator(name: "G_IO_STATUS_AGAIN", value: 3)
!361 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !355, line: 77, size: 32, align: 32, elements: !362)
!362 = !{!363, !364, !365}
!363 = !DIEnumerator(name: "G_SEEK_CUR", value: 0)
!364 = !DIEnumerator(name: "G_SEEK_SET", value: 1)
!365 = !DIEnumerator(name: "G_SEEK_END", value: 2)
!366 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !367, line: 31, size: 32, align: 32, elements: !368)
!367 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/open-vm-tools/line1127")
!368 = !{!369, !370, !371, !372, !373, !374}
!369 = !DIEnumerator(name: "G_IO_IN", value: 1)
!370 = !DIEnumerator(name: "G_IO_OUT", value: 4)
!371 = !DIEnumerator(name: "G_IO_PRI", value: 2)
!372 = !DIEnumerator(name: "G_IO_ERR", value: 8)
!373 = !DIEnumerator(name: "G_IO_HUP", value: 16)
!374 = !DIEnumerator(name: "G_IO_NVAL", value: 32)
!375 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !355, line: 84, size: 32, align: 32, elements: !376)
!376 = !{!377, !378, !379, !380, !381, !382, !383, !384, !385}
!377 = !DIEnumerator(name: "G_IO_FLAG_APPEND", value: 1)
!378 = !DIEnumerator(name: "G_IO_FLAG_NONBLOCK", value: 2)
!379 = !DIEnumerator(name: "G_IO_FLAG_IS_READABLE", value: 4)
!380 = !DIEnumerator(name: "G_IO_FLAG_IS_WRITABLE", value: 8)
!381 = !DIEnumerator(name: "G_IO_FLAG_IS_WRITEABLE", value: 8)
!382 = !DIEnumerator(name: "G_IO_FLAG_IS_SEEKABLE", value: 16)
!383 = !DIEnumerator(name: "G_IO_FLAG_MASK", value: 31)
!384 = !DIEnumerator(name: "G_IO_FLAG_GET_MASK", value: 31)
!385 = !DIEnumerator(name: "G_IO_FLAG_SET_MASK", value: 3)
!386 = !{!387, !388, !392, !450, !455, !459}
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64, align: 64)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !390, line: 46, baseType: !391)
!390 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1127")
!391 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64, align: 64)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "MsgState", file: !394, line: 58, baseType: !395)
!394 = !DIFile(filename: "i18n.c", directory: "/home/lichi/Desktop/open-vm-tools/line1127")
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MsgState", file: !394, line: 55, size: 448, align: 64, elements: !396)
!396 = !{!397, !402}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "domains", scope: !395, file: !394, line: 56, baseType: !398, size: 64, align: 64)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64, align: 64)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "HashTable", file: !400, line: 40, baseType: !401)
!400 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/hashTable.h", directory: "/home/lichi/Desktop/open-vm-tools/line1127")
!401 = !DICompositeType(tag: DW_TAG_structure_type, name: "HashTable", file: !400, line: 40, flags: DIFlagFwdDecl)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !395, file: !394, line: 57, baseType: !403, size: 384, align: 64, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "GStaticMutex", file: !404, line: 140, baseType: !405)
!404 = !DIFile(filename: "/usr/include/glib-2.0/glib/deprecated/gthread.h", directory: "/home/lichi/Desktop/open-vm-tools/line1127")
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !404, line: 133, size: 384, align: 64, elements: !406)
!406 = !{!407, !420}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !405, file: !404, line: 135, baseType: !408, size: 64, align: 64)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64, align: 64)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMutex", file: !349, line: 51, baseType: !410)
!410 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_GMutex", file: !349, line: 58, size: 64, align: 64, elements: !411)
!411 = !{!412, !414}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !410, file: !349, line: 61, baseType: !413, size: 64, align: 64)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !390, line: 77, baseType: !387)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !410, file: !349, line: 62, baseType: !415, size: 64, align: 32)
!415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, size: 64, align: 32, elements: !418)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !390, line: 55, baseType: !417)
!417 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!418 = !{!419}
!419 = !DISubrange(count: 2)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !405, file: !404, line: 138, baseType: !421, size: 320, align: 64, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !422, line: 128, baseType: !423)
!422 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1127")
!423 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !422, line: 90, size: 320, align: 64, elements: !424)
!424 = !{!425, !444, !448}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !423, file: !422, line: 125, baseType: !426, size: 320, align: 64)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !422, line: 92, size: 320, align: 64, elements: !427)
!427 = !{!428, !430, !431, !432, !433, !434, !436, !437}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !426, file: !422, line: 94, baseType: !429, size: 32, align: 32)
!429 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !426, file: !422, line: 95, baseType: !417, size: 32, align: 32, offset: 32)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !426, file: !422, line: 96, baseType: !429, size: 32, align: 32, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !426, file: !422, line: 98, baseType: !417, size: 32, align: 32, offset: 96)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !426, file: !422, line: 102, baseType: !429, size: 32, align: 32, offset: 128)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !426, file: !422, line: 104, baseType: !435, size: 16, align: 16, offset: 160)
!435 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !426, file: !422, line: 105, baseType: !435, size: 16, align: 16, offset: 176)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !426, file: !422, line: 106, baseType: !438, size: 128, align: 64, offset: 192)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !422, line: 79, baseType: !439)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !422, line: 75, size: 128, align: 64, elements: !440)
!440 = !{!441, !443}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !439, file: !422, line: 77, baseType: !442, size: 64, align: 64)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64, align: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !439, file: !422, line: 78, baseType: !442, size: 64, align: 64, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !423, file: !422, line: 126, baseType: !445, size: 320, align: 8)
!445 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, size: 320, align: 8, elements: !446)
!446 = !{!447}
!447 = !DISubrange(count: 40)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !423, file: !422, line: 127, baseType: !449, size: 64, align: 64)
!449 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64, align: 64)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "MsgCatalog", file: !394, line: 52, baseType: !452)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MsgCatalog", file: !394, line: 47, size: 64, align: 64, elements: !453)
!453 = !{!454}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "utf8", scope: !452, file: !394, line: 48, baseType: !398, size: 64, align: 64)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "HashTableFreeEntryFn", file: !400, line: 43, baseType: !456)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64, align: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{null, !387}
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64, align: 64)
!460 = !{!461, !462}
!461 = distinct !DIGlobalVariable(name: "gMsgState", scope: !0, file: !394, line: 61, type: !392, isLocal: true, isDefinition: true, variable: %struct.MsgState** @gMsgState)
!462 = distinct !DIGlobalVariable(name: "msgStateInit", scope: !463, file: !394, line: 155, type: !467, isLocal: true, isDefinition: true, variable: %struct._GOnce* @MsgGetState.msgStateInit)
!463 = distinct !DISubprogram(name: "MsgGetState", scope: !394, file: !394, line: 153, type: !464, isLocal: true, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !466)
!464 = !DISubroutineType(types: !465)
!465 = !{!392}
!466 = !{}
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "GOnce", file: !349, line: 56, baseType: !468)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GOnce", file: !349, line: 103, size: 128, align: 64, elements: !469)
!469 = !{!470, !473}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !468, file: !349, line: 105, baseType: !471, size: 32, align: 32)
!471 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !472)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "GOnceStatus", file: !349, line: 100, baseType: !348)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "retval", scope: !468, file: !349, line: 106, baseType: !474, size: 64, align: 64, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !413)
!475 = !{i32 2, !"Dwarf Version", i32 4}
!476 = !{i32 2, !"Debug Info Version", i32 3}
!477 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!478 = distinct !DISubprogram(name: "VMToolsMsgCleanup", scope: !394, file: !394, line: 679, type: !479, isLocal: false, isDefinition: true, scopeLine: 680, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !466)
!479 = !DISubroutineType(types: !480)
!480 = !{null}
!481 = !DILocation(line: 681, column: 8, scope: !482)
!482 = distinct !DILexicalBlock(scope: !478, file: !394, line: 681, column: 8)
!483 = !DILocation(line: 681, column: 18, scope: !482)
!484 = !DILocation(line: 681, column: 8, scope: !478)
!485 = !DILocation(line: 682, column: 11, scope: !486)
!486 = distinct !DILexicalBlock(scope: !487, file: !394, line: 682, column: 11)
!487 = distinct !DILexicalBlock(scope: !482, file: !394, line: 681, column: 26)
!488 = !DILocation(line: 682, column: 22, scope: !486)
!489 = !DILocation(line: 682, column: 30, scope: !486)
!490 = !DILocation(line: 682, column: 11, scope: !487)
!491 = !DILocation(line: 683, column: 25, scope: !492)
!492 = distinct !DILexicalBlock(scope: !486, file: !394, line: 682, column: 38)
!493 = !DILocation(line: 683, column: 36, scope: !492)
!494 = !DILocation(line: 683, column: 10, scope: !492)
!495 = !DILocation(line: 684, column: 7, scope: !492)
!496 = !DILocation(line: 685, column: 28, scope: !487)
!497 = !DILocation(line: 685, column: 39, scope: !487)
!498 = !DILocation(line: 685, column: 7, scope: !487)
!499 = !DILocation(line: 686, column: 14, scope: !487)
!500 = !DILocation(line: 686, column: 7, scope: !487)
!501 = !DILocation(line: 687, column: 4, scope: !487)
!502 = !DILocation(line: 688, column: 1, scope: !478)
!503 = distinct !DISubprogram(name: "VMTools_BindTextDomain", scope: !394, file: !394, line: 709, type: !504, isLocal: false, isDefinition: true, scopeLine: 712, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !466)
!504 = !DISubroutineType(types: !505)
!505 = !{null, !506, !506, !506}
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64, align: 64)
!507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !391)
!508 = !DILocalVariable(name: "domain", arg: 1, scope: !503, file: !394, line: 709, type: !506)
!509 = !DIExpression()
!510 = !DILocation(line: 709, column: 36, scope: !503)
!511 = !DILocalVariable(name: "lang", arg: 2, scope: !503, file: !394, line: 710, type: !506)
!512 = !DILocation(line: 710, column: 36, scope: !503)
!513 = !DILocalVariable(name: "catdir", arg: 3, scope: !503, file: !394, line: 711, type: !506)
!514 = !DILocation(line: 711, column: 36, scope: !503)
!515 = !DILocalVariable(name: "dfltdir", scope: !503, file: !394, line: 713, type: !516)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64, align: 64)
!517 = !DILocation(line: 713, column: 10, scope: !503)
!518 = !DILocalVariable(name: "file", scope: !503, file: !394, line: 714, type: !388)
!519 = !DILocation(line: 714, column: 11, scope: !503)
!520 = !DILocalVariable(name: "usrlang", scope: !503, file: !394, line: 715, type: !388)
!521 = !DILocation(line: 715, column: 11, scope: !503)
!522 = !DILocalVariable(name: "state", scope: !503, file: !394, line: 716, type: !392)
!523 = !DILocation(line: 716, column: 14, scope: !503)
!524 = !DILocation(line: 716, column: 22, scope: !503)
!525 = !DILocalVariable(name: "catalog", scope: !503, file: !394, line: 717, type: !450)
!526 = !DILocation(line: 717, column: 16, scope: !503)
!527 = !DILocation(line: 726, column: 8, scope: !528)
!528 = distinct !DILexicalBlock(scope: !503, file: !394, line: 726, column: 8)
!529 = !DILocation(line: 726, column: 13, scope: !528)
!530 = !DILocation(line: 726, column: 20, scope: !528)
!531 = !DILocation(line: 726, column: 24, scope: !532)
!532 = !DILexicalBlockFile(scope: !528, file: !394, discriminator: 1)
!533 = !DILocation(line: 726, column: 23, scope: !532)
!534 = !DILocation(line: 726, column: 29, scope: !532)
!535 = !DILocation(line: 726, column: 8, scope: !532)
!536 = !DILocation(line: 727, column: 17, scope: !537)
!537 = distinct !DILexicalBlock(scope: !528, file: !394, line: 726, column: 38)
!538 = !DILocation(line: 727, column: 15, scope: !537)
!539 = !DILocation(line: 728, column: 14, scope: !537)
!540 = !DILocation(line: 728, column: 12, scope: !537)
!541 = !DILocation(line: 729, column: 4, scope: !537)
!542 = !DILocation(line: 731, column: 82, scope: !503)
!543 = !DILocation(line: 731, column: 4, scope: !503)
!544 = !DILocation(line: 737, column: 8, scope: !545)
!545 = distinct !DILexicalBlock(scope: !503, file: !394, line: 737, column: 8)
!546 = !DILocation(line: 737, column: 15, scope: !545)
!547 = !DILocation(line: 737, column: 8, scope: !503)
!548 = !DILocation(line: 739, column: 17, scope: !549)
!549 = distinct !DILexicalBlock(scope: !545, file: !394, line: 737, column: 23)
!550 = !DILocation(line: 739, column: 15, scope: !549)
!551 = !DILocation(line: 743, column: 17, scope: !549)
!552 = !DILocation(line: 743, column: 16, scope: !549)
!553 = !DILocation(line: 743, column: 28, scope: !554)
!554 = !DILexicalBlockFile(scope: !549, file: !394, discriminator: 1)
!555 = !DILocation(line: 743, column: 16, scope: !554)
!556 = !DILocation(line: 743, column: 16, scope: !557)
!557 = !DILexicalBlockFile(scope: !549, file: !394, discriminator: 2)
!558 = !DILocation(line: 743, column: 16, scope: !559)
!559 = !DILexicalBlockFile(scope: !549, file: !394, discriminator: 3)
!560 = !DILocation(line: 743, column: 14, scope: !559)
!561 = !DILocation(line: 744, column: 4, scope: !549)
!562 = !DILocation(line: 747, column: 27, scope: !503)
!563 = !DILocation(line: 747, column: 45, scope: !503)
!564 = !DILocation(line: 747, column: 56, scope: !503)
!565 = !DILocation(line: 746, column: 11, scope: !503)
!566 = !DILocation(line: 746, column: 9, scope: !503)
!567 = !DILocation(line: 749, column: 21, scope: !568)
!568 = distinct !DILexicalBlock(scope: !503, file: !394, line: 749, column: 8)
!569 = !DILocation(line: 749, column: 9, scope: !568)
!570 = !DILocation(line: 749, column: 8, scope: !503)
!571 = !DILocalVariable(name: "sep", scope: !572, file: !394, line: 754, type: !516)
!572 = distinct !DILexicalBlock(scope: !568, file: !394, line: 749, column: 28)
!573 = !DILocation(line: 754, column: 13, scope: !572)
!574 = !DILocation(line: 754, column: 27, scope: !572)
!575 = !DILocation(line: 754, column: 19, scope: !572)
!576 = !DILocation(line: 755, column: 11, scope: !577)
!577 = distinct !DILexicalBlock(scope: !572, file: !394, line: 755, column: 11)
!578 = !DILocation(line: 755, column: 15, scope: !577)
!579 = !DILocation(line: 755, column: 11, scope: !572)
!580 = !DILocation(line: 756, column: 14, scope: !581)
!581 = distinct !DILexicalBlock(scope: !582, file: !394, line: 756, column: 14)
!582 = distinct !DILexicalBlock(scope: !577, file: !394, line: 755, column: 23)
!583 = !DILocation(line: 756, column: 22, scope: !581)
!584 = !DILocation(line: 756, column: 14, scope: !582)
!585 = !DILocation(line: 757, column: 40, scope: !586)
!586 = distinct !DILexicalBlock(scope: !581, file: !394, line: 756, column: 30)
!587 = !DILocation(line: 757, column: 23, scope: !586)
!588 = !DILocation(line: 757, column: 21, scope: !586)
!589 = !DILocation(line: 758, column: 10, scope: !586)
!590 = !DILocation(line: 759, column: 18, scope: !582)
!591 = !DILocation(line: 759, column: 24, scope: !582)
!592 = !DILocation(line: 759, column: 22, scope: !582)
!593 = !DILocation(line: 759, column: 10, scope: !582)
!594 = !DILocation(line: 759, column: 30, scope: !582)
!595 = !DILocation(line: 760, column: 17, scope: !582)
!596 = !DILocation(line: 760, column: 10, scope: !582)
!597 = !DILocation(line: 762, column: 33, scope: !582)
!598 = !DILocation(line: 762, column: 51, scope: !582)
!599 = !DILocation(line: 762, column: 65, scope: !582)
!600 = !DILocation(line: 761, column: 17, scope: !582)
!601 = !DILocation(line: 761, column: 15, scope: !582)
!602 = !DILocation(line: 763, column: 7, scope: !582)
!603 = !DILocation(line: 764, column: 4, scope: !572)
!604 = !DILocation(line: 766, column: 29, scope: !503)
!605 = !DILocation(line: 766, column: 14, scope: !503)
!606 = !DILocation(line: 766, column: 12, scope: !503)
!607 = !DILocation(line: 768, column: 8, scope: !608)
!608 = distinct !DILexicalBlock(scope: !503, file: !394, line: 768, column: 8)
!609 = !DILocation(line: 768, column: 16, scope: !608)
!610 = !DILocation(line: 768, column: 8, scope: !503)
!611 = !DILocation(line: 769, column: 19, scope: !612)
!612 = distinct !DILexicalBlock(scope: !613, file: !394, line: 769, column: 11)
!613 = distinct !DILexicalBlock(scope: !608, file: !394, line: 768, column: 24)
!614 = !DILocation(line: 769, column: 11, scope: !612)
!615 = !DILocation(line: 769, column: 11, scope: !613)
!616 = !DILocation(line: 774, column: 138, scope: !617)
!617 = distinct !DILexicalBlock(scope: !612, file: !394, line: 769, column: 35)
!618 = !DILocation(line: 774, column: 146, scope: !617)
!619 = !DILocation(line: 774, column: 152, scope: !617)
!620 = !DILocation(line: 774, column: 10, scope: !617)
!621 = !DILocation(line: 776, column: 7, scope: !617)
!622 = !DILocation(line: 777, column: 4, scope: !613)
!623 = !DILocation(line: 778, column: 53, scope: !624)
!624 = distinct !DILexicalBlock(scope: !608, file: !394, line: 777, column: 11)
!625 = !DILocation(line: 778, column: 60, scope: !624)
!626 = !DILocation(line: 778, column: 21, scope: !624)
!627 = !DILocation(line: 778, column: 7, scope: !628)
!628 = !DILexicalBlockFile(scope: !624, file: !394, discriminator: 1)
!629 = !DILocation(line: 779, column: 21, scope: !624)
!630 = !DILocation(line: 779, column: 29, scope: !624)
!631 = !DILocation(line: 779, column: 7, scope: !624)
!632 = !DILocation(line: 780, column: 55, scope: !624)
!633 = !DILocation(line: 780, column: 62, scope: !624)
!634 = !DILocation(line: 780, column: 23, scope: !624)
!635 = !DILocation(line: 780, column: 7, scope: !628)
!636 = !DILocation(line: 782, column: 11, scope: !503)
!637 = !DILocation(line: 782, column: 4, scope: !503)
!638 = !DILocation(line: 783, column: 9, scope: !503)
!639 = !DILocation(line: 783, column: 4, scope: !503)
!640 = !DILocation(line: 784, column: 11, scope: !503)
!641 = !DILocation(line: 784, column: 4, scope: !503)
!642 = !DILocation(line: 785, column: 1, scope: !503)
!643 = !DILocation(line: 156, column: 23, scope: !463)
!644 = !DILocation(line: 156, column: 30, scope: !463)
!645 = !DILocation(line: 156, column: 5, scope: !463)
!646 = !DILocation(line: 156, column: 73, scope: !647)
!647 = !DILexicalBlockFile(scope: !463, file: !394, discriminator: 1)
!648 = !DILocation(line: 156, column: 5, scope: !647)
!649 = !DILocation(line: 156, column: 82, scope: !650)
!650 = !DILexicalBlockFile(scope: !463, file: !394, discriminator: 2)
!651 = !DILocation(line: 156, column: 5, scope: !650)
!652 = !DILocation(line: 156, column: 5, scope: !653)
!653 = !DILexicalBlockFile(scope: !463, file: !394, discriminator: 3)
!654 = !DILocation(line: 157, column: 11, scope: !463)
!655 = !DILocation(line: 157, column: 4, scope: !463)
!656 = distinct !DISubprogram(name: "MsgGetUserLanguage", scope: !394, file: !394, line: 209, type: !657, isLocal: true, isDefinition: true, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !466)
!657 = !DISubroutineType(types: !658)
!658 = !{!388}
!659 = !DILocalVariable(name: "lang", scope: !656, file: !394, line: 211, type: !388)
!660 = !DILocation(line: 211, column: 11, scope: !656)
!661 = !DILocalVariable(name: "tmp", scope: !656, file: !394, line: 235, type: !516)
!662 = !DILocation(line: 235, column: 10, scope: !656)
!663 = !DILocation(line: 235, column: 16, scope: !656)
!664 = !DILocation(line: 236, column: 8, scope: !665)
!665 = distinct !DILexicalBlock(scope: !656, file: !394, line: 236, column: 8)
!666 = !DILocation(line: 236, column: 12, scope: !665)
!667 = !DILocation(line: 236, column: 8, scope: !656)
!668 = !DILocation(line: 237, column: 14, scope: !669)
!669 = distinct !DILexicalBlock(scope: !665, file: !394, line: 236, column: 20)
!670 = !DILocation(line: 237, column: 12, scope: !669)
!671 = !DILocation(line: 238, column: 4, scope: !669)
!672 = !DILocalVariable(name: "dot", scope: !673, file: !394, line: 239, type: !516)
!673 = distinct !DILexicalBlock(scope: !665, file: !394, line: 238, column: 11)
!674 = !DILocation(line: 239, column: 13, scope: !673)
!675 = !DILocation(line: 241, column: 23, scope: !673)
!676 = !DILocation(line: 241, column: 14, scope: !673)
!677 = !DILocation(line: 241, column: 12, scope: !673)
!678 = !DILocation(line: 242, column: 20, scope: !673)
!679 = !DILocation(line: 242, column: 13, scope: !673)
!680 = !DILocation(line: 242, column: 11, scope: !673)
!681 = !DILocation(line: 243, column: 11, scope: !682)
!682 = distinct !DILexicalBlock(scope: !673, file: !394, line: 243, column: 11)
!683 = !DILocation(line: 243, column: 15, scope: !682)
!684 = !DILocation(line: 243, column: 11, scope: !673)
!685 = !DILocation(line: 244, column: 11, scope: !686)
!686 = distinct !DILexicalBlock(scope: !682, file: !394, line: 243, column: 23)
!687 = !DILocation(line: 244, column: 15, scope: !686)
!688 = !DILocation(line: 245, column: 7, scope: !686)
!689 = !DILocation(line: 249, column: 11, scope: !656)
!690 = !DILocation(line: 249, column: 4, scope: !656)
!691 = distinct !DISubprogram(name: "MsgLoadCatalog", scope: !394, file: !394, line: 514, type: !692, isLocal: true, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !466)
!692 = !DISubroutineType(types: !693)
!693 = !{!450, !506}
!694 = !DILocalVariable(name: "path", arg: 1, scope: !691, file: !394, line: 514, type: !506)
!695 = !DILocation(line: 514, column: 28, scope: !691)
!696 = !DILocalVariable(name: "localPath", scope: !691, file: !394, line: 516, type: !388)
!697 = !DILocation(line: 516, column: 11, scope: !691)
!698 = !DILocalVariable(name: "err", scope: !691, file: !394, line: 517, type: !699)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64, align: 64)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !701, line: 42, baseType: !702)
!701 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/open-vm-tools/line1127")
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !701, line: 44, size: 128, align: 64, elements: !703)
!703 = !{!704, !709, !711}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !702, file: !701, line: 46, baseType: !705, size: 32, align: 32)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !706, line: 36, baseType: !707)
!706 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/open-vm-tools/line1127")
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !708, line: 45, baseType: !417)
!708 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/open-vm-tools/line1127")
!709 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !702, file: !701, line: 47, baseType: !710, size: 32, align: 32, offset: 32)
!710 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !390, line: 49, baseType: !429)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !702, file: !701, line: 48, baseType: !388, size: 64, align: 64, offset: 64)
!712 = !DILocation(line: 517, column: 12, scope: !691)
!713 = !DILocalVariable(name: "stream", scope: !691, file: !394, line: 518, type: !714)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64, align: 64)
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !355, line: 41, baseType: !716)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !355, line: 97, size: 896, align: 64, elements: !717)
!717 = !{!718, !719, !843, !844, !849, !850, !851, !852, !853, !862, !863, !864, !868, !869, !870, !871, !872, !873, !874, !875}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !716, file: !355, line: 100, baseType: !710, size: 32, align: 32)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !716, file: !355, line: 101, baseType: !720, size: 64, align: 64, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64, align: 64)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !355, line: 42, baseType: !722)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !355, line: 131, size: 512, align: 64, elements: !723)
!723 = !{!724, !733, !739, !745, !749, !830, !834, !839}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !722, file: !355, line: 133, baseType: !725, size: 64, align: 64)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64, align: 64)
!726 = !DISubroutineType(types: !727)
!727 = !{!728, !714, !388, !729, !731, !732}
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !355, line: 75, baseType: !354)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !708, line: 66, baseType: !730)
!730 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64, align: 64)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64, align: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !722, file: !355, line: 138, baseType: !734, size: 64, align: 64, offset: 64)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64, align: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{!728, !714, !737, !729, !731, !732}
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64, align: 64)
!738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !389)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !722, file: !355, line: 143, baseType: !740, size: 64, align: 64, offset: 128)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64, align: 64)
!741 = !DISubroutineType(types: !742)
!742 = !{!728, !714, !743, !744, !732}
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !708, line: 51, baseType: !449)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !355, line: 82, baseType: !361)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !722, file: !355, line: 147, baseType: !746, size: 64, align: 64, offset: 192)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64, align: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{!728, !714, !732}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !722, file: !355, line: 149, baseType: !750, size: 64, align: 64, offset: 256)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64, align: 64)
!751 = !DISubroutineType(types: !752)
!752 = !{!753, !714, !829}
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64, align: 64)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !367, line: 64, baseType: !755)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !367, line: 171, size: 768, align: 64, elements: !756)
!756 = !{!757, !758, !779, !806, !807, !811, !812, !813, !814, !822, !823, !824, !825}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !755, file: !367, line: 174, baseType: !413, size: 64, align: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !755, file: !367, line: 175, baseType: !759, size: 64, align: 64, offset: 64)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64, align: 64)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !367, line: 77, baseType: !761)
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !367, line: 196, size: 192, align: 64, elements: !762)
!762 = !{!763, !767, !768}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !761, file: !367, line: 198, baseType: !764, size: 64, align: 64)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64, align: 64)
!765 = !DISubroutineType(types: !766)
!766 = !{null, !413}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !761, file: !367, line: 199, baseType: !764, size: 64, align: 64, offset: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !761, file: !367, line: 200, baseType: !769, size: 64, align: 64, offset: 128)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64, align: 64)
!770 = !DISubroutineType(types: !771)
!771 = !{null, !413, !753, !772, !778}
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64, align: 64)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !367, line: 155, baseType: !774)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64, align: 64)
!775 = !DISubroutineType(types: !776)
!776 = !{!777, !413}
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !390, line: 50, baseType: !710)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64, align: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !755, file: !367, line: 177, baseType: !780, size: 64, align: 64, offset: 128)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64, align: 64)
!781 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !782)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !367, line: 130, baseType: !783)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !367, line: 214, size: 384, align: 64, elements: !784)
!784 = !{!785, !790, !794, !798, !802, !803}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !783, file: !367, line: 216, baseType: !786, size: 64, align: 64)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64, align: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{!777, !753, !789}
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64, align: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !783, file: !367, line: 218, baseType: !791, size: 64, align: 64, offset: 64)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64, align: 64)
!792 = !DISubroutineType(types: !793)
!793 = !{!777, !753}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !783, file: !367, line: 219, baseType: !795, size: 64, align: 64, offset: 128)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64, align: 64)
!796 = !DISubroutineType(types: !797)
!797 = !{!777, !753, !773, !413}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !783, file: !367, line: 222, baseType: !799, size: 64, align: 64, offset: 192)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64, align: 64)
!800 = !DISubroutineType(types: !801)
!801 = !{null, !753}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !783, file: !367, line: 226, baseType: !773, size: 64, align: 64, offset: 256)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !783, file: !367, line: 227, baseType: !804, size: 64, align: 64, offset: 320)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !367, line: 212, baseType: !805)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64, align: 64)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !755, file: !367, line: 178, baseType: !416, size: 32, align: 32, offset: 192)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !755, file: !367, line: 180, baseType: !808, size: 64, align: 64, offset: 256)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64, align: 64)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !367, line: 48, baseType: !810)
!810 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !367, line: 48, flags: DIFlagFwdDecl)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !755, file: !367, line: 182, baseType: !710, size: 32, align: 32, offset: 320)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !755, file: !367, line: 183, baseType: !416, size: 32, align: 32, offset: 352)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !755, file: !367, line: 184, baseType: !416, size: 32, align: 32, offset: 384)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !755, file: !367, line: 186, baseType: !815, size: 64, align: 64, offset: 448)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64, align: 64)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !817, line: 37, baseType: !818)
!817 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/open-vm-tools/line1127")
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !817, line: 39, size: 128, align: 64, elements: !819)
!819 = !{!820, !821}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !818, file: !817, line: 41, baseType: !413, size: 64, align: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !818, file: !817, line: 42, baseType: !815, size: 64, align: 64, offset: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !755, file: !367, line: 188, baseType: !753, size: 64, align: 64, offset: 512)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !755, file: !367, line: 189, baseType: !753, size: 64, align: 64, offset: 576)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !755, file: !367, line: 191, baseType: !516, size: 64, align: 64, offset: 640)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !755, file: !367, line: 193, baseType: !826, size: 64, align: 64, offset: 704)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64, align: 64)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !367, line: 65, baseType: !828)
!828 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !367, line: 65, flags: DIFlagFwdDecl)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !367, line: 39, baseType: !366)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !722, file: !355, line: 151, baseType: !831, size: 64, align: 64, offset: 320)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64, align: 64)
!832 = !DISubroutineType(types: !833)
!833 = !{null, !714}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !722, file: !355, line: 152, baseType: !835, size: 64, align: 64, offset: 384)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64, align: 64)
!836 = !DISubroutineType(types: !837)
!837 = !{!728, !714, !838, !732}
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !355, line: 95, baseType: !375)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !722, file: !355, line: 155, baseType: !840, size: 64, align: 64, offset: 448)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64, align: 64)
!841 = !DISubroutineType(types: !842)
!842 = !{!838, !714}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !716, file: !355, line: 103, baseType: !388, size: 64, align: 64, offset: 128)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !716, file: !355, line: 104, baseType: !845, size: 64, align: 64, offset: 192)
!845 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !846, line: 77, baseType: !847)
!846 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/open-vm-tools/line1127")
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64, align: 64)
!848 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !846, line: 77, flags: DIFlagFwdDecl)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !716, file: !355, line: 105, baseType: !845, size: 64, align: 64, offset: 256)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !716, file: !355, line: 106, baseType: !388, size: 64, align: 64, offset: 320)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !716, file: !355, line: 107, baseType: !416, size: 32, align: 32, offset: 384)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !716, file: !355, line: 109, baseType: !729, size: 64, align: 64, offset: 448)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !716, file: !355, line: 110, baseType: !854, size: 64, align: 64, offset: 512)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64, align: 64)
!855 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !856, line: 39, baseType: !857)
!856 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/open-vm-tools/line1127")
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !856, line: 41, size: 192, align: 64, elements: !858)
!858 = !{!859, !860, !861}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !857, file: !856, line: 43, baseType: !388, size: 64, align: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !857, file: !856, line: 44, baseType: !729, size: 64, align: 64, offset: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !857, file: !856, line: 45, baseType: !729, size: 64, align: 64, offset: 128)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !716, file: !355, line: 111, baseType: !854, size: 64, align: 64, offset: 576)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !716, file: !355, line: 112, baseType: !854, size: 64, align: 64, offset: 640)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !716, file: !355, line: 113, baseType: !865, size: 48, align: 8, offset: 704)
!865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !389, size: 48, align: 8, elements: !866)
!866 = !{!867}
!867 = !DISubrange(count: 6)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !716, file: !355, line: 117, baseType: !416, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !716, file: !355, line: 118, baseType: !416, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !716, file: !355, line: 119, baseType: !416, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !716, file: !355, line: 120, baseType: !416, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !716, file: !355, line: 121, baseType: !416, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !716, file: !355, line: 122, baseType: !416, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !716, file: !355, line: 124, baseType: !413, size: 64, align: 64, offset: 768)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !716, file: !355, line: 125, baseType: !413, size: 64, align: 64, offset: 832)
!876 = !DILocation(line: 518, column: 16, scope: !691)
!877 = !DILocalVariable(name: "error", scope: !691, file: !394, line: 519, type: !777)
!878 = !DILocation(line: 519, column: 13, scope: !691)
!879 = !DILocalVariable(name: "catalog", scope: !691, file: !394, line: 520, type: !450)
!880 = !DILocation(line: 520, column: 16, scope: !691)
!881 = !DILocalVariable(name: "dict", scope: !691, file: !394, line: 521, type: !398)
!882 = !DILocation(line: 521, column: 15, scope: !691)
!883 = !DILocation(line: 524, column: 38, scope: !691)
!884 = !DILocation(line: 524, column: 16, scope: !691)
!885 = !DILocation(line: 524, column: 14, scope: !691)
!886 = !DILocation(line: 527, column: 35, scope: !691)
!887 = !DILocation(line: 527, column: 13, scope: !691)
!888 = !DILocation(line: 527, column: 11, scope: !691)
!889 = !DILocation(line: 528, column: 11, scope: !691)
!890 = !DILocation(line: 528, column: 4, scope: !691)
!891 = !DILocation(line: 530, column: 8, scope: !892)
!892 = distinct !DILexicalBlock(scope: !691, file: !394, line: 530, column: 8)
!893 = !DILocation(line: 530, column: 12, scope: !892)
!894 = !DILocation(line: 530, column: 8, scope: !691)
!895 = !DILocation(line: 531, column: 76, scope: !896)
!896 = distinct !DILexicalBlock(scope: !892, file: !394, line: 530, column: 20)
!897 = !DILocation(line: 531, column: 82, scope: !896)
!898 = !DILocation(line: 531, column: 87, scope: !896)
!899 = !DILocation(line: 531, column: 7, scope: !896)
!900 = !DILocation(line: 532, column: 7, scope: !896)
!901 = !DILocation(line: 533, column: 7, scope: !896)
!902 = !DILocation(line: 536, column: 11, scope: !691)
!903 = !DILocation(line: 536, column: 9, scope: !691)
!904 = !DILocation(line: 537, column: 30, scope: !905)
!905 = distinct !DILexicalBlock(scope: !906, file: !394, line: 537, column: 10)
!906 = distinct !DILexicalBlock(scope: !691, file: !394, line: 537, column: 5)
!907 = !DILocation(line: 537, column: 28, scope: !905)
!908 = !DILocation(line: 537, column: 27, scope: !905)
!909 = !DILocation(line: 537, column: 10, scope: !905)
!910 = !DILocation(line: 537, column: 10, scope: !906)
!911 = !DILocation(line: 537, column: 44, scope: !912)
!912 = !DILexicalBlockFile(scope: !913, file: !394, discriminator: 1)
!913 = distinct !DILexicalBlock(scope: !905, file: !394, line: 537, column: 42)
!914 = !DILocation(line: 539, column: 4, scope: !691)
!915 = !DILocalVariable(name: "eof", scope: !916, file: !394, line: 540, type: !777)
!916 = distinct !DILexicalBlock(scope: !917, file: !394, line: 539, column: 13)
!917 = distinct !DILexicalBlock(scope: !918, file: !394, line: 539, column: 4)
!918 = distinct !DILexicalBlock(scope: !691, file: !394, line: 539, column: 4)
!919 = !DILocation(line: 540, column: 16, scope: !916)
!920 = !DILocalVariable(name: "name", scope: !916, file: !394, line: 541, type: !516)
!921 = !DILocation(line: 541, column: 13, scope: !916)
!922 = !DILocalVariable(name: "value", scope: !916, file: !394, line: 542, type: !516)
!923 = !DILocation(line: 542, column: 13, scope: !916)
!924 = !DILocalVariable(name: "line", scope: !916, file: !394, line: 543, type: !388)
!925 = !DILocation(line: 543, column: 14, scope: !916)
!926 = !DILocation(line: 546, column: 7, scope: !916)
!927 = !DILocalVariable(name: "i", scope: !928, file: !394, line: 547, type: !729)
!928 = distinct !DILexicalBlock(scope: !929, file: !394, line: 546, column: 16)
!929 = distinct !DILexicalBlock(scope: !930, file: !394, line: 546, column: 7)
!930 = distinct !DILexicalBlock(scope: !916, file: !394, line: 546, column: 7)
!931 = !DILocation(line: 547, column: 16, scope: !928)
!932 = !DILocalVariable(name: "len", scope: !928, file: !394, line: 548, type: !729)
!933 = !DILocation(line: 548, column: 16, scope: !928)
!934 = !DILocalVariable(name: "term", scope: !928, file: !394, line: 549, type: !729)
!935 = !DILocation(line: 549, column: 16, scope: !928)
!936 = !DILocalVariable(name: "unused", scope: !928, file: !394, line: 550, type: !516)
!937 = !DILocation(line: 550, column: 16, scope: !928)
!938 = !DILocalVariable(name: "cont", scope: !928, file: !394, line: 551, type: !777)
!939 = !DILocation(line: 551, column: 19, scope: !928)
!940 = !DILocation(line: 553, column: 33, scope: !928)
!941 = !DILocation(line: 553, column: 10, scope: !928)
!942 = !DILocation(line: 555, column: 14, scope: !943)
!943 = distinct !DILexicalBlock(scope: !928, file: !394, line: 555, column: 14)
!944 = !DILocation(line: 555, column: 18, scope: !943)
!945 = !DILocation(line: 555, column: 14, scope: !928)
!946 = !DILocation(line: 556, column: 96, scope: !947)
!947 = distinct !DILexicalBlock(scope: !943, file: !394, line: 555, column: 26)
!948 = !DILocation(line: 556, column: 102, scope: !947)
!949 = !DILocation(line: 556, column: 107, scope: !947)
!950 = !DILocation(line: 556, column: 13, scope: !947)
!951 = !DILocation(line: 558, column: 13, scope: !947)
!952 = !DILocation(line: 559, column: 19, scope: !947)
!953 = !DILocation(line: 560, column: 20, scope: !947)
!954 = !DILocation(line: 560, column: 13, scope: !947)
!955 = !DILocation(line: 561, column: 13, scope: !947)
!956 = !DILocation(line: 564, column: 14, scope: !957)
!957 = distinct !DILexicalBlock(scope: !928, file: !394, line: 564, column: 14)
!958 = !DILocation(line: 564, column: 19, scope: !957)
!959 = !DILocation(line: 564, column: 14, scope: !928)
!960 = !DILocation(line: 565, column: 17, scope: !961)
!961 = distinct !DILexicalBlock(scope: !957, file: !394, line: 564, column: 27)
!962 = !DILocation(line: 566, column: 13, scope: !961)
!963 = !DILocation(line: 573, column: 19, scope: !964)
!964 = distinct !DILexicalBlock(scope: !928, file: !394, line: 573, column: 14)
!965 = !DILocation(line: 573, column: 14, scope: !964)
!966 = !DILocation(line: 573, column: 25, scope: !964)
!967 = !DILocation(line: 573, column: 14, scope: !928)
!968 = !DILocation(line: 574, column: 18, scope: !969)
!969 = distinct !DILexicalBlock(scope: !964, file: !394, line: 573, column: 34)
!970 = !DILocation(line: 574, column: 13, scope: !969)
!971 = !DILocation(line: 574, column: 24, scope: !969)
!972 = !DILocation(line: 575, column: 17, scope: !973)
!973 = distinct !DILexicalBlock(scope: !969, file: !394, line: 575, column: 17)
!974 = !DILocation(line: 575, column: 23, scope: !973)
!975 = !DILocation(line: 575, column: 21, scope: !973)
!976 = !DILocation(line: 575, column: 17, scope: !969)
!977 = !DILocation(line: 576, column: 21, scope: !978)
!978 = distinct !DILexicalBlock(scope: !973, file: !394, line: 575, column: 29)
!979 = !DILocation(line: 576, column: 26, scope: !978)
!980 = !DILocation(line: 576, column: 16, scope: !978)
!981 = !DILocation(line: 576, column: 31, scope: !978)
!982 = !DILocation(line: 577, column: 13, scope: !978)
!983 = !DILocation(line: 578, column: 10, scope: !969)
!984 = !DILocation(line: 584, column: 14, scope: !985)
!985 = distinct !DILexicalBlock(scope: !928, file: !394, line: 584, column: 14)
!986 = !DILocation(line: 584, column: 19, scope: !985)
!987 = !DILocation(line: 584, column: 23, scope: !985)
!988 = !DILocation(line: 584, column: 26, scope: !989)
!989 = !DILexicalBlockFile(scope: !985, file: !394, discriminator: 1)
!990 = !DILocation(line: 584, column: 31, scope: !989)
!991 = !DILocation(line: 584, column: 38, scope: !989)
!992 = !DILocation(line: 584, column: 46, scope: !993)
!993 = !DILexicalBlockFile(scope: !985, file: !394, discriminator: 2)
!994 = !DILocation(line: 584, column: 51, scope: !993)
!995 = !DILocation(line: 584, column: 41, scope: !993)
!996 = !DILocation(line: 584, column: 56, scope: !993)
!997 = !DILocation(line: 584, column: 14, scope: !993)
!998 = !DILocation(line: 585, column: 20, scope: !999)
!999 = distinct !DILexicalBlock(scope: !1000, file: !394, line: 585, column: 13)
!1000 = distinct !DILexicalBlock(scope: !985, file: !394, line: 584, column: 64)
!1001 = !DILocation(line: 585, column: 18, scope: !999)
!1002 = !DILocation(line: 585, column: 25, scope: !1003)
!1003 = !DILexicalBlockFile(scope: !1004, file: !394, discriminator: 1)
!1004 = distinct !DILexicalBlock(scope: !999, file: !394, line: 585, column: 13)
!1005 = !DILocation(line: 585, column: 29, scope: !1003)
!1006 = !DILocation(line: 585, column: 27, scope: !1003)
!1007 = !DILocation(line: 585, column: 13, scope: !1003)
!1008 = !DILocation(line: 586, column: 25, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1010, file: !394, line: 586, column: 20)
!1010 = distinct !DILexicalBlock(scope: !1004, file: !394, line: 585, column: 39)
!1011 = !DILocation(line: 586, column: 20, scope: !1009)
!1012 = !DILocation(line: 586, column: 28, scope: !1009)
!1013 = !DILocation(line: 586, column: 20, scope: !1010)
!1014 = !DILocalVariable(name: "tmp", scope: !1015, file: !394, line: 588, type: !516)
!1015 = distinct !DILexicalBlock(scope: !1009, file: !394, line: 586, column: 36)
!1016 = !DILocation(line: 588, column: 25, scope: !1015)
!1017 = !DILocalVariable(name: "unescaped", scope: !1015, file: !394, line: 589, type: !516)
!1018 = !DILocation(line: 589, column: 25, scope: !1015)
!1019 = !DILocation(line: 591, column: 24, scope: !1015)
!1020 = !DILocation(line: 591, column: 29, scope: !1015)
!1021 = !DILocation(line: 591, column: 19, scope: !1015)
!1022 = !DILocation(line: 591, column: 34, scope: !1015)
!1023 = !DILocation(line: 592, column: 48, scope: !1015)
!1024 = !DILocation(line: 592, column: 55, scope: !1015)
!1025 = !DILocation(line: 592, column: 53, scope: !1015)
!1026 = !DILocation(line: 592, column: 57, scope: !1015)
!1027 = !DILocation(line: 592, column: 62, scope: !1015)
!1028 = !DILocation(line: 592, column: 68, scope: !1015)
!1029 = !DILocation(line: 592, column: 66, scope: !1015)
!1030 = !DILocation(line: 592, column: 31, scope: !1015)
!1031 = !DILocation(line: 592, column: 29, scope: !1015)
!1032 = !DILocation(line: 593, column: 51, scope: !1015)
!1033 = !DILocation(line: 593, column: 58, scope: !1015)
!1034 = !DILocation(line: 593, column: 25, scope: !1015)
!1035 = !DILocation(line: 593, column: 23, scope: !1015)
!1036 = !DILocation(line: 594, column: 24, scope: !1015)
!1037 = !DILocation(line: 594, column: 19, scope: !1015)
!1038 = !DILocation(line: 595, column: 24, scope: !1015)
!1039 = !DILocation(line: 595, column: 19, scope: !1015)
!1040 = !DILocation(line: 596, column: 27, scope: !1015)
!1041 = !DILocation(line: 596, column: 25, scope: !1015)
!1042 = !DILocation(line: 597, column: 24, scope: !1015)
!1043 = !DILocation(line: 598, column: 19, scope: !1015)
!1044 = !DILocation(line: 599, column: 32, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1009, file: !394, line: 599, column: 27)
!1046 = !DILocation(line: 599, column: 27, scope: !1045)
!1047 = !DILocation(line: 599, column: 35, scope: !1045)
!1048 = !DILocation(line: 599, column: 42, scope: !1045)
!1049 = !DILocation(line: 599, column: 50, scope: !1050)
!1050 = !DILexicalBlockFile(scope: !1045, file: !394, discriminator: 1)
!1051 = !DILocation(line: 599, column: 45, scope: !1050)
!1052 = !DILocation(line: 599, column: 53, scope: !1050)
!1053 = !DILocation(line: 599, column: 27, scope: !1050)
!1054 = !DILocation(line: 600, column: 19, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1045, file: !394, line: 599, column: 62)
!1056 = !DILocation(line: 602, column: 13, scope: !1010)
!1057 = !DILocation(line: 585, column: 35, scope: !1058)
!1058 = !DILexicalBlockFile(scope: !1004, file: !394, discriminator: 2)
!1059 = !DILocation(line: 585, column: 13, scope: !1058)
!1060 = distinct !{!1060, !1061}
!1061 = !DILocation(line: 585, column: 13, scope: !1000)
!1062 = !DILocation(line: 603, column: 10, scope: !1000)
!1063 = !DILocation(line: 609, column: 15, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !928, file: !394, line: 609, column: 14)
!1065 = !DILocation(line: 609, column: 20, scope: !1064)
!1066 = !DILocation(line: 609, column: 23, scope: !1067)
!1067 = !DILexicalBlockFile(scope: !1064, file: !394, discriminator: 1)
!1068 = !DILocation(line: 609, column: 28, scope: !1067)
!1069 = !DILocation(line: 609, column: 14, scope: !1067)
!1070 = !DILocation(line: 610, column: 20, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1064, file: !394, line: 609, column: 36)
!1072 = !DILocation(line: 610, column: 13, scope: !1071)
!1073 = !DILocation(line: 611, column: 13, scope: !1071)
!1074 = !DILocation(line: 617, column: 15, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !928, file: !394, line: 617, column: 14)
!1076 = !DILocation(line: 617, column: 20, scope: !1075)
!1077 = !DILocation(line: 617, column: 44, scope: !1078)
!1078 = !DILexicalBlockFile(scope: !1075, file: !394, discriminator: 1)
!1079 = !DILocation(line: 617, column: 50, scope: !1078)
!1080 = !DILocation(line: 617, column: 23, scope: !1078)
!1081 = !DILocation(line: 617, column: 79, scope: !1078)
!1082 = !DILocation(line: 617, column: 14, scope: !1078)
!1083 = !DILocation(line: 618, column: 95, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1075, file: !394, line: 617, column: 87)
!1085 = !DILocation(line: 618, column: 13, scope: !1084)
!1086 = !DILocation(line: 619, column: 19, scope: !1084)
!1087 = !DILocation(line: 620, column: 10, scope: !1084)
!1088 = !DILocation(line: 622, column: 17, scope: !928)
!1089 = !DILocation(line: 622, column: 10, scope: !928)
!1090 = !DILocation(line: 623, column: 15, scope: !928)
!1091 = !DILocation(line: 623, column: 10, scope: !928)
!1092 = !DILocation(line: 546, column: 7, scope: !1093)
!1093 = !DILexicalBlockFile(scope: !929, file: !394, discriminator: 1)
!1094 = distinct !{!1094, !926}
!1095 = !DILocation(line: 626, column: 11, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !916, file: !394, line: 626, column: 11)
!1097 = !DILocation(line: 626, column: 11, scope: !916)
!1098 = !DILocation(line: 627, column: 10, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1096, file: !394, line: 626, column: 18)
!1100 = !DILocation(line: 630, column: 11, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !916, file: !394, line: 630, column: 11)
!1102 = !DILocation(line: 630, column: 16, scope: !1101)
!1103 = !DILocation(line: 630, column: 11, scope: !916)
!1104 = !DILocation(line: 633, column: 37, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1106, file: !394, line: 633, column: 14)
!1106 = distinct !DILexicalBlock(scope: !1101, file: !394, line: 630, column: 24)
!1107 = !DILocation(line: 633, column: 50, scope: !1105)
!1108 = !DILocation(line: 633, column: 43, scope: !1105)
!1109 = !DILocation(line: 633, column: 56, scope: !1105)
!1110 = !DILocation(line: 633, column: 15, scope: !1111)
!1111 = !DILexicalBlockFile(scope: !1105, file: !394, discriminator: 2)
!1112 = !DILocation(line: 633, column: 15, scope: !1105)
!1113 = !DILocation(line: 633, column: 83, scope: !1105)
!1114 = !DILocation(line: 634, column: 37, scope: !1105)
!1115 = !DILocation(line: 634, column: 51, scope: !1105)
!1116 = !DILocation(line: 634, column: 44, scope: !1105)
!1117 = !DILocation(line: 634, column: 58, scope: !1105)
!1118 = !DILocation(line: 634, column: 15, scope: !1119)
!1119 = !DILexicalBlockFile(scope: !1105, file: !394, discriminator: 1)
!1120 = !DILocation(line: 634, column: 15, scope: !1105)
!1121 = !DILocation(line: 633, column: 14, scope: !1122)
!1122 = !DILexicalBlockFile(scope: !1106, file: !394, discriminator: 1)
!1123 = !DILocation(line: 635, column: 111, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1105, file: !394, line: 634, column: 86)
!1125 = !DILocation(line: 635, column: 13, scope: !1124)
!1126 = !DILocation(line: 636, column: 19, scope: !1124)
!1127 = !DILocation(line: 637, column: 13, scope: !1124)
!1128 = !DILocation(line: 640, column: 22, scope: !1106)
!1129 = !DILocation(line: 640, column: 10, scope: !1106)
!1130 = !DILocation(line: 641, column: 36, scope: !1106)
!1131 = !DILocation(line: 641, column: 42, scope: !1106)
!1132 = !DILocation(line: 641, column: 57, scope: !1106)
!1133 = !DILocation(line: 641, column: 48, scope: !1106)
!1134 = !DILocation(line: 641, column: 10, scope: !1122)
!1135 = !DILocation(line: 642, column: 15, scope: !1106)
!1136 = !DILocation(line: 642, column: 10, scope: !1106)
!1137 = !DILocation(line: 643, column: 15, scope: !1106)
!1138 = !DILocation(line: 643, column: 10, scope: !1106)
!1139 = !DILocation(line: 644, column: 15, scope: !1106)
!1140 = !DILocation(line: 645, column: 16, scope: !1106)
!1141 = !DILocation(line: 646, column: 7, scope: !1106)
!1142 = !DILocation(line: 648, column: 11, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !916, file: !394, line: 648, column: 11)
!1144 = !DILocation(line: 648, column: 11, scope: !916)
!1145 = !DILocation(line: 649, column: 10, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1143, file: !394, line: 648, column: 16)
!1147 = !DILocation(line: 539, column: 4, scope: !1148)
!1148 = !DILexicalBlockFile(scope: !917, file: !394, discriminator: 1)
!1149 = distinct !{!1149, !914}
!1150 = !DILocation(line: 653, column: 23, scope: !691)
!1151 = !DILocation(line: 653, column: 4, scope: !691)
!1152 = !DILocation(line: 655, column: 8, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !691, file: !394, line: 655, column: 8)
!1154 = !DILocation(line: 655, column: 8, scope: !691)
!1155 = !DILocation(line: 656, column: 22, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1153, file: !394, line: 655, column: 15)
!1157 = !DILocation(line: 656, column: 7, scope: !1156)
!1158 = !DILocation(line: 657, column: 12, scope: !1156)
!1159 = !DILocation(line: 658, column: 4, scope: !1156)
!1160 = !DILocation(line: 659, column: 33, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1153, file: !394, line: 658, column: 11)
!1162 = !DILocation(line: 659, column: 18, scope: !1161)
!1163 = !DILocation(line: 659, column: 15, scope: !1161)
!1164 = !DILocation(line: 660, column: 23, scope: !1161)
!1165 = !DILocation(line: 660, column: 7, scope: !1161)
!1166 = !DILocation(line: 660, column: 16, scope: !1161)
!1167 = !DILocation(line: 660, column: 21, scope: !1161)
!1168 = !DILocation(line: 663, column: 11, scope: !691)
!1169 = !DILocation(line: 663, column: 4, scope: !691)
!1170 = !DILocation(line: 664, column: 1, scope: !691)
!1171 = distinct !DISubprogram(name: "MsgSetCatalog", scope: !394, file: !394, line: 268, type: !1172, isLocal: true, isDefinition: true, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !466)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{null, !506, !450}
!1174 = !DILocalVariable(name: "domain", arg: 1, scope: !1171, file: !394, line: 268, type: !506)
!1175 = !DILocation(line: 268, column: 27, scope: !1171)
!1176 = !DILocalVariable(name: "catalog", arg: 2, scope: !1171, file: !394, line: 269, type: !450)
!1177 = !DILocation(line: 269, column: 27, scope: !1171)
!1178 = !DILocalVariable(name: "state", scope: !1171, file: !394, line: 271, type: !392)
!1179 = !DILocation(line: 271, column: 14, scope: !1171)
!1180 = !DILocation(line: 271, column: 22, scope: !1171)
!1181 = !DILocation(line: 275, column: 8, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1171, file: !394, line: 275, column: 8)
!1183 = !DILocation(line: 275, column: 15, scope: !1182)
!1184 = !DILocation(line: 275, column: 23, scope: !1182)
!1185 = !DILocation(line: 275, column: 8, scope: !1171)
!1186 = !DILocation(line: 276, column: 24, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1182, file: !394, line: 275, column: 31)
!1188 = !DILocation(line: 276, column: 7, scope: !1187)
!1189 = !DILocation(line: 276, column: 14, scope: !1187)
!1190 = !DILocation(line: 276, column: 22, scope: !1187)
!1191 = !DILocation(line: 278, column: 33, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !394, line: 278, column: 13)
!1193 = distinct !DILexicalBlock(scope: !1187, file: !394, line: 278, column: 8)
!1194 = !DILocation(line: 278, column: 40, scope: !1192)
!1195 = !DILocation(line: 278, column: 31, scope: !1192)
!1196 = !DILocation(line: 278, column: 30, scope: !1192)
!1197 = !DILocation(line: 278, column: 13, scope: !1192)
!1198 = !DILocation(line: 278, column: 13, scope: !1193)
!1199 = !DILocation(line: 278, column: 57, scope: !1200)
!1200 = !DILexicalBlockFile(scope: !1201, file: !394, discriminator: 1)
!1201 = distinct !DILexicalBlock(scope: !1192, file: !394, line: 278, column: 55)
!1202 = !DILocation(line: 279, column: 4, scope: !1187)
!1203 = !DILocation(line: 281, column: 30, scope: !1171)
!1204 = !DILocation(line: 281, column: 37, scope: !1171)
!1205 = !DILocation(line: 281, column: 46, scope: !1171)
!1206 = !DILocation(line: 281, column: 54, scope: !1171)
!1207 = !DILocation(line: 281, column: 4, scope: !1171)
!1208 = !DILocation(line: 282, column: 1, scope: !1171)
!1209 = distinct !DISubprogram(name: "VMTools_GetString", scope: !394, file: !394, line: 803, type: !1210, isLocal: false, isDefinition: true, scopeLine: 805, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !466)
!1210 = !DISubroutineType(types: !1211)
!1211 = !{!506, !506, !506}
!1212 = !DILocalVariable(name: "domain", arg: 1, scope: !1209, file: !394, line: 803, type: !506)
!1213 = !DILocation(line: 803, column: 31, scope: !1209)
!1214 = !DILocalVariable(name: "msgid", arg: 2, scope: !1209, file: !394, line: 804, type: !506)
!1215 = !DILocation(line: 804, column: 31, scope: !1209)
!1216 = !DILocation(line: 806, column: 24, scope: !1209)
!1217 = !DILocation(line: 806, column: 32, scope: !1209)
!1218 = !DILocation(line: 806, column: 11, scope: !1209)
!1219 = !DILocation(line: 806, column: 4, scope: !1209)
!1220 = distinct !DISubprogram(name: "MsgGetString", scope: !394, file: !394, line: 307, type: !1221, isLocal: true, isDefinition: true, scopeLine: 310, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !466)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!1223, !506, !506, !1225}
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64, align: 64)
!1224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1225 = !DIDerivedType(tag: DW_TAG_typedef, name: "StringEncoding", file: !16, line: 445, baseType: !15)
!1226 = !DILocalVariable(name: "domain", arg: 1, scope: !1220, file: !394, line: 307, type: !506)
!1227 = !DILocation(line: 307, column: 26, scope: !1220)
!1228 = !DILocalVariable(name: "msgid", arg: 2, scope: !1220, file: !394, line: 308, type: !506)
!1229 = !DILocation(line: 308, column: 26, scope: !1220)
!1230 = !DILocalVariable(name: "encoding", arg: 3, scope: !1220, file: !394, line: 309, type: !1225)
!1231 = !DILocation(line: 309, column: 29, scope: !1220)
!1232 = !DILocalVariable(name: "idp", scope: !1220, file: !394, line: 311, type: !506)
!1233 = !DILocation(line: 311, column: 16, scope: !1220)
!1234 = !DILocalVariable(name: "strp", scope: !1220, file: !394, line: 312, type: !506)
!1235 = !DILocation(line: 312, column: 16, scope: !1220)
!1236 = !DILocalVariable(name: "idBuf", scope: !1220, file: !394, line: 313, type: !1237)
!1237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !391, size: 1024, align: 8, elements: !1238)
!1238 = !{!1239}
!1239 = !DISubrange(count: 128)
!1240 = !DILocation(line: 313, column: 9, scope: !1220)
!1241 = !DILocalVariable(name: "len", scope: !1220, file: !394, line: 314, type: !1242)
!1242 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !1243, line: 216, baseType: !730)
!1243 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line1127")
!1244 = !DILocation(line: 314, column: 11, scope: !1220)
!1245 = !DILocalVariable(name: "source", scope: !1220, file: !394, line: 315, type: !398)
!1246 = !DILocation(line: 315, column: 15, scope: !1220)
!1247 = !DILocalVariable(name: "catalog", scope: !1220, file: !394, line: 316, type: !450)
!1248 = !DILocation(line: 316, column: 16, scope: !1220)
!1249 = !DILocalVariable(name: "state", scope: !1220, file: !394, line: 317, type: !392)
!1250 = !DILocation(line: 317, column: 14, scope: !1220)
!1251 = !DILocation(line: 317, column: 22, scope: !1220)
!1252 = !DILocation(line: 335, column: 10, scope: !1220)
!1253 = !DILocation(line: 335, column: 16, scope: !1220)
!1254 = !DILocation(line: 335, column: 20, scope: !1220)
!1255 = !DILocation(line: 335, column: 8, scope: !1220)
!1256 = !DILocation(line: 336, column: 18, scope: !1220)
!1257 = !DILocation(line: 336, column: 11, scope: !1220)
!1258 = !DILocation(line: 336, column: 28, scope: !1220)
!1259 = !DILocation(line: 336, column: 9, scope: !1220)
!1260 = !DILocation(line: 338, column: 10, scope: !1220)
!1261 = !DILocation(line: 338, column: 17, scope: !1220)
!1262 = !DILocation(line: 338, column: 15, scope: !1220)
!1263 = !DILocation(line: 338, column: 21, scope: !1220)
!1264 = !DILocation(line: 338, column: 8, scope: !1220)
!1265 = !DILocation(line: 339, column: 30, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1267, file: !394, line: 339, column: 10)
!1267 = distinct !DILexicalBlock(scope: !1220, file: !394, line: 339, column: 5)
!1268 = !DILocation(line: 339, column: 34, scope: !1266)
!1269 = !DILocation(line: 339, column: 28, scope: !1266)
!1270 = !DILocation(line: 339, column: 27, scope: !1266)
!1271 = !DILocation(line: 339, column: 10, scope: !1266)
!1272 = !DILocation(line: 339, column: 10, scope: !1267)
!1273 = !DILocation(line: 339, column: 54, scope: !1274)
!1274 = !DILexicalBlockFile(scope: !1275, file: !394, discriminator: 1)
!1275 = distinct !DILexicalBlock(scope: !1266, file: !394, line: 339, column: 52)
!1276 = !DILocation(line: 340, column: 4, scope: !1220)
!1277 = !DILocation(line: 340, column: 18, scope: !1220)
!1278 = !DILocation(line: 340, column: 23, scope: !1220)
!1279 = !DILocation(line: 341, column: 10, scope: !1220)
!1280 = !DILocation(line: 341, column: 4, scope: !1220)
!1281 = !DILocation(line: 341, column: 15, scope: !1220)
!1282 = !DILocation(line: 347, column: 50, scope: !1220)
!1283 = !DILocation(line: 347, column: 57, scope: !1220)
!1284 = !DILocation(line: 347, column: 18, scope: !1220)
!1285 = !DILocation(line: 347, column: 4, scope: !1286)
!1286 = !DILexicalBlockFile(scope: !1220, file: !394, discriminator: 1)
!1287 = !DILocation(line: 349, column: 28, scope: !1220)
!1288 = !DILocation(line: 349, column: 14, scope: !1220)
!1289 = !DILocation(line: 349, column: 12, scope: !1220)
!1290 = !DILocation(line: 350, column: 8, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1220, file: !394, line: 350, column: 8)
!1292 = !DILocation(line: 350, column: 16, scope: !1291)
!1293 = !DILocation(line: 350, column: 8, scope: !1220)
!1294 = !DILocation(line: 351, column: 15, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1291, file: !394, line: 350, column: 24)
!1296 = !DILocation(line: 351, column: 7, scope: !1295)
!1297 = !DILocation(line: 353, column: 19, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1295, file: !394, line: 351, column: 25)
!1299 = !DILocation(line: 353, column: 28, scope: !1298)
!1300 = !DILocation(line: 353, column: 17, scope: !1298)
!1301 = !DILocation(line: 354, column: 10, scope: !1298)
!1302 = !DILocation(line: 363, column: 10, scope: !1298)
!1303 = !DILocation(line: 365, column: 4, scope: !1295)
!1304 = !DILocation(line: 392, column: 8, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1220, file: !394, line: 392, column: 8)
!1306 = !DILocation(line: 392, column: 15, scope: !1305)
!1307 = !DILocation(line: 392, column: 8, scope: !1220)
!1308 = !DILocalVariable(name: "retval", scope: !1309, file: !394, line: 393, type: !1223)
!1309 = distinct !DILexicalBlock(scope: !1305, file: !394, line: 392, column: 23)
!1310 = !DILocation(line: 393, column: 19, scope: !1309)
!1311 = !DILocation(line: 395, column: 28, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1309, file: !394, line: 395, column: 11)
!1313 = !DILocation(line: 395, column: 36, scope: !1312)
!1314 = !DILocation(line: 395, column: 11, scope: !1312)
!1315 = !DILocation(line: 395, column: 11, scope: !1309)
!1316 = !DILocation(line: 396, column: 17, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1312, file: !394, line: 395, column: 63)
!1318 = !DILocation(line: 396, column: 15, scope: !1317)
!1319 = !DILocation(line: 415, column: 7, scope: !1317)
!1320 = !DILocation(line: 416, column: 4, scope: !1309)
!1321 = !DILocation(line: 418, column: 52, scope: !1220)
!1322 = !DILocation(line: 418, column: 59, scope: !1220)
!1323 = !DILocation(line: 418, column: 20, scope: !1220)
!1324 = !DILocation(line: 418, column: 4, scope: !1286)
!1325 = !DILocation(line: 420, column: 11, scope: !1220)
!1326 = !DILocation(line: 420, column: 4, scope: !1220)
!1327 = distinct !DISubprogram(name: "MsgInitState", scope: !394, file: !394, line: 132, type: !1328, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !466)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!413, !413}
!1330 = !DILocalVariable(name: "unused", arg: 1, scope: !1327, file: !394, line: 132, type: !413)
!1331 = !DILocation(line: 132, column: 23, scope: !1327)
!1332 = !DILocation(line: 135, column: 30, scope: !1327)
!1333 = !DILocation(line: 135, column: 17, scope: !1327)
!1334 = !DILocation(line: 135, column: 14, scope: !1327)
!1335 = !DILocation(line: 136, column: 25, scope: !1327)
!1336 = !DILocation(line: 136, column: 36, scope: !1327)
!1337 = !DILocation(line: 136, column: 4, scope: !1327)
!1338 = !DILocation(line: 137, column: 4, scope: !1327)
!1339 = distinct !DISubprogram(name: "MsgUnescape", scope: !394, file: !394, line: 438, type: !1340, isLocal: true, isDefinition: true, scopeLine: 439, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !466)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{null, !516}
!1342 = !DILocalVariable(name: "msg", arg: 1, scope: !1339, file: !394, line: 438, type: !516)
!1343 = !DILocation(line: 438, column: 19, scope: !1339)
!1344 = !DILocalVariable(name: "c", scope: !1339, file: !394, line: 440, type: !516)
!1345 = !DILocation(line: 440, column: 10, scope: !1339)
!1346 = !DILocation(line: 440, column: 14, scope: !1339)
!1347 = !DILocalVariable(name: "escaped", scope: !1339, file: !394, line: 441, type: !777)
!1348 = !DILocation(line: 441, column: 13, scope: !1339)
!1349 = !DILocalVariable(name: "len", scope: !1339, file: !394, line: 442, type: !1242)
!1350 = !DILocation(line: 442, column: 11, scope: !1339)
!1351 = !DILocation(line: 442, column: 24, scope: !1339)
!1352 = !DILocation(line: 442, column: 17, scope: !1339)
!1353 = !DILocation(line: 442, column: 29, scope: !1339)
!1354 = !DILocation(line: 444, column: 4, scope: !1339)
!1355 = !DILocation(line: 444, column: 12, scope: !1356)
!1356 = !DILexicalBlockFile(scope: !1357, file: !394, discriminator: 1)
!1357 = distinct !DILexicalBlock(scope: !1358, file: !394, line: 444, column: 4)
!1358 = distinct !DILexicalBlock(scope: !1339, file: !394, line: 444, column: 4)
!1359 = !DILocation(line: 444, column: 11, scope: !1356)
!1360 = !DILocation(line: 444, column: 14, scope: !1356)
!1361 = !DILocation(line: 444, column: 4, scope: !1356)
!1362 = !DILocation(line: 445, column: 11, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !394, line: 445, column: 11)
!1364 = distinct !DILexicalBlock(scope: !1357, file: !394, line: 444, column: 35)
!1365 = !DILocation(line: 445, column: 11, scope: !1364)
!1366 = !DILocalVariable(name: "subst", scope: !1367, file: !394, line: 446, type: !391)
!1367 = distinct !DILexicalBlock(scope: !1363, file: !394, line: 445, column: 20)
!1368 = !DILocation(line: 446, column: 15, scope: !1367)
!1369 = !DILocation(line: 448, column: 19, scope: !1367)
!1370 = !DILocation(line: 448, column: 18, scope: !1367)
!1371 = !DILocation(line: 448, column: 10, scope: !1367)
!1372 = !DILocation(line: 450, column: 19, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1367, file: !394, line: 448, column: 22)
!1374 = !DILocation(line: 451, column: 13, scope: !1373)
!1375 = !DILocation(line: 454, column: 19, scope: !1373)
!1376 = !DILocation(line: 455, column: 13, scope: !1373)
!1377 = !DILocation(line: 458, column: 19, scope: !1373)
!1378 = !DILocation(line: 459, column: 13, scope: !1373)
!1379 = !DILocation(line: 462, column: 19, scope: !1373)
!1380 = !DILocation(line: 463, column: 13, scope: !1373)
!1381 = !DILocation(line: 466, column: 13, scope: !1373)
!1382 = !DILocation(line: 469, column: 14, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1367, file: !394, line: 469, column: 14)
!1384 = !DILocation(line: 469, column: 20, scope: !1383)
!1385 = !DILocation(line: 469, column: 14, scope: !1367)
!1386 = !DILocation(line: 470, column: 24, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1383, file: !394, line: 469, column: 29)
!1388 = !DILocation(line: 470, column: 15, scope: !1387)
!1389 = !DILocation(line: 470, column: 17, scope: !1387)
!1390 = !DILocation(line: 470, column: 22, scope: !1387)
!1391 = !DILocation(line: 471, column: 21, scope: !1387)
!1392 = !DILocation(line: 471, column: 24, scope: !1387)
!1393 = !DILocation(line: 471, column: 26, scope: !1387)
!1394 = !DILocation(line: 471, column: 31, scope: !1387)
!1395 = !DILocation(line: 471, column: 13, scope: !1387)
!1396 = !DILocation(line: 472, column: 14, scope: !1387)
!1397 = !DILocation(line: 473, column: 10, scope: !1387)
!1398 = !DILocation(line: 475, column: 18, scope: !1367)
!1399 = !DILocation(line: 476, column: 7, scope: !1367)
!1400 = !DILocation(line: 476, column: 19, scope: !1401)
!1401 = !DILexicalBlockFile(scope: !1402, file: !394, discriminator: 1)
!1402 = distinct !DILexicalBlock(scope: !1363, file: !394, line: 476, column: 18)
!1403 = !DILocation(line: 476, column: 18, scope: !1401)
!1404 = !DILocation(line: 476, column: 21, scope: !1401)
!1405 = !DILocation(line: 477, column: 18, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1402, file: !394, line: 476, column: 30)
!1407 = !DILocation(line: 478, column: 7, scope: !1406)
!1408 = !DILocation(line: 479, column: 4, scope: !1364)
!1409 = !DILocation(line: 444, column: 24, scope: !1410)
!1410 = !DILexicalBlockFile(scope: !1357, file: !394, discriminator: 2)
!1411 = !DILocation(line: 444, column: 31, scope: !1410)
!1412 = !DILocation(line: 444, column: 4, scope: !1410)
!1413 = distinct !{!1413, !1354}
!1414 = !DILocation(line: 480, column: 1, scope: !1339)
!1415 = distinct !DISubprogram(name: "MsgCatalogFree", scope: !394, file: !394, line: 76, type: !1416, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !466)
!1416 = !DISubroutineType(types: !1417)
!1417 = !{null, !450}
!1418 = !DILocalVariable(name: "catalog", arg: 1, scope: !1415, file: !394, line: 76, type: !450)
!1419 = !DILocation(line: 76, column: 28, scope: !1415)
!1420 = !DILocation(line: 84, column: 8, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1415, file: !394, line: 84, column: 8)
!1422 = !DILocation(line: 84, column: 17, scope: !1421)
!1423 = !DILocation(line: 84, column: 22, scope: !1421)
!1424 = !DILocation(line: 84, column: 8, scope: !1415)
!1425 = !DILocation(line: 85, column: 22, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1421, file: !394, line: 84, column: 30)
!1427 = !DILocation(line: 85, column: 31, scope: !1426)
!1428 = !DILocation(line: 85, column: 7, scope: !1426)
!1429 = !DILocation(line: 86, column: 4, scope: !1426)
!1430 = !DILocation(line: 87, column: 11, scope: !1415)
!1431 = !DILocation(line: 87, column: 4, scope: !1415)
!1432 = !DILocation(line: 88, column: 1, scope: !1415)
!1433 = distinct !DISubprogram(name: "MsgGetCatalog", scope: !394, file: !394, line: 177, type: !692, isLocal: true, isDefinition: true, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !466)
!1434 = !DILocalVariable(name: "domain", arg: 1, scope: !1433, file: !394, line: 177, type: !506)
!1435 = !DILocation(line: 177, column: 27, scope: !1433)
!1436 = !DILocalVariable(name: "state", scope: !1433, file: !394, line: 179, type: !392)
!1437 = !DILocation(line: 179, column: 14, scope: !1433)
!1438 = !DILocation(line: 179, column: 22, scope: !1433)
!1439 = !DILocalVariable(name: "catalog", scope: !1433, file: !394, line: 180, type: !450)
!1440 = !DILocation(line: 180, column: 16, scope: !1433)
!1441 = !DILocation(line: 184, column: 8, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1433, file: !394, line: 184, column: 8)
!1443 = !DILocation(line: 184, column: 15, scope: !1442)
!1444 = !DILocation(line: 184, column: 23, scope: !1442)
!1445 = !DILocation(line: 184, column: 8, scope: !1433)
!1446 = !DILocalVariable(name: "domaincat", scope: !1447, file: !394, line: 185, type: !450)
!1447 = distinct !DILexicalBlock(scope: !1442, file: !394, line: 184, column: 31)
!1448 = !DILocation(line: 185, column: 19, scope: !1447)
!1449 = !DILocation(line: 186, column: 28, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1447, file: !394, line: 186, column: 11)
!1451 = !DILocation(line: 186, column: 35, scope: !1450)
!1452 = !DILocation(line: 186, column: 44, scope: !1450)
!1453 = !DILocation(line: 186, column: 52, scope: !1450)
!1454 = !DILocation(line: 186, column: 11, scope: !1450)
!1455 = !DILocation(line: 186, column: 11, scope: !1447)
!1456 = !DILocation(line: 187, column: 20, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1450, file: !394, line: 186, column: 75)
!1458 = !DILocation(line: 187, column: 18, scope: !1457)
!1459 = !DILocation(line: 188, column: 7, scope: !1457)
!1460 = !DILocation(line: 189, column: 4, scope: !1447)
!1461 = !DILocation(line: 191, column: 11, scope: !1433)
!1462 = !DILocation(line: 191, column: 4, scope: !1433)
