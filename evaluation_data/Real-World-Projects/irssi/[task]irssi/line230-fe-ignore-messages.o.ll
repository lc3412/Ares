; ModuleID = './line230-fe-ignore-messages.o.i'
source_filename = "./line230-fe-ignore-messages.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct._GString = type { i8*, i64, i64 }
%struct._NET_SENDBUF_REC = type opaque
%struct._RAWLOG_REC = type opaque
%struct._GHashTable = type opaque
%struct._GTimeVal = type { i64, i64 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._CHANNEL_REC = type opaque
%struct._QUERY_REC = type opaque

@.str = private unnamed_addr constant [15 x i8] c"fe-common/core\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"message public\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"message private\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"message join\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"message part\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"message quit\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"message kick\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"message nick\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"message own_nick\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"message invite\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"message topic\00", align 1

; Function Attrs: nounwind uwtable
define void @fe_ignore_messages_init() #0 !dbg !78 {
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*, i8*)* @sig_message_public to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !83
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*)* @sig_message_private to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !84
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*)* @sig_message_join to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !85
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*, i8*)* @sig_message_part to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !86
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*)* @sig_message_quit to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !87
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*, i8*, i8*)* @sig_message_kick to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !88
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*)* @sig_message_nick to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !89
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*)* @sig_message_own_nick to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !90
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*)* @sig_message_invite to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !91
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*, i8*)* @sig_message_topic to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !92
  ret void, !dbg !93
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @sig_message_public(%struct._SERVER_REC*, i8*, i8*, i8*, i8*) #0 !dbg !94 {
  %6 = alloca %struct._SERVER_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %6, metadata !437, metadata !438), !dbg !439
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !440, metadata !438), !dbg !441
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !442, metadata !438), !dbg !443
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !444, metadata !438), !dbg !445
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !446, metadata !438), !dbg !447
  %11 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !448
  %12 = load i8*, i8** %8, align 8, !dbg !450
  %13 = load i8*, i8** %9, align 8, !dbg !451
  %14 = load i8*, i8** %10, align 8, !dbg !452
  %15 = load i8*, i8** %7, align 8, !dbg !453
  %16 = call i32 @ignore_check(%struct._SERVER_REC* %11, i8* %12, i8* %13, i8* %14, i8* %15, i32 4), !dbg !454
  %17 = icmp ne i32 %16, 0, !dbg !454
  br i1 %17, label %18, label %19, !dbg !455

; <label>:18:                                     ; preds = %5
  call void @signal_stop(), !dbg !456
  br label %19, !dbg !456

; <label>:19:                                     ; preds = %18, %5
  ret void, !dbg !457
}

; Function Attrs: nounwind uwtable
define internal void @sig_message_private(%struct._SERVER_REC*, i8*, i8*, i8*) #0 !dbg !458 {
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !461, metadata !438), !dbg !462
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !463, metadata !438), !dbg !464
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !465, metadata !438), !dbg !466
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !467, metadata !438), !dbg !468
  %9 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !469
  %10 = load i8*, i8** %7, align 8, !dbg !471
  %11 = load i8*, i8** %8, align 8, !dbg !472
  %12 = load i8*, i8** %6, align 8, !dbg !473
  %13 = call i32 @ignore_check(%struct._SERVER_REC* %9, i8* %10, i8* %11, i8* null, i8* %12, i32 2), !dbg !474
  %14 = icmp ne i32 %13, 0, !dbg !474
  br i1 %14, label %15, label %16, !dbg !475

; <label>:15:                                     ; preds = %4
  call void @signal_stop(), !dbg !476
  br label %16, !dbg !476

; <label>:16:                                     ; preds = %15, %4
  ret void, !dbg !477
}

; Function Attrs: nounwind uwtable
define internal void @sig_message_join(%struct._SERVER_REC*, i8*, i8*, i8*) #0 !dbg !478 {
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !479, metadata !438), !dbg !480
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !481, metadata !438), !dbg !482
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !483, metadata !438), !dbg !484
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !485, metadata !438), !dbg !486
  %9 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !487
  %10 = load i8*, i8** %7, align 8, !dbg !489
  %11 = load i8*, i8** %8, align 8, !dbg !490
  %12 = load i8*, i8** %6, align 8, !dbg !491
  %13 = call i32 @ignore_check(%struct._SERVER_REC* %9, i8* %10, i8* %11, i8* %12, i8* null, i32 128), !dbg !492
  %14 = icmp ne i32 %13, 0, !dbg !492
  br i1 %14, label %15, label %16, !dbg !493

; <label>:15:                                     ; preds = %4
  call void @signal_stop(), !dbg !494
  br label %16, !dbg !494

; <label>:16:                                     ; preds = %15, %4
  ret void, !dbg !495
}

; Function Attrs: nounwind uwtable
define internal void @sig_message_part(%struct._SERVER_REC*, i8*, i8*, i8*, i8*) #0 !dbg !496 {
  %6 = alloca %struct._SERVER_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %6, metadata !497, metadata !438), !dbg !498
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !499, metadata !438), !dbg !500
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !501, metadata !438), !dbg !502
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !503, metadata !438), !dbg !504
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !505, metadata !438), !dbg !506
  %11 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !507
  %12 = load i8*, i8** %8, align 8, !dbg !509
  %13 = load i8*, i8** %9, align 8, !dbg !510
  %14 = load i8*, i8** %7, align 8, !dbg !511
  %15 = call i32 @ignore_check(%struct._SERVER_REC* %11, i8* %12, i8* %13, i8* %14, i8* null, i32 256), !dbg !512
  %16 = icmp ne i32 %15, 0, !dbg !512
  br i1 %16, label %17, label %18, !dbg !513

; <label>:17:                                     ; preds = %5
  call void @signal_stop(), !dbg !514
  br label %18, !dbg !514

; <label>:18:                                     ; preds = %17, %5
  ret void, !dbg !515
}

; Function Attrs: nounwind uwtable
define internal void @sig_message_quit(%struct._SERVER_REC*, i8*, i8*, i8*) #0 !dbg !516 {
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !517, metadata !438), !dbg !518
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !519, metadata !438), !dbg !520
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !521, metadata !438), !dbg !522
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !523, metadata !438), !dbg !524
  %9 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !525
  %10 = load i8*, i8** %6, align 8, !dbg !527
  %11 = load i8*, i8** %7, align 8, !dbg !528
  %12 = load i8*, i8** %8, align 8, !dbg !529
  %13 = call i32 @ignore_check(%struct._SERVER_REC* %9, i8* %10, i8* %11, i8* null, i8* %12, i32 512), !dbg !530
  %14 = icmp ne i32 %13, 0, !dbg !530
  br i1 %14, label %15, label %16, !dbg !531

