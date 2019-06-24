; ModuleID = './line308-fe-ircnet.o.i'
source_filename = "./line308-fe-ircnet.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GSList = type { i8*, %struct._GSList* }
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
%struct._CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)* }
%struct._NICK_REC = type { i32, i32, i64, i8*, i8*, i8*, i32, i8, [8 x i8], i8*, %struct._NICK_REC* }
%struct._QUERY_REC = type opaque
%struct._WI_ITEM_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, {}*, i8* (%struct._WI_ITEM_REC*)* }
%struct._IRC_CHATNET_REC = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IPADDR*, %struct._IPADDR*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct._CHATNET_REC = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IPADDR*, %struct._IPADDR* }

@.str = private unnamed_addr constant [14 x i8] c"fe-common/irc\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"ircnet\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"network\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"network list\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"network add\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"network modify\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"network remove\00", align 1
@.str.7 = private unnamed_addr constant [170 x i8] c"-kicks -msgs -modes -whois -cmdspeed -cmdmax -nick -alternate_nick -user -realname -host -autosendcmd -querychans -usermode -sasl_mechanism -sasl_username -sasl_password\00", align 1
@chatnets = external global %struct._GSList*, align 8
@.str.8 = private unnamed_addr constant [8 x i8] c"CHATNET\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"IRC\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"nick: %s, \00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"alternate_nick: %s, \00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"username: %s, \00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"realname: %s, \00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"host: %s, \00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"autosendcmd: %s, \00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"usermode: %s, \00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"sasl_mechanism: %s, \00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"sasl_username: %s, \00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"sasl_password: (pass), \00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"cmdspeed: %d, \00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"cmdmax: %d, \00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"querychans: %d, \00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"max_kicks: %d, \00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"max_msgs: %d, \00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"max_modes: %d, \00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"max_whois: %d, \00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"error command\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"nick\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"alternate_nick\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"realname\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"usermode\00", align 1
@.str.34 = private unnamed_addr constant [12 x i8] c"autosendcmd\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"sasl_mechanism\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"sasl_username\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"sasl_password\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"kicks\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"msgs\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"modes\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"whois\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"cmdspeed\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"cmdmax\00", align 1
@.str.44 = private unnamed_addr constant [11 x i8] c"querychans\00", align 1

; Function Attrs: nounwind uwtable
define void @fe_ircnet_init() #0 !dbg !280 {
  call void @command_bind_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_network to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !285
  call void @command_bind_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_network to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !286
  call void @command_bind_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_network_list to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !287
  call void @command_bind_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_network_add to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !288
  call void @command_bind_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_network_modify to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !289
  call void @command_bind_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_network_remove to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !290
  call void @command_set_options_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([170 x i8], [170 x i8]* @.str.7, i32 0, i32 0)), !dbg !291
  call void @command_set_options_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([170 x i8], [170 x i8]* @.str.7, i32 0, i32 0)), !dbg !292
  ret void, !dbg !293
}

declare void @command_bind_full(i8*, i32, i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @cmd_network(i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*) #0 !dbg !294 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca %struct._WI_ITEM_REC*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !712, metadata !713), !dbg !714
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !715, metadata !713), !dbg !716
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %6, metadata !717, metadata !713), !dbg !718
  %7 = load i8*, i8** %4, align 8, !dbg !719
  %8 = load i8, i8* %7, align 1, !dbg !721
  %9 = sext i8 %8 to i32, !dbg !721
  %10 = icmp eq i32 %9, 0, !dbg !722
  br i1 %10, label %11, label %12, !dbg !723

; <label>:11:                                     ; preds = %3
  call void @cmd_network_list(), !dbg !724
  br label %18, !dbg !724

; <label>:12:                                     ; preds = %3
  %13 = load i8*, i8** %4, align 8, !dbg !725
  %14 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !726
  %15 = bitcast %struct._SERVER_REC* %14 to i8*, !dbg !726
  %16 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %6, align 8, !dbg !727
  %17 = bitcast %struct._WI_ITEM_REC* %16 to i8*, !dbg !727
  call void @command_runsub(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* %13, i8* %15, i8* %17), !dbg !728
  br label %18

; <label>:18:                                     ; preds = %12, %11
  ret void, !dbg !729
}

; Function Attrs: nounwind uwtable
define internal void @cmd_network_list() #0 !dbg !730 {
  %1 = alloca %struct._GString*, align 8
  %2 = alloca %struct._GSList*, align 8
  %3 = alloca %struct._IRC_CHATNET_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct._GString** %1, metadata !731, metadata !713), !dbg !732
  call void @llvm.dbg.declare(metadata %struct._GSList** %2, metadata !733, metadata !713), !dbg !734
  %4 = call %struct._GString* @g_string_new(i8* null), !dbg !735
  store %struct._GString* %4, %struct._GString** %1, align 8, !dbg !736
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 13), !dbg !737
  %5 = load %struct._GSList*, %struct._GSList** @chatnets, align 8, !dbg !738
  store %struct._GSList* %5, %struct._GSList** %2, align 8, !dbg !740
  br label %6, !dbg !741

; <label>:6:                                      ; preds = %213, %0
  %7 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !742
  %8 = icmp ne %struct._GSList* %7, null, !dbg !745
  br i1 %8, label %9, label %217, !dbg !746

; <label>:9:                                      ; preds = %6
  call void @llvm.dbg.declare(metadata %struct._IRC_CHATNET_REC** %3, metadata !747, metadata !713), !dbg !749
  %10 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !750
  %11 = getelementptr inbounds %struct._GSList, %struct._GSList* %10, i32 0, i32 0, !dbg !751
  %12 = load i8*, i8** %11, align 8, !dbg !751
  %13 = bitcast i8* %12 to %struct._IRC_CHATNET_REC*, !dbg !750
  store %struct._IRC_CHATNET_REC* %13, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !749
  %14 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !752
  %15 = bitcast %struct._IRC_CHATNET_REC* %14 to i8*, !dbg !752
  %16 = call i8* @module_check_cast(i8* %15, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0)), !dbg !754
  %17 = bitcast i8* %16 to %struct._CHATNET_REC*, !dbg !755
  %18 = bitcast %struct._CHATNET_REC* %17 to i8*, !dbg !756
  %19 = call i8* @chat_protocol_check_cast(i8* %18, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0)), !dbg !757
  %20 = bitcast i8* %19 to %struct._IRC_CHATNET_REC*, !dbg !759
  %21 = icmp ne %struct._IRC_CHATNET_REC* %20, null, !dbg !759
  br i1 %21, label %22, label %23, !dbg !760

; <label>:22:                                     ; preds = %9
  br i1 false, label %24, label %25, !dbg !761

; <label>:23:                                     ; preds = %9
  br i1 false, label %25, label %24, !dbg !763

; <label>:24:                                     ; preds = %23, %22
  br label %213, !dbg !765

; <label>:25:                                     ; preds = %23, %22
  %26 = load %struct._GString*, %struct._GString** %1, align 8, !dbg !766
  %27 = call %struct._GString* @g_string_truncate(%struct._GString* %26, i64 0), !dbg !767
  %28 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !768
  %29 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %28, i32 0, i32 3, !dbg !770
  %30 = load i8*, i8** %29, align 8, !dbg !770
  %31 = icmp ne i8* %30, null, !dbg !771
  br i1 %31, label %32, label %37, !dbg !772

; <label>:32:                                     ; preds = %25
  %33 = load %struct._GString*, %struct._GString** %1, align 8, !dbg !773
  %34 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !774
  %35 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %34, i32 0, i32 3, !dbg !775
  %36 = load i8*, i8** %35, align 8, !dbg !775
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i8* %36), !dbg !776
  br label %37, !dbg !776

; <label>:37:                                     ; preds = %32, %25
  %38 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !777
  %39 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %38, i32 0, i32 11, !dbg !779
  %40 = load i8*, i8** %39, align 8, !dbg !779
  %41 = icmp ne i8* %40, null, !dbg !780
  br i1 %41, label %42, label %47, !dbg !781

; <label>:42:                                     ; preds = %37
  %43 = load %struct._GString*, %struct._GString** %1, align 8, !dbg !782
  %44 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !783
  %45 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %44, i32 0, i32 11, !dbg !784
  %46 = load i8*, i8** %45, align 8, !dbg !784
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0), i8* %46), !dbg !785
  br label %47, !dbg !785

; <label>:47:                                     ; preds = %42, %37
  %48 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !786
  %49 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %48, i32 0, i32 4, !dbg !788
  %50 = load i8*, i8** %49, align 8, !dbg !788
  %51 = icmp ne i8* %50, null, !dbg !789
  br i1 %51, label %52, label %57, !dbg !790

; <label>:52:                                     ; preds = %47
  %53 = load %struct._GString*, %struct._GString** %1, align 8, !dbg !791
  %54 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !792
  %55 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %54, i32 0, i32 4, !dbg !793
  %56 = load i8*, i8** %55, align 8, !dbg !793
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %53, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0), i8* %56), !dbg !794
  br label %57, !dbg !794

; <label>:57:                                     ; preds = %52, %47
  %58 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !795
  %59 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %58, i32 0, i32 5, !dbg !797
  %60 = load i8*, i8** %59, align 8, !dbg !797
  %61 = icmp ne i8* %60, null, !dbg !798
  br i1 %61, label %62, label %67, !dbg !799

; <label>:62:                                     ; preds = %57
  %63 = load %struct._GString*, %struct._GString** %1, align 8, !dbg !800
  %64 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !801
  %65 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %64, i32 0, i32 5, !dbg !802
  %66 = load i8*, i8** %65, align 8, !dbg !802
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %63, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i32 0, i32 0), i8* %66), !dbg !803
  br label %67, !dbg !803

; <label>:67:                                     ; preds = %62, %57
  %68 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !804
  %69 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %68, i32 0, i32 6, !dbg !806
  %70 = load i8*, i8** %69, align 8, !dbg !806
  %71 = icmp ne i8* %70, null, !dbg !807
  br i1 %71, label %72, label %77, !dbg !808

; <label>:72:                                     ; preds = %67
  %73 = load %struct._GString*, %struct._GString** %1, align 8, !dbg !809
  %74 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !810
  %75 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %74, i32 0, i32 6, !dbg !811
  %76 = load i8*, i8** %75, align 8, !dbg !811
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %73, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i8* %76), !dbg !812
  br label %77, !dbg !812

; <label>:77:                                     ; preds = %72, %67
  %78 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !813
  %79 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %78, i32 0, i32 7, !dbg !815
  %80 = load i8*, i8** %79, align 8, !dbg !815
  %81 = icmp ne i8* %80, null, !dbg !816
  br i1 %81, label %82, label %87, !dbg !817

; <label>:82:                                     ; preds = %77
  %83 = load %struct._GString*, %struct._GString** %1, align 8, !dbg !818
  %84 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !819
  %85 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %84, i32 0, i32 7, !dbg !820
  %86 = load i8*, i8** %85, align 8, !dbg !820
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %83, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i32 0, i32 0), i8* %86), !dbg !821
  br label %87, !dbg !821

; <label>:87:                                     ; preds = %82, %77
  %88 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !822
  %89 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %88, i32 0, i32 10, !dbg !824
  %90 = load i8*, i8** %89, align 8, !dbg !824
  %91 = icmp ne i8* %90, null, !dbg !825
  br i1 %91, label %92, label %97, !dbg !826

; <label>:92:                                     ; preds = %87
  %93 = load %struct._GString*, %struct._GString** %1, align 8, !dbg !827
  %94 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !828
  %95 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %94, i32 0, i32 10, !dbg !829
  %96 = load i8*, i8** %95, align 8, !dbg !829
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %93, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8* %96), !dbg !830
  br label %97, !dbg !830

; <label>:97:                                     ; preds = %92, %87
  %98 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !831
  %99 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %98, i32 0, i32 12, !dbg !833
  %100 = load i8*, i8** %99, align 8, !dbg !833
  %101 = icmp ne i8* %100, null, !dbg !834
  br i1 %101, label %102, label %107, !dbg !835

; <label>:102:                                    ; preds = %97
  %103 = load %struct._GString*, %struct._GString** %1, align 8, !dbg !836
  %104 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !837
  %105 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %104, i32 0, i32 12, !dbg !838
  %106 = load i8*, i8** %105, align 8, !dbg !838
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %103, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i32 0, i32 0), i8* %106), !dbg !839
  br label %107, !dbg !839

; <label>:107:                                    ; preds = %102, %97
  %108 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !840
  %109 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %108, i32 0, i32 13, !dbg !842
  %110 = load i8*, i8** %109, align 8, !dbg !842
  %111 = icmp ne i8* %110, null, !dbg !843
  br i1 %111, label %112, label %117, !dbg !844

; <label>:112:                                    ; preds = %107
  %113 = load %struct._GString*, %struct._GString** %1, align 8, !dbg !845
  %114 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !846
  %115 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %114, i32 0, i32 13, !dbg !847
  %116 = load i8*, i8** %115, align 8, !dbg !847
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %113, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0), i8* %116), !dbg !848
  br label %117, !dbg !848

; <label>:117:                                    ; preds = %112, %107
  %118 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !849
  %119 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %118, i32 0, i32 14, !dbg !851
  %120 = load i8*, i8** %119, align 8, !dbg !851
  %121 = icmp ne i8* %120, null, !dbg !852
  br i1 %121, label %122, label %124, !dbg !853

; <label>:122:                                    ; preds = %117
  %123 = load %struct._GString*, %struct._GString** %1, align 8, !dbg !854
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %123, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i32 0, i32 0)), !dbg !855
  br label %124, !dbg !855

; <label>:124:                                    ; preds = %122, %117
  %125 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !856
  %126 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %125, i32 0, i32 16, !dbg !858
  %127 = load i32, i32* %126, align 4, !dbg !858
  %128 = icmp sgt i32 %127, 0, !dbg !859
  br i1 %128, label %129, label %134, !dbg !860

; <label>:129:                                    ; preds = %124
  %130 = load %struct._GString*, %struct._GString** %1, align 8, !dbg !861
  %131 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !862
  %132 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %131, i32 0, i32 16, !dbg !863
  %133 = load i32, i32* %132, align 4, !dbg !863
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %130, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i32 0, i32 0), i32 %133), !dbg !864
  br label %134, !dbg !864

; <label>:134:                                    ; preds = %129, %124
  %135 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !865
  %136 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %135, i32 0, i32 15, !dbg !867
  %137 = load i32, i32* %136, align 8, !dbg !867
  %138 = icmp sgt i32 %137, 0, !dbg !868
  br i1 %138, label %139, label %144, !dbg !869

; <label>:139:                                    ; preds = %134
  %140 = load %struct._GString*, %struct._GString** %1, align 8, !dbg !870
  %141 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !871
  %142 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %141, i32 0, i32 15, !dbg !872
  %143 = load i32, i32* %142, align 8, !dbg !872
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %140, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0), i32 %143), !dbg !873
  br label %144, !dbg !873

; <label>:144:                                    ; preds = %139, %134
  %145 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !874
  %146 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %145, i32 0, i32 17, !dbg !876
  %147 = load i32, i32* %146, align 8, !dbg !876
  %148 = icmp sgt i32 %147, 0, !dbg !877
  br i1 %148, label %149, label %154, !dbg !878

; <label>:149:                                    ; preds = %144
  %150 = load %struct._GString*, %struct._GString** %1, align 8, !dbg !879
  %151 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !880
  %152 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %151, i32 0, i32 17, !dbg !881
  %153 = load i32, i32* %152, align 8, !dbg !881
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %150, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i32 %153), !dbg !882
  br label %154, !dbg !882

; <label>:154:                                    ; preds = %149, %144
  %155 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !883
  %156 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %155, i32 0, i32 18, !dbg !885
  %157 = load i32, i32* %156, align 4, !dbg !885
  %158 = icmp sgt i32 %157, 0, !dbg !886
  br i1 %158, label %159, label %164, !dbg !887

; <label>:159:                                    ; preds = %154
  %160 = load %struct._GString*, %struct._GString** %1, align 8, !dbg !888
  %161 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !889
  %162 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %161, i32 0, i32 18, !dbg !890
  %163 = load i32, i32* %162, align 4, !dbg !890
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %160, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i32 0, i32 0), i32 %163), !dbg !891
  br label %164, !dbg !891

; <label>:164:                                    ; preds = %159, %154
  %165 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !892
  %166 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %165, i32 0, i32 19, !dbg !894
  %167 = load i32, i32* %166, align 8, !dbg !894
  %168 = icmp sgt i32 %167, 0, !dbg !895
  br i1 %168, label %169, label %174, !dbg !896

; <label>:169:                                    ; preds = %164
  %170 = load %struct._GString*, %struct._GString** %1, align 8, !dbg !897
  %171 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !898
  %172 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %171, i32 0, i32 19, !dbg !899
  %173 = load i32, i32* %172, align 8, !dbg !899
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %170, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i32 0, i32 0), i32 %173), !dbg !900
  br label %174, !dbg !900

; <label>:174:                                    ; preds = %169, %164
  %175 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !901
  %176 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %175, i32 0, i32 20, !dbg !903
  %177 = load i32, i32* %176, align 4, !dbg !903
  %178 = icmp sgt i32 %177, 0, !dbg !904
  br i1 %178, label %179, label %184, !dbg !905

; <label>:179:                                    ; preds = %174
  %180 = load %struct._GString*, %struct._GString** %1, align 8, !dbg !906
  %181 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !907
  %182 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %181, i32 0, i32 20, !dbg !908
  %183 = load i32, i32* %182, align 4, !dbg !908
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %180, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i32 0, i32 0), i32 %183), !dbg !909
  br label %184, !dbg !909

; <label>:184:                                    ; preds = %179, %174
  %185 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !910
  %186 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %185, i32 0, i32 21, !dbg !912
  %187 = load i32, i32* %186, align 8, !dbg !912
  %188 = icmp sgt i32 %187, 0, !dbg !913
  br i1 %188, label %189, label %194, !dbg !914

; <label>:189:                                    ; preds = %184
  %190 = load %struct._GString*, %struct._GString** %1, align 8, !dbg !915
  %191 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !916
  %192 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %191, i32 0, i32 21, !dbg !917
  %193 = load i32, i32* %192, align 8, !dbg !917
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %190, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0), i32 %193), !dbg !918
  br label %194, !dbg !918

; <label>:194:                                    ; preds = %189, %184
  %195 = load %struct._GString*, %struct._GString** %1, align 8, !dbg !919
  %196 = getelementptr inbounds %struct._GString, %struct._GString* %195, i32 0, i32 1, !dbg !921
  %197 = load i64, i64* %196, align 8, !dbg !921
  %198 = icmp ugt i64 %197, 1, !dbg !922
  br i1 %198, label %199, label %206, !dbg !923

; <label>:199:                                    ; preds = %194
  %200 = load %struct._GString*, %struct._GString** %1, align 8, !dbg !924
  %201 = load %struct._GString*, %struct._GString** %1, align 8, !dbg !926
  %202 = getelementptr inbounds %struct._GString, %struct._GString* %201, i32 0, i32 1, !dbg !927
  %203 = load i64, i64* %202, align 8, !dbg !927
  %204 = sub i64 %203, 2, !dbg !928
  %205 = call %struct._GString* @g_string_truncate(%struct._GString* %200, i64 %204), !dbg !929
  br label %206, !dbg !929

; <label>:206:                                    ; preds = %199, %194
  %207 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !930
  %208 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %207, i32 0, i32 2, !dbg !931
  %209 = load i8*, i8** %208, align 8, !dbg !931
  %210 = load %struct._GString*, %struct._GString** %1, align 8, !dbg !932
  %211 = getelementptr inbounds %struct._GString, %struct._GString* %210, i32 0, i32 0, !dbg !933
  %212 = load i8*, i8** %211, align 8, !dbg !933
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 14, i8* %209, i8* %212), !dbg !934
  br label %213, !dbg !935

; <label>:213:                                    ; preds = %206, %24
  %214 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !936
  %215 = getelementptr inbounds %struct._GSList, %struct._GSList* %214, i32 0, i32 1, !dbg !938
  %216 = load %struct._GSList*, %struct._GSList** %215, align 8, !dbg !938
  store %struct._GSList* %216, %struct._GSList** %2, align 8, !dbg !939
  br label %6, !dbg !940, !llvm.loop !941

; <label>:217:                                    ; preds = %6
  %218 = load %struct._GString*, %struct._GString** %1, align 8, !dbg !943
  %219 = call i8* @g_string_free(%struct._GString* %218, i32 1), !dbg !944
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 524288, i32 15), !dbg !945
  ret void, !dbg !946
}

; Function Attrs: nounwind uwtable
define internal void @cmd_network_add(i8*) #0 !dbg !947 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !950, metadata !713), !dbg !951
  %3 = load i8*, i8** %2, align 8, !dbg !952
  call void @cmd_network_add_modify(i8* %3, i32 1), !dbg !953
  ret void, !dbg !954
}

; Function Attrs: nounwind uwtable
define internal void @cmd_network_modify(i8*) #0 !dbg !955 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !956, metadata !713), !dbg !957
  %3 = load i8*, i8** %2, align 8, !dbg !958
  call void @cmd_network_add_modify(i8* %3, i32 0), !dbg !959
  ret void, !dbg !960
}

; Function Attrs: nounwind uwtable
define internal void @cmd_network_remove(i8*) #0 !dbg !961 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._IRC_CHATNET_REC*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !962, metadata !713), !dbg !963
  call void @llvm.dbg.declare(metadata %struct._IRC_CHATNET_REC** %3, metadata !964, metadata !713), !dbg !965
  %4 = load i8*, i8** %2, align 8, !dbg !966
  %5 = load i8, i8* %4, align 1, !dbg !968
  %6 = sext i8 %5 to i32, !dbg !968
  %7 = icmp eq i32 %6, 0, !dbg !969
  br i1 %7, label %8, label %12, !dbg !970

; <label>:8:                                      ; preds = %1
  br label %9, !dbg !971, !llvm.loop !973

; <label>:9:                                      ; preds = %8
  %10 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !975
  call void @signal_stop(), !dbg !978
  br label %33, !dbg !980
                                                  ; No predecessors!
  br label %12, !dbg !981

