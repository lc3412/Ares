; ModuleID = './line139-irc-servers-setup.o.i'
source_filename = "./line139-irc-servers-setup.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._CONFIG_REC = type { i8*, i32, i32, i8*, %struct._CONFIG_NODE*, %struct._GHashTable*, %struct._GHashTable*, %struct._GScanner*, %struct._GIOChannel*, i32, i32 }
%struct._CONFIG_NODE = type { i32, i8*, i8* }
%struct._GHashTable = type opaque
%struct._GScanner = type { i8*, i32, i32, i8*, %struct._GData*, %struct._GScannerConfig*, i32, %union._GTokenValue, i32, i32, i32, %union._GTokenValue, i32, i32, %struct._GHashTable*, i32, i8*, i8*, i8*, i32, void (%struct._GScanner*, i8*, i32)* }
%struct._GData = type opaque
%struct._GScannerConfig = type { i8*, i8*, i8*, i8*, i24, i32 }
%union._GTokenValue = type { i8* }
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
%struct._IRC_SERVER_CONNECT_REC = type { i32, i32, i32, i8*, i32, i8*, i8*, i8*, i16, i8*, i8*, i32, i8*, %struct._IPADDR*, %struct._IPADDR*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._GIOChannel*, i8, i8*, i8*, i8*, i8*, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct._IPADDR = type { i16, %struct.in6_addr }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct.IRC_SERVER_SETUP_REC = type { i32, i32, i8*, i16, i8*, i32, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IPADDR*, %struct._IPADDR*, i64, i8, %struct._GHashTable*, i32, i32, i32 }
%struct._SERVER_CONNECT_REC = type { i32, i32, i32, i8*, i32, i8*, i8*, i8*, i16, i8*, i8*, i32, i8*, %struct._IPADDR*, %struct._IPADDR*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._GIOChannel*, i8, i8*, i8* }
%struct._SERVER_SETUP_REC = type { i32, i32, i8*, i16, i8*, i32, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IPADDR*, %struct._IPADDR*, i64, i8, %struct._GHashTable* }
%struct._IRC_CHATNET_REC = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IPADDR*, %struct._IPADDR*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct._CHATNET_REC = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IPADDR*, %struct._IPADDR* }

@.str = private unnamed_addr constant [9 x i8] c"irc/core\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"server\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"skip_motd\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"alternate_nick\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"server setup fill reconn\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"server setup fill connect\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"server setup fill chatnet\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"server setup read\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"server setup saved\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"real_name\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"IRCNAME\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"user_name\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"IRCUSER\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"nick\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"IRCNICK\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"hostname\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"IRCHOST\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"irssi init userinfo changed\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"SERVER CONNECT\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"IRC\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"SERVER SETUP\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"usermode\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"CHATNET\00", align 1
@__func__.sig_server_setup_fill_chatnet = private unnamed_addr constant [30 x i8] c"sig_server_setup_fill_chatnet\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"IS_IRCNET(ircnet)\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"plain\00", align 1
@.str.26 = private unnamed_addr constant [71 x i8] c"The fields sasl_username and sasl_password are either missing or empty\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"external\00", align 1
@.str.28 = private unnamed_addr constant [41 x i8] c"Unsupported SASL mechanism \22%s\22 selected\00", align 1
@__func__.sig_server_setup_read = private unnamed_addr constant [22 x i8] c"sig_server_setup_read\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"rec != NULL\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"node != NULL\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"cmds_max_at_once\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"cmd_queue_speed\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"max_query_chans\00", align 1
@mainconfig = external global %struct._CONFIG_REC*, align 8

; Function Attrs: nounwind uwtable
define void @irc_servers_setup_init() #0 !dbg !518 {
  call void @settings_add_bool_module(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32 0), !dbg !521
  call void @settings_add_str_module(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0)), !dbg !522
  call void @init_userinfo(), !dbg !523
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_CONNECT_REC*, %struct.IRC_SERVER_SETUP_REC*)* @sig_server_setup_fill_reconn to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !524
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_CONNECT_REC*)* @sig_server_setup_fill_connect to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !525
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_CHATNET_REC*)* @sig_server_setup_fill_chatnet to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !526
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.IRC_SERVER_SETUP_REC*, %struct._CONFIG_NODE*)* @sig_server_setup_read to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !527
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.IRC_SERVER_SETUP_REC*, %struct._CONFIG_NODE*)* @sig_server_setup_saved to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !528
  ret void, !dbg !529
}

declare void @settings_add_bool_module(i8*, i8*, i8*, i32) #1

declare void @settings_add_str_module(i8*, i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @init_userinfo() #0 !dbg !530 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i32* %1, metadata !531, metadata !532), !dbg !533
  call void @llvm.dbg.declare(metadata i8** %2, metadata !534, metadata !532), !dbg !535
  call void @llvm.dbg.declare(metadata i8** %3, metadata !536, metadata !532), !dbg !537
  call void @llvm.dbg.declare(metadata i8** %4, metadata !538, metadata !532), !dbg !539
  call void @llvm.dbg.declare(metadata i8** %5, metadata !540, metadata !532), !dbg !541
  store i32 0, i32* %1, align 4, !dbg !542
  %6 = call i8* @settings_get_str(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0)), !dbg !543
  store i8* %6, i8** %2, align 8, !dbg !544
  %7 = load i8*, i8** %2, align 8, !dbg !545
  %8 = icmp eq i8* %7, null, !dbg !547
  br i1 %8, label %14, label %9, !dbg !548

; <label>:9:                                      ; preds = %0
  %10 = load i8*, i8** %2, align 8, !dbg !549
  %11 = load i8, i8* %10, align 1, !dbg !551
  %12 = sext i8 %11 to i32, !dbg !551
  %13 = icmp eq i32 %12, 0, !dbg !552
  br i1 %13, label %14, label %26, !dbg !553

; <label>:14:                                     ; preds = %9, %0
  %15 = call i8* @g_getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0)), !dbg !554
  store i8* %15, i8** %5, align 8, !dbg !556
  %16 = load i8*, i8** %5, align 8, !dbg !557
  %17 = icmp ne i8* %16, null, !dbg !558
  br i1 %17, label %18, label %20, !dbg !557

; <label>:18:                                     ; preds = %14
  %19 = load i8*, i8** %5, align 8, !dbg !559
  br label %22, !dbg !561

; <label>:20:                                     ; preds = %14
  %21 = call i8* @g_get_real_name(), !dbg !562
  br label %22, !dbg !564

; <label>:22:                                     ; preds = %20, %18
  %23 = phi i8* [ %19, %18 ], [ %21, %20 ], !dbg !565
  call void @settings_set_str(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i8* %23), !dbg !567
  %24 = load i32, i32* %1, align 4, !dbg !568
  %25 = or i32 %24, 1, !dbg !568
  store i32 %25, i32* %1, align 4, !dbg !568
  br label %26, !dbg !569

; <label>:26:                                     ; preds = %22, %9
  %27 = call i8* @settings_get_str(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0)), !dbg !570
  store i8* %27, i8** %4, align 8, !dbg !571
  %28 = load i8*, i8** %4, align 8, !dbg !572
  %29 = icmp eq i8* %28, null, !dbg !574
  br i1 %29, label %35, label %30, !dbg !575

; <label>:30:                                     ; preds = %26
  %31 = load i8*, i8** %4, align 8, !dbg !576
  %32 = load i8, i8* %31, align 1, !dbg !578
  %33 = sext i8 %32 to i32, !dbg !578
  %34 = icmp eq i32 %33, 0, !dbg !579
  br i1 %34, label %35, label %48, !dbg !580

; <label>:35:                                     ; preds = %30, %26
  %36 = call i8* @g_getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0)), !dbg !581
  store i8* %36, i8** %5, align 8, !dbg !583
  %37 = load i8*, i8** %5, align 8, !dbg !584
  %38 = icmp ne i8* %37, null, !dbg !585
  br i1 %38, label %39, label %41, !dbg !584

; <label>:39:                                     ; preds = %35
  %40 = load i8*, i8** %5, align 8, !dbg !586
  br label %43, !dbg !588

; <label>:41:                                     ; preds = %35
  %42 = call i8* @g_get_user_name(), !dbg !589
  br label %43, !dbg !591

; <label>:43:                                     ; preds = %41, %39
  %44 = phi i8* [ %40, %39 ], [ %42, %41 ], !dbg !592
  call void @settings_set_str(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* %44), !dbg !594
  %45 = call i8* @settings_get_str(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0)), !dbg !595
  store i8* %45, i8** %4, align 8, !dbg !596
  %46 = load i32, i32* %1, align 4, !dbg !597
  %47 = or i32 %46, 2, !dbg !597
  store i32 %47, i32* %1, align 4, !dbg !597
  br label %48, !dbg !598

; <label>:48:                                     ; preds = %43, %30
  %49 = call i8* @settings_get_str(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0)), !dbg !599
  store i8* %49, i8** %3, align 8, !dbg !600
  %50 = load i8*, i8** %3, align 8, !dbg !601
  %51 = icmp eq i8* %50, null, !dbg !603
  br i1 %51, label %57, label %52, !dbg !604

; <label>:52:                                     ; preds = %48
  %53 = load i8*, i8** %3, align 8, !dbg !605
  %54 = load i8, i8* %53, align 1, !dbg !607
  %55 = sext i8 %54 to i32, !dbg !607
  %56 = icmp eq i32 %55, 0, !dbg !608
  br i1 %56, label %57, label %70, !dbg !609

; <label>:57:                                     ; preds = %52, %48
  %58 = call i8* @g_getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0)), !dbg !610
  store i8* %58, i8** %5, align 8, !dbg !612
  %59 = load i8*, i8** %5, align 8, !dbg !613
  %60 = icmp ne i8* %59, null, !dbg !614
  br i1 %60, label %61, label %63, !dbg !613

; <label>:61:                                     ; preds = %57
  %62 = load i8*, i8** %5, align 8, !dbg !615
  br label %65, !dbg !617

; <label>:63:                                     ; preds = %57
  %64 = load i8*, i8** %4, align 8, !dbg !618
  br label %65, !dbg !620

; <label>:65:                                     ; preds = %63, %61
  %66 = phi i8* [ %62, %61 ], [ %64, %63 ], !dbg !621
  call void @settings_set_str(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* %66), !dbg !623
  %67 = call i8* @settings_get_str(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0)), !dbg !624
  store i8* %67, i8** %3, align 8, !dbg !625
  %68 = load i32, i32* %1, align 4, !dbg !626
  %69 = or i32 %68, 4, !dbg !626
  store i32 %69, i32* %1, align 4, !dbg !626
  br label %70, !dbg !627

; <label>:70:                                     ; preds = %65, %52
  %71 = call i8* @settings_get_str(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0)), !dbg !628
  store i8* %71, i8** %2, align 8, !dbg !629
  %72 = load i8*, i8** %2, align 8, !dbg !630
  %73 = icmp eq i8* %72, null, !dbg !632
  br i1 %73, label %79, label %74, !dbg !633

; <label>:74:                                     ; preds = %70
  %75 = load i8*, i8** %2, align 8, !dbg !634
  %76 = load i8, i8* %75, align 1, !dbg !636
  %77 = sext i8 %76 to i32, !dbg !636
  %78 = icmp eq i32 %77, 0, !dbg !637
  br i1 %78, label %79, label %88, !dbg !638

; <label>:79:                                     ; preds = %74, %70
  %80 = call i8* @g_getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0)), !dbg !639
  store i8* %80, i8** %5, align 8, !dbg !641
  %81 = load i8*, i8** %5, align 8, !dbg !642
  %82 = icmp ne i8* %81, null, !dbg !644
  br i1 %82, label %83, label %87, !dbg !645

; <label>:83:                                     ; preds = %79
  %84 = load i8*, i8** %5, align 8, !dbg !646
  call void @settings_set_str(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i8* %84), !dbg !648
  %85 = load i32, i32* %1, align 4, !dbg !649
  %86 = or i32 %85, 8, !dbg !649
  store i32 %86, i32* %1, align 4, !dbg !649
  br label %87, !dbg !650

; <label>:87:                                     ; preds = %83, %79
  br label %88, !dbg !651

; <label>:88:                                     ; preds = %87, %74
  %89 = load i32, i32* %1, align 4, !dbg !652
  %90 = zext i32 %89 to i64, !dbg !653
  %91 = inttoptr i64 %90 to i8*, !dbg !654
  %92 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i32 0, i32 0), i32 1, i8* %91), !dbg !655
  ret void, !dbg !656
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @sig_server_setup_fill_reconn(%struct._IRC_SERVER_CONNECT_REC*, %struct.IRC_SERVER_SETUP_REC*) #0 !dbg !657 {
  %3 = alloca %struct._IRC_SERVER_CONNECT_REC*, align 8
  %4 = alloca %struct.IRC_SERVER_SETUP_REC*, align 8
  store %struct._IRC_SERVER_CONNECT_REC* %0, %struct._IRC_SERVER_CONNECT_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_CONNECT_REC** %3, metadata !660, metadata !532), !dbg !661
  store %struct.IRC_SERVER_SETUP_REC* %1, %struct.IRC_SERVER_SETUP_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct.IRC_SERVER_SETUP_REC** %4, metadata !662, metadata !532), !dbg !663
  %5 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %3, align 8, !dbg !664
  %6 = bitcast %struct._IRC_SERVER_CONNECT_REC* %5 to i8*, !dbg !664
  %7 = call i8* @module_check_cast(i8* %6, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0)), !dbg !666
  %8 = bitcast i8* %7 to %struct._SERVER_CONNECT_REC*, !dbg !667
  %9 = bitcast %struct._SERVER_CONNECT_REC* %8 to i8*, !dbg !668
  %10 = call i8* @chat_protocol_check_cast(i8* %9, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0)), !dbg !669
  %11 = bitcast i8* %10 to %struct._IRC_SERVER_CONNECT_REC*, !dbg !671
  %12 = icmp ne %struct._IRC_SERVER_CONNECT_REC* %11, null, !dbg !671
  br i1 %12, label %13, label %14, !dbg !672

; <label>:13:                                     ; preds = %2
  br i1 false, label %26, label %15, !dbg !673

; <label>:14:                                     ; preds = %2
  br i1 false, label %15, label %26, !dbg !675

; <label>:15:                                     ; preds = %14, %13
  %16 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %4, align 8, !dbg !677
  %17 = bitcast %struct.IRC_SERVER_SETUP_REC* %16 to i8*, !dbg !677
  %18 = call i8* @module_check_cast(i8* %17, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0)), !dbg !678
  %19 = bitcast i8* %18 to %struct._SERVER_SETUP_REC*, !dbg !679
  %20 = bitcast %struct._SERVER_SETUP_REC* %19 to i8*, !dbg !680
  %21 = call i8* @chat_protocol_check_cast(i8* %20, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0)), !dbg !681
  %22 = bitcast i8* %21 to %struct.IRC_SERVER_SETUP_REC*, !dbg !682
  %23 = icmp ne %struct.IRC_SERVER_SETUP_REC* %22, null, !dbg !682
  br i1 %23, label %24, label %25, !dbg !683

; <label>:24:                                     ; preds = %15
  br i1 false, label %26, label %27, !dbg !685

; <label>:25:                                     ; preds = %15
  br i1 false, label %27, label %26, !dbg !686

; <label>:26:                                     ; preds = %25, %24, %14, %13
  br label %60, !dbg !688

; <label>:27:                                     ; preds = %25, %24
  %28 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %4, align 8, !dbg !689
  %29 = getelementptr inbounds %struct.IRC_SERVER_SETUP_REC, %struct.IRC_SERVER_SETUP_REC* %28, i32 0, i32 24, !dbg !691
  %30 = load i32, i32* %29, align 4, !dbg !691
  %31 = icmp sgt i32 %30, 0, !dbg !692
  br i1 %31, label %32, label %38, !dbg !693

; <label>:32:                                     ; preds = %27
  %33 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %4, align 8, !dbg !694
  %34 = getelementptr inbounds %struct.IRC_SERVER_SETUP_REC, %struct.IRC_SERVER_SETUP_REC* %33, i32 0, i32 24, !dbg !695
  %35 = load i32, i32* %34, align 4, !dbg !695
  %36 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %3, align 8, !dbg !696
  %37 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %36, i32 0, i32 37, !dbg !697
  store i32 %35, i32* %37, align 4, !dbg !698
  br label %38, !dbg !696

