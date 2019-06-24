; ModuleID = './line87-special-vars.o.i'
source_filename = "./line87-special-vars.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GString = type { i8*, i64, i64 }
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
%struct._NET_SENDBUF_REC = type opaque
%struct._RAWLOG_REC = type opaque
%struct._GHashTable = type opaque
%struct._GTimeVal = type { i64, i64 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._CHANNEL_REC = type opaque
%struct._QUERY_REC = type opaque
%struct.SETTINGS_REC = type { i32, i8*, i8*, i8*, i32, %struct.SettingValue, i8** }
%struct.SettingValue = type { i8*, i32, i8 }

@__func__.get_alignment = private unnamed_addr constant [14 x i8] c"get_alignment\00", align 1
@.str = private unnamed_addr constant [13 x i8] c"text != NULL\00", align 1
@parse_special.nested_orig_cmd = internal global i8** null, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"parse_special() : buffer overflow!\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__func__.parse_special_string = private unnamed_addr constant [21 x i8] c"parse_special_string\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"cmd != NULL\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"data != NULL\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"cmdchars\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"%c%s\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"send command\00", align 1
@history_func = internal global i8* (i8*, i8*, i32*)* null, align 8
@.str.9 = private unnamed_addr constant [4 x i8] c"$%c\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@current_expando = external global i8*, align 8

; Function Attrs: nounwind uwtable
define i8* @get_alignment(i8*, i32, i32, i8 signext) #0 !dbg !458 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca %struct._GString*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !461, metadata !462), !dbg !463
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !464, metadata !462), !dbg !465
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !466, metadata !462), !dbg !467
  store i8 %3, i8* %9, align 1
  call void @llvm.dbg.declare(metadata i8* %9, metadata !468, metadata !462), !dbg !469
  call void @llvm.dbg.declare(metadata %struct._GString** %10, metadata !470, metadata !462), !dbg !471
  call void @llvm.dbg.declare(metadata i8** %11, metadata !472, metadata !462), !dbg !473
  call void @llvm.dbg.declare(metadata i32* %12, metadata !474, metadata !462), !dbg !475
  call void @llvm.dbg.declare(metadata i32* %13, metadata !476, metadata !462), !dbg !477
  br label %16, !dbg !478, !llvm.loop !479

; <label>:16:                                     ; preds = %4
  %17 = load i8*, i8** %6, align 8, !dbg !480
  %18 = icmp ne i8* %17, null, !dbg !484
  br i1 %18, label %19, label %20, !dbg !480

; <label>:19:                                     ; preds = %16
  br label %21, !dbg !485

; <label>:20:                                     ; preds = %16
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.get_alignment, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)), !dbg !488
  store i8* null, i8** %5, align 8, !dbg !491
  br label %88, !dbg !491

; <label>:21:                                     ; preds = %19
  br label %22, !dbg !492

; <label>:22:                                     ; preds = %21
  %23 = load i8*, i8** %6, align 8, !dbg !494
  %24 = call i32 @string_policy(i8* %23), !dbg !495
  store i32 %24, i32* %12, align 4, !dbg !496
  %25 = load i8*, i8** %6, align 8, !dbg !497
  %26 = call %struct._GString* @g_string_new(i8* %25), !dbg !498
  store %struct._GString* %26, %struct._GString** %10, align 8, !dbg !499
  %27 = load i32, i32* %8, align 4, !dbg !500
  %28 = and i32 %27, 2, !dbg !502
  %29 = icmp ne i32 %28, 0, !dbg !502
  br i1 %29, label %30, label %48, !dbg !503

; <label>:30:                                     ; preds = %22
  %31 = load i32, i32* %7, align 4, !dbg !504
  %32 = icmp sgt i32 %31, 0, !dbg !506
  br i1 %32, label %33, label %48, !dbg !507

; <label>:33:                                     ; preds = %30
  %34 = load i8*, i8** %6, align 8, !dbg !508
  %35 = load i32, i32* %12, align 4, !dbg !510
  %36 = call i32 @string_width(i8* %34, i32 %35), !dbg !511
  %37 = load i32, i32* %7, align 4, !dbg !512
  %38 = icmp sgt i32 %36, %37, !dbg !513
  br i1 %38, label %39, label %48, !dbg !514

; <label>:39:                                     ; preds = %33
  %40 = load i8*, i8** %6, align 8, !dbg !515
  %41 = load i32, i32* %12, align 4, !dbg !517
  %42 = load i32, i32* %7, align 4, !dbg !518
  %43 = call i32 @string_chars_for_width(i8* %40, i32 %41, i32 %42, i32* %13), !dbg !519
  %44 = load %struct._GString*, %struct._GString** %10, align 8, !dbg !520
  %45 = load i32, i32* %13, align 4, !dbg !521
  %46 = zext i32 %45 to i64, !dbg !521
  %47 = call %struct._GString* @g_string_truncate(%struct._GString* %44, i64 %46), !dbg !522
  br label %48, !dbg !523

; <label>:48:                                     ; preds = %39, %33, %30, %22
  %49 = load i32, i32* %8, align 4, !dbg !524
  %50 = and i32 %49, 4, !dbg !526
  %51 = icmp ne i32 %50, 0, !dbg !526
  br i1 %51, label %52, label %81, !dbg !527

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.declare(metadata i32* %14, metadata !528, metadata !462), !dbg !530
  %53 = load i32, i32* %7, align 4, !dbg !531
  %54 = load %struct._GString*, %struct._GString** %10, align 8, !dbg !532
  %55 = getelementptr inbounds %struct._GString, %struct._GString* %54, i32 0, i32 0, !dbg !533
  %56 = load i8*, i8** %55, align 8, !dbg !533
  %57 = load i32, i32* %12, align 4, !dbg !534
  %58 = call i32 @string_width(i8* %56, i32 %57), !dbg !535
  %59 = sub nsw i32 %53, %58, !dbg !536
  store i32 %59, i32* %14, align 4, !dbg !530
  %60 = load i32, i32* %14, align 4, !dbg !537
  %61 = icmp sgt i32 %60, 0, !dbg !539
  br i1 %61, label %62, label %80, !dbg !540

; <label>:62:                                     ; preds = %52
  call void @llvm.dbg.declare(metadata i8** %15, metadata !541, metadata !462), !dbg !543
  %63 = load i32, i32* %14, align 4, !dbg !544
  %64 = sext i32 %63 to i64, !dbg !544
  %65 = load i8, i8* %9, align 1, !dbg !545
  %66 = call noalias i8* @g_strnfill(i64 %64, i8 signext %65), !dbg !546
  store i8* %66, i8** %15, align 8, !dbg !543
  %67 = load i32, i32* %8, align 4, !dbg !547
  %68 = and i32 %67, 1, !dbg !549
  %69 = icmp ne i32 %68, 0, !dbg !549
  br i1 %69, label %70, label %74, !dbg !550

; <label>:70:                                     ; preds = %62
  %71 = load %struct._GString*, %struct._GString** %10, align 8, !dbg !551
  %72 = load i8*, i8** %15, align 8, !dbg !552
  %73 = call %struct._GString* @g_string_prepend(%struct._GString* %71, i8* %72), !dbg !553
  br label %78, !dbg !553

; <label>:74:                                     ; preds = %62
  %75 = load %struct._GString*, %struct._GString** %10, align 8, !dbg !554
  %76 = load i8*, i8** %15, align 8, !dbg !555
  %77 = call %struct._GString* @g_string_append(%struct._GString* %75, i8* %76), !dbg !556
  br label %78

; <label>:78:                                     ; preds = %74, %70
  %79 = load i8*, i8** %15, align 8, !dbg !557
  call void @g_free(i8* %79), !dbg !558
  br label %80, !dbg !559

; <label>:80:                                     ; preds = %78, %52
  br label %81, !dbg !560

; <label>:81:                                     ; preds = %80, %48
  %82 = load %struct._GString*, %struct._GString** %10, align 8, !dbg !561
  %83 = getelementptr inbounds %struct._GString, %struct._GString* %82, i32 0, i32 0, !dbg !562
  %84 = load i8*, i8** %83, align 8, !dbg !562
  store i8* %84, i8** %11, align 8, !dbg !563
  %85 = load %struct._GString*, %struct._GString** %10, align 8, !dbg !564
  %86 = call i8* @g_string_free(%struct._GString* %85, i32 0), !dbg !565
  %87 = load i8*, i8** %11, align 8, !dbg !566
  store i8* %87, i8** %5, align 8, !dbg !567
  br label %88, !dbg !567

; <label>:88:                                     ; preds = %81, %20
  %89 = load i8*, i8** %5, align 8, !dbg !568
  ret i8* %89, !dbg !568
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare i32 @string_policy(i8*) #2

declare %struct._GString* @g_string_new(i8*) #2

declare i32 @string_width(i8*, i32) #2

declare i32 @string_chars_for_width(i8*, i32, i32, i32*) #2

declare %struct._GString* @g_string_truncate(%struct._GString*, i64) #2

declare noalias i8* @g_strnfill(i64, i8 signext) #2

declare %struct._GString* @g_string_prepend(%struct._GString*, i8*) #2

declare %struct._GString* @g_string_append(%struct._GString*, i8*) #2

declare void @g_free(i8*) #2

declare i8* @g_string_free(%struct._GString*, i32) #2

; Function Attrs: nounwind uwtable
define i8* @parse_special(i8**, %struct._SERVER_REC*, i8*, i8**, i32*, i32*, i32) #0 !dbg !118 {
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct._SERVER_REC*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i8*, align 8
  %18 = alloca i8, align 1
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  store i8** %0, i8*** %9, align 8
  call void @llvm.dbg.declare(metadata i8*** %9, metadata !569, metadata !462), !dbg !570
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %10, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %10, metadata !571, metadata !462), !dbg !572
  store i8* %2, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !573, metadata !462), !dbg !574
  store i8** %3, i8*** %12, align 8
  call void @llvm.dbg.declare(metadata i8*** %12, metadata !575, metadata !462), !dbg !576
  store i32* %4, i32** %13, align 8
  call void @llvm.dbg.declare(metadata i32** %13, metadata !577, metadata !462), !dbg !578
  store i32* %5, i32** %14, align 8
  call void @llvm.dbg.declare(metadata i32** %14, metadata !579, metadata !462), !dbg !580
  store i32 %6, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !581, metadata !462), !dbg !582
  call void @llvm.dbg.declare(metadata i8* %16, metadata !583, metadata !462), !dbg !584
  call void @llvm.dbg.declare(metadata i8** %17, metadata !585, metadata !462), !dbg !586
  call void @llvm.dbg.declare(metadata i8* %18, metadata !587, metadata !462), !dbg !588
  store i8 0, i8* %18, align 1, !dbg !588
  call void @llvm.dbg.declare(metadata i32* %19, metadata !589, metadata !462), !dbg !590
  store i32 0, i32* %19, align 4, !dbg !590
  call void @llvm.dbg.declare(metadata i32* %20, metadata !591, metadata !462), !dbg !592
  store i32 0, i32* %20, align 4, !dbg !592
  call void @llvm.dbg.declare(metadata i8** %21, metadata !593, metadata !462), !dbg !594
  call void @llvm.dbg.declare(metadata i32* %22, metadata !595, metadata !462), !dbg !596
  call void @llvm.dbg.declare(metadata i32* %23, metadata !597, metadata !462), !dbg !598
  %25 = load i32*, i32** %13, align 8, !dbg !599
  store i32 0, i32* %25, align 4, !dbg !600
  %26 = load i8**, i8*** %9, align 8, !dbg !601
  %27 = load i8*, i8** %26, align 8, !dbg !603
  %28 = load i8, i8* %27, align 1, !dbg !604
  %29 = sext i8 %28 to i32, !dbg !604
  %30 = icmp eq i32 %29, 0, !dbg !605
  br i1 %30, label %31, label %32, !dbg !606

; <label>:31:                                     ; preds = %7
  store i8* null, i8** %8, align 8, !dbg !607
  br label %172, !dbg !607

; <label>:32:                                     ; preds = %7
  %33 = load i8**, i8*** %9, align 8, !dbg !608
  %34 = load i8*, i8** %33, align 8, !dbg !609
  %35 = load i8, i8* %34, align 1, !dbg !610
  store i8 %35, i8* %16, align 1, !dbg !611
  %36 = load i8**, i8*** %9, align 8, !dbg !612
  %37 = load i8*, i8** %36, align 8, !dbg !613
  %38 = getelementptr inbounds i8, i8* %37, i32 1, !dbg !613
  store i8* %38, i8** %36, align 8, !dbg !613
  %39 = load i8, i8* %16, align 1, !dbg !614
  %40 = sext i8 %39 to i32, !dbg !614
  switch i32 %40, label %56 [
    i32 91, label %41
  ], !dbg !615

; <label>:41:                                     ; preds = %32
  %42 = load i8**, i8*** %9, align 8, !dbg !616
  %43 = call i32 @get_alignment_args(i8** %42, i32* %19, i32* %20, i8* %18), !dbg !619
  %44 = icmp ne i32 %43, 0, !dbg !619
  br i1 %44, label %45, label %51, !dbg !620

; <label>:45:                                     ; preds = %41
  %46 = load i8**, i8*** %9, align 8, !dbg !621
  %47 = load i8*, i8** %46, align 8, !dbg !623
  %48 = load i8, i8* %47, align 1, !dbg !624
  %49 = sext i8 %48 to i32, !dbg !624
  %50 = icmp eq i32 %49, 0, !dbg !625
  br i1 %50, label %51, label %55, !dbg !626

; <label>:51:                                     ; preds = %45, %41
  %52 = load i8**, i8*** %9, align 8, !dbg !628
  %53 = load i8*, i8** %52, align 8, !dbg !630
  %54 = getelementptr inbounds i8, i8* %53, i32 -1, !dbg !630
  store i8* %54, i8** %52, align 8, !dbg !630
  store i8* null, i8** %8, align 8, !dbg !631
  br label %172, !dbg !631

; <label>:55:                                     ; preds = %45
  br label %60, !dbg !632

; <label>:56:                                     ; preds = %32
  store i8 0, i8* %16, align 1, !dbg !633
  %57 = load i8**, i8*** %9, align 8, !dbg !634
  %58 = load i8*, i8** %57, align 8, !dbg !635
  %59 = getelementptr inbounds i8, i8* %58, i32 -1, !dbg !635
  store i8* %59, i8** %57, align 8, !dbg !635
  br label %60, !dbg !636

; <label>:60:                                     ; preds = %56, %55
  store i32 0, i32* %23, align 4, !dbg !637
  store i8* null, i8** %21, align 8, !dbg !638
  %61 = load i8**, i8*** @parse_special.nested_orig_cmd, align 8, !dbg !639
  %62 = icmp ne i8** %61, null, !dbg !639
  br i1 %62, label %63, label %64, !dbg !641

; <label>:63:                                     ; preds = %60
  store i8** null, i8*** @parse_special.nested_orig_cmd, align 8, !dbg !642
  br label %64, !dbg !644

; <label>:64:                                     ; preds = %63, %60
  %65 = load i8**, i8*** %9, align 8, !dbg !645
  %66 = load i8*, i8** %65, align 8, !dbg !647
  %67 = load i8, i8* %66, align 1, !dbg !648
  %68 = sext i8 %67 to i32, !dbg !648
  %69 = icmp ne i32 %68, 123, !dbg !649
  br i1 %69, label %70, label %71, !dbg !650

; <label>:70:                                     ; preds = %64
  store i32 0, i32* %22, align 4, !dbg !651
  br label %83, !dbg !652

; <label>:71:                                     ; preds = %64
  %72 = load i8**, i8*** %9, align 8, !dbg !653
  %73 = load i8*, i8** %72, align 8, !dbg !656
  %74 = getelementptr inbounds i8, i8* %73, i64 1, !dbg !657
  %75 = load i8, i8* %74, align 1, !dbg !657
  %76 = sext i8 %75 to i32, !dbg !657
  %77 = icmp eq i32 %76, 0, !dbg !658
  br i1 %77, label %78, label %79, !dbg !659

; <label>:78:                                     ; preds = %71
  store i8* null, i8** %8, align 8, !dbg !660
  br label %172, !dbg !660

; <label>:79:                                     ; preds = %71
  %80 = load i8**, i8*** %9, align 8, !dbg !661
  %81 = load i8*, i8** %80, align 8, !dbg !662
  %82 = getelementptr inbounds i8, i8* %81, i32 1, !dbg !662
  store i8* %82, i8** %80, align 8, !dbg !662
  store i32 1, i32* %22, align 4, !dbg !663
  br label %83

; <label>:83:                                     ; preds = %79, %70
  %84 = load i8**, i8*** %9, align 8, !dbg !664
  %85 = load %struct._SERVER_REC*, %struct._SERVER_REC** %10, align 8, !dbg !665
  %86 = load i8*, i8** %11, align 8, !dbg !666
  %87 = load i8**, i8*** %12, align 8, !dbg !667
  %88 = load i32*, i32** %13, align 8, !dbg !668
  %89 = load i32*, i32** %14, align 8, !dbg !669
  %90 = load i32, i32* %15, align 4, !dbg !670
  %91 = call i8* @get_special_value(i8** %84, %struct._SERVER_REC* %85, i8* %86, i8** %87, i32* %88, i32* %89, i32 %90), !dbg !671
  store i8* %91, i8** %17, align 8, !dbg !672
  %92 = load i8**, i8*** %9, align 8, !dbg !673
  %93 = load i8*, i8** %92, align 8, !dbg !675
  %94 = load i8, i8* %93, align 1, !dbg !676
  %95 = sext i8 %94 to i32, !dbg !676
  %96 = icmp eq i32 %95, 0, !dbg !677
  br i1 %96, label %97, label %101, !dbg !678

; <label>:97:                                     ; preds = %83
  br label %98, !dbg !679, !llvm.loop !680

; <label>:98:                                     ; preds = %97
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 4, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0)), !dbg !681
  br label %99, !dbg !684

; <label>:99:                                     ; preds = %99, %98
  br label %99, !dbg !685, !llvm.loop !689
                                                  ; No predecessors!
  br label %101, !dbg !691

; <label>:101:                                    ; preds = %100, %83
  %102 = load i8*, i8** %17, align 8, !dbg !693
  %103 = icmp ne i8* %102, null, !dbg !695
  br i1 %103, label %104, label %115, !dbg !696

; <label>:104:                                    ; preds = %101
  %105 = load i8*, i8** %17, align 8, !dbg !697
  %106 = load i8, i8* %105, align 1, !dbg !699
  %107 = sext i8 %106 to i32, !dbg !699
  %108 = icmp ne i32 %107, 0, !dbg !700
  br i1 %108, label %109, label %115, !dbg !701

; <label>:109:                                    ; preds = %104
  %110 = load i32, i32* %15, align 4, !dbg !702
  %111 = and i32 %110, 2, !dbg !704
  %112 = icmp ne i32 %111, 0, !dbg !704
  br i1 %112, label %113, label %115, !dbg !705

; <label>:113:                                    ; preds = %109
  %114 = load i32*, i32** %14, align 8, !dbg !706
  store i32 1, i32* %114, align 4, !dbg !707
  br label %115, !dbg !708

; <label>:115:                                    ; preds = %113, %109, %104, %101
  %116 = load i32, i32* %22, align 4, !dbg !709
  %117 = icmp ne i32 %116, 0, !dbg !709
  br i1 %117, label %118, label %139, !dbg !711

; <label>:118:                                    ; preds = %115
  br label %119, !dbg !712

; <label>:119:                                    ; preds = %134, %118
  %120 = load i8**, i8*** %9, align 8, !dbg !714
  %121 = load i8*, i8** %120, align 8, !dbg !716
  %122 = load i8, i8* %121, align 1, !dbg !717
  %123 = sext i8 %122 to i32, !dbg !717
  %124 = icmp ne i32 %123, 125, !dbg !718
  br i1 %124, label %125, label %132, !dbg !719

; <label>:125:                                    ; preds = %119
  %126 = load i8**, i8*** %9, align 8, !dbg !720
  %127 = load i8*, i8** %126, align 8, !dbg !722
  %128 = getelementptr inbounds i8, i8* %127, i64 1, !dbg !723
  %129 = load i8, i8* %128, align 1, !dbg !723
  %130 = sext i8 %129 to i32, !dbg !723
  %131 = icmp ne i32 %130, 0, !dbg !724
  br label %132

; <label>:132:                                    ; preds = %125, %119
  %133 = phi i1 [ false, %119 ], [ %131, %125 ]
  br i1 %133, label %134, label %138, !dbg !725

; <label>:134:                                    ; preds = %132
  %135 = load i8**, i8*** %9, align 8, !dbg !727
  %136 = load i8*, i8** %135, align 8, !dbg !728
  %137 = getelementptr inbounds i8, i8* %136, i32 1, !dbg !728
  store i8* %137, i8** %135, align 8, !dbg !728
  br label %119, !dbg !729, !llvm.loop !731

; <label>:138:                                    ; preds = %132
  br label %139, !dbg !732

; <label>:139:                                    ; preds = %138, %115
  %140 = load i32, i32* %23, align 4, !dbg !733
  %141 = icmp ne i32 %140, 0, !dbg !733
  br i1 %141, label %142, label %144, !dbg !735

; <label>:142:                                    ; preds = %139
  %143 = load i8*, i8** %21, align 8, !dbg !736
  call void @g_free(i8* %143), !dbg !738
  br label %144, !dbg !738

; <label>:144:                                    ; preds = %142, %139
  %145 = load i8, i8* %16, align 1, !dbg !739
  %146 = sext i8 %145 to i32, !dbg !739
  %147 = icmp eq i32 %146, 91, !dbg !741
  br i1 %147, label %148, label %170, !dbg !742

; <label>:148:                                    ; preds = %144
  %149 = load i32, i32* %15, align 4, !dbg !743
  %150 = and i32 %149, 1, !dbg !745
  %151 = icmp eq i32 %150, 0, !dbg !746
  br i1 %151, label %152, label %170, !dbg !747

; <label>:152:                                    ; preds = %148
  call void @llvm.dbg.declare(metadata i8** %24, metadata !748, metadata !462), !dbg !750
  %153 = load i8*, i8** %17, align 8, !dbg !751
  %154 = icmp eq i8* %153, null, !dbg !753
  br i1 %154, label %155, label %156, !dbg !754

; <label>:155:                                    ; preds = %152
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0), i8** %8, align 8, !dbg !755
  br label %172, !dbg !755

; <label>:156:                                    ; preds = %152
  %157 = load i8*, i8** %17, align 8, !dbg !757
  %158 = load i32, i32* %19, align 4, !dbg !758
  %159 = load i32, i32* %20, align 4, !dbg !759
  %160 = load i8, i8* %18, align 1, !dbg !760
  %161 = call i8* @get_alignment(i8* %157, i32 %158, i32 %159, i8 signext %160), !dbg !761
  store i8* %161, i8** %24, align 8, !dbg !762
  %162 = load i32*, i32** %13, align 8, !dbg !763
  %163 = load i32, i32* %162, align 4, !dbg !765
  %164 = icmp ne i32 %163, 0, !dbg !765
  br i1 %164, label %165, label %167, !dbg !766

; <label>:165:                                    ; preds = %156
  %166 = load i8*, i8** %17, align 8, !dbg !767
  call void @g_free(i8* %166), !dbg !769
  br label %167, !dbg !769

; <label>:167:                                    ; preds = %165, %156
  %168 = load i32*, i32** %13, align 8, !dbg !770
  store i32 1, i32* %168, align 4, !dbg !771
  %169 = load i8*, i8** %24, align 8, !dbg !772
  store i8* %169, i8** %8, align 8, !dbg !773
  br label %172, !dbg !773

; <label>:170:                                    ; preds = %148, %144
  %171 = load i8*, i8** %17, align 8, !dbg !774
  store i8* %171, i8** %8, align 8, !dbg !775
  br label %172, !dbg !775

; <label>:172:                                    ; preds = %170, %167, %155, %78, %51, %31
  %173 = load i8*, i8** %8, align 8, !dbg !776
  ret i8* %173, !dbg !776
}

; Function Attrs: nounwind uwtable
define internal i32 @get_alignment_args(i8**, i32*, i32*, i8*) #0 !dbg !777 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8** %0, i8*** %6, align 8
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !780, metadata !462), !dbg !781
  store i32* %1, i32** %7, align 8
  call void @llvm.dbg.declare(metadata i32** %7, metadata !782, metadata !462), !dbg !783
  store i32* %2, i32** %8, align 8
  call void @llvm.dbg.declare(metadata i32** %8, metadata !784, metadata !462), !dbg !785
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !786, metadata !462), !dbg !787
  call void @llvm.dbg.declare(metadata i8** %10, metadata !788, metadata !462), !dbg !789
  call void @llvm.dbg.declare(metadata i8** %11, metadata !790, metadata !462), !dbg !791
  call void @llvm.dbg.declare(metadata i32* %12, metadata !792, metadata !462), !dbg !793
  %13 = load i32*, i32** %7, align 8, !dbg !794
  store i32 0, i32* %13, align 4, !dbg !795
  %14 = load i32*, i32** %8, align 8, !dbg !796
  store i32 6, i32* %14, align 4, !dbg !797
  %15 = load i8*, i8** %9, align 8, !dbg !798
  store i8 32, i8* %15, align 1, !dbg !799
  %16 = load i8**, i8*** %6, align 8, !dbg !800
  %17 = load i8*, i8** %16, align 8, !dbg !801
  store i8* %17, i8** %10, align 8, !dbg !802
  br label %18, !dbg !803

; <label>:18:                                     ; preds = %72, %4
  %19 = load i8*, i8** %10, align 8, !dbg !804
  %20 = load i8, i8* %19, align 1, !dbg !806
  %21 = sext i8 %20 to i32, !dbg !806
  %22 = icmp ne i32 %21, 0, !dbg !807
  br i1 %22, label %23, label %41, !dbg !808

; <label>:23:                                     ; preds = %18
  %24 = load i8*, i8** %10, align 8, !dbg !809
  %25 = load i8, i8* %24, align 1, !dbg !811
  %26 = sext i8 %25 to i32, !dbg !811
  %27 = icmp ne i32 %26, 93, !dbg !812
  br i1 %27, label %28, label %41, !dbg !813

; <label>:28:                                     ; preds = %23
  %29 = load i8*, i8** %10, align 8, !dbg !814
  %30 = load i8, i8* %29, align 1, !dbg !816
  %31 = zext i8 %30 to i32, !dbg !817
  %32 = sext i32 %31 to i64, !dbg !818
  %33 = call i16** @__ctype_b_loc() #1, !dbg !819
  %34 = load i16*, i16** %33, align 8, !dbg !820
  %35 = getelementptr inbounds i16, i16* %34, i64 %32, !dbg !818
  %36 = load i16, i16* %35, align 2, !dbg !818
  %37 = zext i16 %36 to i32, !dbg !818
  %38 = and i32 %37, 2048, !dbg !821
  %39 = icmp ne i32 %38, 0, !dbg !817
  %40 = xor i1 %39, true, !dbg !817
  br label %41

; <label>:41:                                     ; preds = %28, %23, %18
  %42 = phi i1 [ false, %23 ], [ false, %18 ], [ %40, %28 ]
  br i1 %42, label %43, label %75, !dbg !822

; <label>:43:                                     ; preds = %41
  %44 = load i8*, i8** %10, align 8, !dbg !824
  %45 = load i8, i8* %44, align 1, !dbg !827
  %46 = sext i8 %45 to i32, !dbg !827
  %47 = icmp eq i32 %46, 33, !dbg !828
  br i1 %47, label %48, label %52, !dbg !829

; <label>:48:                                     ; preds = %43
  %49 = load i32*, i32** %8, align 8, !dbg !830
  %50 = load i32, i32* %49, align 4, !dbg !831
  %51 = and i32 %50, -3, !dbg !831
  store i32 %51, i32* %49, align 4, !dbg !831
  br label %72, !dbg !832

; <label>:52:                                     ; preds = %43
  %53 = load i8*, i8** %10, align 8, !dbg !833
  %54 = load i8, i8* %53, align 1, !dbg !835
  %55 = sext i8 %54 to i32, !dbg !835
  %56 = icmp eq i32 %55, 45, !dbg !836
  br i1 %56, label %57, label %61, !dbg !837

; <label>:57:                                     ; preds = %52
  %58 = load i32*, i32** %8, align 8, !dbg !838
  %59 = load i32, i32* %58, align 4, !dbg !839
  %60 = or i32 %59, 1, !dbg !839
  store i32 %60, i32* %58, align 4, !dbg !839
  br label %71, !dbg !840

; <label>:61:                                     ; preds = %52
  %62 = load i8*, i8** %10, align 8, !dbg !841
  %63 = load i8, i8* %62, align 1, !dbg !843
  %64 = sext i8 %63 to i32, !dbg !843
  %65 = icmp eq i32 %64, 46, !dbg !844
  br i1 %65, label %66, label %70, !dbg !845

; <label>:66:                                     ; preds = %61
  %67 = load i32*, i32** %8, align 8, !dbg !846
  %68 = load i32, i32* %67, align 4, !dbg !847
  %69 = and i32 %68, -5, !dbg !847
  store i32 %69, i32* %67, align 4, !dbg !847
  br label %70, !dbg !848

; <label>:70:                                     ; preds = %66, %61
  br label %71

; <label>:71:                                     ; preds = %70, %57
  br label %72

; <label>:72:                                     ; preds = %71, %48
  %73 = load i8*, i8** %10, align 8, !dbg !849
  %74 = getelementptr inbounds i8, i8* %73, i32 1, !dbg !849
  store i8* %74, i8** %10, align 8, !dbg !849
  br label %18, !dbg !850, !llvm.loop !852

; <label>:75:                                     ; preds = %41
  %76 = load i8*, i8** %10, align 8, !dbg !853
  %77 = load i8, i8* %76, align 1, !dbg !855
  %78 = zext i8 %77 to i32, !dbg !856
  %79 = sext i32 %78 to i64, !dbg !857
  %80 = call i16** @__ctype_b_loc() #1, !dbg !858
  %81 = load i16*, i16** %80, align 8, !dbg !859
  %82 = getelementptr inbounds i16, i16* %81, i64 %79, !dbg !857
  %83 = load i16, i16* %82, align 2, !dbg !857
  %84 = zext i16 %83 to i32, !dbg !857
  %85 = and i32 %84, 2048, !dbg !860
  %86 = icmp ne i32 %85, 0, !dbg !860
  br i1 %86, label %88, label %87, !dbg !861

; <label>:87:                                     ; preds = %75
  store i32 0, i32* %5, align 4, !dbg !862
  br label %129, !dbg !862

; <label>:88:                                     ; preds = %75
  %89 = load i8*, i8** %10, align 8, !dbg !863
  %90 = call i32 @parse_uint(i8* %89, i8** %11, i32 10, i32* %12), !dbg !865
  %91 = icmp ne i32 %90, 0, !dbg !865
  br i1 %91, label %93, label %92, !dbg !866

; <label>:92:                                     ; preds = %88
  store i32 0, i32* %5, align 4, !dbg !867
  br label %129, !dbg !867

; <label>:93:                                     ; preds = %88
  %94 = load i32, i32* %12, align 4, !dbg !869
  %95 = icmp ugt i32 %94, 222488, !dbg !871
  br i1 %95, label %96, label %97, !dbg !872

; <label>:96:                                     ; preds = %93
  store i32 0, i32* %5, align 4, !dbg !873
  br label %129, !dbg !873

; <label>:97:                                     ; preds = %93
  %98 = load i8*, i8** %11, align 8, !dbg !875
  store i8* %98, i8** %10, align 8, !dbg !876
  %99 = load i32, i32* %12, align 4, !dbg !877
  %100 = load i32*, i32** %7, align 8, !dbg !878
  store i32 %99, i32* %100, align 4, !dbg !879
  br label %101, !dbg !880

; <label>:101:                                    ; preds = %113, %97
  %102 = load i8*, i8** %10, align 8, !dbg !881
  %103 = load i8, i8* %102, align 1, !dbg !882
  %104 = sext i8 %103 to i32, !dbg !882
  %105 = icmp ne i32 %104, 0, !dbg !883
  br i1 %105, label %106, label %111, !dbg !884

; <label>:106:                                    ; preds = %101
  %107 = load i8*, i8** %10, align 8, !dbg !885
  %108 = load i8, i8* %107, align 1, !dbg !886
  %109 = sext i8 %108 to i32, !dbg !886
  %110 = icmp ne i32 %109, 93, !dbg !887
  br label %111

; <label>:111:                                    ; preds = %106, %101
  %112 = phi i1 [ false, %101 ], [ %110, %106 ]
  br i1 %112, label %113, label %119, !dbg !888

; <label>:113:                                    ; preds = %111
  %114 = load i8*, i8** %10, align 8, !dbg !889
  %115 = load i8, i8* %114, align 1, !dbg !891
  %116 = load i8*, i8** %9, align 8, !dbg !892
  store i8 %115, i8* %116, align 1, !dbg !893
  %117 = load i8*, i8** %10, align 8, !dbg !894
  %118 = getelementptr inbounds i8, i8* %117, i32 1, !dbg !894
  store i8* %118, i8** %10, align 8, !dbg !894
  br label %101, !dbg !895, !llvm.loop !896

; <label>:119:                                    ; preds = %111
  %120 = load i8*, i8** %10, align 8, !dbg !897
  %121 = getelementptr inbounds i8, i8* %120, i32 1, !dbg !897
  store i8* %121, i8** %10, align 8, !dbg !897
  %122 = load i8, i8* %120, align 1, !dbg !899
  %123 = sext i8 %122 to i32, !dbg !899
  %124 = icmp ne i32 %123, 93, !dbg !900
  br i1 %124, label %125, label %126, !dbg !901

; <label>:125:                                    ; preds = %119
  store i32 0, i32* %5, align 4, !dbg !902
  br label %129, !dbg !902

; <label>:126:                                    ; preds = %119
  %127 = load i8*, i8** %10, align 8, !dbg !904
  %128 = load i8**, i8*** %6, align 8, !dbg !905
  store i8* %127, i8** %128, align 8, !dbg !906
  store i32 1, i32* %5, align 4, !dbg !907
  br label %129, !dbg !907

; <label>:129:                                    ; preds = %126, %125, %96, %92, %87
  %130 = load i32, i32* %5, align 4, !dbg !908
  ret i32 %130, !dbg !908
}

; Function Attrs: nounwind uwtable
define internal i8* @get_special_value(i8**, %struct._SERVER_REC*, i8*, i8**, i32*, i32*, i32) #0 !dbg !909 {
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct._SERVER_REC*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store i8** %0, i8*** %9, align 8
  call void @llvm.dbg.declare(metadata i8*** %9, metadata !910, metadata !462), !dbg !911
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %10, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %10, metadata !912, metadata !462), !dbg !913
  store i8* %2, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !914, metadata !462), !dbg !915
  store i8** %3, i8*** %12, align 8
  call void @llvm.dbg.declare(metadata i8*** %12, metadata !916, metadata !462), !dbg !917
  store i32* %4, i32** %13, align 8
  call void @llvm.dbg.declare(metadata i32** %13, metadata !918, metadata !462), !dbg !919
  store i32* %5, i32** %14, align 8
  call void @llvm.dbg.declare(metadata i32** %14, metadata !920, metadata !462), !dbg !921
  store i32 %6, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !922, metadata !462), !dbg !923
  call void @llvm.dbg.declare(metadata i8* %16, metadata !924, metadata !462), !dbg !925
  call void @llvm.dbg.declare(metadata i8** %17, metadata !926, metadata !462), !dbg !927
  call void @llvm.dbg.declare(metadata i8** %18, metadata !928, metadata !462), !dbg !929
  call void @llvm.dbg.declare(metadata i32* %19, metadata !930, metadata !462), !dbg !931
  %21 = load i32, i32* %15, align 4, !dbg !932
  %22 = and i32 %21, 16, !dbg !934
  %23 = icmp ne i32 %22, 0, !dbg !934
  br i1 %23, label %24, label %62, !dbg !935

; <label>:24:                                     ; preds = %7
  %25 = load i8**, i8*** %9, align 8, !dbg !936
  %26 = load i8*, i8** %25, align 8, !dbg !938
  %27 = load i8, i8* %26, align 1, !dbg !939
  %28 = zext i8 %27 to i32, !dbg !940
  %29 = sext i32 %28 to i64, !dbg !941
  %30 = call i16** @__ctype_b_loc() #1, !dbg !942
  %31 = load i16*, i16** %30, align 8, !dbg !943
  %32 = getelementptr inbounds i16, i16* %31, i64 %29, !dbg !941
  %33 = load i16, i16* %32, align 2, !dbg !941
  %34 = zext i16 %33 to i32, !dbg !941
  %35 = and i32 %34, 2048, !dbg !944
  %36 = icmp ne i32 %35, 0, !dbg !944
  br i1 %36, label %62, label %37, !dbg !940

; <label>:37:                                     ; preds = %24
  %38 = load i8**, i8*** %9, align 8, !dbg !945
  %39 = load i8*, i8** %38, align 8, !dbg !947
  %40 = load i8, i8* %39, align 1, !dbg !948
  %41 = sext i8 %40 to i32, !dbg !949
  %42 = icmp eq i32 %41, 42, !dbg !950
  br i1 %42, label %62, label %43, !dbg !951

; <label>:43:                                     ; preds = %37
  %44 = load i8**, i8*** %9, align 8, !dbg !952
  %45 = load i8*, i8** %44, align 8, !dbg !954
  %46 = load i8, i8* %45, align 1, !dbg !955
  %47 = sext i8 %46 to i32, !dbg !956
  %48 = icmp eq i32 %47, 126, !dbg !957
  br i1 %48, label %62, label %49, !dbg !958

; <label>:49:                                     ; preds = %43
  %50 = load i8**, i8*** %9, align 8, !dbg !959
  %51 = load i8*, i8** %50, align 8, !dbg !961
  %52 = load i8, i8* %51, align 1, !dbg !962
  %53 = sext i8 %52 to i32, !dbg !963
  %54 = icmp eq i32 %53, 45, !dbg !964
  br i1 %54, label %62, label %55, !dbg !965

; <label>:55:                                     ; preds = %49
  %56 = load i32*, i32** %13, align 8, !dbg !966
  store i32 1, i32* %56, align 4, !dbg !968
  %57 = load i8**, i8*** %9, align 8, !dbg !969
  %58 = load i8*, i8** %57, align 8, !dbg !970
  %59 = load i8, i8* %58, align 1, !dbg !971
  %60 = sext i8 %59 to i32, !dbg !971
  %61 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i32 %60), !dbg !972
  store i8* %61, i8** %8, align 8, !dbg !973
  br label %216, !dbg !973

; <label>:62:                                     ; preds = %49, %43, %37, %24, %7
  %63 = load i8**, i8*** %9, align 8, !dbg !974
  %64 = load i8*, i8** %63, align 8, !dbg !976
  %65 = load i8, i8* %64, align 1, !dbg !977
  %66 = sext i8 %65 to i32, !dbg !977
  %67 = icmp eq i32 %66, 33, !dbg !978
  br i1 %67, label %68, label %78, !dbg !979

; <label>:68:                                     ; preds = %62
  %69 = load i32, i32* %15, align 4, !dbg !980
  %70 = and i32 %69, 1, !dbg !983
  %71 = icmp ne i32 %70, 0, !dbg !983
  br i1 %71, label %72, label %73, !dbg !984