; <label>:12:                                     ; preds = %11, %1
  %13 = load i8*, i8** %2, align 8, !dbg !983
  %14 = call %struct._CHATNET_REC* @chatnet_find(i8* %13), !dbg !984
  %15 = bitcast %struct._CHATNET_REC* %14 to i8*, !dbg !984
  %16 = call i8* @module_check_cast(i8* %15, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0)), !dbg !985
  %17 = bitcast i8* %16 to %struct._CHATNET_REC*, !dbg !987
  %18 = bitcast %struct._CHATNET_REC* %17 to i8*, !dbg !988
  %19 = call i8* @chat_protocol_check_cast(i8* %18, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0)), !dbg !989
  %20 = bitcast i8* %19 to %struct._IRC_CHATNET_REC*, !dbg !991
  store %struct._IRC_CHATNET_REC* %20, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !992
  %21 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !993
  %22 = icmp eq %struct._IRC_CHATNET_REC* %21, null, !dbg !995
  br i1 %22, label %23, label %25, !dbg !996

; <label>:23:                                     ; preds = %12
  %24 = load i8*, i8** %2, align 8, !dbg !997
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 12, i8* %24), !dbg !998
  br label %33, !dbg !998

; <label>:25:                                     ; preds = %12
  %26 = load i8*, i8** %2, align 8, !dbg !999
  call void @server_setup_remove_chatnet(i8* %26), !dbg !1001
  %27 = load i8*, i8** %2, align 8, !dbg !1002
  call void @channel_setup_remove_chatnet(i8* %27), !dbg !1003
  %28 = load i8*, i8** %2, align 8, !dbg !1004
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 11, i8* %28), !dbg !1005
  %29 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !1006
  %30 = bitcast %struct._IRC_CHATNET_REC* %29 to i8*, !dbg !1006
  %31 = call i8* @module_check_cast(i8* %30, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0)), !dbg !1007
  %32 = bitcast i8* %31 to %struct._CHATNET_REC*, !dbg !1008
  call void @chatnet_remove(%struct._CHATNET_REC* %32), !dbg !1009
  br label %33

; <label>:33:                                     ; preds = %9, %25, %23
  ret void, !dbg !1011
}

declare void @command_set_options_module(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @fe_ircnet_deinit() #0 !dbg !1012 {
  call void @command_unbind_full(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_network to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1013
  call void @command_unbind_full(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, %struct._WI_ITEM_REC*)* @cmd_network to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1014
  call void @command_unbind_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @cmd_network_list to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1015
  call void @command_unbind_full(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_network_add to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1016
  call void @command_unbind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_network_modify to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1017
  call void @command_unbind_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*)* @cmd_network_remove to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1018
  ret void, !dbg !1019
}

declare void @command_unbind_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare void @command_runsub(i8*, i8*, i8*, i8*) #1

declare %struct._GString* @g_string_new(i8*) #1

declare void @printformat_module(i8*, i8*, i8*, i32, i32, ...) #1

declare i8* @chat_protocol_check_cast(i8*, i32, i8*) #1

declare i8* @module_check_cast(i8*, i32, i8*) #1

declare %struct._GString* @g_string_truncate(%struct._GString*, i64) #1

declare void @g_string_append_printf(%struct._GString*, i8*, ...) #1

declare i8* @g_string_free(%struct._GString*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @cmd_network_add_modify(i8*, i32) #0 !dbg !1020 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._GHashTable*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._IRC_CHATNET_REC*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1023, metadata !713), !dbg !1024
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1025, metadata !713), !dbg !1026
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %5, metadata !1027, metadata !713), !dbg !1028
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1029, metadata !713), !dbg !1030
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1031, metadata !713), !dbg !1032
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1033, metadata !713), !dbg !1034
  call void @llvm.dbg.declare(metadata %struct._IRC_CHATNET_REC** %9, metadata !1035, metadata !713), !dbg !1036
  %10 = load i8*, i8** %3, align 8, !dbg !1037
  %11 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %10, i8** %8, i32 16385, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), %struct._GHashTable** %5, i8** %6), !dbg !1039
  %12 = icmp ne i32 %11, 0, !dbg !1039
  br i1 %12, label %14, label %13, !dbg !1040

; <label>:13:                                     ; preds = %2
  br label %472, !dbg !1041

; <label>:14:                                     ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !1042
  %16 = load i8, i8* %15, align 1, !dbg !1044
  %17 = sext i8 %16 to i32, !dbg !1044
  %18 = icmp eq i32 %17, 0, !dbg !1045
  br i1 %18, label %19, label %26, !dbg !1046

; <label>:19:                                     ; preds = %14
  br label %20, !dbg !1047, !llvm.loop !1049

; <label>:20:                                     ; preds = %19
  %21 = load i8*, i8** %8, align 8, !dbg !1051
  call void @cmd_params_free(i8* %21), !dbg !1054
  br label %22, !dbg !1055, !llvm.loop !1056

; <label>:22:                                     ; preds = %20
  %23 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !1058
  call void @signal_stop(), !dbg !1061
  br label %472, !dbg !1063
                                                  ; No predecessors!
  br label %25, !dbg !1064

; <label>:25:                                     ; preds = %24
  br label %26, !dbg !1066

; <label>:26:                                     ; preds = %25, %14
  %27 = load i8*, i8** %6, align 8, !dbg !1068
  %28 = call %struct._CHATNET_REC* @chatnet_find(i8* %27), !dbg !1069
  %29 = bitcast %struct._CHATNET_REC* %28 to i8*, !dbg !1069
  %30 = call i8* @module_check_cast(i8* %29, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0)), !dbg !1070
  %31 = bitcast i8* %30 to %struct._CHATNET_REC*, !dbg !1072
  %32 = bitcast %struct._CHATNET_REC* %31 to i8*, !dbg !1073
  %33 = call i8* @chat_protocol_check_cast(i8* %32, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0)), !dbg !1074
  %34 = bitcast i8* %33 to %struct._IRC_CHATNET_REC*, !dbg !1076
  store %struct._IRC_CHATNET_REC* %34, %struct._IRC_CHATNET_REC** %9, align 8, !dbg !1077
  %35 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %9, align 8, !dbg !1078
  %36 = icmp eq %struct._IRC_CHATNET_REC* %35, null, !dbg !1080
  br i1 %36, label %37, label %50, !dbg !1081

; <label>:37:                                     ; preds = %26
  %38 = load i32, i32* %4, align 4, !dbg !1082
  %39 = icmp eq i32 %38, 0, !dbg !1085
  br i1 %39, label %40, label %43, !dbg !1086

; <label>:40:                                     ; preds = %37
  %41 = load i8*, i8** %6, align 8, !dbg !1087
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 12, i8* %41), !dbg !1089
  %42 = load i8*, i8** %8, align 8, !dbg !1090
  call void @cmd_params_free(i8* %42), !dbg !1091
  br label %472, !dbg !1092

; <label>:43:                                     ; preds = %37
  %44 = call noalias i8* @g_malloc0_n(i64 1, i64 144), !dbg !1093
  %45 = bitcast i8* %44 to %struct._IRC_CHATNET_REC*, !dbg !1094
  store %struct._IRC_CHATNET_REC* %45, %struct._IRC_CHATNET_REC** %9, align 8, !dbg !1095
  %46 = load i8*, i8** %6, align 8, !dbg !1096
  %47 = call noalias i8* @g_strdup(i8* %46), !dbg !1097
  %48 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %9, align 8, !dbg !1098
  %49 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %48, i32 0, i32 2, !dbg !1099
  store i8* %47, i8** %49, align 8, !dbg !1100
  br label %235, !dbg !1101

; <label>:50:                                     ; preds = %26
  %51 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1102
  %52 = call i8* @g_hash_table_lookup(%struct._GHashTable* %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0)), !dbg !1105
  %53 = icmp ne i8* %52, null, !dbg !1105
  br i1 %53, label %54, label %68, !dbg !1106

; <label>:54:                                     ; preds = %50
  br label %55, !dbg !1107, !llvm.loop !1109

; <label>:55:                                     ; preds = %54
  %56 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %9, align 8, !dbg !1111
  %57 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %56, i32 0, i32 3, !dbg !1115
  %58 = load i8*, i8** %57, align 8, !dbg !1115
  %59 = icmp ne i8* %58, null, !dbg !1111
  br i1 %59, label %60, label %66, !dbg !1111

; <label>:60:                                     ; preds = %55
  %61 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %9, align 8, !dbg !1116
  %62 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %61, i32 0, i32 3, !dbg !1119
  %63 = load i8*, i8** %62, align 8, !dbg !1119
  call void @g_free(i8* %63), !dbg !1120
  %64 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %9, align 8, !dbg !1121
  %65 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %64, i32 0, i32 3, !dbg !1122
  store i8* null, i8** %65, align 8, !dbg !1123
  br label %66, !dbg !1124

; <label>:66:                                     ; preds = %60, %55
  br label %67, !dbg !1125

; <label>:67:                                     ; preds = %66
  br label %68, !dbg !1127

; <label>:68:                                     ; preds = %67, %50
  %69 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1129
  %70 = call i8* @g_hash_table_lookup(%struct._GHashTable* %69, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0)), !dbg !1131
  %71 = icmp ne i8* %70, null, !dbg !1131
  br i1 %71, label %72, label %86, !dbg !1132

; <label>:72:                                     ; preds = %68
  br label %73, !dbg !1133, !llvm.loop !1135

; <label>:73:                                     ; preds = %72
  %74 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %9, align 8, !dbg !1137
  %75 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %74, i32 0, i32 11, !dbg !1141
  %76 = load i8*, i8** %75, align 8, !dbg !1141
  %77 = icmp ne i8* %76, null, !dbg !1137
  br i1 %77, label %78, label %84, !dbg !1137

; <label>:78:                                     ; preds = %73
  %79 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %9, align 8, !dbg !1142
  %80 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %79, i32 0, i32 11, !dbg !1145
  %81 = load i8*, i8** %80, align 8, !dbg !1145
  call void @g_free(i8* %81), !dbg !1146
  %82 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %9, align 8, !dbg !1147
  %83 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %82, i32 0, i32 11, !dbg !1148
  store i8* null, i8** %83, align 8, !dbg !1149
  br label %84, !dbg !1150

; <label>:84:                                     ; preds = %78, %73
  br label %85, !dbg !1151

; <label>:85:                                     ; preds = %84
  br label %86, !dbg !1153

; <label>:86:                                     ; preds = %85, %68
  %87 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1155
  %88 = call i8* @g_hash_table_lookup(%struct._GHashTable* %87, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0)), !dbg !1157
  %89 = icmp ne i8* %88, null, !dbg !1157
  br i1 %89, label %90, label %104, !dbg !1158

; <label>:90:                                     ; preds = %86
  br label %91, !dbg !1159, !llvm.loop !1161

; <label>:91:                                     ; preds = %90
  %92 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %9, align 8, !dbg !1163
  %93 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %92, i32 0, i32 4, !dbg !1167
  %94 = load i8*, i8** %93, align 8, !dbg !1167
  %95 = icmp ne i8* %94, null, !dbg !1163
  br i1 %95, label %96, label %102, !dbg !1163

; <label>:96:                                     ; preds = %91
  %97 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %9, align 8, !dbg !1168
  %98 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %97, i32 0, i32 4, !dbg !1171
  %99 = load i8*, i8** %98, align 8, !dbg !1171
  call void @g_free(i8* %99), !dbg !1172
  %100 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %9, align 8, !dbg !1173
  %101 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %100, i32 0, i32 4, !dbg !1174
  store i8* null, i8** %101, align 8, !dbg !1175
  br label %102, !dbg !1176

; <label>:102:                                    ; preds = %96, %91
  br label %103, !dbg !1177

; <label>:103:                                    ; preds = %102
  br label %104, !dbg !1179

; <label>:104:                                    ; preds = %103, %86
  %105 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1181
  %106 = call i8* @g_hash_table_lookup(%struct._GHashTable* %105, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0)), !dbg !1183
  %107 = icmp ne i8* %106, null, !dbg !1183
  br i1 %107, label %108, label %122, !dbg !1184

; <label>:108:                                    ; preds = %104
  br label %109, !dbg !1185, !llvm.loop !1187

; <label>:109:                                    ; preds = %108
  %110 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %9, align 8, !dbg !1189
  %111 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %110, i32 0, i32 5, !dbg !1193
  %112 = load i8*, i8** %111, align 8, !dbg !1193
  %113 = icmp ne i8* %112, null, !dbg !1189
  br i1 %113, label %114, label %120, !dbg !1189

; <label>:114:                                    ; preds = %109
  %115 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %9, align 8, !dbg !1194
  %116 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %115, i32 0, i32 5, !dbg !1197
  %117 = load i8*, i8** %116, align 8, !dbg !1197
  call void @g_free(i8* %117), !dbg !1198
  %118 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %9, align 8, !dbg !1199
  %119 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %118, i32 0, i32 5, !dbg !1200
  store i8* null, i8** %119, align 8, !dbg !1201
  br label %120, !dbg !1202

; <label>:120:                                    ; preds = %114, %109
  br label %121, !dbg !1203

; <label>:121:                                    ; preds = %120
  br label %122, !dbg !1205

; <label>:122:                                    ; preds = %121, %104
  %123 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1207
  %124 = call i8* @g_hash_table_lookup(%struct._GHashTable* %123, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0)), !dbg !1209
  %125 = icmp ne i8* %124, null, !dbg !1209
  br i1 %125, label %126, label %144, !dbg !1210

; <label>:126:                                    ; preds = %122
  br label %127, !dbg !1211, !llvm.loop !1213

; <label>:127:                                    ; preds = %126
  %128 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %9, align 8, !dbg !1214
  %129 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %128, i32 0, i32 6, !dbg !1218
  %130 = load i8*, i8** %129, align 8, !dbg !1218
  %131 = icmp ne i8* %130, null, !dbg !1214
  br i1 %131, label %132, label %138, !dbg !1214

; <label>:132:                                    ; preds = %127
  %133 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %9, align 8, !dbg !1219
  %134 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %133, i32 0, i32 6, !dbg !1222
  %135 = load i8*, i8** %134, align 8, !dbg !1222
  call void @g_free(i8* %135), !dbg !1223
  %136 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %9, align 8, !dbg !1224
  %137 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %136, i32 0, i32 6, !dbg !1225
  store i8* null, i8** %137, align 8, !dbg !1226
  br label %138, !dbg !1227

; <label>:138:                                    ; preds = %132, %127
  br label %139, !dbg !1228

; <label>:139:                                    ; preds = %138
  %140 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %9, align 8, !dbg !1230
  %141 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %140, i32 0, i32 9, !dbg !1231
  store %struct._IPADDR* null, %struct._IPADDR** %141, align 8, !dbg !1232
  %142 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %9, align 8, !dbg !1233
  %143 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %142, i32 0, i32 8, !dbg !1234
  store %struct._IPADDR* null, %struct._IPADDR** %143, align 8, !dbg !1235
  br label %144, !dbg !1236

; <label>:144:                                    ; preds = %139, %122
  %145 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1237
  %146 = call i8* @g_hash_table_lookup(%struct._GHashTable* %145, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0)), !dbg !1239
  %147 = icmp ne i8* %146, null, !dbg !1239
  br i1 %147, label %148, label %162, !dbg !1240

; <label>:148:                                    ; preds = %144
  br label %149, !dbg !1241, !llvm.loop !1243

; <label>:149:                                    ; preds = %148
  %150 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %9, align 8, !dbg !1245
  %151 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %150, i32 0, i32 10, !dbg !1249
  %152 = load i8*, i8** %151, align 8, !dbg !1249
  %153 = icmp ne i8* %152, null, !dbg !1245
  br i1 %153, label %154, label %160, !dbg !1245

; <label>:154:                                    ; preds = %149
  %155 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %9, align 8, !dbg !1250
  %156 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %155, i32 0, i32 10, !dbg !1253
  %157 = load i8*, i8** %156, align 8, !dbg !1253
  call void @g_free(i8* %157), !dbg !1254
  %158 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %9, align 8, !dbg !1255
  %159 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %158, i32 0, i32 10, !dbg !1256
  store i8* null, i8** %159, align 8, !dbg !1257
  br label %160, !dbg !1258

; <label>:160:                                    ; preds = %154, %149
  br label %161, !dbg !1259

; <label>:161:                                    ; preds = %160
  br label %162, !dbg !1261

; <label>:162:                                    ; preds = %161, %144
  %163 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1263
  %164 = call i8* @g_hash_table_lookup(%struct._GHashTable* %163, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i32 0, i32 0)), !dbg !1265
  %165 = icmp ne i8* %164, null, !dbg !1265
  br i1 %165, label %166, label %180, !dbg !1266

; <label>:166:                                    ; preds = %162
  br label %167, !dbg !1267, !llvm.loop !1269

; <label>:167:                                    ; preds = %166
  %168 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %9, align 8, !dbg !1271
  %169 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %168, i32 0, i32 7, !dbg !1275
  %170 = load i8*, i8** %169, align 8, !dbg !1275
  %171 = icmp ne i8* %170, null, !dbg !1271
  br i1 %171, label %172, label %178, !dbg !1271

; <label>:172:                                    ; preds = %167
  %173 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %9, align 8, !dbg !1276
  %174 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %173, i32 0, i32 7, !dbg !1279
  %175 = load i8*, i8** %174, align 8, !dbg !1279
  call void @g_free(i8* %175), !dbg !1280
  %176 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %9, align 8, !dbg !1281
  %177 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %176, i32 0, i32 7, !dbg !1282
  store i8* null, i8** %177, align 8, !dbg !1283
  br label %178, !dbg !1284

; <label>:178:                                    ; preds = %172, %167
  br label %179, !dbg !1285

; <label>:179:                                    ; preds = %178
  br label %180, !dbg !1287

; <label>:180:                                    ; preds = %179, %162
  %181 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1289
  %182 = call i8* @g_hash_table_lookup(%struct._GHashTable* %181, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0)), !dbg !1291
  %183 = icmp ne i8* %182, null, !dbg !1291
  br i1 %183, label %184, label %198, !dbg !1292

; <label>:184:                                    ; preds = %180
  br label %185, !dbg !1293, !llvm.loop !1295

; <label>:185:                                    ; preds = %184
  %186 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %9, align 8, !dbg !1297
  %187 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %186, i32 0, i32 12, !dbg !1301
  %188 = load i8*, i8** %187, align 8, !dbg !1301
  %189 = icmp ne i8* %188, null, !dbg !1297
  br i1 %189, label %190, label %196, !dbg !1297

; <label>:190:                                    ; preds = %185
  %191 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %9, align 8, !dbg !1302
  %192 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %191, i32 0, i32 12, !dbg !1305
  %193 = load i8*, i8** %192, align 8, !dbg !1305
  call void @g_free(i8* %193), !dbg !1306
  %194 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %9, align 8, !dbg !1307
  %195 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %194, i32 0, i32 12, !dbg !1308
  store i8* null, i8** %195, align 8, !dbg !1309
  br label %196, !dbg !1310

; <label>:196:                                    ; preds = %190, %185
  br label %197, !dbg !1311

; <label>:197:                                    ; preds = %196
  br label %198, !dbg !1313

; <label>:198:                                    ; preds = %197, %180
  %199 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1315
  %200 = call i8* @g_hash_table_lookup(%struct._GHashTable* %199, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i32 0, i32 0)), !dbg !1317
  %201 = icmp ne i8* %200, null, !dbg !1317
  br i1 %201, label %202, label %216, !dbg !1318

; <label>:202:                                    ; preds = %198
  br label %203, !dbg !1319, !llvm.loop !1321

; <label>:203:                                    ; preds = %202
  %204 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %9, align 8, !dbg !1323
  %205 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %204, i32 0, i32 13, !dbg !1327
  %206 = load i8*, i8** %205, align 8, !dbg !1327
  %207 = icmp ne i8* %206, null, !dbg !1323
  br i1 %207, label %208, label %214, !dbg !1323

; <label>:208:                                    ; preds = %203
  %209 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %9, align 8, !dbg !1328
  %210 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %209, i32 0, i32 13, !dbg !1331
  %211 = load i8*, i8** %210, align 8, !dbg !1331
  call void @g_free(i8* %211), !dbg !1332
  %212 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %9, align 8, !dbg !1333
  %213 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %212, i32 0, i32 13, !dbg !1334
  store i8* null, i8** %213, align 8, !dbg !1335
  br label %214, !dbg !1336

; <label>:214:                                    ; preds = %208, %203
  br label %215, !dbg !1337

; <label>:215:                                    ; preds = %214
  br label %216, !dbg !1339

; <label>:216:                                    ; preds = %215, %198
  %217 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1341
  %218 = call i8* @g_hash_table_lookup(%struct._GHashTable* %217, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0)), !dbg !1343
  %219 = icmp ne i8* %218, null, !dbg !1343
  br i1 %219, label %220, label %234, !dbg !1344

; <label>:220:                                    ; preds = %216
  br label %221, !dbg !1345, !llvm.loop !1347

; <label>:221:                                    ; preds = %220
  %222 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %9, align 8, !dbg !1349
  %223 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %222, i32 0, i32 14, !dbg !1353
  %224 = load i8*, i8** %223, align 8, !dbg !1353
  %225 = icmp ne i8* %224, null, !dbg !1349
  br i1 %225, label %226, label %232, !dbg !1349

; <label>:226:                                    ; preds = %221
  %227 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %9, align 8, !dbg !1354
  %228 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %227, i32 0, i32 14, !dbg !1357
  %229 = load i8*, i8** %228, align 8, !dbg !1357
  call void @g_free(i8* %229), !dbg !1358
  %230 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %9, align 8, !dbg !1359
  %231 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %230, i32 0, i32 14, !dbg !1360
  store i8* null, i8** %231, align 8, !dbg !1361
  br label %232, !dbg !1362

; <label>:232:                                    ; preds = %226, %221
  br label %233, !dbg !1363

; <label>:233:                                    ; preds = %232
  br label %234, !dbg !1365

; <label>:234:                                    ; preds = %233, %216
  br label %235