; <label>:38:                                     ; preds = %32, %27
  %39 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %4, align 8, !dbg !699
  %40 = getelementptr inbounds %struct.IRC_SERVER_SETUP_REC, %struct.IRC_SERVER_SETUP_REC* %39, i32 0, i32 23, !dbg !701
  %41 = load i32, i32* %40, align 8, !dbg !701
  %42 = icmp sgt i32 %41, 0, !dbg !702
  br i1 %42, label %43, label %49, !dbg !703

; <label>:43:                                     ; preds = %38
  %44 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %4, align 8, !dbg !704
  %45 = getelementptr inbounds %struct.IRC_SERVER_SETUP_REC, %struct.IRC_SERVER_SETUP_REC* %44, i32 0, i32 23, !dbg !705
  %46 = load i32, i32* %45, align 8, !dbg !705
  %47 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %3, align 8, !dbg !706
  %48 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %47, i32 0, i32 36, !dbg !707
  store i32 %46, i32* %48, align 8, !dbg !708
  br label %49, !dbg !706

; <label>:49:                                     ; preds = %43, %38
  %50 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %4, align 8, !dbg !709
  %51 = getelementptr inbounds %struct.IRC_SERVER_SETUP_REC, %struct.IRC_SERVER_SETUP_REC* %50, i32 0, i32 25, !dbg !711
  %52 = load i32, i32* %51, align 8, !dbg !711
  %53 = icmp sgt i32 %52, 0, !dbg !712
  br i1 %53, label %54, label %60, !dbg !713

; <label>:54:                                     ; preds = %49
  %55 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %4, align 8, !dbg !714
  %56 = getelementptr inbounds %struct.IRC_SERVER_SETUP_REC, %struct.IRC_SERVER_SETUP_REC* %55, i32 0, i32 25, !dbg !715
  %57 = load i32, i32* %56, align 8, !dbg !715
  %58 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %3, align 8, !dbg !716
  %59 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %58, i32 0, i32 38, !dbg !717
  store i32 %57, i32* %59, align 8, !dbg !718
  br label %60, !dbg !716

; <label>:60:                                     ; preds = %26, %54, %49
  ret void, !dbg !719
}

; Function Attrs: nounwind uwtable
define internal void @sig_server_setup_fill_connect(%struct._IRC_SERVER_CONNECT_REC*) #0 !dbg !720 {
  %2 = alloca %struct._IRC_SERVER_CONNECT_REC*, align 8
  %3 = alloca i8*, align 8
  store %struct._IRC_SERVER_CONNECT_REC* %0, %struct._IRC_SERVER_CONNECT_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_CONNECT_REC** %2, metadata !723, metadata !532), !dbg !724
  call void @llvm.dbg.declare(metadata i8** %3, metadata !725, metadata !532), !dbg !726
  %4 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %2, align 8, !dbg !727
  %5 = bitcast %struct._IRC_SERVER_CONNECT_REC* %4 to i8*, !dbg !727
  %6 = call i8* @module_check_cast(i8* %5, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0)), !dbg !729
  %7 = bitcast i8* %6 to %struct._SERVER_CONNECT_REC*, !dbg !730
  %8 = bitcast %struct._SERVER_CONNECT_REC* %7 to i8*, !dbg !731
  %9 = call i8* @chat_protocol_check_cast(i8* %8, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0)), !dbg !732
  %10 = bitcast i8* %9 to %struct._IRC_SERVER_CONNECT_REC*, !dbg !734
  %11 = icmp ne %struct._IRC_SERVER_CONNECT_REC* %10, null, !dbg !734
  br i1 %11, label %12, label %13, !dbg !735

; <label>:12:                                     ; preds = %1
  br i1 false, label %14, label %15, !dbg !736

; <label>:13:                                     ; preds = %1
  br i1 false, label %15, label %14, !dbg !738

; <label>:14:                                     ; preds = %13, %12
  br label %48, !dbg !740

; <label>:15:                                     ; preds = %13, %12
  %16 = call i8* @settings_get_str(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0)), !dbg !741
  store i8* %16, i8** %3, align 8, !dbg !742
  %17 = load i8*, i8** %3, align 8, !dbg !743
  %18 = icmp ne i8* %17, null, !dbg !744
  br i1 %18, label %19, label %27, !dbg !745

; <label>:19:                                     ; preds = %15
  %20 = load i8*, i8** %3, align 8, !dbg !746
  %21 = load i8, i8* %20, align 1, !dbg !748
  %22 = sext i8 %21 to i32, !dbg !748
  %23 = icmp ne i32 %22, 0, !dbg !749
  br i1 %23, label %24, label %27, !dbg !750

; <label>:24:                                     ; preds = %19
  %25 = load i8*, i8** %3, align 8, !dbg !751
  %26 = call noalias i8* @g_strdup(i8* %25), !dbg !752
  br label %28, !dbg !753

; <label>:27:                                     ; preds = %19, %15
  br label %28, !dbg !754

; <label>:28:                                     ; preds = %27, %24
  %29 = phi i8* [ %26, %24 ], [ null, %27 ], !dbg !756
  %30 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %2, align 8, !dbg !758
  %31 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %30, i32 0, i32 32, !dbg !759
  store i8* %29, i8** %31, align 8, !dbg !760
  %32 = call i8* @settings_get_str(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0)), !dbg !761
  store i8* %32, i8** %3, align 8, !dbg !762
  %33 = load i8*, i8** %3, align 8, !dbg !763
  %34 = icmp ne i8* %33, null, !dbg !764
  br i1 %34, label %35, label %43, !dbg !765

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %3, align 8, !dbg !766
  %37 = load i8, i8* %36, align 1, !dbg !767
  %38 = sext i8 %37 to i32, !dbg !767
  %39 = icmp ne i32 %38, 0, !dbg !768
  br i1 %39, label %40, label %43, !dbg !769

; <label>:40:                                     ; preds = %35
  %41 = load i8*, i8** %3, align 8, !dbg !770
  %42 = call noalias i8* @g_strdup(i8* %41), !dbg !771
  br label %44, !dbg !772

; <label>:43:                                     ; preds = %35, %28
  br label %44, !dbg !773

; <label>:44:                                     ; preds = %43, %40
  %45 = phi i8* [ %42, %40 ], [ null, %43 ], !dbg !774
  %46 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %2, align 8, !dbg !775
  %47 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %46, i32 0, i32 31, !dbg !776
  store i8* %45, i8** %47, align 8, !dbg !777
  br label %48, !dbg !778

; <label>:48:                                     ; preds = %44, %14
  ret void, !dbg !779
}

; Function Attrs: nounwind uwtable
define internal void @sig_server_setup_fill_chatnet(%struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_CHATNET_REC*) #0 !dbg !780 {
  %3 = alloca %struct._IRC_SERVER_CONNECT_REC*, align 8
  %4 = alloca %struct._IRC_CHATNET_REC*, align 8
  store %struct._IRC_SERVER_CONNECT_REC* %0, %struct._IRC_SERVER_CONNECT_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_CONNECT_REC** %3, metadata !783, metadata !532), !dbg !784
  store %struct._IRC_CHATNET_REC* %1, %struct._IRC_CHATNET_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_CHATNET_REC** %4, metadata !785, metadata !532), !dbg !786
  %5 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %3, align 8, !dbg !787
  %6 = bitcast %struct._IRC_SERVER_CONNECT_REC* %5 to i8*, !dbg !787
  %7 = call i8* @module_check_cast(i8* %6, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0)), !dbg !789
  %8 = bitcast i8* %7 to %struct._SERVER_CONNECT_REC*, !dbg !790
  %9 = bitcast %struct._SERVER_CONNECT_REC* %8 to i8*, !dbg !791
  %10 = call i8* @chat_protocol_check_cast(i8* %9, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0)), !dbg !792
  %11 = bitcast i8* %10 to %struct._IRC_SERVER_CONNECT_REC*, !dbg !794
  %12 = icmp ne %struct._IRC_SERVER_CONNECT_REC* %11, null, !dbg !794
  br i1 %12, label %13, label %14, !dbg !795

; <label>:13:                                     ; preds = %2
  br i1 false, label %15, label %16, !dbg !796

; <label>:14:                                     ; preds = %2
  br i1 false, label %16, label %15, !dbg !798

; <label>:15:                                     ; preds = %14, %13
  br label %229, !dbg !800

; <label>:16:                                     ; preds = %14, %13
  br label %17, !dbg !801, !llvm.loop !802

; <label>:17:                                     ; preds = %16
  %18 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %4, align 8, !dbg !803
  %19 = bitcast %struct._IRC_CHATNET_REC* %18 to i8*, !dbg !803
  %20 = call i8* @module_check_cast(i8* %19, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0)), !dbg !807
  %21 = bitcast i8* %20 to %struct._CHATNET_REC*, !dbg !808
  %22 = bitcast %struct._CHATNET_REC* %21 to i8*, !dbg !809
  %23 = call i8* @chat_protocol_check_cast(i8* %22, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0)), !dbg !810
  %24 = bitcast i8* %23 to %struct._IRC_CHATNET_REC*, !dbg !812
  %25 = icmp ne %struct._IRC_CHATNET_REC* %24, null, !dbg !812
  br i1 %25, label %26, label %27, !dbg !813

; <label>:26:                                     ; preds = %17
  br i1 false, label %29, label %28, !dbg !814

; <label>:27:                                     ; preds = %17
  br i1 false, label %28, label %29, !dbg !816

; <label>:28:                                     ; preds = %27, %26
  br label %30, !dbg !818

; <label>:29:                                     ; preds = %27, %26
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.sig_server_setup_fill_chatnet, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i32 0, i32 0)), !dbg !821
  br label %229, !dbg !824

; <label>:30:                                     ; preds = %28
  br label %31, !dbg !825

; <label>:31:                                     ; preds = %30
  %32 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %4, align 8, !dbg !827
  %33 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %32, i32 0, i32 11, !dbg !829
  %34 = load i8*, i8** %33, align 8, !dbg !829
  %35 = icmp ne i8* %34, null, !dbg !830
  br i1 %35, label %36, label %56, !dbg !831

; <label>:36:                                     ; preds = %31
  br label %37, !dbg !832, !llvm.loop !834

; <label>:37:                                     ; preds = %36
  %38 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %3, align 8, !dbg !835
  %39 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %38, i32 0, i32 32, !dbg !839
  %40 = load i8*, i8** %39, align 8, !dbg !839
  %41 = icmp ne i8* %40, null, !dbg !835
  br i1 %41, label %42, label %48, !dbg !835

; <label>:42:                                     ; preds = %37
  %43 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %3, align 8, !dbg !840
  %44 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %43, i32 0, i32 32, !dbg !843
  %45 = load i8*, i8** %44, align 8, !dbg !843
  call void @g_free(i8* %45), !dbg !844
  %46 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %3, align 8, !dbg !845
  %47 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %46, i32 0, i32 32, !dbg !846
  store i8* null, i8** %47, align 8, !dbg !847
  br label %48, !dbg !848

; <label>:48:                                     ; preds = %42, %37
  br label %49, !dbg !849

; <label>:49:                                     ; preds = %48
  %50 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %4, align 8, !dbg !851
  %51 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %50, i32 0, i32 11, !dbg !852
  %52 = load i8*, i8** %51, align 8, !dbg !852
  %53 = call noalias i8* @g_strdup(i8* %52), !dbg !853
  %54 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %3, align 8, !dbg !854
  %55 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %54, i32 0, i32 32, !dbg !855
  store i8* %53, i8** %55, align 8, !dbg !856
  br label %56, !dbg !857

; <label>:56:                                     ; preds = %49, %31
  %57 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %4, align 8, !dbg !858
  %58 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %57, i32 0, i32 10, !dbg !860
  %59 = load i8*, i8** %58, align 8, !dbg !860
  %60 = icmp ne i8* %59, null, !dbg !861
  br i1 %60, label %61, label %81, !dbg !862

; <label>:61:                                     ; preds = %56
  br label %62, !dbg !863, !llvm.loop !865

; <label>:62:                                     ; preds = %61
  %63 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %3, align 8, !dbg !866
  %64 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %63, i32 0, i32 31, !dbg !870
  %65 = load i8*, i8** %64, align 8, !dbg !870
  %66 = icmp ne i8* %65, null, !dbg !866
  br i1 %66, label %67, label %73, !dbg !866

; <label>:67:                                     ; preds = %62
  %68 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %3, align 8, !dbg !871
  %69 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %68, i32 0, i32 31, !dbg !874
  %70 = load i8*, i8** %69, align 8, !dbg !874
  call void @g_free(i8* %70), !dbg !875
  %71 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %3, align 8, !dbg !876
  %72 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %71, i32 0, i32 31, !dbg !877
  store i8* null, i8** %72, align 8, !dbg !878
  br label %73, !dbg !879

; <label>:73:                                     ; preds = %67, %62
  br label %74, !dbg !880

; <label>:74:                                     ; preds = %73
  %75 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %4, align 8, !dbg !882
  %76 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %75, i32 0, i32 10, !dbg !883
  %77 = load i8*, i8** %76, align 8, !dbg !883
  %78 = call noalias i8* @g_strdup(i8* %77), !dbg !884
  %79 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %3, align 8, !dbg !885
  %80 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %79, i32 0, i32 31, !dbg !886
  store i8* %78, i8** %80, align 8, !dbg !887
  br label %81, !dbg !888

; <label>:81:                                     ; preds = %74, %56
  %82 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %4, align 8, !dbg !889
  %83 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %82, i32 0, i32 18, !dbg !891
  %84 = load i32, i32* %83, align 4, !dbg !891
  %85 = icmp sgt i32 %84, 0, !dbg !892
  br i1 %85, label %86, label %92, !dbg !893

; <label>:86:                                     ; preds = %81
  %87 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %4, align 8, !dbg !894
  %88 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %87, i32 0, i32 18, !dbg !896
  %89 = load i32, i32* %88, align 4, !dbg !896
  %90 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %3, align 8, !dbg !897
  %91 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %90, i32 0, i32 39, !dbg !898
  store i32 %89, i32* %91, align 4, !dbg !899
  br label %92, !dbg !897

; <label>:92:                                     ; preds = %86, %81
  %93 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %4, align 8, !dbg !900
  %94 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %93, i32 0, i32 19, !dbg !902
  %95 = load i32, i32* %94, align 8, !dbg !902
  %96 = icmp sgt i32 %95, 0, !dbg !903
  br i1 %96, label %97, label %103, !dbg !904

; <label>:97:                                     ; preds = %92
  %98 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %4, align 8, !dbg !905
  %99 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %98, i32 0, i32 19, !dbg !907
  %100 = load i32, i32* %99, align 8, !dbg !907
  %101 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %3, align 8, !dbg !908
  %102 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %101, i32 0, i32 40, !dbg !909
  store i32 %100, i32* %102, align 8, !dbg !910
  br label %103, !dbg !908

; <label>:103:                                    ; preds = %97, %92
  %104 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %4, align 8, !dbg !911
  %105 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %104, i32 0, i32 20, !dbg !913
  %106 = load i32, i32* %105, align 4, !dbg !913
  %107 = icmp sgt i32 %106, 0, !dbg !914
  br i1 %107, label %108, label %114, !dbg !915

; <label>:108:                                    ; preds = %103
  %109 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %4, align 8, !dbg !916
  %110 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %109, i32 0, i32 20, !dbg !918
  %111 = load i32, i32* %110, align 4, !dbg !918
  %112 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %3, align 8, !dbg !919
  %113 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %112, i32 0, i32 41, !dbg !920
  store i32 %111, i32* %113, align 4, !dbg !921
  br label %114, !dbg !919

; <label>:114:                                    ; preds = %108, %103
  %115 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %4, align 8, !dbg !922
  %116 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %115, i32 0, i32 21, !dbg !924
  %117 = load i32, i32* %116, align 8, !dbg !924
  %118 = icmp sgt i32 %117, 0, !dbg !925
  br i1 %118, label %119, label %125, !dbg !926

; <label>:119:                                    ; preds = %114
  %120 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %4, align 8, !dbg !927
  %121 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %120, i32 0, i32 21, !dbg !929
  %122 = load i32, i32* %121, align 8, !dbg !929
  %123 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %3, align 8, !dbg !930
  %124 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %123, i32 0, i32 42, !dbg !931
  store i32 %122, i32* %124, align 8, !dbg !932
  br label %125, !dbg !930

; <label>:125:                                    ; preds = %119, %114
  %126 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %4, align 8, !dbg !933
  %127 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %126, i32 0, i32 15, !dbg !935
  %128 = load i32, i32* %127, align 8, !dbg !935
  %129 = icmp sgt i32 %128, 0, !dbg !936
  br i1 %129, label %130, label %136, !dbg !937