; <label>:72:                                     ; preds = %68
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8** %8, align 8, !dbg !985
  br label %216, !dbg !985

; <label>:73:                                     ; preds = %68
  %74 = load i8**, i8*** %9, align 8, !dbg !986
  %75 = load i8*, i8** %11, align 8, !dbg !987
  %76 = load i32*, i32** %13, align 8, !dbg !988
  %77 = call i8* @get_history(i8** %74, i8* %75, i32* %76), !dbg !989
  store i8* %77, i8** %8, align 8, !dbg !990
  br label %216, !dbg !990

; <label>:78:                                     ; preds = %62
  store i8 0, i8* %16, align 1, !dbg !991
  %79 = load i8**, i8*** %9, align 8, !dbg !992
  %80 = load i8*, i8** %79, align 8, !dbg !994
  %81 = load i8, i8* %80, align 1, !dbg !995
  %82 = sext i8 %81 to i32, !dbg !995
  %83 = icmp eq i32 %82, 35, !dbg !996
  br i1 %83, label %90, label %84, !dbg !997

; <label>:84:                                     ; preds = %78
  %85 = load i8**, i8*** %9, align 8, !dbg !998
  %86 = load i8*, i8** %85, align 8, !dbg !1000
  %87 = load i8, i8* %86, align 1, !dbg !1001
  %88 = sext i8 %87 to i32, !dbg !1001
  %89 = icmp eq i32 %88, 64, !dbg !1002
  br i1 %89, label %90, label %114, !dbg !1003

; <label>:90:                                     ; preds = %84, %78
  %91 = load i8**, i8*** %9, align 8, !dbg !1004
  %92 = load i8*, i8** %91, align 8, !dbg !1006
  %93 = load i8, i8* %92, align 1, !dbg !1007
  store i8 %93, i8* %16, align 1, !dbg !1008
  %94 = load i8**, i8*** %9, align 8, !dbg !1009
  %95 = load i8*, i8** %94, align 8, !dbg !1011
  %96 = getelementptr inbounds i8, i8* %95, i64 1, !dbg !1012
  %97 = load i8, i8* %96, align 1, !dbg !1012
  %98 = sext i8 %97 to i32, !dbg !1012
  %99 = icmp ne i32 %98, 0, !dbg !1013
  br i1 %99, label %100, label %104, !dbg !1014

; <label>:100:                                    ; preds = %90
  %101 = load i8**, i8*** %9, align 8, !dbg !1015
  %102 = load i8*, i8** %101, align 8, !dbg !1016
  %103 = getelementptr inbounds i8, i8* %102, i32 1, !dbg !1016
  store i8* %103, i8** %101, align 8, !dbg !1016
  br label %113, !dbg !1017

; <label>:104:                                    ; preds = %90
  call void @llvm.dbg.declare(metadata i8** %20, metadata !1018, metadata !462), !dbg !1020
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), i8** %20, align 8, !dbg !1020
  %105 = load i32, i32* %15, align 4, !dbg !1021
  %106 = and i32 %105, 1, !dbg !1023
  %107 = icmp ne i32 %106, 0, !dbg !1023
  br i1 %107, label %108, label %109, !dbg !1024

; <label>:108:                                    ; preds = %104
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), i8** %8, align 8, !dbg !1025
  br label %216, !dbg !1025

; <label>:109:                                    ; preds = %104
  %110 = load i32*, i32** %13, align 8, !dbg !1026
  store i32 1, i32* %110, align 4, !dbg !1027
  %111 = load i8**, i8*** %12, align 8, !dbg !1028
  %112 = call i8* @get_argument(i8** %20, i8** %111), !dbg !1029
  store i8* %112, i8** %8, align 8, !dbg !1030
  br label %216, !dbg !1030

; <label>:113:                                    ; preds = %100
  br label %114, !dbg !1031

; <label>:114:                                    ; preds = %113, %84
  %115 = load i8**, i8*** %9, align 8, !dbg !1032
  %116 = load %struct._SERVER_REC*, %struct._SERVER_REC** %10, align 8, !dbg !1033
  %117 = load i8*, i8** %11, align 8, !dbg !1034
  %118 = load i8**, i8*** %12, align 8, !dbg !1035
  %119 = load i32*, i32** %13, align 8, !dbg !1036
  %120 = load i32*, i32** %14, align 8, !dbg !1037
  %121 = load i32, i32* %15, align 4, !dbg !1038
  %122 = and i32 %121, 1, !dbg !1039
  %123 = call i8* @get_variable(i8** %115, %struct._SERVER_REC* %116, i8* %117, i8** %118, i32* %119, i32* %120, i32 %122), !dbg !1040
  store i8* %123, i8** %17, align 8, !dbg !1041
  %124 = load i32, i32* %15, align 4, !dbg !1042
  %125 = and i32 %124, 1, !dbg !1044
  %126 = icmp ne i32 %125, 0, !dbg !1044
  br i1 %126, label %127, label %129, !dbg !1045

; <label>:127:                                    ; preds = %114
  %128 = load i8*, i8** %17, align 8, !dbg !1046
  store i8* %128, i8** %8, align 8, !dbg !1047
  br label %216, !dbg !1047

; <label>:129:                                    ; preds = %114
  %130 = load i8, i8* %16, align 1, !dbg !1048
  %131 = sext i8 %130 to i32, !dbg !1048
  %132 = icmp eq i32 %131, 35, !dbg !1050
  br i1 %132, label %133, label %193, !dbg !1051

; <label>:133:                                    ; preds = %129
  %134 = load i8*, i8** %17, align 8, !dbg !1052
  %135 = icmp eq i8* %134, null, !dbg !1055
  br i1 %135, label %141, label %136, !dbg !1056

; <label>:136:                                    ; preds = %133
  %137 = load i8*, i8** %17, align 8, !dbg !1057
  %138 = load i8, i8* %137, align 1, !dbg !1059
  %139 = sext i8 %138 to i32, !dbg !1059
  %140 = icmp eq i32 %139, 0, !dbg !1060
  br i1 %140, label %141, label %152, !dbg !1061

; <label>:141:                                    ; preds = %136, %133
  %142 = load i8*, i8** %17, align 8, !dbg !1062
  %143 = icmp ne i8* %142, null, !dbg !1065
  br i1 %143, label %144, label %151, !dbg !1066

; <label>:144:                                    ; preds = %141
  %145 = load i32*, i32** %13, align 8, !dbg !1067
  %146 = load i32, i32* %145, align 4, !dbg !1069
  %147 = icmp ne i32 %146, 0, !dbg !1069
  br i1 %147, label %148, label %151, !dbg !1070

; <label>:148:                                    ; preds = %144
  %149 = load i8*, i8** %17, align 8, !dbg !1071
  call void @g_free(i8* %149), !dbg !1073
  %150 = load i32*, i32** %13, align 8, !dbg !1074
  store i32 0, i32* %150, align 4, !dbg !1075
  br label %151, !dbg !1076

; <label>:151:                                    ; preds = %148, %144, %141
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), i8** %8, align 8, !dbg !1077
  br label %216, !dbg !1077

; <label>:152:                                    ; preds = %136
  store i32 1, i32* %19, align 4, !dbg !1078
  %153 = load i8*, i8** %17, align 8, !dbg !1079
  store i8* %153, i8** %18, align 8, !dbg !1081
  br label %154, !dbg !1082

; <label>:154:                                    ; preds = %180, %152
  %155 = load i8*, i8** %18, align 8, !dbg !1083
  %156 = load i8, i8* %155, align 1, !dbg !1086
  %157 = sext i8 %156 to i32, !dbg !1086
  %158 = icmp ne i32 %157, 0, !dbg !1087
  br i1 %158, label %159, label %183, !dbg !1088

; <label>:159:                                    ; preds = %154
  %160 = load i8*, i8** %18, align 8, !dbg !1089
  %161 = load i8, i8* %160, align 1, !dbg !1092
  %162 = sext i8 %161 to i32, !dbg !1092
  %163 = icmp eq i32 %162, 32, !dbg !1093
  br i1 %163, label %164, label %179, !dbg !1094

; <label>:164:                                    ; preds = %159
  %165 = load i8*, i8** %18, align 8, !dbg !1095
  %166 = getelementptr inbounds i8, i8* %165, i64 1, !dbg !1095
  %167 = load i8, i8* %166, align 1, !dbg !1095
  %168 = sext i8 %167 to i32, !dbg !1095
  %169 = icmp ne i32 %168, 32, !dbg !1097
  br i1 %169, label %170, label %179, !dbg !1098

; <label>:170:                                    ; preds = %164
  %171 = load i8*, i8** %18, align 8, !dbg !1099
  %172 = getelementptr inbounds i8, i8* %171, i64 1, !dbg !1099
  %173 = load i8, i8* %172, align 1, !dbg !1099
  %174 = sext i8 %173 to i32, !dbg !1099
  %175 = icmp ne i32 %174, 0, !dbg !1101
  br i1 %175, label %176, label %179, !dbg !1102

; <label>:176:                                    ; preds = %170
  %177 = load i32, i32* %19, align 4, !dbg !1103
  %178 = add nsw i32 %177, 1, !dbg !1103
  store i32 %178, i32* %19, align 4, !dbg !1103
  br label %179, !dbg !1104

; <label>:179:                                    ; preds = %176, %170, %164, %159
  br label %180, !dbg !1105

; <label>:180:                                    ; preds = %179
  %181 = load i8*, i8** %18, align 8, !dbg !1106
  %182 = getelementptr inbounds i8, i8* %181, i32 1, !dbg !1106
  store i8* %182, i8** %18, align 8, !dbg !1106
  br label %154, !dbg !1108, !llvm.loop !1109

; <label>:183:                                    ; preds = %154
  %184 = load i32*, i32** %13, align 8, !dbg !1111
  %185 = load i32, i32* %184, align 4, !dbg !1113
  %186 = icmp ne i32 %185, 0, !dbg !1113
  br i1 %186, label %187, label %189, !dbg !1114

; <label>:187:                                    ; preds = %183
  %188 = load i8*, i8** %17, align 8, !dbg !1115
  call void @g_free(i8* %188), !dbg !1117
  br label %189, !dbg !1117

; <label>:189:                                    ; preds = %187, %183
  %190 = load i32*, i32** %13, align 8, !dbg !1118
  store i32 1, i32* %190, align 4, !dbg !1119
  %191 = load i32, i32* %19, align 4, !dbg !1120
  %192 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i32 %191), !dbg !1121
  store i8* %192, i8** %8, align 8, !dbg !1122
  br label %216, !dbg !1122

; <label>:193:                                    ; preds = %129
  %194 = load i8, i8* %16, align 1, !dbg !1123
  %195 = sext i8 %194 to i32, !dbg !1123
  %196 = icmp eq i32 %195, 64, !dbg !1125
  br i1 %196, label %197, label %214, !dbg !1126

; <label>:197:                                    ; preds = %193
  %198 = load i8*, i8** %17, align 8, !dbg !1127
  %199 = icmp eq i8* %198, null, !dbg !1130
  br i1 %199, label %200, label %201, !dbg !1131

; <label>:200:                                    ; preds = %197
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), i8** %8, align 8, !dbg !1132
  br label %216, !dbg !1132

; <label>:201:                                    ; preds = %197
  %202 = load i8*, i8** %17, align 8, !dbg !1134
  %203 = call i64 @strlen(i8* %202) #6, !dbg !1135
  %204 = trunc i64 %203 to i32, !dbg !1135
  store i32 %204, i32* %19, align 4, !dbg !1136
  %205 = load i32*, i32** %13, align 8, !dbg !1137
  %206 = load i32, i32* %205, align 4, !dbg !1139
  %207 = icmp ne i32 %206, 0, !dbg !1139
  br i1 %207, label %208, label %210, !dbg !1140

; <label>:208:                                    ; preds = %201
  %209 = load i8*, i8** %17, align 8, !dbg !1141
  call void @g_free(i8* %209), !dbg !1143
  br label %210, !dbg !1143

; <label>:210:                                    ; preds = %208, %201
  %211 = load i32*, i32** %13, align 8, !dbg !1144
  store i32 1, i32* %211, align 4, !dbg !1145
  %212 = load i32, i32* %19, align 4, !dbg !1146
  %213 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i32 %212), !dbg !1147
  store i8* %213, i8** %8, align 8, !dbg !1148
  br label %216, !dbg !1148

; <label>:214:                                    ; preds = %193
  %215 = load i8*, i8** %17, align 8, !dbg !1149
  store i8* %215, i8** %8, align 8, !dbg !1150
  br label %216, !dbg !1150

; <label>:216:                                    ; preds = %214, %210, %200, %189, %151, %127, %109, %108, %73, %72, %55
  %217 = load i8*, i8** %8, align 8, !dbg !1151
  ret i8* %217, !dbg !1151
}

declare void @g_log(i8*, i32, i8*, ...) #2

; Function Attrs: nounwind uwtable
define i8* @parse_special_string(i8*, %struct._SERVER_REC*, i8*, i8*, i32*, i32) #0 !dbg !1152 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._SERVER_REC*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i8**, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct._GString*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store i8* %0, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1155, metadata !462), !dbg !1156
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %9, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %9, metadata !1157, metadata !462), !dbg !1158
  store i8* %2, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1159, metadata !462), !dbg !1160
  store i8* %3, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1161, metadata !462), !dbg !1162
  store i32* %4, i32** %12, align 8
  call void @llvm.dbg.declare(metadata i32** %12, metadata !1163, metadata !462), !dbg !1164
  store i32 %5, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1165, metadata !462), !dbg !1166
  call void @llvm.dbg.declare(metadata i8* %14, metadata !1167, metadata !462), !dbg !1168
  call void @llvm.dbg.declare(metadata i8*** %15, metadata !1169, metadata !462), !dbg !1170
  call void @llvm.dbg.declare(metadata i8** %16, metadata !1171, metadata !462), !dbg !1172
  call void @llvm.dbg.declare(metadata %struct._GString** %17, metadata !1173, metadata !462), !dbg !1174
  call void @llvm.dbg.declare(metadata i32* %18, metadata !1175, metadata !462), !dbg !1176
  call void @llvm.dbg.declare(metadata i32* %19, metadata !1177, metadata !462), !dbg !1178
  br label %21, !dbg !1179, !llvm.loop !1180

; <label>:21:                                     ; preds = %6
  %22 = load i8*, i8** %8, align 8, !dbg !1181
  %23 = icmp ne i8* %22, null, !dbg !1185
  br i1 %23, label %24, label %25, !dbg !1181

; <label>:24:                                     ; preds = %21
  br label %26, !dbg !1186

; <label>:25:                                     ; preds = %21
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.parse_special_string, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0)), !dbg !1189
  store i8* null, i8** %7, align 8, !dbg !1192
  br label %130, !dbg !1192

; <label>:26:                                     ; preds = %24
  br label %27, !dbg !1193

; <label>:27:                                     ; preds = %26
  br label %28, !dbg !1195, !llvm.loop !1196

; <label>:28:                                     ; preds = %27
  %29 = load i8*, i8** %11, align 8, !dbg !1197
  %30 = icmp ne i8* %29, null, !dbg !1201
  br i1 %30, label %31, label %32, !dbg !1197

; <label>:31:                                     ; preds = %28
  br label %33, !dbg !1202

; <label>:32:                                     ; preds = %28
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.parse_special_string, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0)), !dbg !1205
  store i8* null, i8** %7, align 8, !dbg !1208
  br label %130, !dbg !1208

; <label>:33:                                     ; preds = %31
  br label %34, !dbg !1209

; <label>:34:                                     ; preds = %33
  %35 = load i8*, i8** %11, align 8, !dbg !1211
  %36 = call noalias i8** @g_strsplit(i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i32 -1), !dbg !1212
  store i8** %36, i8*** %15, align 8, !dbg !1213
  %37 = load i32*, i32** %12, align 8, !dbg !1214
  %38 = icmp ne i32* %37, null, !dbg !1216
  br i1 %38, label %39, label %41, !dbg !1217

; <label>:39:                                     ; preds = %34
  %40 = load i32*, i32** %12, align 8, !dbg !1218
  store i32 0, i32* %40, align 4, !dbg !1220
  br label %41, !dbg !1221

; <label>:41:                                     ; preds = %39, %34
  store i8 0, i8* %14, align 1, !dbg !1222
  %42 = call %struct._GString* @g_string_new(i8* null), !dbg !1223
  store %struct._GString* %42, %struct._GString** %17, align 8, !dbg !1224
  br label %43, !dbg !1225

; <label>:43:                                     ; preds = %119, %41
  %44 = load i8*, i8** %8, align 8, !dbg !1226
  %45 = load i8, i8* %44, align 1, !dbg !1228
  %46 = sext i8 %45 to i32, !dbg !1228
  %47 = icmp ne i32 %46, 0, !dbg !1229
  br i1 %47, label %48, label %122, !dbg !1230

; <label>:48:                                     ; preds = %43
  %49 = load i8, i8* %14, align 1, !dbg !1231
  %50 = sext i8 %49 to i32, !dbg !1231
  %51 = icmp eq i32 %50, 92, !dbg !1234
  br i1 %51, label %52, label %76, !dbg !1235

; <label>:52:                                     ; preds = %48
  %53 = load i8*, i8** %8, align 8, !dbg !1236
  %54 = load i8, i8* %53, align 1, !dbg !1239
  %55 = sext i8 %54 to i32, !dbg !1239
  %56 = icmp eq i32 %55, 59, !dbg !1240
  br i1 %56, label %57, label %60, !dbg !1241

; <label>:57:                                     ; preds = %52
  %58 = load %struct._GString*, %struct._GString** %17, align 8, !dbg !1242
  %59 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %58, i8 signext 59), !dbg !1243
  br label %75, !dbg !1243

; <label>:60:                                     ; preds = %52
  %61 = call i32 @expand_escape(i8** %8), !dbg !1244
  store i32 %61, i32* %19, align 4, !dbg !1246
  %62 = load %struct._GString*, %struct._GString** %17, align 8, !dbg !1247
  %63 = load i32, i32* %19, align 4, !dbg !1248
  %64 = icmp ne i32 %63, -1, !dbg !1249
  br i1 %64, label %65, label %67, !dbg !1248

; <label>:65:                                     ; preds = %60
  %66 = load i32, i32* %19, align 4, !dbg !1250
  br label %71, !dbg !1252

; <label>:67:                                     ; preds = %60
  %68 = load i8*, i8** %8, align 8, !dbg !1253
  %69 = load i8, i8* %68, align 1, !dbg !1255
  %70 = sext i8 %69 to i32, !dbg !1255
  br label %71, !dbg !1256

; <label>:71:                                     ; preds = %67, %65
  %72 = phi i32 [ %66, %65 ], [ %70, %67 ], !dbg !1257
  %73 = trunc i32 %72 to i8, !dbg !1257
  %74 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %62, i8 signext %73), !dbg !1259
  br label %75

; <label>:75:                                     ; preds = %71, %57
  store i8 0, i8* %14, align 1, !dbg !1260
  br label %119, !dbg !1261

; <label>:76:                                     ; preds = %48
  %77 = load i8, i8* %14, align 1, !dbg !1262
  %78 = sext i8 %77 to i32, !dbg !1262
  %79 = icmp eq i32 %78, 36, !dbg !1265
  br i1 %79, label %80, label %99, !dbg !1262

; <label>:80:                                     ; preds = %76
  call void @llvm.dbg.declare(metadata i8** %20, metadata !1266, metadata !462), !dbg !1268
  %81 = load %struct._SERVER_REC*, %struct._SERVER_REC** %9, align 8, !dbg !1269
  %82 = load i8*, i8** %10, align 8, !dbg !1270
  %83 = load i8**, i8*** %15, align 8, !dbg !1271
  %84 = load i32*, i32** %12, align 8, !dbg !1272
  %85 = load i32, i32* %13, align 4, !dbg !1273
  %86 = call i8* @parse_special(i8** %8, %struct._SERVER_REC* %81, i8* %82, i8** %83, i32* %18, i32* %84, i32 %85), !dbg !1274
  store i8* %86, i8** %20, align 8, !dbg !1275
  %87 = load i8*, i8** %20, align 8, !dbg !1276
  %88 = icmp ne i8* %87, null, !dbg !1278
  br i1 %88, label %89, label %98, !dbg !1279

; <label>:89:                                     ; preds = %80
  %90 = load %struct._GString*, %struct._GString** %17, align 8, !dbg !1280
  %91 = load i8*, i8** %20, align 8, !dbg !1282
  %92 = load i32, i32* %13, align 4, !dbg !1283
  call void @gstring_append_escaped(%struct._GString* %90, i8* %91, i32 %92), !dbg !1284
  %93 = load i32, i32* %18, align 4, !dbg !1285
  %94 = icmp ne i32 %93, 0, !dbg !1285
  br i1 %94, label %95, label %97, !dbg !1287

; <label>:95:                                     ; preds = %89
  %96 = load i8*, i8** %20, align 8, !dbg !1288
  call void @g_free(i8* %96), !dbg !1290
  br label %97, !dbg !1290

; <label>:97:                                     ; preds = %95, %89
  br label %98, !dbg !1291

; <label>:98:                                     ; preds = %97, %80
  store i8 0, i8* %14, align 1, !dbg !1292
  br label %118, !dbg !1293

; <label>:99:                                     ; preds = %76
  %100 = load i8*, i8** %8, align 8, !dbg !1294
  %101 = load i8, i8* %100, align 1, !dbg !1297
  %102 = sext i8 %101 to i32, !dbg !1297
  %103 = icmp eq i32 %102, 92, !dbg !1298
  br i1 %103, label %109, label %104, !dbg !1299

; <label>:104:                                    ; preds = %99
  %105 = load i8*, i8** %8, align 8, !dbg !1300
  %106 = load i8, i8* %105, align 1, !dbg !1302
  %107 = sext i8 %106 to i32, !dbg !1302
  %108 = icmp eq i32 %107, 36, !dbg !1303
  br i1 %108, label %109, label %112, !dbg !1304

; <label>:109:                                    ; preds = %104, %99
  %110 = load i8*, i8** %8, align 8, !dbg !1305
  %111 = load i8, i8* %110, align 1, !dbg !1306
  store i8 %111, i8* %14, align 1, !dbg !1307
  br label %117, !dbg !1308

; <label>:112:                                    ; preds = %104
  %113 = load %struct._GString*, %struct._GString** %17, align 8, !dbg !1309
  %114 = load i8*, i8** %8, align 8, !dbg !1310
  %115 = load i8, i8* %114, align 1, !dbg !1311
  %116 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %113, i8 signext %115), !dbg !1312
  br label %117

; <label>:117:                                    ; preds = %112, %109
  br label %118

; <label>:118:                                    ; preds = %117, %98
  br label %119

; <label>:119:                                    ; preds = %118, %75
  %120 = load i8*, i8** %8, align 8, !dbg !1313
  %121 = getelementptr inbounds i8, i8* %120, i32 1, !dbg !1313
  store i8* %121, i8** %8, align 8, !dbg !1313
  br label %43, !dbg !1314, !llvm.loop !1316

; <label>:122:                                    ; preds = %43
  %123 = load i8**, i8*** %15, align 8, !dbg !1317
  call void @g_strfreev(i8** %123), !dbg !1318
  %124 = load %struct._GString*, %struct._GString** %17, align 8, !dbg !1319
  %125 = getelementptr inbounds %struct._GString, %struct._GString* %124, i32 0, i32 0, !dbg !1320
  %126 = load i8*, i8** %125, align 8, !dbg !1320
  store i8* %126, i8** %16, align 8, !dbg !1321
  %127 = load %struct._GString*, %struct._GString** %17, align 8, !dbg !1322
  %128 = call i8* @g_string_free(%struct._GString* %127, i32 0), !dbg !1323
  %129 = load i8*, i8** %16, align 8, !dbg !1324
  store i8* %129, i8** %7, align 8, !dbg !1325
  br label %130, !dbg !1325

; <label>:130:                                    ; preds = %122, %32, %25
  %131 = load i8*, i8** %7, align 8, !dbg !1326
  ret i8* %131, !dbg !1326
}

declare noalias i8** @g_strsplit(i8*, i8*, i32) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._GString* @g_string_append_c_inline(%struct._GString*, i8 signext) #3 !dbg !1327 {
  %3 = alloca %struct._GString*, align 8
  %4 = alloca i8, align 1
  store %struct._GString* %0, %struct._GString** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._GString** %3, metadata !1330, metadata !462), !dbg !1331
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !1332, metadata !462), !dbg !1333
  %5 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1334
  %6 = getelementptr inbounds %struct._GString, %struct._GString* %5, i32 0, i32 1, !dbg !1336
  %7 = load i64, i64* %6, align 8, !dbg !1336
  %8 = add i64 %7, 1, !dbg !1337
  %9 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1338
  %10 = getelementptr inbounds %struct._GString, %struct._GString* %9, i32 0, i32 2, !dbg !1339
  %11 = load i64, i64* %10, align 8, !dbg !1339
  %12 = icmp ult i64 %8, %11, !dbg !1340
  br i1 %12, label %13, label %30, !dbg !1341

; <label>:13:                                     ; preds = %2
  %14 = load i8, i8* %4, align 1, !dbg !1342
  %15 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1344
  %16 = getelementptr inbounds %struct._GString, %struct._GString* %15, i32 0, i32 1, !dbg !1345
  %17 = load i64, i64* %16, align 8, !dbg !1346
  %18 = add i64 %17, 1, !dbg !1346
  store i64 %18, i64* %16, align 8, !dbg !1346
  %19 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1347
  %20 = getelementptr inbounds %struct._GString, %struct._GString* %19, i32 0, i32 0, !dbg !1348
  %21 = load i8*, i8** %20, align 8, !dbg !1348
  %22 = getelementptr inbounds i8, i8* %21, i64 %17, !dbg !1347
  store i8 %14, i8* %22, align 1, !dbg !1349
  %23 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1350
  %24 = getelementptr inbounds %struct._GString, %struct._GString* %23, i32 0, i32 1, !dbg !1351
  %25 = load i64, i64* %24, align 8, !dbg !1351
  %26 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1352
  %27 = getelementptr inbounds %struct._GString, %struct._GString* %26, i32 0, i32 0, !dbg !1353
  %28 = load i8*, i8** %27, align 8, !dbg !1353
  %29 = getelementptr inbounds i8, i8* %28, i64 %25, !dbg !1352
  store i8 0, i8* %29, align 1, !dbg !1354
  br label %34, !dbg !1355

; <label>:30:                                     ; preds = %2
  %31 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1356
  %32 = load i8, i8* %4, align 1, !dbg !1357
  %33 = call %struct._GString* @g_string_insert_c(%struct._GString* %31, i64 -1, i8 signext %32), !dbg !1358
  br label %34

; <label>:34:                                     ; preds = %30, %13
  %35 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1359
  ret %struct._GString* %35, !dbg !1360
}

declare i32 @expand_escape(i8**) #2

; Function Attrs: nounwind uwtable
define internal void @gstring_append_escaped(%struct._GString*, i8*, i32) #0 !dbg !1361 {
  %4 = alloca %struct._GString*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [4 x i8], align 1
  %8 = alloca i8*, align 8
  store %struct._GString* %0, %struct._GString** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._GString** %4, metadata !1364, metadata !462), !dbg !1365
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1366, metadata !462), !dbg !1367
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1368, metadata !462), !dbg !1369
  call void @llvm.dbg.declare(metadata [4 x i8]* %7, metadata !1370, metadata !462), !dbg !1374
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1375, metadata !462), !dbg !1376
  %9 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i32 0, i32 0, !dbg !1377
  store i8* %9, i8** %8, align 8, !dbg !1378
  %10 = load i32, i32* %6, align 4, !dbg !1379
  %11 = and i32 %10, 4, !dbg !1381
  %12 = icmp ne i32 %11, 0, !dbg !1381
  br i1 %12, label %13, label %16, !dbg !1382

; <label>:13:                                     ; preds = %3
  %14 = load i8*, i8** %8, align 8, !dbg !1383
  %15 = getelementptr inbounds i8, i8* %14, i32 1, !dbg !1383
  store i8* %15, i8** %8, align 8, !dbg !1383
  store i8 37, i8* %14, align 1, !dbg !1384
  br label %16, !dbg !1385

; <label>:16:                                     ; preds = %13, %3
  %17 = load i32, i32* %6, align 4, !dbg !1386
  %18 = and i32 %17, 8, !dbg !1388
  %19 = icmp ne i32 %18, 0, !dbg !1388
  br i1 %19, label %20, label %25, !dbg !1389

; <label>:20:                                     ; preds = %16
  %21 = load i8*, i8** %8, align 8, !dbg !1390
  %22 = getelementptr inbounds i8, i8* %21, i32 1, !dbg !1390
  store i8* %22, i8** %8, align 8, !dbg !1390
  store i8 123, i8* %21, align 1, !dbg !1392
  %23 = load i8*, i8** %8, align 8, !dbg !1393
  %24 = getelementptr inbounds i8, i8* %23, i32 1, !dbg !1393
  store i8* %24, i8** %8, align 8, !dbg !1393
  store i8 125, i8* %23, align 1, !dbg !1394
  br label %25, !dbg !1395

; <label>:25:                                     ; preds = %20, %16
  %26 = load i8*, i8** %8, align 8, !dbg !1396
  %27 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i32 0, i32 0, !dbg !1398
  %28 = icmp eq i8* %26, %27, !dbg !1399
  br i1 %28, label %29, label %33, !dbg !1400

; <label>:29:                                     ; preds = %25
  %30 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !1401
  %31 = load i8*, i8** %5, align 8, !dbg !1403
  %32 = call %struct._GString* @g_string_append(%struct._GString* %30, i8* %31), !dbg !1404
  br label %69, !dbg !1405

; <label>:33:                                     ; preds = %25
  %34 = load i8*, i8** %8, align 8, !dbg !1406
  store i8 0, i8* %34, align 1, !dbg !1407
  br label %35, !dbg !1408

; <label>:35:                                     ; preds = %62, %33
  %36 = load i8*, i8** %5, align 8, !dbg !1409
  %37 = load i8, i8* %36, align 1, !dbg !1411
  %38 = sext i8 %37 to i32, !dbg !1411
  %39 = icmp ne i32 %38, 0, !dbg !1412
  br i1 %39, label %40, label %69, !dbg !1413

; <label>:40:                                     ; preds = %35
  %41 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i32 0, i32 0, !dbg !1414
  store i8* %41, i8** %8, align 8, !dbg !1417
  br label %42, !dbg !1418

; <label>:42:                                     ; preds = %59, %40
  %43 = load i8*, i8** %8, align 8, !dbg !1419
  %44 = load i8, i8* %43, align 1, !dbg !1422
  %45 = sext i8 %44 to i32, !dbg !1422
  %46 = icmp ne i32 %45, 0, !dbg !1423
  br i1 %46, label %47, label %62, !dbg !1424

; <label>:47:                                     ; preds = %42
  %48 = load i8*, i8** %5, align 8, !dbg !1425
  %49 = load i8, i8* %48, align 1, !dbg !1428
  %50 = sext i8 %49 to i32, !dbg !1428
  %51 = load i8*, i8** %8, align 8, !dbg !1429
  %52 = load i8, i8* %51, align 1, !dbg !1430
  %53 = sext i8 %52 to i32, !dbg !1430
  %54 = icmp eq i32 %50, %53, !dbg !1431
  br i1 %54, label %55, label %58, !dbg !1432

; <label>:55:                                     ; preds = %47
  %56 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !1433
  %57 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %56, i8 signext 37), !dbg !1435
  br label %62, !dbg !1436

; <label>:58:                                     ; preds = %47
  br label %59, !dbg !1437

; <label>:59:                                     ; preds = %58
  %60 = load i8*, i8** %8, align 8, !dbg !1438
  %61 = getelementptr inbounds i8, i8* %60, i32 1, !dbg !1438
  store i8* %61, i8** %8, align 8, !dbg !1438
  br label %42, !dbg !1440, !llvm.loop !1441

; <label>:62:                                     ; preds = %55, %42
  %63 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !1443
  %64 = load i8*, i8** %5, align 8, !dbg !1444
  %65 = load i8, i8* %64, align 1, !dbg !1445
  %66 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %63, i8 signext %65), !dbg !1446
  %67 = load i8*, i8** %5, align 8, !dbg !1447
  %68 = getelementptr inbounds i8, i8* %67, i32 1, !dbg !1447
  store i8* %68, i8** %5, align 8, !dbg !1447
  br label %35, !dbg !1448, !llvm.loop !1450

; <label>:69:                                     ; preds = %29, %35
  ret void, !dbg !1451
}

declare void @g_strfreev(i8**) #2

; Function Attrs: nounwind uwtable
define void @eval_special_string(i8*, i8*, %struct._SERVER_REC*, i8*) #0 !dbg !1452 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._SERVER_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct._GSList*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1455, metadata !462), !dbg !1456
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1457, metadata !462), !dbg !1458
  store %struct._SERVER_REC* %2, %struct._SERVER_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %7, metadata !1459, metadata !462), !dbg !1460
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1461, metadata !462), !dbg !1462
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1463, metadata !462), !dbg !1464
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1465, metadata !462), !dbg !1466
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1467, metadata !462), !dbg !1468
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1469, metadata !462), !dbg !1470
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1471, metadata !462), !dbg !1472
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1473, metadata !462), !dbg !1474
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1475, metadata !462), !dbg !1476
  call void @llvm.dbg.declare(metadata %struct._GSList** %16, metadata !1477, metadata !462), !dbg !1478
  store %struct._GSList* null, %struct._GSList** %16, align 8, !dbg !1479
  store i32 0, i32* %15, align 4, !dbg !1480
  %19 = call i8* @settings_get_str(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0)), !dbg !1481
  store i8* %19, i8** %9, align 8, !dbg !1482
  %20 = load i8*, i8** %5, align 8, !dbg !1483
  %21 = call noalias i8* @g_strdup(i8* %20), !dbg !1484
  store i8* %21, i8** %11, align 8, !dbg !1485
  store i8* %21, i8** %12, align 8, !dbg !1486
  store i8* %21, i8** %10, align 8, !dbg !1487
  br label %22, !dbg !1488, !llvm.loop !1489

; <label>:22:                                     ; preds = %100, %4
  %23 = load i8*, i8** %11, align 8, !dbg !1490
  %24 = getelementptr inbounds i8, i8* %23, i64 0, !dbg !1493
  %25 = load i8, i8* %24, align 1, !dbg !1493
  %26 = sext i8 %25 to i32, !dbg !1493
  %27 = icmp eq i32 %26, 59, !dbg !1494
  br i1 %27, label %28, label %56, !dbg !1495

; <label>:28:                                     ; preds = %22
  %29 = load i8*, i8** %12, align 8, !dbg !1496
  %30 = load i8*, i8** %11, align 8, !dbg !1498
  %31 = icmp eq i8* %29, %30, !dbg !1499
  br i1 %31, label %44, label %32, !dbg !1500

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %11, align 8, !dbg !1501
  %34 = getelementptr inbounds i8, i8* %33, i64 -1, !dbg !1503
  %35 = load i8, i8* %34, align 1, !dbg !1503
  %36 = sext i8 %35 to i32, !dbg !1503
  %37 = icmp ne i32 %36, 92, !dbg !1504
  br i1 %37, label %38, label %56, !dbg !1505

; <label>:38:                                     ; preds = %32
  %39 = load i8*, i8** %11, align 8, !dbg !1506
  %40 = getelementptr inbounds i8, i8* %39, i64 -1, !dbg !1508
  %41 = load i8, i8* %40, align 1, !dbg !1508
  %42 = sext i8 %41 to i32, !dbg !1508
  %43 = icmp ne i32 %42, 36, !dbg !1509
  br i1 %43, label %44, label %56, !dbg !1510

; <label>:44:                                     ; preds = %38, %28
  %45 = load i8*, i8** %11, align 8, !dbg !1511
  %46 = getelementptr inbounds i8, i8* %45, i32 1, !dbg !1511
  store i8* %46, i8** %11, align 8, !dbg !1511
  store i8 0, i8* %45, align 1, !dbg !1513
  br label %47, !dbg !1514

; <label>:47:                                     ; preds = %52, %44
  %48 = load i8*, i8** %11, align 8, !dbg !1515
  %49 = load i8, i8* %48, align 1, !dbg !1517
  %50 = sext i8 %49 to i32, !dbg !1517
  %51 = icmp eq i32 %50, 32, !dbg !1518
  br i1 %51, label %52, label %55, !dbg !1519

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %11, align 8, !dbg !1520
  %54 = getelementptr inbounds i8, i8* %53, i32 1, !dbg !1520
  store i8* %54, i8** %11, align 8, !dbg !1520
  br label %47, !dbg !1522, !llvm.loop !1523

; <label>:55:                                     ; preds = %47
  br label %65, !dbg !1524

; <label>:56:                                     ; preds = %38, %32, %22
  %57 = load i8*, i8** %11, align 8, !dbg !1525
  %58 = load i8, i8* %57, align 1, !dbg !1528
  %59 = sext i8 %58 to i32, !dbg !1528
  %60 = icmp ne i32 %59, 0, !dbg !1529
  br i1 %60, label %61, label %64, !dbg !1528

; <label>:61:                                     ; preds = %56
  %62 = load i8*, i8** %11, align 8, !dbg !1530
  %63 = getelementptr inbounds i8, i8* %62, i32 1, !dbg !1530
  store i8* %63, i8** %11, align 8, !dbg !1530
  br label %100, !dbg !1532

; <label>:64:                                     ; preds = %56
  br label %65

; <label>:65:                                     ; preds = %64, %55
  %66 = load i8*, i8** %12, align 8, !dbg !1533
  %67 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !1534
  %68 = load i8*, i8** %8, align 8, !dbg !1535
  %69 = load i8*, i8** %6, align 8, !dbg !1536
  %70 = call i8* @parse_special_string(i8* %66, %struct._SERVER_REC* %67, i8* %68, i8* %69, i32* %14, i32 0), !dbg !1537
  store i8* %70, i8** %13, align 8, !dbg !1538
  %71 = load i8*, i8** %13, align 8, !dbg !1539
  %72 = load i8, i8* %71, align 1, !dbg !1541
  %73 = sext i8 %72 to i32, !dbg !1541
  %74 = icmp ne i32 %73, 0, !dbg !1542
  br i1 %74, label %75, label %98, !dbg !1543

; <label>:75:                                     ; preds = %65
  %76 = load i32, i32* %14, align 4, !dbg !1544
  %77 = icmp ne i32 %76, 0, !dbg !1544
  br i1 %77, label %78, label %79, !dbg !1547

; <label>:78:                                     ; preds = %75
  store i32 1, i32* %15, align 4, !dbg !1548
  br label %79, !dbg !1550

; <label>:79:                                     ; preds = %78, %75
  %80 = load i8*, i8** %9, align 8, !dbg !1551
  %81 = load i8*, i8** %13, align 8, !dbg !1553
  %82 = load i8, i8* %81, align 1, !dbg !1554
  %83 = sext i8 %82 to i32, !dbg !1554
  %84 = call i8* @strchr(i8* %80, i32 %83) #6, !dbg !1555
  %85 = icmp eq i8* %84, null, !dbg !1556
  br i1 %85, label %86, label %94, !dbg !1557