; <label>:235:                                    ; preds = %234, %43
  %236 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1367
  %237 = call i8* @g_hash_table_lookup(%struct._GHashTable* %236, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0)), !dbg !1368
  store i8* %237, i8** %7, align 8, !dbg !1369
  %238 = load i8*, i8** %7, align 8, !dbg !1370
  %239 = icmp ne i8* %238, null, !dbg !1372
  br i1 %239, label %240, label %245, !dbg !1373

; <label>:240:                                    ; preds = %235
  %241 = load i8*, i8** %7, align 8, !dbg !1374
  %242 = call i32 @atoi(i8* %241) #4, !dbg !1376
  %243 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %9, align 8, !dbg !1377
  %244 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %243, i32 0, i32 18, !dbg !1378
  store i32 %242, i32* %244, align 4, !dbg !1379
  br label %245, !dbg !1377

; <label>:245:                                    ; preds = %240, %235
  %246 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1380
  %247 = call i8* @g_hash_table_lookup(%struct._GHashTable* %246, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0)), !dbg !1381
  store i8* %247, i8** %7, align 8, !dbg !1382
  %248 = load i8*, i8** %7, align 8, !dbg !1383
  %249 = icmp ne i8* %248, null, !dbg !1385
  br i1 %249, label %250, label %255, !dbg !1386

; <label>:250:                                    ; preds = %245
  %251 = load i8*, i8** %7, align 8, !dbg !1387
  %252 = call i32 @atoi(i8* %251) #4, !dbg !1389
  %253 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %9, align 8, !dbg !1390
  %254 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %253, i32 0, i32 19, !dbg !1391
  store i32 %252, i32* %254, align 8, !dbg !1392
  br label %255, !dbg !1390

; <label>:255:                                    ; preds = %250, %245
  %256 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1393
  %257 = call i8* @g_hash_table_lookup(%struct._GHashTable* %256, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0)), !dbg !1394
  store i8* %257, i8** %7, align 8, !dbg !1395
  %258 = load i8*, i8** %7, align 8, !dbg !1396
  %259 = icmp ne i8* %258, null, !dbg !1398
  br i1 %259, label %260, label %265, !dbg !1399

; <label>:260:                                    ; preds = %255
  %261 = load i8*, i8** %7, align 8, !dbg !1400
  %262 = call i32 @atoi(i8* %261) #4, !dbg !1402
  %263 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %9, align 8, !dbg !1403
  %264 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %263, i32 0, i32 20, !dbg !1404
  store i32 %262, i32* %264, align 4, !dbg !1405
  br label %265, !dbg !1403

; <label>:265:                                    ; preds = %260, %255
  %266 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1406
  %267 = call i8* @g_hash_table_lookup(%struct._GHashTable* %266, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0)), !dbg !1407
  store i8* %267, i8** %7, align 8, !dbg !1408
  %268 = load i8*, i8** %7, align 8, !dbg !1409
  %269 = icmp ne i8* %268, null, !dbg !1411
  br i1 %269, label %270, label %275, !dbg !1412

; <label>:270:                                    ; preds = %265
  %271 = load i8*, i8** %7, align 8, !dbg !1413
  %272 = call i32 @atoi(i8* %271) #4, !dbg !1415
  %273 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %9, align 8, !dbg !1416
  %274 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %273, i32 0, i32 21, !dbg !1417
  store i32 %272, i32* %274, align 8, !dbg !1418
  br label %275, !dbg !1416

; <label>:275:                                    ; preds = %270, %265
  %276 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1419
  %277 = call i8* @g_hash_table_lookup(%struct._GHashTable* %276, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i32 0, i32 0)), !dbg !1420
  store i8* %277, i8** %7, align 8, !dbg !1421
  %278 = load i8*, i8** %7, align 8, !dbg !1422
  %279 = icmp ne i8* %278, null, !dbg !1424
  br i1 %279, label %280, label %285, !dbg !1425

; <label>:280:                                    ; preds = %275
  %281 = load i8*, i8** %7, align 8, !dbg !1426
  %282 = call i32 @atoi(i8* %281) #4, !dbg !1428
  %283 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %9, align 8, !dbg !1429
  %284 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %283, i32 0, i32 16, !dbg !1430
  store i32 %282, i32* %284, align 4, !dbg !1431
  br label %285, !dbg !1429

; <label>:285:                                    ; preds = %280, %275
  %286 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1432
  %287 = call i8* @g_hash_table_lookup(%struct._GHashTable* %286, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0)), !dbg !1433
  store i8* %287, i8** %7, align 8, !dbg !1434
  %288 = load i8*, i8** %7, align 8, !dbg !1435
  %289 = icmp ne i8* %288, null, !dbg !1437
  br i1 %289, label %290, label %295, !dbg !1438

; <label>:290:                                    ; preds = %285
  %291 = load i8*, i8** %7, align 8, !dbg !1439
  %292 = call i32 @atoi(i8* %291) #4, !dbg !1441
  %293 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %9, align 8, !dbg !1442
  %294 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %293, i32 0, i32 15, !dbg !1443
  store i32 %292, i32* %294, align 8, !dbg !1444
  br label %295, !dbg !1442

; <label>:295:                                    ; preds = %290, %285
  %296 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1445
  %297 = call i8* @g_hash_table_lookup(%struct._GHashTable* %296, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.44, i32 0, i32 0)), !dbg !1446
  store i8* %297, i8** %7, align 8, !dbg !1447
  %298 = load i8*, i8** %7, align 8, !dbg !1448
  %299 = icmp ne i8* %298, null, !dbg !1450
  br i1 %299, label %300, label %305, !dbg !1451

; <label>:300:                                    ; preds = %295
  %301 = load i8*, i8** %7, align 8, !dbg !1452
  %302 = call i32 @atoi(i8* %301) #4, !dbg !1454
  %303 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %9, align 8, !dbg !1455
  %304 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %303, i32 0, i32 17, !dbg !1456
  store i32 %302, i32* %304, align 8, !dbg !1457
  br label %305, !dbg !1455

; <label>:305:                                    ; preds = %300, %295
  %306 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1458
  %307 = call i8* @g_hash_table_lookup(%struct._GHashTable* %306, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0)), !dbg !1459
  store i8* %307, i8** %7, align 8, !dbg !1460
  %308 = load i8*, i8** %7, align 8, !dbg !1461
  %309 = icmp ne i8* %308, null, !dbg !1463
  br i1 %309, label %310, label %320, !dbg !1464

; <label>:310:                                    ; preds = %305
  %311 = load i8*, i8** %7, align 8, !dbg !1465
  %312 = load i8, i8* %311, align 1, !dbg !1467
  %313 = sext i8 %312 to i32, !dbg !1467
  %314 = icmp ne i32 %313, 0, !dbg !1468
  br i1 %314, label %315, label %320, !dbg !1469

; <label>:315:                                    ; preds = %310
  %316 = load i8*, i8** %7, align 8, !dbg !1470
  %317 = call noalias i8* @g_strdup(i8* %316), !dbg !1472
  %318 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %9, align 8, !dbg !1473
  %319 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %318, i32 0, i32 3, !dbg !1474
  store i8* %317, i8** %319, align 8, !dbg !1475
  br label %320, !dbg !1473

; <label>:320:                                    ; preds = %315, %310, %305
  %321 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1476
  %322 = call i8* @g_hash_table_lookup(%struct._GHashTable* %321, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i32 0, i32 0)), !dbg !1477
  store i8* %322, i8** %7, align 8, !dbg !1478
  %323 = load i8*, i8** %7, align 8, !dbg !1479
  %324 = icmp ne i8* %323, null, !dbg !1481
  br i1 %324, label %325, label %335, !dbg !1482

; <label>:325:                                    ; preds = %320
  %326 = load i8*, i8** %7, align 8, !dbg !1483
  %327 = load i8, i8* %326, align 1, !dbg !1485
  %328 = sext i8 %327 to i32, !dbg !1485
  %329 = icmp ne i32 %328, 0, !dbg !1486
  br i1 %329, label %330, label %335, !dbg !1487

; <label>:330:                                    ; preds = %325
  %331 = load i8*, i8** %7, align 8, !dbg !1488
  %332 = call noalias i8* @g_strdup(i8* %331), !dbg !1490
  %333 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %9, align 8, !dbg !1491
  %334 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %333, i32 0, i32 11, !dbg !1492
  store i8* %332, i8** %334, align 8, !dbg !1493
  br label %335, !dbg !1491

; <label>:335:                                    ; preds = %330, %325, %320
  %336 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1494
  %337 = call i8* @g_hash_table_lookup(%struct._GHashTable* %336, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0)), !dbg !1495
  store i8* %337, i8** %7, align 8, !dbg !1496
  %338 = load i8*, i8** %7, align 8, !dbg !1497
  %339 = icmp ne i8* %338, null, !dbg !1499
  br i1 %339, label %340, label %350, !dbg !1500

; <label>:340:                                    ; preds = %335
  %341 = load i8*, i8** %7, align 8, !dbg !1501
  %342 = load i8, i8* %341, align 1, !dbg !1503
  %343 = sext i8 %342 to i32, !dbg !1503
  %344 = icmp ne i32 %343, 0, !dbg !1504
  br i1 %344, label %345, label %350, !dbg !1505

; <label>:345:                                    ; preds = %340
  %346 = load i8*, i8** %7, align 8, !dbg !1506
  %347 = call noalias i8* @g_strdup(i8* %346), !dbg !1508
  %348 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %9, align 8, !dbg !1509
  %349 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %348, i32 0, i32 4, !dbg !1510
  store i8* %347, i8** %349, align 8, !dbg !1511
  br label %350, !dbg !1509

; <label>:350:                                    ; preds = %345, %340, %335
  %351 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1512
  %352 = call i8* @g_hash_table_lookup(%struct._GHashTable* %351, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0)), !dbg !1513
  store i8* %352, i8** %7, align 8, !dbg !1514
  %353 = load i8*, i8** %7, align 8, !dbg !1515
  %354 = icmp ne i8* %353, null, !dbg !1517
  br i1 %354, label %355, label %365, !dbg !1518

; <label>:355:                                    ; preds = %350
  %356 = load i8*, i8** %7, align 8, !dbg !1519
  %357 = load i8, i8* %356, align 1, !dbg !1521
  %358 = sext i8 %357 to i32, !dbg !1521
  %359 = icmp ne i32 %358, 0, !dbg !1522
  br i1 %359, label %360, label %365, !dbg !1523

; <label>:360:                                    ; preds = %355
  %361 = load i8*, i8** %7, align 8, !dbg !1524
  %362 = call noalias i8* @g_strdup(i8* %361), !dbg !1526
  %363 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %9, align 8, !dbg !1527
  %364 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %363, i32 0, i32 5, !dbg !1528
  store i8* %362, i8** %364, align 8, !dbg !1529
  br label %365, !dbg !1527

; <label>:365:                                    ; preds = %360, %355, %350
  %366 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1530
  %367 = call i8* @g_hash_table_lookup(%struct._GHashTable* %366, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0)), !dbg !1531
  store i8* %367, i8** %7, align 8, !dbg !1532
  %368 = load i8*, i8** %7, align 8, !dbg !1533
  %369 = icmp ne i8* %368, null, !dbg !1535
  br i1 %369, label %370, label %384, !dbg !1536

; <label>:370:                                    ; preds = %365
  %371 = load i8*, i8** %7, align 8, !dbg !1537
  %372 = load i8, i8* %371, align 1, !dbg !1539
  %373 = sext i8 %372 to i32, !dbg !1539
  %374 = icmp ne i32 %373, 0, !dbg !1540
  br i1 %374, label %375, label %384, !dbg !1541

; <label>:375:                                    ; preds = %370
  %376 = load i8*, i8** %7, align 8, !dbg !1542
  %377 = call noalias i8* @g_strdup(i8* %376), !dbg !1544
  %378 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %9, align 8, !dbg !1545
  %379 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %378, i32 0, i32 6, !dbg !1546
  store i8* %377, i8** %379, align 8, !dbg !1547
  %380 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %9, align 8, !dbg !1548
  %381 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %380, i32 0, i32 9, !dbg !1549
  store %struct._IPADDR* null, %struct._IPADDR** %381, align 8, !dbg !1550
  %382 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %9, align 8, !dbg !1551
  %383 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %382, i32 0, i32 8, !dbg !1552
  store %struct._IPADDR* null, %struct._IPADDR** %383, align 8, !dbg !1553
  br label %384, !dbg !1554

; <label>:384:                                    ; preds = %375, %370, %365
  %385 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1555
  %386 = call i8* @g_hash_table_lookup(%struct._GHashTable* %385, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0)), !dbg !1556
  store i8* %386, i8** %7, align 8, !dbg !1557
  %387 = load i8*, i8** %7, align 8, !dbg !1558
  %388 = icmp ne i8* %387, null, !dbg !1560
  br i1 %388, label %389, label %399, !dbg !1561

; <label>:389:                                    ; preds = %384
  %390 = load i8*, i8** %7, align 8, !dbg !1562
  %391 = load i8, i8* %390, align 1, !dbg !1564
  %392 = sext i8 %391 to i32, !dbg !1564
  %393 = icmp ne i32 %392, 0, !dbg !1565
  br i1 %393, label %394, label %399, !dbg !1566

; <label>:394:                                    ; preds = %389
  %395 = load i8*, i8** %7, align 8, !dbg !1567
  %396 = call noalias i8* @g_strdup(i8* %395), !dbg !1569
  %397 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %9, align 8, !dbg !1570
  %398 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %397, i32 0, i32 10, !dbg !1571
  store i8* %396, i8** %398, align 8, !dbg !1572
  br label %399, !dbg !1570

; <label>:399:                                    ; preds = %394, %389, %384
  %400 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1573
  %401 = call i8* @g_hash_table_lookup(%struct._GHashTable* %400, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i32 0, i32 0)), !dbg !1574
  store i8* %401, i8** %7, align 8, !dbg !1575
  %402 = load i8*, i8** %7, align 8, !dbg !1576
  %403 = icmp ne i8* %402, null, !dbg !1578
  br i1 %403, label %404, label %414, !dbg !1579

; <label>:404:                                    ; preds = %399
  %405 = load i8*, i8** %7, align 8, !dbg !1580
  %406 = load i8, i8* %405, align 1, !dbg !1582
  %407 = sext i8 %406 to i32, !dbg !1582
  %408 = icmp ne i32 %407, 0, !dbg !1583
  br i1 %408, label %409, label %414, !dbg !1584

; <label>:409:                                    ; preds = %404
  %410 = load i8*, i8** %7, align 8, !dbg !1585
  %411 = call noalias i8* @g_strdup(i8* %410), !dbg !1587
  %412 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %9, align 8, !dbg !1588
  %413 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %412, i32 0, i32 7, !dbg !1589
  store i8* %411, i8** %413, align 8, !dbg !1590
  br label %414, !dbg !1588

; <label>:414:                                    ; preds = %409, %404, %399
  %415 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1591
  %416 = call i8* @g_hash_table_lookup(%struct._GHashTable* %415, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0)), !dbg !1592
  store i8* %416, i8** %7, align 8, !dbg !1593
  %417 = load i8*, i8** %7, align 8, !dbg !1594
  %418 = icmp ne i8* %417, null, !dbg !1596
  br i1 %418, label %419, label %432, !dbg !1597

; <label>:419:                                    ; preds = %414
  %420 = load i8*, i8** %7, align 8, !dbg !1598
  %421 = load i8, i8* %420, align 1, !dbg !1600
  %422 = sext i8 %421 to i32, !dbg !1600
  %423 = icmp ne i32 %422, 0, !dbg !1601
  br i1 %423, label %424, label %427, !dbg !1600

; <label>:424:                                    ; preds = %419
  %425 = load i8*, i8** %7, align 8, !dbg !1602
  %426 = call noalias i8* @g_strdup(i8* %425), !dbg !1604
  br label %428, !dbg !1605

; <label>:427:                                    ; preds = %419
  br label %428, !dbg !1606

; <label>:428:                                    ; preds = %427, %424
  %429 = phi i8* [ %426, %424 ], [ null, %427 ], !dbg !1608
  %430 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %9, align 8, !dbg !1610
  %431 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %430, i32 0, i32 12, !dbg !1611
  store i8* %429, i8** %431, align 8, !dbg !1612
  br label %432, !dbg !1610

; <label>:432:                                    ; preds = %428, %414
  %433 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1613
  %434 = call i8* @g_hash_table_lookup(%struct._GHashTable* %433, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i32 0, i32 0)), !dbg !1614
  store i8* %434, i8** %7, align 8, !dbg !1615
  %435 = load i8*, i8** %7, align 8, !dbg !1616
  %436 = icmp ne i8* %435, null, !dbg !1618
  br i1 %436, label %437, label %450, !dbg !1619

; <label>:437:                                    ; preds = %432
  %438 = load i8*, i8** %7, align 8, !dbg !1620
  %439 = load i8, i8* %438, align 1, !dbg !1622
  %440 = sext i8 %439 to i32, !dbg !1622
  %441 = icmp ne i32 %440, 0, !dbg !1623
  br i1 %441, label %442, label %445, !dbg !1622

; <label>:442:                                    ; preds = %437
  %443 = load i8*, i8** %7, align 8, !dbg !1624
  %444 = call noalias i8* @g_strdup(i8* %443), !dbg !1626
  br label %446, !dbg !1627

; <label>:445:                                    ; preds = %437
  br label %446, !dbg !1628

; <label>:446:                                    ; preds = %445, %442
  %447 = phi i8* [ %444, %442 ], [ null, %445 ], !dbg !1630
  %448 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %9, align 8, !dbg !1632
  %449 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %448, i32 0, i32 13, !dbg !1633
  store i8* %447, i8** %449, align 8, !dbg !1634
  br label %450, !dbg !1632

; <label>:450:                                    ; preds = %446, %432
  %451 = load %struct._GHashTable*, %struct._GHashTable** %5, align 8, !dbg !1635
  %452 = call i8* @g_hash_table_lookup(%struct._GHashTable* %451, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i32 0, i32 0)), !dbg !1636
  store i8* %452, i8** %7, align 8, !dbg !1637
  %453 = load i8*, i8** %7, align 8, !dbg !1638
  %454 = icmp ne i8* %453, null, !dbg !1640
  br i1 %454, label %455, label %468, !dbg !1641

; <label>:455:                                    ; preds = %450
  %456 = load i8*, i8** %7, align 8, !dbg !1642
  %457 = load i8, i8* %456, align 1, !dbg !1644
  %458 = sext i8 %457 to i32, !dbg !1644
  %459 = icmp ne i32 %458, 0, !dbg !1645
  br i1 %459, label %460, label %463, !dbg !1644

; <label>:460:                                    ; preds = %455
  %461 = load i8*, i8** %7, align 8, !dbg !1646
  %462 = call noalias i8* @g_strdup(i8* %461), !dbg !1648
  br label %464, !dbg !1649

; <label>:463:                                    ; preds = %455
  br label %464, !dbg !1650

; <label>:464:                                    ; preds = %463, %460
  %465 = phi i8* [ %462, %460 ], [ null, %463 ], !dbg !1652
  %466 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %9, align 8, !dbg !1654
  %467 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %466, i32 0, i32 14, !dbg !1655
  store i8* %465, i8** %467, align 8, !dbg !1656
  br label %468, !dbg !1654

; <label>:468:                                    ; preds = %464, %450
  %469 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %9, align 8, !dbg !1657
  call void @ircnet_create(%struct._IRC_CHATNET_REC* %469), !dbg !1658
  %470 = load i8*, i8** %6, align 8, !dbg !1659
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 10, i8* %470), !dbg !1660
  %471 = load i8*, i8** %8, align 8, !dbg !1661
  call void @cmd_params_free(i8* %471), !dbg !1662
  br label %472, !dbg !1663

; <label>:472:                                    ; preds = %468, %40, %22, %13
  ret void, !dbg !1664
}

declare i32 @cmd_get_params(i8*, i8**, i32, ...) #1

declare void @cmd_params_free(i8*) #1

declare i32 @signal_emit(i8*, i32, ...) #1

declare void @signal_stop() #1

declare %struct._CHATNET_REC* @chatnet_find(i8*) #1

declare noalias i8* @g_malloc0_n(i64, i64) #1

declare noalias i8* @g_strdup(i8*) #1

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

declare void @ircnet_create(%struct._IRC_CHATNET_REC*) #1

declare void @server_setup_remove_chatnet(i8*) #1

declare void @channel_setup_remove_chatnet(i8*) #1