; <label>:130:                                    ; preds = %125
  %131 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %4, align 8, !dbg !938
  %132 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %131, i32 0, i32 15, !dbg !939
  %133 = load i32, i32* %132, align 8, !dbg !939
  %134 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %3, align 8, !dbg !940
  %135 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %134, i32 0, i32 36, !dbg !941
  store i32 %133, i32* %135, align 8, !dbg !942
  br label %136, !dbg !940

; <label>:136:                                    ; preds = %130, %125
  %137 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %4, align 8, !dbg !943
  %138 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %137, i32 0, i32 16, !dbg !945
  %139 = load i32, i32* %138, align 4, !dbg !945
  %140 = icmp sgt i32 %139, 0, !dbg !946
  br i1 %140, label %141, label %147, !dbg !947

; <label>:141:                                    ; preds = %136
  %142 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %4, align 8, !dbg !948
  %143 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %142, i32 0, i32 16, !dbg !949
  %144 = load i32, i32* %143, align 4, !dbg !949
  %145 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %3, align 8, !dbg !950
  %146 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %145, i32 0, i32 37, !dbg !951
  store i32 %144, i32* %146, align 4, !dbg !952
  br label %147, !dbg !950

; <label>:147:                                    ; preds = %141, %136
  %148 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %4, align 8, !dbg !953
  %149 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %148, i32 0, i32 17, !dbg !955
  %150 = load i32, i32* %149, align 8, !dbg !955
  %151 = icmp sgt i32 %150, 0, !dbg !956
  br i1 %151, label %152, label %158, !dbg !957

; <label>:152:                                    ; preds = %147
  %153 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %4, align 8, !dbg !958
  %154 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %153, i32 0, i32 17, !dbg !959
  %155 = load i32, i32* %154, align 8, !dbg !959
  %156 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %3, align 8, !dbg !960
  %157 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %156, i32 0, i32 38, !dbg !961
  store i32 %155, i32* %157, align 8, !dbg !962
  br label %158, !dbg !960

; <label>:158:                                    ; preds = %152, %147
  %159 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %3, align 8, !dbg !963
  %160 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %159, i32 0, i32 33, !dbg !964
  store i32 0, i32* %160, align 8, !dbg !965
  %161 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %3, align 8, !dbg !966
  %162 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %161, i32 0, i32 34, !dbg !967
  store i8* null, i8** %162, align 8, !dbg !968
  %163 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %3, align 8, !dbg !969
  %164 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %163, i32 0, i32 35, !dbg !970
  store i8* null, i8** %164, align 8, !dbg !971
  %165 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %4, align 8, !dbg !972
  %166 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %165, i32 0, i32 12, !dbg !974
  %167 = load i8*, i8** %166, align 8, !dbg !974
  %168 = icmp ne i8* %167, null, !dbg !975
  br i1 %168, label %169, label %229, !dbg !976

; <label>:169:                                    ; preds = %158
  %170 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %4, align 8, !dbg !977
  %171 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %170, i32 0, i32 12, !dbg !980
  %172 = load i8*, i8** %171, align 8, !dbg !980
  %173 = call i32 @g_ascii_strcasecmp(i8* %172, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0)), !dbg !981
  %174 = icmp ne i32 %173, 0, !dbg !981
  br i1 %174, label %214, label %175, !dbg !982

; <label>:175:                                    ; preds = %169
  %176 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %3, align 8, !dbg !983
  %177 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %176, i32 0, i32 33, !dbg !985
  store i32 1, i32* %177, align 8, !dbg !986
  %178 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %4, align 8, !dbg !987
  %179 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %178, i32 0, i32 13, !dbg !989
  %180 = load i8*, i8** %179, align 8, !dbg !989
  %181 = icmp ne i8* %180, null, !dbg !990
  br i1 %181, label %182, label %212, !dbg !991

; <label>:182:                                    ; preds = %175
  %183 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %4, align 8, !dbg !992
  %184 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %183, i32 0, i32 13, !dbg !994
  %185 = load i8*, i8** %184, align 8, !dbg !994
  %186 = load i8, i8* %185, align 1, !dbg !995
  %187 = sext i8 %186 to i32, !dbg !995
  %188 = icmp ne i32 %187, 0, !dbg !995
  br i1 %188, label %189, label %212, !dbg !996

; <label>:189:                                    ; preds = %182
  %190 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %4, align 8, !dbg !997
  %191 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %190, i32 0, i32 14, !dbg !998
  %192 = load i8*, i8** %191, align 8, !dbg !998
  %193 = icmp ne i8* %192, null, !dbg !999
  br i1 %193, label %194, label %212, !dbg !1000

; <label>:194:                                    ; preds = %189
  %195 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %4, align 8, !dbg !1001
  %196 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %195, i32 0, i32 14, !dbg !1002
  %197 = load i8*, i8** %196, align 8, !dbg !1002
  %198 = load i8, i8* %197, align 1, !dbg !1003
  %199 = sext i8 %198 to i32, !dbg !1003
  %200 = icmp ne i32 %199, 0, !dbg !1003
  br i1 %200, label %201, label %212, !dbg !1004

; <label>:201:                                    ; preds = %194
  %202 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %4, align 8, !dbg !1006
  %203 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %202, i32 0, i32 13, !dbg !1008
  %204 = load i8*, i8** %203, align 8, !dbg !1008
  %205 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %3, align 8, !dbg !1009
  %206 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %205, i32 0, i32 34, !dbg !1010
  store i8* %204, i8** %206, align 8, !dbg !1011
  %207 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %4, align 8, !dbg !1012
  %208 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %207, i32 0, i32 14, !dbg !1013
  %209 = load i8*, i8** %208, align 8, !dbg !1013
  %210 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %3, align 8, !dbg !1014
  %211 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %210, i32 0, i32 35, !dbg !1015
  store i8* %209, i8** %211, align 8, !dbg !1016
  br label %213, !dbg !1017

; <label>:212:                                    ; preds = %194, %189, %182, %175
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.26, i32 0, i32 0)), !dbg !1018
  br label %213

; <label>:213:                                    ; preds = %212, %201
  br label %228, !dbg !1019

; <label>:214:                                    ; preds = %169
  %215 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %4, align 8, !dbg !1020
  %216 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %215, i32 0, i32 12, !dbg !1022
  %217 = load i8*, i8** %216, align 8, !dbg !1022
  %218 = call i32 @g_ascii_strcasecmp(i8* %217, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0)), !dbg !1023
  %219 = icmp ne i32 %218, 0, !dbg !1023
  br i1 %219, label %223, label %220, !dbg !1024

; <label>:220:                                    ; preds = %214
  %221 = load %struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_SERVER_CONNECT_REC** %3, align 8, !dbg !1025
  %222 = getelementptr inbounds %struct._IRC_SERVER_CONNECT_REC, %struct._IRC_SERVER_CONNECT_REC* %221, i32 0, i32 33, !dbg !1027
  store i32 2, i32* %222, align 8, !dbg !1028
  br label %227, !dbg !1029

; <label>:223:                                    ; preds = %214
  %224 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %4, align 8, !dbg !1030
  %225 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %224, i32 0, i32 12, !dbg !1031
  %226 = load i8*, i8** %225, align 8, !dbg !1031
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.28, i32 0, i32 0), i8* %226), !dbg !1032
  br label %227

; <label>:227:                                    ; preds = %223, %220
  br label %228

; <label>:228:                                    ; preds = %227, %213
  br label %229, !dbg !1033

; <label>:229:                                    ; preds = %15, %29, %228, %158
  ret void, !dbg !1034
}

; Function Attrs: nounwind uwtable
define internal void @sig_server_setup_read(%struct.IRC_SERVER_SETUP_REC*, %struct._CONFIG_NODE*) #0 !dbg !1035 {
  %3 = alloca %struct.IRC_SERVER_SETUP_REC*, align 8
  %4 = alloca %struct._CONFIG_NODE*, align 8
  store %struct.IRC_SERVER_SETUP_REC* %0, %struct.IRC_SERVER_SETUP_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.IRC_SERVER_SETUP_REC** %3, metadata !1046, metadata !532), !dbg !1047
  store %struct._CONFIG_NODE* %1, %struct._CONFIG_NODE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %4, metadata !1048, metadata !532), !dbg !1049
  br label %5, !dbg !1050, !llvm.loop !1051

; <label>:5:                                      ; preds = %2
  %6 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %3, align 8, !dbg !1052
  %7 = icmp ne %struct.IRC_SERVER_SETUP_REC* %6, null, !dbg !1056
  br i1 %7, label %8, label %9, !dbg !1052

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !1057

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.sig_server_setup_read, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0)), !dbg !1060
  br label %43, !dbg !1063

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !1064

; <label>:11:                                     ; preds = %10
  br label %12, !dbg !1066, !llvm.loop !1067

; <label>:12:                                     ; preds = %11
  %13 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1068
  %14 = icmp ne %struct._CONFIG_NODE* %13, null, !dbg !1072
  br i1 %14, label %15, label %16, !dbg !1068

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !1073

; <label>:16:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.sig_server_setup_read, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i32 0, i32 0)), !dbg !1076
  br label %43, !dbg !1079

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !1080

; <label>:18:                                     ; preds = %17
  %19 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %3, align 8, !dbg !1082
  %20 = bitcast %struct.IRC_SERVER_SETUP_REC* %19 to i8*, !dbg !1082
  %21 = call i8* @module_check_cast(i8* %20, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0)), !dbg !1084
  %22 = bitcast i8* %21 to %struct._SERVER_SETUP_REC*, !dbg !1085
  %23 = bitcast %struct._SERVER_SETUP_REC* %22 to i8*, !dbg !1086
  %24 = call i8* @chat_protocol_check_cast(i8* %23, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0)), !dbg !1087
  %25 = bitcast i8* %24 to %struct.IRC_SERVER_SETUP_REC*, !dbg !1089
  %26 = icmp ne %struct.IRC_SERVER_SETUP_REC* %25, null, !dbg !1089
  br i1 %26, label %27, label %28, !dbg !1090

; <label>:27:                                     ; preds = %18
  br i1 false, label %29, label %30, !dbg !1091

; <label>:28:                                     ; preds = %18
  br i1 false, label %30, label %29, !dbg !1093

; <label>:29:                                     ; preds = %28, %27
  br label %43, !dbg !1095

; <label>:30:                                     ; preds = %28, %27
  %31 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1096
  %32 = call i32 @config_node_get_int(%struct._CONFIG_NODE* %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i32 0, i32 0), i32 0), !dbg !1097
  %33 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %3, align 8, !dbg !1098
  %34 = getelementptr inbounds %struct.IRC_SERVER_SETUP_REC, %struct.IRC_SERVER_SETUP_REC* %33, i32 0, i32 23, !dbg !1099
  store i32 %32, i32* %34, align 8, !dbg !1100
  %35 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1101
  %36 = call i32 @config_node_get_int(%struct._CONFIG_NODE* %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i32 0, i32 0), i32 0), !dbg !1102
  %37 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %3, align 8, !dbg !1103
  %38 = getelementptr inbounds %struct.IRC_SERVER_SETUP_REC, %struct.IRC_SERVER_SETUP_REC* %37, i32 0, i32 24, !dbg !1104
  store i32 %36, i32* %38, align 4, !dbg !1105
  %39 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1106
  %40 = call i32 @config_node_get_int(%struct._CONFIG_NODE* %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i32 0, i32 0), i32 0), !dbg !1107
  %41 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %3, align 8, !dbg !1108
  %42 = getelementptr inbounds %struct.IRC_SERVER_SETUP_REC, %struct.IRC_SERVER_SETUP_REC* %41, i32 0, i32 25, !dbg !1109
  store i32 %40, i32* %42, align 8, !dbg !1110
  br label %43, !dbg !1111

; <label>:43:                                     ; preds = %30, %29, %16, %9
  ret void, !dbg !1112
}

; Function Attrs: nounwind uwtable
define internal void @sig_server_setup_saved(%struct.IRC_SERVER_SETUP_REC*, %struct._CONFIG_NODE*) #0 !dbg !1114 {
  %3 = alloca %struct.IRC_SERVER_SETUP_REC*, align 8
  %4 = alloca %struct._CONFIG_NODE*, align 8
  store %struct.IRC_SERVER_SETUP_REC* %0, %struct.IRC_SERVER_SETUP_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.IRC_SERVER_SETUP_REC** %3, metadata !1115, metadata !532), !dbg !1116
  store %struct._CONFIG_NODE* %1, %struct._CONFIG_NODE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %4, metadata !1117, metadata !532), !dbg !1118
  %5 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %3, align 8, !dbg !1119
  %6 = bitcast %struct.IRC_SERVER_SETUP_REC* %5 to i8*, !dbg !1119
  %7 = call i8* @module_check_cast(i8* %6, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0)), !dbg !1121
  %8 = bitcast i8* %7 to %struct._SERVER_SETUP_REC*, !dbg !1122
  %9 = bitcast %struct._SERVER_SETUP_REC* %8 to i8*, !dbg !1123
  %10 = call i8* @chat_protocol_check_cast(i8* %9, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0)), !dbg !1124
  %11 = bitcast i8* %10 to %struct.IRC_SERVER_SETUP_REC*, !dbg !1126
  %12 = icmp ne %struct.IRC_SERVER_SETUP_REC* %11, null, !dbg !1126
  br i1 %12, label %13, label %14, !dbg !1127

; <label>:13:                                     ; preds = %2
  br i1 false, label %15, label %16, !dbg !1128

; <label>:14:                                     ; preds = %2
  br i1 false, label %16, label %15, !dbg !1130

; <label>:15:                                     ; preds = %14, %13
  br label %49, !dbg !1132

; <label>:16:                                     ; preds = %14, %13
  %17 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %3, align 8, !dbg !1133
  %18 = getelementptr inbounds %struct.IRC_SERVER_SETUP_REC, %struct.IRC_SERVER_SETUP_REC* %17, i32 0, i32 23, !dbg !1135
  %19 = load i32, i32* %18, align 8, !dbg !1135
  %20 = icmp sgt i32 %19, 0, !dbg !1136
  br i1 %20, label %21, label %27, !dbg !1137

; <label>:21:                                     ; preds = %16
  %22 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1138
  %23 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1139
  %24 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %3, align 8, !dbg !1140
  %25 = getelementptr inbounds %struct.IRC_SERVER_SETUP_REC, %struct.IRC_SERVER_SETUP_REC* %24, i32 0, i32 23, !dbg !1141
  %26 = load i32, i32* %25, align 8, !dbg !1141
  call void @config_node_set_int(%struct._CONFIG_REC* %22, %struct._CONFIG_NODE* %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i32 0, i32 0), i32 %26), !dbg !1142
  br label %27, !dbg !1142

; <label>:27:                                     ; preds = %21, %16
  %28 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %3, align 8, !dbg !1143
  %29 = getelementptr inbounds %struct.IRC_SERVER_SETUP_REC, %struct.IRC_SERVER_SETUP_REC* %28, i32 0, i32 24, !dbg !1145
  %30 = load i32, i32* %29, align 4, !dbg !1145
  %31 = icmp sgt i32 %30, 0, !dbg !1146
  br i1 %31, label %32, label %38, !dbg !1147

; <label>:32:                                     ; preds = %27
  %33 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1148
  %34 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1149
  %35 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %3, align 8, !dbg !1150
  %36 = getelementptr inbounds %struct.IRC_SERVER_SETUP_REC, %struct.IRC_SERVER_SETUP_REC* %35, i32 0, i32 24, !dbg !1151
  %37 = load i32, i32* %36, align 4, !dbg !1151
  call void @config_node_set_int(%struct._CONFIG_REC* %33, %struct._CONFIG_NODE* %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i32 0, i32 0), i32 %37), !dbg !1152
  br label %38, !dbg !1152

; <label>:38:                                     ; preds = %32, %27
  %39 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %3, align 8, !dbg !1153
  %40 = getelementptr inbounds %struct.IRC_SERVER_SETUP_REC, %struct.IRC_SERVER_SETUP_REC* %39, i32 0, i32 25, !dbg !1155
  %41 = load i32, i32* %40, align 8, !dbg !1155
  %42 = icmp sgt i32 %41, 0, !dbg !1156
  br i1 %42, label %43, label %49, !dbg !1157

; <label>:43:                                     ; preds = %38
  %44 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1158
  %45 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1159
  %46 = load %struct.IRC_SERVER_SETUP_REC*, %struct.IRC_SERVER_SETUP_REC** %3, align 8, !dbg !1160
  %47 = getelementptr inbounds %struct.IRC_SERVER_SETUP_REC, %struct.IRC_SERVER_SETUP_REC* %46, i32 0, i32 25, !dbg !1161
  %48 = load i32, i32* %47, align 8, !dbg !1161
  call void @config_node_set_int(%struct._CONFIG_REC* %44, %struct._CONFIG_NODE* %45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i32 0, i32 0), i32 %48), !dbg !1162
  br label %49, !dbg !1162