; <label>:86:                                     ; preds = %79
  call void @llvm.dbg.declare(metadata i8** %17, metadata !1558, metadata !462), !dbg !1560
  %87 = load i8*, i8** %13, align 8, !dbg !1561
  store i8* %87, i8** %17, align 8, !dbg !1560
  %88 = load i8*, i8** %9, align 8, !dbg !1562
  %89 = load i8, i8* %88, align 1, !dbg !1563
  %90 = sext i8 %89 to i32, !dbg !1563
  %91 = load i8*, i8** %17, align 8, !dbg !1564
  %92 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i32 %90, i8* %91), !dbg !1565
  store i8* %92, i8** %13, align 8, !dbg !1566
  %93 = load i8*, i8** %17, align 8, !dbg !1567
  call void @g_free(i8* %93), !dbg !1568
  br label %94, !dbg !1569

; <label>:94:                                     ; preds = %86, %79
  %95 = load %struct._GSList*, %struct._GSList** %16, align 8, !dbg !1570
  %96 = load i8*, i8** %13, align 8, !dbg !1571
  %97 = call %struct._GSList* @g_slist_append(%struct._GSList* %95, i8* %96), !dbg !1572
  store %struct._GSList* %97, %struct._GSList** %16, align 8, !dbg !1573
  br label %98, !dbg !1574

; <label>:98:                                     ; preds = %94, %65
  %99 = load i8*, i8** %11, align 8, !dbg !1575
  store i8* %99, i8** %12, align 8, !dbg !1576
  br label %100, !dbg !1577

; <label>:100:                                    ; preds = %98, %61
  %101 = load i8*, i8** %12, align 8, !dbg !1578
  %102 = load i8, i8* %101, align 1, !dbg !1580
  %103 = sext i8 %102 to i32, !dbg !1580
  %104 = icmp ne i32 %103, 0, !dbg !1581
  br i1 %104, label %22, label %105, !dbg !1582, !llvm.loop !1489

; <label>:105:                                    ; preds = %100
  br label %106, !dbg !1583

; <label>:106:                                    ; preds = %143, %105
  %107 = load %struct._GSList*, %struct._GSList** %16, align 8, !dbg !1584
  %108 = icmp ne %struct._GSList* %107, null, !dbg !1585
  br i1 %108, label %109, label %150, !dbg !1586

; <label>:109:                                    ; preds = %106
  %110 = load %struct._GSList*, %struct._GSList** %16, align 8, !dbg !1587
  %111 = getelementptr inbounds %struct._GSList, %struct._GSList* %110, i32 0, i32 0, !dbg !1589
  %112 = load i8*, i8** %111, align 8, !dbg !1589
  store i8* %112, i8** %13, align 8, !dbg !1590
  %113 = load i32, i32* %15, align 4, !dbg !1591
  %114 = icmp ne i32 %113, 0, !dbg !1591
  br i1 %114, label %126, label %115, !dbg !1593

; <label>:115:                                    ; preds = %109
  %116 = load i8*, i8** %6, align 8, !dbg !1594
  %117 = load i8, i8* %116, align 1, !dbg !1596
  %118 = sext i8 %117 to i32, !dbg !1596
  %119 = icmp ne i32 %118, 0, !dbg !1597
  br i1 %119, label %120, label %126, !dbg !1598

; <label>:120:                                    ; preds = %115
  call void @llvm.dbg.declare(metadata i8** %18, metadata !1599, metadata !462), !dbg !1601
  %121 = load i8*, i8** %13, align 8, !dbg !1602
  store i8* %121, i8** %18, align 8, !dbg !1601
  %122 = load i8*, i8** %18, align 8, !dbg !1603
  %123 = load i8*, i8** %6, align 8, !dbg !1604
  %124 = call noalias i8* (i8*, ...) @g_strconcat(i8* %122, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8* %123, i8* null), !dbg !1605
  store i8* %124, i8** %13, align 8, !dbg !1606
  %125 = load i8*, i8** %18, align 8, !dbg !1607
  call void @g_free(i8* %125), !dbg !1608
  br label %126, !dbg !1609

; <label>:126:                                    ; preds = %120, %115, %109
  %127 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !1610
  %128 = icmp ne %struct._SERVER_REC* %127, null, !dbg !1612
  br i1 %128, label %129, label %131, !dbg !1613

; <label>:129:                                    ; preds = %126
  %130 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !1614
  call void @server_ref(%struct._SERVER_REC* %130), !dbg !1615
  br label %131, !dbg !1615

; <label>:131:                                    ; preds = %129, %126
  %132 = load i8*, i8** %13, align 8, !dbg !1616
  %133 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !1617
  %134 = load i8*, i8** %8, align 8, !dbg !1618
  %135 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i32 3, i8* %132, %struct._SERVER_REC* %133, i8* %134), !dbg !1619
  %136 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !1620
  %137 = icmp ne %struct._SERVER_REC* %136, null, !dbg !1622
  br i1 %137, label %138, label %143, !dbg !1623

; <label>:138:                                    ; preds = %131
  %139 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !1624
  %140 = call i32 @server_unref(%struct._SERVER_REC* %139), !dbg !1626
  %141 = icmp ne i32 %140, 0, !dbg !1626
  br i1 %141, label %143, label %142, !dbg !1627

; <label>:142:                                    ; preds = %138
  store %struct._SERVER_REC* null, %struct._SERVER_REC** %7, align 8, !dbg !1628
  store i8* null, i8** %8, align 8, !dbg !1630
  br label %143, !dbg !1631

; <label>:143:                                    ; preds = %142, %138, %131
  %144 = load %struct._GSList*, %struct._GSList** %16, align 8, !dbg !1632
  %145 = load %struct._GSList*, %struct._GSList** %16, align 8, !dbg !1633
  %146 = getelementptr inbounds %struct._GSList, %struct._GSList* %145, i32 0, i32 0, !dbg !1634
  %147 = load i8*, i8** %146, align 8, !dbg !1634
  %148 = call %struct._GSList* @g_slist_remove(%struct._GSList* %144, i8* %147), !dbg !1635
  store %struct._GSList* %148, %struct._GSList** %16, align 8, !dbg !1636
  %149 = load i8*, i8** %13, align 8, !dbg !1637
  call void @g_free(i8* %149), !dbg !1638
  br label %106, !dbg !1639, !llvm.loop !1641

; <label>:150:                                    ; preds = %106
  %151 = load i8*, i8** %10, align 8, !dbg !1642
  call void @g_free(i8* %151), !dbg !1643
  ret void, !dbg !1644
}

declare i8* @settings_get_str(i8*) #2

declare noalias i8* @g_strdup(i8*) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

declare noalias i8* @g_strdup_printf(i8*, ...) #2

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #2

declare noalias i8* @g_strconcat(i8*, ...) #2

declare void @server_ref(%struct._SERVER_REC*) #2

declare i32 @signal_emit(i8*, i32, ...) #2

declare i32 @server_unref(%struct._SERVER_REC*) #2

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #2

; Function Attrs: nounwind uwtable
define void @special_history_func_set(i8* (i8*, i8*, i32*)*) #0 !dbg !1645 {
  %2 = alloca i8* (i8*, i8*, i32*)*, align 8
  store i8* (i8*, i8*, i32*)* %0, i8* (i8*, i8*, i32*)** %2, align 8
  call void @llvm.dbg.declare(metadata i8* (i8*, i8*, i32*)** %2, metadata !1648, metadata !462), !dbg !1649
  %3 = load i8* (i8*, i8*, i32*)*, i8* (i8*, i8*, i32*)** %2, align 8, !dbg !1650
  store i8* (i8*, i8*, i32*)* %3, i8* (i8*, i8*, i32*)** @history_func, align 8, !dbg !1651
  ret void, !dbg !1652
}

; Function Attrs: nounwind uwtable
define void @special_vars_add_signals(i8*, i32, void (i8*, i8*, i8*, i8*, i8*, i8*)**) #0 !dbg !1653 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca void (i8*, i8*, i8*, i8*, i8*, i8*)**, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1662, metadata !462), !dbg !1663
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1664, metadata !462), !dbg !1665
  store void (i8*, i8*, i8*, i8*, i8*, i8*)** %2, void (i8*, i8*, i8*, i8*, i8*, i8*)*** %6, align 8
  call void @llvm.dbg.declare(metadata void (i8*, i8*, i8*, i8*, i8*, i8*)*** %6, metadata !1666, metadata !462), !dbg !1667
  %7 = load i8*, i8** %4, align 8, !dbg !1668
  %8 = load i32, i32* %5, align 4, !dbg !1669
  %9 = load void (i8*, i8*, i8*, i8*, i8*, i8*)**, void (i8*, i8*, i8*, i8*, i8*, i8*)*** %6, align 8, !dbg !1670
  %10 = call i32* @special_vars_signals_task(i8* %7, i32 %8, void (i8*, i8*, i8*, i8*, i8*, i8*)** %9, i32 1), !dbg !1671
  ret void, !dbg !1672
}

; Function Attrs: nounwind uwtable
define internal i32* @special_vars_signals_task(i8*, i32, void (i8*, i8*, i8*, i8*, i8*, i8*)**, i32) #0 !dbg !1673 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca void (i8*, i8*, i8*, i8*, i8*, i8*)**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct._GHashTable*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1676, metadata !462), !dbg !1677
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1678, metadata !462), !dbg !1679
  store void (i8*, i8*, i8*, i8*, i8*, i8*)** %2, void (i8*, i8*, i8*, i8*, i8*, i8*)*** %8, align 8
  call void @llvm.dbg.declare(metadata void (i8*, i8*, i8*, i8*, i8*, i8*)*** %8, metadata !1680, metadata !462), !dbg !1681
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1682, metadata !462), !dbg !1683
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %10, metadata !1684, metadata !462), !dbg !1685
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1686, metadata !462), !dbg !1687
  call void @llvm.dbg.declare(metadata i32* %12, metadata !1688, metadata !462), !dbg !1689
  call void @llvm.dbg.declare(metadata i32** %13, metadata !1690, metadata !462), !dbg !1691
  store %struct._GHashTable* null, %struct._GHashTable** %10, align 8, !dbg !1692
  br label %14, !dbg !1693

; <label>:14:                                     ; preds = %81, %50, %4
  %15 = load i8*, i8** %6, align 8, !dbg !1694
  %16 = load i8, i8* %15, align 1, !dbg !1696
  %17 = sext i8 %16 to i32, !dbg !1696
  %18 = icmp ne i32 %17, 0, !dbg !1697
  br i1 %18, label %19, label %82, !dbg !1698

; <label>:19:                                     ; preds = %14
  %20 = load i8*, i8** %6, align 8, !dbg !1699
  %21 = load i8, i8* %20, align 1, !dbg !1702
  %22 = sext i8 %21 to i32, !dbg !1702
  %23 = icmp eq i32 %22, 92, !dbg !1703
  br i1 %23, label %24, label %33, !dbg !1704

; <label>:24:                                     ; preds = %19
  %25 = load i8*, i8** %6, align 8, !dbg !1705
  %26 = getelementptr inbounds i8, i8* %25, i64 1, !dbg !1705
  %27 = load i8, i8* %26, align 1, !dbg !1705
  %28 = sext i8 %27 to i32, !dbg !1705
  %29 = icmp ne i32 %28, 0, !dbg !1707
  br i1 %29, label %30, label %33, !dbg !1708

; <label>:30:                                     ; preds = %24
  %31 = load i8*, i8** %6, align 8, !dbg !1709
  %32 = getelementptr inbounds i8, i8* %31, i64 2, !dbg !1709
  store i8* %32, i8** %6, align 8, !dbg !1709
  br label %81, !dbg !1711

; <label>:33:                                     ; preds = %24, %19
  %34 = load i8*, i8** %6, align 8, !dbg !1712
  %35 = load i8, i8* %34, align 1, !dbg !1715
  %36 = sext i8 %35 to i32, !dbg !1715
  %37 = icmp eq i32 %36, 36, !dbg !1716
  br i1 %37, label %38, label %77, !dbg !1717

; <label>:38:                                     ; preds = %33
  %39 = load i8*, i8** %6, align 8, !dbg !1718
  %40 = getelementptr inbounds i8, i8* %39, i64 1, !dbg !1718
  %41 = load i8, i8* %40, align 1, !dbg !1718
  %42 = sext i8 %41 to i32, !dbg !1718
  %43 = icmp ne i32 %42, 0, !dbg !1720
  br i1 %43, label %44, label %77, !dbg !1721

; <label>:44:                                     ; preds = %38
  %45 = load i8*, i8** %6, align 8, !dbg !1722
  %46 = getelementptr inbounds i8, i8* %45, i32 1, !dbg !1722
  store i8* %46, i8** %6, align 8, !dbg !1722
  %47 = call i8* @parse_special(i8** %6, %struct._SERVER_REC* null, i8* null, i8** null, i32* %12, i32* null, i32 1), !dbg !1724
  store i8* %47, i8** %11, align 8, !dbg !1725
  %48 = load i8*, i8** %11, align 8, !dbg !1726
  %49 = icmp eq i8* %48, null, !dbg !1728
  br i1 %49, label %50, label %51, !dbg !1729

; <label>:50:                                     ; preds = %44
  br label %14, !dbg !1730, !llvm.loop !1731

; <label>:51:                                     ; preds = %44
  %52 = load i32, i32* %9, align 4, !dbg !1732
  switch i32 %52, label %71 [
    i32 1, label %53
    i32 2, label %57
    i32 3, label %61
  ], !dbg !1733

; <label>:53:                                     ; preds = %51
  %54 = load i8*, i8** %11, align 8, !dbg !1734
  %55 = load i32, i32* %7, align 4, !dbg !1736
  %56 = load void (i8*, i8*, i8*, i8*, i8*, i8*)**, void (i8*, i8*, i8*, i8*, i8*, i8*)*** %8, align 8, !dbg !1737
  call void @expando_bind(i8* %54, i32 %55, void (i8*, i8*, i8*, i8*, i8*, i8*)** %56), !dbg !1738
  br label %71, !dbg !1739

; <label>:57:                                     ; preds = %51
  %58 = load i8*, i8** %11, align 8, !dbg !1740
  %59 = load i32, i32* %7, align 4, !dbg !1741
  %60 = load void (i8*, i8*, i8*, i8*, i8*, i8*)**, void (i8*, i8*, i8*, i8*, i8*, i8*)*** %8, align 8, !dbg !1742
  call void @expando_unbind(i8* %58, i32 %59, void (i8*, i8*, i8*, i8*, i8*, i8*)** %60), !dbg !1743
  br label %71, !dbg !1744

; <label>:61:                                     ; preds = %51
  %62 = load i8*, i8** %11, align 8, !dbg !1745
  %63 = call i32* @expando_get_signals(i8* %62), !dbg !1746
  store i32* %63, i32** %13, align 8, !dbg !1747
  %64 = load i32*, i32** %13, align 8, !dbg !1748
  %65 = icmp ne i32* %64, null, !dbg !1750
  br i1 %65, label %66, label %70, !dbg !1751

; <label>:66:                                     ; preds = %61
  %67 = load i32*, i32** %13, align 8, !dbg !1752
  call void @update_signals_hash(%struct._GHashTable** %10, i32* %67), !dbg !1754
  %68 = load i32*, i32** %13, align 8, !dbg !1755
  %69 = bitcast i32* %68 to i8*, !dbg !1755
  call void @g_free(i8* %69), !dbg !1756
  br label %70, !dbg !1757

; <label>:70:                                     ; preds = %66, %61
  br label %71, !dbg !1758

; <label>:71:                                     ; preds = %51, %70, %57, %53
  %72 = load i32, i32* %12, align 4, !dbg !1759
  %73 = icmp ne i32 %72, 0, !dbg !1759
  br i1 %73, label %74, label %76, !dbg !1761

; <label>:74:                                     ; preds = %71
  %75 = load i8*, i8** %11, align 8, !dbg !1762
  call void @g_free(i8* %75), !dbg !1764
  br label %76, !dbg !1764

; <label>:76:                                     ; preds = %74, %71
  br label %80, !dbg !1765

; <label>:77:                                     ; preds = %38, %33
  %78 = load i8*, i8** %6, align 8, !dbg !1766
  %79 = getelementptr inbounds i8, i8* %78, i32 1, !dbg !1766
  store i8* %79, i8** %6, align 8, !dbg !1766
  br label %80

; <label>:80:                                     ; preds = %77, %76
  br label %81

; <label>:81:                                     ; preds = %80, %30
  br label %14, !dbg !1768, !llvm.loop !1731

; <label>:82:                                     ; preds = %14
  %83 = load i32, i32* %9, align 4, !dbg !1770
  %84 = icmp eq i32 %83, 3, !dbg !1772
  br i1 %84, label %85, label %88, !dbg !1773

; <label>:85:                                     ; preds = %82
  %86 = load %struct._GHashTable*, %struct._GHashTable** %10, align 8, !dbg !1774
  %87 = call i32* @get_signals_list(%struct._GHashTable* %86), !dbg !1775
  store i32* %87, i32** %5, align 8, !dbg !1776
  br label %89, !dbg !1776

; <label>:88:                                     ; preds = %82
  store i32* null, i32** %5, align 8, !dbg !1777
  br label %89, !dbg !1777

; <label>:89:                                     ; preds = %88, %85
  %90 = load i32*, i32** %5, align 8, !dbg !1778
  ret i32* %90, !dbg !1778
}

; Function Attrs: nounwind uwtable
define void @special_vars_remove_signals(i8*, i32, void (i8*, i8*, i8*, i8*, i8*, i8*)**) #0 !dbg !1779 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca void (i8*, i8*, i8*, i8*, i8*, i8*)**, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1780, metadata !462), !dbg !1781
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1782, metadata !462), !dbg !1783
  store void (i8*, i8*, i8*, i8*, i8*, i8*)** %2, void (i8*, i8*, i8*, i8*, i8*, i8*)*** %6, align 8
  call void @llvm.dbg.declare(metadata void (i8*, i8*, i8*, i8*, i8*, i8*)*** %6, metadata !1784, metadata !462), !dbg !1785
  %7 = load i8*, i8** %4, align 8, !dbg !1786
  %8 = load i32, i32* %5, align 4, !dbg !1787
  %9 = load void (i8*, i8*, i8*, i8*, i8*, i8*)**, void (i8*, i8*, i8*, i8*, i8*, i8*)*** %6, align 8, !dbg !1788
  %10 = call i32* @special_vars_signals_task(i8* %7, i32 %8, void (i8*, i8*, i8*, i8*, i8*, i8*)** %9, i32 2), !dbg !1789
  ret void, !dbg !1790
}

; Function Attrs: nounwind uwtable
define i32* @special_vars_get_signals(i8*) #0 !dbg !1791 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1794, metadata !462), !dbg !1795
  %3 = load i8*, i8** %2, align 8, !dbg !1796
  %4 = call i32* @special_vars_signals_task(i8* %3, i32 0, void (i8*, i8*, i8*, i8*, i8*, i8*)** null, i32 3), !dbg !1797
  ret i32* %4, !dbg !1798
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #5

declare i32 @parse_uint(i8*, i8**, i32, i32*) #2

; Function Attrs: nounwind uwtable
define internal i8* @get_history(i8**, i8*, i32*) #0 !dbg !1799 {
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !1802, metadata !462), !dbg !1803
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1804, metadata !462), !dbg !1805
  store i32* %2, i32** %6, align 8
  call void @llvm.dbg.declare(metadata i32** %6, metadata !1806, metadata !462), !dbg !1807
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1808, metadata !462), !dbg !1809
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1810, metadata !462), !dbg !1811
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1812, metadata !462), !dbg !1813
  %10 = load i8**, i8*** %4, align 8, !dbg !1814
  %11 = load i8*, i8** %10, align 8, !dbg !1815
  %12 = getelementptr inbounds i8, i8* %11, i32 1, !dbg !1815
  store i8* %12, i8** %10, align 8, !dbg !1815
  store i8* %12, i8** %7, align 8, !dbg !1816
  br label %13, !dbg !1817

; <label>:13:                                     ; preds = %27, %3
  %14 = load i8**, i8*** %4, align 8, !dbg !1818
  %15 = load i8*, i8** %14, align 8, !dbg !1820
  %16 = load i8, i8* %15, align 1, !dbg !1821
  %17 = sext i8 %16 to i32, !dbg !1821
  %18 = icmp ne i32 %17, 0, !dbg !1822
  br i1 %18, label %19, label %25, !dbg !1823

; <label>:19:                                     ; preds = %13
  %20 = load i8**, i8*** %4, align 8, !dbg !1824
  %21 = load i8*, i8** %20, align 8, !dbg !1826
  %22 = load i8, i8* %21, align 1, !dbg !1827
  %23 = sext i8 %22 to i32, !dbg !1827
  %24 = icmp ne i32 %23, 33, !dbg !1828
  br label %25

; <label>:25:                                     ; preds = %19, %13
  %26 = phi i1 [ false, %13 ], [ %24, %19 ]
  br i1 %26, label %27, label %31, !dbg !1829

; <label>:27:                                     ; preds = %25
  %28 = load i8**, i8*** %4, align 8, !dbg !1831
  %29 = load i8*, i8** %28, align 8, !dbg !1833
  %30 = getelementptr inbounds i8, i8* %29, i32 1, !dbg !1833
  store i8* %30, i8** %28, align 8, !dbg !1833
  br label %13, !dbg !1834, !llvm.loop !1835

; <label>:31:                                     ; preds = %25
  %32 = load i8* (i8*, i8*, i32*)*, i8* (i8*, i8*, i32*)** @history_func, align 8, !dbg !1836
  %33 = icmp eq i8* (i8*, i8*, i32*)* %32, null, !dbg !1838
  br i1 %33, label %34, label %35, !dbg !1839

; <label>:34:                                     ; preds = %31
  store i8* null, i8** %9, align 8, !dbg !1840
  br label %52, !dbg !1841

; <label>:35:                                     ; preds = %31
  %36 = load i8*, i8** %7, align 8, !dbg !1842
  %37 = load i8**, i8*** %4, align 8, !dbg !1844
  %38 = load i8*, i8** %37, align 8, !dbg !1845
  %39 = load i8*, i8** %7, align 8, !dbg !1846
  %40 = ptrtoint i8* %38 to i64, !dbg !1847
  %41 = ptrtoint i8* %39 to i64, !dbg !1847
  %42 = sub i64 %40, %41, !dbg !1847
  %43 = trunc i64 %42 to i32, !dbg !1848
  %44 = sext i32 %43 to i64, !dbg !1848
  %45 = call noalias i8* @g_strndup(i8* %36, i64 %44), !dbg !1849
  store i8* %45, i8** %8, align 8, !dbg !1850
  %46 = load i8* (i8*, i8*, i32*)*, i8* (i8*, i8*, i32*)** @history_func, align 8, !dbg !1851
  %47 = load i8*, i8** %8, align 8, !dbg !1852
  %48 = load i8*, i8** %5, align 8, !dbg !1853
  %49 = load i32*, i32** %6, align 8, !dbg !1854
  %50 = call i8* %46(i8* %47, i8* %48, i32* %49), !dbg !1851
  store i8* %50, i8** %9, align 8, !dbg !1855
  %51 = load i8*, i8** %8, align 8, !dbg !1856
  call void @g_free(i8* %51), !dbg !1857
  br label %52

; <label>:52:                                     ; preds = %35, %34
  %53 = load i8**, i8*** %4, align 8, !dbg !1858
  %54 = load i8*, i8** %53, align 8, !dbg !1860
  %55 = load i8, i8* %54, align 1, !dbg !1861
  %56 = sext i8 %55 to i32, !dbg !1861
  %57 = icmp eq i32 %56, 0, !dbg !1862
  br i1 %57, label %58, label %62, !dbg !1863

; <label>:58:                                     ; preds = %52
  %59 = load i8**, i8*** %4, align 8, !dbg !1864
  %60 = load i8*, i8** %59, align 8, !dbg !1866
  %61 = getelementptr inbounds i8, i8* %60, i32 -1, !dbg !1866
  store i8* %61, i8** %59, align 8, !dbg !1866
  br label %62, !dbg !1867

; <label>:62:                                     ; preds = %58, %52
  %63 = load i8*, i8** %9, align 8, !dbg !1868
  ret i8* %63, !dbg !1869
}

; Function Attrs: nounwind uwtable
define internal i8* @get_argument(i8**, i8**) #0 !dbg !1870 {
  %3 = alloca i8**, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct._GString*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !1873, metadata !462), !dbg !1874
  store i8** %1, i8*** %4, align 8
  call void @llvm.dbg.declare(metadata i8*** %4, metadata !1875, metadata !462), !dbg !1876
  call void @llvm.dbg.declare(metadata %struct._GString** %5, metadata !1877, metadata !462), !dbg !1878
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1879, metadata !462), !dbg !1880
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1881, metadata !462), !dbg !1882
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1883, metadata !462), !dbg !1884
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1885, metadata !462), !dbg !1886
  store i32 0, i32* %8, align 4, !dbg !1887
  store i32 -1, i32* %7, align 4, !dbg !1888
  %10 = load i8**, i8*** %4, align 8, !dbg !1889
  %11 = icmp eq i8** %10, null, !dbg !1890
  br i1 %11, label %12, label %13, !dbg !1889

; <label>:12:                                     ; preds = %2
  br label %16, !dbg !1891

; <label>:13:                                     ; preds = %2
  %14 = load i8**, i8*** %4, align 8, !dbg !1893
  %15 = call i32 @g_strv_length(i8** %14), !dbg !1895
  br label %16, !dbg !1896

; <label>:16:                                     ; preds = %13, %12
  %17 = phi i32 [ 0, %12 ], [ %15, %13 ], !dbg !1897
  store i32 %17, i32* %9, align 4, !dbg !1899
  %18 = load i8**, i8*** %3, align 8, !dbg !1900
  %19 = load i8*, i8** %18, align 8, !dbg !1902
  %20 = load i8, i8* %19, align 1, !dbg !1903
  %21 = sext i8 %20 to i32, !dbg !1903
  %22 = icmp eq i32 %21, 42, !dbg !1904
  br i1 %22, label %23, label %24, !dbg !1905

; <label>:23:                                     ; preds = %16
  br label %93, !dbg !1906

; <label>:24:                                     ; preds = %16
  %25 = load i8**, i8*** %3, align 8, !dbg !1908
  %26 = load i8*, i8** %25, align 8, !dbg !1911
  %27 = load i8, i8* %26, align 1, !dbg !1912
  %28 = sext i8 %27 to i32, !dbg !1912
  %29 = icmp eq i32 %28, 126, !dbg !1913
  br i1 %29, label %30, label %33, !dbg !1912

; <label>:30:                                     ; preds = %24
  %31 = load i32, i32* %9, align 4, !dbg !1914
  %32 = sub nsw i32 %31, 1, !dbg !1916
  store i32 %32, i32* %7, align 4, !dbg !1917
  store i32 %32, i32* %8, align 4, !dbg !1918
  br label %92, !dbg !1919

; <label>:33:                                     ; preds = %24
  %34 = load i8**, i8*** %3, align 8, !dbg !1920
  %35 = load i8*, i8** %34, align 8, !dbg !1923
  %36 = load i8, i8* %35, align 1, !dbg !1924
  %37 = zext i8 %36 to i32, !dbg !1925
  %38 = sext i32 %37 to i64, !dbg !1926
  %39 = call i16** @__ctype_b_loc() #1, !dbg !1927
  %40 = load i16*, i16** %39, align 8, !dbg !1928
  %41 = getelementptr inbounds i16, i16* %40, i64 %38, !dbg !1926
  %42 = load i16, i16* %41, align 2, !dbg !1926
  %43 = zext i16 %42 to i32, !dbg !1926
  %44 = and i32 %43, 2048, !dbg !1929
  %45 = icmp ne i32 %44, 0, !dbg !1929
  br i1 %45, label %46, label %55, !dbg !1930

; <label>:46:                                     ; preds = %33
  %47 = load i8**, i8*** %3, align 8, !dbg !1931
  %48 = load i8*, i8** %47, align 8, !dbg !1933
  %49 = load i8, i8* %48, align 1, !dbg !1934
  %50 = sext i8 %49 to i32, !dbg !1935
  %51 = sub nsw i32 %50, 48, !dbg !1936
  store i32 %51, i32* %7, align 4, !dbg !1937
  store i32 %51, i32* %8, align 4, !dbg !1938
  %52 = load i8**, i8*** %3, align 8, !dbg !1939
  %53 = load i8*, i8** %52, align 8, !dbg !1940
  %54 = getelementptr inbounds i8, i8* %53, i32 1, !dbg !1940
  store i8* %54, i8** %52, align 8, !dbg !1940
  br label %55, !dbg !1941

; <label>:55:                                     ; preds = %46, %33
  %56 = load i8**, i8*** %3, align 8, !dbg !1942
  %57 = load i8*, i8** %56, align 8, !dbg !1944
  %58 = load i8, i8* %57, align 1, !dbg !1945
  %59 = sext i8 %58 to i32, !dbg !1945
  %60 = icmp eq i32 %59, 45, !dbg !1946
  br i1 %60, label %61, label %88, !dbg !1947

; <label>:61:                                     ; preds = %55
  %62 = load i8**, i8*** %3, align 8, !dbg !1948
  %63 = load i8*, i8** %62, align 8, !dbg !1950
  %64 = getelementptr inbounds i8, i8* %63, i32 1, !dbg !1950
  store i8* %64, i8** %62, align 8, !dbg !1950
  %65 = load i8**, i8*** %3, align 8, !dbg !1951
  %66 = load i8*, i8** %65, align 8, !dbg !1953
  %67 = load i8, i8* %66, align 1, !dbg !1954
  %68 = zext i8 %67 to i32, !dbg !1955
  %69 = sext i32 %68 to i64, !dbg !1956
  %70 = call i16** @__ctype_b_loc() #1, !dbg !1957
  %71 = load i16*, i16** %70, align 8, !dbg !1958
  %72 = getelementptr inbounds i16, i16* %71, i64 %69, !dbg !1956
  %73 = load i16, i16* %72, align 2, !dbg !1956
  %74 = zext i16 %73 to i32, !dbg !1956
  %75 = and i32 %74, 2048, !dbg !1959
  %76 = icmp ne i32 %75, 0, !dbg !1959
  br i1 %76, label %78, label %77, !dbg !1960

; <label>:77:                                     ; preds = %61
  store i32 -1, i32* %7, align 4, !dbg !1961
  br label %87, !dbg !1962

; <label>:78:                                     ; preds = %61
  %79 = load i8**, i8*** %3, align 8, !dbg !1963
  %80 = load i8*, i8** %79, align 8, !dbg !1965
  %81 = load i8, i8* %80, align 1, !dbg !1966
  %82 = sext i8 %81 to i32, !dbg !1967
  %83 = sub nsw i32 %82, 48, !dbg !1968
  store i32 %83, i32* %7, align 4, !dbg !1969
  %84 = load i8**, i8*** %3, align 8, !dbg !1970
  %85 = load i8*, i8** %84, align 8, !dbg !1971
  %86 = getelementptr inbounds i8, i8* %85, i32 1, !dbg !1971
  store i8* %86, i8** %84, align 8, !dbg !1971
  br label %87

; <label>:87:                                     ; preds = %78, %77
  br label %88, !dbg !1972

; <label>:88:                                     ; preds = %87, %55
  %89 = load i8**, i8*** %3, align 8, !dbg !1973
  %90 = load i8*, i8** %89, align 8, !dbg !1974
  %91 = getelementptr inbounds i8, i8* %90, i32 -1, !dbg !1974
  store i8* %91, i8** %89, align 8, !dbg !1974
  br label %92

; <label>:92:                                     ; preds = %88, %30
  br label %93

; <label>:93:                                     ; preds = %92, %23
  %94 = call %struct._GString* @g_string_new(i8* null), !dbg !1975
  store %struct._GString* %94, %struct._GString** %5, align 8, !dbg !1976
  br label %95, !dbg !1977

; <label>:95:                                     ; preds = %113, %93
  %96 = load i32, i32* %8, align 4, !dbg !1978
  %97 = icmp sge i32 %96, 0, !dbg !1979
  br i1 %97, label %98, label %111, !dbg !1980

; <label>:98:                                     ; preds = %95
  %99 = load i32, i32* %8, align 4, !dbg !1981
  %100 = load i32, i32* %9, align 4, !dbg !1982
  %101 = icmp slt i32 %99, %100, !dbg !1983
  br i1 %101, label %102, label %111, !dbg !1984

; <label>:102:                                    ; preds = %98
  %103 = load i32, i32* %8, align 4, !dbg !1985
  %104 = load i32, i32* %7, align 4, !dbg !1986
  %105 = icmp sle i32 %103, %104, !dbg !1987
  br i1 %105, label %109, label %106, !dbg !1988

; <label>:106:                                    ; preds = %102
  %107 = load i32, i32* %7, align 4, !dbg !1989
  %108 = icmp eq i32 %107, -1, !dbg !1991
  br label %109, !dbg !1992

; <label>:109:                                    ; preds = %106, %102
  %110 = phi i1 [ true, %102 ], [ %108, %106 ]
  br label %111

; <label>:111:                                    ; preds = %109, %98, %95
  %112 = phi i1 [ false, %98 ], [ false, %95 ], [ %110, %109 ]
  br i1 %112, label %113, label %125, !dbg !1993

; <label>:113:                                    ; preds = %111
  %114 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1995
  %115 = load i32, i32* %8, align 4, !dbg !1997
  %116 = sext i32 %115 to i64, !dbg !1998
  %117 = load i8**, i8*** %4, align 8, !dbg !1998
  %118 = getelementptr inbounds i8*, i8** %117, i64 %116, !dbg !1998
  %119 = load i8*, i8** %118, align 8, !dbg !1998
  %120 = call %struct._GString* @g_string_append(%struct._GString* %114, i8* %119), !dbg !1999
  %121 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !2000
  %122 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %121, i8 signext 32), !dbg !2001
  %123 = load i32, i32* %8, align 4, !dbg !2002
  %124 = add nsw i32 %123, 1, !dbg !2002
  store i32 %124, i32* %8, align 4, !dbg !2002
  br label %95, !dbg !2003, !llvm.loop !2005

; <label>:125:                                    ; preds = %111
  %126 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !2006
  %127 = getelementptr inbounds %struct._GString, %struct._GString* %126, i32 0, i32 1, !dbg !2008
  %128 = load i64, i64* %127, align 8, !dbg !2008
  %129 = icmp ugt i64 %128, 0, !dbg !2009
  br i1 %129, label %130, label %137, !dbg !2010

; <label>:130:                                    ; preds = %125
  %131 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !2011
  %132 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !2013
  %133 = getelementptr inbounds %struct._GString, %struct._GString* %132, i32 0, i32 1, !dbg !2014
  %134 = load i64, i64* %133, align 8, !dbg !2014
  %135 = sub i64 %134, 1, !dbg !2015
  %136 = call %struct._GString* @g_string_truncate(%struct._GString* %131, i64 %135), !dbg !2016
  br label %137, !dbg !2016

; <label>:137:                                    ; preds = %130, %125
  %138 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !2017
  %139 = getelementptr inbounds %struct._GString, %struct._GString* %138, i32 0, i32 0, !dbg !2018
  %140 = load i8*, i8** %139, align 8, !dbg !2018
  store i8* %140, i8** %6, align 8, !dbg !2019
  %141 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !2020
  %142 = call i8* @g_string_free(%struct._GString* %141, i32 0), !dbg !2021
  %143 = load i8*, i8** %6, align 8, !dbg !2022
  ret i8* %143, !dbg !2023
}

; Function Attrs: nounwind uwtable
define internal i8* @get_variable(i8**, %struct._SERVER_REC*, i8*, i8**, i32*, i32*, i32) #0 !dbg !2024 {
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct._SERVER_REC*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8* (%struct._SERVER_REC*, i8*, i32*)*, align 8
  %17 = alloca [2 x i8], align 1
  store i8** %0, i8*** %9, align 8
  call void @llvm.dbg.declare(metadata i8*** %9, metadata !2025, metadata !462), !dbg !2026
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %10, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %10, metadata !2027, metadata !462), !dbg !2028
  store i8* %2, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2029, metadata !462), !dbg !2030
  store i8** %3, i8*** %12, align 8
  call void @llvm.dbg.declare(metadata i8*** %12, metadata !2031, metadata !462), !dbg !2032
  store i32* %4, i32** %13, align 8
  call void @llvm.dbg.declare(metadata i32** %13, metadata !2033, metadata !462), !dbg !2034
  store i32* %5, i32** %14, align 8
  call void @llvm.dbg.declare(metadata i32** %14, metadata !2035, metadata !462), !dbg !2036
  store i32 %6, i32* %15, align 4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !2037, metadata !462), !dbg !2038
  call void @llvm.dbg.declare(metadata i8* (%struct._SERVER_REC*, i8*, i32*)** %16, metadata !2039, metadata !462), !dbg !2044
  %18 = load i8**, i8*** %9, align 8, !dbg !2045
  %19 = load i8*, i8** %18, align 8, !dbg !2047
  %20 = load i8, i8* %19, align 1, !dbg !2048
  %21 = zext i8 %20 to i32, !dbg !2049
  %22 = sext i32 %21 to i64, !dbg !2050
  %23 = call i16** @__ctype_b_loc() #1, !dbg !2051
  %24 = load i16*, i16** %23, align 8, !dbg !2052
  %25 = getelementptr inbounds i16, i16* %24, i64 %22, !dbg !2050
  %26 = load i16, i16* %25, align 2, !dbg !2050
  %27 = zext i16 %26 to i32, !dbg !2050
  %28 = and i32 %27, 2048, !dbg !2053
  %29 = icmp ne i32 %28, 0, !dbg !2053
  br i1 %29, label %48, label %30, !dbg !2049

; <label>:30:                                     ; preds = %7
  %31 = load i8**, i8*** %9, align 8, !dbg !2054
  %32 = load i8*, i8** %31, align 8, !dbg !2056
  %33 = load i8, i8* %32, align 1, !dbg !2057
  %34 = sext i8 %33 to i32, !dbg !2058
  %35 = icmp eq i32 %34, 42, !dbg !2059
  br i1 %35, label %48, label %36, !dbg !2060

; <label>:36:                                     ; preds = %30
  %37 = load i8**, i8*** %9, align 8, !dbg !2061
  %38 = load i8*, i8** %37, align 8, !dbg !2063
  %39 = load i8, i8* %38, align 1, !dbg !2064
  %40 = sext i8 %39 to i32, !dbg !2065
  %41 = icmp eq i32 %40, 126, !dbg !2066
  br i1 %41, label %48, label %42, !dbg !2067

; <label>:42:                                     ; preds = %36
  %43 = load i8**, i8*** %9, align 8, !dbg !2068
  %44 = load i8*, i8** %43, align 8, !dbg !2070
  %45 = load i8, i8* %44, align 1, !dbg !2071
  %46 = sext i8 %45 to i32, !dbg !2072
  %47 = icmp eq i32 %46, 45, !dbg !2073
  br i1 %47, label %48, label %69, !dbg !2074