; <label>:15:                                     ; preds = %4
  call void @signal_stop(), !dbg !532
  br label %16, !dbg !532

; <label>:16:                                     ; preds = %15, %4
  ret void, !dbg !533
}

; Function Attrs: nounwind uwtable
define internal void @sig_message_kick(%struct._SERVER_REC*, i8*, i8*, i8*, i8*, i8*) #0 !dbg !534 {
  %7 = alloca %struct._SERVER_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %7, metadata !537, metadata !438), !dbg !538
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !539, metadata !438), !dbg !540
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !541, metadata !438), !dbg !542
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !543, metadata !438), !dbg !544
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !545, metadata !438), !dbg !546
  store i8* %5, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !547, metadata !438), !dbg !548
  %13 = load i8*, i8** %9, align 8, !dbg !549
  %14 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !551
  %15 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %14, i32 0, i32 7, !dbg !552
  %16 = load i8*, i8** %15, align 8, !dbg !552
  %17 = call i32 @g_ascii_strcasecmp(i8* %13, i8* %16), !dbg !553
  %18 = icmp ne i32 %17, 0, !dbg !554
  br i1 %18, label %19, label %28, !dbg !555

; <label>:19:                                     ; preds = %6
  %20 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !556
  %21 = load i8*, i8** %10, align 8, !dbg !557
  %22 = load i8*, i8** %11, align 8, !dbg !558
  %23 = load i8*, i8** %8, align 8, !dbg !559
  %24 = load i8*, i8** %12, align 8, !dbg !560
  %25 = call i32 @ignore_check(%struct._SERVER_REC* %20, i8* %21, i8* %22, i8* %23, i8* %24, i32 1024), !dbg !561
  %26 = icmp ne i32 %25, 0, !dbg !561
  br i1 %26, label %27, label %28, !dbg !562

; <label>:27:                                     ; preds = %19
  call void @signal_stop(), !dbg !564
  br label %28, !dbg !564

; <label>:28:                                     ; preds = %27, %19, %6
  ret void, !dbg !565
}

; Function Attrs: nounwind uwtable
define internal void @sig_message_nick(%struct._SERVER_REC*, i8*, i8*, i8*) #0 !dbg !566 {
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !567, metadata !438), !dbg !568
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !569, metadata !438), !dbg !570
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !571, metadata !438), !dbg !572
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !573, metadata !438), !dbg !574
  %9 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !575
  %10 = load i8*, i8** %7, align 8, !dbg !577
  %11 = load i8*, i8** %8, align 8, !dbg !578
  %12 = call i32 @ignore_check(%struct._SERVER_REC* %9, i8* %10, i8* %11, i8* null, i8* null, i32 32768), !dbg !579
  %13 = icmp ne i32 %12, 0, !dbg !579
  br i1 %13, label %20, label %14, !dbg !580

; <label>:14:                                     ; preds = %4
  %15 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !581
  %16 = load i8*, i8** %6, align 8, !dbg !582
  %17 = load i8*, i8** %8, align 8, !dbg !583
  %18 = call i32 @ignore_check(%struct._SERVER_REC* %15, i8* %16, i8* %17, i8* null, i8* null, i32 32768), !dbg !584
  %19 = icmp ne i32 %18, 0, !dbg !584
  br i1 %19, label %20, label %21, !dbg !585

; <label>:20:                                     ; preds = %14, %4
  call void @signal_stop(), !dbg !587
  br label %21, !dbg !587

; <label>:21:                                     ; preds = %20, %14
  ret void, !dbg !588
}

; Function Attrs: nounwind uwtable
define internal void @sig_message_own_nick(%struct._SERVER_REC*, i8*, i8*, i8*) #0 !dbg !589 {
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !590, metadata !438), !dbg !591
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !592, metadata !438), !dbg !593
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !594, metadata !438), !dbg !595
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !596, metadata !438), !dbg !597
  %9 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !598
  %10 = load i8*, i8** %7, align 8, !dbg !600
  %11 = load i8*, i8** %8, align 8, !dbg !601
  %12 = call i32 @ignore_check(%struct._SERVER_REC* %9, i8* %10, i8* %11, i8* null, i8* null, i32 32768), !dbg !602
  %13 = icmp ne i32 %12, 0, !dbg !602
  br i1 %13, label %14, label %15, !dbg !603

; <label>:14:                                     ; preds = %4
  call void @signal_stop(), !dbg !604
  br label %15, !dbg !604

; <label>:15:                                     ; preds = %14, %4
  ret void, !dbg !605
}

; Function Attrs: nounwind uwtable
define internal void @sig_message_invite(%struct._SERVER_REC*, i8*, i8*, i8*) #0 !dbg !606 {
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !607, metadata !438), !dbg !608
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !609, metadata !438), !dbg !610
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !611, metadata !438), !dbg !612
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !613, metadata !438), !dbg !614
  %9 = load i8*, i8** %6, align 8, !dbg !615
  %10 = load i8, i8* %9, align 1, !dbg !617
  %11 = sext i8 %10 to i32, !dbg !617
  %12 = icmp eq i32 %11, 0, !dbg !618
  br i1 %12, label %20, label %13, !dbg !619

; <label>:13:                                     ; preds = %4
  %14 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !620
  %15 = load i8*, i8** %7, align 8, !dbg !621
  %16 = load i8*, i8** %8, align 8, !dbg !622
  %17 = load i8*, i8** %6, align 8, !dbg !623
  %18 = call i32 @ignore_check(%struct._SERVER_REC* %14, i8* %15, i8* %16, i8* %17, i8* null, i32 16384), !dbg !624
  %19 = icmp ne i32 %18, 0, !dbg !624
  br i1 %19, label %20, label %21, !dbg !625

; <label>:20:                                     ; preds = %13, %4
  call void @signal_stop(), !dbg !627
  br label %21, !dbg !627

; <label>:21:                                     ; preds = %20, %13
  ret void, !dbg !628
}

; Function Attrs: nounwind uwtable
define internal void @sig_message_topic(%struct._SERVER_REC*, i8*, i8*, i8*, i8*) #0 !dbg !629 {
  %6 = alloca %struct._SERVER_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %6, metadata !630, metadata !438), !dbg !631
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !632, metadata !438), !dbg !633
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !634, metadata !438), !dbg !635
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !636, metadata !438), !dbg !637
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !638, metadata !438), !dbg !639
  %11 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !640
  %12 = load i8*, i8** %9, align 8, !dbg !642
  %13 = load i8*, i8** %10, align 8, !dbg !643
  %14 = load i8*, i8** %7, align 8, !dbg !644
  %15 = load i8*, i8** %8, align 8, !dbg !645
  %16 = call i32 @ignore_check(%struct._SERVER_REC* %11, i8* %12, i8* %13, i8* %14, i8* %15, i32 4096), !dbg !646
  %17 = icmp ne i32 %16, 0, !dbg !646
  br i1 %17, label %18, label %19, !dbg !647