; <label>:49:                                     ; preds = %15, %43, %38
  ret void, !dbg !1163
}

; Function Attrs: nounwind uwtable
define void @irc_servers_setup_deinit() #0 !dbg !1164 {
  call void @signal_remove_full(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_CONNECT_REC*, %struct.IRC_SERVER_SETUP_REC*)* @sig_server_setup_fill_reconn to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1165
  call void @signal_remove_full(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_CONNECT_REC*)* @sig_server_setup_fill_connect to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1166
  call void @signal_remove_full(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_CONNECT_REC*, %struct._IRC_CHATNET_REC*)* @sig_server_setup_fill_chatnet to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1167
  call void @signal_remove_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.IRC_SERVER_SETUP_REC*, %struct._CONFIG_NODE*)* @sig_server_setup_read to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1168
  call void @signal_remove_full(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct.IRC_SERVER_SETUP_REC*, %struct._CONFIG_NODE*)* @sig_server_setup_saved to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1169
  ret void, !dbg !1170
}

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare i8* @settings_get_str(i8*) #1

declare i8* @g_getenv(i8*) #1

declare void @settings_set_str(i8*, i8*) #1

declare i8* @g_get_real_name() #1

declare i8* @g_get_user_name() #1

declare i32 @signal_emit(i8*, i32, ...) #1

declare i8* @chat_protocol_check_cast(i8*, i32, i8*) #1

declare i8* @module_check_cast(i8*, i32, i8*) #1

declare noalias i8* @g_strdup(i8*) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare void @g_free(i8*) #1

declare i32 @g_ascii_strcasecmp(i8*, i8*) #1

declare void @g_log(i8*, i32, i8*, ...) #1

declare i32 @config_node_get_int(%struct._CONFIG_NODE*, i8*, i32) #1