; <label>:48:                                     ; preds = %42, %36, %30, %7
  %49 = load i32*, i32** %13, align 8, !dbg !2075
  store i32 1, i32* %49, align 4, !dbg !2077
  %50 = load i32*, i32** %14, align 8, !dbg !2078
  %51 = icmp ne i32* %50, null, !dbg !2080
  br i1 %51, label %52, label %54, !dbg !2081

; <label>:52:                                     ; preds = %48
  %53 = load i32*, i32** %14, align 8, !dbg !2082
  store i32 1, i32* %53, align 4, !dbg !2084
  br label %54, !dbg !2085

; <label>:54:                                     ; preds = %52, %48
  %55 = load i32, i32* %15, align 4, !dbg !2086
  %56 = icmp ne i32 %55, 0, !dbg !2086
  br i1 %56, label %57, label %63, !dbg !2086

; <label>:57:                                     ; preds = %54
  %58 = load i8**, i8*** %9, align 8, !dbg !2087
  %59 = load i8*, i8** %58, align 8, !dbg !2089
  %60 = load i8, i8* %59, align 1, !dbg !2090
  %61 = sext i8 %60 to i32, !dbg !2090
  %62 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i32 %61), !dbg !2091
  br label %67, !dbg !2092

; <label>:63:                                     ; preds = %54
  %64 = load i8**, i8*** %9, align 8, !dbg !2093
  %65 = load i8**, i8*** %12, align 8, !dbg !2094
  %66 = call i8* @get_argument(i8** %64, i8** %65), !dbg !2095
  br label %67, !dbg !2096

; <label>:67:                                     ; preds = %63, %57
  %68 = phi i8* [ %62, %57 ], [ %66, %63 ], !dbg !2098
  store i8* %68, i8** %8, align 8, !dbg !2100
  br label %141, !dbg !2100

; <label>:69:                                     ; preds = %42
  %70 = load i8**, i8*** %9, align 8, !dbg !2101
  %71 = load i8*, i8** %70, align 8, !dbg !2103
  %72 = load i8, i8* %71, align 1, !dbg !2104
  %73 = zext i8 %72 to i32, !dbg !2105
  %74 = sext i32 %73 to i64, !dbg !2106
  %75 = call i16** @__ctype_b_loc() #1, !dbg !2107
  %76 = load i16*, i16** %75, align 8, !dbg !2108
  %77 = getelementptr inbounds i16, i16* %76, i64 %74, !dbg !2106
  %78 = load i16, i16* %77, align 2, !dbg !2106
  %79 = zext i16 %78 to i32, !dbg !2106
  %80 = and i32 %79, 1024, !dbg !2109
  %81 = icmp ne i32 %80, 0, !dbg !2109
  br i1 %81, label %82, label %110, !dbg !2110

; <label>:82:                                     ; preds = %69
  %83 = load i8**, i8*** %9, align 8, !dbg !2111
  %84 = load i8*, i8** %83, align 8, !dbg !2113
  %85 = getelementptr inbounds i8, i8* %84, i64 1, !dbg !2114
  %86 = load i8, i8* %85, align 1, !dbg !2114
  %87 = zext i8 %86 to i32, !dbg !2115
  %88 = sext i32 %87 to i64, !dbg !2116
  %89 = call i16** @__ctype_b_loc() #1, !dbg !2117
  %90 = load i16*, i16** %89, align 8, !dbg !2118
  %91 = getelementptr inbounds i16, i16* %90, i64 %88, !dbg !2116
  %92 = load i16, i16* %91, align 2, !dbg !2116
  %93 = zext i16 %92 to i32, !dbg !2116
  %94 = and i32 %93, 8, !dbg !2119
  %95 = icmp ne i32 %94, 0, !dbg !2119
  br i1 %95, label %103, label %96, !dbg !2115

; <label>:96:                                     ; preds = %82
  %97 = load i8**, i8*** %9, align 8, !dbg !2120
  %98 = load i8*, i8** %97, align 8, !dbg !2122
  %99 = getelementptr inbounds i8, i8* %98, i64 1, !dbg !2123
  %100 = load i8, i8* %99, align 1, !dbg !2123
  %101 = sext i8 %100 to i32, !dbg !2124
  %102 = icmp eq i32 %101, 95, !dbg !2125
  br i1 %102, label %103, label %110, !dbg !2126

; <label>:103:                                    ; preds = %96, %82
  %104 = load i8**, i8*** %9, align 8, !dbg !2127
  %105 = load %struct._SERVER_REC*, %struct._SERVER_REC** %10, align 8, !dbg !2129
  %106 = load i8*, i8** %11, align 8, !dbg !2130
  %107 = load i32*, i32** %13, align 8, !dbg !2131
  %108 = load i32, i32* %15, align 4, !dbg !2132
  %109 = call i8* @get_long_variable(i8** %104, %struct._SERVER_REC* %105, i8* %106, i32* %107, i32 %108), !dbg !2133
  store i8* %109, i8** %8, align 8, !dbg !2134
  br label %141, !dbg !2134

; <label>:110:                                    ; preds = %96, %69
  %111 = load i32, i32* %15, align 4, !dbg !2135
  %112 = icmp ne i32 %111, 0, !dbg !2135
  br i1 %112, label %113, label %120, !dbg !2137

; <label>:113:                                    ; preds = %110
  %114 = load i32*, i32** %13, align 8, !dbg !2138
  store i32 1, i32* %114, align 4, !dbg !2140
  %115 = load i8**, i8*** %9, align 8, !dbg !2141
  %116 = load i8*, i8** %115, align 8, !dbg !2142
  %117 = load i8, i8* %116, align 1, !dbg !2143
  %118 = sext i8 %117 to i32, !dbg !2143
  %119 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i32 %118), !dbg !2144
  store i8* %119, i8** %8, align 8, !dbg !2145
  br label %141, !dbg !2145

; <label>:120:                                    ; preds = %110
  %121 = load i32*, i32** %13, align 8, !dbg !2146
  store i32 0, i32* %121, align 4, !dbg !2147
  %122 = load i8**, i8*** %9, align 8, !dbg !2148
  %123 = load i8*, i8** %122, align 8, !dbg !2149
  %124 = load i8, i8* %123, align 1, !dbg !2150
  %125 = call i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_find_char(i8 signext %124), !dbg !2151
  store i8* (%struct._SERVER_REC*, i8*, i32*)* %125, i8* (%struct._SERVER_REC*, i8*, i32*)** %16, align 8, !dbg !2152
  %126 = load i8* (%struct._SERVER_REC*, i8*, i32*)*, i8* (%struct._SERVER_REC*, i8*, i32*)** %16, align 8, !dbg !2153
  %127 = icmp eq i8* (%struct._SERVER_REC*, i8*, i32*)* %126, null, !dbg !2155
  br i1 %127, label %128, label %129, !dbg !2156

; <label>:128:                                    ; preds = %120
  store i8* null, i8** %8, align 8, !dbg !2157
  br label %141, !dbg !2157

; <label>:129:                                    ; preds = %120
  call void @llvm.dbg.declare(metadata [2 x i8]* %17, metadata !2158, metadata !462), !dbg !2161
  %130 = load i8**, i8*** %9, align 8, !dbg !2162
  %131 = load i8*, i8** %130, align 8, !dbg !2163
  %132 = load i8, i8* %131, align 1, !dbg !2164
  %133 = getelementptr inbounds [2 x i8], [2 x i8]* %17, i64 0, i64 0, !dbg !2165
  store i8 %132, i8* %133, align 1, !dbg !2166
  %134 = getelementptr inbounds [2 x i8], [2 x i8]* %17, i64 0, i64 1, !dbg !2167
  store i8 0, i8* %134, align 1, !dbg !2168
  %135 = getelementptr inbounds [2 x i8], [2 x i8]* %17, i32 0, i32 0, !dbg !2169
  store i8* %135, i8** @current_expando, align 8, !dbg !2170
  %136 = load i8* (%struct._SERVER_REC*, i8*, i32*)*, i8* (%struct._SERVER_REC*, i8*, i32*)** %16, align 8, !dbg !2171
  %137 = load %struct._SERVER_REC*, %struct._SERVER_REC** %10, align 8, !dbg !2172
  %138 = load i8*, i8** %11, align 8, !dbg !2173
  %139 = load i32*, i32** %13, align 8, !dbg !2174
  %140 = call i8* %136(%struct._SERVER_REC* %137, i8* %138, i32* %139), !dbg !2171
  store i8* %140, i8** %8, align 8, !dbg !2175
  br label %141, !dbg !2175

; <label>:141:                                    ; preds = %129, %128, %113, %103, %67
  %142 = load i8*, i8** %8, align 8, !dbg !2176
  ret i8* %142, !dbg !2176
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare noalias i8* @g_strndup(i8*, i64) #2

declare i32 @g_strv_length(i8**) #2

; Function Attrs: nounwind uwtable
define internal i8* @get_long_variable(i8**, %struct._SERVER_REC*, i8*, i32*, i32) #0 !dbg !2177 {
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct._SERVER_REC*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i8** %0, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !2180, metadata !462), !dbg !2181
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %8, metadata !2182, metadata !462), !dbg !2183
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2184, metadata !462), !dbg !2185
  store i32* %3, i32** %10, align 8
  call void @llvm.dbg.declare(metadata i32** %10, metadata !2186, metadata !462), !dbg !2187
  store i32 %4, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2188, metadata !462), !dbg !2189
  call void @llvm.dbg.declare(metadata i8** %12, metadata !2190, metadata !462), !dbg !2191
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2192, metadata !462), !dbg !2193
  call void @llvm.dbg.declare(metadata i8** %14, metadata !2194, metadata !462), !dbg !2195
  %15 = load i8**, i8*** %7, align 8, !dbg !2196
  %16 = load i8*, i8** %15, align 8, !dbg !2197
  store i8* %16, i8** %12, align 8, !dbg !2198
  br label %17, !dbg !2199

; <label>:17:                                     ; preds = %40, %5
  %18 = load i8**, i8*** %7, align 8, !dbg !2200
  %19 = load i8*, i8** %18, align 8, !dbg !2202
  %20 = getelementptr inbounds i8, i8* %19, i64 1, !dbg !2203
  %21 = load i8, i8* %20, align 1, !dbg !2203
  %22 = zext i8 %21 to i32, !dbg !2204
  %23 = sext i32 %22 to i64, !dbg !2205
  %24 = call i16** @__ctype_b_loc() #1, !dbg !2206
  %25 = load i16*, i16** %24, align 8, !dbg !2207
  %26 = getelementptr inbounds i16, i16* %25, i64 %23, !dbg !2205
  %27 = load i16, i16* %26, align 2, !dbg !2205
  %28 = zext i16 %27 to i32, !dbg !2205
  %29 = and i32 %28, 8, !dbg !2208
  %30 = icmp ne i32 %29, 0, !dbg !2208
  br i1 %30, label %38, label %31, !dbg !2204

; <label>:31:                                     ; preds = %17
  %32 = load i8**, i8*** %7, align 8, !dbg !2209
  %33 = load i8*, i8** %32, align 8, !dbg !2211
  %34 = getelementptr inbounds i8, i8* %33, i64 1, !dbg !2212
  %35 = load i8, i8* %34, align 1, !dbg !2212
  %36 = sext i8 %35 to i32, !dbg !2213
  %37 = icmp eq i32 %36, 95, !dbg !2214
  br label %38, !dbg !2215

; <label>:38:                                     ; preds = %31, %17
  %39 = phi i1 [ true, %17 ], [ %37, %31 ]
  br i1 %39, label %40, label %44, !dbg !2216

; <label>:40:                                     ; preds = %38
  %41 = load i8**, i8*** %7, align 8, !dbg !2218
  %42 = load i8*, i8** %41, align 8, !dbg !2220
  %43 = getelementptr inbounds i8, i8* %42, i32 1, !dbg !2220
  store i8* %43, i8** %41, align 8, !dbg !2220
  br label %17, !dbg !2221, !llvm.loop !2222

; <label>:44:                                     ; preds = %38
  %45 = load i8*, i8** %12, align 8, !dbg !2223
  %46 = load i8**, i8*** %7, align 8, !dbg !2224
  %47 = load i8*, i8** %46, align 8, !dbg !2225
  %48 = load i8*, i8** %12, align 8, !dbg !2226
  %49 = ptrtoint i8* %47 to i64, !dbg !2227
  %50 = ptrtoint i8* %48 to i64, !dbg !2227
  %51 = sub i64 %49, %50, !dbg !2227
  %52 = trunc i64 %51 to i32, !dbg !2228
  %53 = add nsw i32 %52, 1, !dbg !2229
  %54 = sext i32 %53 to i64, !dbg !2228
  %55 = call noalias i8* @g_strndup(i8* %45, i64 %54), !dbg !2230
  store i8* %55, i8** %13, align 8, !dbg !2231
  %56 = load i32, i32* %11, align 4, !dbg !2232
  %57 = icmp ne i32 %56, 0, !dbg !2232
  br i1 %57, label %58, label %61, !dbg !2234

; <label>:58:                                     ; preds = %44
  %59 = load i32*, i32** %10, align 8, !dbg !2235
  store i32 1, i32* %59, align 4, !dbg !2237
  %60 = load i8*, i8** %13, align 8, !dbg !2238
  store i8* %60, i8** %6, align 8, !dbg !2239
  br label %69, !dbg !2239

; <label>:61:                                     ; preds = %44
  %62 = load i8*, i8** %13, align 8, !dbg !2240
  %63 = load %struct._SERVER_REC*, %struct._SERVER_REC** %8, align 8, !dbg !2241
  %64 = load i8*, i8** %9, align 8, !dbg !2242
  %65 = load i32*, i32** %10, align 8, !dbg !2243
  %66 = call i8* @get_long_variable_value(i8* %62, %struct._SERVER_REC* %63, i8* %64, i32* %65), !dbg !2244
  store i8* %66, i8** %14, align 8, !dbg !2245
  %67 = load i8*, i8** %13, align 8, !dbg !2246
  call void @g_free(i8* %67), !dbg !2247
  %68 = load i8*, i8** %14, align 8, !dbg !2248
  store i8* %68, i8** %6, align 8, !dbg !2249
  br label %69, !dbg !2249

; <label>:69:                                     ; preds = %61, %58
  %70 = load i8*, i8** %6, align 8, !dbg !2250
  ret i8* %70, !dbg !2250
}

declare i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_find_char(i8 signext) #2

; Function Attrs: nounwind uwtable
define internal i8* @get_long_variable_value(i8*, %struct._SERVER_REC*, i8*, i32*) #0 !dbg !2251 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._SERVER_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8* (%struct._SERVER_REC*, i8*, i32*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.SETTINGS_REC*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2254, metadata !462), !dbg !2255
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %7, metadata !2256, metadata !462), !dbg !2257
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2258, metadata !462), !dbg !2259
  store i32* %3, i32** %9, align 8
  call void @llvm.dbg.declare(metadata i32** %9, metadata !2260, metadata !462), !dbg !2261
  call void @llvm.dbg.declare(metadata i8* (%struct._SERVER_REC*, i8*, i32*)** %10, metadata !2262, metadata !462), !dbg !2263
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2264, metadata !462), !dbg !2265
  call void @llvm.dbg.declare(metadata %struct.SETTINGS_REC** %12, metadata !2266, metadata !462), !dbg !2285
  %13 = load i32*, i32** %9, align 8, !dbg !2286
  store i32 0, i32* %13, align 4, !dbg !2287
  %14 = load i8*, i8** %6, align 8, !dbg !2288
  %15 = call i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_find_long(i8* %14), !dbg !2289
  store i8* (%struct._SERVER_REC*, i8*, i32*)* %15, i8* (%struct._SERVER_REC*, i8*, i32*)** %10, align 8, !dbg !2290
  %16 = load i8* (%struct._SERVER_REC*, i8*, i32*)*, i8* (%struct._SERVER_REC*, i8*, i32*)** %10, align 8, !dbg !2291
  %17 = icmp ne i8* (%struct._SERVER_REC*, i8*, i32*)* %16, null, !dbg !2293
  br i1 %17, label %18, label %25, !dbg !2294

; <label>:18:                                     ; preds = %4
  %19 = load i8*, i8** %6, align 8, !dbg !2295
  store i8* %19, i8** @current_expando, align 8, !dbg !2297
  %20 = load i8* (%struct._SERVER_REC*, i8*, i32*)*, i8* (%struct._SERVER_REC*, i8*, i32*)** %10, align 8, !dbg !2298
  %21 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !2299
  %22 = load i8*, i8** %8, align 8, !dbg !2300
  %23 = load i32*, i32** %9, align 8, !dbg !2301
  %24 = call i8* %20(%struct._SERVER_REC* %21, i8* %22, i32* %23), !dbg !2298
  store i8* %24, i8** %5, align 8, !dbg !2302
  br label %42, !dbg !2302

; <label>:25:                                     ; preds = %4
  %26 = load i8*, i8** %6, align 8, !dbg !2303
  %27 = call %struct.SETTINGS_REC* @settings_get_record(i8* %26), !dbg !2304
  store %struct.SETTINGS_REC* %27, %struct.SETTINGS_REC** %12, align 8, !dbg !2305
  %28 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %12, align 8, !dbg !2306
  %29 = icmp ne %struct.SETTINGS_REC* %28, null, !dbg !2308
  br i1 %29, label %30, label %34, !dbg !2309

; <label>:30:                                     ; preds = %25
  %31 = load i32*, i32** %9, align 8, !dbg !2310
  store i32 1, i32* %31, align 4, !dbg !2312
  %32 = load %struct.SETTINGS_REC*, %struct.SETTINGS_REC** %12, align 8, !dbg !2313
  %33 = call i8* @settings_get_print(%struct.SETTINGS_REC* %32), !dbg !2314
  store i8* %33, i8** %5, align 8, !dbg !2315
  br label %42, !dbg !2315

; <label>:34:                                     ; preds = %25
  %35 = load i8*, i8** %6, align 8, !dbg !2316
  %36 = call i8* @g_getenv(i8* %35), !dbg !2317
  store i8* %36, i8** %11, align 8, !dbg !2318
  %37 = load i8*, i8** %11, align 8, !dbg !2319
  %38 = icmp ne i8* %37, null, !dbg !2321
  br i1 %38, label %39, label %41, !dbg !2322

; <label>:39:                                     ; preds = %34
  %40 = load i8*, i8** %11, align 8, !dbg !2323
  store i8* %40, i8** %5, align 8, !dbg !2324
  br label %42, !dbg !2324

; <label>:41:                                     ; preds = %34
  store i8* null, i8** %5, align 8, !dbg !2325
  br label %42, !dbg !2325

; <label>:42:                                     ; preds = %41, %39, %30, %18
  %43 = load i8*, i8** %5, align 8, !dbg !2326
  ret i8* %43, !dbg !2326
}

declare i8* (%struct._SERVER_REC*, i8*, i32*)* @expando_find_long(i8*) #2

declare %struct.SETTINGS_REC* @settings_get_record(i8*) #2

declare i8* @settings_get_print(%struct.SETTINGS_REC*) #2

declare i8* @g_getenv(i8*) #2

declare %struct._GString* @g_string_insert_c(%struct._GString*, i64, i8 signext) #2

declare void @expando_bind(i8*, i32, void (i8*, i8*, i8*, i8*, i8*, i8*)**) #2

declare void @expando_unbind(i8*, i32, void (i8*, i8*, i8*, i8*, i8*, i8*)**) #2

declare i32* @expando_get_signals(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @update_signals_hash(%struct._GHashTable**, i32*) #0 !dbg !2327 {
  %3 = alloca %struct._GHashTable**, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct._GHashTable** %0, %struct._GHashTable*** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._GHashTable*** %3, metadata !2331, metadata !462), !dbg !2332
  store i32* %1, i32** %4, align 8
  call void @llvm.dbg.declare(metadata i32** %4, metadata !2333, metadata !462), !dbg !2334
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2335, metadata !462), !dbg !2336
  call void @llvm.dbg.declare(metadata i32* %6, metadata !2337, metadata !462), !dbg !2338
  %7 = load %struct._GHashTable**, %struct._GHashTable*** %3, align 8, !dbg !2339
  %8 = load %struct._GHashTable*, %struct._GHashTable** %7, align 8, !dbg !2341
  %9 = icmp eq %struct._GHashTable* %8, null, !dbg !2342
  br i1 %9, label %10, label %13, !dbg !2343

; <label>:10:                                     ; preds = %2
  %11 = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_direct_hash, i32 (i8*, i8*)* @g_direct_equal), !dbg !2344
  %12 = load %struct._GHashTable**, %struct._GHashTable*** %3, align 8, !dbg !2346
  store %struct._GHashTable* %11, %struct._GHashTable** %12, align 8, !dbg !2347
  br label %13, !dbg !2348

; <label>:13:                                     ; preds = %10, %2
  br label %14, !dbg !2349

; <label>:14:                                     ; preds = %45, %13
  %15 = load i32*, i32** %4, align 8, !dbg !2350
  %16 = load i32, i32* %15, align 4, !dbg !2352
  %17 = icmp ne i32 %16, -1, !dbg !2353
  br i1 %17, label %18, label %55, !dbg !2354

; <label>:18:                                     ; preds = %14
  %19 = load i32*, i32** %4, align 8, !dbg !2355
  %20 = load i32, i32* %19, align 4, !dbg !2357
  %21 = sext i32 %20 to i64, !dbg !2358
  %22 = inttoptr i64 %21 to i8*, !dbg !2359
  store i8* %22, i8** %5, align 8, !dbg !2360
  %23 = load %struct._GHashTable**, %struct._GHashTable*** %3, align 8, !dbg !2361
  %24 = load %struct._GHashTable*, %struct._GHashTable** %23, align 8, !dbg !2362
  %25 = load i8*, i8** %5, align 8, !dbg !2363
  %26 = call i8* @g_hash_table_lookup(%struct._GHashTable* %24, i8* %25), !dbg !2364
  %27 = ptrtoint i8* %26 to i64, !dbg !2365
  %28 = trunc i64 %27 to i32, !dbg !2366
  store i32 %28, i32* %6, align 4, !dbg !2367
  %29 = load i32, i32* %6, align 4, !dbg !2368
  %30 = icmp ne i32 %29, 0, !dbg !2370
  br i1 %30, label %31, label %38, !dbg !2371

; <label>:31:                                     ; preds = %18
  %32 = load i32, i32* %6, align 4, !dbg !2372
  %33 = load i32*, i32** %4, align 8, !dbg !2374
  %34 = getelementptr inbounds i32, i32* %33, i64 1, !dbg !2374
  %35 = load i32, i32* %34, align 4, !dbg !2374
  %36 = icmp ne i32 %32, %35, !dbg !2375
  br i1 %36, label %37, label %38, !dbg !2376

; <label>:37:                                     ; preds = %31
  store i32 1, i32* %6, align 4, !dbg !2377
  br label %38, !dbg !2379

; <label>:38:                                     ; preds = %37, %31, %18
  %39 = load i32, i32* %6, align 4, !dbg !2380
  %40 = icmp eq i32 %39, 0, !dbg !2382
  br i1 %40, label %41, label %45, !dbg !2383

; <label>:41:                                     ; preds = %38
  %42 = load i32*, i32** %4, align 8, !dbg !2384
  %43 = getelementptr inbounds i32, i32* %42, i64 1, !dbg !2384
  %44 = load i32, i32* %43, align 4, !dbg !2384
  store i32 %44, i32* %6, align 4, !dbg !2386
  br label %45, !dbg !2387

; <label>:45:                                     ; preds = %41, %38
  %46 = load %struct._GHashTable**, %struct._GHashTable*** %3, align 8, !dbg !2388
  %47 = load %struct._GHashTable*, %struct._GHashTable** %46, align 8, !dbg !2389
  %48 = load i8*, i8** %5, align 8, !dbg !2390
  %49 = load i32, i32* %6, align 4, !dbg !2391
  %50 = sext i32 %49 to i64, !dbg !2392
  %51 = inttoptr i64 %50 to i8*, !dbg !2393
  %52 = call i32 @g_hash_table_insert(%struct._GHashTable* %47, i8* %48, i8* %51), !dbg !2394
  %53 = load i32*, i32** %4, align 8, !dbg !2395
  %54 = getelementptr inbounds i32, i32* %53, i64 2, !dbg !2395
  store i32* %54, i32** %4, align 8, !dbg !2395
  br label %14, !dbg !2396, !llvm.loop !2398

; <label>:55:                                     ; preds = %14
  ret void, !dbg !2399
}

; Function Attrs: nounwind uwtable
define internal i32* @get_signals_list(%struct._GHashTable*) #0 !dbg !2400 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct._GHashTable*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store %struct._GHashTable* %0, %struct._GHashTable** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %3, metadata !2403, metadata !462), !dbg !2404
  call void @llvm.dbg.declare(metadata i32** %4, metadata !2405, metadata !462), !dbg !2406
  call void @llvm.dbg.declare(metadata i32** %5, metadata !2407, metadata !462), !dbg !2408
  %6 = load %struct._GHashTable*, %struct._GHashTable** %3, align 8, !dbg !2409
  %7 = icmp eq %struct._GHashTable* %6, null, !dbg !2411
  br i1 %7, label %8, label %9, !dbg !2412

; <label>:8:                                      ; preds = %1
  store i32* null, i32** %2, align 8, !dbg !2413
  br label %22, !dbg !2413

; <label>:9:                                      ; preds = %1
  %10 = load %struct._GHashTable*, %struct._GHashTable** %3, align 8, !dbg !2415
  %11 = call i32 @g_hash_table_size(%struct._GHashTable* %10), !dbg !2416
  %12 = mul i32 %11, 2, !dbg !2417
  %13 = add i32 %12, 1, !dbg !2418
  %14 = zext i32 %13 to i64, !dbg !2419
  %15 = call noalias i8* @g_malloc_n(i64 %14, i64 4), !dbg !2420
  %16 = bitcast i8* %15 to i32*, !dbg !2422
  store i32* %16, i32** %4, align 8, !dbg !2423
  store i32* %16, i32** %5, align 8, !dbg !2424
  %17 = load %struct._GHashTable*, %struct._GHashTable** %3, align 8, !dbg !2425
  %18 = bitcast i32** %5 to i8*, !dbg !2426
  call void @g_hash_table_foreach(%struct._GHashTable* %17, void (i8*, i8*, i8*)* bitcast (void (i8*, i8*, i32**)* @get_signal_hash to void (i8*, i8*, i8*)*), i8* %18), !dbg !2427
  %19 = load i32*, i32** %5, align 8, !dbg !2428
  store i32 -1, i32* %19, align 4, !dbg !2429
  %20 = load %struct._GHashTable*, %struct._GHashTable** %3, align 8, !dbg !2430
  call void @g_hash_table_destroy(%struct._GHashTable* %20), !dbg !2431
  %21 = load i32*, i32** %4, align 8, !dbg !2432
  store i32* %21, i32** %2, align 8, !dbg !2433
  br label %22, !dbg !2433

; <label>:22:                                     ; preds = %9, %8
  %23 = load i32*, i32** %2, align 8, !dbg !2434
  ret i32* %23, !dbg !2434
}

declare %struct._GHashTable* @g_hash_table_new(i32 (i8*)*, i32 (i8*, i8*)*) #2

; Function Attrs: nounwind readnone
declare i32 @g_direct_hash(i8*) #5

; Function Attrs: nounwind readnone
declare i32 @g_direct_equal(i8*, i8*) #5

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #2

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #2

declare noalias i8* @g_malloc_n(i64, i64) #2

declare i32 @g_hash_table_size(%struct._GHashTable*) #2

declare void @g_hash_table_foreach(%struct._GHashTable*, void (i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @get_signal_hash(i8*, i8*, i32**) #0 !dbg !2435 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32**, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2439, metadata !462), !dbg !2440
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2441, metadata !462), !dbg !2442
  store i32** %2, i32*** %6, align 8
  call void @llvm.dbg.declare(metadata i32*** %6, metadata !2443, metadata !462), !dbg !2444
  %7 = load i8*, i8** %4, align 8, !dbg !2445
  %8 = ptrtoint i8* %7 to i64, !dbg !2446
  %9 = trunc i64 %8 to i32, !dbg !2447
  %10 = load i32**, i32*** %6, align 8, !dbg !2448
  %11 = load i32*, i32** %10, align 8, !dbg !2449
  %12 = getelementptr inbounds i32, i32* %11, i64 0, !dbg !2450
  store i32 %9, i32* %12, align 4, !dbg !2451
  %13 = load i8*, i8** %5, align 8, !dbg !2452
  %14 = ptrtoint i8* %13 to i64, !dbg !2453
  %15 = trunc i64 %14 to i32, !dbg !2454
  %16 = load i32**, i32*** %6, align 8, !dbg !2455
  %17 = load i32*, i32** %16, align 8, !dbg !2456
  %18 = getelementptr inbounds i32, i32* %17, i64 1, !dbg !2457
  store i32 %15, i32* %18, align 4, !dbg !2458
  %19 = load i32**, i32*** %6, align 8, !dbg !2459
  %20 = load i32*, i32** %19, align 8, !dbg !2460
  %21 = getelementptr inbounds i32, i32* %20, i64 2, !dbg !2460
  store i32* %21, i32** %19, align 8, !dbg !2460
  ret void, !dbg !2461
}