declare void @chatnet_remove(%struct._CHATNET_REC*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!277, !278}
!llvm.ident = !{!279}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !213)
!1 = !DIFile(filename: "line308-fe-ircnet.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !10, !15, !24, !35, !66, !192}
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
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !67, line: 3, size: 32, align: 32, elements: !68)
!67 = !DIFile(filename: "module-formats.h", directory: "/home/lichi/Desktop/irssi/task1")
!68 = !{!69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191}
!69 = !DIEnumerator(name: "IRCTXT_MODULE_NAME", value: 0)
!70 = !DIEnumerator(name: "IRCTXT_FILL_1", value: 1)
!71 = !DIEnumerator(name: "IRCTXT_NETSPLIT", value: 2)
!72 = !DIEnumerator(name: "IRCTXT_NETSPLIT_MORE", value: 3)
!73 = !DIEnumerator(name: "IRCTXT_NETSPLIT_JOIN", value: 4)
!74 = !DIEnumerator(name: "IRCTXT_NETSPLIT_JOIN_MORE", value: 5)
!75 = !DIEnumerator(name: "IRCTXT_NO_NETSPLITS", value: 6)
!76 = !DIEnumerator(name: "IRCTXT_NETSPLITS_HEADER", value: 7)
!77 = !DIEnumerator(name: "IRCTXT_NETSPLITS_LINE", value: 8)
!78 = !DIEnumerator(name: "IRCTXT_NETSPLITS_FOOTER", value: 9)
!79 = !DIEnumerator(name: "IRCTXT_NETWORK_ADDED", value: 10)
!80 = !DIEnumerator(name: "IRCTXT_NETWORK_REMOVED", value: 11)
!81 = !DIEnumerator(name: "IRCTXT_NETWORK_NOT_FOUND", value: 12)
!82 = !DIEnumerator(name: "IRCTXT_NETWORK_HEADER", value: 13)
!83 = !DIEnumerator(name: "IRCTXT_NETWORK_LINE", value: 14)
!84 = !DIEnumerator(name: "IRCTXT_NETWORK_FOOTER", value: 15)
!85 = !DIEnumerator(name: "IRCTXT_SETUPSERVER_HEADER", value: 16)
!86 = !DIEnumerator(name: "IRCTXT_SETUPSERVER_LINE", value: 17)
!87 = !DIEnumerator(name: "IRCTXT_SETUPSERVER_FOOTER", value: 18)
!88 = !DIEnumerator(name: "IRCTXT_SASL_SUCCESS", value: 19)
!89 = !DIEnumerator(name: "IRCTXT_SASL_ERROR", value: 20)
!90 = !DIEnumerator(name: "IRCTXT_CAP_REQ", value: 21)
!91 = !DIEnumerator(name: "IRCTXT_CAP_LS", value: 22)
!92 = !DIEnumerator(name: "IRCTXT_CAP_ACK", value: 23)
!93 = !DIEnumerator(name: "IRCTXT_CAP_NAK", value: 24)
!94 = !DIEnumerator(name: "IRCTXT_CAP_LIST", value: 25)
!95 = !DIEnumerator(name: "IRCTXT_CAP_NEW", value: 26)
!96 = !DIEnumerator(name: "IRCTXT_CAP_DEL", value: 27)
!97 = !DIEnumerator(name: "IRCTXT_FILL_2", value: 28)
!98 = !DIEnumerator(name: "IRCTXT_JOINERROR_TOOMANY", value: 29)
!99 = !DIEnumerator(name: "IRCTXT_JOINERROR_FULL", value: 30)
!100 = !DIEnumerator(name: "IRCTXT_JOINERROR_INVITE", value: 31)
!101 = !DIEnumerator(name: "IRCTXT_JOINERROR_BANNED", value: 32)
!102 = !DIEnumerator(name: "IRCTXT_JOINERROR_BAD_KEY", value: 33)
!103 = !DIEnumerator(name: "IRCTXT_JOINERROR_BAD_MASK", value: 34)
!104 = !DIEnumerator(name: "IRCTXT_JOINERROR_UNAVAIL", value: 35)
!105 = !DIEnumerator(name: "IRCTXT_JOINERROR_DUPLICATE", value: 36)
!106 = !DIEnumerator(name: "IRCTXT_CHANNEL_REJOIN", value: 37)
!107 = !DIEnumerator(name: "IRCTXT_INVITING", value: 38)
!108 = !DIEnumerator(name: "IRCTXT_CHANNEL_CREATED", value: 39)
!109 = !DIEnumerator(name: "IRCTXT_CHANNEL_URL", value: 40)
!110 = !DIEnumerator(name: "IRCTXT_TOPIC", value: 41)
!111 = !DIEnumerator(name: "IRCTXT_NO_TOPIC", value: 42)
!112 = !DIEnumerator(name: "IRCTXT_TOPIC_INFO", value: 43)
!113 = !DIEnumerator(name: "IRCTXT_CHANMODE_CHANGE", value: 44)
!114 = !DIEnumerator(name: "IRCTXT_SERVER_CHANMODE_CHANGE", value: 45)
!115 = !DIEnumerator(name: "IRCTXT_CHANNEL_MODE", value: 46)
!116 = !DIEnumerator(name: "IRCTXT_BANTYPE", value: 47)
!117 = !DIEnumerator(name: "IRCTXT_NO_BANS", value: 48)
!118 = !DIEnumerator(name: "IRCTXT_BANLIST", value: 49)
!119 = !DIEnumerator(name: "IRCTXT_BANLIST_LONG", value: 50)
!120 = !DIEnumerator(name: "IRCTXT_EBANLIST", value: 51)
!121 = !DIEnumerator(name: "IRCTXT_EBANLIST_LONG", value: 52)
!122 = !DIEnumerator(name: "IRCTXT_NO_INVITELIST", value: 53)
!123 = !DIEnumerator(name: "IRCTXT_INVITELIST", value: 54)
!124 = !DIEnumerator(name: "IRCTXT_INVITELIST_LONG", value: 55)
!125 = !DIEnumerator(name: "IRCTXT_NO_SUCH_CHANNEL", value: 56)
!126 = !DIEnumerator(name: "IRCTXT_CHANNEL_SYNCED", value: 57)
!127 = !DIEnumerator(name: "IRCTXT_FILL_4", value: 58)
!128 = !DIEnumerator(name: "IRCTXT_USERMODE_CHANGE", value: 59)
!129 = !DIEnumerator(name: "IRCTXT_USER_MODE", value: 60)
!130 = !DIEnumerator(name: "IRCTXT_AWAY", value: 61)
!131 = !DIEnumerator(name: "IRCTXT_UNAWAY", value: 62)
!132 = !DIEnumerator(name: "IRCTXT_NICK_AWAY", value: 63)
!133 = !DIEnumerator(name: "IRCTXT_NO_SUCH_NICK", value: 64)
!134 = !DIEnumerator(name: "IRCTXT_NICK_IN_USE", value: 65)
!135 = !DIEnumerator(name: "IRCTXT_NICK_UNAVAILABLE", value: 66)
!136 = !DIEnumerator(name: "IRCTXT_YOUR_NICK_OWNED", value: 67)
!137 = !DIEnumerator(name: "IRCTXT_FILL_5", value: 68)
!138 = !DIEnumerator(name: "IRCTXT_WHOIS", value: 69)
!139 = !DIEnumerator(name: "IRCTXT_WHOWAS", value: 70)
!140 = !DIEnumerator(name: "IRCTXT_WHOIS_IDLE", value: 71)
!141 = !DIEnumerator(name: "IRCTXT_WHOIS_IDLE_SIGNON", value: 72)
!142 = !DIEnumerator(name: "IRCTXT_WHOIS_SERVER", value: 73)
!143 = !DIEnumerator(name: "IRCTXT_WHOIS_OPER", value: 74)
!144 = !DIEnumerator(name: "IRCTXT_WHOIS_MODES", value: 75)
!145 = !DIEnumerator(name: "IRCTXT_WHOIS_REALHOST", value: 76)
!146 = !DIEnumerator(name: "IRCTXT_WHOIS_USERMODE", value: 77)
!147 = !DIEnumerator(name: "IRCTXT_WHOIS_CHANNELS", value: 78)
!148 = !DIEnumerator(name: "IRCTXT_WHOIS_AWAY", value: 79)
!149 = !DIEnumerator(name: "IRCTXT_WHOIS_SPECIAL", value: 80)
!150 = !DIEnumerator(name: "IRCTXT_WHOIS_EXTRA", value: 81)
!151 = !DIEnumerator(name: "IRCTXT_END_OF_WHOIS", value: 82)
!152 = !DIEnumerator(name: "IRCTXT_END_OF_WHOWAS", value: 83)
!153 = !DIEnumerator(name: "IRCTXT_WHOIS_NOT_FOUND", value: 84)
!154 = !DIEnumerator(name: "IRCTXT_WHO", value: 85)
!155 = !DIEnumerator(name: "IRCTXT_END_OF_WHO", value: 86)
!156 = !DIEnumerator(name: "IRCTXT_FILL_6", value: 87)
!157 = !DIEnumerator(name: "IRCTXT_OWN_NOTICE", value: 88)
!158 = !DIEnumerator(name: "IRCTXT_OWN_ACTION", value: 89)
!159 = !DIEnumerator(name: "IRCTXT_OWN_ACTION_TARGET", value: 90)
!160 = !DIEnumerator(name: "IRCTXT_OWN_CTCP", value: 91)
!161 = !DIEnumerator(name: "IRCTXT_FILL_7", value: 92)
!162 = !DIEnumerator(name: "IRCTXT_NOTICE_SERVER", value: 93)
!163 = !DIEnumerator(name: "IRCTXT_NOTICE_PUBLIC", value: 94)
!164 = !DIEnumerator(name: "IRCTXT_NOTICE_PRIVATE", value: 95)
!165 = !DIEnumerator(name: "IRCTXT_ACTION_PRIVATE", value: 96)
!166 = !DIEnumerator(name: "IRCTXT_ACTION_PRIVATE_QUERY", value: 97)
!167 = !DIEnumerator(name: "IRCTXT_ACTION_PUBLIC", value: 98)
!168 = !DIEnumerator(name: "IRCTXT_ACTION_PUBLIC_CHANNEL", value: 99)
!169 = !DIEnumerator(name: "IRCTXT_FILL_8", value: 100)
!170 = !DIEnumerator(name: "IRCTXT_CTCP_REPLY", value: 101)
!171 = !DIEnumerator(name: "IRCTXT_CTCP_REPLY_CHANNEL", value: 102)
!172 = !DIEnumerator(name: "IRCTXT_CTCP_PING_REPLY", value: 103)
!173 = !DIEnumerator(name: "IRCTXT_CTCP_REQUESTED", value: 104)
!174 = !DIEnumerator(name: "IRCTXT_CTCP_REQUESTED_UNKNOWN", value: 105)
!175 = !DIEnumerator(name: "IRCTXT_FILL_10", value: 106)
!176 = !DIEnumerator(name: "IRCTXT_ONLINE", value: 107)
!177 = !DIEnumerator(name: "IRCTXT_PONG", value: 108)
!178 = !DIEnumerator(name: "IRCTXT_WALLOPS", value: 109)
!179 = !DIEnumerator(name: "IRCTXT_ACTION_WALLOPS", value: 110)
!180 = !DIEnumerator(name: "IRCTXT_KILL", value: 111)
!181 = !DIEnumerator(name: "IRCTXT_KILL_SERVER", value: 112)
!182 = !DIEnumerator(name: "IRCTXT_ERROR", value: 113)
!183 = !DIEnumerator(name: "IRCTXT_UNKNOWN_MODE", value: 114)
!184 = !DIEnumerator(name: "IRCTXT_DEFAULT_EVENT", value: 115)
!185 = !DIEnumerator(name: "IRCTXT_DEFAULT_EVENT_SERVER", value: 116)
!186 = !DIEnumerator(name: "IRCTXT_FILL_11", value: 117)
!187 = !DIEnumerator(name: "IRCTXT_SILENCED", value: 118)
!188 = !DIEnumerator(name: "IRCTXT_UNSILENCED", value: 119)
!189 = !DIEnumerator(name: "IRCTXT_SILENCE_LINE", value: 120)
!190 = !DIEnumerator(name: "IRCTXT_ASK_OPER_PASS", value: 121)
!191 = !DIEnumerator(name: "IRCTXT_ACCEPT_LIST", value: 122)
!192 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !193, line: 25, size: 32, align: 32, elements: !194)
!193 = !DIFile(filename: "../../../src/core/commands.h", directory: "/home/lichi/Desktop/irssi/task1")
!194 = !{!195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212}
!195 = !DIEnumerator(name: "CMDERR_OPTION_UNKNOWN", value: -3)
!196 = !DIEnumerator(name: "CMDERR_OPTION_AMBIGUOUS", value: -2)
!197 = !DIEnumerator(name: "CMDERR_OPTION_ARG_MISSING", value: -1)
!198 = !DIEnumerator(name: "CMDERR_UNKNOWN", value: 0)
!199 = !DIEnumerator(name: "CMDERR_AMBIGUOUS", value: 1)
!200 = !DIEnumerator(name: "CMDERR_ERRNO", value: 2)
!201 = !DIEnumerator(name: "CMDERR_NOT_ENOUGH_PARAMS", value: 3)
!202 = !DIEnumerator(name: "CMDERR_NOT_CONNECTED", value: 4)
!203 = !DIEnumerator(name: "CMDERR_NOT_JOINED", value: 5)
!204 = !DIEnumerator(name: "CMDERR_CHAN_NOT_FOUND", value: 6)
!205 = !DIEnumerator(name: "CMDERR_CHAN_NOT_SYNCED", value: 7)
!206 = !DIEnumerator(name: "CMDERR_ILLEGAL_PROTO", value: 8)
!207 = !DIEnumerator(name: "CMDERR_NOT_GOOD_IDEA", value: 9)
!208 = !DIEnumerator(name: "CMDERR_INVALID_TIME", value: 10)
!209 = !DIEnumerator(name: "CMDERR_INVALID_CHARSET", value: 11)
!210 = !DIEnumerator(name: "CMDERR_EVAL_MAX_RECURSE", value: 12)
!211 = !DIEnumerator(name: "CMDERR_PROGRAM_NOT_FOUND", value: 13)
!212 = !DIEnumerator(name: "CMDERR_NO_SERVER_DEFINED", value: 14)
!213 = !{!214, !221, !222, !258, !273, !275}
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !215, line: 9, baseType: !216)
!215 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{null, !219, !219, !219, !219, !219, !219}
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64, align: 64)
!220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64, align: 64)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_CHATNET_REC", file: !224, line: 4, baseType: !225)
!224 = !DIFile(filename: "../../../src/irc/core/irc.h", directory: "/home/lichi/Desktop/irssi/task1")
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_CHATNET_REC", file: !226, line: 17, size: 1152, align: 64, elements: !227)
!226 = !DIFile(filename: "../../../src/irc/core/irc-chatnets.h", directory: "/home/lichi/Desktop/irssi/task1")
!227 = !{!228, !231, !232, !235, !236, !237, !238, !239, !240, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !225, file: !229, line: 1, baseType: !230, size: 32, align: 32)
!229 = !DIFile(filename: "../../../src/core/chatnet-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!230 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !225, file: !229, line: 2, baseType: !230, size: 32, align: 32, offset: 32)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !225, file: !229, line: 4, baseType: !233, size: 64, align: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64, align: 64)
!234 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !225, file: !229, line: 6, baseType: !233, size: 64, align: 64, offset: 128)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !225, file: !229, line: 7, baseType: !233, size: 64, align: 64, offset: 192)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !225, file: !229, line: 8, baseType: !233, size: 64, align: 64, offset: 256)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "own_host", scope: !225, file: !229, line: 10, baseType: !233, size: 64, align: 64, offset: 320)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "autosendcmd", scope: !225, file: !229, line: 11, baseType: !233, size: 64, align: 64, offset: 384)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !225, file: !229, line: 12, baseType: !241, size: 64, align: 64, offset: 448)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64, align: 64)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !243, line: 99, baseType: !244)
!243 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!244 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !243, line: 99, flags: DIFlagFwdDecl)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !225, file: !229, line: 12, baseType: !241, size: 64, align: 64, offset: 512)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !225, file: !226, line: 20, baseType: !233, size: 64, align: 64, offset: 576)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_nick", scope: !225, file: !226, line: 21, baseType: !233, size: 64, align: 64, offset: 640)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !225, file: !226, line: 23, baseType: !233, size: 64, align: 64, offset: 704)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_username", scope: !225, file: !226, line: 24, baseType: !233, size: 64, align: 64, offset: 768)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !225, file: !226, line: 25, baseType: !233, size: 64, align: 64, offset: 832)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !225, file: !226, line: 27, baseType: !230, size: 32, align: 32, offset: 896)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !225, file: !226, line: 28, baseType: !230, size: 32, align: 32, offset: 928)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !225, file: !226, line: 29, baseType: !230, size: 32, align: 32, offset: 960)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks", scope: !225, file: !226, line: 32, baseType: !230, size: 32, align: 32, offset: 992)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !225, file: !226, line: 32, baseType: !230, size: 32, align: 32, offset: 1024)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes", scope: !225, file: !226, line: 32, baseType: !230, size: 32, align: 32, offset: 1056)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois", scope: !225, file: !226, line: 32, baseType: !230, size: 32, align: 32, offset: 1088)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64, align: 64)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHATNET_REC", file: !243, line: 106, baseType: !260)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHATNET_REC", file: !261, line: 13, size: 576, align: 64, elements: !262)
!261 = !DIFile(filename: "../../../src/core/chatnets.h", directory: "/home/lichi/Desktop/irssi/task1")
!262 = !{!263, !264, !265, !266, !267, !268, !269, !270, !271, !272}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !260, file: !229, line: 1, baseType: !230, size: 32, align: 32)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !260, file: !229, line: 2, baseType: !230, size: 32, align: 32, offset: 32)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !260, file: !229, line: 4, baseType: !233, size: 64, align: 64, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !260, file: !229, line: 6, baseType: !233, size: 64, align: 64, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !260, file: !229, line: 7, baseType: !233, size: 64, align: 64, offset: 192)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !260, file: !229, line: 8, baseType: !233, size: 64, align: 64, offset: 256)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "own_host", scope: !260, file: !229, line: 10, baseType: !233, size: 64, align: 64, offset: 320)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "autosendcmd", scope: !260, file: !229, line: 11, baseType: !233, size: 64, align: 64, offset: 384)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !260, file: !229, line: 12, baseType: !241, size: 64, align: 64, offset: 448)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !260, file: !229, line: 12, baseType: !241, size: 64, align: 64, offset: 512)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !274, line: 77, baseType: !221)
!274 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !274, line: 48, baseType: !276)
!276 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!277 = !{i32 2, !"Dwarf Version", i32 4}
!278 = !{i32 2, !"Debug Info Version", i32 3}
!279 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!280 = distinct !DISubprogram(name: "fe_ircnet_init", scope: !281, file: !281, line: 226, type: !282, isLocal: false, isDefinition: true, scopeLine: 227, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !284)
!281 = !DIFile(filename: "fe-ircnet.c", directory: "/home/lichi/Desktop/irssi/task1")
!282 = !DISubroutineType(types: !283)
!283 = !{null}
!284 = !{}
!285 = !DILocation(line: 228, column: 2, scope: !280)
!286 = !DILocation(line: 229, column: 2, scope: !280)
!287 = !DILocation(line: 230, column: 2, scope: !280)
!288 = !DILocation(line: 231, column: 2, scope: !280)
!289 = !DILocation(line: 232, column: 2, scope: !280)
!290 = !DILocation(line: 233, column: 2, scope: !280)
!291 = !DILocation(line: 235, column: 2, scope: !280)
!292 = !DILocation(line: 237, column: 2, scope: !280)
!293 = !DILocation(line: 239, column: 1, scope: !280)
!294 = distinct !DISubprogram(name: "cmd_network", scope: !281, file: !281, line: 218, type: !295, isLocal: true, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !284)
!295 = !DISubroutineType(types: !296)
!296 = !{null, !297, !299, !631}
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64, align: 64)
!298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !234)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !243, line: 107, baseType: !301)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !302, line: 30, size: 2240, align: 64, elements: !303)
!302 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!303 = !{!304, !306, !307, !308, !532, !537, !538, !539, !540, !541, !542, !543, !544, !545, !549, !550, !554, !555, !556, !560, !565, !566, !567, !568, !569, !570, !571, !572, !578, !579, !580, !581, !582, !586, !590, !594, !598, !602, !607, !700, !707, !711}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !301, file: !305, line: 3, baseType: !230, size: 32, align: 32)
!305 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!306 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !301, file: !305, line: 4, baseType: !230, size: 32, align: 32, offset: 32)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !301, file: !305, line: 6, baseType: !230, size: 32, align: 32, offset: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !301, file: !305, line: 8, baseType: !309, size: 64, align: 64, offset: 128)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64, align: 64)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !243, line: 113, baseType: !311)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !302, line: 25, size: 1920, align: 64, elements: !312)
!312 = !{!313, !315, !316, !317, !318, !319, !320, !321, !322, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !311, file: !314, line: 3, baseType: !230, size: 32, align: 32)
!314 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!315 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !311, file: !314, line: 4, baseType: !230, size: 32, align: 32, offset: 32)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !311, file: !314, line: 6, baseType: !230, size: 32, align: 32, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !311, file: !314, line: 9, baseType: !233, size: 64, align: 64, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !311, file: !314, line: 10, baseType: !230, size: 32, align: 32, offset: 192)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !311, file: !314, line: 11, baseType: !233, size: 64, align: 64, offset: 256)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !311, file: !314, line: 11, baseType: !233, size: 64, align: 64, offset: 320)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !311, file: !314, line: 11, baseType: !233, size: 64, align: 64, offset: 384)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !311, file: !314, line: 13, baseType: !323, size: 16, align: 16, offset: 448)
!323 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !311, file: !314, line: 14, baseType: !233, size: 64, align: 64, offset: 512)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !311, file: !314, line: 15, baseType: !233, size: 64, align: 64, offset: 576)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !311, file: !314, line: 16, baseType: !230, size: 32, align: 32, offset: 640)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !311, file: !314, line: 17, baseType: !233, size: 64, align: 64, offset: 704)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !311, file: !314, line: 19, baseType: !241, size: 64, align: 64, offset: 768)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !311, file: !314, line: 19, baseType: !241, size: 64, align: 64, offset: 832)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !311, file: !314, line: 21, baseType: !233, size: 64, align: 64, offset: 896)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !311, file: !314, line: 22, baseType: !233, size: 64, align: 64, offset: 960)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !311, file: !314, line: 23, baseType: !233, size: 64, align: 64, offset: 1024)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !311, file: !314, line: 24, baseType: !233, size: 64, align: 64, offset: 1088)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !311, file: !314, line: 26, baseType: !233, size: 64, align: 64, offset: 1152)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !311, file: !314, line: 27, baseType: !233, size: 64, align: 64, offset: 1216)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !311, file: !314, line: 28, baseType: !233, size: 64, align: 64, offset: 1280)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !311, file: !314, line: 29, baseType: !233, size: 64, align: 64, offset: 1344)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !311, file: !314, line: 30, baseType: !233, size: 64, align: 64, offset: 1408)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !311, file: !314, line: 31, baseType: !233, size: 64, align: 64, offset: 1472)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !311, file: !314, line: 32, baseType: !233, size: 64, align: 64, offset: 1536)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !311, file: !314, line: 33, baseType: !233, size: 64, align: 64, offset: 1600)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !311, file: !314, line: 35, baseType: !343, size: 64, align: 64, offset: 1664)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64, align: 64)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !345)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !346)
!346 = !{!347, !349, !489, !490, !495, !496, !497, !498, !499, !508, !509, !510, !514, !515, !516, !517, !518, !519, !520, !521}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !345, file: !4, line: 100, baseType: !348, size: 32, align: 32)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !274, line: 49, baseType: !230)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !345, file: !4, line: 101, baseType: !350, size: 64, align: 64, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64, align: 64)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !352)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !353)
!353 = !{!354, !378, !384, !390, !394, !476, !480, !485}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !352, file: !4, line: 133, baseType: !355, size: 64, align: 64)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64, align: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{!358, !343, !359, !361, !364, !365}
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64, align: 64)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !274, line: 46, baseType: !234)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !362, line: 66, baseType: !363)
!362 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!363 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64, align: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64, align: 64)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64, align: 64)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !368, line: 42, baseType: !369)
!368 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !368, line: 44, size: 128, align: 64, elements: !370)
!370 = !{!371, !376, !377}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !369, file: !368, line: 46, baseType: !372, size: 32, align: 32)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !373, line: 36, baseType: !374)
!373 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !362, line: 45, baseType: !375)
!375 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !369, file: !368, line: 47, baseType: !348, size: 32, align: 32, offset: 32)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !369, file: !368, line: 48, baseType: !359, size: 64, align: 64, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !352, file: !4, line: 138, baseType: !379, size: 64, align: 64, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64, align: 64)
!380 = !DISubroutineType(types: !381)
!381 = !{!358, !343, !382, !361, !364, !365}
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64, align: 64)
!383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !360)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !352, file: !4, line: 143, baseType: !385, size: 64, align: 64, offset: 128)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64, align: 64)
!386 = !DISubroutineType(types: !387)
!387 = !{!358, !343, !388, !389, !365}
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !362, line: 51, baseType: !276)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !352, file: !4, line: 147, baseType: !391, size: 64, align: 64, offset: 192)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64, align: 64)
!392 = !DISubroutineType(types: !393)
!393 = !{!358, !343, !365}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !352, file: !4, line: 149, baseType: !395, size: 64, align: 64, offset: 256)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64, align: 64)
!396 = !DISubroutineType(types: !397)
!397 = !{!398, !343, !475}
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64, align: 64)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !400)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !401)
!401 = !{!402, !403, !424, !451, !453, !457, !458, !459, !460, !468, !469, !470, !471}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !400, file: !16, line: 174, baseType: !273, size: 64, align: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !400, file: !16, line: 175, baseType: !404, size: 64, align: 64, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64, align: 64)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !406)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !407)
!407 = !{!408, !412, !413}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !406, file: !16, line: 198, baseType: !409, size: 64, align: 64)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64, align: 64)
!410 = !DISubroutineType(types: !411)
!411 = !{null, !273}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !406, file: !16, line: 199, baseType: !409, size: 64, align: 64, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !406, file: !16, line: 200, baseType: !414, size: 64, align: 64, offset: 128)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64, align: 64)
!415 = !DISubroutineType(types: !416)
!416 = !{null, !273, !398, !417, !423}
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64, align: 64)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !419)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64, align: 64)
!420 = !DISubroutineType(types: !421)
!421 = !{!422, !273}
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !274, line: 50, baseType: !348)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64, align: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !400, file: !16, line: 177, baseType: !425, size: 64, align: 64, offset: 128)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64, align: 64)
!426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !427)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !428)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !429)
!429 = !{!430, !435, !439, !443, !447, !448}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !428, file: !16, line: 216, baseType: !431, size: 64, align: 64)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64, align: 64)
!432 = !DISubroutineType(types: !433)
!433 = !{!422, !398, !434}
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64, align: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !428, file: !16, line: 218, baseType: !436, size: 64, align: 64, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64, align: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{!422, !398}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !428, file: !16, line: 219, baseType: !440, size: 64, align: 64, offset: 128)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64, align: 64)
!441 = !DISubroutineType(types: !442)
!442 = !{!422, !398, !418, !273}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !428, file: !16, line: 222, baseType: !444, size: 64, align: 64, offset: 192)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64, align: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{null, !398}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !428, file: !16, line: 226, baseType: !418, size: 64, align: 64, offset: 256)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !428, file: !16, line: 227, baseType: !449, size: 64, align: 64, offset: 320)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !450)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64, align: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !400, file: !16, line: 178, baseType: !452, size: 32, align: 32, offset: 192)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !274, line: 55, baseType: !375)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !400, file: !16, line: 180, baseType: !454, size: 64, align: 64, offset: 256)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64, align: 64)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !456)
!456 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !400, file: !16, line: 182, baseType: !348, size: 32, align: 32, offset: 320)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !400, file: !16, line: 183, baseType: !452, size: 32, align: 32, offset: 352)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !400, file: !16, line: 184, baseType: !452, size: 32, align: 32, offset: 384)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !400, file: !16, line: 186, baseType: !461, size: 64, align: 64, offset: 448)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64, align: 64)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !463, line: 37, baseType: !464)
!463 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !463, line: 39, size: 128, align: 64, elements: !465)
!465 = !{!466, !467}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !464, file: !463, line: 41, baseType: !273, size: 64, align: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !464, file: !463, line: 42, baseType: !461, size: 64, align: 64, offset: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !400, file: !16, line: 188, baseType: !398, size: 64, align: 64, offset: 512)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !400, file: !16, line: 189, baseType: !398, size: 64, align: 64, offset: 576)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !400, file: !16, line: 191, baseType: !233, size: 64, align: 64, offset: 640)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !400, file: !16, line: 193, baseType: !472, size: 64, align: 64, offset: 704)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64, align: 64)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !474)
!474 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !352, file: !4, line: 151, baseType: !477, size: 64, align: 64, offset: 320)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64, align: 64)
!478 = !DISubroutineType(types: !479)
!479 = !{null, !343}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !352, file: !4, line: 152, baseType: !481, size: 64, align: 64, offset: 384)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64, align: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!358, !343, !484, !365}
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !352, file: !4, line: 155, baseType: !486, size: 64, align: 64, offset: 448)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64, align: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!484, !343}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !345, file: !4, line: 103, baseType: !359, size: 64, align: 64, offset: 128)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !345, file: !4, line: 104, baseType: !491, size: 64, align: 64, offset: 192)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !492, line: 77, baseType: !493)
!492 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64, align: 64)
!494 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !492, line: 77, flags: DIFlagFwdDecl)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !345, file: !4, line: 105, baseType: !491, size: 64, align: 64, offset: 256)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !345, file: !4, line: 106, baseType: !359, size: 64, align: 64, offset: 320)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !345, file: !4, line: 107, baseType: !452, size: 32, align: 32, offset: 384)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !345, file: !4, line: 109, baseType: !361, size: 64, align: 64, offset: 448)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !345, file: !4, line: 110, baseType: !500, size: 64, align: 64, offset: 512)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64, align: 64)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !502, line: 39, baseType: !503)
!502 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !502, line: 41, size: 192, align: 64, elements: !504)
!504 = !{!505, !506, !507}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !503, file: !502, line: 43, baseType: !359, size: 64, align: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !503, file: !502, line: 44, baseType: !361, size: 64, align: 64, offset: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !503, file: !502, line: 45, baseType: !361, size: 64, align: 64, offset: 128)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !345, file: !4, line: 111, baseType: !500, size: 64, align: 64, offset: 576)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !345, file: !4, line: 112, baseType: !500, size: 64, align: 64, offset: 640)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !345, file: !4, line: 113, baseType: !511, size: 48, align: 8, offset: 704)
!511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !360, size: 48, align: 8, elements: !512)
!512 = !{!513}
!513 = !DISubrange(count: 6)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !345, file: !4, line: 117, baseType: !452, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !345, file: !4, line: 118, baseType: !452, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !345, file: !4, line: 119, baseType: !452, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !345, file: !4, line: 120, baseType: !452, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !345, file: !4, line: 121, baseType: !452, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !345, file: !4, line: 122, baseType: !452, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !345, file: !4, line: 124, baseType: !273, size: 64, align: 64, offset: 768)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !345, file: !4, line: 125, baseType: !273, size: 64, align: 64, offset: 832)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !311, file: !314, line: 38, baseType: !375, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !311, file: !314, line: 39, baseType: !375, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !311, file: !314, line: 40, baseType: !375, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !311, file: !314, line: 41, baseType: !375, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !311, file: !314, line: 42, baseType: !375, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !311, file: !314, line: 43, baseType: !375, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !311, file: !314, line: 44, baseType: !375, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !311, file: !314, line: 45, baseType: !375, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !311, file: !314, line: 46, baseType: !233, size: 64, align: 64, offset: 1792)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !311, file: !314, line: 47, baseType: !233, size: 64, align: 64, offset: 1856)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !301, file: !305, line: 9, baseType: !533, size: 64, align: 64, offset: 192)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !534, line: 75, baseType: !535)
!534 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !536, line: 139, baseType: !276)
!536 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!537 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !301, file: !305, line: 10, baseType: !533, size: 64, align: 64, offset: 256)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !301, file: !305, line: 12, baseType: !233, size: 64, align: 64, offset: 320)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !301, file: !305, line: 13, baseType: !233, size: 64, align: 64, offset: 384)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !301, file: !305, line: 15, baseType: !375, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !301, file: !305, line: 16, baseType: !375, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !301, file: !305, line: 17, baseType: !375, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !301, file: !305, line: 18, baseType: !375, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !301, file: !305, line: 19, baseType: !375, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !301, file: !305, line: 21, baseType: !546, size: 64, align: 64, offset: 512)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64, align: 64)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !243, line: 102, baseType: !548)
!548 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !243, line: 102, flags: DIFlagFwdDecl)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !301, file: !305, line: 22, baseType: !230, size: 32, align: 32, offset: 576)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !301, file: !305, line: 25, baseType: !551, size: 128, align: 64, offset: 640)
!551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 128, align: 64, elements: !552)
!552 = !{!553}
!553 = !DISubrange(count: 2)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !301, file: !305, line: 26, baseType: !230, size: 32, align: 32, offset: 768)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !301, file: !305, line: 27, baseType: !230, size: 32, align: 32, offset: 800)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !301, file: !305, line: 29, baseType: !557, size: 64, align: 64, offset: 832)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64, align: 64)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !243, line: 103, baseType: !559)
!559 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !243, line: 103, flags: DIFlagFwdDecl)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !301, file: !305, line: 30, baseType: !561, size: 64, align: 64, offset: 896)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64, align: 64)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !563, line: 37, baseType: !564)
!563 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!564 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !563, line: 37, flags: DIFlagFwdDecl)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !301, file: !305, line: 32, baseType: !233, size: 64, align: 64, offset: 960)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !301, file: !305, line: 33, baseType: !233, size: 64, align: 64, offset: 1024)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !301, file: !305, line: 34, baseType: !233, size: 64, align: 64, offset: 1088)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !301, file: !305, line: 35, baseType: !375, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !301, file: !305, line: 36, baseType: !375, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !301, file: !305, line: 37, baseType: !375, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !301, file: !305, line: 38, baseType: !375, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !301, file: !305, line: 40, baseType: !573, size: 128, align: 64, offset: 1216)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !274, line: 504, baseType: !574)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !274, line: 506, size: 128, align: 64, elements: !575)
!575 = !{!576, !577}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !574, file: !274, line: 508, baseType: !275, size: 64, align: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !574, file: !274, line: 509, baseType: !275, size: 64, align: 64, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !301, file: !305, line: 41, baseType: !533, size: 64, align: 64, offset: 1344)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !301, file: !305, line: 42, baseType: !230, size: 32, align: 32, offset: 1408)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !301, file: !305, line: 44, baseType: !461, size: 64, align: 64, offset: 1472)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !301, file: !305, line: 45, baseType: !461, size: 64, align: 64, offset: 1536)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !301, file: !305, line: 53, baseType: !583, size: 64, align: 64, offset: 1600)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64, align: 64)
!584 = !DISubroutineType(types: !585)
!585 = !{null, !299, !297, !230}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !301, file: !305, line: 55, baseType: !587, size: 64, align: 64, offset: 1664)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64, align: 64)
!588 = !DISubroutineType(types: !589)
!589 = !{!230, !299, !234}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !301, file: !305, line: 57, baseType: !591, size: 64, align: 64, offset: 1728)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64, align: 64)
!592 = !DISubroutineType(types: !593)
!593 = !{!230, !299, !297}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !301, file: !305, line: 60, baseType: !595, size: 64, align: 64, offset: 1792)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64, align: 64)
!596 = !DISubroutineType(types: !597)
!597 = !{!297, !299}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !301, file: !305, line: 62, baseType: !599, size: 64, align: 64, offset: 1856)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64, align: 64)
!600 = !DISubroutineType(types: !601)
!601 = !{null, !299, !297, !297, !230}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !301, file: !305, line: 65, baseType: !603, size: 64, align: 64, offset: 1920)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64, align: 64)
!604 = !DISubroutineType(types: !605)
!605 = !{!606, !299, !297, !297}
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64, align: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !301, file: !305, line: 69, baseType: !608, size: 64, align: 64, offset: 1984)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64, align: 64)
!609 = !DISubroutineType(types: !610)
!610 = !{!611, !299, !297}
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64, align: 64)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !243, line: 109, baseType: !613)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !614, line: 15, size: 1408, align: 64, elements: !615)
!614 = !DIFile(filename: "../../../src/core/channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!615 = !{!616, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !651, !652, !654, !655, !656, !657, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !613, file: !617, line: 3, baseType: !230, size: 32, align: 32)
!617 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!618 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !613, file: !617, line: 4, baseType: !230, size: 32, align: 32, offset: 32)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !613, file: !617, line: 5, baseType: !561, size: 64, align: 64, offset: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !613, file: !617, line: 7, baseType: !221, size: 64, align: 64, offset: 128)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !613, file: !617, line: 8, baseType: !299, size: 64, align: 64, offset: 192)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !613, file: !617, line: 9, baseType: !233, size: 64, align: 64, offset: 256)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !613, file: !617, line: 10, baseType: !233, size: 64, align: 64, offset: 320)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !613, file: !617, line: 11, baseType: !533, size: 64, align: 64, offset: 384)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !613, file: !617, line: 12, baseType: !230, size: 32, align: 32, offset: 448)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !613, file: !617, line: 13, baseType: !233, size: 64, align: 64, offset: 512)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !613, file: !617, line: 15, baseType: !628, size: 64, align: 64, offset: 576)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64, align: 64)
!629 = !DISubroutineType(types: !630)
!630 = !{null, !631}
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64, align: 64)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !243, line: 108, baseType: !633)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !634, line: 5, size: 704, align: 64, elements: !635)
!634 = !DIFile(filename: "../../../src/core/window-item-def.h", directory: "/home/lichi/Desktop/irssi/task1")
!635 = !{!636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !633, file: !617, line: 3, baseType: !230, size: 32, align: 32)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !633, file: !617, line: 4, baseType: !230, size: 32, align: 32, offset: 32)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !633, file: !617, line: 5, baseType: !561, size: 64, align: 64, offset: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !633, file: !617, line: 7, baseType: !221, size: 64, align: 64, offset: 128)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !633, file: !617, line: 8, baseType: !299, size: 64, align: 64, offset: 192)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !633, file: !617, line: 9, baseType: !233, size: 64, align: 64, offset: 256)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !633, file: !617, line: 10, baseType: !233, size: 64, align: 64, offset: 320)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !633, file: !617, line: 11, baseType: !533, size: 64, align: 64, offset: 384)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !633, file: !617, line: 12, baseType: !230, size: 32, align: 32, offset: 448)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !633, file: !617, line: 13, baseType: !233, size: 64, align: 64, offset: 512)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !633, file: !617, line: 15, baseType: !628, size: 64, align: 64, offset: 576)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !633, file: !617, line: 17, baseType: !648, size: 64, align: 64, offset: 640)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64, align: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{!297, !631}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !613, file: !617, line: 17, baseType: !648, size: 64, align: 64, offset: 640)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !613, file: !653, line: 5, baseType: !233, size: 64, align: 64, offset: 704)
!653 = !DIFile(filename: "../../../src/core/channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!654 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !613, file: !653, line: 6, baseType: !233, size: 64, align: 64, offset: 768)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !613, file: !653, line: 7, baseType: !533, size: 64, align: 64, offset: 832)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !613, file: !653, line: 9, baseType: !561, size: 64, align: 64, offset: 896)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !613, file: !653, line: 10, baseType: !658, size: 64, align: 64, offset: 960)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64, align: 64)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !243, line: 111, baseType: !660)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !661, line: 13, size: 576, align: 64, elements: !662)
!661 = !DIFile(filename: "../../../src/core/nicklist.h", directory: "/home/lichi/Desktop/irssi/task1")
!662 = !{!663, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !681, !682}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !660, file: !664, line: 3, baseType: !230, size: 32, align: 32)
!664 = !DIFile(filename: "../../../src/core/nick-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!665 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !660, file: !664, line: 4, baseType: !230, size: 32, align: 32, offset: 32)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "last_check", scope: !660, file: !664, line: 6, baseType: !533, size: 64, align: 64, offset: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !660, file: !664, line: 8, baseType: !233, size: 64, align: 64, offset: 128)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !660, file: !664, line: 9, baseType: !233, size: 64, align: 64, offset: 192)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !660, file: !664, line: 10, baseType: !233, size: 64, align: 64, offset: 256)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "hops", scope: !660, file: !664, line: 11, baseType: !230, size: 32, align: 32, offset: 320)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "gone", scope: !660, file: !664, line: 14, baseType: !375, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "serverop", scope: !660, file: !664, line: 15, baseType: !375, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "send_massjoin", scope: !660, file: !664, line: 18, baseType: !375, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !660, file: !664, line: 19, baseType: !375, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !660, file: !664, line: 20, baseType: !375, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !660, file: !664, line: 21, baseType: !375, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !660, file: !664, line: 22, baseType: !678, size: 64, align: 8, offset: 360)
!678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, size: 64, align: 8, elements: !679)
!679 = !{!680}
!680 = !DISubrange(count: 8)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !660, file: !664, line: 26, baseType: !221, size: 64, align: 64, offset: 448)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !660, file: !664, line: 28, baseType: !658, size: 64, align: 64, offset: 512)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !613, file: !653, line: 12, baseType: !375, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !613, file: !653, line: 13, baseType: !233, size: 64, align: 64, offset: 1088)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !613, file: !653, line: 14, baseType: !230, size: 32, align: 32, offset: 1152)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !613, file: !653, line: 15, baseType: !233, size: 64, align: 64, offset: 1216)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !613, file: !653, line: 17, baseType: !375, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !613, file: !653, line: 18, baseType: !375, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !613, file: !653, line: 19, baseType: !375, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !613, file: !653, line: 20, baseType: !375, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !613, file: !653, line: 22, baseType: !375, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !613, file: !653, line: 23, baseType: !375, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !613, file: !653, line: 24, baseType: !375, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !613, file: !653, line: 25, baseType: !375, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !613, file: !653, line: 26, baseType: !375, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !613, file: !653, line: 31, baseType: !697, size: 64, align: 64, offset: 1344)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64, align: 64)
!698 = !DISubroutineType(types: !699)
!699 = !{!233, !611}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !301, file: !305, line: 70, baseType: !701, size: 64, align: 64, offset: 2048)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64, align: 64)
!702 = !DISubroutineType(types: !703)
!703 = !{!704, !299, !297}
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64, align: 64)
!705 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !243, line: 110, baseType: !706)
!706 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !243, line: 110, flags: DIFlagFwdDecl)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !301, file: !305, line: 71, baseType: !708, size: 64, align: 64, offset: 2112)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64, align: 64)
!709 = !DISubroutineType(types: !710)
!710 = !{!230, !297, !297}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !301, file: !305, line: 73, baseType: !708, size: 64, align: 64, offset: 2176)
!712 = !DILocalVariable(name: "data", arg: 1, scope: !294, file: !281, line: 218, type: !297)
!713 = !DIExpression()
!714 = !DILocation(line: 218, column: 37, scope: !294)
!715 = !DILocalVariable(name: "server", arg: 2, scope: !294, file: !281, line: 218, type: !299)
!716 = !DILocation(line: 218, column: 55, scope: !294)
!717 = !DILocalVariable(name: "item", arg: 3, scope: !294, file: !281, line: 218, type: !631)
!718 = !DILocation(line: 218, column: 76, scope: !294)
!719 = !DILocation(line: 220, column: 7, scope: !720)
!720 = distinct !DILexicalBlock(scope: !294, file: !281, line: 220, column: 6)
!721 = !DILocation(line: 220, column: 6, scope: !720)
!722 = !DILocation(line: 220, column: 12, scope: !720)
!723 = !DILocation(line: 220, column: 6, scope: !294)
!724 = !DILocation(line: 221, column: 3, scope: !720)
!725 = !DILocation(line: 223, column: 29, scope: !720)
!726 = !DILocation(line: 223, column: 35, scope: !720)
!727 = !DILocation(line: 223, column: 43, scope: !720)
!728 = !DILocation(line: 223, column: 3, scope: !720)
!729 = !DILocation(line: 224, column: 1, scope: !294)
!730 = distinct !DISubprogram(name: "cmd_network_list", scope: !281, file: !281, line: 35, type: !282, isLocal: true, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !284)
!731 = !DILocalVariable(name: "str", scope: !730, file: !281, line: 37, type: !500)
!732 = !DILocation(line: 37, column: 11, scope: !730)
!733 = !DILocalVariable(name: "tmp", scope: !730, file: !281, line: 38, type: !461)
!734 = !DILocation(line: 38, column: 10, scope: !730)
!735 = !DILocation(line: 40, column: 8, scope: !730)
!736 = !DILocation(line: 40, column: 6, scope: !730)
!737 = !DILocation(line: 41, column: 2, scope: !730)
!738 = !DILocation(line: 42, column: 13, scope: !739)
!739 = distinct !DILexicalBlock(scope: !730, file: !281, line: 42, column: 2)
!740 = !DILocation(line: 42, column: 11, scope: !739)
!741 = !DILocation(line: 42, column: 7, scope: !739)
!742 = !DILocation(line: 42, column: 23, scope: !743)
!743 = !DILexicalBlockFile(scope: !744, file: !281, discriminator: 1)
!744 = distinct !DILexicalBlock(scope: !739, file: !281, line: 42, column: 2)
!745 = !DILocation(line: 42, column: 27, scope: !743)
!746 = !DILocation(line: 42, column: 2, scope: !743)
!747 = !DILocalVariable(name: "rec", scope: !748, file: !281, line: 43, type: !222)
!748 = distinct !DILexicalBlock(scope: !744, file: !281, line: 42, column: 52)
!749 = !DILocation(line: 43, column: 20, scope: !748)
!750 = !DILocation(line: 43, column: 26, scope: !748)
!751 = !DILocation(line: 43, column: 31, scope: !748)
!752 = !DILocation(line: 45, column: 90, scope: !753)
!753 = distinct !DILexicalBlock(scope: !748, file: !281, line: 45, column: 7)
!754 = !DILocation(line: 45, column: 72, scope: !753)
!755 = !DILocation(line: 45, column: 56, scope: !753)
!756 = !DILocation(line: 45, column: 55, scope: !753)
!757 = !DILocation(line: 45, column: 30, scope: !758)
!758 = !DILexicalBlockFile(scope: !753, file: !281, discriminator: 3)
!759 = !DILocation(line: 45, column: 10, scope: !753)
!760 = !DILocation(line: 45, column: 7, scope: !748)
!761 = !DILocation(line: 45, column: 9, scope: !762)
!762 = !DILexicalBlockFile(scope: !753, file: !281, discriminator: 1)
!763 = !DILocation(line: 45, column: 7, scope: !764)
!764 = !DILexicalBlockFile(scope: !748, file: !281, discriminator: 2)
!765 = !DILocation(line: 46, column: 25, scope: !753)
!766 = !DILocation(line: 48, column: 21, scope: !748)
!767 = !DILocation(line: 48, column: 3, scope: !748)
!768 = !DILocation(line: 49, column: 7, scope: !769)
!769 = distinct !DILexicalBlock(scope: !748, file: !281, line: 49, column: 7)
!770 = !DILocation(line: 49, column: 12, scope: !769)
!771 = !DILocation(line: 49, column: 17, scope: !769)
!772 = !DILocation(line: 49, column: 7, scope: !748)
!773 = !DILocation(line: 50, column: 27, scope: !769)
!774 = !DILocation(line: 50, column: 46, scope: !769)
!775 = !DILocation(line: 50, column: 51, scope: !769)
!776 = !DILocation(line: 50, column: 4, scope: !769)
!777 = !DILocation(line: 51, column: 7, scope: !778)
!778 = distinct !DILexicalBlock(scope: !748, file: !281, line: 51, column: 7)
!779 = !DILocation(line: 51, column: 12, scope: !778)
!780 = !DILocation(line: 51, column: 27, scope: !778)
!781 = !DILocation(line: 51, column: 7, scope: !748)
!782 = !DILocation(line: 52, column: 27, scope: !778)
!783 = !DILocation(line: 52, column: 56, scope: !778)
!784 = !DILocation(line: 52, column: 61, scope: !778)
!785 = !DILocation(line: 52, column: 4, scope: !778)
!786 = !DILocation(line: 53, column: 7, scope: !787)
!787 = distinct !DILexicalBlock(scope: !748, file: !281, line: 53, column: 7)
!788 = !DILocation(line: 53, column: 12, scope: !787)
!789 = !DILocation(line: 53, column: 21, scope: !787)
!790 = !DILocation(line: 53, column: 7, scope: !748)
!791 = !DILocation(line: 54, column: 27, scope: !787)
!792 = !DILocation(line: 54, column: 50, scope: !787)
!793 = !DILocation(line: 54, column: 55, scope: !787)
!794 = !DILocation(line: 54, column: 4, scope: !787)
!795 = !DILocation(line: 55, column: 7, scope: !796)
!796 = distinct !DILexicalBlock(scope: !748, file: !281, line: 55, column: 7)
!797 = !DILocation(line: 55, column: 12, scope: !796)
!798 = !DILocation(line: 55, column: 21, scope: !796)
!799 = !DILocation(line: 55, column: 7, scope: !748)
!800 = !DILocation(line: 56, column: 27, scope: !796)
!801 = !DILocation(line: 56, column: 50, scope: !796)
!802 = !DILocation(line: 56, column: 55, scope: !796)
!803 = !DILocation(line: 56, column: 4, scope: !796)
!804 = !DILocation(line: 57, column: 7, scope: !805)
!805 = distinct !DILexicalBlock(scope: !748, file: !281, line: 57, column: 7)
!806 = !DILocation(line: 57, column: 12, scope: !805)
!807 = !DILocation(line: 57, column: 21, scope: !805)
!808 = !DILocation(line: 57, column: 7, scope: !748)
!809 = !DILocation(line: 58, column: 27, scope: !805)
!810 = !DILocation(line: 58, column: 46, scope: !805)
!811 = !DILocation(line: 58, column: 51, scope: !805)
!812 = !DILocation(line: 58, column: 4, scope: !805)
!813 = !DILocation(line: 59, column: 7, scope: !814)
!814 = distinct !DILexicalBlock(scope: !748, file: !281, line: 59, column: 7)
!815 = !DILocation(line: 59, column: 12, scope: !814)
!816 = !DILocation(line: 59, column: 24, scope: !814)
!817 = !DILocation(line: 59, column: 7, scope: !748)
!818 = !DILocation(line: 60, column: 27, scope: !814)
!819 = !DILocation(line: 60, column: 53, scope: !814)
!820 = !DILocation(line: 60, column: 58, scope: !814)
!821 = !DILocation(line: 60, column: 4, scope: !814)
!822 = !DILocation(line: 61, column: 7, scope: !823)
!823 = distinct !DILexicalBlock(scope: !748, file: !281, line: 61, column: 7)
!824 = !DILocation(line: 61, column: 12, scope: !823)
!825 = !DILocation(line: 61, column: 21, scope: !823)
!826 = !DILocation(line: 61, column: 7, scope: !748)
!827 = !DILocation(line: 62, column: 27, scope: !823)
!828 = !DILocation(line: 62, column: 50, scope: !823)
!829 = !DILocation(line: 62, column: 55, scope: !823)
!830 = !DILocation(line: 62, column: 4, scope: !823)
!831 = !DILocation(line: 63, column: 7, scope: !832)
!832 = distinct !DILexicalBlock(scope: !748, file: !281, line: 63, column: 7)
!833 = !DILocation(line: 63, column: 12, scope: !832)
!834 = !DILocation(line: 63, column: 27, scope: !832)
!835 = !DILocation(line: 63, column: 7, scope: !748)
!836 = !DILocation(line: 64, column: 27, scope: !832)
!837 = !DILocation(line: 64, column: 56, scope: !832)
!838 = !DILocation(line: 64, column: 61, scope: !832)
!839 = !DILocation(line: 64, column: 4, scope: !832)
!840 = !DILocation(line: 65, column: 7, scope: !841)
!841 = distinct !DILexicalBlock(scope: !748, file: !281, line: 65, column: 7)
!842 = !DILocation(line: 65, column: 12, scope: !841)
!843 = !DILocation(line: 65, column: 26, scope: !841)
!844 = !DILocation(line: 65, column: 7, scope: !748)
!845 = !DILocation(line: 66, column: 27, scope: !841)
!846 = !DILocation(line: 66, column: 55, scope: !841)
!847 = !DILocation(line: 66, column: 60, scope: !841)
!848 = !DILocation(line: 66, column: 4, scope: !841)
!849 = !DILocation(line: 67, column: 7, scope: !850)
!850 = distinct !DILexicalBlock(scope: !748, file: !281, line: 67, column: 7)
!851 = !DILocation(line: 67, column: 12, scope: !850)
!852 = !DILocation(line: 67, column: 26, scope: !850)
!853 = !DILocation(line: 67, column: 7, scope: !748)
!854 = !DILocation(line: 68, column: 27, scope: !850)
!855 = !DILocation(line: 68, column: 4, scope: !850)
!856 = !DILocation(line: 69, column: 7, scope: !857)
!857 = distinct !DILexicalBlock(scope: !748, file: !281, line: 69, column: 7)
!858 = !DILocation(line: 69, column: 12, scope: !857)
!859 = !DILocation(line: 69, column: 28, scope: !857)
!860 = !DILocation(line: 69, column: 7, scope: !748)
!861 = !DILocation(line: 70, column: 27, scope: !857)
!862 = !DILocation(line: 70, column: 50, scope: !857)
!863 = !DILocation(line: 70, column: 55, scope: !857)
!864 = !DILocation(line: 70, column: 4, scope: !857)
!865 = !DILocation(line: 71, column: 7, scope: !866)
!866 = distinct !DILexicalBlock(scope: !748, file: !281, line: 71, column: 7)
!867 = !DILocation(line: 71, column: 12, scope: !866)
!868 = !DILocation(line: 71, column: 29, scope: !866)
!869 = !DILocation(line: 71, column: 7, scope: !748)
!870 = !DILocation(line: 72, column: 27, scope: !866)
!871 = !DILocation(line: 72, column: 48, scope: !866)
!872 = !DILocation(line: 72, column: 53, scope: !866)
!873 = !DILocation(line: 72, column: 4, scope: !866)
!874 = !DILocation(line: 73, column: 7, scope: !875)
!875 = distinct !DILexicalBlock(scope: !748, file: !281, line: 73, column: 7)
!876 = !DILocation(line: 73, column: 12, scope: !875)
!877 = !DILocation(line: 73, column: 28, scope: !875)
!878 = !DILocation(line: 73, column: 7, scope: !748)
!879 = !DILocation(line: 74, column: 27, scope: !875)
!880 = !DILocation(line: 74, column: 52, scope: !875)
!881 = !DILocation(line: 74, column: 57, scope: !875)
!882 = !DILocation(line: 74, column: 4, scope: !875)
!883 = !DILocation(line: 76, column: 7, scope: !884)
!884 = distinct !DILexicalBlock(scope: !748, file: !281, line: 76, column: 7)
!885 = !DILocation(line: 76, column: 12, scope: !884)
!886 = !DILocation(line: 76, column: 22, scope: !884)
!887 = !DILocation(line: 76, column: 7, scope: !748)
!888 = !DILocation(line: 77, column: 27, scope: !884)
!889 = !DILocation(line: 77, column: 51, scope: !884)
!890 = !DILocation(line: 77, column: 56, scope: !884)
!891 = !DILocation(line: 77, column: 4, scope: !884)
!892 = !DILocation(line: 78, column: 7, scope: !893)
!893 = distinct !DILexicalBlock(scope: !748, file: !281, line: 78, column: 7)
!894 = !DILocation(line: 78, column: 12, scope: !893)
!895 = !DILocation(line: 78, column: 21, scope: !893)
!896 = !DILocation(line: 78, column: 7, scope: !748)
!897 = !DILocation(line: 79, column: 27, scope: !893)
!898 = !DILocation(line: 79, column: 50, scope: !893)
!899 = !DILocation(line: 79, column: 55, scope: !893)
!900 = !DILocation(line: 79, column: 4, scope: !893)
!901 = !DILocation(line: 80, column: 7, scope: !902)
!902 = distinct !DILexicalBlock(scope: !748, file: !281, line: 80, column: 7)
!903 = !DILocation(line: 80, column: 12, scope: !902)
!904 = !DILocation(line: 80, column: 22, scope: !902)
!905 = !DILocation(line: 80, column: 7, scope: !748)
!906 = !DILocation(line: 81, column: 27, scope: !902)
!907 = !DILocation(line: 81, column: 51, scope: !902)
!908 = !DILocation(line: 81, column: 56, scope: !902)
!909 = !DILocation(line: 81, column: 4, scope: !902)
!910 = !DILocation(line: 82, column: 7, scope: !911)
!911 = distinct !DILexicalBlock(scope: !748, file: !281, line: 82, column: 7)
!912 = !DILocation(line: 82, column: 12, scope: !911)
!913 = !DILocation(line: 82, column: 22, scope: !911)
!914 = !DILocation(line: 82, column: 7, scope: !748)
!915 = !DILocation(line: 83, column: 27, scope: !911)
!916 = !DILocation(line: 83, column: 51, scope: !911)
!917 = !DILocation(line: 83, column: 56, scope: !911)
!918 = !DILocation(line: 83, column: 4, scope: !911)
!919 = !DILocation(line: 85, column: 7, scope: !920)
!920 = distinct !DILexicalBlock(scope: !748, file: !281, line: 85, column: 7)
!921 = !DILocation(line: 85, column: 12, scope: !920)
!922 = !DILocation(line: 85, column: 16, scope: !920)
!923 = !DILocation(line: 85, column: 7, scope: !748)
!924 = !DILocation(line: 85, column: 39, scope: !925)
!925 = !DILexicalBlockFile(scope: !920, file: !281, discriminator: 1)
!926 = !DILocation(line: 85, column: 44, scope: !925)
!927 = !DILocation(line: 85, column: 49, scope: !925)
!928 = !DILocation(line: 85, column: 52, scope: !925)
!929 = !DILocation(line: 85, column: 21, scope: !925)
!930 = !DILocation(line: 86, column: 46, scope: !748)
!931 = !DILocation(line: 86, column: 51, scope: !748)
!932 = !DILocation(line: 86, column: 57, scope: !748)
!933 = !DILocation(line: 86, column: 62, scope: !748)
!934 = !DILocation(line: 86, column: 3, scope: !748)
!935 = !DILocation(line: 88, column: 2, scope: !748)
!936 = !DILocation(line: 42, column: 41, scope: !937)
!937 = !DILexicalBlockFile(scope: !744, file: !281, discriminator: 2)
!938 = !DILocation(line: 42, column: 46, scope: !937)
!939 = !DILocation(line: 42, column: 39, scope: !937)
!940 = !DILocation(line: 42, column: 2, scope: !937)
!941 = distinct !{!941, !942}
!942 = !DILocation(line: 42, column: 2, scope: !730)
!943 = !DILocation(line: 89, column: 16, scope: !730)
!944 = !DILocation(line: 89, column: 2, scope: !730)
!945 = !DILocation(line: 90, column: 2, scope: !730)
!946 = !DILocation(line: 91, column: 1, scope: !730)
!947 = distinct !DISubprogram(name: "cmd_network_add", scope: !281, file: !281, line: 190, type: !948, isLocal: true, isDefinition: true, scopeLine: 191, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !284)
!948 = !DISubroutineType(types: !949)
!949 = !{null, !297}
!950 = !DILocalVariable(name: "data", arg: 1, scope: !947, file: !281, line: 190, type: !297)
!951 = !DILocation(line: 190, column: 41, scope: !947)
!952 = !DILocation(line: 192, column: 25, scope: !947)
!953 = !DILocation(line: 192, column: 2, scope: !947)
!954 = !DILocation(line: 193, column: 1, scope: !947)
!955 = distinct !DISubprogram(name: "cmd_network_modify", scope: !281, file: !281, line: 195, type: !948, isLocal: true, isDefinition: true, scopeLine: 196, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !284)
!956 = !DILocalVariable(name: "data", arg: 1, scope: !955, file: !281, line: 195, type: !297)
!957 = !DILocation(line: 195, column: 44, scope: !955)
!958 = !DILocation(line: 197, column: 25, scope: !955)
!959 = !DILocation(line: 197, column: 2, scope: !955)
!960 = !DILocation(line: 198, column: 1, scope: !955)
!961 = distinct !DISubprogram(name: "cmd_network_remove", scope: !281, file: !281, line: 201, type: !948, isLocal: true, isDefinition: true, scopeLine: 202, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !284)
!962 = !DILocalVariable(name: "data", arg: 1, scope: !961, file: !281, line: 201, type: !297)
!963 = !DILocation(line: 201, column: 44, scope: !961)
!964 = !DILocalVariable(name: "rec", scope: !961, file: !281, line: 203, type: !222)
!965 = !DILocation(line: 203, column: 19, scope: !961)
!966 = !DILocation(line: 205, column: 7, scope: !967)
!967 = distinct !DILexicalBlock(scope: !961, file: !281, line: 205, column: 6)
!968 = !DILocation(line: 205, column: 6, scope: !967)
!969 = !DILocation(line: 205, column: 12, scope: !967)
!970 = !DILocation(line: 205, column: 6, scope: !961)
!971 = !DILocation(line: 205, column: 21, scope: !972)
!972 = !DILexicalBlockFile(scope: !967, file: !281, discriminator: 1)
!973 = distinct !{!973, !974}
!974 = !DILocation(line: 205, column: 21, scope: !967)
!975 = !DILocation(line: 205, column: 26, scope: !976)
!976 = !DILexicalBlockFile(scope: !977, file: !281, discriminator: 2)
!977 = distinct !DILexicalBlock(scope: !967, file: !281, line: 205, column: 24)
!978 = !DILocation(line: 205, column: 108, scope: !979)
!979 = !DILexicalBlockFile(scope: !976, file: !281, discriminator: 4)
!980 = !DILocation(line: 205, column: 123, scope: !976)
!981 = !DILocation(line: 205, column: 131, scope: !982)
!982 = !DILexicalBlockFile(scope: !977, file: !281, discriminator: 3)
!983 = !DILocation(line: 207, column: 102, scope: !961)
!984 = !DILocation(line: 207, column: 89, scope: !961)
!985 = !DILocation(line: 207, column: 71, scope: !986)
!986 = !DILexicalBlockFile(scope: !961, file: !281, discriminator: 1)
!987 = !DILocation(line: 207, column: 55, scope: !961)
!988 = !DILocation(line: 207, column: 54, scope: !961)
!989 = !DILocation(line: 207, column: 29, scope: !990)
!990 = !DILexicalBlockFile(scope: !961, file: !281, discriminator: 2)
!991 = !DILocation(line: 207, column: 9, scope: !961)
!992 = !DILocation(line: 207, column: 6, scope: !961)
!993 = !DILocation(line: 208, column: 6, scope: !994)
!994 = distinct !DILexicalBlock(scope: !961, file: !281, line: 208, column: 6)
!995 = !DILocation(line: 208, column: 10, scope: !994)
!996 = !DILocation(line: 208, column: 6, scope: !961)
!997 = !DILocation(line: 209, column: 53, scope: !994)
!998 = !DILocation(line: 209, column: 3, scope: !994)
!999 = !DILocation(line: 211, column: 31, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !994, file: !281, line: 210, column: 7)
!1001 = !DILocation(line: 211, column: 3, scope: !1000)
!1002 = !DILocation(line: 212, column: 32, scope: !1000)
!1003 = !DILocation(line: 212, column: 3, scope: !1000)
!1004 = !DILocation(line: 213, column: 51, scope: !1000)
!1005 = !DILocation(line: 213, column: 3, scope: !1000)
!1006 = !DILocation(line: 214, column: 53, scope: !1000)
!1007 = !DILocation(line: 214, column: 35, scope: !1000)
!1008 = !DILocation(line: 214, column: 19, scope: !1000)
!1009 = !DILocation(line: 214, column: 3, scope: !1010)
!1010 = !DILexicalBlockFile(scope: !1000, file: !281, discriminator: 1)
!1011 = !DILocation(line: 216, column: 1, scope: !961)
!1012 = distinct !DISubprogram(name: "fe_ircnet_deinit", scope: !281, file: !281, line: 241, type: !282, isLocal: false, isDefinition: true, scopeLine: 242, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !284)
!1013 = !DILocation(line: 243, column: 2, scope: !1012)
!1014 = !DILocation(line: 244, column: 2, scope: !1012)
!1015 = !DILocation(line: 245, column: 2, scope: !1012)
!1016 = !DILocation(line: 246, column: 2, scope: !1012)
!1017 = !DILocation(line: 247, column: 2, scope: !1012)
!1018 = !DILocation(line: 248, column: 2, scope: !1012)
!1019 = !DILocation(line: 249, column: 1, scope: !1012)
!1020 = distinct !DISubprogram(name: "cmd_network_add_modify", scope: !281, file: !281, line: 93, type: !1021, isLocal: true, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !284)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{null, !297, !422}
!1023 = !DILocalVariable(name: "data", arg: 1, scope: !1020, file: !281, line: 93, type: !297)
!1024 = !DILocation(line: 93, column: 48, scope: !1020)
!1025 = !DILocalVariable(name: "add", arg: 2, scope: !1020, file: !281, line: 93, type: !422)
!1026 = !DILocation(line: 93, column: 63, scope: !1020)
!1027 = !DILocalVariable(name: "optlist", scope: !1020, file: !281, line: 95, type: !561)
!1028 = !DILocation(line: 95, column: 14, scope: !1020)
!1029 = !DILocalVariable(name: "name", scope: !1020, file: !281, line: 96, type: !233)
!1030 = !DILocation(line: 96, column: 8, scope: !1020)
!1031 = !DILocalVariable(name: "value", scope: !1020, file: !281, line: 96, type: !233)
!1032 = !DILocation(line: 96, column: 15, scope: !1020)
!1033 = !DILocalVariable(name: "free_arg", scope: !1020, file: !281, line: 97, type: !221)
!1034 = !DILocation(line: 97, column: 8, scope: !1020)
!1035 = !DILocalVariable(name: "rec", scope: !1020, file: !281, line: 98, type: !222)
!1036 = !DILocation(line: 98, column: 19, scope: !1020)
!1037 = !DILocation(line: 100, column: 22, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1020, file: !281, line: 100, column: 6)
!1039 = !DILocation(line: 100, column: 7, scope: !1038)
!1040 = !DILocation(line: 100, column: 6, scope: !1020)
!1041 = !DILocation(line: 102, column: 3, scope: !1038)
!1042 = !DILocation(line: 104, column: 7, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1020, file: !281, line: 104, column: 6)
!1044 = !DILocation(line: 104, column: 6, scope: !1043)
!1045 = !DILocation(line: 104, column: 12, scope: !1043)
!1046 = !DILocation(line: 104, column: 6, scope: !1020)
!1047 = !DILocation(line: 104, column: 21, scope: !1048)
!1048 = !DILexicalBlockFile(scope: !1043, file: !281, discriminator: 1)
!1049 = distinct !{!1049, !1050}
!1050 = !DILocation(line: 104, column: 21, scope: !1043)
!1051 = !DILocation(line: 104, column: 42, scope: !1052)
!1052 = !DILexicalBlockFile(scope: !1053, file: !281, discriminator: 2)
!1053 = distinct !DILexicalBlock(scope: !1043, file: !281, line: 104, column: 24)
!1054 = !DILocation(line: 104, column: 26, scope: !1052)
!1055 = !DILocation(line: 104, column: 53, scope: !1052)
!1056 = distinct !{!1056, !1057}
!1057 = !DILocation(line: 104, column: 53, scope: !1053)
!1058 = !DILocation(line: 104, column: 58, scope: !1059)
!1059 = !DILexicalBlockFile(scope: !1060, file: !281, discriminator: 3)
!1060 = distinct !DILexicalBlock(scope: !1053, file: !281, line: 104, column: 56)
!1061 = !DILocation(line: 104, column: 140, scope: !1062)
!1062 = !DILexicalBlockFile(scope: !1059, file: !281, discriminator: 6)
!1063 = !DILocation(line: 104, column: 155, scope: !1059)
!1064 = !DILocation(line: 104, column: 176, scope: !1065)
!1065 = !DILexicalBlockFile(scope: !1053, file: !281, discriminator: 4)
!1066 = !DILocation(line: 104, column: 176, scope: !1067)
!1067 = !DILexicalBlockFile(scope: !1053, file: !281, discriminator: 5)
!1068 = !DILocation(line: 106, column: 102, scope: !1020)
!1069 = !DILocation(line: 106, column: 89, scope: !1020)
!1070 = !DILocation(line: 106, column: 71, scope: !1071)
!1071 = !DILexicalBlockFile(scope: !1020, file: !281, discriminator: 1)
!1072 = !DILocation(line: 106, column: 55, scope: !1020)
!1073 = !DILocation(line: 106, column: 54, scope: !1020)
!1074 = !DILocation(line: 106, column: 29, scope: !1075)
!1075 = !DILexicalBlockFile(scope: !1020, file: !281, discriminator: 2)
!1076 = !DILocation(line: 106, column: 9, scope: !1020)
!1077 = !DILocation(line: 106, column: 6, scope: !1020)
!1078 = !DILocation(line: 107, column: 6, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1020, file: !281, line: 107, column: 6)
!1080 = !DILocation(line: 107, column: 10, scope: !1079)
!1081 = !DILocation(line: 107, column: 6, scope: !1020)
!1082 = !DILocation(line: 108, column: 7, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1084, file: !281, line: 108, column: 7)
!1084 = distinct !DILexicalBlock(scope: !1079, file: !281, line: 107, column: 18)
!1085 = !DILocation(line: 108, column: 11, scope: !1083)
!1086 = !DILocation(line: 108, column: 7, scope: !1084)
!1087 = !DILocation(line: 109, column: 54, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1083, file: !281, line: 108, column: 19)
!1089 = !DILocation(line: 109, column: 4, scope: !1088)
!1090 = !DILocation(line: 111, column: 20, scope: !1088)
!1091 = !DILocation(line: 111, column: 4, scope: !1088)
!1092 = !DILocation(line: 112, column: 4, scope: !1088)
!1093 = !DILocation(line: 115, column: 30, scope: !1084)
!1094 = !DILocation(line: 115, column: 10, scope: !1084)
!1095 = !DILocation(line: 115, column: 7, scope: !1084)
!1096 = !DILocation(line: 116, column: 24, scope: !1084)
!1097 = !DILocation(line: 116, column: 15, scope: !1084)
!1098 = !DILocation(line: 116, column: 3, scope: !1084)
!1099 = !DILocation(line: 116, column: 8, scope: !1084)
!1100 = !DILocation(line: 116, column: 13, scope: !1084)
!1101 = !DILocation(line: 117, column: 2, scope: !1084)
!1102 = !DILocation(line: 118, column: 27, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1104, file: !281, line: 118, column: 7)
!1104 = distinct !DILexicalBlock(scope: !1079, file: !281, line: 117, column: 9)
!1105 = !DILocation(line: 118, column: 7, scope: !1103)
!1106 = !DILocation(line: 118, column: 7, scope: !1104)
!1107 = !DILocation(line: 118, column: 45, scope: !1108)
!1108 = !DILexicalBlockFile(scope: !1103, file: !281, discriminator: 1)
!1109 = distinct !{!1109, !1110}
!1110 = !DILocation(line: 118, column: 45, scope: !1103)
!1111 = !DILocation(line: 118, column: 54, scope: !1112)
!1112 = !DILexicalBlockFile(scope: !1113, file: !281, discriminator: 2)
!1113 = distinct !DILexicalBlock(scope: !1114, file: !281, line: 118, column: 54)
!1114 = distinct !DILexicalBlock(scope: !1103, file: !281, line: 118, column: 48)
!1115 = !DILocation(line: 118, column: 59, scope: !1112)
!1116 = !DILocation(line: 118, column: 74, scope: !1117)
!1117 = !DILexicalBlockFile(scope: !1118, file: !281, discriminator: 3)
!1118 = distinct !DILexicalBlock(scope: !1113, file: !281, line: 118, column: 65)
!1119 = !DILocation(line: 118, column: 79, scope: !1117)
!1120 = !DILocation(line: 118, column: 67, scope: !1117)
!1121 = !DILocation(line: 118, column: 87, scope: !1117)
!1122 = !DILocation(line: 118, column: 92, scope: !1117)
!1123 = !DILocation(line: 118, column: 98, scope: !1117)
!1124 = !DILocation(line: 118, column: 46, scope: !1117)
!1125 = !DILocation(line: 118, column: 48, scope: !1126)
!1126 = !DILexicalBlockFile(scope: !1114, file: !281, discriminator: 4)
!1127 = !DILocation(line: 118, column: 48, scope: !1128)
!1128 = !DILexicalBlockFile(scope: !1114, file: !281, discriminator: 5)
!1129 = !DILocation(line: 119, column: 27, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1104, file: !281, line: 119, column: 7)
!1131 = !DILocation(line: 119, column: 7, scope: !1130)
!1132 = !DILocation(line: 119, column: 7, scope: !1104)
!1133 = !DILocation(line: 119, column: 55, scope: !1134)
!1134 = !DILexicalBlockFile(scope: !1130, file: !281, discriminator: 1)
!1135 = distinct !{!1135, !1136}
!1136 = !DILocation(line: 119, column: 55, scope: !1130)
!1137 = !DILocation(line: 119, column: 64, scope: !1138)
!1138 = !DILexicalBlockFile(scope: !1139, file: !281, discriminator: 2)
!1139 = distinct !DILexicalBlock(scope: !1140, file: !281, line: 119, column: 64)
!1140 = distinct !DILexicalBlock(scope: !1130, file: !281, line: 119, column: 58)
!1141 = !DILocation(line: 119, column: 69, scope: !1138)
!1142 = !DILocation(line: 119, column: 94, scope: !1143)
!1143 = !DILexicalBlockFile(scope: !1144, file: !281, discriminator: 3)
!1144 = distinct !DILexicalBlock(scope: !1139, file: !281, line: 119, column: 85)
!1145 = !DILocation(line: 119, column: 99, scope: !1143)
!1146 = !DILocation(line: 119, column: 87, scope: !1143)
!1147 = !DILocation(line: 119, column: 117, scope: !1143)
!1148 = !DILocation(line: 119, column: 122, scope: !1143)
!1149 = !DILocation(line: 119, column: 138, scope: !1143)
!1150 = !DILocation(line: 119, column: 56, scope: !1143)
!1151 = !DILocation(line: 119, column: 58, scope: !1152)
!1152 = !DILexicalBlockFile(scope: !1140, file: !281, discriminator: 4)
!1153 = !DILocation(line: 119, column: 58, scope: !1154)
!1154 = !DILexicalBlockFile(scope: !1140, file: !281, discriminator: 5)
!1155 = !DILocation(line: 120, column: 27, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1104, file: !281, line: 120, column: 7)
!1157 = !DILocation(line: 120, column: 7, scope: !1156)
!1158 = !DILocation(line: 120, column: 7, scope: !1104)
!1159 = !DILocation(line: 120, column: 45, scope: !1160)
!1160 = !DILexicalBlockFile(scope: !1156, file: !281, discriminator: 1)
!1161 = distinct !{!1161, !1162}
!1162 = !DILocation(line: 120, column: 45, scope: !1156)
!1163 = !DILocation(line: 120, column: 54, scope: !1164)
!1164 = !DILexicalBlockFile(scope: !1165, file: !281, discriminator: 2)
!1165 = distinct !DILexicalBlock(scope: !1166, file: !281, line: 120, column: 54)
!1166 = distinct !DILexicalBlock(scope: !1156, file: !281, line: 120, column: 48)
!1167 = !DILocation(line: 120, column: 59, scope: !1164)
!1168 = !DILocation(line: 120, column: 78, scope: !1169)
!1169 = !DILexicalBlockFile(scope: !1170, file: !281, discriminator: 3)
!1170 = distinct !DILexicalBlock(scope: !1165, file: !281, line: 120, column: 69)
!1171 = !DILocation(line: 120, column: 83, scope: !1169)
!1172 = !DILocation(line: 120, column: 71, scope: !1169)
!1173 = !DILocation(line: 120, column: 95, scope: !1169)
!1174 = !DILocation(line: 120, column: 100, scope: !1169)
!1175 = !DILocation(line: 120, column: 110, scope: !1169)
!1176 = !DILocation(line: 120, column: 46, scope: !1169)
!1177 = !DILocation(line: 120, column: 48, scope: !1178)
!1178 = !DILexicalBlockFile(scope: !1166, file: !281, discriminator: 4)
!1179 = !DILocation(line: 120, column: 48, scope: !1180)
!1180 = !DILexicalBlockFile(scope: !1166, file: !281, discriminator: 5)
!1181 = !DILocation(line: 121, column: 27, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1104, file: !281, line: 121, column: 7)
!1183 = !DILocation(line: 121, column: 7, scope: !1182)
!1184 = !DILocation(line: 121, column: 7, scope: !1104)
!1185 = !DILocation(line: 121, column: 49, scope: !1186)
!1186 = !DILexicalBlockFile(scope: !1182, file: !281, discriminator: 1)
!1187 = distinct !{!1187, !1188}
!1188 = !DILocation(line: 121, column: 49, scope: !1182)
!1189 = !DILocation(line: 121, column: 58, scope: !1190)
!1190 = !DILexicalBlockFile(scope: !1191, file: !281, discriminator: 2)
!1191 = distinct !DILexicalBlock(scope: !1192, file: !281, line: 121, column: 58)
!1192 = distinct !DILexicalBlock(scope: !1182, file: !281, line: 121, column: 52)
!1193 = !DILocation(line: 121, column: 63, scope: !1190)
!1194 = !DILocation(line: 121, column: 82, scope: !1195)
!1195 = !DILexicalBlockFile(scope: !1196, file: !281, discriminator: 3)
!1196 = distinct !DILexicalBlock(scope: !1191, file: !281, line: 121, column: 73)
!1197 = !DILocation(line: 121, column: 87, scope: !1195)
!1198 = !DILocation(line: 121, column: 75, scope: !1195)
!1199 = !DILocation(line: 121, column: 99, scope: !1195)
!1200 = !DILocation(line: 121, column: 104, scope: !1195)
!1201 = !DILocation(line: 121, column: 114, scope: !1195)
!1202 = !DILocation(line: 121, column: 50, scope: !1195)
!1203 = !DILocation(line: 121, column: 52, scope: !1204)
!1204 = !DILexicalBlockFile(scope: !1192, file: !281, discriminator: 4)
!1205 = !DILocation(line: 121, column: 52, scope: !1206)
!1206 = !DILexicalBlockFile(scope: !1192, file: !281, discriminator: 5)
!1207 = !DILocation(line: 122, column: 27, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1104, file: !281, line: 122, column: 7)
!1209 = !DILocation(line: 122, column: 7, scope: !1208)
!1210 = !DILocation(line: 122, column: 7, scope: !1104)
!1211 = !DILocation(line: 123, column: 4, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1208, file: !281, line: 122, column: 45)
!1213 = distinct !{!1213, !1211}
!1214 = !DILocation(line: 123, column: 13, scope: !1215)
!1215 = !DILexicalBlockFile(scope: !1216, file: !281, discriminator: 1)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !281, line: 123, column: 13)
!1217 = distinct !DILexicalBlock(scope: !1212, file: !281, line: 123, column: 7)
!1218 = !DILocation(line: 123, column: 18, scope: !1215)
!1219 = !DILocation(line: 123, column: 37, scope: !1220)
!1220 = !DILexicalBlockFile(scope: !1221, file: !281, discriminator: 2)
!1221 = distinct !DILexicalBlock(scope: !1216, file: !281, line: 123, column: 28)
!1222 = !DILocation(line: 123, column: 42, scope: !1220)
!1223 = !DILocation(line: 123, column: 30, scope: !1220)
!1224 = !DILocation(line: 123, column: 54, scope: !1220)
!1225 = !DILocation(line: 123, column: 59, scope: !1220)
!1226 = !DILocation(line: 123, column: 69, scope: !1220)
!1227 = !DILocation(line: 123, column: 5, scope: !1220)
!1228 = !DILocation(line: 123, column: 7, scope: !1229)
!1229 = !DILexicalBlockFile(scope: !1217, file: !281, discriminator: 3)
!1230 = !DILocation(line: 124, column: 40, scope: !1212)
!1231 = !DILocation(line: 124, column: 45, scope: !1212)
!1232 = !DILocation(line: 124, column: 53, scope: !1212)
!1233 = !DILocation(line: 124, column: 25, scope: !1212)
!1234 = !DILocation(line: 124, column: 30, scope: !1212)
!1235 = !DILocation(line: 124, column: 38, scope: !1212)
!1236 = !DILocation(line: 125, column: 3, scope: !1212)
!1237 = !DILocation(line: 126, column: 27, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1104, file: !281, line: 126, column: 7)
!1239 = !DILocation(line: 126, column: 7, scope: !1238)
!1240 = !DILocation(line: 126, column: 7, scope: !1104)
!1241 = !DILocation(line: 126, column: 49, scope: !1242)
!1242 = !DILexicalBlockFile(scope: !1238, file: !281, discriminator: 1)
!1243 = distinct !{!1243, !1244}
!1244 = !DILocation(line: 126, column: 49, scope: !1238)
!1245 = !DILocation(line: 126, column: 58, scope: !1246)
!1246 = !DILexicalBlockFile(scope: !1247, file: !281, discriminator: 2)
!1247 = distinct !DILexicalBlock(scope: !1248, file: !281, line: 126, column: 58)
!1248 = distinct !DILexicalBlock(scope: !1238, file: !281, line: 126, column: 52)
!1249 = !DILocation(line: 126, column: 63, scope: !1246)
!1250 = !DILocation(line: 126, column: 82, scope: !1251)
!1251 = !DILexicalBlockFile(scope: !1252, file: !281, discriminator: 3)
!1252 = distinct !DILexicalBlock(scope: !1247, file: !281, line: 126, column: 73)
!1253 = !DILocation(line: 126, column: 87, scope: !1251)
!1254 = !DILocation(line: 126, column: 75, scope: !1251)
!1255 = !DILocation(line: 126, column: 99, scope: !1251)
!1256 = !DILocation(line: 126, column: 104, scope: !1251)
!1257 = !DILocation(line: 126, column: 114, scope: !1251)
!1258 = !DILocation(line: 126, column: 50, scope: !1251)
!1259 = !DILocation(line: 126, column: 52, scope: !1260)
!1260 = !DILexicalBlockFile(scope: !1248, file: !281, discriminator: 4)
!1261 = !DILocation(line: 126, column: 52, scope: !1262)
!1262 = !DILexicalBlockFile(scope: !1248, file: !281, discriminator: 5)
!1263 = !DILocation(line: 127, column: 27, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1104, file: !281, line: 127, column: 7)
!1265 = !DILocation(line: 127, column: 7, scope: !1264)
!1266 = !DILocation(line: 127, column: 7, scope: !1104)
!1267 = !DILocation(line: 127, column: 52, scope: !1268)
!1268 = !DILexicalBlockFile(scope: !1264, file: !281, discriminator: 1)
!1269 = distinct !{!1269, !1270}
!1270 = !DILocation(line: 127, column: 52, scope: !1264)
!1271 = !DILocation(line: 127, column: 61, scope: !1272)
!1272 = !DILexicalBlockFile(scope: !1273, file: !281, discriminator: 2)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !281, line: 127, column: 61)
!1274 = distinct !DILexicalBlock(scope: !1264, file: !281, line: 127, column: 55)
!1275 = !DILocation(line: 127, column: 66, scope: !1272)
!1276 = !DILocation(line: 127, column: 88, scope: !1277)
!1277 = !DILexicalBlockFile(scope: !1278, file: !281, discriminator: 3)
!1278 = distinct !DILexicalBlock(scope: !1273, file: !281, line: 127, column: 79)
!1279 = !DILocation(line: 127, column: 93, scope: !1277)
!1280 = !DILocation(line: 127, column: 81, scope: !1277)
!1281 = !DILocation(line: 127, column: 108, scope: !1277)
!1282 = !DILocation(line: 127, column: 113, scope: !1277)
!1283 = !DILocation(line: 127, column: 126, scope: !1277)
!1284 = !DILocation(line: 127, column: 53, scope: !1277)
!1285 = !DILocation(line: 127, column: 55, scope: !1286)
!1286 = !DILexicalBlockFile(scope: !1274, file: !281, discriminator: 4)
!1287 = !DILocation(line: 127, column: 55, scope: !1288)
!1288 = !DILexicalBlockFile(scope: !1274, file: !281, discriminator: 5)
!1289 = !DILocation(line: 128, column: 27, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1104, file: !281, line: 128, column: 7)
!1291 = !DILocation(line: 128, column: 7, scope: !1290)
!1292 = !DILocation(line: 128, column: 7, scope: !1104)
!1293 = !DILocation(line: 128, column: 55, scope: !1294)
!1294 = !DILexicalBlockFile(scope: !1290, file: !281, discriminator: 1)
!1295 = distinct !{!1295, !1296}
!1296 = !DILocation(line: 128, column: 55, scope: !1290)
!1297 = !DILocation(line: 128, column: 64, scope: !1298)
!1298 = !DILexicalBlockFile(scope: !1299, file: !281, discriminator: 2)
!1299 = distinct !DILexicalBlock(scope: !1300, file: !281, line: 128, column: 64)
!1300 = distinct !DILexicalBlock(scope: !1290, file: !281, line: 128, column: 58)
!1301 = !DILocation(line: 128, column: 69, scope: !1298)
!1302 = !DILocation(line: 128, column: 94, scope: !1303)
!1303 = !DILexicalBlockFile(scope: !1304, file: !281, discriminator: 3)
!1304 = distinct !DILexicalBlock(scope: !1299, file: !281, line: 128, column: 85)
!1305 = !DILocation(line: 128, column: 99, scope: !1303)
!1306 = !DILocation(line: 128, column: 87, scope: !1303)
!1307 = !DILocation(line: 128, column: 117, scope: !1303)
!1308 = !DILocation(line: 128, column: 122, scope: !1303)
!1309 = !DILocation(line: 128, column: 138, scope: !1303)
!1310 = !DILocation(line: 128, column: 56, scope: !1303)
!1311 = !DILocation(line: 128, column: 58, scope: !1312)
!1312 = !DILexicalBlockFile(scope: !1300, file: !281, discriminator: 4)
!1313 = !DILocation(line: 128, column: 58, scope: !1314)
!1314 = !DILexicalBlockFile(scope: !1300, file: !281, discriminator: 5)
!1315 = !DILocation(line: 129, column: 27, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1104, file: !281, line: 129, column: 7)
!1317 = !DILocation(line: 129, column: 7, scope: !1316)
!1318 = !DILocation(line: 129, column: 7, scope: !1104)
!1319 = !DILocation(line: 129, column: 54, scope: !1320)
!1320 = !DILexicalBlockFile(scope: !1316, file: !281, discriminator: 1)
!1321 = distinct !{!1321, !1322}
!1322 = !DILocation(line: 129, column: 54, scope: !1316)
!1323 = !DILocation(line: 129, column: 63, scope: !1324)
!1324 = !DILexicalBlockFile(scope: !1325, file: !281, discriminator: 2)
!1325 = distinct !DILexicalBlock(scope: !1326, file: !281, line: 129, column: 63)
!1326 = distinct !DILexicalBlock(scope: !1316, file: !281, line: 129, column: 57)
!1327 = !DILocation(line: 129, column: 68, scope: !1324)
!1328 = !DILocation(line: 129, column: 92, scope: !1329)
!1329 = !DILexicalBlockFile(scope: !1330, file: !281, discriminator: 3)
!1330 = distinct !DILexicalBlock(scope: !1325, file: !281, line: 129, column: 83)
!1331 = !DILocation(line: 129, column: 97, scope: !1329)
!1332 = !DILocation(line: 129, column: 85, scope: !1329)
!1333 = !DILocation(line: 129, column: 114, scope: !1329)
!1334 = !DILocation(line: 129, column: 119, scope: !1329)
!1335 = !DILocation(line: 129, column: 134, scope: !1329)
!1336 = !DILocation(line: 129, column: 55, scope: !1329)
!1337 = !DILocation(line: 129, column: 57, scope: !1338)
!1338 = !DILexicalBlockFile(scope: !1326, file: !281, discriminator: 4)
!1339 = !DILocation(line: 129, column: 57, scope: !1340)
!1340 = !DILexicalBlockFile(scope: !1326, file: !281, discriminator: 5)
!1341 = !DILocation(line: 130, column: 27, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1104, file: !281, line: 130, column: 7)
!1343 = !DILocation(line: 130, column: 7, scope: !1342)
!1344 = !DILocation(line: 130, column: 7, scope: !1104)
!1345 = !DILocation(line: 130, column: 54, scope: !1346)
!1346 = !DILexicalBlockFile(scope: !1342, file: !281, discriminator: 1)
!1347 = distinct !{!1347, !1348}
!1348 = !DILocation(line: 130, column: 54, scope: !1342)
!1349 = !DILocation(line: 130, column: 63, scope: !1350)
!1350 = !DILexicalBlockFile(scope: !1351, file: !281, discriminator: 2)
!1351 = distinct !DILexicalBlock(scope: !1352, file: !281, line: 130, column: 63)
!1352 = distinct !DILexicalBlock(scope: !1342, file: !281, line: 130, column: 57)
!1353 = !DILocation(line: 130, column: 68, scope: !1350)
!1354 = !DILocation(line: 130, column: 92, scope: !1355)
!1355 = !DILexicalBlockFile(scope: !1356, file: !281, discriminator: 3)
!1356 = distinct !DILexicalBlock(scope: !1351, file: !281, line: 130, column: 83)
!1357 = !DILocation(line: 130, column: 97, scope: !1355)
!1358 = !DILocation(line: 130, column: 85, scope: !1355)
!1359 = !DILocation(line: 130, column: 114, scope: !1355)
!1360 = !DILocation(line: 130, column: 119, scope: !1355)
!1361 = !DILocation(line: 130, column: 134, scope: !1355)
!1362 = !DILocation(line: 130, column: 55, scope: !1355)
!1363 = !DILocation(line: 130, column: 57, scope: !1364)
!1364 = !DILexicalBlockFile(scope: !1352, file: !281, discriminator: 4)
!1365 = !DILocation(line: 130, column: 57, scope: !1366)
!1366 = !DILexicalBlockFile(scope: !1352, file: !281, discriminator: 5)
!1367 = !DILocation(line: 133, column: 30, scope: !1020)
!1368 = !DILocation(line: 133, column: 10, scope: !1020)
!1369 = !DILocation(line: 133, column: 8, scope: !1020)
!1370 = !DILocation(line: 134, column: 6, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1020, file: !281, line: 134, column: 6)
!1372 = !DILocation(line: 134, column: 12, scope: !1371)
!1373 = !DILocation(line: 134, column: 6, scope: !1020)
!1374 = !DILocation(line: 134, column: 42, scope: !1375)
!1375 = !DILexicalBlockFile(scope: !1371, file: !281, discriminator: 1)
!1376 = !DILocation(line: 134, column: 37, scope: !1375)
!1377 = !DILocation(line: 134, column: 20, scope: !1375)
!1378 = !DILocation(line: 134, column: 25, scope: !1375)
!1379 = !DILocation(line: 134, column: 35, scope: !1375)
!1380 = !DILocation(line: 135, column: 30, scope: !1020)
!1381 = !DILocation(line: 135, column: 10, scope: !1020)
!1382 = !DILocation(line: 135, column: 8, scope: !1020)
!1383 = !DILocation(line: 136, column: 6, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1020, file: !281, line: 136, column: 6)
!1385 = !DILocation(line: 136, column: 12, scope: !1384)
!1386 = !DILocation(line: 136, column: 6, scope: !1020)
!1387 = !DILocation(line: 136, column: 41, scope: !1388)
!1388 = !DILexicalBlockFile(scope: !1384, file: !281, discriminator: 1)
!1389 = !DILocation(line: 136, column: 36, scope: !1388)
!1390 = !DILocation(line: 136, column: 20, scope: !1388)
!1391 = !DILocation(line: 136, column: 25, scope: !1388)
!1392 = !DILocation(line: 136, column: 34, scope: !1388)
!1393 = !DILocation(line: 137, column: 30, scope: !1020)
!1394 = !DILocation(line: 137, column: 10, scope: !1020)
!1395 = !DILocation(line: 137, column: 8, scope: !1020)
!1396 = !DILocation(line: 138, column: 6, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1020, file: !281, line: 138, column: 6)
!1398 = !DILocation(line: 138, column: 12, scope: !1397)
!1399 = !DILocation(line: 138, column: 6, scope: !1020)
!1400 = !DILocation(line: 138, column: 42, scope: !1401)
!1401 = !DILexicalBlockFile(scope: !1397, file: !281, discriminator: 1)
!1402 = !DILocation(line: 138, column: 37, scope: !1401)
!1403 = !DILocation(line: 138, column: 20, scope: !1401)
!1404 = !DILocation(line: 138, column: 25, scope: !1401)
!1405 = !DILocation(line: 138, column: 35, scope: !1401)
!1406 = !DILocation(line: 139, column: 30, scope: !1020)
!1407 = !DILocation(line: 139, column: 10, scope: !1020)
!1408 = !DILocation(line: 139, column: 8, scope: !1020)
!1409 = !DILocation(line: 140, column: 6, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1020, file: !281, line: 140, column: 6)
!1411 = !DILocation(line: 140, column: 12, scope: !1410)
!1412 = !DILocation(line: 140, column: 6, scope: !1020)
!1413 = !DILocation(line: 140, column: 42, scope: !1414)
!1414 = !DILexicalBlockFile(scope: !1410, file: !281, discriminator: 1)
!1415 = !DILocation(line: 140, column: 37, scope: !1414)
!1416 = !DILocation(line: 140, column: 20, scope: !1414)
!1417 = !DILocation(line: 140, column: 25, scope: !1414)
!1418 = !DILocation(line: 140, column: 35, scope: !1414)
!1419 = !DILocation(line: 142, column: 30, scope: !1020)
!1420 = !DILocation(line: 142, column: 10, scope: !1020)
!1421 = !DILocation(line: 142, column: 8, scope: !1020)
!1422 = !DILocation(line: 143, column: 6, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1020, file: !281, line: 143, column: 6)
!1424 = !DILocation(line: 143, column: 12, scope: !1423)
!1425 = !DILocation(line: 143, column: 6, scope: !1020)
!1426 = !DILocation(line: 143, column: 48, scope: !1427)
!1427 = !DILexicalBlockFile(scope: !1423, file: !281, discriminator: 1)
!1428 = !DILocation(line: 143, column: 43, scope: !1427)
!1429 = !DILocation(line: 143, column: 20, scope: !1427)
!1430 = !DILocation(line: 143, column: 25, scope: !1427)
!1431 = !DILocation(line: 143, column: 41, scope: !1427)
!1432 = !DILocation(line: 144, column: 30, scope: !1020)
!1433 = !DILocation(line: 144, column: 10, scope: !1020)
!1434 = !DILocation(line: 144, column: 8, scope: !1020)
!1435 = !DILocation(line: 145, column: 6, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1020, file: !281, line: 145, column: 6)
!1437 = !DILocation(line: 145, column: 12, scope: !1436)
!1438 = !DILocation(line: 145, column: 6, scope: !1020)
!1439 = !DILocation(line: 145, column: 49, scope: !1440)
!1440 = !DILexicalBlockFile(scope: !1436, file: !281, discriminator: 1)
!1441 = !DILocation(line: 145, column: 44, scope: !1440)
!1442 = !DILocation(line: 145, column: 20, scope: !1440)
!1443 = !DILocation(line: 145, column: 25, scope: !1440)
!1444 = !DILocation(line: 145, column: 42, scope: !1440)
!1445 = !DILocation(line: 146, column: 30, scope: !1020)
!1446 = !DILocation(line: 146, column: 10, scope: !1020)
!1447 = !DILocation(line: 146, column: 8, scope: !1020)
!1448 = !DILocation(line: 147, column: 6, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1020, file: !281, line: 147, column: 6)
!1450 = !DILocation(line: 147, column: 12, scope: !1449)
!1451 = !DILocation(line: 147, column: 6, scope: !1020)
!1452 = !DILocation(line: 147, column: 48, scope: !1453)
!1453 = !DILexicalBlockFile(scope: !1449, file: !281, discriminator: 1)
!1454 = !DILocation(line: 147, column: 43, scope: !1453)
!1455 = !DILocation(line: 147, column: 20, scope: !1453)
!1456 = !DILocation(line: 147, column: 25, scope: !1453)
!1457 = !DILocation(line: 147, column: 41, scope: !1453)
!1458 = !DILocation(line: 149, column: 30, scope: !1020)
!1459 = !DILocation(line: 149, column: 10, scope: !1020)
!1460 = !DILocation(line: 149, column: 8, scope: !1020)
!1461 = !DILocation(line: 150, column: 6, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1020, file: !281, line: 150, column: 6)
!1463 = !DILocation(line: 150, column: 12, scope: !1462)
!1464 = !DILocation(line: 150, column: 19, scope: !1462)
!1465 = !DILocation(line: 150, column: 23, scope: !1466)
!1466 = !DILexicalBlockFile(scope: !1462, file: !281, discriminator: 1)
!1467 = !DILocation(line: 150, column: 22, scope: !1466)
!1468 = !DILocation(line: 150, column: 29, scope: !1466)
!1469 = !DILocation(line: 150, column: 6, scope: !1466)
!1470 = !DILocation(line: 150, column: 59, scope: !1471)
!1471 = !DILexicalBlockFile(scope: !1462, file: !281, discriminator: 2)
!1472 = !DILocation(line: 150, column: 50, scope: !1471)
!1473 = !DILocation(line: 150, column: 38, scope: !1471)
!1474 = !DILocation(line: 150, column: 43, scope: !1471)
!1475 = !DILocation(line: 150, column: 48, scope: !1471)
!1476 = !DILocation(line: 151, column: 30, scope: !1020)
!1477 = !DILocation(line: 151, column: 10, scope: !1020)
!1478 = !DILocation(line: 151, column: 8, scope: !1020)
!1479 = !DILocation(line: 152, column: 6, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1020, file: !281, line: 152, column: 6)
!1481 = !DILocation(line: 152, column: 12, scope: !1480)
!1482 = !DILocation(line: 152, column: 19, scope: !1480)
!1483 = !DILocation(line: 152, column: 23, scope: !1484)
!1484 = !DILexicalBlockFile(scope: !1480, file: !281, discriminator: 1)
!1485 = !DILocation(line: 152, column: 22, scope: !1484)
!1486 = !DILocation(line: 152, column: 29, scope: !1484)
!1487 = !DILocation(line: 152, column: 6, scope: !1484)
!1488 = !DILocation(line: 152, column: 69, scope: !1489)
!1489 = !DILexicalBlockFile(scope: !1480, file: !281, discriminator: 2)
!1490 = !DILocation(line: 152, column: 60, scope: !1489)
!1491 = !DILocation(line: 152, column: 38, scope: !1489)
!1492 = !DILocation(line: 152, column: 43, scope: !1489)
!1493 = !DILocation(line: 152, column: 58, scope: !1489)
!1494 = !DILocation(line: 153, column: 30, scope: !1020)
!1495 = !DILocation(line: 153, column: 10, scope: !1020)
!1496 = !DILocation(line: 153, column: 8, scope: !1020)
!1497 = !DILocation(line: 154, column: 6, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1020, file: !281, line: 154, column: 6)
!1499 = !DILocation(line: 154, column: 12, scope: !1498)
!1500 = !DILocation(line: 154, column: 19, scope: !1498)
!1501 = !DILocation(line: 154, column: 23, scope: !1502)
!1502 = !DILexicalBlockFile(scope: !1498, file: !281, discriminator: 1)
!1503 = !DILocation(line: 154, column: 22, scope: !1502)
!1504 = !DILocation(line: 154, column: 29, scope: !1502)
!1505 = !DILocation(line: 154, column: 6, scope: !1502)
!1506 = !DILocation(line: 154, column: 63, scope: !1507)
!1507 = !DILexicalBlockFile(scope: !1498, file: !281, discriminator: 2)
!1508 = !DILocation(line: 154, column: 54, scope: !1507)
!1509 = !DILocation(line: 154, column: 38, scope: !1507)
!1510 = !DILocation(line: 154, column: 43, scope: !1507)
!1511 = !DILocation(line: 154, column: 52, scope: !1507)
!1512 = !DILocation(line: 155, column: 30, scope: !1020)
!1513 = !DILocation(line: 155, column: 10, scope: !1020)
!1514 = !DILocation(line: 155, column: 8, scope: !1020)
!1515 = !DILocation(line: 156, column: 6, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1020, file: !281, line: 156, column: 6)
!1517 = !DILocation(line: 156, column: 12, scope: !1516)
!1518 = !DILocation(line: 156, column: 19, scope: !1516)
!1519 = !DILocation(line: 156, column: 23, scope: !1520)
!1520 = !DILexicalBlockFile(scope: !1516, file: !281, discriminator: 1)
!1521 = !DILocation(line: 156, column: 22, scope: !1520)
!1522 = !DILocation(line: 156, column: 29, scope: !1520)
!1523 = !DILocation(line: 156, column: 6, scope: !1520)
!1524 = !DILocation(line: 156, column: 63, scope: !1525)
!1525 = !DILexicalBlockFile(scope: !1516, file: !281, discriminator: 2)
!1526 = !DILocation(line: 156, column: 54, scope: !1525)
!1527 = !DILocation(line: 156, column: 38, scope: !1525)
!1528 = !DILocation(line: 156, column: 43, scope: !1525)
!1529 = !DILocation(line: 156, column: 52, scope: !1525)
!1530 = !DILocation(line: 158, column: 30, scope: !1020)
!1531 = !DILocation(line: 158, column: 10, scope: !1020)
!1532 = !DILocation(line: 158, column: 8, scope: !1020)
!1533 = !DILocation(line: 159, column: 6, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1020, file: !281, line: 159, column: 6)
!1535 = !DILocation(line: 159, column: 12, scope: !1534)
!1536 = !DILocation(line: 159, column: 19, scope: !1534)
!1537 = !DILocation(line: 159, column: 23, scope: !1538)
!1538 = !DILexicalBlockFile(scope: !1534, file: !281, discriminator: 1)
!1539 = !DILocation(line: 159, column: 22, scope: !1538)
!1540 = !DILocation(line: 159, column: 29, scope: !1538)
!1541 = !DILocation(line: 159, column: 6, scope: !1538)
!1542 = !DILocation(line: 160, column: 28, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1534, file: !281, line: 159, column: 38)
!1544 = !DILocation(line: 160, column: 19, scope: !1543)
!1545 = !DILocation(line: 160, column: 3, scope: !1543)
!1546 = !DILocation(line: 160, column: 8, scope: !1543)
!1547 = !DILocation(line: 160, column: 17, scope: !1543)
!1548 = !DILocation(line: 161, column: 18, scope: !1543)
!1549 = !DILocation(line: 161, column: 23, scope: !1543)
!1550 = !DILocation(line: 161, column: 31, scope: !1543)
!1551 = !DILocation(line: 161, column: 3, scope: !1543)
!1552 = !DILocation(line: 161, column: 8, scope: !1543)
!1553 = !DILocation(line: 161, column: 16, scope: !1543)
!1554 = !DILocation(line: 162, column: 2, scope: !1543)
!1555 = !DILocation(line: 164, column: 30, scope: !1020)
!1556 = !DILocation(line: 164, column: 10, scope: !1020)
!1557 = !DILocation(line: 164, column: 8, scope: !1020)
!1558 = !DILocation(line: 165, column: 6, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1020, file: !281, line: 165, column: 6)
!1560 = !DILocation(line: 165, column: 12, scope: !1559)
!1561 = !DILocation(line: 165, column: 19, scope: !1559)
!1562 = !DILocation(line: 165, column: 23, scope: !1563)
!1563 = !DILexicalBlockFile(scope: !1559, file: !281, discriminator: 1)
!1564 = !DILocation(line: 165, column: 22, scope: !1563)
!1565 = !DILocation(line: 165, column: 29, scope: !1563)
!1566 = !DILocation(line: 165, column: 6, scope: !1563)
!1567 = !DILocation(line: 165, column: 63, scope: !1568)
!1568 = !DILexicalBlockFile(scope: !1559, file: !281, discriminator: 2)
!1569 = !DILocation(line: 165, column: 54, scope: !1568)
!1570 = !DILocation(line: 165, column: 38, scope: !1568)
!1571 = !DILocation(line: 165, column: 43, scope: !1568)
!1572 = !DILocation(line: 165, column: 52, scope: !1568)
!1573 = !DILocation(line: 166, column: 30, scope: !1020)
!1574 = !DILocation(line: 166, column: 10, scope: !1020)
!1575 = !DILocation(line: 166, column: 8, scope: !1020)
!1576 = !DILocation(line: 167, column: 6, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1020, file: !281, line: 167, column: 6)
!1578 = !DILocation(line: 167, column: 12, scope: !1577)
!1579 = !DILocation(line: 167, column: 19, scope: !1577)
!1580 = !DILocation(line: 167, column: 23, scope: !1581)
!1581 = !DILexicalBlockFile(scope: !1577, file: !281, discriminator: 1)
!1582 = !DILocation(line: 167, column: 22, scope: !1581)
!1583 = !DILocation(line: 167, column: 29, scope: !1581)
!1584 = !DILocation(line: 167, column: 6, scope: !1581)
!1585 = !DILocation(line: 167, column: 66, scope: !1586)
!1586 = !DILexicalBlockFile(scope: !1577, file: !281, discriminator: 2)
!1587 = !DILocation(line: 167, column: 57, scope: !1586)
!1588 = !DILocation(line: 167, column: 38, scope: !1586)
!1589 = !DILocation(line: 167, column: 43, scope: !1586)
!1590 = !DILocation(line: 167, column: 55, scope: !1586)
!1591 = !DILocation(line: 170, column: 30, scope: !1020)
!1592 = !DILocation(line: 170, column: 10, scope: !1020)
!1593 = !DILocation(line: 170, column: 8, scope: !1020)
!1594 = !DILocation(line: 171, column: 6, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1020, file: !281, line: 171, column: 6)
!1596 = !DILocation(line: 171, column: 12, scope: !1595)
!1597 = !DILocation(line: 171, column: 6, scope: !1020)
!1598 = !DILocation(line: 171, column: 43, scope: !1599)
!1599 = !DILexicalBlockFile(scope: !1595, file: !281, discriminator: 1)
!1600 = !DILocation(line: 171, column: 42, scope: !1599)
!1601 = !DILocation(line: 171, column: 49, scope: !1599)
!1602 = !DILocation(line: 171, column: 68, scope: !1603)
!1603 = !DILexicalBlockFile(scope: !1595, file: !281, discriminator: 2)
!1604 = !DILocation(line: 171, column: 59, scope: !1603)
!1605 = !DILocation(line: 171, column: 42, scope: !1603)
!1606 = !DILocation(line: 171, column: 42, scope: !1607)
!1607 = !DILexicalBlockFile(scope: !1595, file: !281, discriminator: 3)
!1608 = !DILocation(line: 171, column: 42, scope: !1609)
!1609 = !DILexicalBlockFile(scope: !1595, file: !281, discriminator: 4)
!1610 = !DILocation(line: 171, column: 20, scope: !1609)
!1611 = !DILocation(line: 171, column: 25, scope: !1609)
!1612 = !DILocation(line: 171, column: 40, scope: !1609)
!1613 = !DILocation(line: 172, column: 30, scope: !1020)
!1614 = !DILocation(line: 172, column: 10, scope: !1020)
!1615 = !DILocation(line: 172, column: 8, scope: !1020)
!1616 = !DILocation(line: 173, column: 6, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1020, file: !281, line: 173, column: 6)
!1618 = !DILocation(line: 173, column: 12, scope: !1617)
!1619 = !DILocation(line: 173, column: 6, scope: !1020)
!1620 = !DILocation(line: 173, column: 42, scope: !1621)
!1621 = !DILexicalBlockFile(scope: !1617, file: !281, discriminator: 1)
!1622 = !DILocation(line: 173, column: 41, scope: !1621)
!1623 = !DILocation(line: 173, column: 48, scope: !1621)
!1624 = !DILocation(line: 173, column: 67, scope: !1625)
!1625 = !DILexicalBlockFile(scope: !1617, file: !281, discriminator: 2)
!1626 = !DILocation(line: 173, column: 58, scope: !1625)
!1627 = !DILocation(line: 173, column: 41, scope: !1625)
!1628 = !DILocation(line: 173, column: 41, scope: !1629)
!1629 = !DILexicalBlockFile(scope: !1617, file: !281, discriminator: 3)
!1630 = !DILocation(line: 173, column: 41, scope: !1631)
!1631 = !DILexicalBlockFile(scope: !1617, file: !281, discriminator: 4)
!1632 = !DILocation(line: 173, column: 20, scope: !1631)
!1633 = !DILocation(line: 173, column: 25, scope: !1631)
!1634 = !DILocation(line: 173, column: 39, scope: !1631)
!1635 = !DILocation(line: 174, column: 30, scope: !1020)
!1636 = !DILocation(line: 174, column: 10, scope: !1020)
!1637 = !DILocation(line: 174, column: 8, scope: !1020)
!1638 = !DILocation(line: 175, column: 6, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1020, file: !281, line: 175, column: 6)
!1640 = !DILocation(line: 175, column: 12, scope: !1639)
!1641 = !DILocation(line: 175, column: 6, scope: !1020)
!1642 = !DILocation(line: 175, column: 42, scope: !1643)
!1643 = !DILexicalBlockFile(scope: !1639, file: !281, discriminator: 1)
!1644 = !DILocation(line: 175, column: 41, scope: !1643)
!1645 = !DILocation(line: 175, column: 48, scope: !1643)
!1646 = !DILocation(line: 175, column: 67, scope: !1647)
!1647 = !DILexicalBlockFile(scope: !1639, file: !281, discriminator: 2)
!1648 = !DILocation(line: 175, column: 58, scope: !1647)
!1649 = !DILocation(line: 175, column: 41, scope: !1647)
!1650 = !DILocation(line: 175, column: 41, scope: !1651)
!1651 = !DILexicalBlockFile(scope: !1639, file: !281, discriminator: 3)
!1652 = !DILocation(line: 175, column: 41, scope: !1653)
!1653 = !DILexicalBlockFile(scope: !1639, file: !281, discriminator: 4)
!1654 = !DILocation(line: 175, column: 20, scope: !1653)
!1655 = !DILocation(line: 175, column: 25, scope: !1653)
!1656 = !DILocation(line: 175, column: 39, scope: !1653)
!1657 = !DILocation(line: 177, column: 16, scope: !1020)
!1658 = !DILocation(line: 177, column: 2, scope: !1020)
!1659 = !DILocation(line: 178, column: 48, scope: !1020)
!1660 = !DILocation(line: 178, column: 2, scope: !1020)
!1661 = !DILocation(line: 180, column: 18, scope: !1020)
!1662 = !DILocation(line: 180, column: 2, scope: !1020)
!1663 = !DILocation(line: 181, column: 1, scope: !1020)
!1664 = !DILocation(line: 181, column: 1, scope: !1071)