declare void @config_node_set_int(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!515, !516}
!llvm.ident = !{!517}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !61)
!1 = !DIFile(filename: "line139-irc-servers-setup.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !10, !17, !22, !31, !42, !49}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 33, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../../src/core/settings.h", directory: "/home/lichi/Desktop/irssi/task1")
!5 = !{!6, !7, !8, !9}
!6 = !DIEnumerator(name: "USER_SETTINGS_REAL_NAME", value: 1)
!7 = !DIEnumerator(name: "USER_SETTINGS_USER_NAME", value: 2)
!8 = !DIEnumerator(name: "USER_SETTINGS_NICK", value: 4)
!9 = !DIEnumerator(name: "USER_SETTINGS_HOSTNAME", value: 8)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !11, line: 69, size: 32, align: 32, elements: !12)
!11 = !DIFile(filename: "/usr/include/glib-2.0/glib/giochannel.h", directory: "/home/lichi/Desktop/irssi/task1")
!12 = !{!13, !14, !15, !16}
!13 = !DIEnumerator(name: "G_IO_STATUS_ERROR", value: 0)
!14 = !DIEnumerator(name: "G_IO_STATUS_NORMAL", value: 1)
!15 = !DIEnumerator(name: "G_IO_STATUS_EOF", value: 2)
!16 = !DIEnumerator(name: "G_IO_STATUS_AGAIN", value: 3)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !11, line: 77, size: 32, align: 32, elements: !18)
!18 = !{!19, !20, !21}
!19 = !DIEnumerator(name: "G_SEEK_CUR", value: 0)
!20 = !DIEnumerator(name: "G_SEEK_SET", value: 1)
!21 = !DIEnumerator(name: "G_SEEK_END", value: 2)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !23, line: 31, size: 32, align: 32, elements: !24)
!23 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/irssi/task1")
!24 = !{!25, !26, !27, !28, !29, !30}
!25 = !DIEnumerator(name: "G_IO_IN", value: 1)
!26 = !DIEnumerator(name: "G_IO_OUT", value: 4)
!27 = !DIEnumerator(name: "G_IO_PRI", value: 2)
!28 = !DIEnumerator(name: "G_IO_ERR", value: 8)
!29 = !DIEnumerator(name: "G_IO_HUP", value: 16)
!30 = !DIEnumerator(name: "G_IO_NVAL", value: 32)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !11, line: 84, size: 32, align: 32, elements: !32)
!32 = !{!33, !34, !35, !36, !37, !38, !39, !40, !41}
!33 = !DIEnumerator(name: "G_IO_FLAG_APPEND", value: 1)
!34 = !DIEnumerator(name: "G_IO_FLAG_NONBLOCK", value: 2)
!35 = !DIEnumerator(name: "G_IO_FLAG_IS_READABLE", value: 4)
!36 = !DIEnumerator(name: "G_IO_FLAG_IS_WRITABLE", value: 8)
!37 = !DIEnumerator(name: "G_IO_FLAG_IS_WRITEABLE", value: 8)
!38 = !DIEnumerator(name: "G_IO_FLAG_IS_SEEKABLE", value: 16)
!39 = !DIEnumerator(name: "G_IO_FLAG_MASK", value: 31)
!40 = !DIEnumerator(name: "G_IO_FLAG_GET_MASK", value: 31)
!41 = !DIEnumerator(name: "G_IO_FLAG_SET_MASK", value: 3)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !43, line: 24, size: 32, align: 32, elements: !44)
!43 = !DIFile(filename: "sasl.h", directory: "/home/lichi/Desktop/irssi/task1")
!44 = !{!45, !46, !47, !48}
!45 = !DIEnumerator(name: "SASL_MECHANISM_NONE", value: 0)
!46 = !DIEnumerator(name: "SASL_MECHANISM_PLAIN", value: 1)
!47 = !DIEnumerator(name: "SASL_MECHANISM_EXTERNAL", value: 2)
!48 = !DIEnumerator(name: "SASL_MECHANISM_MAX", value: 3)
!49 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !50, line: 51, size: 32, align: 32, elements: !51)
!50 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/irssi/task1")
!51 = !{!52, !53, !54, !55, !56, !57, !58, !59, !60}
!52 = !DIEnumerator(name: "G_LOG_FLAG_RECURSION", value: 1)
!53 = !DIEnumerator(name: "G_LOG_FLAG_FATAL", value: 2)
!54 = !DIEnumerator(name: "G_LOG_LEVEL_ERROR", value: 4)
!55 = !DIEnumerator(name: "G_LOG_LEVEL_CRITICAL", value: 8)
!56 = !DIEnumerator(name: "G_LOG_LEVEL_WARNING", value: 16)
!57 = !DIEnumerator(name: "G_LOG_LEVEL_MESSAGE", value: 32)
!58 = !DIEnumerator(name: "G_LOG_LEVEL_INFO", value: 64)
!59 = !DIEnumerator(name: "G_LOG_LEVEL_DEBUG", value: 128)
!60 = !DIEnumerator(name: "G_LOG_LEVEL_MASK", value: -4)
!61 = !{!62, !69, !70, !72, !74, !347, !390, !436, !470, !498, !161, !513}
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !63, line: 9, baseType: !64)
!63 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !67, !67, !67, !67, !67, !67}
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !71, line: 77, baseType: !69)
!71 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "gulong", file: !71, line: 54, baseType: !73)
!73 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_CONNECT_REC", file: !76, line: 5, baseType: !77)
!76 = !DIFile(filename: "irc.h", directory: "/home/lichi/Desktop/irssi/task1")
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_CONNECT_REC", file: !78, line: 24, size: 2496, align: 64, elements: !79)
!78 = !DIFile(filename: "irc-servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!79 = !{!80, !83, !84, !85, !88, !89, !90, !91, !92, !94, !95, !96, !97, !98, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !77, file: !81, line: 3, baseType: !82, size: 32, align: 32)
!81 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!82 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !77, file: !81, line: 4, baseType: !82, size: 32, align: 32, offset: 32)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !77, file: !81, line: 6, baseType: !82, size: 32, align: 32, offset: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !77, file: !81, line: 9, baseType: !86, size: 64, align: 64, offset: 128)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!87 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !77, file: !81, line: 10, baseType: !82, size: 32, align: 32, offset: 192)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !77, file: !81, line: 11, baseType: !86, size: 64, align: 64, offset: 256)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !77, file: !81, line: 11, baseType: !86, size: 64, align: 64, offset: 320)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !77, file: !81, line: 11, baseType: !86, size: 64, align: 64, offset: 384)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !77, file: !81, line: 13, baseType: !93, size: 16, align: 16, offset: 448)
!93 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !77, file: !81, line: 14, baseType: !86, size: 64, align: 64, offset: 512)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !77, file: !81, line: 15, baseType: !86, size: 64, align: 64, offset: 576)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !77, file: !81, line: 16, baseType: !82, size: 32, align: 32, offset: 640)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !77, file: !81, line: 17, baseType: !86, size: 64, align: 64, offset: 704)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !77, file: !81, line: 19, baseType: !99, size: 64, align: 64, offset: 768)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64, align: 64)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !101, line: 99, baseType: !102)
!101 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !103, line: 22, size: 160, align: 32, elements: !104)
!103 = !DIFile(filename: "../../../src/core/network.h", directory: "/home/lichi/Desktop/irssi/task1")
!104 = !{!105, !106}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !102, file: !103, line: 23, baseType: !93, size: 16, align: 16)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !102, file: !103, line: 24, baseType: !107, size: 128, align: 32, offset: 32)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !108, line: 211, size: 128, align: 32, elements: !109)
!108 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "/home/lichi/Desktop/irssi/task1")
!109 = !{!110}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !107, file: !108, line: 220, baseType: !111, size: 128, align: 32)
!111 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !107, file: !108, line: 213, size: 128, align: 32, elements: !112)
!112 = !{!113, !120, !125}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !111, file: !108, line: 215, baseType: !114, size: 128, align: 8)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 128, align: 8, elements: !118)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !116, line: 48, baseType: !117)
!116 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/irssi/task1")
!117 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!118 = !{!119}
!119 = !DISubrange(count: 16)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !111, file: !108, line: 217, baseType: !121, size: 128, align: 16)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 128, align: 16, elements: !123)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !116, line: 49, baseType: !93)
!123 = !{!124}
!124 = !DISubrange(count: 8)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !111, file: !108, line: 218, baseType: !126, size: 128, align: 32)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 128, align: 32, elements: !129)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !116, line: 51, baseType: !128)
!128 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!129 = !{!130}
!130 = !DISubrange(count: 4)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !77, file: !81, line: 19, baseType: !99, size: 64, align: 64, offset: 832)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !77, file: !81, line: 21, baseType: !86, size: 64, align: 64, offset: 896)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !77, file: !81, line: 22, baseType: !86, size: 64, align: 64, offset: 960)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !77, file: !81, line: 23, baseType: !86, size: 64, align: 64, offset: 1024)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !77, file: !81, line: 24, baseType: !86, size: 64, align: 64, offset: 1088)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !77, file: !81, line: 26, baseType: !86, size: 64, align: 64, offset: 1152)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !77, file: !81, line: 27, baseType: !86, size: 64, align: 64, offset: 1216)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !77, file: !81, line: 28, baseType: !86, size: 64, align: 64, offset: 1280)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !77, file: !81, line: 29, baseType: !86, size: 64, align: 64, offset: 1344)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !77, file: !81, line: 30, baseType: !86, size: 64, align: 64, offset: 1408)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !77, file: !81, line: 31, baseType: !86, size: 64, align: 64, offset: 1472)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !77, file: !81, line: 32, baseType: !86, size: 64, align: 64, offset: 1536)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !77, file: !81, line: 33, baseType: !86, size: 64, align: 64, offset: 1600)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !77, file: !81, line: 35, baseType: !145, size: 64, align: 64, offset: 1664)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64, align: 64)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !11, line: 41, baseType: !147)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !11, line: 97, size: 896, align: 64, elements: !148)
!148 = !{!149, !151, !292, !293, !298, !299, !300, !301, !302, !311, !312, !313, !317, !318, !319, !320, !321, !322, !323, !324}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !147, file: !11, line: 100, baseType: !150, size: 32, align: 32)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !71, line: 49, baseType: !82)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !147, file: !11, line: 101, baseType: !152, size: 64, align: 64, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64, align: 64)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !11, line: 42, baseType: !154)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !11, line: 131, size: 512, align: 64, elements: !155)
!155 = !{!156, !178, !184, !191, !195, !279, !283, !288}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !154, file: !11, line: 133, baseType: !157, size: 64, align: 64)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64, align: 64)
!158 = !DISubroutineType(types: !159)
!159 = !{!160, !145, !161, !163, !165, !166}
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !11, line: 75, baseType: !10)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64, align: 64)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !71, line: 46, baseType: !87)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !164, line: 66, baseType: !73)
!164 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64, align: 64)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64, align: 64)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64, align: 64)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !169, line: 42, baseType: !170)
!169 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !169, line: 44, size: 128, align: 64, elements: !171)
!171 = !{!172, !176, !177}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !170, file: !169, line: 46, baseType: !173, size: 32, align: 32)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !174, line: 36, baseType: !175)
!174 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !164, line: 45, baseType: !128)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !170, file: !169, line: 47, baseType: !150, size: 32, align: 32, offset: 32)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !170, file: !169, line: 48, baseType: !161, size: 64, align: 64, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !154, file: !11, line: 138, baseType: !179, size: 64, align: 64, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64, align: 64)
!180 = !DISubroutineType(types: !181)
!181 = !{!160, !145, !182, !163, !165, !166}
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64, align: 64)
!183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !162)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !154, file: !11, line: 143, baseType: !185, size: 64, align: 64, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64, align: 64)
!186 = !DISubroutineType(types: !187)
!187 = !{!160, !145, !188, !190, !166}
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !164, line: 51, baseType: !189)
!189 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !11, line: 82, baseType: !17)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !154, file: !11, line: 147, baseType: !192, size: 64, align: 64, offset: 192)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64, align: 64)
!193 = !DISubroutineType(types: !194)
!194 = !{!160, !145, !166}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !154, file: !11, line: 149, baseType: !196, size: 64, align: 64, offset: 256)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64, align: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!199, !145, !278}
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64, align: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !23, line: 64, baseType: !201)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !23, line: 171, size: 768, align: 64, elements: !202)
!202 = !{!203, !204, !225, !254, !256, !260, !261, !262, !263, !271, !272, !273, !274}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !201, file: !23, line: 174, baseType: !70, size: 64, align: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !201, file: !23, line: 175, baseType: !205, size: 64, align: 64, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64, align: 64)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !23, line: 77, baseType: !207)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !23, line: 196, size: 192, align: 64, elements: !208)
!208 = !{!209, !213, !214}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !207, file: !23, line: 198, baseType: !210, size: 64, align: 64)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{null, !70}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !207, file: !23, line: 199, baseType: !210, size: 64, align: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !207, file: !23, line: 200, baseType: !215, size: 64, align: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, align: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{null, !70, !199, !218, !224}
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64, align: 64)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !23, line: 155, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64, align: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{!223, !70}
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !71, line: 50, baseType: !150)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !201, file: !23, line: 177, baseType: !226, size: 64, align: 64, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64, align: 64)
!227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !23, line: 130, baseType: !229)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !23, line: 214, size: 384, align: 64, elements: !230)
!230 = !{!231, !236, !240, !244, !248, !249}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !229, file: !23, line: 216, baseType: !232, size: 64, align: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!223, !199, !235}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !229, file: !23, line: 218, baseType: !237, size: 64, align: 64, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64, align: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{!223, !199}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !229, file: !23, line: 219, baseType: !241, size: 64, align: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64, align: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{!223, !199, !219, !70}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !229, file: !23, line: 222, baseType: !245, size: 64, align: 64, offset: 192)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64, align: 64)
!246 = !DISubroutineType(types: !247)
!247 = !{null, !199}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !229, file: !23, line: 226, baseType: !219, size: 64, align: 64, offset: 256)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !229, file: !23, line: 227, baseType: !250, size: 64, align: 64, offset: 320)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !23, line: 212, baseType: !251)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64, align: 64)
!252 = !DISubroutineType(types: !253)
!253 = !{null}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !201, file: !23, line: 178, baseType: !255, size: 32, align: 32, offset: 192)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !71, line: 55, baseType: !128)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !201, file: !23, line: 180, baseType: !257, size: 64, align: 64, offset: 256)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64, align: 64)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !23, line: 48, baseType: !259)
!259 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !23, line: 48, flags: DIFlagFwdDecl)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !201, file: !23, line: 182, baseType: !150, size: 32, align: 32, offset: 320)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !201, file: !23, line: 183, baseType: !255, size: 32, align: 32, offset: 352)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !201, file: !23, line: 184, baseType: !255, size: 32, align: 32, offset: 384)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !201, file: !23, line: 186, baseType: !264, size: 64, align: 64, offset: 448)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64, align: 64)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !266, line: 37, baseType: !267)
!266 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !266, line: 39, size: 128, align: 64, elements: !268)
!268 = !{!269, !270}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !267, file: !266, line: 41, baseType: !70, size: 64, align: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !267, file: !266, line: 42, baseType: !264, size: 64, align: 64, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !201, file: !23, line: 188, baseType: !199, size: 64, align: 64, offset: 512)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !201, file: !23, line: 189, baseType: !199, size: 64, align: 64, offset: 576)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !201, file: !23, line: 191, baseType: !86, size: 64, align: 64, offset: 640)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !201, file: !23, line: 193, baseType: !275, size: 64, align: 64, offset: 704)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64, align: 64)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !23, line: 65, baseType: !277)
!277 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !23, line: 65, flags: DIFlagFwdDecl)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !23, line: 39, baseType: !22)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !154, file: !11, line: 151, baseType: !280, size: 64, align: 64, offset: 320)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64, align: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{null, !145}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !154, file: !11, line: 152, baseType: !284, size: 64, align: 64, offset: 384)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64, align: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{!160, !145, !287, !166}
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !11, line: 95, baseType: !31)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !154, file: !11, line: 155, baseType: !289, size: 64, align: 64, offset: 448)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64, align: 64)
!290 = !DISubroutineType(types: !291)
!291 = !{!287, !145}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !147, file: !11, line: 103, baseType: !161, size: 64, align: 64, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !147, file: !11, line: 104, baseType: !294, size: 64, align: 64, offset: 192)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !295, line: 77, baseType: !296)
!295 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64, align: 64)
!297 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !295, line: 77, flags: DIFlagFwdDecl)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !147, file: !11, line: 105, baseType: !294, size: 64, align: 64, offset: 256)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !147, file: !11, line: 106, baseType: !161, size: 64, align: 64, offset: 320)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !147, file: !11, line: 107, baseType: !255, size: 32, align: 32, offset: 384)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !147, file: !11, line: 109, baseType: !163, size: 64, align: 64, offset: 448)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !147, file: !11, line: 110, baseType: !303, size: 64, align: 64, offset: 512)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64, align: 64)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !305, line: 39, baseType: !306)
!305 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !305, line: 41, size: 192, align: 64, elements: !307)
!307 = !{!308, !309, !310}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !306, file: !305, line: 43, baseType: !161, size: 64, align: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !306, file: !305, line: 44, baseType: !163, size: 64, align: 64, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !306, file: !305, line: 45, baseType: !163, size: 64, align: 64, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !147, file: !11, line: 111, baseType: !303, size: 64, align: 64, offset: 576)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !147, file: !11, line: 112, baseType: !303, size: 64, align: 64, offset: 640)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !147, file: !11, line: 113, baseType: !314, size: 48, align: 8, offset: 704)
!314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 48, align: 8, elements: !315)
!315 = !{!316}
!316 = !DISubrange(count: 6)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !147, file: !11, line: 117, baseType: !255, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !147, file: !11, line: 118, baseType: !255, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !147, file: !11, line: 119, baseType: !255, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !147, file: !11, line: 120, baseType: !255, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !147, file: !11, line: 121, baseType: !255, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !147, file: !11, line: 122, baseType: !255, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !147, file: !11, line: 124, baseType: !70, size: 64, align: 64, offset: 768)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !147, file: !11, line: 125, baseType: !70, size: 64, align: 64, offset: 832)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !77, file: !81, line: 38, baseType: !128, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !77, file: !81, line: 39, baseType: !128, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !77, file: !81, line: 40, baseType: !128, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !77, file: !81, line: 41, baseType: !128, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !77, file: !81, line: 42, baseType: !128, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !77, file: !81, line: 43, baseType: !128, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !77, file: !81, line: 44, baseType: !128, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !77, file: !81, line: 45, baseType: !128, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !77, file: !81, line: 46, baseType: !86, size: 64, align: 64, offset: 1792)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !77, file: !81, line: 47, baseType: !86, size: 64, align: 64, offset: 1856)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !77, file: !78, line: 27, baseType: !86, size: 64, align: 64, offset: 1920)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_nick", scope: !77, file: !78, line: 28, baseType: !86, size: 64, align: 64, offset: 1984)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !77, file: !78, line: 30, baseType: !82, size: 32, align: 32, offset: 2048)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_username", scope: !77, file: !78, line: 31, baseType: !86, size: 64, align: 64, offset: 2112)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !77, file: !78, line: 32, baseType: !86, size: 64, align: 64, offset: 2176)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !77, file: !78, line: 34, baseType: !82, size: 32, align: 32, offset: 2240)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !77, file: !78, line: 35, baseType: !82, size: 32, align: 32, offset: 2272)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !77, file: !78, line: 36, baseType: !82, size: 32, align: 32, offset: 2304)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks", scope: !77, file: !78, line: 38, baseType: !82, size: 32, align: 32, offset: 2336)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !77, file: !78, line: 38, baseType: !82, size: 32, align: 32, offset: 2368)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes", scope: !77, file: !78, line: 38, baseType: !82, size: 32, align: 32, offset: 2400)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois", scope: !77, file: !78, line: 38, baseType: !82, size: 32, align: 32, offset: 2432)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64, align: 64)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !101, line: 113, baseType: !349)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !350, line: 25, size: 1920, align: 64, elements: !351)
!350 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!351 = !{!352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !349, file: !81, line: 3, baseType: !82, size: 32, align: 32)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !349, file: !81, line: 4, baseType: !82, size: 32, align: 32, offset: 32)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !349, file: !81, line: 6, baseType: !82, size: 32, align: 32, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !349, file: !81, line: 9, baseType: !86, size: 64, align: 64, offset: 128)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !349, file: !81, line: 10, baseType: !82, size: 32, align: 32, offset: 192)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !349, file: !81, line: 11, baseType: !86, size: 64, align: 64, offset: 256)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !349, file: !81, line: 11, baseType: !86, size: 64, align: 64, offset: 320)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !349, file: !81, line: 11, baseType: !86, size: 64, align: 64, offset: 384)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !349, file: !81, line: 13, baseType: !93, size: 16, align: 16, offset: 448)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !349, file: !81, line: 14, baseType: !86, size: 64, align: 64, offset: 512)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !349, file: !81, line: 15, baseType: !86, size: 64, align: 64, offset: 576)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !349, file: !81, line: 16, baseType: !82, size: 32, align: 32, offset: 640)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !349, file: !81, line: 17, baseType: !86, size: 64, align: 64, offset: 704)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !349, file: !81, line: 19, baseType: !99, size: 64, align: 64, offset: 768)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !349, file: !81, line: 19, baseType: !99, size: 64, align: 64, offset: 832)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !349, file: !81, line: 21, baseType: !86, size: 64, align: 64, offset: 896)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !349, file: !81, line: 22, baseType: !86, size: 64, align: 64, offset: 960)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !349, file: !81, line: 23, baseType: !86, size: 64, align: 64, offset: 1024)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !349, file: !81, line: 24, baseType: !86, size: 64, align: 64, offset: 1088)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !349, file: !81, line: 26, baseType: !86, size: 64, align: 64, offset: 1152)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !349, file: !81, line: 27, baseType: !86, size: 64, align: 64, offset: 1216)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !349, file: !81, line: 28, baseType: !86, size: 64, align: 64, offset: 1280)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !349, file: !81, line: 29, baseType: !86, size: 64, align: 64, offset: 1344)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !349, file: !81, line: 30, baseType: !86, size: 64, align: 64, offset: 1408)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !349, file: !81, line: 31, baseType: !86, size: 64, align: 64, offset: 1472)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !349, file: !81, line: 32, baseType: !86, size: 64, align: 64, offset: 1536)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !349, file: !81, line: 33, baseType: !86, size: 64, align: 64, offset: 1600)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !349, file: !81, line: 35, baseType: !145, size: 64, align: 64, offset: 1664)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !349, file: !81, line: 38, baseType: !128, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !349, file: !81, line: 39, baseType: !128, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !349, file: !81, line: 40, baseType: !128, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !349, file: !81, line: 41, baseType: !128, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !349, file: !81, line: 42, baseType: !128, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !349, file: !81, line: 43, baseType: !128, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !349, file: !81, line: 44, baseType: !128, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !349, file: !81, line: 45, baseType: !128, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !349, file: !81, line: 46, baseType: !86, size: 64, align: 64, offset: 1792)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !349, file: !81, line: 47, baseType: !86, size: 64, align: 64, offset: 1856)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64, align: 64)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_SETUP_REC", file: !392, line: 21, baseType: !393)
!392 = !DIFile(filename: "irc-servers-setup.h", directory: "/home/lichi/Desktop/irssi/task1")
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !392, line: 14, size: 1536, align: 64, elements: !394)
!394 = !{!395, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !421, !422, !423, !424, !425, !426, !427, !428, !433, !434, !435}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !393, file: !396, line: 1, baseType: !82, size: 32, align: 32)
!396 = !DIFile(filename: "../../../src/core/server-setup-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!397 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !393, file: !396, line: 2, baseType: !82, size: 32, align: 32, offset: 32)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !393, file: !396, line: 4, baseType: !86, size: 64, align: 64, offset: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !393, file: !396, line: 6, baseType: !93, size: 16, align: 16, offset: 128)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !393, file: !396, line: 7, baseType: !86, size: 64, align: 64, offset: 192)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !393, file: !396, line: 8, baseType: !82, size: 32, align: 32, offset: 256)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !393, file: !396, line: 9, baseType: !86, size: 64, align: 64, offset: 320)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !393, file: !396, line: 11, baseType: !82, size: 32, align: 32, offset: 384)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !393, file: !396, line: 12, baseType: !86, size: 64, align: 64, offset: 448)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !393, file: !396, line: 14, baseType: !86, size: 64, align: 64, offset: 512)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !393, file: !396, line: 15, baseType: !86, size: 64, align: 64, offset: 576)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !393, file: !396, line: 16, baseType: !86, size: 64, align: 64, offset: 640)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !393, file: !396, line: 17, baseType: !86, size: 64, align: 64, offset: 704)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !393, file: !396, line: 18, baseType: !86, size: 64, align: 64, offset: 768)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !393, file: !396, line: 19, baseType: !86, size: 64, align: 64, offset: 832)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !393, file: !396, line: 20, baseType: !86, size: 64, align: 64, offset: 896)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !393, file: !396, line: 21, baseType: !86, size: 64, align: 64, offset: 960)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "own_host", scope: !393, file: !396, line: 23, baseType: !86, size: 64, align: 64, offset: 1024)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !393, file: !396, line: 24, baseType: !99, size: 64, align: 64, offset: 1088)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !393, file: !396, line: 24, baseType: !99, size: 64, align: 64, offset: 1152)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "last_connect", scope: !393, file: !396, line: 26, baseType: !417, size: 64, align: 64, offset: 1216)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !418, line: 75, baseType: !419)
!418 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !420, line: 139, baseType: !189)
!420 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!421 = !DIDerivedType(tag: DW_TAG_member, name: "autoconnect", scope: !393, file: !396, line: 28, baseType: !128, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "no_proxy", scope: !393, file: !396, line: 29, baseType: !128, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "last_failed", scope: !393, file: !396, line: 30, baseType: !128, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !393, file: !396, line: 31, baseType: !128, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !393, file: !396, line: 32, baseType: !128, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !393, file: !396, line: 33, baseType: !128, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !393, file: !396, line: 34, baseType: !128, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !393, file: !396, line: 36, baseType: !429, size: 64, align: 64, offset: 1344)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64, align: 64)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !431, line: 37, baseType: !432)
!431 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!432 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !431, line: 37, flags: DIFlagFwdDecl)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !393, file: !392, line: 18, baseType: !82, size: 32, align: 32, offset: 1408)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !393, file: !392, line: 19, baseType: !82, size: 32, align: 32, offset: 1440)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !393, file: !392, line: 20, baseType: !82, size: 32, align: 32, offset: 1472)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64, align: 64)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_SETUP_REC", file: !101, line: 114, baseType: !438)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_SETUP_REC", file: !439, line: 13, size: 1408, align: 64, elements: !440)
!439 = !DIFile(filename: "../../../src/core/servers-setup.h", directory: "/home/lichi/Desktop/irssi/task1")
!440 = !{!441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !438, file: !396, line: 1, baseType: !82, size: 32, align: 32)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !438, file: !396, line: 2, baseType: !82, size: 32, align: 32, offset: 32)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !438, file: !396, line: 4, baseType: !86, size: 64, align: 64, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !438, file: !396, line: 6, baseType: !93, size: 16, align: 16, offset: 128)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !438, file: !396, line: 7, baseType: !86, size: 64, align: 64, offset: 192)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !438, file: !396, line: 8, baseType: !82, size: 32, align: 32, offset: 256)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !438, file: !396, line: 9, baseType: !86, size: 64, align: 64, offset: 320)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !438, file: !396, line: 11, baseType: !82, size: 32, align: 32, offset: 384)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !438, file: !396, line: 12, baseType: !86, size: 64, align: 64, offset: 448)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !438, file: !396, line: 14, baseType: !86, size: 64, align: 64, offset: 512)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !438, file: !396, line: 15, baseType: !86, size: 64, align: 64, offset: 576)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !438, file: !396, line: 16, baseType: !86, size: 64, align: 64, offset: 640)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !438, file: !396, line: 17, baseType: !86, size: 64, align: 64, offset: 704)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !438, file: !396, line: 18, baseType: !86, size: 64, align: 64, offset: 768)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !438, file: !396, line: 19, baseType: !86, size: 64, align: 64, offset: 832)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !438, file: !396, line: 20, baseType: !86, size: 64, align: 64, offset: 896)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !438, file: !396, line: 21, baseType: !86, size: 64, align: 64, offset: 960)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "own_host", scope: !438, file: !396, line: 23, baseType: !86, size: 64, align: 64, offset: 1024)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !438, file: !396, line: 24, baseType: !99, size: 64, align: 64, offset: 1088)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !438, file: !396, line: 24, baseType: !99, size: 64, align: 64, offset: 1152)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "last_connect", scope: !438, file: !396, line: 26, baseType: !417, size: 64, align: 64, offset: 1216)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "autoconnect", scope: !438, file: !396, line: 28, baseType: !128, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "no_proxy", scope: !438, file: !396, line: 29, baseType: !128, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "last_failed", scope: !438, file: !396, line: 30, baseType: !128, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !438, file: !396, line: 31, baseType: !128, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !438, file: !396, line: 32, baseType: !128, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !438, file: !396, line: 33, baseType: !128, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !438, file: !396, line: 34, baseType: !128, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !438, file: !396, line: 36, baseType: !429, size: 64, align: 64, offset: 1344)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64, align: 64)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_CHATNET_REC", file: !76, line: 4, baseType: !472)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_CHATNET_REC", file: !473, line: 17, size: 1152, align: 64, elements: !474)
!473 = !DIFile(filename: "irc-chatnets.h", directory: "/home/lichi/Desktop/irssi/task1")
!474 = !{!475, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !472, file: !476, line: 1, baseType: !82, size: 32, align: 32)
!476 = !DIFile(filename: "../../../src/core/chatnet-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!477 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !472, file: !476, line: 2, baseType: !82, size: 32, align: 32, offset: 32)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !472, file: !476, line: 4, baseType: !86, size: 64, align: 64, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !472, file: !476, line: 6, baseType: !86, size: 64, align: 64, offset: 128)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !472, file: !476, line: 7, baseType: !86, size: 64, align: 64, offset: 192)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !472, file: !476, line: 8, baseType: !86, size: 64, align: 64, offset: 256)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "own_host", scope: !472, file: !476, line: 10, baseType: !86, size: 64, align: 64, offset: 320)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "autosendcmd", scope: !472, file: !476, line: 11, baseType: !86, size: 64, align: 64, offset: 384)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !472, file: !476, line: 12, baseType: !99, size: 64, align: 64, offset: 448)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !472, file: !476, line: 12, baseType: !99, size: 64, align: 64, offset: 512)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !472, file: !473, line: 20, baseType: !86, size: 64, align: 64, offset: 576)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_nick", scope: !472, file: !473, line: 21, baseType: !86, size: 64, align: 64, offset: 640)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !472, file: !473, line: 23, baseType: !86, size: 64, align: 64, offset: 704)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_username", scope: !472, file: !473, line: 24, baseType: !86, size: 64, align: 64, offset: 768)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !472, file: !473, line: 25, baseType: !86, size: 64, align: 64, offset: 832)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !472, file: !473, line: 27, baseType: !82, size: 32, align: 32, offset: 896)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !472, file: !473, line: 28, baseType: !82, size: 32, align: 32, offset: 928)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !472, file: !473, line: 29, baseType: !82, size: 32, align: 32, offset: 960)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks", scope: !472, file: !473, line: 32, baseType: !82, size: 32, align: 32, offset: 992)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !472, file: !473, line: 32, baseType: !82, size: 32, align: 32, offset: 1024)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes", scope: !472, file: !473, line: 32, baseType: !82, size: 32, align: 32, offset: 1056)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois", scope: !472, file: !473, line: 32, baseType: !82, size: 32, align: 32, offset: 1088)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64, align: 64)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHATNET_REC", file: !101, line: 106, baseType: !500)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHATNET_REC", file: !501, line: 13, size: 576, align: 64, elements: !502)
!501 = !DIFile(filename: "../../../src/core/chatnets.h", directory: "/home/lichi/Desktop/irssi/task1")
!502 = !{!503, !504, !505, !506, !507, !508, !509, !510, !511, !512}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !500, file: !476, line: 1, baseType: !82, size: 32, align: 32)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !500, file: !476, line: 2, baseType: !82, size: 32, align: 32, offset: 32)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !500, file: !476, line: 4, baseType: !86, size: 64, align: 64, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !500, file: !476, line: 6, baseType: !86, size: 64, align: 64, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !500, file: !476, line: 7, baseType: !86, size: 64, align: 64, offset: 192)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !500, file: !476, line: 8, baseType: !86, size: 64, align: 64, offset: 256)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "own_host", scope: !500, file: !476, line: 10, baseType: !86, size: 64, align: 64, offset: 320)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "autosendcmd", scope: !500, file: !476, line: 11, baseType: !86, size: 64, align: 64, offset: 384)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !500, file: !476, line: 12, baseType: !99, size: 64, align: 64, offset: 448)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !500, file: !476, line: 12, baseType: !99, size: 64, align: 64, offset: 512)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64, align: 64)
!514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!515 = !{i32 2, !"Dwarf Version", i32 4}
!516 = !{i32 2, !"Debug Info Version", i32 3}
!517 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!518 = distinct !DISubprogram(name: "irc_servers_setup_init", scope: !519, file: !519, line: 193, type: !252, isLocal: false, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !520)
!519 = !DIFile(filename: "irc-servers-setup.c", directory: "/home/lichi/Desktop/irssi/task1")
!520 = !{}
!521 = !DILocation(line: 195, column: 2, scope: !518)
!522 = !DILocation(line: 196, column: 2, scope: !518)
!523 = !DILocation(line: 198, column: 2, scope: !518)
!524 = !DILocation(line: 199, column: 2, scope: !518)
!525 = !DILocation(line: 200, column: 2, scope: !518)
!526 = !DILocation(line: 201, column: 2, scope: !518)
!527 = !DILocation(line: 202, column: 2, scope: !518)
!528 = !DILocation(line: 203, column: 2, scope: !518)
!529 = !DILocation(line: 204, column: 1, scope: !518)
!530 = distinct !DISubprogram(name: "init_userinfo", scope: !519, file: !519, line: 117, type: !252, isLocal: true, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !520)
!531 = !DILocalVariable(name: "changed", scope: !530, file: !519, line: 119, type: !128)
!532 = !DIExpression()
!533 = !DILocation(line: 119, column: 15, scope: !530)
!534 = !DILocalVariable(name: "set", scope: !530, file: !519, line: 120, type: !513)
!535 = !DILocation(line: 120, column: 14, scope: !530)
!536 = !DILocalVariable(name: "nick", scope: !530, file: !519, line: 120, type: !513)
!537 = !DILocation(line: 120, column: 20, scope: !530)
!538 = !DILocalVariable(name: "user_name", scope: !530, file: !519, line: 120, type: !513)
!539 = !DILocation(line: 120, column: 27, scope: !530)
!540 = !DILocalVariable(name: "str", scope: !530, file: !519, line: 120, type: !513)
!541 = !DILocation(line: 120, column: 39, scope: !530)
!542 = !DILocation(line: 122, column: 10, scope: !530)
!543 = !DILocation(line: 124, column: 15, scope: !530)
!544 = !DILocation(line: 124, column: 13, scope: !530)
!545 = !DILocation(line: 125, column: 6, scope: !546)
!546 = distinct !DILexicalBlock(scope: !530, file: !519, line: 125, column: 6)
!547 = !DILocation(line: 125, column: 10, scope: !546)
!548 = !DILocation(line: 125, column: 17, scope: !546)
!549 = !DILocation(line: 125, column: 21, scope: !550)
!550 = !DILexicalBlockFile(scope: !546, file: !519, discriminator: 1)
!551 = !DILocation(line: 125, column: 20, scope: !550)
!552 = !DILocation(line: 125, column: 25, scope: !550)
!553 = !DILocation(line: 125, column: 6, scope: !550)
!554 = !DILocation(line: 126, column: 9, scope: !555)
!555 = distinct !DILexicalBlock(scope: !546, file: !519, line: 125, column: 34)
!556 = !DILocation(line: 126, column: 7, scope: !555)
!557 = !DILocation(line: 128, column: 6, scope: !555)
!558 = !DILocation(line: 128, column: 10, scope: !555)
!559 = !DILocation(line: 128, column: 19, scope: !560)
!560 = !DILexicalBlockFile(scope: !555, file: !519, discriminator: 1)
!561 = !DILocation(line: 128, column: 6, scope: !560)
!562 = !DILocation(line: 128, column: 25, scope: !563)
!563 = !DILexicalBlockFile(scope: !555, file: !519, discriminator: 2)
!564 = !DILocation(line: 128, column: 6, scope: !563)
!565 = !DILocation(line: 128, column: 6, scope: !566)
!566 = !DILexicalBlockFile(scope: !555, file: !519, discriminator: 3)
!567 = !DILocation(line: 127, column: 3, scope: !555)
!568 = !DILocation(line: 129, column: 11, scope: !555)
!569 = !DILocation(line: 130, column: 2, scope: !555)
!570 = !DILocation(line: 133, column: 21, scope: !530)
!571 = !DILocation(line: 133, column: 19, scope: !530)
!572 = !DILocation(line: 134, column: 6, scope: !573)
!573 = distinct !DILexicalBlock(scope: !530, file: !519, line: 134, column: 6)
!574 = !DILocation(line: 134, column: 16, scope: !573)
!575 = !DILocation(line: 134, column: 23, scope: !573)
!576 = !DILocation(line: 134, column: 27, scope: !577)
!577 = !DILexicalBlockFile(scope: !573, file: !519, discriminator: 1)
!578 = !DILocation(line: 134, column: 26, scope: !577)
!579 = !DILocation(line: 134, column: 37, scope: !577)
!580 = !DILocation(line: 134, column: 6, scope: !577)
!581 = !DILocation(line: 135, column: 9, scope: !582)
!582 = distinct !DILexicalBlock(scope: !573, file: !519, line: 134, column: 46)
!583 = !DILocation(line: 135, column: 7, scope: !582)
!584 = !DILocation(line: 137, column: 6, scope: !582)
!585 = !DILocation(line: 137, column: 10, scope: !582)
!586 = !DILocation(line: 137, column: 19, scope: !587)
!587 = !DILexicalBlockFile(scope: !582, file: !519, discriminator: 1)
!588 = !DILocation(line: 137, column: 6, scope: !587)
!589 = !DILocation(line: 137, column: 25, scope: !590)
!590 = !DILexicalBlockFile(scope: !582, file: !519, discriminator: 2)
!591 = !DILocation(line: 137, column: 6, scope: !590)
!592 = !DILocation(line: 137, column: 6, scope: !593)
!593 = !DILexicalBlockFile(scope: !582, file: !519, discriminator: 3)
!594 = !DILocation(line: 136, column: 3, scope: !582)
!595 = !DILocation(line: 139, column: 15, scope: !582)
!596 = !DILocation(line: 139, column: 13, scope: !582)
!597 = !DILocation(line: 140, column: 11, scope: !582)
!598 = !DILocation(line: 141, column: 2, scope: !582)
!599 = !DILocation(line: 144, column: 16, scope: !530)
!600 = !DILocation(line: 144, column: 14, scope: !530)
!601 = !DILocation(line: 145, column: 6, scope: !602)
!602 = distinct !DILexicalBlock(scope: !530, file: !519, line: 145, column: 6)
!603 = !DILocation(line: 145, column: 11, scope: !602)
!604 = !DILocation(line: 145, column: 18, scope: !602)
!605 = !DILocation(line: 145, column: 22, scope: !606)
!606 = !DILexicalBlockFile(scope: !602, file: !519, discriminator: 1)
!607 = !DILocation(line: 145, column: 21, scope: !606)
!608 = !DILocation(line: 145, column: 27, scope: !606)
!609 = !DILocation(line: 145, column: 6, scope: !606)
!610 = !DILocation(line: 146, column: 9, scope: !611)
!611 = distinct !DILexicalBlock(scope: !602, file: !519, line: 145, column: 36)
!612 = !DILocation(line: 146, column: 7, scope: !611)
!613 = !DILocation(line: 147, column: 28, scope: !611)
!614 = !DILocation(line: 147, column: 32, scope: !611)
!615 = !DILocation(line: 147, column: 41, scope: !616)
!616 = !DILexicalBlockFile(scope: !611, file: !519, discriminator: 1)
!617 = !DILocation(line: 147, column: 28, scope: !616)
!618 = !DILocation(line: 147, column: 47, scope: !619)
!619 = !DILexicalBlockFile(scope: !611, file: !519, discriminator: 2)
!620 = !DILocation(line: 147, column: 28, scope: !619)
!621 = !DILocation(line: 147, column: 28, scope: !622)
!622 = !DILexicalBlockFile(scope: !611, file: !519, discriminator: 3)
!623 = !DILocation(line: 147, column: 3, scope: !622)
!624 = !DILocation(line: 149, column: 10, scope: !611)
!625 = !DILocation(line: 149, column: 8, scope: !611)
!626 = !DILocation(line: 150, column: 11, scope: !611)
!627 = !DILocation(line: 151, column: 2, scope: !611)
!628 = !DILocation(line: 154, column: 15, scope: !530)
!629 = !DILocation(line: 154, column: 13, scope: !530)
!630 = !DILocation(line: 155, column: 6, scope: !631)
!631 = distinct !DILexicalBlock(scope: !530, file: !519, line: 155, column: 6)
!632 = !DILocation(line: 155, column: 10, scope: !631)
!633 = !DILocation(line: 155, column: 17, scope: !631)
!634 = !DILocation(line: 155, column: 21, scope: !635)
!635 = !DILexicalBlockFile(scope: !631, file: !519, discriminator: 1)
!636 = !DILocation(line: 155, column: 20, scope: !635)
!637 = !DILocation(line: 155, column: 25, scope: !635)
!638 = !DILocation(line: 155, column: 6, scope: !635)
!639 = !DILocation(line: 156, column: 9, scope: !640)
!640 = distinct !DILexicalBlock(scope: !631, file: !519, line: 155, column: 34)
!641 = !DILocation(line: 156, column: 7, scope: !640)
!642 = !DILocation(line: 157, column: 7, scope: !643)
!643 = distinct !DILexicalBlock(scope: !640, file: !519, line: 157, column: 7)
!644 = !DILocation(line: 157, column: 11, scope: !643)
!645 = !DILocation(line: 157, column: 7, scope: !640)
!646 = !DILocation(line: 158, column: 33, scope: !647)
!647 = distinct !DILexicalBlock(scope: !643, file: !519, line: 157, column: 19)
!648 = !DILocation(line: 158, column: 4, scope: !647)
!649 = !DILocation(line: 159, column: 12, scope: !647)
!650 = !DILocation(line: 160, column: 3, scope: !647)
!651 = !DILocation(line: 161, column: 2, scope: !640)
!652 = !DILocation(line: 163, column: 70, scope: !530)
!653 = !DILocation(line: 163, column: 60, scope: !530)
!654 = !DILocation(line: 163, column: 49, scope: !530)
!655 = !DILocation(line: 163, column: 2, scope: !530)
!656 = !DILocation(line: 164, column: 1, scope: !530)
!657 = distinct !DISubprogram(name: "sig_server_setup_fill_reconn", scope: !519, file: !519, line: 34, type: !658, isLocal: true, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !520)
!658 = !DISubroutineType(types: !659)
!659 = !{null, !74, !390}
!660 = !DILocalVariable(name: "conn", arg: 1, scope: !657, file: !519, line: 34, type: !74)
!661 = !DILocation(line: 34, column: 66, scope: !657)
!662 = !DILocalVariable(name: "sserver", arg: 2, scope: !657, file: !519, line: 35, type: !390)
!663 = !DILocation(line: 35, column: 29, scope: !657)
!664 = !DILocation(line: 37, column: 110, scope: !665)
!665 = distinct !DILexicalBlock(scope: !657, file: !519, line: 37, column: 13)
!666 = !DILocation(line: 37, column: 92, scope: !665)
!667 = !DILocation(line: 37, column: 69, scope: !665)
!668 = !DILocation(line: 37, column: 68, scope: !665)
!669 = !DILocation(line: 37, column: 43, scope: !670)
!670 = !DILexicalBlockFile(scope: !665, file: !519, discriminator: 5)
!671 = !DILocation(line: 37, column: 16, scope: !665)
!672 = !DILocation(line: 37, column: 39, scope: !665)
!673 = !DILocation(line: 37, column: 15, scope: !674)
!674 = !DILexicalBlockFile(scope: !665, file: !519, discriminator: 1)
!675 = !DILocation(line: 37, column: 39, scope: !676)
!676 = !DILexicalBlockFile(scope: !665, file: !519, discriminator: 2)
!677 = !DILocation(line: 38, column: 99, scope: !665)
!678 = !DILocation(line: 38, column: 81, scope: !665)
!679 = !DILocation(line: 38, column: 60, scope: !665)
!680 = !DILocation(line: 38, column: 59, scope: !665)
!681 = !DILocation(line: 38, column: 34, scope: !676)
!682 = !DILocation(line: 38, column: 9, scope: !665)
!683 = !DILocation(line: 37, column: 13, scope: !684)
!684 = !DILexicalBlockFile(scope: !657, file: !519, discriminator: 3)
!685 = !DILocation(line: 38, column: 8, scope: !674)
!686 = !DILocation(line: 37, column: 13, scope: !687)
!687 = !DILexicalBlockFile(scope: !657, file: !519, discriminator: 4)
!688 = !DILocation(line: 39, column: 3, scope: !665)
!689 = !DILocation(line: 41, column: 6, scope: !690)
!690 = distinct !DILexicalBlock(scope: !657, file: !519, line: 41, column: 6)
!691 = !DILocation(line: 41, column: 15, scope: !690)
!692 = !DILocation(line: 41, column: 31, scope: !690)
!693 = !DILocation(line: 41, column: 6, scope: !657)
!694 = !DILocation(line: 42, column: 27, scope: !690)
!695 = !DILocation(line: 42, column: 36, scope: !690)
!696 = !DILocation(line: 42, column: 3, scope: !690)
!697 = !DILocation(line: 42, column: 9, scope: !690)
!698 = !DILocation(line: 42, column: 25, scope: !690)
!699 = !DILocation(line: 43, column: 6, scope: !700)
!700 = distinct !DILexicalBlock(scope: !657, file: !519, line: 43, column: 6)
!701 = !DILocation(line: 43, column: 15, scope: !700)
!702 = !DILocation(line: 43, column: 32, scope: !700)
!703 = !DILocation(line: 43, column: 6, scope: !657)
!704 = !DILocation(line: 44, column: 28, scope: !700)
!705 = !DILocation(line: 44, column: 37, scope: !700)
!706 = !DILocation(line: 44, column: 3, scope: !700)
!707 = !DILocation(line: 44, column: 9, scope: !700)
!708 = !DILocation(line: 44, column: 26, scope: !700)
!709 = !DILocation(line: 45, column: 6, scope: !710)
!710 = distinct !DILexicalBlock(scope: !657, file: !519, line: 45, column: 6)
!711 = !DILocation(line: 45, column: 15, scope: !710)
!712 = !DILocation(line: 45, column: 31, scope: !710)
!713 = !DILocation(line: 45, column: 6, scope: !657)
!714 = !DILocation(line: 46, column: 27, scope: !710)
!715 = !DILocation(line: 46, column: 36, scope: !710)
!716 = !DILocation(line: 46, column: 3, scope: !710)
!717 = !DILocation(line: 46, column: 9, scope: !710)
!718 = !DILocation(line: 46, column: 25, scope: !710)
!719 = !DILocation(line: 47, column: 1, scope: !657)
!720 = distinct !DISubprogram(name: "sig_server_setup_fill_connect", scope: !519, file: !519, line: 49, type: !721, isLocal: true, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !520)
!721 = !DISubroutineType(types: !722)
!722 = !{null, !74}
!723 = !DILocalVariable(name: "conn", arg: 1, scope: !720, file: !519, line: 49, type: !74)
!724 = !DILocation(line: 49, column: 67, scope: !720)
!725 = !DILocalVariable(name: "value", scope: !720, file: !519, line: 51, type: !513)
!726 = !DILocation(line: 51, column: 14, scope: !720)
!727 = !DILocation(line: 53, column: 103, scope: !728)
!728 = distinct !DILexicalBlock(scope: !720, file: !519, line: 53, column: 6)
!729 = !DILocation(line: 53, column: 85, scope: !728)
!730 = !DILocation(line: 53, column: 62, scope: !728)
!731 = !DILocation(line: 53, column: 61, scope: !728)
!732 = !DILocation(line: 53, column: 36, scope: !733)
!733 = !DILexicalBlockFile(scope: !728, file: !519, discriminator: 3)
!734 = !DILocation(line: 53, column: 9, scope: !728)
!735 = !DILocation(line: 53, column: 6, scope: !720)
!736 = !DILocation(line: 53, column: 8, scope: !737)
!737 = !DILexicalBlockFile(scope: !728, file: !519, discriminator: 1)
!738 = !DILocation(line: 53, column: 6, scope: !739)
!739 = !DILexicalBlockFile(scope: !720, file: !519, discriminator: 2)
!740 = !DILocation(line: 54, column: 3, scope: !728)
!741 = !DILocation(line: 56, column: 10, scope: !720)
!742 = !DILocation(line: 56, column: 8, scope: !720)
!743 = !DILocation(line: 57, column: 26, scope: !720)
!744 = !DILocation(line: 57, column: 32, scope: !720)
!745 = !DILocation(line: 57, column: 39, scope: !720)
!746 = !DILocation(line: 57, column: 43, scope: !747)
!747 = !DILexicalBlockFile(scope: !720, file: !519, discriminator: 1)
!748 = !DILocation(line: 57, column: 42, scope: !747)
!749 = !DILocation(line: 57, column: 49, scope: !747)
!750 = !DILocation(line: 57, column: 25, scope: !747)
!751 = !DILocation(line: 58, column: 12, scope: !720)
!752 = !DILocation(line: 58, column: 3, scope: !720)
!753 = !DILocation(line: 57, column: 25, scope: !739)
!754 = !DILocation(line: 57, column: 25, scope: !755)
!755 = !DILexicalBlockFile(scope: !720, file: !519, discriminator: 3)
!756 = !DILocation(line: 57, column: 25, scope: !757)
!757 = !DILexicalBlockFile(scope: !720, file: !519, discriminator: 4)
!758 = !DILocation(line: 57, column: 2, scope: !757)
!759 = !DILocation(line: 57, column: 8, scope: !757)
!760 = !DILocation(line: 57, column: 23, scope: !757)
!761 = !DILocation(line: 60, column: 10, scope: !720)
!762 = !DILocation(line: 60, column: 8, scope: !720)
!763 = !DILocation(line: 61, column: 20, scope: !720)
!764 = !DILocation(line: 61, column: 26, scope: !720)
!765 = !DILocation(line: 61, column: 33, scope: !720)
!766 = !DILocation(line: 61, column: 37, scope: !747)
!767 = !DILocation(line: 61, column: 36, scope: !747)
!768 = !DILocation(line: 61, column: 43, scope: !747)
!769 = !DILocation(line: 61, column: 19, scope: !747)
!770 = !DILocation(line: 62, column: 12, scope: !720)
!771 = !DILocation(line: 62, column: 3, scope: !720)
!772 = !DILocation(line: 61, column: 19, scope: !739)
!773 = !DILocation(line: 61, column: 19, scope: !755)
!774 = !DILocation(line: 61, column: 19, scope: !757)
!775 = !DILocation(line: 61, column: 2, scope: !757)
!776 = !DILocation(line: 61, column: 8, scope: !757)
!777 = !DILocation(line: 61, column: 17, scope: !757)
!778 = !DILocation(line: 63, column: 1, scope: !720)
!779 = !DILocation(line: 63, column: 1, scope: !747)
!780 = distinct !DISubprogram(name: "sig_server_setup_fill_chatnet", scope: !519, file: !519, line: 65, type: !781, isLocal: true, isDefinition: true, scopeLine: 67, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !520)
!781 = !DISubroutineType(types: !782)
!782 = !{null, !74, !470}
!783 = !DILocalVariable(name: "conn", arg: 1, scope: !780, file: !519, line: 65, type: !74)
!784 = !DILocation(line: 65, column: 67, scope: !780)
!785 = !DILocalVariable(name: "ircnet", arg: 2, scope: !780, file: !519, line: 66, type: !470)
!786 = !DILocation(line: 66, column: 25, scope: !780)
!787 = !DILocation(line: 68, column: 103, scope: !788)
!788 = distinct !DILexicalBlock(scope: !780, file: !519, line: 68, column: 6)
!789 = !DILocation(line: 68, column: 85, scope: !788)
!790 = !DILocation(line: 68, column: 62, scope: !788)
!791 = !DILocation(line: 68, column: 61, scope: !788)
!792 = !DILocation(line: 68, column: 36, scope: !793)
!793 = !DILexicalBlockFile(scope: !788, file: !519, discriminator: 3)
!794 = !DILocation(line: 68, column: 9, scope: !788)
!795 = !DILocation(line: 68, column: 6, scope: !780)
!796 = !DILocation(line: 68, column: 8, scope: !797)
!797 = !DILexicalBlockFile(scope: !788, file: !519, discriminator: 1)
!798 = !DILocation(line: 68, column: 6, scope: !799)
!799 = !DILexicalBlockFile(scope: !780, file: !519, discriminator: 2)
!800 = !DILocation(line: 69, column: 3, scope: !788)
!801 = !DILocation(line: 70, column: 2, scope: !780)
!802 = distinct !{!802, !801}
!803 = !DILocation(line: 70, column: 92, scope: !804)
!804 = !DILexicalBlockFile(scope: !805, file: !519, discriminator: 1)
!805 = distinct !DILexicalBlock(scope: !806, file: !519, line: 70, column: 10)
!806 = distinct !DILexicalBlock(scope: !780, file: !519, line: 70, column: 4)
!807 = !DILocation(line: 70, column: 74, scope: !804)
!808 = !DILocation(line: 70, column: 58, scope: !804)
!809 = !DILocation(line: 70, column: 57, scope: !804)
!810 = !DILocation(line: 70, column: 32, scope: !811)
!811 = !DILexicalBlockFile(scope: !804, file: !519, discriminator: 7)
!812 = !DILocation(line: 70, column: 12, scope: !804)
!813 = !DILocation(line: 70, column: 10, scope: !804)
!814 = !DILocation(line: 70, column: 11, scope: !815)
!815 = !DILexicalBlockFile(scope: !805, file: !519, discriminator: 2)
!816 = !DILocation(line: 70, column: 10, scope: !817)
!817 = !DILexicalBlockFile(scope: !806, file: !519, discriminator: 3)
!818 = !DILocation(line: 70, column: 30, scope: !819)
!819 = !DILexicalBlockFile(scope: !820, file: !519, discriminator: 4)
!820 = distinct !DILexicalBlock(scope: !805, file: !519, line: 70, column: 28)
!821 = !DILocation(line: 70, column: 39, scope: !822)
!822 = !DILexicalBlockFile(scope: !823, file: !519, discriminator: 5)
!823 = distinct !DILexicalBlock(scope: !805, file: !519, line: 70, column: 37)
!824 = !DILocation(line: 70, column: 129, scope: !822)
!825 = !DILocation(line: 70, column: 140, scope: !826)
!826 = !DILexicalBlockFile(scope: !806, file: !519, discriminator: 6)
!827 = !DILocation(line: 72, column: 6, scope: !828)
!828 = distinct !DILexicalBlock(scope: !780, file: !519, line: 72, column: 6)
!829 = !DILocation(line: 72, column: 14, scope: !828)
!830 = !DILocation(line: 72, column: 29, scope: !828)
!831 = !DILocation(line: 72, column: 6, scope: !780)
!832 = !DILocation(line: 73, column: 3, scope: !833)
!833 = distinct !DILexicalBlock(scope: !828, file: !519, line: 72, column: 37)
!834 = distinct !{!834, !832}
!835 = !DILocation(line: 73, column: 12, scope: !836)
!836 = !DILexicalBlockFile(scope: !837, file: !519, discriminator: 1)
!837 = distinct !DILexicalBlock(scope: !838, file: !519, line: 73, column: 12)
!838 = distinct !DILexicalBlock(scope: !833, file: !519, line: 73, column: 6)
!839 = !DILocation(line: 73, column: 18, scope: !836)
!840 = !DILocation(line: 73, column: 43, scope: !841)
!841 = !DILexicalBlockFile(scope: !842, file: !519, discriminator: 2)
!842 = distinct !DILexicalBlock(scope: !837, file: !519, line: 73, column: 34)
!843 = !DILocation(line: 73, column: 49, scope: !841)
!844 = !DILocation(line: 73, column: 36, scope: !841)
!845 = !DILocation(line: 73, column: 67, scope: !841)
!846 = !DILocation(line: 73, column: 73, scope: !841)
!847 = !DILocation(line: 73, column: 89, scope: !841)
!848 = !DILocation(line: 73, column: 4, scope: !841)
!849 = !DILocation(line: 73, column: 6, scope: !850)
!850 = !DILexicalBlockFile(scope: !838, file: !519, discriminator: 3)
!851 = !DILocation(line: 74, column: 35, scope: !833)
!852 = !DILocation(line: 74, column: 43, scope: !833)
!853 = !DILocation(line: 74, column: 26, scope: !833)
!854 = !DILocation(line: 74, column: 3, scope: !833)
!855 = !DILocation(line: 74, column: 9, scope: !833)
!856 = !DILocation(line: 74, column: 24, scope: !833)
!857 = !DILocation(line: 75, column: 2, scope: !833)
!858 = !DILocation(line: 76, column: 6, scope: !859)
!859 = distinct !DILexicalBlock(scope: !780, file: !519, line: 76, column: 6)
!860 = !DILocation(line: 76, column: 14, scope: !859)
!861 = !DILocation(line: 76, column: 23, scope: !859)
!862 = !DILocation(line: 76, column: 6, scope: !780)
!863 = !DILocation(line: 77, column: 3, scope: !864)
!864 = distinct !DILexicalBlock(scope: !859, file: !519, line: 76, column: 31)
!865 = distinct !{!865, !863}
!866 = !DILocation(line: 77, column: 12, scope: !867)
!867 = !DILexicalBlockFile(scope: !868, file: !519, discriminator: 1)
!868 = distinct !DILexicalBlock(scope: !869, file: !519, line: 77, column: 12)
!869 = distinct !DILexicalBlock(scope: !864, file: !519, line: 77, column: 6)
!870 = !DILocation(line: 77, column: 18, scope: !867)
!871 = !DILocation(line: 77, column: 37, scope: !872)
!872 = !DILexicalBlockFile(scope: !873, file: !519, discriminator: 2)
!873 = distinct !DILexicalBlock(scope: !868, file: !519, line: 77, column: 28)
!874 = !DILocation(line: 77, column: 43, scope: !872)
!875 = !DILocation(line: 77, column: 30, scope: !872)
!876 = !DILocation(line: 77, column: 55, scope: !872)
!877 = !DILocation(line: 77, column: 61, scope: !872)
!878 = !DILocation(line: 77, column: 71, scope: !872)
!879 = !DILocation(line: 77, column: 4, scope: !872)
!880 = !DILocation(line: 77, column: 6, scope: !881)
!881 = !DILexicalBlockFile(scope: !869, file: !519, discriminator: 3)
!882 = !DILocation(line: 78, column: 29, scope: !864)
!883 = !DILocation(line: 78, column: 37, scope: !864)
!884 = !DILocation(line: 78, column: 20, scope: !864)
!885 = !DILocation(line: 78, column: 3, scope: !864)
!886 = !DILocation(line: 78, column: 9, scope: !864)
!887 = !DILocation(line: 78, column: 18, scope: !864)
!888 = !DILocation(line: 79, column: 2, scope: !864)
!889 = !DILocation(line: 81, column: 6, scope: !890)
!890 = distinct !DILexicalBlock(scope: !780, file: !519, line: 81, column: 6)
!891 = !DILocation(line: 81, column: 14, scope: !890)
!892 = !DILocation(line: 81, column: 24, scope: !890)
!893 = !DILocation(line: 81, column: 6, scope: !780)
!894 = !DILocation(line: 81, column: 47, scope: !895)
!895 = !DILexicalBlockFile(scope: !890, file: !519, discriminator: 1)
!896 = !DILocation(line: 81, column: 55, scope: !895)
!897 = !DILocation(line: 81, column: 29, scope: !895)
!898 = !DILocation(line: 81, column: 35, scope: !895)
!899 = !DILocation(line: 81, column: 45, scope: !895)
!900 = !DILocation(line: 82, column: 6, scope: !901)
!901 = distinct !DILexicalBlock(scope: !780, file: !519, line: 82, column: 6)
!902 = !DILocation(line: 82, column: 14, scope: !901)
!903 = !DILocation(line: 82, column: 23, scope: !901)
!904 = !DILocation(line: 82, column: 6, scope: !780)
!905 = !DILocation(line: 82, column: 45, scope: !906)
!906 = !DILexicalBlockFile(scope: !901, file: !519, discriminator: 1)
!907 = !DILocation(line: 82, column: 53, scope: !906)
!908 = !DILocation(line: 82, column: 28, scope: !906)
!909 = !DILocation(line: 82, column: 34, scope: !906)
!910 = !DILocation(line: 82, column: 43, scope: !906)
!911 = !DILocation(line: 83, column: 6, scope: !912)
!912 = distinct !DILexicalBlock(scope: !780, file: !519, line: 83, column: 6)
!913 = !DILocation(line: 83, column: 14, scope: !912)
!914 = !DILocation(line: 83, column: 24, scope: !912)
!915 = !DILocation(line: 83, column: 6, scope: !780)
!916 = !DILocation(line: 83, column: 47, scope: !917)
!917 = !DILexicalBlockFile(scope: !912, file: !519, discriminator: 1)
!918 = !DILocation(line: 83, column: 55, scope: !917)
!919 = !DILocation(line: 83, column: 29, scope: !917)
!920 = !DILocation(line: 83, column: 35, scope: !917)
!921 = !DILocation(line: 83, column: 45, scope: !917)
!922 = !DILocation(line: 84, column: 6, scope: !923)
!923 = distinct !DILexicalBlock(scope: !780, file: !519, line: 84, column: 6)
!924 = !DILocation(line: 84, column: 14, scope: !923)
!925 = !DILocation(line: 84, column: 24, scope: !923)
!926 = !DILocation(line: 84, column: 6, scope: !780)
!927 = !DILocation(line: 84, column: 47, scope: !928)
!928 = !DILexicalBlockFile(scope: !923, file: !519, discriminator: 1)
!929 = !DILocation(line: 84, column: 55, scope: !928)
!930 = !DILocation(line: 84, column: 29, scope: !928)
!931 = !DILocation(line: 84, column: 35, scope: !928)
!932 = !DILocation(line: 84, column: 45, scope: !928)
!933 = !DILocation(line: 86, column: 6, scope: !934)
!934 = distinct !DILexicalBlock(scope: !780, file: !519, line: 86, column: 6)
!935 = !DILocation(line: 86, column: 14, scope: !934)
!936 = !DILocation(line: 86, column: 31, scope: !934)
!937 = !DILocation(line: 86, column: 6, scope: !780)
!938 = !DILocation(line: 87, column: 28, scope: !934)
!939 = !DILocation(line: 87, column: 36, scope: !934)
!940 = !DILocation(line: 87, column: 3, scope: !934)
!941 = !DILocation(line: 87, column: 9, scope: !934)
!942 = !DILocation(line: 87, column: 26, scope: !934)
!943 = !DILocation(line: 88, column: 6, scope: !944)
!944 = distinct !DILexicalBlock(scope: !780, file: !519, line: 88, column: 6)
!945 = !DILocation(line: 88, column: 14, scope: !944)
!946 = !DILocation(line: 88, column: 30, scope: !944)
!947 = !DILocation(line: 88, column: 6, scope: !780)
!948 = !DILocation(line: 89, column: 27, scope: !944)
!949 = !DILocation(line: 89, column: 35, scope: !944)
!950 = !DILocation(line: 89, column: 3, scope: !944)
!951 = !DILocation(line: 89, column: 9, scope: !944)
!952 = !DILocation(line: 89, column: 25, scope: !944)
!953 = !DILocation(line: 90, column: 6, scope: !954)
!954 = distinct !DILexicalBlock(scope: !780, file: !519, line: 90, column: 6)
!955 = !DILocation(line: 90, column: 14, scope: !954)
!956 = !DILocation(line: 90, column: 30, scope: !954)
!957 = !DILocation(line: 90, column: 6, scope: !780)
!958 = !DILocation(line: 91, column: 27, scope: !954)
!959 = !DILocation(line: 91, column: 35, scope: !954)
!960 = !DILocation(line: 91, column: 3, scope: !954)
!961 = !DILocation(line: 91, column: 9, scope: !954)
!962 = !DILocation(line: 91, column: 25, scope: !954)
!963 = !DILocation(line: 94, column: 2, scope: !780)
!964 = !DILocation(line: 94, column: 8, scope: !780)
!965 = !DILocation(line: 94, column: 23, scope: !780)
!966 = !DILocation(line: 95, column: 2, scope: !780)
!967 = !DILocation(line: 95, column: 8, scope: !780)
!968 = !DILocation(line: 95, column: 22, scope: !780)
!969 = !DILocation(line: 96, column: 2, scope: !780)
!970 = !DILocation(line: 96, column: 8, scope: !780)
!971 = !DILocation(line: 96, column: 22, scope: !780)
!972 = !DILocation(line: 98, column: 6, scope: !973)
!973 = distinct !DILexicalBlock(scope: !780, file: !519, line: 98, column: 6)
!974 = !DILocation(line: 98, column: 14, scope: !973)
!975 = !DILocation(line: 98, column: 29, scope: !973)
!976 = !DILocation(line: 98, column: 6, scope: !780)
!977 = !DILocation(line: 99, column: 27, scope: !978)
!978 = distinct !DILexicalBlock(scope: !979, file: !519, line: 99, column: 7)
!979 = distinct !DILexicalBlock(scope: !973, file: !519, line: 98, column: 37)
!980 = !DILocation(line: 99, column: 35, scope: !978)
!981 = !DILocation(line: 99, column: 8, scope: !978)
!982 = !DILocation(line: 99, column: 7, scope: !979)
!983 = !DILocation(line: 101, column: 4, scope: !984)
!984 = distinct !DILexicalBlock(scope: !978, file: !519, line: 99, column: 61)
!985 = !DILocation(line: 101, column: 10, scope: !984)
!986 = !DILocation(line: 101, column: 25, scope: !984)
!987 = !DILocation(line: 102, column: 8, scope: !988)
!988 = distinct !DILexicalBlock(scope: !984, file: !519, line: 102, column: 8)
!989 = !DILocation(line: 102, column: 16, scope: !988)
!990 = !DILocation(line: 102, column: 30, scope: !988)
!991 = !DILocation(line: 102, column: 37, scope: !988)
!992 = !DILocation(line: 102, column: 41, scope: !993)
!993 = !DILexicalBlockFile(scope: !988, file: !519, discriminator: 1)
!994 = !DILocation(line: 102, column: 49, scope: !993)
!995 = !DILocation(line: 102, column: 40, scope: !993)
!996 = !DILocation(line: 102, column: 63, scope: !993)
!997 = !DILocation(line: 103, column: 8, scope: !988)
!998 = !DILocation(line: 103, column: 16, scope: !988)
!999 = !DILocation(line: 103, column: 30, scope: !988)
!1000 = !DILocation(line: 103, column: 37, scope: !988)
!1001 = !DILocation(line: 103, column: 41, scope: !993)
!1002 = !DILocation(line: 103, column: 49, scope: !993)
!1003 = !DILocation(line: 103, column: 40, scope: !993)
!1004 = !DILocation(line: 102, column: 8, scope: !1005)
!1005 = !DILexicalBlockFile(scope: !984, file: !519, discriminator: 2)
!1006 = !DILocation(line: 104, column: 27, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !988, file: !519, line: 103, column: 64)
!1008 = !DILocation(line: 104, column: 35, scope: !1007)
!1009 = !DILocation(line: 104, column: 5, scope: !1007)
!1010 = !DILocation(line: 104, column: 11, scope: !1007)
!1011 = !DILocation(line: 104, column: 25, scope: !1007)
!1012 = !DILocation(line: 105, column: 27, scope: !1007)
!1013 = !DILocation(line: 105, column: 35, scope: !1007)
!1014 = !DILocation(line: 105, column: 5, scope: !1007)
!1015 = !DILocation(line: 105, column: 11, scope: !1007)
!1016 = !DILocation(line: 105, column: 25, scope: !1007)
!1017 = !DILocation(line: 106, column: 4, scope: !1007)
!1018 = !DILocation(line: 107, column: 5, scope: !988)
!1019 = !DILocation(line: 108, column: 3, scope: !984)
!1020 = !DILocation(line: 109, column: 32, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !978, file: !519, line: 109, column: 12)
!1022 = !DILocation(line: 109, column: 40, scope: !1021)
!1023 = !DILocation(line: 109, column: 13, scope: !1021)
!1024 = !DILocation(line: 109, column: 12, scope: !978)
!1025 = !DILocation(line: 110, column: 4, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1021, file: !519, line: 109, column: 69)
!1027 = !DILocation(line: 110, column: 10, scope: !1026)
!1028 = !DILocation(line: 110, column: 25, scope: !1026)
!1029 = !DILocation(line: 111, column: 3, scope: !1026)
!1030 = !DILocation(line: 113, column: 92, scope: !1021)
!1031 = !DILocation(line: 113, column: 100, scope: !1021)
!1032 = !DILocation(line: 113, column: 4, scope: !1021)
!1033 = !DILocation(line: 114, column: 2, scope: !979)
!1034 = !DILocation(line: 115, column: 1, scope: !780)
!1035 = distinct !DISubprogram(name: "sig_server_setup_read", scope: !519, file: !519, line: 166, type: !1036, isLocal: true, isDefinition: true, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !520)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{null, !390, !1038}
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64, align: 64)
!1039 = !DIDerivedType(tag: DW_TAG_typedef, name: "CONFIG_NODE", file: !1040, line: 17, baseType: !1041)
!1040 = !DIFile(filename: "../../../src/lib-config/iconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CONFIG_NODE", file: !1040, line: 20, size: 192, align: 64, elements: !1042)
!1042 = !{!1043, !1044, !1045}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1041, file: !1040, line: 21, baseType: !82, size: 32, align: 32)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1041, file: !1040, line: 22, baseType: !86, size: 64, align: 64, offset: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1041, file: !1040, line: 23, baseType: !69, size: 64, align: 64, offset: 128)
!1046 = !DILocalVariable(name: "rec", arg: 1, scope: !1035, file: !519, line: 166, type: !390)
!1047 = !DILocation(line: 166, column: 57, scope: !1035)
!1048 = !DILocalVariable(name: "node", arg: 2, scope: !1035, file: !519, line: 166, type: !1038)
!1049 = !DILocation(line: 166, column: 75, scope: !1035)
!1050 = !DILocation(line: 168, column: 2, scope: !1035)
!1051 = distinct !{!1051, !1050}
!1052 = !DILocation(line: 168, column: 10, scope: !1053)
!1053 = !DILexicalBlockFile(scope: !1054, file: !519, discriminator: 1)
!1054 = distinct !DILexicalBlock(scope: !1055, file: !519, line: 168, column: 10)
!1055 = distinct !DILexicalBlock(scope: !1035, file: !519, line: 168, column: 4)
!1056 = !DILocation(line: 168, column: 14, scope: !1053)
!1057 = !DILocation(line: 168, column: 5, scope: !1058)
!1058 = !DILexicalBlockFile(scope: !1059, file: !519, discriminator: 2)
!1059 = distinct !DILexicalBlock(scope: !1054, file: !519, line: 168, column: 3)
!1060 = !DILocation(line: 168, column: 14, scope: !1061)
!1061 = !DILexicalBlockFile(scope: !1062, file: !519, discriminator: 3)
!1062 = distinct !DILexicalBlock(scope: !1054, file: !519, line: 168, column: 12)
!1063 = !DILocation(line: 168, column: 98, scope: !1061)
!1064 = !DILocation(line: 168, column: 109, scope: !1065)
!1065 = !DILexicalBlockFile(scope: !1055, file: !519, discriminator: 4)
!1066 = !DILocation(line: 169, column: 2, scope: !1035)
!1067 = distinct !{!1067, !1066}
!1068 = !DILocation(line: 169, column: 10, scope: !1069)
!1069 = !DILexicalBlockFile(scope: !1070, file: !519, discriminator: 1)
!1070 = distinct !DILexicalBlock(scope: !1071, file: !519, line: 169, column: 10)
!1071 = distinct !DILexicalBlock(scope: !1035, file: !519, line: 169, column: 4)
!1072 = !DILocation(line: 169, column: 15, scope: !1069)
!1073 = !DILocation(line: 169, column: 5, scope: !1074)
!1074 = !DILexicalBlockFile(scope: !1075, file: !519, discriminator: 2)
!1075 = distinct !DILexicalBlock(scope: !1070, file: !519, line: 169, column: 3)
!1076 = !DILocation(line: 169, column: 14, scope: !1077)
!1077 = !DILexicalBlockFile(scope: !1078, file: !519, discriminator: 3)
!1078 = distinct !DILexicalBlock(scope: !1070, file: !519, line: 169, column: 12)
!1079 = !DILocation(line: 169, column: 99, scope: !1077)
!1080 = !DILocation(line: 169, column: 110, scope: !1081)
!1081 = !DILexicalBlockFile(scope: !1071, file: !519, discriminator: 4)
!1082 = !DILocation(line: 171, column: 99, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1035, file: !519, line: 171, column: 6)
!1084 = !DILocation(line: 171, column: 81, scope: !1083)
!1085 = !DILocation(line: 171, column: 60, scope: !1083)
!1086 = !DILocation(line: 171, column: 59, scope: !1083)
!1087 = !DILocation(line: 171, column: 34, scope: !1088)
!1088 = !DILexicalBlockFile(scope: !1083, file: !519, discriminator: 3)
!1089 = !DILocation(line: 171, column: 9, scope: !1083)
!1090 = !DILocation(line: 171, column: 6, scope: !1035)
!1091 = !DILocation(line: 171, column: 8, scope: !1092)
!1092 = !DILexicalBlockFile(scope: !1083, file: !519, discriminator: 1)
!1093 = !DILocation(line: 171, column: 6, scope: !1094)
!1094 = !DILexicalBlockFile(scope: !1035, file: !519, discriminator: 2)
!1095 = !DILocation(line: 172, column: 3, scope: !1083)
!1096 = !DILocation(line: 174, column: 46, scope: !1035)
!1097 = !DILocation(line: 174, column: 26, scope: !1035)
!1098 = !DILocation(line: 174, column: 2, scope: !1035)
!1099 = !DILocation(line: 174, column: 7, scope: !1035)
!1100 = !DILocation(line: 174, column: 24, scope: !1035)
!1101 = !DILocation(line: 175, column: 45, scope: !1035)
!1102 = !DILocation(line: 175, column: 25, scope: !1035)
!1103 = !DILocation(line: 175, column: 2, scope: !1035)
!1104 = !DILocation(line: 175, column: 7, scope: !1035)
!1105 = !DILocation(line: 175, column: 23, scope: !1035)
!1106 = !DILocation(line: 176, column: 45, scope: !1035)
!1107 = !DILocation(line: 176, column: 25, scope: !1035)
!1108 = !DILocation(line: 176, column: 2, scope: !1035)
!1109 = !DILocation(line: 176, column: 7, scope: !1035)
!1110 = !DILocation(line: 176, column: 23, scope: !1035)
!1111 = !DILocation(line: 177, column: 1, scope: !1035)
!1112 = !DILocation(line: 177, column: 1, scope: !1113)
!1113 = !DILexicalBlockFile(scope: !1035, file: !519, discriminator: 1)
!1114 = distinct !DISubprogram(name: "sig_server_setup_saved", scope: !519, file: !519, line: 179, type: !1036, isLocal: true, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !520)
!1115 = !DILocalVariable(name: "rec", arg: 1, scope: !1114, file: !519, line: 179, type: !390)
!1116 = !DILocation(line: 179, column: 58, scope: !1114)
!1117 = !DILocalVariable(name: "node", arg: 2, scope: !1114, file: !519, line: 180, type: !1038)
!1118 = !DILocation(line: 180, column: 21, scope: !1114)
!1119 = !DILocation(line: 182, column: 99, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1114, file: !519, line: 182, column: 6)
!1121 = !DILocation(line: 182, column: 81, scope: !1120)
!1122 = !DILocation(line: 182, column: 60, scope: !1120)
!1123 = !DILocation(line: 182, column: 59, scope: !1120)
!1124 = !DILocation(line: 182, column: 34, scope: !1125)
!1125 = !DILexicalBlockFile(scope: !1120, file: !519, discriminator: 3)
!1126 = !DILocation(line: 182, column: 9, scope: !1120)
!1127 = !DILocation(line: 182, column: 6, scope: !1114)
!1128 = !DILocation(line: 182, column: 8, scope: !1129)
!1129 = !DILexicalBlockFile(scope: !1120, file: !519, discriminator: 1)
!1130 = !DILocation(line: 182, column: 6, scope: !1131)
!1131 = !DILexicalBlockFile(scope: !1114, file: !519, discriminator: 2)
!1132 = !DILocation(line: 183, column: 3, scope: !1120)
!1133 = !DILocation(line: 185, column: 6, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1114, file: !519, line: 185, column: 6)
!1135 = !DILocation(line: 185, column: 11, scope: !1134)
!1136 = !DILocation(line: 185, column: 28, scope: !1134)
!1137 = !DILocation(line: 185, column: 6, scope: !1114)
!1138 = !DILocation(line: 186, column: 23, scope: !1134)
!1139 = !DILocation(line: 186, column: 35, scope: !1134)
!1140 = !DILocation(line: 186, column: 61, scope: !1134)
!1141 = !DILocation(line: 186, column: 66, scope: !1134)
!1142 = !DILocation(line: 186, column: 3, scope: !1134)
!1143 = !DILocation(line: 187, column: 6, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1114, file: !519, line: 187, column: 6)
!1145 = !DILocation(line: 187, column: 11, scope: !1144)
!1146 = !DILocation(line: 187, column: 27, scope: !1144)
!1147 = !DILocation(line: 187, column: 6, scope: !1114)
!1148 = !DILocation(line: 188, column: 23, scope: !1144)
!1149 = !DILocation(line: 188, column: 35, scope: !1144)
!1150 = !DILocation(line: 188, column: 60, scope: !1144)
!1151 = !DILocation(line: 188, column: 65, scope: !1144)
!1152 = !DILocation(line: 188, column: 3, scope: !1144)
!1153 = !DILocation(line: 189, column: 6, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1114, file: !519, line: 189, column: 6)
!1155 = !DILocation(line: 189, column: 11, scope: !1154)
!1156 = !DILocation(line: 189, column: 27, scope: !1154)
!1157 = !DILocation(line: 189, column: 6, scope: !1114)
!1158 = !DILocation(line: 190, column: 23, scope: !1154)
!1159 = !DILocation(line: 190, column: 35, scope: !1154)
!1160 = !DILocation(line: 190, column: 60, scope: !1154)
!1161 = !DILocation(line: 190, column: 65, scope: !1154)
!1162 = !DILocation(line: 190, column: 3, scope: !1154)
!1163 = !DILocation(line: 191, column: 1, scope: !1114)
!1164 = distinct !DISubprogram(name: "irc_servers_setup_deinit", scope: !519, file: !519, line: 206, type: !252, isLocal: false, isDefinition: true, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !520)
!1165 = !DILocation(line: 208, column: 2, scope: !1164)
!1166 = !DILocation(line: 209, column: 2, scope: !1164)
!1167 = !DILocation(line: 210, column: 2, scope: !1164)
!1168 = !DILocation(line: 211, column: 2, scope: !1164)
!1169 = !DILocation(line: 212, column: 2, scope: !1164)
!1170 = !DILocation(line: 213, column: 1, scope: !1164)