declare void @g_hash_table_destroy(%struct._GHashTable*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!455, !456}
!llvm.ident = !{!457}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !81, globals: !116)
!1 = !DIFile(filename: "line87-special-vars.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !10, !15, !24, !35, !47, !62, !73}
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
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !48, line: 46, size: 32, align: 32, elements: !49)
!48 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/lichi/Desktop/irssi/task1")
!49 = !{!50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61}
!50 = !DIEnumerator(name: "_ISupper", value: 256)
!51 = !DIEnumerator(name: "_ISlower", value: 512)
!52 = !DIEnumerator(name: "_ISalpha", value: 1024)
!53 = !DIEnumerator(name: "_ISdigit", value: 2048)
!54 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!55 = !DIEnumerator(name: "_ISspace", value: 8192)
!56 = !DIEnumerator(name: "_ISprint", value: 16384)
!57 = !DIEnumerator(name: "_ISgraph", value: 32768)
!58 = !DIEnumerator(name: "_ISblank", value: 1)
!59 = !DIEnumerator(name: "_IScntrl", value: 2)
!60 = !DIEnumerator(name: "_ISpunct", value: 4)
!61 = !DIEnumerator(name: "_ISalnum", value: 8)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !63, line: 4, size: 32, align: 32, elements: !64)
!63 = !DIFile(filename: "settings.h", directory: "/home/lichi/Desktop/irssi/task1")
!64 = !{!65, !66, !67, !68, !69, !70, !71, !72}
!65 = !DIEnumerator(name: "SETTING_TYPE_STRING", value: 0)
!66 = !DIEnumerator(name: "SETTING_TYPE_INT", value: 1)
!67 = !DIEnumerator(name: "SETTING_TYPE_BOOLEAN", value: 2)
!68 = !DIEnumerator(name: "SETTING_TYPE_TIME", value: 3)
!69 = !DIEnumerator(name: "SETTING_TYPE_LEVEL", value: 4)
!70 = !DIEnumerator(name: "SETTING_TYPE_SIZE", value: 5)
!71 = !DIEnumerator(name: "SETTING_TYPE_CHOICE", value: 6)
!72 = !DIEnumerator(name: "SETTING_TYPE_ANY", value: 7)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !74, line: 7, size: 32, align: 32, elements: !75)
!74 = !DIFile(filename: "expandos.h", directory: "/home/lichi/Desktop/irssi/task1")
!75 = !{!76, !77, !78, !79, !80}
!76 = !DIEnumerator(name: "EXPANDO_ARG_NONE", value: 1)
!77 = !DIEnumerator(name: "EXPANDO_ARG_SERVER", value: 2)
!78 = !DIEnumerator(name: "EXPANDO_ARG_WINDOW", value: 3)
!79 = !DIEnumerator(name: "EXPANDO_ARG_WINDOW_ITEM", value: 4)
!80 = !DIEnumerator(name: "EXPANDO_NEVER", value: 5)
!81 = !{!82, !83, !87, !89, !91, !92, !93, !90, !94, !103, !108, !109, !107, !111, !112}
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64, align: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !85, line: 46, baseType: !86)
!85 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!86 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64, align: 64)
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!91 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!92 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!93 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashFunc", file: !85, line: 90, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64, align: 64)
!96 = !DISubroutineType(types: !97)
!97 = !{!98, !100}
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !85, line: 55, baseType: !99)
!99 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "gconstpointer", file: !85, line: 78, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64, align: 64)
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCompareFunc", file: !85, line: 80, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DISubroutineType(types: !106)
!106 = !{!107, !100, !100}
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !85, line: 49, baseType: !91)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !85, line: 77, baseType: !82)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !85, line: 48, baseType: !110)
!110 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHFunc", file: !85, line: 91, baseType: !113)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64, align: 64)
!114 = !DISubroutineType(types: !115)
!115 = !{null, !108, !108, !108}
!116 = !{!117, !449}
!117 = distinct !DIGlobalVariable(name: "nested_orig_cmd", scope: !118, file: !119, line: 367, type: !89, isLocal: true, isDefinition: true, variable: i8*** @parse_special.nested_orig_cmd)
!118 = distinct !DISubprogram(name: "parse_special", scope: !119, file: !119, line: 364, type: !120, isLocal: false, isDefinition: true, scopeLine: 366, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !448)
!119 = !DIFile(filename: "special-vars.c", directory: "/home/lichi/Desktop/irssi/task1")
!120 = !DISubroutineType(types: !121)
!121 = !{!90, !89, !122, !82, !89, !111, !111, !91}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64, align: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !124, line: 107, baseType: !125)
!124 = !DIFile(filename: "../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !126, line: 30, size: 2240, align: 64, elements: !127)
!126 = !DIFile(filename: "servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!127 = !{!128, !130, !131, !132, !355, !360, !361, !362, !363, !364, !365, !366, !367, !368, !372, !373, !377, !378, !379, !383, !388, !389, !390, !391, !392, !393, !394, !395, !401, !402, !403, !404, !405, !409, !413, !417, !421, !425, !429, !436, !443, !447}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !125, file: !129, line: 3, baseType: !91, size: 32, align: 32)
!129 = !DIFile(filename: "server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!130 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !125, file: !129, line: 4, baseType: !91, size: 32, align: 32, offset: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !125, file: !129, line: 6, baseType: !91, size: 32, align: 32, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !125, file: !129, line: 8, baseType: !133, size: 64, align: 64, offset: 128)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64, align: 64)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !124, line: 113, baseType: !135)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !126, line: 25, size: 1920, align: 64, elements: !136)
!136 = !{!137, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !135, file: !138, line: 3, baseType: !91, size: 32, align: 32)
!138 = !DIFile(filename: "server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!139 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !135, file: !138, line: 4, baseType: !91, size: 32, align: 32, offset: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !135, file: !138, line: 6, baseType: !91, size: 32, align: 32, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !135, file: !138, line: 9, baseType: !90, size: 64, align: 64, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !135, file: !138, line: 10, baseType: !91, size: 32, align: 32, offset: 192)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !135, file: !138, line: 11, baseType: !90, size: 64, align: 64, offset: 256)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !135, file: !138, line: 11, baseType: !90, size: 64, align: 64, offset: 320)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !135, file: !138, line: 11, baseType: !90, size: 64, align: 64, offset: 384)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !135, file: !138, line: 13, baseType: !93, size: 16, align: 16, offset: 448)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !135, file: !138, line: 14, baseType: !90, size: 64, align: 64, offset: 512)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !135, file: !138, line: 15, baseType: !90, size: 64, align: 64, offset: 576)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !135, file: !138, line: 16, baseType: !91, size: 32, align: 32, offset: 640)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !135, file: !138, line: 17, baseType: !90, size: 64, align: 64, offset: 704)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !135, file: !138, line: 19, baseType: !152, size: 64, align: 64, offset: 768)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64, align: 64)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !124, line: 99, baseType: !154)
!154 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !124, line: 99, flags: DIFlagFwdDecl)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !135, file: !138, line: 19, baseType: !152, size: 64, align: 64, offset: 832)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !135, file: !138, line: 21, baseType: !90, size: 64, align: 64, offset: 896)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !135, file: !138, line: 22, baseType: !90, size: 64, align: 64, offset: 960)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !135, file: !138, line: 23, baseType: !90, size: 64, align: 64, offset: 1024)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !135, file: !138, line: 24, baseType: !90, size: 64, align: 64, offset: 1088)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !135, file: !138, line: 26, baseType: !90, size: 64, align: 64, offset: 1152)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !135, file: !138, line: 27, baseType: !90, size: 64, align: 64, offset: 1216)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !135, file: !138, line: 28, baseType: !90, size: 64, align: 64, offset: 1280)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !135, file: !138, line: 29, baseType: !90, size: 64, align: 64, offset: 1344)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !135, file: !138, line: 30, baseType: !90, size: 64, align: 64, offset: 1408)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !135, file: !138, line: 31, baseType: !90, size: 64, align: 64, offset: 1472)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !135, file: !138, line: 32, baseType: !90, size: 64, align: 64, offset: 1536)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !135, file: !138, line: 33, baseType: !90, size: 64, align: 64, offset: 1600)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !135, file: !138, line: 35, baseType: !169, size: 64, align: 64, offset: 1664)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64, align: 64)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !171)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !172)
!172 = !{!173, !174, !312, !313, !318, !319, !320, !321, !322, !331, !332, !333, !337, !338, !339, !340, !341, !342, !343, !344}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !171, file: !4, line: 100, baseType: !107, size: 32, align: 32)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !171, file: !4, line: 101, baseType: !175, size: 64, align: 64, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64, align: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !177)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !178)
!178 = !{!179, !200, !206, !212, !216, !299, !303, !308}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !177, file: !4, line: 133, baseType: !180, size: 64, align: 64)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64, align: 64)
!181 = !DISubroutineType(types: !182)
!182 = !{!183, !169, !83, !184, !187, !188}
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !185, line: 66, baseType: !186)
!185 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!186 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64, align: 64)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64, align: 64)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !191, line: 42, baseType: !192)
!191 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !191, line: 44, size: 128, align: 64, elements: !193)
!193 = !{!194, !198, !199}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !192, file: !191, line: 46, baseType: !195, size: 32, align: 32)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !196, line: 36, baseType: !197)
!196 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !185, line: 45, baseType: !99)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !192, file: !191, line: 47, baseType: !107, size: 32, align: 32, offset: 32)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !192, file: !191, line: 48, baseType: !83, size: 64, align: 64, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !177, file: !4, line: 138, baseType: !201, size: 64, align: 64, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64, align: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{!183, !169, !204, !184, !187, !188}
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64, align: 64)
!205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !177, file: !4, line: 143, baseType: !207, size: 64, align: 64, offset: 128)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64, align: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{!183, !169, !210, !211, !188}
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !185, line: 51, baseType: !110)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !177, file: !4, line: 147, baseType: !213, size: 64, align: 64, offset: 192)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64, align: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{!183, !169, !188}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !177, file: !4, line: 149, baseType: !217, size: 64, align: 64, offset: 256)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64, align: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{!220, !169, !298}
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64, align: 64)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !222)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !223)
!223 = !{!224, !225, !246, !275, !276, !280, !281, !282, !283, !291, !292, !293, !294}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !222, file: !16, line: 174, baseType: !108, size: 64, align: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !222, file: !16, line: 175, baseType: !226, size: 64, align: 64, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !228)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !229)
!229 = !{!230, !234, !235}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !228, file: !16, line: 198, baseType: !231, size: 64, align: 64)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64, align: 64)
!232 = !DISubroutineType(types: !233)
!233 = !{null, !108}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !228, file: !16, line: 199, baseType: !231, size: 64, align: 64, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !228, file: !16, line: 200, baseType: !236, size: 64, align: 64, offset: 128)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64, align: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{null, !108, !220, !239, !245}
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64, align: 64)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !241)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64, align: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{!244, !108}
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !85, line: 50, baseType: !107)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, align: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !222, file: !16, line: 177, baseType: !247, size: 64, align: 64, offset: 128)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64, align: 64)
!248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !249)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !250)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !251)
!251 = !{!252, !257, !261, !265, !269, !270}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !250, file: !16, line: 216, baseType: !253, size: 64, align: 64)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DISubroutineType(types: !255)
!255 = !{!244, !220, !256}
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64, align: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !250, file: !16, line: 218, baseType: !258, size: 64, align: 64, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64, align: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{!244, !220}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !250, file: !16, line: 219, baseType: !262, size: 64, align: 64, offset: 128)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64, align: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{!244, !220, !240, !108}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !250, file: !16, line: 222, baseType: !266, size: 64, align: 64, offset: 192)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64, align: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{null, !220}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !250, file: !16, line: 226, baseType: !240, size: 64, align: 64, offset: 256)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !250, file: !16, line: 227, baseType: !271, size: 64, align: 64, offset: 320)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !272)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64, align: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{null}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !222, file: !16, line: 178, baseType: !98, size: 32, align: 32, offset: 192)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !222, file: !16, line: 180, baseType: !277, size: 64, align: 64, offset: 256)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64, align: 64)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !279)
!279 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !222, file: !16, line: 182, baseType: !107, size: 32, align: 32, offset: 320)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !222, file: !16, line: 183, baseType: !98, size: 32, align: 32, offset: 352)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !222, file: !16, line: 184, baseType: !98, size: 32, align: 32, offset: 384)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !222, file: !16, line: 186, baseType: !284, size: 64, align: 64, offset: 448)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64, align: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !286, line: 37, baseType: !287)
!286 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !286, line: 39, size: 128, align: 64, elements: !288)
!288 = !{!289, !290}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !287, file: !286, line: 41, baseType: !108, size: 64, align: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !287, file: !286, line: 42, baseType: !284, size: 64, align: 64, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !222, file: !16, line: 188, baseType: !220, size: 64, align: 64, offset: 512)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !222, file: !16, line: 189, baseType: !220, size: 64, align: 64, offset: 576)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !222, file: !16, line: 191, baseType: !90, size: 64, align: 64, offset: 640)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !222, file: !16, line: 193, baseType: !295, size: 64, align: 64, offset: 704)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64, align: 64)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !297)
!297 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !177, file: !4, line: 151, baseType: !300, size: 64, align: 64, offset: 320)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64, align: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{null, !169}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !177, file: !4, line: 152, baseType: !304, size: 64, align: 64, offset: 384)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64, align: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!183, !169, !307, !188}
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !177, file: !4, line: 155, baseType: !309, size: 64, align: 64, offset: 448)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64, align: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{!307, !169}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !171, file: !4, line: 103, baseType: !83, size: 64, align: 64, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !171, file: !4, line: 104, baseType: !314, size: 64, align: 64, offset: 192)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !315, line: 77, baseType: !316)
!315 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64, align: 64)
!317 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !315, line: 77, flags: DIFlagFwdDecl)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !171, file: !4, line: 105, baseType: !314, size: 64, align: 64, offset: 256)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !171, file: !4, line: 106, baseType: !83, size: 64, align: 64, offset: 320)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !171, file: !4, line: 107, baseType: !98, size: 32, align: 32, offset: 384)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !171, file: !4, line: 109, baseType: !184, size: 64, align: 64, offset: 448)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !171, file: !4, line: 110, baseType: !323, size: 64, align: 64, offset: 512)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64, align: 64)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !325, line: 39, baseType: !326)
!325 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !325, line: 41, size: 192, align: 64, elements: !327)
!327 = !{!328, !329, !330}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !326, file: !325, line: 43, baseType: !83, size: 64, align: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !326, file: !325, line: 44, baseType: !184, size: 64, align: 64, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !326, file: !325, line: 45, baseType: !184, size: 64, align: 64, offset: 128)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !171, file: !4, line: 111, baseType: !323, size: 64, align: 64, offset: 576)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !171, file: !4, line: 112, baseType: !323, size: 64, align: 64, offset: 640)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !171, file: !4, line: 113, baseType: !334, size: 48, align: 8, offset: 704)
!334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 48, align: 8, elements: !335)
!335 = !{!336}
!336 = !DISubrange(count: 6)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !171, file: !4, line: 117, baseType: !98, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !171, file: !4, line: 118, baseType: !98, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !171, file: !4, line: 119, baseType: !98, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !171, file: !4, line: 120, baseType: !98, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !171, file: !4, line: 121, baseType: !98, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !171, file: !4, line: 122, baseType: !98, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !171, file: !4, line: 124, baseType: !108, size: 64, align: 64, offset: 768)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !171, file: !4, line: 125, baseType: !108, size: 64, align: 64, offset: 832)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !135, file: !138, line: 38, baseType: !99, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !135, file: !138, line: 39, baseType: !99, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !135, file: !138, line: 40, baseType: !99, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !135, file: !138, line: 41, baseType: !99, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !135, file: !138, line: 42, baseType: !99, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !135, file: !138, line: 43, baseType: !99, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !135, file: !138, line: 44, baseType: !99, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !135, file: !138, line: 45, baseType: !99, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !135, file: !138, line: 46, baseType: !90, size: 64, align: 64, offset: 1792)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !135, file: !138, line: 47, baseType: !90, size: 64, align: 64, offset: 1856)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !125, file: !129, line: 9, baseType: !356, size: 64, align: 64, offset: 192)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !357, line: 75, baseType: !358)
!357 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !359, line: 139, baseType: !110)
!359 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!360 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !125, file: !129, line: 10, baseType: !356, size: 64, align: 64, offset: 256)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !125, file: !129, line: 12, baseType: !90, size: 64, align: 64, offset: 320)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !125, file: !129, line: 13, baseType: !90, size: 64, align: 64, offset: 384)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !125, file: !129, line: 15, baseType: !99, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !125, file: !129, line: 16, baseType: !99, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !125, file: !129, line: 17, baseType: !99, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !125, file: !129, line: 18, baseType: !99, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !125, file: !129, line: 19, baseType: !99, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !125, file: !129, line: 21, baseType: !369, size: 64, align: 64, offset: 512)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64, align: 64)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !124, line: 102, baseType: !371)
!371 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !124, line: 102, flags: DIFlagFwdDecl)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !125, file: !129, line: 22, baseType: !91, size: 32, align: 32, offset: 576)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !125, file: !129, line: 25, baseType: !374, size: 128, align: 64, offset: 640)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 128, align: 64, elements: !375)
!375 = !{!376}
!376 = !DISubrange(count: 2)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !125, file: !129, line: 26, baseType: !91, size: 32, align: 32, offset: 768)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !125, file: !129, line: 27, baseType: !91, size: 32, align: 32, offset: 800)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !125, file: !129, line: 29, baseType: !380, size: 64, align: 64, offset: 832)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64, align: 64)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !124, line: 103, baseType: !382)
!382 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !124, line: 103, flags: DIFlagFwdDecl)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !125, file: !129, line: 30, baseType: !384, size: 64, align: 64, offset: 896)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64, align: 64)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !386, line: 37, baseType: !387)
!386 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!387 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !386, line: 37, flags: DIFlagFwdDecl)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !125, file: !129, line: 32, baseType: !90, size: 64, align: 64, offset: 960)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !125, file: !129, line: 33, baseType: !90, size: 64, align: 64, offset: 1024)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !125, file: !129, line: 34, baseType: !90, size: 64, align: 64, offset: 1088)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !125, file: !129, line: 35, baseType: !99, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !125, file: !129, line: 36, baseType: !99, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !125, file: !129, line: 37, baseType: !99, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !125, file: !129, line: 38, baseType: !99, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !125, file: !129, line: 40, baseType: !396, size: 128, align: 64, offset: 1216)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !85, line: 504, baseType: !397)
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !85, line: 506, size: 128, align: 64, elements: !398)
!398 = !{!399, !400}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !397, file: !85, line: 508, baseType: !109, size: 64, align: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !397, file: !85, line: 509, baseType: !109, size: 64, align: 64, offset: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !125, file: !129, line: 41, baseType: !356, size: 64, align: 64, offset: 1344)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !125, file: !129, line: 42, baseType: !91, size: 32, align: 32, offset: 1408)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !125, file: !129, line: 44, baseType: !284, size: 64, align: 64, offset: 1472)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !125, file: !129, line: 45, baseType: !284, size: 64, align: 64, offset: 1536)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !125, file: !129, line: 53, baseType: !406, size: 64, align: 64, offset: 1600)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64, align: 64)
!407 = !DISubroutineType(types: !408)
!408 = !{null, !122, !87, !91}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !125, file: !129, line: 55, baseType: !410, size: 64, align: 64, offset: 1664)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64, align: 64)
!411 = !DISubroutineType(types: !412)
!412 = !{!91, !122, !86}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !125, file: !129, line: 57, baseType: !414, size: 64, align: 64, offset: 1728)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64, align: 64)
!415 = !DISubroutineType(types: !416)
!416 = !{!91, !122, !87}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !125, file: !129, line: 60, baseType: !418, size: 64, align: 64, offset: 1792)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64, align: 64)
!419 = !DISubroutineType(types: !420)
!420 = !{!87, !122}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !125, file: !129, line: 62, baseType: !422, size: 64, align: 64, offset: 1856)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64, align: 64)
!423 = !DISubroutineType(types: !424)
!424 = !{null, !122, !87, !87, !91}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !125, file: !129, line: 65, baseType: !426, size: 64, align: 64, offset: 1920)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64, align: 64)
!427 = !DISubroutineType(types: !428)
!428 = !{!89, !122, !87, !87}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !125, file: !129, line: 69, baseType: !430, size: 64, align: 64, offset: 1984)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64, align: 64)
!431 = !DISubroutineType(types: !432)
!432 = !{!433, !122, !87}
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64, align: 64)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !124, line: 109, baseType: !435)
!435 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !124, line: 109, flags: DIFlagFwdDecl)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !125, file: !129, line: 70, baseType: !437, size: 64, align: 64, offset: 2048)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64, align: 64)
!438 = !DISubroutineType(types: !439)
!439 = !{!440, !122, !87}
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64, align: 64)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !124, line: 110, baseType: !442)
!442 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !124, line: 110, flags: DIFlagFwdDecl)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !125, file: !129, line: 71, baseType: !444, size: 64, align: 64, offset: 2112)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64, align: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{!91, !87, !87}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !125, file: !129, line: 73, baseType: !444, size: 64, align: 64, offset: 2176)
!448 = !{}
!449 = distinct !DIGlobalVariable(name: "history_func", scope: !0, file: !119, line: 38, type: !450, isLocal: true, isDefinition: true, variable: i8* (i8*, i8*, i32*)** @history_func)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "SPECIAL_HISTORY_FUNC", file: !451, line: 16, baseType: !452)
!451 = !DIFile(filename: "special-vars.h", directory: "/home/lichi/Desktop/irssi/task1")
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64, align: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{!90, !87, !82, !111}
!455 = !{i32 2, !"Dwarf Version", i32 4}
!456 = !{i32 2, !"Debug Info Version", i32 3}
!457 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!458 = distinct !DISubprogram(name: "get_alignment", scope: !119, file: !119, line: 325, type: !459, isLocal: false, isDefinition: true, scopeLine: 326, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !448)
!459 = !DISubroutineType(types: !460)
!460 = !{!90, !87, !91, !91, !86}
!461 = !DILocalVariable(name: "text", arg: 1, scope: !458, file: !119, line: 325, type: !87)
!462 = !DIExpression()
!463 = !DILocation(line: 325, column: 33, scope: !458)
!464 = !DILocalVariable(name: "align", arg: 2, scope: !458, file: !119, line: 325, type: !91)
!465 = !DILocation(line: 325, column: 43, scope: !458)
!466 = !DILocalVariable(name: "flags", arg: 3, scope: !458, file: !119, line: 325, type: !91)
!467 = !DILocation(line: 325, column: 54, scope: !458)
!468 = !DILocalVariable(name: "pad", arg: 4, scope: !458, file: !119, line: 325, type: !86)
!469 = !DILocation(line: 325, column: 66, scope: !458)
!470 = !DILocalVariable(name: "str", scope: !458, file: !119, line: 327, type: !323)
!471 = !DILocation(line: 327, column: 11, scope: !458)
!472 = !DILocalVariable(name: "ret", scope: !458, file: !119, line: 328, type: !90)
!473 = !DILocation(line: 328, column: 8, scope: !458)
!474 = !DILocalVariable(name: "policy", scope: !458, file: !119, line: 329, type: !91)
!475 = !DILocation(line: 329, column: 6, scope: !458)
!476 = !DILocalVariable(name: "cut_bytes", scope: !458, file: !119, line: 330, type: !99)
!477 = !DILocation(line: 330, column: 15, scope: !458)
!478 = !DILocation(line: 332, column: 2, scope: !458)
!479 = distinct !{!479, !478}
!480 = !DILocation(line: 332, column: 10, scope: !481)
!481 = !DILexicalBlockFile(scope: !482, file: !119, discriminator: 1)
!482 = distinct !DILexicalBlock(scope: !483, file: !119, line: 332, column: 10)
!483 = distinct !DILexicalBlock(scope: !458, file: !119, line: 332, column: 4)
!484 = !DILocation(line: 332, column: 15, scope: !481)
!485 = !DILocation(line: 332, column: 5, scope: !486)
!486 = !DILexicalBlockFile(scope: !487, file: !119, discriminator: 2)
!487 = distinct !DILexicalBlock(scope: !482, file: !119, line: 332, column: 3)
!488 = !DILocation(line: 332, column: 14, scope: !489)
!489 = !DILexicalBlockFile(scope: !490, file: !119, discriminator: 3)
!490 = distinct !DILexicalBlock(scope: !482, file: !119, line: 332, column: 12)
!491 = !DILocation(line: 332, column: 99, scope: !489)
!492 = !DILocation(line: 332, column: 7, scope: !493)
!493 = !DILexicalBlockFile(scope: !483, file: !119, discriminator: 4)
!494 = !DILocation(line: 334, column: 25, scope: !458)
!495 = !DILocation(line: 334, column: 11, scope: !458)
!496 = !DILocation(line: 334, column: 9, scope: !458)
!497 = !DILocation(line: 336, column: 21, scope: !458)
!498 = !DILocation(line: 336, column: 8, scope: !458)
!499 = !DILocation(line: 336, column: 6, scope: !458)
!500 = !DILocation(line: 339, column: 7, scope: !501)
!501 = distinct !DILexicalBlock(scope: !458, file: !119, line: 339, column: 6)
!502 = !DILocation(line: 339, column: 13, scope: !501)
!503 = !DILocation(line: 339, column: 21, scope: !501)
!504 = !DILocation(line: 339, column: 24, scope: !505)
!505 = !DILexicalBlockFile(scope: !501, file: !119, discriminator: 1)
!506 = !DILocation(line: 339, column: 30, scope: !505)
!507 = !DILocation(line: 339, column: 34, scope: !505)
!508 = !DILocation(line: 339, column: 50, scope: !509)
!509 = !DILexicalBlockFile(scope: !501, file: !119, discriminator: 2)
!510 = !DILocation(line: 339, column: 56, scope: !509)
!511 = !DILocation(line: 339, column: 37, scope: !509)
!512 = !DILocation(line: 339, column: 66, scope: !509)
!513 = !DILocation(line: 339, column: 64, scope: !509)
!514 = !DILocation(line: 339, column: 6, scope: !509)
!515 = !DILocation(line: 340, column: 26, scope: !516)
!516 = distinct !DILexicalBlock(scope: !501, file: !119, line: 339, column: 73)
!517 = !DILocation(line: 340, column: 32, scope: !516)
!518 = !DILocation(line: 340, column: 40, scope: !516)
!519 = !DILocation(line: 340, column: 3, scope: !516)
!520 = !DILocation(line: 341, column: 21, scope: !516)
!521 = !DILocation(line: 341, column: 26, scope: !516)
!522 = !DILocation(line: 341, column: 3, scope: !516)
!523 = !DILocation(line: 342, column: 2, scope: !516)
!524 = !DILocation(line: 345, column: 6, scope: !525)
!525 = distinct !DILexicalBlock(scope: !458, file: !119, line: 345, column: 6)
!526 = !DILocation(line: 345, column: 12, scope: !525)
!527 = !DILocation(line: 345, column: 6, scope: !458)
!528 = !DILocalVariable(name: "pad_len", scope: !529, file: !119, line: 346, type: !91)
!529 = distinct !DILexicalBlock(scope: !525, file: !119, line: 345, column: 20)
!530 = !DILocation(line: 346, column: 7, scope: !529)
!531 = !DILocation(line: 346, column: 17, scope: !529)
!532 = !DILocation(line: 346, column: 38, scope: !529)
!533 = !DILocation(line: 346, column: 43, scope: !529)
!534 = !DILocation(line: 346, column: 48, scope: !529)
!535 = !DILocation(line: 346, column: 25, scope: !529)
!536 = !DILocation(line: 346, column: 23, scope: !529)
!537 = !DILocation(line: 347, column: 7, scope: !538)
!538 = distinct !DILexicalBlock(scope: !529, file: !119, line: 347, column: 7)
!539 = !DILocation(line: 347, column: 15, scope: !538)
!540 = !DILocation(line: 347, column: 7, scope: !529)
!541 = !DILocalVariable(name: "pad_full", scope: !542, file: !119, line: 348, type: !90)
!542 = distinct !DILexicalBlock(scope: !538, file: !119, line: 347, column: 20)
!543 = !DILocation(line: 348, column: 10, scope: !542)
!544 = !DILocation(line: 348, column: 32, scope: !542)
!545 = !DILocation(line: 348, column: 41, scope: !542)
!546 = !DILocation(line: 348, column: 21, scope: !542)
!547 = !DILocation(line: 349, column: 8, scope: !548)
!548 = distinct !DILexicalBlock(scope: !542, file: !119, line: 349, column: 8)
!549 = !DILocation(line: 349, column: 14, scope: !548)
!550 = !DILocation(line: 349, column: 8, scope: !542)
!551 = !DILocation(line: 350, column: 22, scope: !548)
!552 = !DILocation(line: 350, column: 27, scope: !548)
!553 = !DILocation(line: 350, column: 5, scope: !548)
!554 = !DILocation(line: 352, column: 21, scope: !548)
!555 = !DILocation(line: 352, column: 26, scope: !548)
!556 = !DILocation(line: 352, column: 5, scope: !548)
!557 = !DILocation(line: 353, column: 11, scope: !542)
!558 = !DILocation(line: 353, column: 4, scope: !542)
!559 = !DILocation(line: 354, column: 3, scope: !542)
!560 = !DILocation(line: 355, column: 2, scope: !529)
!561 = !DILocation(line: 357, column: 8, scope: !458)
!562 = !DILocation(line: 357, column: 13, scope: !458)
!563 = !DILocation(line: 357, column: 6, scope: !458)
!564 = !DILocation(line: 358, column: 16, scope: !458)
!565 = !DILocation(line: 358, column: 2, scope: !458)
!566 = !DILocation(line: 359, column: 9, scope: !458)
!567 = !DILocation(line: 359, column: 2, scope: !458)
!568 = !DILocation(line: 360, column: 1, scope: !458)
!569 = !DILocalVariable(name: "cmd", arg: 1, scope: !118, file: !119, line: 364, type: !89)
!570 = !DILocation(line: 364, column: 28, scope: !118)
!571 = !DILocalVariable(name: "server", arg: 2, scope: !118, file: !119, line: 364, type: !122)
!572 = !DILocation(line: 364, column: 45, scope: !118)
!573 = !DILocalVariable(name: "item", arg: 3, scope: !118, file: !119, line: 364, type: !82)
!574 = !DILocation(line: 364, column: 59, scope: !118)
!575 = !DILocalVariable(name: "arglist", arg: 4, scope: !118, file: !119, line: 365, type: !89)
!576 = !DILocation(line: 365, column: 14, scope: !118)
!577 = !DILocalVariable(name: "free_ret", arg: 5, scope: !118, file: !119, line: 365, type: !111)
!578 = !DILocation(line: 365, column: 28, scope: !118)
!579 = !DILocalVariable(name: "arg_used", arg: 6, scope: !118, file: !119, line: 365, type: !111)
!580 = !DILocation(line: 365, column: 43, scope: !118)
!581 = !DILocalVariable(name: "flags", arg: 7, scope: !118, file: !119, line: 365, type: !91)
!582 = !DILocation(line: 365, column: 57, scope: !118)
!583 = !DILocalVariable(name: "command", scope: !118, file: !119, line: 368, type: !86)
!584 = !DILocation(line: 368, column: 7, scope: !118)
!585 = !DILocalVariable(name: "value", scope: !118, file: !119, line: 368, type: !90)
!586 = !DILocation(line: 368, column: 17, scope: !118)
!587 = !DILocalVariable(name: "align_pad", scope: !118, file: !119, line: 370, type: !86)
!588 = !DILocation(line: 370, column: 7, scope: !118)
!589 = !DILocalVariable(name: "align", scope: !118, file: !119, line: 371, type: !91)
!590 = !DILocation(line: 371, column: 6, scope: !118)
!591 = !DILocalVariable(name: "align_flags", scope: !118, file: !119, line: 371, type: !91)
!592 = !DILocation(line: 371, column: 17, scope: !118)
!593 = !DILocalVariable(name: "nest_value", scope: !118, file: !119, line: 373, type: !90)
!594 = !DILocation(line: 373, column: 8, scope: !118)
!595 = !DILocalVariable(name: "brackets", scope: !118, file: !119, line: 374, type: !91)
!596 = !DILocation(line: 374, column: 6, scope: !118)
!597 = !DILocalVariable(name: "nest_free", scope: !118, file: !119, line: 374, type: !91)
!598 = !DILocation(line: 374, column: 16, scope: !118)
!599 = !DILocation(line: 376, column: 3, scope: !118)
!600 = !DILocation(line: 376, column: 12, scope: !118)
!601 = !DILocation(line: 377, column: 8, scope: !602)
!602 = distinct !DILexicalBlock(scope: !118, file: !119, line: 377, column: 6)
!603 = !DILocation(line: 377, column: 7, scope: !602)
!604 = !DILocation(line: 377, column: 6, scope: !602)
!605 = !DILocation(line: 377, column: 12, scope: !602)
!606 = !DILocation(line: 377, column: 6, scope: !118)
!607 = !DILocation(line: 378, column: 3, scope: !602)
!608 = !DILocation(line: 380, column: 14, scope: !118)
!609 = !DILocation(line: 380, column: 13, scope: !118)
!610 = !DILocation(line: 380, column: 12, scope: !118)
!611 = !DILocation(line: 380, column: 10, scope: !118)
!612 = !DILocation(line: 380, column: 21, scope: !118)
!613 = !DILocation(line: 380, column: 25, scope: !118)
!614 = !DILocation(line: 381, column: 10, scope: !118)
!615 = !DILocation(line: 381, column: 2, scope: !118)
!616 = !DILocation(line: 384, column: 27, scope: !617)
!617 = distinct !DILexicalBlock(scope: !618, file: !119, line: 384, column: 7)
!618 = distinct !DILexicalBlock(scope: !118, file: !119, line: 381, column: 19)
!619 = !DILocation(line: 384, column: 8, scope: !617)
!620 = !DILocation(line: 385, column: 18, scope: !617)
!621 = !DILocation(line: 385, column: 23, scope: !622)
!622 = !DILexicalBlockFile(scope: !617, file: !119, discriminator: 1)
!623 = !DILocation(line: 385, column: 22, scope: !622)
!624 = !DILocation(line: 385, column: 21, scope: !622)
!625 = !DILocation(line: 385, column: 27, scope: !622)
!626 = !DILocation(line: 384, column: 7, scope: !627)
!627 = !DILexicalBlockFile(scope: !618, file: !119, discriminator: 1)
!628 = !DILocation(line: 386, column: 6, scope: !629)
!629 = distinct !DILexicalBlock(scope: !617, file: !119, line: 385, column: 36)
!630 = !DILocation(line: 386, column: 10, scope: !629)
!631 = !DILocation(line: 387, column: 4, scope: !629)
!632 = !DILocation(line: 389, column: 3, scope: !618)
!633 = !DILocation(line: 391, column: 11, scope: !618)
!634 = !DILocation(line: 392, column: 5, scope: !618)
!635 = !DILocation(line: 392, column: 9, scope: !618)
!636 = !DILocation(line: 393, column: 2, scope: !618)
!637 = !DILocation(line: 395, column: 12, scope: !118)
!638 = !DILocation(line: 395, column: 30, scope: !118)
!639 = !DILocation(line: 426, column: 6, scope: !640)
!640 = distinct !DILexicalBlock(scope: !118, file: !119, line: 426, column: 6)
!641 = !DILocation(line: 426, column: 6, scope: !118)
!642 = !DILocation(line: 426, column: 39, scope: !643)
!643 = !DILexicalBlockFile(scope: !640, file: !119, discriminator: 1)
!644 = !DILocation(line: 426, column: 23, scope: !643)
!645 = !DILocation(line: 429, column: 8, scope: !646)
!646 = distinct !DILexicalBlock(scope: !118, file: !119, line: 429, column: 6)
!647 = !DILocation(line: 429, column: 7, scope: !646)
!648 = !DILocation(line: 429, column: 6, scope: !646)
!649 = !DILocation(line: 429, column: 12, scope: !646)
!650 = !DILocation(line: 429, column: 6, scope: !118)
!651 = !DILocation(line: 430, column: 12, scope: !646)
!652 = !DILocation(line: 430, column: 3, scope: !646)
!653 = !DILocation(line: 433, column: 9, scope: !654)
!654 = distinct !DILexicalBlock(scope: !655, file: !119, line: 433, column: 7)
!655 = distinct !DILexicalBlock(scope: !646, file: !119, line: 431, column: 7)
!656 = !DILocation(line: 433, column: 8, scope: !654)
!657 = !DILocation(line: 433, column: 7, scope: !654)
!658 = !DILocation(line: 433, column: 17, scope: !654)
!659 = !DILocation(line: 433, column: 7, scope: !655)
!660 = !DILocation(line: 434, column: 4, scope: !654)
!661 = !DILocation(line: 435, column: 5, scope: !655)
!662 = !DILocation(line: 435, column: 9, scope: !655)
!663 = !DILocation(line: 436, column: 12, scope: !655)
!664 = !DILocation(line: 439, column: 28, scope: !118)
!665 = !DILocation(line: 439, column: 33, scope: !118)
!666 = !DILocation(line: 439, column: 41, scope: !118)
!667 = !DILocation(line: 439, column: 47, scope: !118)
!668 = !DILocation(line: 440, column: 7, scope: !118)
!669 = !DILocation(line: 440, column: 17, scope: !118)
!670 = !DILocation(line: 440, column: 27, scope: !118)
!671 = !DILocation(line: 439, column: 10, scope: !118)
!672 = !DILocation(line: 439, column: 8, scope: !118)
!673 = !DILocation(line: 441, column: 8, scope: !674)
!674 = distinct !DILexicalBlock(scope: !118, file: !119, line: 441, column: 6)
!675 = !DILocation(line: 441, column: 7, scope: !674)
!676 = !DILocation(line: 441, column: 6, scope: !674)
!677 = !DILocation(line: 441, column: 12, scope: !674)
!678 = !DILocation(line: 441, column: 6, scope: !118)
!679 = !DILocation(line: 442, column: 3, scope: !674)
!680 = distinct !{!680, !679}
!681 = !DILocation(line: 442, column: 8, scope: !682)
!682 = !DILexicalBlockFile(scope: !683, file: !119, discriminator: 1)
!683 = distinct !DILexicalBlock(scope: !674, file: !119, line: 442, column: 6)
!684 = !DILocation(line: 442, column: 87, scope: !682)
!685 = !DILocation(line: 442, column: 87, scope: !686)
!686 = !DILexicalBlockFile(scope: !687, file: !119, discriminator: 2)
!687 = distinct !DILexicalBlock(scope: !688, file: !119, line: 442, column: 87)
!688 = distinct !DILexicalBlock(scope: !683, file: !119, line: 442, column: 87)
!689 = distinct !{!689, !690}
!690 = !DILocation(line: 442, column: 87, scope: !683)
!691 = !DILocation(line: 442, column: 98, scope: !692)
!692 = !DILexicalBlockFile(scope: !683, file: !119, discriminator: 3)
!693 = !DILocation(line: 444, column: 6, scope: !694)
!694 = distinct !DILexicalBlock(scope: !118, file: !119, line: 444, column: 6)
!695 = !DILocation(line: 444, column: 12, scope: !694)
!696 = !DILocation(line: 444, column: 19, scope: !694)
!697 = !DILocation(line: 444, column: 23, scope: !698)
!698 = !DILexicalBlockFile(scope: !694, file: !119, discriminator: 1)
!699 = !DILocation(line: 444, column: 22, scope: !698)
!700 = !DILocation(line: 444, column: 29, scope: !698)
!701 = !DILocation(line: 444, column: 37, scope: !698)
!702 = !DILocation(line: 444, column: 41, scope: !703)
!703 = !DILexicalBlockFile(scope: !694, file: !119, discriminator: 2)
!704 = !DILocation(line: 444, column: 47, scope: !703)
!705 = !DILocation(line: 444, column: 6, scope: !703)
!706 = !DILocation(line: 445, column: 4, scope: !694)
!707 = !DILocation(line: 445, column: 13, scope: !694)
!708 = !DILocation(line: 445, column: 3, scope: !694)
!709 = !DILocation(line: 447, column: 6, scope: !710)
!710 = distinct !DILexicalBlock(scope: !118, file: !119, line: 447, column: 6)
!711 = !DILocation(line: 447, column: 6, scope: !118)
!712 = !DILocation(line: 448, column: 3, scope: !713)
!713 = distinct !DILexicalBlock(scope: !710, file: !119, line: 447, column: 16)
!714 = !DILocation(line: 448, column: 12, scope: !715)
!715 = !DILexicalBlockFile(scope: !713, file: !119, discriminator: 1)
!716 = !DILocation(line: 448, column: 11, scope: !715)
!717 = !DILocation(line: 448, column: 10, scope: !715)
!718 = !DILocation(line: 448, column: 16, scope: !715)
!719 = !DILocation(line: 448, column: 23, scope: !715)
!720 = !DILocation(line: 448, column: 28, scope: !721)
!721 = !DILexicalBlockFile(scope: !713, file: !119, discriminator: 2)
!722 = !DILocation(line: 448, column: 27, scope: !721)
!723 = !DILocation(line: 448, column: 26, scope: !721)
!724 = !DILocation(line: 448, column: 36, scope: !721)
!725 = !DILocation(line: 448, column: 3, scope: !726)
!726 = !DILexicalBlockFile(scope: !713, file: !119, discriminator: 3)
!727 = !DILocation(line: 449, column: 6, scope: !713)
!728 = !DILocation(line: 449, column: 10, scope: !713)
!729 = !DILocation(line: 448, column: 3, scope: !730)
!730 = !DILexicalBlockFile(scope: !713, file: !119, discriminator: 4)
!731 = distinct !{!731, !712}
!732 = !DILocation(line: 450, column: 2, scope: !713)
!733 = !DILocation(line: 452, column: 6, scope: !734)
!734 = distinct !DILexicalBlock(scope: !118, file: !119, line: 452, column: 6)
!735 = !DILocation(line: 452, column: 6, scope: !118)
!736 = !DILocation(line: 452, column: 24, scope: !737)
!737 = !DILexicalBlockFile(scope: !734, file: !119, discriminator: 1)
!738 = !DILocation(line: 452, column: 17, scope: !737)
!739 = !DILocation(line: 454, column: 6, scope: !740)
!740 = distinct !DILexicalBlock(scope: !118, file: !119, line: 454, column: 6)
!741 = !DILocation(line: 454, column: 14, scope: !740)
!742 = !DILocation(line: 454, column: 21, scope: !740)
!743 = !DILocation(line: 454, column: 25, scope: !744)
!744 = !DILexicalBlockFile(scope: !740, file: !119, discriminator: 1)
!745 = !DILocation(line: 454, column: 31, scope: !744)
!746 = !DILocation(line: 454, column: 39, scope: !744)
!747 = !DILocation(line: 454, column: 6, scope: !744)
!748 = !DILocalVariable(name: "p", scope: !749, file: !119, line: 456, type: !90)
!749 = distinct !DILexicalBlock(scope: !740, file: !119, line: 454, column: 45)
!750 = !DILocation(line: 456, column: 9, scope: !749)
!751 = !DILocation(line: 458, column: 7, scope: !752)
!752 = distinct !DILexicalBlock(scope: !749, file: !119, line: 458, column: 7)
!753 = !DILocation(line: 458, column: 13, scope: !752)
!754 = !DILocation(line: 458, column: 7, scope: !749)
!755 = !DILocation(line: 458, column: 21, scope: !756)
!756 = !DILexicalBlockFile(scope: !752, file: !119, discriminator: 1)
!757 = !DILocation(line: 460, column: 21, scope: !749)
!758 = !DILocation(line: 460, column: 28, scope: !749)
!759 = !DILocation(line: 460, column: 35, scope: !749)
!760 = !DILocation(line: 460, column: 48, scope: !749)
!761 = !DILocation(line: 460, column: 7, scope: !749)
!762 = !DILocation(line: 460, column: 5, scope: !749)
!763 = !DILocation(line: 461, column: 8, scope: !764)
!764 = distinct !DILexicalBlock(scope: !749, file: !119, line: 461, column: 7)
!765 = !DILocation(line: 461, column: 7, scope: !764)
!766 = !DILocation(line: 461, column: 7, scope: !749)
!767 = !DILocation(line: 461, column: 25, scope: !768)
!768 = !DILexicalBlockFile(scope: !764, file: !119, discriminator: 1)
!769 = !DILocation(line: 461, column: 18, scope: !768)
!770 = !DILocation(line: 463, column: 4, scope: !749)
!771 = !DILocation(line: 463, column: 13, scope: !749)
!772 = !DILocation(line: 464, column: 10, scope: !749)
!773 = !DILocation(line: 464, column: 3, scope: !749)
!774 = !DILocation(line: 467, column: 9, scope: !118)
!775 = !DILocation(line: 467, column: 2, scope: !118)
!776 = !DILocation(line: 468, column: 1, scope: !118)
!777 = distinct !DISubprogram(name: "get_alignment_args", scope: !119, file: !119, line: 277, type: !778, isLocal: true, isDefinition: true, scopeLine: 278, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !448)
!778 = !DISubroutineType(types: !779)
!779 = !{!91, !89, !111, !111, !90}
!780 = !DILocalVariable(name: "data", arg: 1, scope: !777, file: !119, line: 277, type: !89)
!781 = !DILocation(line: 277, column: 38, scope: !777)
!782 = !DILocalVariable(name: "align", arg: 2, scope: !777, file: !119, line: 277, type: !111)
!783 = !DILocation(line: 277, column: 49, scope: !777)
!784 = !DILocalVariable(name: "flags", arg: 3, scope: !777, file: !119, line: 277, type: !111)
!785 = !DILocation(line: 277, column: 61, scope: !777)
!786 = !DILocalVariable(name: "pad", arg: 4, scope: !777, file: !119, line: 277, type: !90)
!787 = !DILocation(line: 277, column: 74, scope: !777)
!788 = !DILocalVariable(name: "str", scope: !777, file: !119, line: 279, type: !90)
!789 = !DILocation(line: 279, column: 8, scope: !777)
!790 = !DILocalVariable(name: "endptr", scope: !777, file: !119, line: 280, type: !90)
!791 = !DILocation(line: 280, column: 8, scope: !777)
!792 = !DILocalVariable(name: "align_", scope: !777, file: !119, line: 281, type: !98)
!793 = !DILocation(line: 281, column: 8, scope: !777)
!794 = !DILocation(line: 283, column: 3, scope: !777)
!795 = !DILocation(line: 283, column: 9, scope: !777)
!796 = !DILocation(line: 284, column: 3, scope: !777)
!797 = !DILocation(line: 284, column: 9, scope: !777)
!798 = !DILocation(line: 285, column: 10, scope: !777)
!799 = !DILocation(line: 285, column: 14, scope: !777)
!800 = !DILocation(line: 288, column: 9, scope: !777)
!801 = !DILocation(line: 288, column: 8, scope: !777)
!802 = !DILocation(line: 288, column: 6, scope: !777)
!803 = !DILocation(line: 289, column: 2, scope: !777)
!804 = !DILocation(line: 289, column: 10, scope: !805)
!805 = !DILexicalBlockFile(scope: !777, file: !119, discriminator: 1)
!806 = !DILocation(line: 289, column: 9, scope: !805)
!807 = !DILocation(line: 289, column: 14, scope: !805)
!808 = !DILocation(line: 289, column: 22, scope: !805)
!809 = !DILocation(line: 289, column: 26, scope: !810)
!810 = !DILexicalBlockFile(scope: !777, file: !119, discriminator: 2)
!811 = !DILocation(line: 289, column: 25, scope: !810)
!812 = !DILocation(line: 289, column: 30, scope: !810)
!813 = !DILocation(line: 289, column: 37, scope: !810)
!814 = !DILocation(line: 289, column: 64, scope: !815)
!815 = !DILexicalBlockFile(scope: !777, file: !119, discriminator: 3)
!816 = !DILocation(line: 289, column: 63, scope: !815)
!817 = !DILocation(line: 289, column: 40, scope: !815)
!818 = !DILocation(line: 289, column: 41, scope: !815)
!819 = !DILocation(line: 289, column: 43, scope: !815)
!820 = !DILocation(line: 289, column: 42, scope: !815)
!821 = !DILocation(line: 289, column: 44, scope: !815)
!822 = !DILocation(line: 289, column: 2, scope: !823)
!823 = !DILexicalBlockFile(scope: !777, file: !119, discriminator: 4)
!824 = !DILocation(line: 290, column: 8, scope: !825)
!825 = distinct !DILexicalBlock(scope: !826, file: !119, line: 290, column: 7)
!826 = distinct !DILexicalBlock(scope: !777, file: !119, line: 289, column: 57)
!827 = !DILocation(line: 290, column: 7, scope: !825)
!828 = !DILocation(line: 290, column: 12, scope: !825)
!829 = !DILocation(line: 290, column: 7, scope: !826)
!830 = !DILocation(line: 291, column: 5, scope: !825)
!831 = !DILocation(line: 291, column: 11, scope: !825)
!832 = !DILocation(line: 291, column: 4, scope: !825)
!833 = !DILocation(line: 292, column: 13, scope: !834)
!834 = distinct !DILexicalBlock(scope: !825, file: !119, line: 292, column: 12)
!835 = !DILocation(line: 292, column: 12, scope: !834)
!836 = !DILocation(line: 292, column: 17, scope: !834)
!837 = !DILocation(line: 292, column: 12, scope: !825)
!838 = !DILocation(line: 293, column: 5, scope: !834)
!839 = !DILocation(line: 293, column: 11, scope: !834)
!840 = !DILocation(line: 293, column: 4, scope: !834)
!841 = !DILocation(line: 294, column: 13, scope: !842)
!842 = distinct !DILexicalBlock(scope: !834, file: !119, line: 294, column: 12)
!843 = !DILocation(line: 294, column: 12, scope: !842)
!844 = !DILocation(line: 294, column: 17, scope: !842)
!845 = !DILocation(line: 294, column: 12, scope: !834)
!846 = !DILocation(line: 295, column: 27, scope: !842)
!847 = !DILocation(line: 295, column: 33, scope: !842)
!848 = !DILocation(line: 295, column: 26, scope: !842)
!849 = !DILocation(line: 296, column: 6, scope: !826)
!850 = !DILocation(line: 289, column: 2, scope: !851)
!851 = !DILexicalBlockFile(scope: !777, file: !119, discriminator: 5)
!852 = distinct !{!852, !803}
!853 = !DILocation(line: 298, column: 30, scope: !854)
!854 = distinct !DILexicalBlock(scope: !777, file: !119, line: 298, column: 6)
!855 = !DILocation(line: 298, column: 29, scope: !854)
!856 = !DILocation(line: 298, column: 6, scope: !854)
!857 = !DILocation(line: 298, column: 7, scope: !854)
!858 = !DILocation(line: 298, column: 9, scope: !854)
!859 = !DILocation(line: 298, column: 8, scope: !854)
!860 = !DILocation(line: 298, column: 10, scope: !854)
!861 = !DILocation(line: 298, column: 6, scope: !777)
!862 = !DILocation(line: 299, column: 3, scope: !854)
!863 = !DILocation(line: 302, column: 18, scope: !864)
!864 = distinct !DILexicalBlock(scope: !777, file: !119, line: 302, column: 6)
!865 = !DILocation(line: 302, column: 7, scope: !864)
!866 = !DILocation(line: 302, column: 6, scope: !777)
!867 = !DILocation(line: 303, column: 3, scope: !868)
!868 = distinct !DILexicalBlock(scope: !864, file: !119, line: 302, column: 46)
!869 = !DILocation(line: 306, column: 6, scope: !870)
!870 = distinct !DILexicalBlock(scope: !777, file: !119, line: 306, column: 6)
!871 = !DILocation(line: 306, column: 13, scope: !870)
!872 = !DILocation(line: 306, column: 6, scope: !777)
!873 = !DILocation(line: 307, column: 3, scope: !874)
!874 = distinct !DILexicalBlock(scope: !870, file: !119, line: 306, column: 23)
!875 = !DILocation(line: 309, column: 8, scope: !777)
!876 = !DILocation(line: 309, column: 6, scope: !777)
!877 = !DILocation(line: 310, column: 11, scope: !777)
!878 = !DILocation(line: 310, column: 3, scope: !777)
!879 = !DILocation(line: 310, column: 9, scope: !777)
!880 = !DILocation(line: 313, column: 2, scope: !777)
!881 = !DILocation(line: 313, column: 10, scope: !805)
!882 = !DILocation(line: 313, column: 9, scope: !805)
!883 = !DILocation(line: 313, column: 14, scope: !805)
!884 = !DILocation(line: 313, column: 22, scope: !805)
!885 = !DILocation(line: 313, column: 26, scope: !810)
!886 = !DILocation(line: 313, column: 25, scope: !810)
!887 = !DILocation(line: 313, column: 30, scope: !810)
!888 = !DILocation(line: 313, column: 2, scope: !815)
!889 = !DILocation(line: 314, column: 11, scope: !890)
!890 = distinct !DILexicalBlock(scope: !777, file: !119, line: 313, column: 38)
!891 = !DILocation(line: 314, column: 10, scope: !890)
!892 = !DILocation(line: 314, column: 4, scope: !890)
!893 = !DILocation(line: 314, column: 8, scope: !890)
!894 = !DILocation(line: 315, column: 6, scope: !890)
!895 = !DILocation(line: 313, column: 2, scope: !823)
!896 = distinct !{!896, !880}
!897 = !DILocation(line: 318, column: 10, scope: !898)
!898 = distinct !DILexicalBlock(scope: !777, file: !119, line: 318, column: 6)
!899 = !DILocation(line: 318, column: 6, scope: !898)
!900 = !DILocation(line: 318, column: 13, scope: !898)
!901 = !DILocation(line: 318, column: 6, scope: !777)
!902 = !DILocation(line: 318, column: 21, scope: !903)
!903 = !DILexicalBlockFile(scope: !898, file: !119, discriminator: 1)
!904 = !DILocation(line: 320, column: 10, scope: !777)
!905 = !DILocation(line: 320, column: 3, scope: !777)
!906 = !DILocation(line: 320, column: 8, scope: !777)
!907 = !DILocation(line: 321, column: 2, scope: !777)
!908 = !DILocation(line: 322, column: 1, scope: !777)
!909 = distinct !DISubprogram(name: "get_special_value", scope: !119, file: !119, line: 198, type: !120, isLocal: true, isDefinition: true, scopeLine: 201, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !448)
!910 = !DILocalVariable(name: "cmd", arg: 1, scope: !909, file: !119, line: 198, type: !89)
!911 = !DILocation(line: 198, column: 39, scope: !909)
!912 = !DILocalVariable(name: "server", arg: 2, scope: !909, file: !119, line: 198, type: !122)
!913 = !DILocation(line: 198, column: 56, scope: !909)
!914 = !DILocalVariable(name: "item", arg: 3, scope: !909, file: !119, line: 198, type: !82)
!915 = !DILocation(line: 198, column: 70, scope: !909)
!916 = !DILocalVariable(name: "arglist", arg: 4, scope: !909, file: !119, line: 199, type: !89)
!917 = !DILocation(line: 199, column: 18, scope: !909)
!918 = !DILocalVariable(name: "free_ret", arg: 5, scope: !909, file: !119, line: 199, type: !111)
!919 = !DILocation(line: 199, column: 32, scope: !909)
!920 = !DILocalVariable(name: "arg_used", arg: 6, scope: !909, file: !119, line: 199, type: !111)
!921 = !DILocation(line: 199, column: 47, scope: !909)
!922 = !DILocalVariable(name: "flags", arg: 7, scope: !909, file: !119, line: 200, type: !91)
!923 = !DILocation(line: 200, column: 15, scope: !909)
!924 = !DILocalVariable(name: "command", scope: !909, file: !119, line: 202, type: !86)
!925 = !DILocation(line: 202, column: 7, scope: !909)
!926 = !DILocalVariable(name: "value", scope: !909, file: !119, line: 202, type: !90)
!927 = !DILocation(line: 202, column: 17, scope: !909)
!928 = !DILocalVariable(name: "p", scope: !909, file: !119, line: 202, type: !90)
!929 = !DILocation(line: 202, column: 25, scope: !909)
!930 = !DILocalVariable(name: "len", scope: !909, file: !119, line: 203, type: !91)
!931 = !DILocation(line: 203, column: 6, scope: !909)
!932 = !DILocation(line: 205, column: 7, scope: !933)
!933 = distinct !DILexicalBlock(scope: !909, file: !119, line: 205, column: 6)
!934 = !DILocation(line: 205, column: 13, scope: !933)
!935 = !DILocation(line: 205, column: 21, scope: !933)
!936 = !DILocation(line: 205, column: 65, scope: !937)
!937 = !DILexicalBlockFile(scope: !933, file: !119, discriminator: 1)
!938 = !DILocation(line: 205, column: 64, scope: !937)
!939 = !DILocation(line: 205, column: 63, scope: !937)
!940 = !DILocation(line: 205, column: 40, scope: !937)
!941 = !DILocation(line: 205, column: 41, scope: !937)
!942 = !DILocation(line: 205, column: 43, scope: !937)
!943 = !DILocation(line: 205, column: 42, scope: !937)
!944 = !DILocation(line: 205, column: 44, scope: !937)
!945 = !DILocation(line: 205, column: 46, scope: !946)
!946 = !DILexicalBlockFile(scope: !933, file: !119, discriminator: 2)
!947 = !DILocation(line: 205, column: 45, scope: !946)
!948 = !DILocation(line: 205, column: 44, scope: !946)
!949 = !DILocation(line: 205, column: 43, scope: !946)
!950 = !DILocation(line: 205, column: 51, scope: !946)
!951 = !DILocation(line: 205, column: 58, scope: !946)
!952 = !DILocation(line: 205, column: 64, scope: !953)
!953 = !DILexicalBlockFile(scope: !933, file: !119, discriminator: 3)
!954 = !DILocation(line: 205, column: 63, scope: !953)
!955 = !DILocation(line: 205, column: 62, scope: !953)
!956 = !DILocation(line: 205, column: 61, scope: !953)
!957 = !DILocation(line: 205, column: 69, scope: !953)
!958 = !DILocation(line: 205, column: 76, scope: !953)
!959 = !DILocation(line: 205, column: 82, scope: !960)
!960 = !DILexicalBlockFile(scope: !933, file: !119, discriminator: 4)
!961 = !DILocation(line: 205, column: 81, scope: !960)
!962 = !DILocation(line: 205, column: 80, scope: !960)
!963 = !DILocation(line: 205, column: 79, scope: !960)
!964 = !DILocation(line: 205, column: 87, scope: !960)
!965 = !DILocation(line: 205, column: 6, scope: !960)
!966 = !DILocation(line: 206, column: 4, scope: !967)
!967 = distinct !DILexicalBlock(scope: !933, file: !119, line: 205, column: 96)
!968 = !DILocation(line: 206, column: 13, scope: !967)
!969 = !DILocation(line: 207, column: 35, scope: !967)
!970 = !DILocation(line: 207, column: 34, scope: !967)
!971 = !DILocation(line: 207, column: 33, scope: !967)
!972 = !DILocation(line: 207, column: 10, scope: !967)
!973 = !DILocation(line: 207, column: 3, scope: !967)
!974 = !DILocation(line: 210, column: 8, scope: !975)
!975 = distinct !DILexicalBlock(scope: !909, file: !119, line: 210, column: 6)
!976 = !DILocation(line: 210, column: 7, scope: !975)
!977 = !DILocation(line: 210, column: 6, scope: !975)
!978 = !DILocation(line: 210, column: 12, scope: !975)
!979 = !DILocation(line: 210, column: 6, scope: !909)
!980 = !DILocation(line: 212, column: 7, scope: !981)
!981 = distinct !DILexicalBlock(scope: !982, file: !119, line: 212, column: 7)
!982 = distinct !DILexicalBlock(scope: !975, file: !119, line: 210, column: 20)
!983 = !DILocation(line: 212, column: 13, scope: !981)
!984 = !DILocation(line: 212, column: 7, scope: !982)
!985 = !DILocation(line: 213, column: 4, scope: !981)
!986 = !DILocation(line: 215, column: 22, scope: !982)
!987 = !DILocation(line: 215, column: 27, scope: !982)
!988 = !DILocation(line: 215, column: 33, scope: !982)
!989 = !DILocation(line: 215, column: 10, scope: !982)
!990 = !DILocation(line: 215, column: 3, scope: !982)
!991 = !DILocation(line: 218, column: 10, scope: !909)
!992 = !DILocation(line: 219, column: 8, scope: !993)
!993 = distinct !DILexicalBlock(scope: !909, file: !119, line: 219, column: 6)
!994 = !DILocation(line: 219, column: 7, scope: !993)
!995 = !DILocation(line: 219, column: 6, scope: !993)
!996 = !DILocation(line: 219, column: 12, scope: !993)
!997 = !DILocation(line: 219, column: 19, scope: !993)
!998 = !DILocation(line: 219, column: 24, scope: !999)
!999 = !DILexicalBlockFile(scope: !993, file: !119, discriminator: 1)
!1000 = !DILocation(line: 219, column: 23, scope: !999)
!1001 = !DILocation(line: 219, column: 22, scope: !999)
!1002 = !DILocation(line: 219, column: 28, scope: !999)
!1003 = !DILocation(line: 219, column: 6, scope: !999)
!1004 = !DILocation(line: 220, column: 29, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !993, file: !119, line: 219, column: 36)
!1006 = !DILocation(line: 220, column: 28, scope: !1005)
!1007 = !DILocation(line: 220, column: 27, scope: !1005)
!1008 = !DILocation(line: 220, column: 25, scope: !1005)
!1009 = !DILocation(line: 221, column: 9, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1005, file: !119, line: 221, column: 7)
!1011 = !DILocation(line: 221, column: 8, scope: !1010)
!1012 = !DILocation(line: 221, column: 7, scope: !1010)
!1013 = !DILocation(line: 221, column: 17, scope: !1010)
!1014 = !DILocation(line: 221, column: 7, scope: !1005)
!1015 = !DILocation(line: 222, column: 6, scope: !1010)
!1016 = !DILocation(line: 222, column: 10, scope: !1010)
!1017 = !DILocation(line: 222, column: 4, scope: !1010)
!1018 = !DILocalVariable(name: "temp_cmd", scope: !1019, file: !119, line: 225, type: !90)
!1019 = distinct !DILexicalBlock(scope: !1010, file: !119, line: 223, column: 8)
!1020 = !DILocation(line: 225, column: 10, scope: !1019)
!1021 = !DILocation(line: 227, column: 8, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1019, file: !119, line: 227, column: 8)
!1023 = !DILocation(line: 227, column: 14, scope: !1022)
!1024 = !DILocation(line: 227, column: 8, scope: !1019)
!1025 = !DILocation(line: 228, column: 33, scope: !1022)
!1026 = !DILocation(line: 230, column: 5, scope: !1019)
!1027 = !DILocation(line: 230, column: 14, scope: !1019)
!1028 = !DILocation(line: 231, column: 35, scope: !1019)
!1029 = !DILocation(line: 231, column: 11, scope: !1019)
!1030 = !DILocation(line: 231, column: 4, scope: !1019)
!1031 = !DILocation(line: 233, column: 2, scope: !1005)
!1032 = !DILocation(line: 235, column: 23, scope: !909)
!1033 = !DILocation(line: 235, column: 28, scope: !909)
!1034 = !DILocation(line: 235, column: 36, scope: !909)
!1035 = !DILocation(line: 235, column: 42, scope: !909)
!1036 = !DILocation(line: 235, column: 51, scope: !909)
!1037 = !DILocation(line: 236, column: 9, scope: !909)
!1038 = !DILocation(line: 236, column: 19, scope: !909)
!1039 = !DILocation(line: 236, column: 25, scope: !909)
!1040 = !DILocation(line: 235, column: 10, scope: !909)
!1041 = !DILocation(line: 235, column: 8, scope: !909)
!1042 = !DILocation(line: 238, column: 6, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !909, file: !119, line: 238, column: 6)
!1044 = !DILocation(line: 238, column: 12, scope: !1043)
!1045 = !DILocation(line: 238, column: 6, scope: !909)
!1046 = !DILocation(line: 239, column: 10, scope: !1043)
!1047 = !DILocation(line: 239, column: 3, scope: !1043)
!1048 = !DILocation(line: 241, column: 6, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !909, file: !119, line: 241, column: 6)
!1050 = !DILocation(line: 241, column: 14, scope: !1049)
!1051 = !DILocation(line: 241, column: 6, scope: !909)
!1052 = !DILocation(line: 243, column: 7, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1054, file: !119, line: 243, column: 7)
!1054 = distinct !DILexicalBlock(scope: !1049, file: !119, line: 241, column: 22)
!1055 = !DILocation(line: 243, column: 13, scope: !1053)
!1056 = !DILocation(line: 243, column: 20, scope: !1053)
!1057 = !DILocation(line: 243, column: 24, scope: !1058)
!1058 = !DILexicalBlockFile(scope: !1053, file: !119, discriminator: 1)
!1059 = !DILocation(line: 243, column: 23, scope: !1058)
!1060 = !DILocation(line: 243, column: 30, scope: !1058)
!1061 = !DILocation(line: 243, column: 7, scope: !1058)
!1062 = !DILocation(line: 244, column: 8, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1064, file: !119, line: 244, column: 8)
!1064 = distinct !DILexicalBlock(scope: !1053, file: !119, line: 243, column: 39)
!1065 = !DILocation(line: 244, column: 14, scope: !1063)
!1066 = !DILocation(line: 244, column: 21, scope: !1063)
!1067 = !DILocation(line: 244, column: 25, scope: !1068)
!1068 = !DILexicalBlockFile(scope: !1063, file: !119, discriminator: 1)
!1069 = !DILocation(line: 244, column: 24, scope: !1068)
!1070 = !DILocation(line: 244, column: 8, scope: !1068)
!1071 = !DILocation(line: 245, column: 12, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1063, file: !119, line: 244, column: 35)
!1073 = !DILocation(line: 245, column: 5, scope: !1072)
!1074 = !DILocation(line: 246, column: 6, scope: !1072)
!1075 = !DILocation(line: 246, column: 15, scope: !1072)
!1076 = !DILocation(line: 247, column: 4, scope: !1072)
!1077 = !DILocation(line: 248, column: 4, scope: !1064)
!1078 = !DILocation(line: 251, column: 7, scope: !1054)
!1079 = !DILocation(line: 252, column: 12, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1054, file: !119, line: 252, column: 3)
!1081 = !DILocation(line: 252, column: 10, scope: !1080)
!1082 = !DILocation(line: 252, column: 8, scope: !1080)
!1083 = !DILocation(line: 252, column: 20, scope: !1084)
!1084 = !DILexicalBlockFile(scope: !1085, file: !119, discriminator: 1)
!1085 = distinct !DILexicalBlock(scope: !1080, file: !119, line: 252, column: 3)
!1086 = !DILocation(line: 252, column: 19, scope: !1084)
!1087 = !DILocation(line: 252, column: 22, scope: !1084)
!1088 = !DILocation(line: 252, column: 3, scope: !1084)
!1089 = !DILocation(line: 253, column: 9, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1091, file: !119, line: 253, column: 8)
!1091 = distinct !DILexicalBlock(scope: !1085, file: !119, line: 252, column: 36)
!1092 = !DILocation(line: 253, column: 8, scope: !1090)
!1093 = !DILocation(line: 253, column: 11, scope: !1090)
!1094 = !DILocation(line: 253, column: 18, scope: !1090)
!1095 = !DILocation(line: 253, column: 22, scope: !1096)
!1096 = !DILexicalBlockFile(scope: !1090, file: !119, discriminator: 1)
!1097 = !DILocation(line: 253, column: 27, scope: !1096)
!1098 = !DILocation(line: 253, column: 34, scope: !1096)
!1099 = !DILocation(line: 253, column: 37, scope: !1100)
!1100 = !DILexicalBlockFile(scope: !1090, file: !119, discriminator: 2)
!1101 = !DILocation(line: 253, column: 42, scope: !1100)
!1102 = !DILocation(line: 253, column: 8, scope: !1100)
!1103 = !DILocation(line: 254, column: 8, scope: !1090)
!1104 = !DILocation(line: 254, column: 5, scope: !1090)
!1105 = !DILocation(line: 255, column: 3, scope: !1091)
!1106 = !DILocation(line: 252, column: 32, scope: !1107)
!1107 = !DILexicalBlockFile(scope: !1085, file: !119, discriminator: 2)
!1108 = !DILocation(line: 252, column: 3, scope: !1107)
!1109 = distinct !{!1109, !1110}
!1110 = !DILocation(line: 252, column: 3, scope: !1054)
!1111 = !DILocation(line: 256, column: 22, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1054, file: !119, line: 256, column: 21)
!1113 = !DILocation(line: 256, column: 21, scope: !1112)
!1114 = !DILocation(line: 256, column: 21, scope: !1054)
!1115 = !DILocation(line: 256, column: 39, scope: !1116)
!1116 = !DILexicalBlockFile(scope: !1112, file: !119, discriminator: 1)
!1117 = !DILocation(line: 256, column: 32, scope: !1116)
!1118 = !DILocation(line: 258, column: 4, scope: !1054)
!1119 = !DILocation(line: 258, column: 13, scope: !1054)
!1120 = !DILocation(line: 259, column: 32, scope: !1054)
!1121 = !DILocation(line: 259, column: 10, scope: !1054)
!1122 = !DILocation(line: 259, column: 3, scope: !1054)
!1123 = !DILocation(line: 262, column: 6, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !909, file: !119, line: 262, column: 6)
!1125 = !DILocation(line: 262, column: 14, scope: !1124)
!1126 = !DILocation(line: 262, column: 6, scope: !909)
!1127 = !DILocation(line: 264, column: 7, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !119, line: 264, column: 7)
!1129 = distinct !DILexicalBlock(scope: !1124, file: !119, line: 262, column: 22)
!1130 = !DILocation(line: 264, column: 13, scope: !1128)
!1131 = !DILocation(line: 264, column: 7, scope: !1129)
!1132 = !DILocation(line: 264, column: 21, scope: !1133)
!1133 = !DILexicalBlockFile(scope: !1128, file: !119, discriminator: 1)
!1134 = !DILocation(line: 266, column: 16, scope: !1129)
!1135 = !DILocation(line: 266, column: 9, scope: !1129)
!1136 = !DILocation(line: 266, column: 7, scope: !1129)
!1137 = !DILocation(line: 267, column: 22, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1129, file: !119, line: 267, column: 21)
!1139 = !DILocation(line: 267, column: 21, scope: !1138)
!1140 = !DILocation(line: 267, column: 21, scope: !1129)
!1141 = !DILocation(line: 267, column: 39, scope: !1142)
!1142 = !DILexicalBlockFile(scope: !1138, file: !119, discriminator: 1)
!1143 = !DILocation(line: 267, column: 32, scope: !1142)
!1144 = !DILocation(line: 269, column: 4, scope: !1129)
!1145 = !DILocation(line: 269, column: 13, scope: !1129)
!1146 = !DILocation(line: 270, column: 32, scope: !1129)
!1147 = !DILocation(line: 270, column: 10, scope: !1129)
!1148 = !DILocation(line: 270, column: 3, scope: !1129)
!1149 = !DILocation(line: 273, column: 9, scope: !909)
!1150 = !DILocation(line: 273, column: 2, scope: !909)
!1151 = !DILocation(line: 274, column: 1, scope: !909)
!1152 = distinct !DISubprogram(name: "parse_special_string", scope: !119, file: !119, line: 501, type: !1153, isLocal: false, isDefinition: true, scopeLine: 503, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !448)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!90, !87, !122, !82, !87, !111, !91}
!1155 = !DILocalVariable(name: "cmd", arg: 1, scope: !1152, file: !119, line: 501, type: !87)
!1156 = !DILocation(line: 501, column: 40, scope: !1152)
!1157 = !DILocalVariable(name: "server", arg: 2, scope: !1152, file: !119, line: 501, type: !122)
!1158 = !DILocation(line: 501, column: 57, scope: !1152)
!1159 = !DILocalVariable(name: "item", arg: 3, scope: !1152, file: !119, line: 501, type: !82)
!1160 = !DILocation(line: 501, column: 71, scope: !1152)
!1161 = !DILocalVariable(name: "data", arg: 4, scope: !1152, file: !119, line: 502, type: !87)
!1162 = !DILocation(line: 502, column: 19, scope: !1152)
!1163 = !DILocalVariable(name: "arg_used", arg: 5, scope: !1152, file: !119, line: 502, type: !111)
!1164 = !DILocation(line: 502, column: 30, scope: !1152)
!1165 = !DILocalVariable(name: "flags", arg: 6, scope: !1152, file: !119, line: 502, type: !91)
!1166 = !DILocation(line: 502, column: 44, scope: !1152)
!1167 = !DILocalVariable(name: "code", scope: !1152, file: !119, line: 504, type: !86)
!1168 = !DILocation(line: 504, column: 7, scope: !1152)
!1169 = !DILocalVariable(name: "arglist", scope: !1152, file: !119, line: 504, type: !89)
!1170 = !DILocation(line: 504, column: 15, scope: !1152)
!1171 = !DILocalVariable(name: "ret", scope: !1152, file: !119, line: 504, type: !90)
!1172 = !DILocation(line: 504, column: 25, scope: !1152)
!1173 = !DILocalVariable(name: "str", scope: !1152, file: !119, line: 505, type: !323)
!1174 = !DILocation(line: 505, column: 11, scope: !1152)
!1175 = !DILocalVariable(name: "need_free", scope: !1152, file: !119, line: 506, type: !91)
!1176 = !DILocation(line: 506, column: 6, scope: !1152)
!1177 = !DILocalVariable(name: "chr", scope: !1152, file: !119, line: 506, type: !91)
!1178 = !DILocation(line: 506, column: 17, scope: !1152)
!1179 = !DILocation(line: 508, column: 2, scope: !1152)
!1180 = distinct !{!1180, !1179}
!1181 = !DILocation(line: 508, column: 10, scope: !1182)
!1182 = !DILexicalBlockFile(scope: !1183, file: !119, discriminator: 1)
!1183 = distinct !DILexicalBlock(scope: !1184, file: !119, line: 508, column: 10)
!1184 = distinct !DILexicalBlock(scope: !1152, file: !119, line: 508, column: 4)
!1185 = !DILocation(line: 508, column: 14, scope: !1182)
!1186 = !DILocation(line: 508, column: 5, scope: !1187)
!1187 = !DILexicalBlockFile(scope: !1188, file: !119, discriminator: 2)
!1188 = distinct !DILexicalBlock(scope: !1183, file: !119, line: 508, column: 3)
!1189 = !DILocation(line: 508, column: 14, scope: !1190)
!1190 = !DILexicalBlockFile(scope: !1191, file: !119, discriminator: 3)
!1191 = distinct !DILexicalBlock(scope: !1183, file: !119, line: 508, column: 12)
!1192 = !DILocation(line: 508, column: 98, scope: !1190)
!1193 = !DILocation(line: 508, column: 7, scope: !1194)
!1194 = !DILexicalBlockFile(scope: !1184, file: !119, discriminator: 4)
!1195 = !DILocation(line: 509, column: 2, scope: !1152)
!1196 = distinct !{!1196, !1195}
!1197 = !DILocation(line: 509, column: 10, scope: !1198)
!1198 = !DILexicalBlockFile(scope: !1199, file: !119, discriminator: 1)
!1199 = distinct !DILexicalBlock(scope: !1200, file: !119, line: 509, column: 10)
!1200 = distinct !DILexicalBlock(scope: !1152, file: !119, line: 509, column: 4)
!1201 = !DILocation(line: 509, column: 15, scope: !1198)
!1202 = !DILocation(line: 509, column: 5, scope: !1203)
!1203 = !DILexicalBlockFile(scope: !1204, file: !119, discriminator: 2)
!1204 = distinct !DILexicalBlock(scope: !1199, file: !119, line: 509, column: 3)
!1205 = !DILocation(line: 509, column: 14, scope: !1206)
!1206 = !DILexicalBlockFile(scope: !1207, file: !119, discriminator: 3)
!1207 = distinct !DILexicalBlock(scope: !1199, file: !119, line: 509, column: 12)
!1208 = !DILocation(line: 509, column: 99, scope: !1206)
!1209 = !DILocation(line: 509, column: 7, scope: !1210)
!1210 = !DILexicalBlockFile(scope: !1200, file: !119, discriminator: 4)
!1211 = !DILocation(line: 512, column: 23, scope: !1152)
!1212 = !DILocation(line: 512, column: 12, scope: !1152)
!1213 = !DILocation(line: 512, column: 10, scope: !1152)
!1214 = !DILocation(line: 514, column: 6, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1152, file: !119, line: 514, column: 6)
!1216 = !DILocation(line: 514, column: 15, scope: !1215)
!1217 = !DILocation(line: 514, column: 6, scope: !1152)
!1218 = !DILocation(line: 514, column: 24, scope: !1219)
!1219 = !DILexicalBlockFile(scope: !1215, file: !119, discriminator: 1)
!1220 = !DILocation(line: 514, column: 33, scope: !1219)
!1221 = !DILocation(line: 514, column: 23, scope: !1219)
!1222 = !DILocation(line: 515, column: 7, scope: !1152)
!1223 = !DILocation(line: 516, column: 8, scope: !1152)
!1224 = !DILocation(line: 516, column: 6, scope: !1152)
!1225 = !DILocation(line: 517, column: 2, scope: !1152)
!1226 = !DILocation(line: 517, column: 10, scope: !1227)
!1227 = !DILexicalBlockFile(scope: !1152, file: !119, discriminator: 1)
!1228 = !DILocation(line: 517, column: 9, scope: !1227)
!1229 = !DILocation(line: 517, column: 14, scope: !1227)
!1230 = !DILocation(line: 517, column: 2, scope: !1227)
!1231 = !DILocation(line: 518, column: 7, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1233, file: !119, line: 518, column: 7)
!1233 = distinct !DILexicalBlock(scope: !1152, file: !119, line: 517, column: 23)
!1234 = !DILocation(line: 518, column: 12, scope: !1232)
!1235 = !DILocation(line: 518, column: 7, scope: !1233)
!1236 = !DILocation(line: 519, column: 9, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !119, line: 519, column: 8)
!1238 = distinct !DILexicalBlock(scope: !1232, file: !119, line: 518, column: 21)
!1239 = !DILocation(line: 519, column: 8, scope: !1237)
!1240 = !DILocation(line: 519, column: 13, scope: !1237)
!1241 = !DILocation(line: 519, column: 8, scope: !1238)
!1242 = !DILocation(line: 520, column: 31, scope: !1237)
!1243 = !DILocation(line: 520, column: 5, scope: !1237)
!1244 = !DILocation(line: 522, column: 11, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1237, file: !119, line: 521, column: 9)
!1246 = !DILocation(line: 522, column: 9, scope: !1245)
!1247 = !DILocation(line: 523, column: 31, scope: !1245)
!1248 = !DILocation(line: 523, column: 36, scope: !1245)
!1249 = !DILocation(line: 523, column: 40, scope: !1245)
!1250 = !DILocation(line: 523, column: 48, scope: !1251)
!1251 = !DILexicalBlockFile(scope: !1245, file: !119, discriminator: 1)
!1252 = !DILocation(line: 523, column: 36, scope: !1251)
!1253 = !DILocation(line: 523, column: 55, scope: !1254)
!1254 = !DILexicalBlockFile(scope: !1245, file: !119, discriminator: 2)
!1255 = !DILocation(line: 523, column: 54, scope: !1254)
!1256 = !DILocation(line: 523, column: 36, scope: !1254)
!1257 = !DILocation(line: 523, column: 36, scope: !1258)
!1258 = !DILexicalBlockFile(scope: !1245, file: !119, discriminator: 3)
!1259 = !DILocation(line: 523, column: 5, scope: !1258)
!1260 = !DILocation(line: 525, column: 9, scope: !1238)
!1261 = !DILocation(line: 526, column: 3, scope: !1238)
!1262 = !DILocation(line: 526, column: 14, scope: !1263)
!1263 = !DILexicalBlockFile(scope: !1264, file: !119, discriminator: 1)
!1264 = distinct !DILexicalBlock(scope: !1232, file: !119, line: 526, column: 14)
!1265 = !DILocation(line: 526, column: 19, scope: !1263)
!1266 = !DILocalVariable(name: "ret", scope: !1267, file: !119, line: 527, type: !90)
!1267 = distinct !DILexicalBlock(scope: !1264, file: !119, line: 526, column: 27)
!1268 = !DILocation(line: 527, column: 10, scope: !1267)
!1269 = !DILocation(line: 529, column: 40, scope: !1267)
!1270 = !DILocation(line: 529, column: 48, scope: !1267)
!1271 = !DILocation(line: 530, column: 10, scope: !1267)
!1272 = !DILocation(line: 530, column: 31, scope: !1267)
!1273 = !DILocation(line: 531, column: 10, scope: !1267)
!1274 = !DILocation(line: 529, column: 10, scope: !1267)
!1275 = !DILocation(line: 529, column: 8, scope: !1267)
!1276 = !DILocation(line: 532, column: 8, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1267, file: !119, line: 532, column: 8)
!1278 = !DILocation(line: 532, column: 12, scope: !1277)
!1279 = !DILocation(line: 532, column: 8, scope: !1267)
!1280 = !DILocation(line: 533, column: 56, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1277, file: !119, line: 532, column: 20)
!1282 = !DILocation(line: 533, column: 61, scope: !1281)
!1283 = !DILocation(line: 533, column: 66, scope: !1281)
!1284 = !DILocation(line: 533, column: 33, scope: !1281)
!1285 = !DILocation(line: 534, column: 9, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1281, file: !119, line: 534, column: 9)
!1287 = !DILocation(line: 534, column: 9, scope: !1281)
!1288 = !DILocation(line: 534, column: 27, scope: !1289)
!1289 = !DILexicalBlockFile(scope: !1286, file: !119, discriminator: 1)
!1290 = !DILocation(line: 534, column: 20, scope: !1289)
!1291 = !DILocation(line: 535, column: 4, scope: !1281)
!1292 = !DILocation(line: 536, column: 9, scope: !1267)
!1293 = !DILocation(line: 537, column: 3, scope: !1267)
!1294 = !DILocation(line: 538, column: 9, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !119, line: 538, column: 8)
!1296 = distinct !DILexicalBlock(scope: !1264, file: !119, line: 537, column: 10)
!1297 = !DILocation(line: 538, column: 8, scope: !1295)
!1298 = !DILocation(line: 538, column: 13, scope: !1295)
!1299 = !DILocation(line: 538, column: 21, scope: !1295)
!1300 = !DILocation(line: 538, column: 25, scope: !1301)
!1301 = !DILexicalBlockFile(scope: !1295, file: !119, discriminator: 1)
!1302 = !DILocation(line: 538, column: 24, scope: !1301)
!1303 = !DILocation(line: 538, column: 29, scope: !1301)
!1304 = !DILocation(line: 538, column: 8, scope: !1301)
!1305 = !DILocation(line: 539, column: 13, scope: !1295)
!1306 = !DILocation(line: 539, column: 12, scope: !1295)
!1307 = !DILocation(line: 539, column: 10, scope: !1295)
!1308 = !DILocation(line: 539, column: 5, scope: !1295)
!1309 = !DILocation(line: 541, column: 31, scope: !1295)
!1310 = !DILocation(line: 541, column: 37, scope: !1295)
!1311 = !DILocation(line: 541, column: 36, scope: !1295)
!1312 = !DILocation(line: 541, column: 5, scope: !1295)
!1313 = !DILocation(line: 544, column: 20, scope: !1233)
!1314 = !DILocation(line: 517, column: 2, scope: !1315)
!1315 = !DILexicalBlockFile(scope: !1152, file: !119, discriminator: 2)
!1316 = distinct !{!1316, !1225}
!1317 = !DILocation(line: 546, column: 13, scope: !1152)
!1318 = !DILocation(line: 546, column: 2, scope: !1152)
!1319 = !DILocation(line: 548, column: 8, scope: !1152)
!1320 = !DILocation(line: 548, column: 13, scope: !1152)
!1321 = !DILocation(line: 548, column: 6, scope: !1152)
!1322 = !DILocation(line: 549, column: 16, scope: !1152)
!1323 = !DILocation(line: 549, column: 2, scope: !1152)
!1324 = !DILocation(line: 550, column: 9, scope: !1152)
!1325 = !DILocation(line: 550, column: 2, scope: !1152)
!1326 = !DILocation(line: 551, column: 1, scope: !1152)
!1327 = distinct !DISubprogram(name: "g_string_append_c_inline", scope: !325, file: !325, line: 161, type: !1328, isLocal: true, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !448)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!323, !323, !84}
!1330 = !DILocalVariable(name: "gstring", arg: 1, scope: !1327, file: !325, line: 161, type: !323)
!1331 = !DILocation(line: 161, column: 36, scope: !1327)
!1332 = !DILocalVariable(name: "c", arg: 2, scope: !1327, file: !325, line: 162, type: !84)
!1333 = !DILocation(line: 162, column: 33, scope: !1327)
!1334 = !DILocation(line: 164, column: 7, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1327, file: !325, line: 164, column: 7)
!1336 = !DILocation(line: 164, column: 16, scope: !1335)
!1337 = !DILocation(line: 164, column: 20, scope: !1335)
!1338 = !DILocation(line: 164, column: 26, scope: !1335)
!1339 = !DILocation(line: 164, column: 35, scope: !1335)
!1340 = !DILocation(line: 164, column: 24, scope: !1335)
!1341 = !DILocation(line: 164, column: 7, scope: !1327)
!1342 = !DILocation(line: 166, column: 38, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1335, file: !325, line: 165, column: 5)
!1344 = !DILocation(line: 166, column: 20, scope: !1343)
!1345 = !DILocation(line: 166, column: 29, scope: !1343)
!1346 = !DILocation(line: 166, column: 32, scope: !1343)
!1347 = !DILocation(line: 166, column: 7, scope: !1343)
!1348 = !DILocation(line: 166, column: 16, scope: !1343)
!1349 = !DILocation(line: 166, column: 36, scope: !1343)
!1350 = !DILocation(line: 167, column: 20, scope: !1343)
!1351 = !DILocation(line: 167, column: 29, scope: !1343)
!1352 = !DILocation(line: 167, column: 7, scope: !1343)
!1353 = !DILocation(line: 167, column: 16, scope: !1343)
!1354 = !DILocation(line: 167, column: 34, scope: !1343)
!1355 = !DILocation(line: 168, column: 5, scope: !1343)
!1356 = !DILocation(line: 170, column: 24, scope: !1335)
!1357 = !DILocation(line: 170, column: 37, scope: !1335)
!1358 = !DILocation(line: 170, column: 5, scope: !1335)
!1359 = !DILocation(line: 171, column: 10, scope: !1327)
!1360 = !DILocation(line: 171, column: 3, scope: !1327)
!1361 = distinct !DISubprogram(name: "gstring_append_escaped", scope: !119, file: !119, line: 470, type: !1362, isLocal: true, isDefinition: true, scopeLine: 471, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !448)
!1362 = !DISubroutineType(types: !1363)
!1363 = !{null, !323, !87, !91}
!1364 = !DILocalVariable(name: "str", arg: 1, scope: !1361, file: !119, line: 470, type: !323)
!1365 = !DILocation(line: 470, column: 45, scope: !1361)
!1366 = !DILocalVariable(name: "text", arg: 2, scope: !1361, file: !119, line: 470, type: !87)
!1367 = !DILocation(line: 470, column: 62, scope: !1361)
!1368 = !DILocalVariable(name: "flags", arg: 3, scope: !1361, file: !119, line: 470, type: !91)
!1369 = !DILocation(line: 470, column: 72, scope: !1361)
!1370 = !DILocalVariable(name: "esc", scope: !1361, file: !119, line: 472, type: !1371)
!1371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 32, align: 8, elements: !1372)
!1372 = !{!1373}
!1373 = !DISubrange(count: 4)
!1374 = !DILocation(line: 472, column: 7, scope: !1361)
!1375 = !DILocalVariable(name: "escpos", scope: !1361, file: !119, line: 472, type: !90)
!1376 = !DILocation(line: 472, column: 16, scope: !1361)
!1377 = !DILocation(line: 474, column: 11, scope: !1361)
!1378 = !DILocation(line: 474, column: 9, scope: !1361)
!1379 = !DILocation(line: 475, column: 6, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1361, file: !119, line: 475, column: 6)
!1381 = !DILocation(line: 475, column: 12, scope: !1380)
!1382 = !DILocation(line: 475, column: 6, scope: !1361)
!1383 = !DILocation(line: 476, column: 10, scope: !1380)
!1384 = !DILocation(line: 476, column: 13, scope: !1380)
!1385 = !DILocation(line: 476, column: 3, scope: !1380)
!1386 = !DILocation(line: 477, column: 6, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1361, file: !119, line: 477, column: 6)
!1388 = !DILocation(line: 477, column: 12, scope: !1387)
!1389 = !DILocation(line: 477, column: 6, scope: !1361)
!1390 = !DILocation(line: 478, column: 10, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1387, file: !119, line: 477, column: 20)
!1392 = !DILocation(line: 478, column: 13, scope: !1391)
!1393 = !DILocation(line: 479, column: 10, scope: !1391)
!1394 = !DILocation(line: 479, column: 13, scope: !1391)
!1395 = !DILocation(line: 480, column: 2, scope: !1391)
!1396 = !DILocation(line: 482, column: 6, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1361, file: !119, line: 482, column: 6)
!1398 = !DILocation(line: 482, column: 16, scope: !1397)
!1399 = !DILocation(line: 482, column: 13, scope: !1397)
!1400 = !DILocation(line: 482, column: 6, scope: !1361)
!1401 = !DILocation(line: 483, column: 19, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1397, file: !119, line: 482, column: 21)
!1403 = !DILocation(line: 483, column: 24, scope: !1402)
!1404 = !DILocation(line: 483, column: 3, scope: !1402)
!1405 = !DILocation(line: 484, column: 3, scope: !1402)
!1406 = !DILocation(line: 487, column: 3, scope: !1361)
!1407 = !DILocation(line: 487, column: 10, scope: !1361)
!1408 = !DILocation(line: 488, column: 2, scope: !1361)
!1409 = !DILocation(line: 488, column: 10, scope: !1410)
!1410 = !DILexicalBlockFile(scope: !1361, file: !119, discriminator: 1)
!1411 = !DILocation(line: 488, column: 9, scope: !1410)
!1412 = !DILocation(line: 488, column: 15, scope: !1410)
!1413 = !DILocation(line: 488, column: 2, scope: !1410)
!1414 = !DILocation(line: 489, column: 17, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1416, file: !119, line: 489, column: 3)
!1416 = distinct !DILexicalBlock(scope: !1361, file: !119, line: 488, column: 24)
!1417 = !DILocation(line: 489, column: 15, scope: !1415)
!1418 = !DILocation(line: 489, column: 8, scope: !1415)
!1419 = !DILocation(line: 489, column: 23, scope: !1420)
!1420 = !DILexicalBlockFile(scope: !1421, file: !119, discriminator: 1)
!1421 = distinct !DILexicalBlock(scope: !1415, file: !119, line: 489, column: 3)
!1422 = !DILocation(line: 489, column: 22, scope: !1420)
!1423 = !DILocation(line: 489, column: 30, scope: !1420)
!1424 = !DILocation(line: 489, column: 3, scope: !1420)
!1425 = !DILocation(line: 490, column: 9, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1427, file: !119, line: 490, column: 8)
!1427 = distinct !DILexicalBlock(scope: !1421, file: !119, line: 489, column: 49)
!1428 = !DILocation(line: 490, column: 8, scope: !1426)
!1429 = !DILocation(line: 490, column: 18, scope: !1426)
!1430 = !DILocation(line: 490, column: 17, scope: !1426)
!1431 = !DILocation(line: 490, column: 14, scope: !1426)
!1432 = !DILocation(line: 490, column: 8, scope: !1427)
!1433 = !DILocation(line: 491, column: 52, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1426, file: !119, line: 490, column: 26)
!1435 = !DILocation(line: 491, column: 26, scope: !1434)
!1436 = !DILocation(line: 492, column: 26, scope: !1434)
!1437 = !DILocation(line: 494, column: 3, scope: !1427)
!1438 = !DILocation(line: 489, column: 45, scope: !1439)
!1439 = !DILexicalBlockFile(scope: !1421, file: !119, discriminator: 2)
!1440 = !DILocation(line: 489, column: 3, scope: !1439)
!1441 = distinct !{!1441, !1442}
!1442 = !DILocation(line: 489, column: 3, scope: !1416)
!1443 = !DILocation(line: 495, column: 29, scope: !1416)
!1444 = !DILocation(line: 495, column: 35, scope: !1416)
!1445 = !DILocation(line: 495, column: 34, scope: !1416)
!1446 = !DILocation(line: 495, column: 3, scope: !1416)
!1447 = !DILocation(line: 496, column: 7, scope: !1416)
!1448 = !DILocation(line: 488, column: 2, scope: !1449)
!1449 = !DILexicalBlockFile(scope: !1361, file: !119, discriminator: 2)
!1450 = distinct !{!1450, !1408}
!1451 = !DILocation(line: 498, column: 1, scope: !1361)
!1452 = distinct !DISubprogram(name: "eval_special_string", scope: !119, file: !119, line: 558, type: !1453, isLocal: false, isDefinition: true, scopeLine: 560, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !448)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{null, !87, !87, !122, !82}
!1455 = !DILocalVariable(name: "cmd", arg: 1, scope: !1452, file: !119, line: 558, type: !87)
!1456 = !DILocation(line: 558, column: 38, scope: !1452)
!1457 = !DILocalVariable(name: "data", arg: 2, scope: !1452, file: !119, line: 558, type: !87)
!1458 = !DILocation(line: 558, column: 55, scope: !1452)
!1459 = !DILocalVariable(name: "server", arg: 3, scope: !1452, file: !119, line: 559, type: !122)
!1460 = !DILocation(line: 559, column: 17, scope: !1452)
!1461 = !DILocalVariable(name: "item", arg: 4, scope: !1452, file: !119, line: 559, type: !82)
!1462 = !DILocation(line: 559, column: 31, scope: !1452)
!1463 = !DILocalVariable(name: "cmdchars", scope: !1452, file: !119, line: 561, type: !87)
!1464 = !DILocation(line: 561, column: 14, scope: !1452)
!1465 = !DILocalVariable(name: "orig", scope: !1452, file: !119, line: 562, type: !90)
!1466 = !DILocation(line: 562, column: 8, scope: !1452)
!1467 = !DILocalVariable(name: "str", scope: !1452, file: !119, line: 562, type: !90)
!1468 = !DILocation(line: 562, column: 15, scope: !1452)
!1469 = !DILocalVariable(name: "start", scope: !1452, file: !119, line: 562, type: !90)
!1470 = !DILocation(line: 562, column: 21, scope: !1452)
!1471 = !DILocalVariable(name: "ret", scope: !1452, file: !119, line: 562, type: !90)
!1472 = !DILocation(line: 562, column: 29, scope: !1452)
!1473 = !DILocalVariable(name: "arg_used", scope: !1452, file: !119, line: 563, type: !91)
!1474 = !DILocation(line: 563, column: 6, scope: !1452)
!1475 = !DILocalVariable(name: "arg_used_ever", scope: !1452, file: !119, line: 563, type: !91)
!1476 = !DILocation(line: 563, column: 16, scope: !1452)
!1477 = !DILocalVariable(name: "commands", scope: !1452, file: !119, line: 564, type: !284)
!1478 = !DILocation(line: 564, column: 10, scope: !1452)
!1479 = !DILocation(line: 566, column: 11, scope: !1452)
!1480 = !DILocation(line: 567, column: 16, scope: !1452)
!1481 = !DILocation(line: 568, column: 13, scope: !1452)
!1482 = !DILocation(line: 568, column: 11, scope: !1452)
!1483 = !DILocation(line: 571, column: 32, scope: !1452)
!1484 = !DILocation(line: 571, column: 23, scope: !1452)
!1485 = !DILocation(line: 571, column: 21, scope: !1452)
!1486 = !DILocation(line: 571, column: 15, scope: !1452)
!1487 = !DILocation(line: 571, column: 7, scope: !1452)
!1488 = !DILocation(line: 572, column: 2, scope: !1452)
!1489 = distinct !{!1489, !1488}
!1490 = !DILocation(line: 573, column: 9, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1492, file: !119, line: 573, column: 7)
!1492 = distinct !DILexicalBlock(scope: !1452, file: !119, line: 572, column: 5)
!1493 = !DILocation(line: 573, column: 8, scope: !1491)
!1494 = !DILocation(line: 573, column: 17, scope: !1491)
!1495 = !DILocation(line: 573, column: 24, scope: !1491)
!1496 = !DILocation(line: 573, column: 29, scope: !1497)
!1497 = !DILexicalBlockFile(scope: !1491, file: !119, discriminator: 1)
!1498 = !DILocation(line: 573, column: 40, scope: !1497)
!1499 = !DILocation(line: 573, column: 36, scope: !1497)
!1500 = !DILocation(line: 573, column: 45, scope: !1497)
!1501 = !DILocation(line: 573, column: 50, scope: !1502)
!1502 = !DILexicalBlockFile(scope: !1491, file: !119, discriminator: 2)
!1503 = !DILocation(line: 573, column: 49, scope: !1502)
!1504 = !DILocation(line: 573, column: 59, scope: !1502)
!1505 = !DILocation(line: 573, column: 67, scope: !1502)
!1506 = !DILocation(line: 573, column: 71, scope: !1507)
!1507 = !DILexicalBlockFile(scope: !1491, file: !119, discriminator: 3)
!1508 = !DILocation(line: 573, column: 70, scope: !1507)
!1509 = !DILocation(line: 573, column: 80, scope: !1507)
!1510 = !DILocation(line: 573, column: 7, scope: !1507)
!1511 = !DILocation(line: 574, column: 8, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1491, file: !119, line: 573, column: 91)
!1513 = !DILocation(line: 574, column: 11, scope: !1512)
!1514 = !DILocation(line: 575, column: 25, scope: !1512)
!1515 = !DILocation(line: 575, column: 33, scope: !1516)
!1516 = !DILexicalBlockFile(scope: !1512, file: !119, discriminator: 1)
!1517 = !DILocation(line: 575, column: 32, scope: !1516)
!1518 = !DILocation(line: 575, column: 37, scope: !1516)
!1519 = !DILocation(line: 575, column: 25, scope: !1516)
!1520 = !DILocation(line: 575, column: 48, scope: !1521)
!1521 = !DILexicalBlockFile(scope: !1512, file: !119, discriminator: 2)
!1522 = !DILocation(line: 575, column: 25, scope: !1521)
!1523 = distinct !{!1523, !1514}
!1524 = !DILocation(line: 576, column: 3, scope: !1512)
!1525 = !DILocation(line: 576, column: 15, scope: !1526)
!1526 = !DILexicalBlockFile(scope: !1527, file: !119, discriminator: 1)
!1527 = distinct !DILexicalBlock(scope: !1491, file: !119, line: 576, column: 14)
!1528 = !DILocation(line: 576, column: 14, scope: !1526)
!1529 = !DILocation(line: 576, column: 19, scope: !1526)
!1530 = !DILocation(line: 577, column: 7, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1527, file: !119, line: 576, column: 28)
!1532 = !DILocation(line: 578, column: 4, scope: !1531)
!1533 = !DILocation(line: 581, column: 30, scope: !1492)
!1534 = !DILocation(line: 581, column: 37, scope: !1492)
!1535 = !DILocation(line: 581, column: 45, scope: !1492)
!1536 = !DILocation(line: 582, column: 9, scope: !1492)
!1537 = !DILocation(line: 581, column: 9, scope: !1492)
!1538 = !DILocation(line: 581, column: 7, scope: !1492)
!1539 = !DILocation(line: 583, column: 8, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1492, file: !119, line: 583, column: 7)
!1541 = !DILocation(line: 583, column: 7, scope: !1540)
!1542 = !DILocation(line: 583, column: 12, scope: !1540)
!1543 = !DILocation(line: 583, column: 7, scope: !1492)
!1544 = !DILocation(line: 584, column: 8, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !119, line: 584, column: 8)
!1546 = distinct !DILexicalBlock(scope: !1540, file: !119, line: 583, column: 21)
!1547 = !DILocation(line: 584, column: 8, scope: !1546)
!1548 = !DILocation(line: 584, column: 32, scope: !1549)
!1549 = !DILexicalBlockFile(scope: !1545, file: !119, discriminator: 1)
!1550 = !DILocation(line: 584, column: 18, scope: !1549)
!1551 = !DILocation(line: 586, column: 15, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1546, file: !119, line: 586, column: 8)
!1553 = !DILocation(line: 586, column: 26, scope: !1552)
!1554 = !DILocation(line: 586, column: 25, scope: !1552)
!1555 = !DILocation(line: 586, column: 8, scope: !1552)
!1556 = !DILocation(line: 586, column: 31, scope: !1552)
!1557 = !DILocation(line: 586, column: 8, scope: !1546)
!1558 = !DILocalVariable(name: "old", scope: !1559, file: !119, line: 588, type: !90)
!1559 = distinct !DILexicalBlock(scope: !1552, file: !119, line: 586, column: 39)
!1560 = !DILocation(line: 588, column: 11, scope: !1559)
!1561 = !DILocation(line: 588, column: 17, scope: !1559)
!1562 = !DILocation(line: 590, column: 36, scope: !1559)
!1563 = !DILocation(line: 590, column: 35, scope: !1559)
!1564 = !DILocation(line: 590, column: 46, scope: !1559)
!1565 = !DILocation(line: 590, column: 11, scope: !1559)
!1566 = !DILocation(line: 590, column: 9, scope: !1559)
!1567 = !DILocation(line: 591, column: 12, scope: !1559)
!1568 = !DILocation(line: 591, column: 5, scope: !1559)
!1569 = !DILocation(line: 592, column: 4, scope: !1559)
!1570 = !DILocation(line: 593, column: 30, scope: !1546)
!1571 = !DILocation(line: 593, column: 40, scope: !1546)
!1572 = !DILocation(line: 593, column: 15, scope: !1546)
!1573 = !DILocation(line: 593, column: 13, scope: !1546)
!1574 = !DILocation(line: 594, column: 3, scope: !1546)
!1575 = !DILocation(line: 595, column: 11, scope: !1492)
!1576 = !DILocation(line: 595, column: 9, scope: !1492)
!1577 = !DILocation(line: 596, column: 2, scope: !1492)
!1578 = !DILocation(line: 596, column: 12, scope: !1579)
!1579 = !DILexicalBlockFile(scope: !1452, file: !119, discriminator: 1)
!1580 = !DILocation(line: 596, column: 11, scope: !1579)
!1581 = !DILocation(line: 596, column: 18, scope: !1579)
!1582 = !DILocation(line: 596, column: 2, scope: !1579)
!1583 = !DILocation(line: 600, column: 2, scope: !1452)
!1584 = !DILocation(line: 600, column: 9, scope: !1579)
!1585 = !DILocation(line: 600, column: 18, scope: !1579)
!1586 = !DILocation(line: 600, column: 2, scope: !1579)
!1587 = !DILocation(line: 601, column: 9, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1452, file: !119, line: 600, column: 26)
!1589 = !DILocation(line: 601, column: 19, scope: !1588)
!1590 = !DILocation(line: 601, column: 7, scope: !1588)
!1591 = !DILocation(line: 603, column: 8, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1588, file: !119, line: 603, column: 7)
!1593 = !DILocation(line: 603, column: 22, scope: !1592)
!1594 = !DILocation(line: 603, column: 26, scope: !1595)
!1595 = !DILexicalBlockFile(scope: !1592, file: !119, discriminator: 1)
!1596 = !DILocation(line: 603, column: 25, scope: !1595)
!1597 = !DILocation(line: 603, column: 31, scope: !1595)
!1598 = !DILocation(line: 603, column: 7, scope: !1595)
!1599 = !DILocalVariable(name: "old", scope: !1600, file: !119, line: 604, type: !90)
!1600 = distinct !DILexicalBlock(scope: !1592, file: !119, line: 603, column: 40)
!1601 = !DILocation(line: 604, column: 10, scope: !1600)
!1602 = !DILocation(line: 604, column: 16, scope: !1600)
!1603 = !DILocation(line: 606, column: 22, scope: !1600)
!1604 = !DILocation(line: 606, column: 32, scope: !1600)
!1605 = !DILocation(line: 606, column: 10, scope: !1600)
!1606 = !DILocation(line: 606, column: 8, scope: !1600)
!1607 = !DILocation(line: 607, column: 11, scope: !1600)
!1608 = !DILocation(line: 607, column: 4, scope: !1600)
!1609 = !DILocation(line: 608, column: 3, scope: !1600)
!1610 = !DILocation(line: 610, column: 21, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1588, file: !119, line: 610, column: 21)
!1612 = !DILocation(line: 610, column: 28, scope: !1611)
!1613 = !DILocation(line: 610, column: 21, scope: !1588)
!1614 = !DILocation(line: 611, column: 15, scope: !1611)
!1615 = !DILocation(line: 611, column: 4, scope: !1611)
!1616 = !DILocation(line: 612, column: 34, scope: !1588)
!1617 = !DILocation(line: 612, column: 39, scope: !1588)
!1618 = !DILocation(line: 612, column: 47, scope: !1588)
!1619 = !DILocation(line: 612, column: 3, scope: !1588)
!1620 = !DILocation(line: 614, column: 7, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1588, file: !119, line: 614, column: 7)
!1622 = !DILocation(line: 614, column: 14, scope: !1621)
!1623 = !DILocation(line: 614, column: 21, scope: !1621)
!1624 = !DILocation(line: 614, column: 38, scope: !1625)
!1625 = !DILexicalBlockFile(scope: !1621, file: !119, discriminator: 1)
!1626 = !DILocation(line: 614, column: 25, scope: !1625)
!1627 = !DILocation(line: 614, column: 7, scope: !1625)
!1628 = !DILocation(line: 616, column: 11, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1621, file: !119, line: 614, column: 47)
!1630 = !DILocation(line: 617, column: 30, scope: !1629)
!1631 = !DILocation(line: 618, column: 3, scope: !1629)
!1632 = !DILocation(line: 623, column: 29, scope: !1588)
!1633 = !DILocation(line: 623, column: 39, scope: !1588)
!1634 = !DILocation(line: 623, column: 49, scope: !1588)
!1635 = !DILocation(line: 623, column: 14, scope: !1588)
!1636 = !DILocation(line: 623, column: 12, scope: !1588)
!1637 = !DILocation(line: 624, column: 10, scope: !1588)
!1638 = !DILocation(line: 624, column: 3, scope: !1588)
!1639 = !DILocation(line: 600, column: 2, scope: !1640)
!1640 = !DILexicalBlockFile(scope: !1452, file: !119, discriminator: 2)
!1641 = distinct !{!1641, !1583}
!1642 = !DILocation(line: 626, column: 9, scope: !1452)
!1643 = !DILocation(line: 626, column: 2, scope: !1452)
!1644 = !DILocation(line: 627, column: 1, scope: !1452)
!1645 = distinct !DISubprogram(name: "special_history_func_set", scope: !119, file: !119, line: 629, type: !1646, isLocal: false, isDefinition: true, scopeLine: 630, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !448)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{null, !450}
!1648 = !DILocalVariable(name: "func", arg: 1, scope: !1645, file: !119, line: 629, type: !450)
!1649 = !DILocation(line: 629, column: 52, scope: !1645)
!1650 = !DILocation(line: 631, column: 17, scope: !1645)
!1651 = !DILocation(line: 631, column: 15, scope: !1645)
!1652 = !DILocation(line: 632, column: 1, scope: !1645)
!1653 = distinct !DISubprogram(name: "special_vars_add_signals", scope: !119, file: !119, line: 741, type: !1654, isLocal: false, isDefinition: true, scopeLine: 743, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !448)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{null, !87, !91, !1656}
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64, align: 64)
!1657 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !1658, line: 9, baseType: !1659)
!1658 = !DIFile(filename: "signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64, align: 64)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{null, !101, !101, !101, !101, !101, !101}
!1662 = !DILocalVariable(name: "text", arg: 1, scope: !1653, file: !119, line: 741, type: !87)
!1663 = !DILocation(line: 741, column: 43, scope: !1653)
!1664 = !DILocalVariable(name: "funccount", arg: 2, scope: !1653, file: !119, line: 742, type: !91)
!1665 = !DILocation(line: 742, column: 14, scope: !1653)
!1666 = !DILocalVariable(name: "funcs", arg: 3, scope: !1653, file: !119, line: 742, type: !1656)
!1667 = !DILocation(line: 742, column: 38, scope: !1653)
!1668 = !DILocation(line: 744, column: 35, scope: !1653)
!1669 = !DILocation(line: 744, column: 41, scope: !1653)
!1670 = !DILocation(line: 744, column: 52, scope: !1653)
!1671 = !DILocation(line: 744, column: 9, scope: !1653)
!1672 = !DILocation(line: 745, column: 1, scope: !1653)
!1673 = distinct !DISubprogram(name: "special_vars_signals_task", scope: !119, file: !119, line: 691, type: !1674, isLocal: true, isDefinition: true, scopeLine: 693, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !448)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!111, !87, !91, !1656, !91}
!1676 = !DILocalVariable(name: "text", arg: 1, scope: !1673, file: !119, line: 691, type: !87)
!1677 = !DILocation(line: 691, column: 51, scope: !1673)
!1678 = !DILocalVariable(name: "funccount", arg: 2, scope: !1673, file: !119, line: 691, type: !91)
!1679 = !DILocation(line: 691, column: 61, scope: !1673)
!1680 = !DILocalVariable(name: "funcs", arg: 3, scope: !1673, file: !119, line: 692, type: !1656)
!1681 = !DILocation(line: 692, column: 24, scope: !1673)
!1682 = !DILocalVariable(name: "task", arg: 4, scope: !1673, file: !119, line: 692, type: !91)
!1683 = !DILocation(line: 692, column: 35, scope: !1673)
!1684 = !DILocalVariable(name: "signals", scope: !1673, file: !119, line: 694, type: !384)
!1685 = !DILocation(line: 694, column: 21, scope: !1673)
!1686 = !DILocalVariable(name: "expando", scope: !1673, file: !119, line: 695, type: !90)
!1687 = !DILocation(line: 695, column: 8, scope: !1673)
!1688 = !DILocalVariable(name: "need_free", scope: !1673, file: !119, line: 696, type: !91)
!1689 = !DILocation(line: 696, column: 6, scope: !1673)
!1690 = !DILocalVariable(name: "expando_signals", scope: !1673, file: !119, line: 696, type: !111)
!1691 = !DILocation(line: 696, column: 18, scope: !1673)
!1692 = !DILocation(line: 698, column: 17, scope: !1673)
!1693 = !DILocation(line: 699, column: 2, scope: !1673)
!1694 = !DILocation(line: 699, column: 10, scope: !1695)
!1695 = !DILexicalBlockFile(scope: !1673, file: !119, discriminator: 1)
!1696 = !DILocation(line: 699, column: 9, scope: !1695)
!1697 = !DILocation(line: 699, column: 15, scope: !1695)
!1698 = !DILocation(line: 699, column: 2, scope: !1695)
!1699 = !DILocation(line: 700, column: 8, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1701, file: !119, line: 700, column: 7)
!1701 = distinct !DILexicalBlock(scope: !1673, file: !119, line: 699, column: 24)
!1702 = !DILocation(line: 700, column: 7, scope: !1700)
!1703 = !DILocation(line: 700, column: 13, scope: !1700)
!1704 = !DILocation(line: 700, column: 21, scope: !1700)
!1705 = !DILocation(line: 700, column: 24, scope: !1706)
!1706 = !DILexicalBlockFile(scope: !1700, file: !119, discriminator: 1)
!1707 = !DILocation(line: 700, column: 32, scope: !1706)
!1708 = !DILocation(line: 700, column: 7, scope: !1706)
!1709 = !DILocation(line: 702, column: 9, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1700, file: !119, line: 700, column: 41)
!1711 = !DILocation(line: 703, column: 3, scope: !1710)
!1712 = !DILocation(line: 703, column: 15, scope: !1713)
!1713 = !DILexicalBlockFile(scope: !1714, file: !119, discriminator: 1)
!1714 = distinct !DILexicalBlock(scope: !1700, file: !119, line: 703, column: 14)
!1715 = !DILocation(line: 703, column: 14, scope: !1713)
!1716 = !DILocation(line: 703, column: 20, scope: !1713)
!1717 = !DILocation(line: 703, column: 27, scope: !1713)
!1718 = !DILocation(line: 703, column: 30, scope: !1719)
!1719 = !DILexicalBlockFile(scope: !1714, file: !119, discriminator: 2)
!1720 = !DILocation(line: 703, column: 38, scope: !1719)
!1721 = !DILocation(line: 703, column: 14, scope: !1719)
!1722 = !DILocation(line: 705, column: 8, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1714, file: !119, line: 703, column: 47)
!1724 = !DILocation(line: 706, column: 14, scope: !1723)
!1725 = !DILocation(line: 706, column: 12, scope: !1723)
!1726 = !DILocation(line: 709, column: 8, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1723, file: !119, line: 709, column: 8)
!1728 = !DILocation(line: 709, column: 16, scope: !1727)
!1729 = !DILocation(line: 709, column: 8, scope: !1723)
!1730 = !DILocation(line: 710, column: 5, scope: !1727)
!1731 = distinct !{!1731, !1693}
!1732 = !DILocation(line: 712, column: 12, scope: !1723)
!1733 = !DILocation(line: 712, column: 4, scope: !1723)
!1734 = !DILocation(line: 714, column: 18, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1723, file: !119, line: 712, column: 18)
!1736 = !DILocation(line: 714, column: 27, scope: !1735)
!1737 = !DILocation(line: 714, column: 38, scope: !1735)
!1738 = !DILocation(line: 714, column: 5, scope: !1735)
!1739 = !DILocation(line: 715, column: 5, scope: !1735)
!1740 = !DILocation(line: 717, column: 20, scope: !1735)
!1741 = !DILocation(line: 717, column: 29, scope: !1735)
!1742 = !DILocation(line: 717, column: 40, scope: !1735)
!1743 = !DILocation(line: 717, column: 5, scope: !1735)
!1744 = !DILocation(line: 718, column: 5, scope: !1735)
!1745 = !DILocation(line: 720, column: 43, scope: !1735)
!1746 = !DILocation(line: 720, column: 23, scope: !1735)
!1747 = !DILocation(line: 720, column: 21, scope: !1735)
!1748 = !DILocation(line: 721, column: 9, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1735, file: !119, line: 721, column: 9)
!1750 = !DILocation(line: 721, column: 25, scope: !1749)
!1751 = !DILocation(line: 721, column: 9, scope: !1735)
!1752 = !DILocation(line: 723, column: 12, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1749, file: !119, line: 721, column: 33)
!1754 = !DILocation(line: 722, column: 6, scope: !1753)
!1755 = !DILocation(line: 724, column: 48, scope: !1753)
!1756 = !DILocation(line: 724, column: 41, scope: !1753)
!1757 = !DILocation(line: 725, column: 5, scope: !1753)
!1758 = !DILocation(line: 726, column: 5, scope: !1735)
!1759 = !DILocation(line: 728, column: 8, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1723, file: !119, line: 728, column: 8)
!1761 = !DILocation(line: 728, column: 8, scope: !1723)
!1762 = !DILocation(line: 728, column: 26, scope: !1763)
!1763 = !DILexicalBlockFile(scope: !1760, file: !119, discriminator: 1)
!1764 = !DILocation(line: 728, column: 19, scope: !1763)
!1765 = !DILocation(line: 729, column: 3, scope: !1723)
!1766 = !DILocation(line: 731, column: 8, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1714, file: !119, line: 729, column: 10)
!1768 = !DILocation(line: 699, column: 2, scope: !1769)
!1769 = !DILexicalBlockFile(scope: !1673, file: !119, discriminator: 2)
!1770 = !DILocation(line: 735, column: 6, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1673, file: !119, line: 735, column: 6)
!1772 = !DILocation(line: 735, column: 11, scope: !1771)
!1773 = !DILocation(line: 735, column: 6, scope: !1673)
!1774 = !DILocation(line: 736, column: 41, scope: !1771)
!1775 = !DILocation(line: 736, column: 24, scope: !1771)
!1776 = !DILocation(line: 736, column: 17, scope: !1771)
!1777 = !DILocation(line: 738, column: 9, scope: !1673)
!1778 = !DILocation(line: 739, column: 1, scope: !1673)
!1779 = distinct !DISubprogram(name: "special_vars_remove_signals", scope: !119, file: !119, line: 747, type: !1654, isLocal: false, isDefinition: true, scopeLine: 749, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !448)
!1780 = !DILocalVariable(name: "text", arg: 1, scope: !1779, file: !119, line: 747, type: !87)
!1781 = !DILocation(line: 747, column: 46, scope: !1779)
!1782 = !DILocalVariable(name: "funccount", arg: 2, scope: !1779, file: !119, line: 748, type: !91)
!1783 = !DILocation(line: 748, column: 10, scope: !1779)
!1784 = !DILocalVariable(name: "funcs", arg: 3, scope: !1779, file: !119, line: 748, type: !1656)
!1785 = !DILocation(line: 748, column: 34, scope: !1779)
!1786 = !DILocation(line: 750, column: 35, scope: !1779)
!1787 = !DILocation(line: 750, column: 41, scope: !1779)
!1788 = !DILocation(line: 750, column: 52, scope: !1779)
!1789 = !DILocation(line: 750, column: 9, scope: !1779)
!1790 = !DILocation(line: 751, column: 1, scope: !1779)
!1791 = distinct !DISubprogram(name: "special_vars_get_signals", scope: !119, file: !119, line: 753, type: !1792, isLocal: false, isDefinition: true, scopeLine: 754, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !448)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{!111, !87}
!1794 = !DILocalVariable(name: "text", arg: 1, scope: !1791, file: !119, line: 753, type: !87)
!1795 = !DILocation(line: 753, column: 43, scope: !1791)
!1796 = !DILocation(line: 755, column: 35, scope: !1791)
!1797 = !DILocation(line: 755, column: 9, scope: !1791)
!1798 = !DILocation(line: 755, column: 2, scope: !1791)
!1799 = distinct !DISubprogram(name: "get_history", scope: !119, file: !119, line: 178, type: !1800, isLocal: true, isDefinition: true, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !448)
!1800 = !DISubroutineType(types: !1801)
!1801 = !{!90, !89, !82, !111}
!1802 = !DILocalVariable(name: "cmd", arg: 1, scope: !1799, file: !119, line: 178, type: !89)
!1803 = !DILocation(line: 178, column: 33, scope: !1799)
!1804 = !DILocalVariable(name: "item", arg: 2, scope: !1799, file: !119, line: 178, type: !82)
!1805 = !DILocation(line: 178, column: 44, scope: !1799)
!1806 = !DILocalVariable(name: "free_ret", arg: 3, scope: !1799, file: !119, line: 178, type: !111)
!1807 = !DILocation(line: 178, column: 55, scope: !1799)
!1808 = !DILocalVariable(name: "start", scope: !1799, file: !119, line: 180, type: !90)
!1809 = !DILocation(line: 180, column: 8, scope: !1799)
!1810 = !DILocalVariable(name: "text", scope: !1799, file: !119, line: 180, type: !90)
!1811 = !DILocation(line: 180, column: 16, scope: !1799)
!1812 = !DILocalVariable(name: "ret", scope: !1799, file: !119, line: 180, type: !90)
!1813 = !DILocation(line: 180, column: 23, scope: !1799)
!1814 = !DILocation(line: 183, column: 14, scope: !1799)
!1815 = !DILocation(line: 183, column: 10, scope: !1799)
!1816 = !DILocation(line: 183, column: 8, scope: !1799)
!1817 = !DILocation(line: 184, column: 2, scope: !1799)
!1818 = !DILocation(line: 184, column: 11, scope: !1819)
!1819 = !DILexicalBlockFile(scope: !1799, file: !119, discriminator: 1)
!1820 = !DILocation(line: 184, column: 10, scope: !1819)
!1821 = !DILocation(line: 184, column: 9, scope: !1819)
!1822 = !DILocation(line: 184, column: 15, scope: !1819)
!1823 = !DILocation(line: 184, column: 23, scope: !1819)
!1824 = !DILocation(line: 184, column: 28, scope: !1825)
!1825 = !DILexicalBlockFile(scope: !1799, file: !119, discriminator: 2)
!1826 = !DILocation(line: 184, column: 27, scope: !1825)
!1827 = !DILocation(line: 184, column: 26, scope: !1825)
!1828 = !DILocation(line: 184, column: 32, scope: !1825)
!1829 = !DILocation(line: 184, column: 2, scope: !1830)
!1830 = !DILexicalBlockFile(scope: !1799, file: !119, discriminator: 3)
!1831 = !DILocation(line: 184, column: 42, scope: !1832)
!1832 = !DILexicalBlockFile(scope: !1799, file: !119, discriminator: 4)
!1833 = !DILocation(line: 184, column: 46, scope: !1832)
!1834 = !DILocation(line: 184, column: 2, scope: !1832)
!1835 = distinct !{!1835, !1817}
!1836 = !DILocation(line: 186, column: 6, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1799, file: !119, line: 186, column: 6)
!1838 = !DILocation(line: 186, column: 19, scope: !1837)
!1839 = !DILocation(line: 186, column: 6, scope: !1799)
!1840 = !DILocation(line: 187, column: 7, scope: !1837)
!1841 = !DILocation(line: 187, column: 3, scope: !1837)
!1842 = !DILocation(line: 189, column: 20, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1837, file: !119, line: 188, column: 7)
!1844 = !DILocation(line: 189, column: 35, scope: !1843)
!1845 = !DILocation(line: 189, column: 34, scope: !1843)
!1846 = !DILocation(line: 189, column: 39, scope: !1843)
!1847 = !DILocation(line: 189, column: 38, scope: !1843)
!1848 = !DILocation(line: 189, column: 27, scope: !1843)
!1849 = !DILocation(line: 189, column: 10, scope: !1843)
!1850 = !DILocation(line: 189, column: 8, scope: !1843)
!1851 = !DILocation(line: 190, column: 9, scope: !1843)
!1852 = !DILocation(line: 190, column: 22, scope: !1843)
!1853 = !DILocation(line: 190, column: 28, scope: !1843)
!1854 = !DILocation(line: 190, column: 34, scope: !1843)
!1855 = !DILocation(line: 190, column: 7, scope: !1843)
!1856 = !DILocation(line: 191, column: 10, scope: !1843)
!1857 = !DILocation(line: 191, column: 3, scope: !1843)
!1858 = !DILocation(line: 194, column: 8, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1799, file: !119, line: 194, column: 6)
!1860 = !DILocation(line: 194, column: 7, scope: !1859)
!1861 = !DILocation(line: 194, column: 6, scope: !1859)
!1862 = !DILocation(line: 194, column: 12, scope: !1859)
!1863 = !DILocation(line: 194, column: 6, scope: !1799)
!1864 = !DILocation(line: 194, column: 23, scope: !1865)
!1865 = !DILexicalBlockFile(scope: !1859, file: !119, discriminator: 1)
!1866 = !DILocation(line: 194, column: 27, scope: !1865)
!1867 = !DILocation(line: 194, column: 21, scope: !1865)
!1868 = !DILocation(line: 195, column: 9, scope: !1799)
!1869 = !DILocation(line: 195, column: 2, scope: !1799)
!1870 = distinct !DISubprogram(name: "get_argument", scope: !119, file: !119, line: 40, type: !1871, isLocal: true, isDefinition: true, scopeLine: 41, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !448)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{!90, !89, !89}
!1873 = !DILocalVariable(name: "cmd", arg: 1, scope: !1870, file: !119, line: 40, type: !89)
!1874 = !DILocation(line: 40, column: 34, scope: !1870)
!1875 = !DILocalVariable(name: "arglist", arg: 2, scope: !1870, file: !119, line: 40, type: !89)
!1876 = !DILocation(line: 40, column: 46, scope: !1870)
!1877 = !DILocalVariable(name: "str", scope: !1870, file: !119, line: 42, type: !323)
!1878 = !DILocation(line: 42, column: 11, scope: !1870)
!1879 = !DILocalVariable(name: "ret", scope: !1870, file: !119, line: 43, type: !90)
!1880 = !DILocation(line: 43, column: 8, scope: !1870)
!1881 = !DILocalVariable(name: "max", scope: !1870, file: !119, line: 44, type: !91)
!1882 = !DILocation(line: 44, column: 6, scope: !1870)
!1883 = !DILocalVariable(name: "arg", scope: !1870, file: !119, line: 44, type: !91)
!1884 = !DILocation(line: 44, column: 11, scope: !1870)
!1885 = !DILocalVariable(name: "argcount", scope: !1870, file: !119, line: 44, type: !91)
!1886 = !DILocation(line: 44, column: 16, scope: !1870)
!1887 = !DILocation(line: 46, column: 6, scope: !1870)
!1888 = !DILocation(line: 47, column: 6, scope: !1870)
!1889 = !DILocation(line: 49, column: 13, scope: !1870)
!1890 = !DILocation(line: 49, column: 21, scope: !1870)
!1891 = !DILocation(line: 49, column: 13, scope: !1892)
!1892 = !DILexicalBlockFile(scope: !1870, file: !119, discriminator: 1)
!1893 = !DILocation(line: 49, column: 48, scope: !1894)
!1894 = !DILexicalBlockFile(scope: !1870, file: !119, discriminator: 2)
!1895 = !DILocation(line: 49, column: 34, scope: !1894)
!1896 = !DILocation(line: 49, column: 13, scope: !1894)
!1897 = !DILocation(line: 49, column: 13, scope: !1898)
!1898 = !DILexicalBlockFile(scope: !1870, file: !119, discriminator: 3)
!1899 = !DILocation(line: 49, column: 11, scope: !1898)
!1900 = !DILocation(line: 51, column: 8, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1870, file: !119, line: 51, column: 6)
!1902 = !DILocation(line: 51, column: 7, scope: !1901)
!1903 = !DILocation(line: 51, column: 6, scope: !1901)
!1904 = !DILocation(line: 51, column: 12, scope: !1901)
!1905 = !DILocation(line: 51, column: 6, scope: !1870)
!1906 = !DILocation(line: 53, column: 2, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1901, file: !119, line: 51, column: 20)
!1908 = !DILocation(line: 53, column: 15, scope: !1909)
!1909 = !DILexicalBlockFile(scope: !1910, file: !119, discriminator: 1)
!1910 = distinct !DILexicalBlock(scope: !1901, file: !119, line: 53, column: 13)
!1911 = !DILocation(line: 53, column: 14, scope: !1909)
!1912 = !DILocation(line: 53, column: 13, scope: !1909)
!1913 = !DILocation(line: 53, column: 19, scope: !1909)
!1914 = !DILocation(line: 55, column: 15, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1910, file: !119, line: 53, column: 27)
!1916 = !DILocation(line: 55, column: 23, scope: !1915)
!1917 = !DILocation(line: 55, column: 13, scope: !1915)
!1918 = !DILocation(line: 55, column: 7, scope: !1915)
!1919 = !DILocation(line: 56, column: 2, scope: !1915)
!1920 = !DILocation(line: 57, column: 31, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1922, file: !119, line: 57, column: 6)
!1922 = distinct !DILexicalBlock(scope: !1910, file: !119, line: 56, column: 9)
!1923 = !DILocation(line: 57, column: 30, scope: !1921)
!1924 = !DILocation(line: 57, column: 29, scope: !1921)
!1925 = !DILocation(line: 57, column: 6, scope: !1921)
!1926 = !DILocation(line: 57, column: 7, scope: !1921)
!1927 = !DILocation(line: 57, column: 9, scope: !1921)
!1928 = !DILocation(line: 57, column: 8, scope: !1921)
!1929 = !DILocation(line: 57, column: 10, scope: !1921)
!1930 = !DILocation(line: 57, column: 6, scope: !1922)
!1931 = !DILocation(line: 59, column: 19, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1921, file: !119, line: 57, column: 24)
!1933 = !DILocation(line: 59, column: 18, scope: !1932)
!1934 = !DILocation(line: 59, column: 17, scope: !1932)
!1935 = !DILocation(line: 59, column: 16, scope: !1932)
!1936 = !DILocation(line: 59, column: 23, scope: !1932)
!1937 = !DILocation(line: 59, column: 14, scope: !1932)
!1938 = !DILocation(line: 59, column: 8, scope: !1932)
!1939 = !DILocation(line: 60, column: 6, scope: !1932)
!1940 = !DILocation(line: 60, column: 10, scope: !1932)
!1941 = !DILocation(line: 61, column: 3, scope: !1932)
!1942 = !DILocation(line: 63, column: 9, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1922, file: !119, line: 63, column: 7)
!1944 = !DILocation(line: 63, column: 8, scope: !1943)
!1945 = !DILocation(line: 63, column: 7, scope: !1943)
!1946 = !DILocation(line: 63, column: 13, scope: !1943)
!1947 = !DILocation(line: 63, column: 7, scope: !1922)
!1948 = !DILocation(line: 65, column: 6, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1943, file: !119, line: 63, column: 21)
!1950 = !DILocation(line: 65, column: 10, scope: !1949)
!1951 = !DILocation(line: 66, column: 33, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1949, file: !119, line: 66, column: 8)
!1953 = !DILocation(line: 66, column: 32, scope: !1952)
!1954 = !DILocation(line: 66, column: 31, scope: !1952)
!1955 = !DILocation(line: 66, column: 8, scope: !1952)
!1956 = !DILocation(line: 66, column: 9, scope: !1952)
!1957 = !DILocation(line: 66, column: 11, scope: !1952)
!1958 = !DILocation(line: 66, column: 10, scope: !1952)
!1959 = !DILocation(line: 66, column: 12, scope: !1952)
!1960 = !DILocation(line: 66, column: 8, scope: !1949)
!1961 = !DILocation(line: 67, column: 9, scope: !1952)
!1962 = !DILocation(line: 67, column: 5, scope: !1952)
!1963 = !DILocation(line: 69, column: 14, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1952, file: !119, line: 68, column: 9)
!1965 = !DILocation(line: 69, column: 13, scope: !1964)
!1966 = !DILocation(line: 69, column: 12, scope: !1964)
!1967 = !DILocation(line: 69, column: 11, scope: !1964)
!1968 = !DILocation(line: 69, column: 18, scope: !1964)
!1969 = !DILocation(line: 69, column: 9, scope: !1964)
!1970 = !DILocation(line: 70, column: 7, scope: !1964)
!1971 = !DILocation(line: 70, column: 11, scope: !1964)
!1972 = !DILocation(line: 72, column: 3, scope: !1949)
!1973 = !DILocation(line: 73, column: 5, scope: !1922)
!1974 = !DILocation(line: 73, column: 9, scope: !1922)
!1975 = !DILocation(line: 76, column: 8, scope: !1870)
!1976 = !DILocation(line: 76, column: 6, scope: !1870)
!1977 = !DILocation(line: 77, column: 2, scope: !1870)
!1978 = !DILocation(line: 77, column: 9, scope: !1892)
!1979 = !DILocation(line: 77, column: 13, scope: !1892)
!1980 = !DILocation(line: 77, column: 18, scope: !1892)
!1981 = !DILocation(line: 77, column: 21, scope: !1894)
!1982 = !DILocation(line: 77, column: 27, scope: !1894)
!1983 = !DILocation(line: 77, column: 25, scope: !1894)
!1984 = !DILocation(line: 77, column: 36, scope: !1894)
!1985 = !DILocation(line: 77, column: 40, scope: !1898)
!1986 = !DILocation(line: 77, column: 47, scope: !1898)
!1987 = !DILocation(line: 77, column: 44, scope: !1898)
!1988 = !DILocation(line: 77, column: 51, scope: !1898)
!1989 = !DILocation(line: 77, column: 54, scope: !1990)
!1990 = !DILexicalBlockFile(scope: !1870, file: !119, discriminator: 4)
!1991 = !DILocation(line: 77, column: 58, scope: !1990)
!1992 = !DILocation(line: 77, column: 51, scope: !1990)
!1993 = !DILocation(line: 77, column: 2, scope: !1994)
!1994 = !DILexicalBlockFile(scope: !1870, file: !119, discriminator: 5)
!1995 = !DILocation(line: 78, column: 19, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1870, file: !119, line: 77, column: 66)
!1997 = !DILocation(line: 78, column: 32, scope: !1996)
!1998 = !DILocation(line: 78, column: 24, scope: !1996)
!1999 = !DILocation(line: 78, column: 3, scope: !1996)
!2000 = !DILocation(line: 79, column: 29, scope: !1996)
!2001 = !DILocation(line: 79, column: 3, scope: !1996)
!2002 = !DILocation(line: 80, column: 6, scope: !1996)
!2003 = !DILocation(line: 77, column: 2, scope: !2004)
!2004 = !DILexicalBlockFile(scope: !1870, file: !119, discriminator: 6)
!2005 = distinct !{!2005, !1977}
!2006 = !DILocation(line: 82, column: 6, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !1870, file: !119, line: 82, column: 6)
!2008 = !DILocation(line: 82, column: 11, scope: !2007)
!2009 = !DILocation(line: 82, column: 15, scope: !2007)
!2010 = !DILocation(line: 82, column: 6, scope: !1870)
!2011 = !DILocation(line: 82, column: 38, scope: !2012)
!2012 = !DILexicalBlockFile(scope: !2007, file: !119, discriminator: 1)
!2013 = !DILocation(line: 82, column: 43, scope: !2012)
!2014 = !DILocation(line: 82, column: 48, scope: !2012)
!2015 = !DILocation(line: 82, column: 51, scope: !2012)
!2016 = !DILocation(line: 82, column: 20, scope: !2012)
!2017 = !DILocation(line: 84, column: 8, scope: !1870)
!2018 = !DILocation(line: 84, column: 13, scope: !1870)
!2019 = !DILocation(line: 84, column: 6, scope: !1870)
!2020 = !DILocation(line: 85, column: 16, scope: !1870)
!2021 = !DILocation(line: 85, column: 2, scope: !1870)
!2022 = !DILocation(line: 86, column: 9, scope: !1870)
!2023 = !DILocation(line: 86, column: 2, scope: !1870)
!2024 = distinct !DISubprogram(name: "get_variable", scope: !119, file: !119, line: 141, type: !120, isLocal: true, isDefinition: true, scopeLine: 144, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !448)
!2025 = !DILocalVariable(name: "cmd", arg: 1, scope: !2024, file: !119, line: 141, type: !89)
!2026 = !DILocation(line: 141, column: 34, scope: !2024)
!2027 = !DILocalVariable(name: "server", arg: 2, scope: !2024, file: !119, line: 141, type: !122)
!2028 = !DILocation(line: 141, column: 51, scope: !2024)
!2029 = !DILocalVariable(name: "item", arg: 3, scope: !2024, file: !119, line: 141, type: !82)
!2030 = !DILocation(line: 141, column: 65, scope: !2024)
!2031 = !DILocalVariable(name: "arglist", arg: 4, scope: !2024, file: !119, line: 142, type: !89)
!2032 = !DILocation(line: 142, column: 13, scope: !2024)
!2033 = !DILocalVariable(name: "free_ret", arg: 5, scope: !2024, file: !119, line: 142, type: !111)
!2034 = !DILocation(line: 142, column: 27, scope: !2024)
!2035 = !DILocalVariable(name: "arg_used", arg: 6, scope: !2024, file: !119, line: 142, type: !111)
!2036 = !DILocation(line: 142, column: 42, scope: !2024)
!2037 = !DILocalVariable(name: "getname", arg: 7, scope: !2024, file: !119, line: 143, type: !91)
!2038 = !DILocation(line: 143, column: 10, scope: !2024)
!2039 = !DILocalVariable(name: "func", scope: !2024, file: !119, line: 145, type: !2040)
!2040 = !DIDerivedType(tag: DW_TAG_typedef, name: "EXPANDO_FUNC", file: !74, line: 16, baseType: !2041)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64, align: 64)
!2042 = !DISubroutineType(types: !2043)
!2043 = !{!90, !122, !82, !111}
!2044 = !DILocation(line: 145, column: 15, scope: !2024)
!2045 = !DILocation(line: 147, column: 30, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2024, file: !119, line: 147, column: 6)
!2047 = !DILocation(line: 147, column: 29, scope: !2046)
!2048 = !DILocation(line: 147, column: 28, scope: !2046)
!2049 = !DILocation(line: 147, column: 5, scope: !2046)
!2050 = !DILocation(line: 147, column: 6, scope: !2046)
!2051 = !DILocation(line: 147, column: 8, scope: !2046)
!2052 = !DILocation(line: 147, column: 7, scope: !2046)
!2053 = !DILocation(line: 147, column: 9, scope: !2046)
!2054 = !DILocation(line: 147, column: 11, scope: !2055)
!2055 = !DILexicalBlockFile(scope: !2046, file: !119, discriminator: 1)
!2056 = !DILocation(line: 147, column: 10, scope: !2055)
!2057 = !DILocation(line: 147, column: 9, scope: !2055)
!2058 = !DILocation(line: 147, column: 8, scope: !2055)
!2059 = !DILocation(line: 147, column: 16, scope: !2055)
!2060 = !DILocation(line: 147, column: 23, scope: !2055)
!2061 = !DILocation(line: 147, column: 29, scope: !2062)
!2062 = !DILexicalBlockFile(scope: !2046, file: !119, discriminator: 2)
!2063 = !DILocation(line: 147, column: 28, scope: !2062)
!2064 = !DILocation(line: 147, column: 27, scope: !2062)
!2065 = !DILocation(line: 147, column: 26, scope: !2062)
!2066 = !DILocation(line: 147, column: 34, scope: !2062)
!2067 = !DILocation(line: 147, column: 41, scope: !2062)
!2068 = !DILocation(line: 147, column: 47, scope: !2069)
!2069 = !DILexicalBlockFile(scope: !2046, file: !119, discriminator: 3)
!2070 = !DILocation(line: 147, column: 46, scope: !2069)
!2071 = !DILocation(line: 147, column: 45, scope: !2069)
!2072 = !DILocation(line: 147, column: 44, scope: !2069)
!2073 = !DILocation(line: 147, column: 52, scope: !2069)
!2074 = !DILocation(line: 147, column: 6, scope: !2069)
!2075 = !DILocation(line: 149, column: 4, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2046, file: !119, line: 147, column: 61)
!2077 = !DILocation(line: 149, column: 13, scope: !2076)
!2078 = !DILocation(line: 150, column: 7, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2076, file: !119, line: 150, column: 7)
!2080 = !DILocation(line: 150, column: 16, scope: !2079)
!2081 = !DILocation(line: 150, column: 7, scope: !2076)
!2082 = !DILocation(line: 150, column: 25, scope: !2083)
!2083 = !DILexicalBlockFile(scope: !2079, file: !119, discriminator: 1)
!2084 = !DILocation(line: 150, column: 34, scope: !2083)
!2085 = !DILocation(line: 150, column: 24, scope: !2083)
!2086 = !DILocation(line: 151, column: 10, scope: !2076)
!2087 = !DILocation(line: 151, column: 44, scope: !2088)
!2088 = !DILexicalBlockFile(scope: !2076, file: !119, discriminator: 1)
!2089 = !DILocation(line: 151, column: 43, scope: !2088)
!2090 = !DILocation(line: 151, column: 42, scope: !2088)
!2091 = !DILocation(line: 151, column: 20, scope: !2088)
!2092 = !DILocation(line: 151, column: 10, scope: !2088)
!2093 = !DILocation(line: 152, column: 17, scope: !2076)
!2094 = !DILocation(line: 152, column: 22, scope: !2076)
!2095 = !DILocation(line: 152, column: 4, scope: !2076)
!2096 = !DILocation(line: 151, column: 10, scope: !2097)
!2097 = !DILexicalBlockFile(scope: !2076, file: !119, discriminator: 2)
!2098 = !DILocation(line: 151, column: 10, scope: !2099)
!2099 = !DILexicalBlockFile(scope: !2076, file: !119, discriminator: 3)
!2100 = !DILocation(line: 151, column: 3, scope: !2099)
!2101 = !DILocation(line: 155, column: 30, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2024, file: !119, line: 155, column: 5)
!2103 = !DILocation(line: 155, column: 29, scope: !2102)
!2104 = !DILocation(line: 155, column: 28, scope: !2102)
!2105 = !DILocation(line: 155, column: 5, scope: !2102)
!2106 = !DILocation(line: 155, column: 6, scope: !2102)
!2107 = !DILocation(line: 155, column: 8, scope: !2102)
!2108 = !DILocation(line: 155, column: 7, scope: !2102)
!2109 = !DILocation(line: 155, column: 9, scope: !2102)
!2110 = !DILocation(line: 155, column: 22, scope: !2102)
!2111 = !DILocation(line: 155, column: 50, scope: !2112)
!2112 = !DILexicalBlockFile(scope: !2102, file: !119, discriminator: 1)
!2113 = !DILocation(line: 155, column: 49, scope: !2112)
!2114 = !DILocation(line: 155, column: 48, scope: !2112)
!2115 = !DILocation(line: 155, column: 25, scope: !2112)
!2116 = !DILocation(line: 155, column: 26, scope: !2112)
!2117 = !DILocation(line: 155, column: 28, scope: !2112)
!2118 = !DILocation(line: 155, column: 27, scope: !2112)
!2119 = !DILocation(line: 155, column: 29, scope: !2112)
!2120 = !DILocation(line: 155, column: 31, scope: !2121)
!2121 = !DILexicalBlockFile(scope: !2102, file: !119, discriminator: 2)
!2122 = !DILocation(line: 155, column: 30, scope: !2121)
!2123 = !DILocation(line: 155, column: 29, scope: !2121)
!2124 = !DILocation(line: 155, column: 28, scope: !2121)
!2125 = !DILocation(line: 155, column: 40, scope: !2121)
!2126 = !DILocation(line: 155, column: 5, scope: !2121)
!2127 = !DILocation(line: 157, column: 28, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2102, file: !119, line: 155, column: 49)
!2129 = !DILocation(line: 157, column: 33, scope: !2128)
!2130 = !DILocation(line: 157, column: 41, scope: !2128)
!2131 = !DILocation(line: 157, column: 47, scope: !2128)
!2132 = !DILocation(line: 157, column: 57, scope: !2128)
!2133 = !DILocation(line: 157, column: 10, scope: !2128)
!2134 = !DILocation(line: 157, column: 3, scope: !2128)
!2135 = !DILocation(line: 161, column: 6, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !2024, file: !119, line: 161, column: 6)
!2137 = !DILocation(line: 161, column: 6, scope: !2024)
!2138 = !DILocation(line: 162, column: 4, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2136, file: !119, line: 161, column: 15)
!2140 = !DILocation(line: 162, column: 13, scope: !2139)
!2141 = !DILocation(line: 163, column: 48, scope: !2139)
!2142 = !DILocation(line: 163, column: 47, scope: !2139)
!2143 = !DILocation(line: 163, column: 46, scope: !2139)
!2144 = !DILocation(line: 163, column: 24, scope: !2139)
!2145 = !DILocation(line: 163, column: 17, scope: !2139)
!2146 = !DILocation(line: 165, column: 3, scope: !2024)
!2147 = !DILocation(line: 165, column: 12, scope: !2024)
!2148 = !DILocation(line: 166, column: 29, scope: !2024)
!2149 = !DILocation(line: 166, column: 28, scope: !2024)
!2150 = !DILocation(line: 166, column: 27, scope: !2024)
!2151 = !DILocation(line: 166, column: 9, scope: !2024)
!2152 = !DILocation(line: 166, column: 7, scope: !2024)
!2153 = !DILocation(line: 167, column: 6, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2024, file: !119, line: 167, column: 6)
!2155 = !DILocation(line: 167, column: 11, scope: !2154)
!2156 = !DILocation(line: 167, column: 6, scope: !2024)
!2157 = !DILocation(line: 168, column: 3, scope: !2154)
!2158 = !DILocalVariable(name: "str", scope: !2159, file: !119, line: 170, type: !2160)
!2159 = distinct !DILexicalBlock(scope: !2154, file: !119, line: 169, column: 7)
!2160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 16, align: 8, elements: !375)
!2161 = !DILocation(line: 170, column: 8, scope: !2159)
!2162 = !DILocation(line: 172, column: 14, scope: !2159)
!2163 = !DILocation(line: 172, column: 13, scope: !2159)
!2164 = !DILocation(line: 172, column: 12, scope: !2159)
!2165 = !DILocation(line: 172, column: 3, scope: !2159)
!2166 = !DILocation(line: 172, column: 10, scope: !2159)
!2167 = !DILocation(line: 172, column: 19, scope: !2159)
!2168 = !DILocation(line: 172, column: 26, scope: !2159)
!2169 = !DILocation(line: 173, column: 21, scope: !2159)
!2170 = !DILocation(line: 173, column: 19, scope: !2159)
!2171 = !DILocation(line: 174, column: 10, scope: !2159)
!2172 = !DILocation(line: 174, column: 15, scope: !2159)
!2173 = !DILocation(line: 174, column: 23, scope: !2159)
!2174 = !DILocation(line: 174, column: 29, scope: !2159)
!2175 = !DILocation(line: 174, column: 3, scope: !2159)
!2176 = !DILocation(line: 176, column: 1, scope: !2024)
!2177 = distinct !DISubprogram(name: "get_long_variable", scope: !119, file: !119, line: 120, type: !2178, isLocal: true, isDefinition: true, scopeLine: 122, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !448)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!90, !89, !122, !82, !111, !91}
!2180 = !DILocalVariable(name: "cmd", arg: 1, scope: !2177, file: !119, line: 120, type: !89)
!2181 = !DILocation(line: 120, column: 39, scope: !2177)
!2182 = !DILocalVariable(name: "server", arg: 2, scope: !2177, file: !119, line: 120, type: !122)
!2183 = !DILocation(line: 120, column: 56, scope: !2177)
!2184 = !DILocalVariable(name: "item", arg: 3, scope: !2177, file: !119, line: 121, type: !82)
!2185 = !DILocation(line: 121, column: 17, scope: !2177)
!2186 = !DILocalVariable(name: "free_ret", arg: 4, scope: !2177, file: !119, line: 121, type: !111)
!2187 = !DILocation(line: 121, column: 28, scope: !2177)
!2188 = !DILocalVariable(name: "getname", arg: 5, scope: !2177, file: !119, line: 121, type: !91)
!2189 = !DILocation(line: 121, column: 42, scope: !2177)
!2190 = !DILocalVariable(name: "start", scope: !2177, file: !119, line: 123, type: !90)
!2191 = !DILocation(line: 123, column: 8, scope: !2177)
!2192 = !DILocalVariable(name: "var", scope: !2177, file: !119, line: 123, type: !90)
!2193 = !DILocation(line: 123, column: 16, scope: !2177)
!2194 = !DILocalVariable(name: "ret", scope: !2177, file: !119, line: 123, type: !90)
!2195 = !DILocation(line: 123, column: 22, scope: !2177)
!2196 = !DILocation(line: 126, column: 11, scope: !2177)
!2197 = !DILocation(line: 126, column: 10, scope: !2177)
!2198 = !DILocation(line: 126, column: 8, scope: !2177)
!2199 = !DILocation(line: 127, column: 2, scope: !2177)
!2200 = !DILocation(line: 127, column: 33, scope: !2201)
!2201 = !DILexicalBlockFile(scope: !2177, file: !119, discriminator: 1)
!2202 = !DILocation(line: 127, column: 32, scope: !2201)
!2203 = !DILocation(line: 127, column: 31, scope: !2201)
!2204 = !DILocation(line: 127, column: 8, scope: !2201)
!2205 = !DILocation(line: 127, column: 9, scope: !2201)
!2206 = !DILocation(line: 127, column: 11, scope: !2201)
!2207 = !DILocation(line: 127, column: 10, scope: !2201)
!2208 = !DILocation(line: 127, column: 12, scope: !2201)
!2209 = !DILocation(line: 127, column: 14, scope: !2210)
!2210 = !DILexicalBlockFile(scope: !2177, file: !119, discriminator: 2)
!2211 = !DILocation(line: 127, column: 13, scope: !2210)
!2212 = !DILocation(line: 127, column: 12, scope: !2210)
!2213 = !DILocation(line: 127, column: 11, scope: !2210)
!2214 = !DILocation(line: 127, column: 23, scope: !2210)
!2215 = !DILocation(line: 127, column: 8, scope: !2210)
!2216 = !DILocation(line: 127, column: 2, scope: !2217)
!2217 = !DILexicalBlockFile(scope: !2177, file: !119, discriminator: 3)
!2218 = !DILocation(line: 127, column: 34, scope: !2219)
!2219 = !DILexicalBlockFile(scope: !2177, file: !119, discriminator: 4)
!2220 = !DILocation(line: 127, column: 38, scope: !2219)
!2221 = !DILocation(line: 127, column: 2, scope: !2219)
!2222 = distinct !{!2222, !2199}
!2223 = !DILocation(line: 129, column: 18, scope: !2177)
!2224 = !DILocation(line: 129, column: 33, scope: !2177)
!2225 = !DILocation(line: 129, column: 32, scope: !2177)
!2226 = !DILocation(line: 129, column: 37, scope: !2177)
!2227 = !DILocation(line: 129, column: 36, scope: !2177)
!2228 = !DILocation(line: 129, column: 25, scope: !2177)
!2229 = !DILocation(line: 129, column: 43, scope: !2177)
!2230 = !DILocation(line: 129, column: 8, scope: !2177)
!2231 = !DILocation(line: 129, column: 6, scope: !2177)
!2232 = !DILocation(line: 130, column: 6, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2177, file: !119, line: 130, column: 6)
!2234 = !DILocation(line: 130, column: 6, scope: !2177)
!2235 = !DILocation(line: 131, column: 4, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2233, file: !119, line: 130, column: 15)
!2237 = !DILocation(line: 131, column: 13, scope: !2236)
!2238 = !DILocation(line: 132, column: 24, scope: !2236)
!2239 = !DILocation(line: 132, column: 17, scope: !2236)
!2240 = !DILocation(line: 134, column: 32, scope: !2177)
!2241 = !DILocation(line: 134, column: 37, scope: !2177)
!2242 = !DILocation(line: 134, column: 45, scope: !2177)
!2243 = !DILocation(line: 134, column: 51, scope: !2177)
!2244 = !DILocation(line: 134, column: 8, scope: !2177)
!2245 = !DILocation(line: 134, column: 6, scope: !2177)
!2246 = !DILocation(line: 135, column: 9, scope: !2177)
!2247 = !DILocation(line: 135, column: 2, scope: !2177)
!2248 = !DILocation(line: 136, column: 9, scope: !2177)
!2249 = !DILocation(line: 136, column: 2, scope: !2177)
!2250 = !DILocation(line: 137, column: 1, scope: !2177)
!2251 = distinct !DISubprogram(name: "get_long_variable_value", scope: !119, file: !119, line: 89, type: !2252, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !448)
!2252 = !DISubroutineType(types: !2253)
!2253 = !{!90, !87, !122, !82, !111}
!2254 = !DILocalVariable(name: "key", arg: 1, scope: !2251, file: !119, line: 89, type: !87)
!2255 = !DILocation(line: 89, column: 50, scope: !2251)
!2256 = !DILocalVariable(name: "server", arg: 2, scope: !2251, file: !119, line: 89, type: !122)
!2257 = !DILocation(line: 89, column: 67, scope: !2251)
!2258 = !DILocalVariable(name: "item", arg: 3, scope: !2251, file: !119, line: 90, type: !82)
!2259 = !DILocation(line: 90, column: 16, scope: !2251)
!2260 = !DILocalVariable(name: "free_ret", arg: 4, scope: !2251, file: !119, line: 90, type: !111)
!2261 = !DILocation(line: 90, column: 27, scope: !2251)
!2262 = !DILocalVariable(name: "func", scope: !2251, file: !119, line: 92, type: !2040)
!2263 = !DILocation(line: 92, column: 15, scope: !2251)
!2264 = !DILocalVariable(name: "ret", scope: !2251, file: !119, line: 93, type: !87)
!2265 = !DILocation(line: 93, column: 14, scope: !2251)
!2266 = !DILocalVariable(name: "rec", scope: !2251, file: !119, line: 94, type: !2267)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64, align: 64)
!2268 = !DIDerivedType(tag: DW_TAG_typedef, name: "SETTINGS_REC", file: !63, line: 31, baseType: !2269)
!2269 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !63, line: 21, size: 512, align: 64, elements: !2270)
!2270 = !{!2271, !2272, !2273, !2274, !2275, !2277, !2284}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2269, file: !63, line: 22, baseType: !91, size: 32, align: 32)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !2269, file: !63, line: 24, baseType: !90, size: 64, align: 64, offset: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2269, file: !63, line: 25, baseType: !90, size: 64, align: 64, offset: 128)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !2269, file: !63, line: 26, baseType: !90, size: 64, align: 64, offset: 192)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2269, file: !63, line: 28, baseType: !2276, size: 32, align: 32, offset: 256)
!2276 = !DIDerivedType(tag: DW_TAG_typedef, name: "SettingType", file: !63, line: 13, baseType: !62)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "default_value", scope: !2269, file: !63, line: 29, baseType: !2278, size: 128, align: 64, offset: 320)
!2278 = !DIDerivedType(tag: DW_TAG_typedef, name: "SettingValue", file: !63, line: 19, baseType: !2279)
!2279 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !63, line: 15, size: 128, align: 64, elements: !2280)
!2280 = !{!2281, !2282, !2283}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "v_string", scope: !2279, file: !63, line: 16, baseType: !90, size: 64, align: 64)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "v_int", scope: !2279, file: !63, line: 17, baseType: !91, size: 32, align: 32, offset: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "v_bool", scope: !2279, file: !63, line: 18, baseType: !99, size: 1, align: 32, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "choices", scope: !2269, file: !63, line: 30, baseType: !89, size: 64, align: 64, offset: 448)
!2285 = !DILocation(line: 94, column: 16, scope: !2251)
!2286 = !DILocation(line: 96, column: 3, scope: !2251)
!2287 = !DILocation(line: 96, column: 12, scope: !2251)
!2288 = !DILocation(line: 99, column: 34, scope: !2251)
!2289 = !DILocation(line: 99, column: 16, scope: !2251)
!2290 = !DILocation(line: 99, column: 14, scope: !2251)
!2291 = !DILocation(line: 100, column: 6, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2251, file: !119, line: 100, column: 6)
!2293 = !DILocation(line: 100, column: 11, scope: !2292)
!2294 = !DILocation(line: 100, column: 6, scope: !2251)
!2295 = !DILocation(line: 101, column: 21, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2292, file: !119, line: 100, column: 19)
!2297 = !DILocation(line: 101, column: 19, scope: !2296)
!2298 = !DILocation(line: 102, column: 10, scope: !2296)
!2299 = !DILocation(line: 102, column: 15, scope: !2296)
!2300 = !DILocation(line: 102, column: 23, scope: !2296)
!2301 = !DILocation(line: 102, column: 29, scope: !2296)
!2302 = !DILocation(line: 102, column: 3, scope: !2296)
!2303 = !DILocation(line: 106, column: 28, scope: !2251)
!2304 = !DILocation(line: 106, column: 8, scope: !2251)
!2305 = !DILocation(line: 106, column: 6, scope: !2251)
!2306 = !DILocation(line: 107, column: 6, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2251, file: !119, line: 107, column: 6)
!2308 = !DILocation(line: 107, column: 10, scope: !2307)
!2309 = !DILocation(line: 107, column: 6, scope: !2251)
!2310 = !DILocation(line: 108, column: 4, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2307, file: !119, line: 107, column: 18)
!2312 = !DILocation(line: 108, column: 13, scope: !2311)
!2313 = !DILocation(line: 109, column: 29, scope: !2311)
!2314 = !DILocation(line: 109, column: 10, scope: !2311)
!2315 = !DILocation(line: 109, column: 3, scope: !2311)
!2316 = !DILocation(line: 113, column: 17, scope: !2251)
!2317 = !DILocation(line: 113, column: 8, scope: !2251)
!2318 = !DILocation(line: 113, column: 6, scope: !2251)
!2319 = !DILocation(line: 114, column: 6, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2251, file: !119, line: 114, column: 6)
!2321 = !DILocation(line: 114, column: 10, scope: !2320)
!2322 = !DILocation(line: 114, column: 6, scope: !2251)
!2323 = !DILocation(line: 115, column: 19, scope: !2320)
!2324 = !DILocation(line: 115, column: 3, scope: !2320)
!2325 = !DILocation(line: 117, column: 2, scope: !2251)
!2326 = !DILocation(line: 118, column: 1, scope: !2251)
!2327 = distinct !DISubprogram(name: "update_signals_hash", scope: !119, file: !119, line: 634, type: !2328, isLocal: true, isDefinition: true, scopeLine: 635, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !448)
!2328 = !DISubroutineType(types: !2329)
!2329 = !{null, !2330, !111}
!2330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64, align: 64)
!2331 = !DILocalVariable(name: "hash", arg: 1, scope: !2327, file: !119, line: 634, type: !2330)
!2332 = !DILocation(line: 634, column: 46, scope: !2327)
!2333 = !DILocalVariable(name: "signals", arg: 2, scope: !2327, file: !119, line: 634, type: !111)
!2334 = !DILocation(line: 634, column: 57, scope: !2327)
!2335 = !DILocalVariable(name: "signal_id", scope: !2327, file: !119, line: 636, type: !82)
!2336 = !DILocation(line: 636, column: 8, scope: !2327)
!2337 = !DILocalVariable(name: "arg_type", scope: !2327, file: !119, line: 637, type: !91)
!2338 = !DILocation(line: 637, column: 13, scope: !2327)
!2339 = !DILocation(line: 639, column: 7, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2327, file: !119, line: 639, column: 6)
!2341 = !DILocation(line: 639, column: 6, scope: !2340)
!2342 = !DILocation(line: 639, column: 12, scope: !2340)
!2343 = !DILocation(line: 639, column: 6, scope: !2327)
!2344 = !DILocation(line: 640, column: 11, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2340, file: !119, line: 639, column: 20)
!2346 = !DILocation(line: 640, column: 4, scope: !2345)
!2347 = !DILocation(line: 640, column: 9, scope: !2345)
!2348 = !DILocation(line: 642, column: 2, scope: !2345)
!2349 = !DILocation(line: 644, column: 2, scope: !2327)
!2350 = !DILocation(line: 644, column: 10, scope: !2351)
!2351 = !DILexicalBlockFile(scope: !2327, file: !119, discriminator: 1)
!2352 = !DILocation(line: 644, column: 9, scope: !2351)
!2353 = !DILocation(line: 644, column: 18, scope: !2351)
!2354 = !DILocation(line: 644, column: 2, scope: !2351)
!2355 = !DILocation(line: 645, column: 51, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2327, file: !119, line: 644, column: 25)
!2357 = !DILocation(line: 645, column: 50, scope: !2356)
!2358 = !DILocation(line: 645, column: 41, scope: !2356)
!2359 = !DILocation(line: 645, column: 30, scope: !2356)
!2360 = !DILocation(line: 645, column: 27, scope: !2356)
!2361 = !DILocation(line: 646, column: 52, scope: !2356)
!2362 = !DILocation(line: 646, column: 51, scope: !2356)
!2363 = !DILocation(line: 646, column: 58, scope: !2356)
!2364 = !DILocation(line: 646, column: 31, scope: !2356)
!2365 = !DILocation(line: 646, column: 22, scope: !2356)
!2366 = !DILocation(line: 646, column: 15, scope: !2356)
!2367 = !DILocation(line: 646, column: 12, scope: !2356)
!2368 = !DILocation(line: 647, column: 7, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2356, file: !119, line: 647, column: 7)
!2370 = !DILocation(line: 647, column: 16, scope: !2369)
!2371 = !DILocation(line: 647, column: 21, scope: !2369)
!2372 = !DILocation(line: 647, column: 24, scope: !2373)
!2373 = !DILexicalBlockFile(scope: !2369, file: !119, discriminator: 1)
!2374 = !DILocation(line: 647, column: 36, scope: !2373)
!2375 = !DILocation(line: 647, column: 33, scope: !2373)
!2376 = !DILocation(line: 647, column: 7, scope: !2373)
!2377 = !DILocation(line: 652, column: 13, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2369, file: !119, line: 647, column: 48)
!2379 = !DILocation(line: 653, column: 3, scope: !2378)
!2380 = !DILocation(line: 655, column: 7, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2356, file: !119, line: 655, column: 7)
!2382 = !DILocation(line: 655, column: 16, scope: !2381)
!2383 = !DILocation(line: 655, column: 7, scope: !2356)
!2384 = !DILocation(line: 655, column: 33, scope: !2385)
!2385 = !DILexicalBlockFile(scope: !2381, file: !119, discriminator: 1)
!2386 = !DILocation(line: 655, column: 31, scope: !2385)
!2387 = !DILocation(line: 655, column: 22, scope: !2385)
!2388 = !DILocation(line: 656, column: 24, scope: !2356)
!2389 = !DILocation(line: 656, column: 23, scope: !2356)
!2390 = !DILocation(line: 656, column: 30, scope: !2356)
!2391 = !DILocation(line: 657, column: 30, scope: !2356)
!2392 = !DILocation(line: 657, column: 21, scope: !2356)
!2393 = !DILocation(line: 657, column: 10, scope: !2356)
!2394 = !DILocation(line: 656, column: 3, scope: !2356)
!2395 = !DILocation(line: 658, column: 11, scope: !2356)
!2396 = !DILocation(line: 644, column: 2, scope: !2397)
!2397 = !DILexicalBlockFile(scope: !2327, file: !119, discriminator: 2)
!2398 = distinct !{!2398, !2349}
!2399 = !DILocation(line: 660, column: 1, scope: !2327)
!2400 = distinct !DISubprogram(name: "get_signals_list", scope: !119, file: !119, line: 669, type: !2401, isLocal: true, isDefinition: true, scopeLine: 670, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !448)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{!111, !384}
!2403 = !DILocalVariable(name: "hash", arg: 1, scope: !2400, file: !119, line: 669, type: !384)
!2404 = !DILocation(line: 669, column: 42, scope: !2400)
!2405 = !DILocalVariable(name: "signals", scope: !2400, file: !119, line: 671, type: !111)
!2406 = !DILocation(line: 671, column: 7, scope: !2400)
!2407 = !DILocalVariable(name: "pos", scope: !2400, file: !119, line: 671, type: !111)
!2408 = !DILocation(line: 671, column: 17, scope: !2400)
!2409 = !DILocation(line: 673, column: 6, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2400, file: !119, line: 673, column: 6)
!2411 = !DILocation(line: 673, column: 11, scope: !2410)
!2412 = !DILocation(line: 673, column: 6, scope: !2400)
!2413 = !DILocation(line: 675, column: 3, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2410, file: !119, line: 673, column: 19)
!2415 = !DILocation(line: 678, column: 65, scope: !2400)
!2416 = !DILocation(line: 678, column: 47, scope: !2400)
!2417 = !DILocation(line: 678, column: 70, scope: !2400)
!2418 = !DILocation(line: 678, column: 73, scope: !2400)
!2419 = !DILocation(line: 678, column: 46, scope: !2400)
!2420 = !DILocation(line: 678, column: 34, scope: !2421)
!2421 = !DILexicalBlockFile(scope: !2400, file: !119, discriminator: 1)
!2422 = !DILocation(line: 678, column: 26, scope: !2400)
!2423 = !DILocation(line: 678, column: 23, scope: !2400)
!2424 = !DILocation(line: 678, column: 13, scope: !2400)
!2425 = !DILocation(line: 679, column: 23, scope: !2400)
!2426 = !DILocation(line: 679, column: 55, scope: !2400)
!2427 = !DILocation(line: 679, column: 2, scope: !2400)
!2428 = !DILocation(line: 680, column: 10, scope: !2400)
!2429 = !DILocation(line: 680, column: 14, scope: !2400)
!2430 = !DILocation(line: 682, column: 23, scope: !2400)
!2431 = !DILocation(line: 682, column: 2, scope: !2400)
!2432 = !DILocation(line: 683, column: 16, scope: !2400)
!2433 = !DILocation(line: 683, column: 9, scope: !2400)
!2434 = !DILocation(line: 685, column: 1, scope: !2400)
!2435 = distinct !DISubprogram(name: "get_signal_hash", scope: !119, file: !119, line: 662, type: !2436, isLocal: true, isDefinition: true, scopeLine: 663, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !448)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{null, !82, !82, !2438}
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64, align: 64)
!2439 = !DILocalVariable(name: "signal_id", arg: 1, scope: !2435, file: !119, line: 662, type: !82)
!2440 = !DILocation(line: 662, column: 35, scope: !2435)
!2441 = !DILocalVariable(name: "arg_type", arg: 2, scope: !2435, file: !119, line: 662, type: !82)
!2442 = !DILocation(line: 662, column: 52, scope: !2435)
!2443 = !DILocalVariable(name: "pos", arg: 3, scope: !2435, file: !119, line: 662, type: !2438)
!2444 = !DILocation(line: 662, column: 68, scope: !2435)
!2445 = !DILocation(line: 664, column: 31, scope: !2435)
!2446 = !DILocation(line: 664, column: 22, scope: !2435)
!2447 = !DILocation(line: 664, column: 15, scope: !2435)
!2448 = !DILocation(line: 664, column: 4, scope: !2435)
!2449 = !DILocation(line: 664, column: 3, scope: !2435)
!2450 = !DILocation(line: 664, column: 2, scope: !2435)
!2451 = !DILocation(line: 664, column: 12, scope: !2435)
!2452 = !DILocation(line: 665, column: 38, scope: !2435)
!2453 = !DILocation(line: 665, column: 29, scope: !2435)
!2454 = !DILocation(line: 665, column: 22, scope: !2435)
!2455 = !DILocation(line: 665, column: 11, scope: !2435)
!2456 = !DILocation(line: 665, column: 10, scope: !2435)
!2457 = !DILocation(line: 665, column: 9, scope: !2435)
!2458 = !DILocation(line: 665, column: 19, scope: !2435)
!2459 = !DILocation(line: 666, column: 11, scope: !2435)
!2460 = !DILocation(line: 666, column: 16, scope: !2435)
!2461 = !DILocation(line: 667, column: 1, scope: !2435)