; <label>:18:                                     ; preds = %5
  call void @signal_stop(), !dbg !648
  br label %19, !dbg !648

; <label>:19:                                     ; preds = %18, %5
  ret void, !dbg !649
}

; Function Attrs: nounwind uwtable
define void @fe_ignore_messages_deinit() #0 !dbg !650 {
  call void @signal_remove_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*, i8*)* @sig_message_public to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !651
  call void @signal_remove_full(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*)* @sig_message_private to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !652
  call void @signal_remove_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*)* @sig_message_join to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !653
  call void @signal_remove_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*, i8*)* @sig_message_part to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !654
  call void @signal_remove_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*)* @sig_message_quit to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !655
  call void @signal_remove_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*, i8*, i8*)* @sig_message_kick to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !656
  call void @signal_remove_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*)* @sig_message_nick to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !657
  call void @signal_remove_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*)* @sig_message_own_nick to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !658
  call void @signal_remove_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*)* @sig_message_invite to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !659
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*, i8*)* @sig_message_topic to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !660
  ret void, !dbg !661
}

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare i32 @ignore_check(%struct._SERVER_REC*, i8*, i8*, i8*, i8*, i32) #1

declare void @signal_stop() #1

declare i32 @g_ascii_strcasecmp(i8*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!75, !76}
!llvm.ident = !{!77}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !66)
!1 = !DIFile(filename: "line230-fe-ignore-messages.o.i", directory: "/home/lichi/Desktop/irssi/task1")
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
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 10, size: 32, align: 32, elements: !37)
!36 = !DIFile(filename: "../../../src/core/levels.h", directory: "/home/lichi/Desktop/irssi/task1")
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
!66 = !{!67, !74}
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !68, line: 9, baseType: !69)
!68 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!70 = !DISubroutineType(types: !71)
!71 = !{null, !72, !72, !72, !72, !72, !72}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!75 = !{i32 2, !"Dwarf Version", i32 4}
!76 = !{i32 2, !"Debug Info Version", i32 3}
!77 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!78 = distinct !DISubprogram(name: "fe_ignore_messages_init", scope: !79, file: !79, line: 110, type: !80, isLocal: false, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !82)
!79 = !DIFile(filename: "fe-ignore-messages.c", directory: "/home/lichi/Desktop/irssi/task1")
!80 = !DISubroutineType(types: !81)
!81 = !{null}
!82 = !{}
!83 = !DILocation(line: 112, column: 2, scope: !78)
!84 = !DILocation(line: 113, column: 2, scope: !78)
!85 = !DILocation(line: 114, column: 2, scope: !78)
!86 = !DILocation(line: 115, column: 2, scope: !78)
!87 = !DILocation(line: 116, column: 2, scope: !78)
!88 = !DILocation(line: 117, column: 2, scope: !78)
!89 = !DILocation(line: 118, column: 2, scope: !78)
!90 = !DILocation(line: 119, column: 2, scope: !78)
!91 = !DILocation(line: 120, column: 2, scope: !78)
!92 = !DILocation(line: 121, column: 2, scope: !78)
!93 = !DILocation(line: 122, column: 1, scope: !78)
!94 = distinct !DISubprogram(name: "sig_message_public", scope: !79, file: !79, line: 27, type: !95, isLocal: true, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !82)
!95 = !DISubroutineType(types: !96)
!96 = !{null, !97, !395, !395, !395, !395}
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64, align: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !99, line: 107, baseType: !100)
!99 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !101, line: 30, size: 2240, align: 64, elements: !102)
!101 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!102 = !{!103, !106, !107, !108, !340, !345, !346, !347, !348, !349, !350, !351, !352, !353, !357, !358, !362, !363, !364, !368, !373, !374, !375, !376, !377, !378, !379, !380, !387, !388, !389, !390, !391, !397, !401, !405, !409, !413, !418, !425, !432, !436}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !100, file: !104, line: 3, baseType: !105, size: 32, align: 32)
!104 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!105 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !100, file: !104, line: 4, baseType: !105, size: 32, align: 32, offset: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !100, file: !104, line: 6, baseType: !105, size: 32, align: 32, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !100, file: !104, line: 8, baseType: !109, size: 64, align: 64, offset: 128)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !99, line: 113, baseType: !111)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !101, line: 25, size: 1920, align: 64, elements: !112)
!112 = !{!113, !115, !116, !117, !120, !121, !122, !123, !124, !126, !127, !128, !129, !130, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !111, file: !114, line: 3, baseType: !105, size: 32, align: 32)
!114 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!115 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !111, file: !114, line: 4, baseType: !105, size: 32, align: 32, offset: 32)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !111, file: !114, line: 6, baseType: !105, size: 32, align: 32, offset: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !111, file: !114, line: 9, baseType: !118, size: 64, align: 64, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64, align: 64)
!119 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !111, file: !114, line: 10, baseType: !105, size: 32, align: 32, offset: 192)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !111, file: !114, line: 11, baseType: !118, size: 64, align: 64, offset: 256)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !111, file: !114, line: 11, baseType: !118, size: 64, align: 64, offset: 320)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !111, file: !114, line: 11, baseType: !118, size: 64, align: 64, offset: 384)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !111, file: !114, line: 13, baseType: !125, size: 16, align: 16, offset: 448)
!125 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !111, file: !114, line: 14, baseType: !118, size: 64, align: 64, offset: 512)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !111, file: !114, line: 15, baseType: !118, size: 64, align: 64, offset: 576)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !111, file: !114, line: 16, baseType: !105, size: 32, align: 32, offset: 640)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !111, file: !114, line: 17, baseType: !118, size: 64, align: 64, offset: 704)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !111, file: !114, line: 19, baseType: !131, size: 64, align: 64, offset: 768)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64, align: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !99, line: 99, baseType: !133)
!133 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !99, line: 99, flags: DIFlagFwdDecl)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !111, file: !114, line: 19, baseType: !131, size: 64, align: 64, offset: 832)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !111, file: !114, line: 21, baseType: !118, size: 64, align: 64, offset: 896)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !111, file: !114, line: 22, baseType: !118, size: 64, align: 64, offset: 960)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !111, file: !114, line: 23, baseType: !118, size: 64, align: 64, offset: 1024)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !111, file: !114, line: 24, baseType: !118, size: 64, align: 64, offset: 1088)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !111, file: !114, line: 26, baseType: !118, size: 64, align: 64, offset: 1152)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !111, file: !114, line: 27, baseType: !118, size: 64, align: 64, offset: 1216)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !111, file: !114, line: 28, baseType: !118, size: 64, align: 64, offset: 1280)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !111, file: !114, line: 29, baseType: !118, size: 64, align: 64, offset: 1344)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !111, file: !114, line: 30, baseType: !118, size: 64, align: 64, offset: 1408)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !111, file: !114, line: 31, baseType: !118, size: 64, align: 64, offset: 1472)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !111, file: !114, line: 32, baseType: !118, size: 64, align: 64, offset: 1536)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !111, file: !114, line: 33, baseType: !118, size: 64, align: 64, offset: 1600)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !111, file: !114, line: 35, baseType: !148, size: 64, align: 64, offset: 1664)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64, align: 64)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !150)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !151)
!151 = !{!152, !155, !297, !298, !303, !304, !305, !306, !307, !316, !317, !318, !322, !323, !324, !325, !326, !327, !328, !329}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !150, file: !4, line: 100, baseType: !153, size: 32, align: 32)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !154, line: 49, baseType: !105)
!154 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!155 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !150, file: !4, line: 101, baseType: !156, size: 64, align: 64, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64, align: 64)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !158)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !159)
!159 = !{!160, !184, !190, !197, !201, !284, !288, !293}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !158, file: !4, line: 133, baseType: !161, size: 64, align: 64)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64, align: 64)
!162 = !DISubroutineType(types: !163)
!163 = !{!164, !148, !165, !167, !170, !171}
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64, align: 64)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !154, line: 46, baseType: !119)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !168, line: 66, baseType: !169)
!168 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!169 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64, align: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64, align: 64)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64, align: 64)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !174, line: 42, baseType: !175)
!174 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !174, line: 44, size: 128, align: 64, elements: !176)
!176 = !{!177, !182, !183}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !175, file: !174, line: 46, baseType: !178, size: 32, align: 32)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !179, line: 36, baseType: !180)
!179 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !168, line: 45, baseType: !181)
!181 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !175, file: !174, line: 47, baseType: !153, size: 32, align: 32, offset: 32)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !175, file: !174, line: 48, baseType: !165, size: 64, align: 64, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !158, file: !4, line: 138, baseType: !185, size: 64, align: 64, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64, align: 64)
!186 = !DISubroutineType(types: !187)
!187 = !{!164, !148, !188, !167, !170, !171}
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64, align: 64)
!189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !166)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !158, file: !4, line: 143, baseType: !191, size: 64, align: 64, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64, align: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{!164, !148, !194, !196, !171}
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !168, line: 51, baseType: !195)
!195 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !158, file: !4, line: 147, baseType: !198, size: 64, align: 64, offset: 192)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64, align: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{!164, !148, !171}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !158, file: !4, line: 149, baseType: !202, size: 64, align: 64, offset: 256)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64, align: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!205, !148, !283}
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64, align: 64)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !207)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !208)
!208 = !{!209, !211, !232, !259, !261, !265, !266, !267, !268, !276, !277, !278, !279}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !207, file: !16, line: 174, baseType: !210, size: 64, align: 64)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !154, line: 77, baseType: !74)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !207, file: !16, line: 175, baseType: !212, size: 64, align: 64, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64, align: 64)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !214)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !215)
!215 = !{!216, !220, !221}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !214, file: !16, line: 198, baseType: !217, size: 64, align: 64)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64, align: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{null, !210}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !214, file: !16, line: 199, baseType: !217, size: 64, align: 64, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !214, file: !16, line: 200, baseType: !222, size: 64, align: 64, offset: 128)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64, align: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{null, !210, !205, !225, !231}
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64, align: 64)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !227)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64, align: 64)
!228 = !DISubroutineType(types: !229)
!229 = !{!230, !210}
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !154, line: 50, baseType: !153)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64, align: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !207, file: !16, line: 177, baseType: !233, size: 64, align: 64, offset: 128)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64, align: 64)
!234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !235)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !236)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !237)
!237 = !{!238, !243, !247, !251, !255, !256}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !236, file: !16, line: 216, baseType: !239, size: 64, align: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64, align: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{!230, !205, !242}
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64, align: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !236, file: !16, line: 218, baseType: !244, size: 64, align: 64, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64, align: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!230, !205}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !236, file: !16, line: 219, baseType: !248, size: 64, align: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64, align: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{!230, !205, !226, !210}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !236, file: !16, line: 222, baseType: !252, size: 64, align: 64, offset: 192)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64, align: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{null, !205}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !236, file: !16, line: 226, baseType: !226, size: 64, align: 64, offset: 256)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !236, file: !16, line: 227, baseType: !257, size: 64, align: 64, offset: 320)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !258)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !207, file: !16, line: 178, baseType: !260, size: 32, align: 32, offset: 192)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !154, line: 55, baseType: !181)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !207, file: !16, line: 180, baseType: !262, size: 64, align: 64, offset: 256)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64, align: 64)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !264)
!264 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !207, file: !16, line: 182, baseType: !153, size: 32, align: 32, offset: 320)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !207, file: !16, line: 183, baseType: !260, size: 32, align: 32, offset: 352)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !207, file: !16, line: 184, baseType: !260, size: 32, align: 32, offset: 384)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !207, file: !16, line: 186, baseType: !269, size: 64, align: 64, offset: 448)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64, align: 64)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !271, line: 37, baseType: !272)
!271 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !271, line: 39, size: 128, align: 64, elements: !273)
!273 = !{!274, !275}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !272, file: !271, line: 41, baseType: !210, size: 64, align: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !272, file: !271, line: 42, baseType: !269, size: 64, align: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !207, file: !16, line: 188, baseType: !205, size: 64, align: 64, offset: 512)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !207, file: !16, line: 189, baseType: !205, size: 64, align: 64, offset: 576)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !207, file: !16, line: 191, baseType: !118, size: 64, align: 64, offset: 640)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !207, file: !16, line: 193, baseType: !280, size: 64, align: 64, offset: 704)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64, align: 64)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !282)
!282 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !158, file: !4, line: 151, baseType: !285, size: 64, align: 64, offset: 320)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64, align: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{null, !148}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !158, file: !4, line: 152, baseType: !289, size: 64, align: 64, offset: 384)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!290 = !DISubroutineType(types: !291)
!291 = !{!164, !148, !292, !171}
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !158, file: !4, line: 155, baseType: !294, size: 64, align: 64, offset: 448)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64, align: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{!292, !148}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !150, file: !4, line: 103, baseType: !165, size: 64, align: 64, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !150, file: !4, line: 104, baseType: !299, size: 64, align: 64, offset: 192)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !300, line: 77, baseType: !301)
!300 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64, align: 64)
!302 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !300, line: 77, flags: DIFlagFwdDecl)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !150, file: !4, line: 105, baseType: !299, size: 64, align: 64, offset: 256)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !150, file: !4, line: 106, baseType: !165, size: 64, align: 64, offset: 320)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !150, file: !4, line: 107, baseType: !260, size: 32, align: 32, offset: 384)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !150, file: !4, line: 109, baseType: !167, size: 64, align: 64, offset: 448)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !150, file: !4, line: 110, baseType: !308, size: 64, align: 64, offset: 512)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64, align: 64)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !310, line: 39, baseType: !311)
!310 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !310, line: 41, size: 192, align: 64, elements: !312)
!312 = !{!313, !314, !315}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !311, file: !310, line: 43, baseType: !165, size: 64, align: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !311, file: !310, line: 44, baseType: !167, size: 64, align: 64, offset: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !311, file: !310, line: 45, baseType: !167, size: 64, align: 64, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !150, file: !4, line: 111, baseType: !308, size: 64, align: 64, offset: 576)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !150, file: !4, line: 112, baseType: !308, size: 64, align: 64, offset: 640)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !150, file: !4, line: 113, baseType: !319, size: 48, align: 8, offset: 704)
!319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 48, align: 8, elements: !320)
!320 = !{!321}
!321 = !DISubrange(count: 6)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !150, file: !4, line: 117, baseType: !260, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !150, file: !4, line: 118, baseType: !260, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !150, file: !4, line: 119, baseType: !260, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !150, file: !4, line: 120, baseType: !260, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !150, file: !4, line: 121, baseType: !260, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !150, file: !4, line: 122, baseType: !260, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !150, file: !4, line: 124, baseType: !210, size: 64, align: 64, offset: 768)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !150, file: !4, line: 125, baseType: !210, size: 64, align: 64, offset: 832)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !111, file: !114, line: 38, baseType: !181, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !111, file: !114, line: 39, baseType: !181, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !111, file: !114, line: 40, baseType: !181, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !111, file: !114, line: 41, baseType: !181, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !111, file: !114, line: 42, baseType: !181, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !111, file: !114, line: 43, baseType: !181, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !111, file: !114, line: 44, baseType: !181, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !111, file: !114, line: 45, baseType: !181, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !111, file: !114, line: 46, baseType: !118, size: 64, align: 64, offset: 1792)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !111, file: !114, line: 47, baseType: !118, size: 64, align: 64, offset: 1856)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !100, file: !104, line: 9, baseType: !341, size: 64, align: 64, offset: 192)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !342, line: 75, baseType: !343)
!342 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !344, line: 139, baseType: !195)
!344 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!345 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !100, file: !104, line: 10, baseType: !341, size: 64, align: 64, offset: 256)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !100, file: !104, line: 12, baseType: !118, size: 64, align: 64, offset: 320)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !100, file: !104, line: 13, baseType: !118, size: 64, align: 64, offset: 384)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !100, file: !104, line: 15, baseType: !181, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !100, file: !104, line: 16, baseType: !181, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !100, file: !104, line: 17, baseType: !181, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !100, file: !104, line: 18, baseType: !181, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !100, file: !104, line: 19, baseType: !181, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !100, file: !104, line: 21, baseType: !354, size: 64, align: 64, offset: 512)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64, align: 64)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !99, line: 102, baseType: !356)
!356 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !99, line: 102, flags: DIFlagFwdDecl)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !100, file: !104, line: 22, baseType: !105, size: 32, align: 32, offset: 576)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !100, file: !104, line: 25, baseType: !359, size: 128, align: 64, offset: 640)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 128, align: 64, elements: !360)
!360 = !{!361}
!361 = !DISubrange(count: 2)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !100, file: !104, line: 26, baseType: !105, size: 32, align: 32, offset: 768)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !100, file: !104, line: 27, baseType: !105, size: 32, align: 32, offset: 800)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !100, file: !104, line: 29, baseType: !365, size: 64, align: 64, offset: 832)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64, align: 64)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !99, line: 103, baseType: !367)
!367 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !99, line: 103, flags: DIFlagFwdDecl)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !100, file: !104, line: 30, baseType: !369, size: 64, align: 64, offset: 896)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64, align: 64)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !371, line: 37, baseType: !372)
!371 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!372 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !371, line: 37, flags: DIFlagFwdDecl)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !100, file: !104, line: 32, baseType: !118, size: 64, align: 64, offset: 960)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !100, file: !104, line: 33, baseType: !118, size: 64, align: 64, offset: 1024)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !100, file: !104, line: 34, baseType: !118, size: 64, align: 64, offset: 1088)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !100, file: !104, line: 35, baseType: !181, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !100, file: !104, line: 36, baseType: !181, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !100, file: !104, line: 37, baseType: !181, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !100, file: !104, line: 38, baseType: !181, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !100, file: !104, line: 40, baseType: !381, size: 128, align: 64, offset: 1216)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !154, line: 504, baseType: !382)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !154, line: 506, size: 128, align: 64, elements: !383)
!383 = !{!384, !386}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !382, file: !154, line: 508, baseType: !385, size: 64, align: 64)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !154, line: 48, baseType: !195)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !382, file: !154, line: 509, baseType: !385, size: 64, align: 64, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !100, file: !104, line: 41, baseType: !341, size: 64, align: 64, offset: 1344)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !100, file: !104, line: 42, baseType: !105, size: 32, align: 32, offset: 1408)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !100, file: !104, line: 44, baseType: !269, size: 64, align: 64, offset: 1472)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !100, file: !104, line: 45, baseType: !269, size: 64, align: 64, offset: 1536)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !100, file: !104, line: 53, baseType: !392, size: 64, align: 64, offset: 1600)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64, align: 64)
!393 = !DISubroutineType(types: !394)
!394 = !{null, !97, !395, !105}
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64, align: 64)
!396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !100, file: !104, line: 55, baseType: !398, size: 64, align: 64, offset: 1664)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64, align: 64)
!399 = !DISubroutineType(types: !400)
!400 = !{!105, !97, !119}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !100, file: !104, line: 57, baseType: !402, size: 64, align: 64, offset: 1728)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64, align: 64)
!403 = !DISubroutineType(types: !404)
!404 = !{!105, !97, !395}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !100, file: !104, line: 60, baseType: !406, size: 64, align: 64, offset: 1792)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64, align: 64)
!407 = !DISubroutineType(types: !408)
!408 = !{!395, !97}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !100, file: !104, line: 62, baseType: !410, size: 64, align: 64, offset: 1856)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64, align: 64)
!411 = !DISubroutineType(types: !412)
!412 = !{null, !97, !395, !395, !105}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !100, file: !104, line: 65, baseType: !414, size: 64, align: 64, offset: 1920)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64, align: 64)
!415 = !DISubroutineType(types: !416)
!416 = !{!417, !97, !395, !395}
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64, align: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !100, file: !104, line: 69, baseType: !419, size: 64, align: 64, offset: 1984)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64, align: 64)
!420 = !DISubroutineType(types: !421)
!421 = !{!422, !97, !395}
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64, align: 64)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !99, line: 109, baseType: !424)
!424 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !99, line: 109, flags: DIFlagFwdDecl)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !100, file: !104, line: 70, baseType: !426, size: 64, align: 64, offset: 2048)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64, align: 64)
!427 = !DISubroutineType(types: !428)
!428 = !{!429, !97, !395}
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64, align: 64)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !99, line: 110, baseType: !431)
!431 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !99, line: 110, flags: DIFlagFwdDecl)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !100, file: !104, line: 71, baseType: !433, size: 64, align: 64, offset: 2112)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64, align: 64)
!434 = !DISubroutineType(types: !435)
!435 = !{!105, !395, !395}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !100, file: !104, line: 73, baseType: !433, size: 64, align: 64, offset: 2176)
!437 = !DILocalVariable(name: "server", arg: 1, scope: !94, file: !79, line: 27, type: !97)
!438 = !DIExpression()
!439 = !DILocation(line: 27, column: 44, scope: !94)
!440 = !DILocalVariable(name: "msg", arg: 2, scope: !94, file: !79, line: 27, type: !395)
!441 = !DILocation(line: 27, column: 64, scope: !94)
!442 = !DILocalVariable(name: "nick", arg: 3, scope: !94, file: !79, line: 28, type: !395)
!443 = !DILocation(line: 28, column: 23, scope: !94)
!444 = !DILocalVariable(name: "address", arg: 4, scope: !94, file: !79, line: 28, type: !395)
!445 = !DILocation(line: 28, column: 41, scope: !94)
!446 = !DILocalVariable(name: "target", arg: 5, scope: !94, file: !79, line: 29, type: !395)
!447 = !DILocation(line: 29, column: 23, scope: !94)
!448 = !DILocation(line: 31, column: 19, scope: !449)
!449 = distinct !DILexicalBlock(scope: !94, file: !79, line: 31, column: 6)
!450 = !DILocation(line: 31, column: 27, scope: !449)
!451 = !DILocation(line: 31, column: 33, scope: !449)
!452 = !DILocation(line: 31, column: 42, scope: !449)
!453 = !DILocation(line: 31, column: 50, scope: !449)
!454 = !DILocation(line: 31, column: 6, scope: !449)
!455 = !DILocation(line: 31, column: 6, scope: !94)
!456 = !DILocation(line: 32, column: 3, scope: !449)
!457 = !DILocation(line: 33, column: 1, scope: !94)
!458 = distinct !DISubprogram(name: "sig_message_private", scope: !79, file: !79, line: 35, type: !459, isLocal: true, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !82)
!459 = !DISubroutineType(types: !460)
!460 = !{null, !97, !395, !395, !395}
!461 = !DILocalVariable(name: "server", arg: 1, scope: !458, file: !79, line: 35, type: !97)
!462 = !DILocation(line: 35, column: 45, scope: !458)
!463 = !DILocalVariable(name: "msg", arg: 2, scope: !458, file: !79, line: 35, type: !395)
!464 = !DILocation(line: 35, column: 65, scope: !458)
!465 = !DILocalVariable(name: "nick", arg: 3, scope: !458, file: !79, line: 36, type: !395)
!466 = !DILocation(line: 36, column: 17, scope: !458)
!467 = !DILocalVariable(name: "address", arg: 4, scope: !458, file: !79, line: 36, type: !395)
!468 = !DILocation(line: 36, column: 35, scope: !458)
!469 = !DILocation(line: 38, column: 19, scope: !470)
!470 = distinct !DILexicalBlock(scope: !458, file: !79, line: 38, column: 6)
!471 = !DILocation(line: 38, column: 27, scope: !470)
!472 = !DILocation(line: 38, column: 33, scope: !470)
!473 = !DILocation(line: 38, column: 47, scope: !470)
!474 = !DILocation(line: 38, column: 6, scope: !470)
!475 = !DILocation(line: 38, column: 6, scope: !458)
!476 = !DILocation(line: 39, column: 3, scope: !470)
!477 = !DILocation(line: 40, column: 1, scope: !458)
!478 = distinct !DISubprogram(name: "sig_message_join", scope: !79, file: !79, line: 42, type: !459, isLocal: true, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !82)
!479 = !DILocalVariable(name: "server", arg: 1, scope: !478, file: !79, line: 42, type: !97)
!480 = !DILocation(line: 42, column: 42, scope: !478)
!481 = !DILocalVariable(name: "channel", arg: 2, scope: !478, file: !79, line: 42, type: !395)
!482 = !DILocation(line: 42, column: 62, scope: !478)
!483 = !DILocalVariable(name: "nick", arg: 3, scope: !478, file: !79, line: 43, type: !395)
!484 = !DILocation(line: 43, column: 21, scope: !478)
!485 = !DILocalVariable(name: "address", arg: 4, scope: !478, file: !79, line: 43, type: !395)
!486 = !DILocation(line: 43, column: 39, scope: !478)
!487 = !DILocation(line: 45, column: 19, scope: !488)
!488 = distinct !DILexicalBlock(scope: !478, file: !79, line: 45, column: 6)
!489 = !DILocation(line: 45, column: 27, scope: !488)
!490 = !DILocation(line: 45, column: 33, scope: !488)
!491 = !DILocation(line: 45, column: 42, scope: !488)
!492 = !DILocation(line: 45, column: 6, scope: !488)
!493 = !DILocation(line: 45, column: 6, scope: !478)
!494 = !DILocation(line: 46, column: 3, scope: !488)
!495 = !DILocation(line: 47, column: 1, scope: !478)
!496 = distinct !DISubprogram(name: "sig_message_part", scope: !79, file: !79, line: 49, type: !95, isLocal: true, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !82)
!497 = !DILocalVariable(name: "server", arg: 1, scope: !496, file: !79, line: 49, type: !97)
!498 = !DILocation(line: 49, column: 42, scope: !496)
!499 = !DILocalVariable(name: "channel", arg: 2, scope: !496, file: !79, line: 49, type: !395)
!500 = !DILocation(line: 49, column: 62, scope: !496)
!501 = !DILocalVariable(name: "nick", arg: 3, scope: !496, file: !79, line: 50, type: !395)
!502 = !DILocation(line: 50, column: 21, scope: !496)
!503 = !DILocalVariable(name: "address", arg: 4, scope: !496, file: !79, line: 50, type: !395)
!504 = !DILocation(line: 50, column: 39, scope: !496)
!505 = !DILocalVariable(name: "reason", arg: 5, scope: !496, file: !79, line: 51, type: !395)
!506 = !DILocation(line: 51, column: 21, scope: !496)
!507 = !DILocation(line: 53, column: 19, scope: !508)
!508 = distinct !DILexicalBlock(scope: !496, file: !79, line: 53, column: 6)
!509 = !DILocation(line: 53, column: 27, scope: !508)
!510 = !DILocation(line: 53, column: 33, scope: !508)
!511 = !DILocation(line: 53, column: 42, scope: !508)
!512 = !DILocation(line: 53, column: 6, scope: !508)
!513 = !DILocation(line: 53, column: 6, scope: !496)
!514 = !DILocation(line: 54, column: 3, scope: !508)
!515 = !DILocation(line: 55, column: 1, scope: !496)
!516 = distinct !DISubprogram(name: "sig_message_quit", scope: !79, file: !79, line: 57, type: !459, isLocal: true, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !82)
!517 = !DILocalVariable(name: "server", arg: 1, scope: !516, file: !79, line: 57, type: !97)
!518 = !DILocation(line: 57, column: 42, scope: !516)
!519 = !DILocalVariable(name: "nick", arg: 2, scope: !516, file: !79, line: 57, type: !395)
!520 = !DILocation(line: 57, column: 62, scope: !516)
!521 = !DILocalVariable(name: "address", arg: 3, scope: !516, file: !79, line: 58, type: !395)
!522 = !DILocation(line: 58, column: 21, scope: !516)
!523 = !DILocalVariable(name: "reason", arg: 4, scope: !516, file: !79, line: 58, type: !395)
!524 = !DILocation(line: 58, column: 42, scope: !516)
!525 = !DILocation(line: 60, column: 19, scope: !526)
!526 = distinct !DILexicalBlock(scope: !516, file: !79, line: 60, column: 6)
!527 = !DILocation(line: 60, column: 27, scope: !526)
!528 = !DILocation(line: 60, column: 33, scope: !526)
!529 = !DILocation(line: 60, column: 47, scope: !526)
!530 = !DILocation(line: 60, column: 6, scope: !526)
!531 = !DILocation(line: 60, column: 6, scope: !516)
!532 = !DILocation(line: 61, column: 3, scope: !526)
!533 = !DILocation(line: 62, column: 1, scope: !516)
!534 = distinct !DISubprogram(name: "sig_message_kick", scope: !79, file: !79, line: 64, type: !535, isLocal: true, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !82)
!535 = !DISubroutineType(types: !536)
!536 = !{null, !97, !395, !395, !395, !395, !395}
!537 = !DILocalVariable(name: "server", arg: 1, scope: !534, file: !79, line: 64, type: !97)
!538 = !DILocation(line: 64, column: 42, scope: !534)
!539 = !DILocalVariable(name: "channel", arg: 2, scope: !534, file: !79, line: 64, type: !395)
!540 = !DILocation(line: 64, column: 62, scope: !534)
!541 = !DILocalVariable(name: "nick", arg: 3, scope: !534, file: !79, line: 65, type: !395)
!542 = !DILocation(line: 65, column: 21, scope: !534)
!543 = !DILocalVariable(name: "kicker", arg: 4, scope: !534, file: !79, line: 65, type: !395)
!544 = !DILocation(line: 65, column: 39, scope: !534)
!545 = !DILocalVariable(name: "address", arg: 5, scope: !534, file: !79, line: 66, type: !395)
!546 = !DILocation(line: 66, column: 21, scope: !534)
!547 = !DILocalVariable(name: "reason", arg: 6, scope: !534, file: !79, line: 66, type: !395)
!548 = !DILocation(line: 66, column: 42, scope: !534)
!549 = !DILocation(line: 69, column: 25, scope: !550)
!550 = distinct !DILexicalBlock(scope: !534, file: !79, line: 69, column: 6)
!551 = !DILocation(line: 69, column: 31, scope: !550)
!552 = !DILocation(line: 69, column: 39, scope: !550)
!553 = !DILocation(line: 69, column: 6, scope: !550)
!554 = !DILocation(line: 69, column: 45, scope: !550)
!555 = !DILocation(line: 69, column: 50, scope: !550)
!556 = !DILocation(line: 70, column: 19, scope: !550)
!557 = !DILocation(line: 70, column: 27, scope: !550)
!558 = !DILocation(line: 70, column: 35, scope: !550)
!559 = !DILocation(line: 71, column: 5, scope: !550)
!560 = !DILocation(line: 71, column: 14, scope: !550)
!561 = !DILocation(line: 70, column: 6, scope: !550)
!562 = !DILocation(line: 69, column: 6, scope: !563)
!563 = !DILexicalBlockFile(scope: !534, file: !79, discriminator: 1)
!564 = !DILocation(line: 72, column: 3, scope: !550)
!565 = !DILocation(line: 73, column: 1, scope: !534)
!566 = distinct !DISubprogram(name: "sig_message_nick", scope: !79, file: !79, line: 75, type: !459, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !82)
!567 = !DILocalVariable(name: "server", arg: 1, scope: !566, file: !79, line: 75, type: !97)
!568 = !DILocation(line: 75, column: 42, scope: !566)
!569 = !DILocalVariable(name: "newnick", arg: 2, scope: !566, file: !79, line: 75, type: !395)
!570 = !DILocation(line: 75, column: 62, scope: !566)
!571 = !DILocalVariable(name: "oldnick", arg: 3, scope: !566, file: !79, line: 76, type: !395)
!572 = !DILocation(line: 76, column: 21, scope: !566)
!573 = !DILocalVariable(name: "address", arg: 4, scope: !566, file: !79, line: 76, type: !395)
!574 = !DILocation(line: 76, column: 42, scope: !566)
!575 = !DILocation(line: 78, column: 19, scope: !576)
!576 = distinct !DILexicalBlock(scope: !566, file: !79, line: 78, column: 6)
!577 = !DILocation(line: 78, column: 27, scope: !576)
!578 = !DILocation(line: 78, column: 36, scope: !576)
!579 = !DILocation(line: 78, column: 6, scope: !576)
!580 = !DILocation(line: 79, column: 32, scope: !576)
!581 = !DILocation(line: 80, column: 19, scope: !576)
!582 = !DILocation(line: 80, column: 27, scope: !576)
!583 = !DILocation(line: 80, column: 36, scope: !576)
!584 = !DILocation(line: 80, column: 6, scope: !576)
!585 = !DILocation(line: 78, column: 6, scope: !586)
!586 = !DILexicalBlockFile(scope: !566, file: !79, discriminator: 1)
!587 = !DILocation(line: 82, column: 3, scope: !576)
!588 = !DILocation(line: 83, column: 1, scope: !566)
!589 = distinct !DISubprogram(name: "sig_message_own_nick", scope: !79, file: !79, line: 85, type: !459, isLocal: true, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !82)
!590 = !DILocalVariable(name: "server", arg: 1, scope: !589, file: !79, line: 85, type: !97)
!591 = !DILocation(line: 85, column: 46, scope: !589)
!592 = !DILocalVariable(name: "newnick", arg: 2, scope: !589, file: !79, line: 85, type: !395)
!593 = !DILocation(line: 85, column: 66, scope: !589)
!594 = !DILocalVariable(name: "oldnick", arg: 3, scope: !589, file: !79, line: 86, type: !395)
!595 = !DILocation(line: 86, column: 18, scope: !589)
!596 = !DILocalVariable(name: "address", arg: 4, scope: !589, file: !79, line: 86, type: !395)
!597 = !DILocation(line: 86, column: 39, scope: !589)
!598 = !DILocation(line: 88, column: 19, scope: !599)
!599 = distinct !DILexicalBlock(scope: !589, file: !79, line: 88, column: 6)
!600 = !DILocation(line: 88, column: 27, scope: !599)
!601 = !DILocation(line: 88, column: 36, scope: !599)
!602 = !DILocation(line: 88, column: 6, scope: !599)
!603 = !DILocation(line: 88, column: 6, scope: !589)
!604 = !DILocation(line: 89, column: 3, scope: !599)
!605 = !DILocation(line: 90, column: 1, scope: !589)
!606 = distinct !DISubprogram(name: "sig_message_invite", scope: !79, file: !79, line: 92, type: !459, isLocal: true, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !82)
!607 = !DILocalVariable(name: "server", arg: 1, scope: !606, file: !79, line: 92, type: !97)
!608 = !DILocation(line: 92, column: 44, scope: !606)
!609 = !DILocalVariable(name: "channel", arg: 2, scope: !606, file: !79, line: 92, type: !395)
!610 = !DILocation(line: 92, column: 64, scope: !606)
!611 = !DILocalVariable(name: "nick", arg: 3, scope: !606, file: !79, line: 93, type: !395)
!612 = !DILocation(line: 93, column: 23, scope: !606)
!613 = !DILocalVariable(name: "address", arg: 4, scope: !606, file: !79, line: 93, type: !395)
!614 = !DILocation(line: 93, column: 41, scope: !606)
!615 = !DILocation(line: 95, column: 7, scope: !616)
!616 = distinct !DILexicalBlock(scope: !606, file: !79, line: 95, column: 6)
!617 = !DILocation(line: 95, column: 6, scope: !616)
!618 = !DILocation(line: 95, column: 15, scope: !616)
!619 = !DILocation(line: 95, column: 23, scope: !616)
!620 = !DILocation(line: 96, column: 19, scope: !616)
!621 = !DILocation(line: 96, column: 27, scope: !616)
!622 = !DILocation(line: 96, column: 33, scope: !616)
!623 = !DILocation(line: 97, column: 5, scope: !616)
!624 = !DILocation(line: 96, column: 6, scope: !616)
!625 = !DILocation(line: 95, column: 6, scope: !626)
!626 = !DILexicalBlockFile(scope: !606, file: !79, discriminator: 1)
!627 = !DILocation(line: 98, column: 3, scope: !616)
!628 = !DILocation(line: 99, column: 1, scope: !606)
!629 = distinct !DISubprogram(name: "sig_message_topic", scope: !79, file: !79, line: 101, type: !95, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !82)
!630 = !DILocalVariable(name: "server", arg: 1, scope: !629, file: !79, line: 101, type: !97)
!631 = !DILocation(line: 101, column: 43, scope: !629)
!632 = !DILocalVariable(name: "channel", arg: 2, scope: !629, file: !79, line: 101, type: !395)
!633 = !DILocation(line: 101, column: 63, scope: !629)
!634 = !DILocalVariable(name: "topic", arg: 3, scope: !629, file: !79, line: 102, type: !395)
!635 = !DILocation(line: 102, column: 22, scope: !629)
!636 = !DILocalVariable(name: "nick", arg: 4, scope: !629, file: !79, line: 103, type: !395)
!637 = !DILocation(line: 103, column: 22, scope: !629)
!638 = !DILocalVariable(name: "address", arg: 5, scope: !629, file: !79, line: 103, type: !395)
!639 = !DILocation(line: 103, column: 40, scope: !629)
!640 = !DILocation(line: 105, column: 19, scope: !641)
!641 = distinct !DILexicalBlock(scope: !629, file: !79, line: 105, column: 6)
!642 = !DILocation(line: 105, column: 27, scope: !641)
!643 = !DILocation(line: 105, column: 33, scope: !641)
!644 = !DILocation(line: 106, column: 5, scope: !641)
!645 = !DILocation(line: 106, column: 14, scope: !641)
!646 = !DILocation(line: 105, column: 6, scope: !641)
!647 = !DILocation(line: 105, column: 6, scope: !629)
!648 = !DILocation(line: 107, column: 3, scope: !641)
!649 = !DILocation(line: 108, column: 1, scope: !629)
!650 = distinct !DISubprogram(name: "fe_ignore_messages_deinit", scope: !79, file: !79, line: 124, type: !80, isLocal: false, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !82)
!651 = !DILocation(line: 126, column: 2, scope: !650)
!652 = !DILocation(line: 127, column: 2, scope: !650)
!653 = !DILocation(line: 128, column: 2, scope: !650)
!654 = !DILocation(line: 129, column: 2, scope: !650)
!655 = !DILocation(line: 130, column: 2, scope: !650)
!656 = !DILocation(line: 131, column: 2, scope: !650)
!657 = !DILocation(line: 132, column: 2, scope: !650)
!658 = !DILocation(line: 133, column: 2, scope: !650)
!659 = !DILocation(line: 134, column: 2, scope: !650)
!660 = !DILocation(line: 135, column: 2, scope: !650)
!661 = !DILocation(line: 136, column: 1, scope: !650)
