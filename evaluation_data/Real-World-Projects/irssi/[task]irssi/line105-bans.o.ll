; ModuleID = './line105-bans.o.i'
source_filename = "./line105-bans.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IRC_CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._IRC_SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)*, %struct._GSList*, i64, i32, i32 }
%struct._IRC_SERVER_REC = type { i32, i32, i32, %struct._IRC_SERVER_CONNECT_REC*, i64, i64, i8*, i8*, i8, %struct._NET_SENDBUF_REC*, i32, [2 x %struct._GIOChannel*], i32, i32, %struct._RAWLOG_REC*, %struct._GHashTable*, i8*, i8*, i8*, i8, %struct._GTimeVal, i64, i32, %struct._GSList*, %struct._GSList*, void (%struct._SERVER_REC*, i8*, i32)*, i32 (%struct._SERVER_REC*, i8)*, i32 (%struct._SERVER_REC*, i8*)*, i8* (%struct._SERVER_REC*)*, void (%struct._SERVER_REC*, i8*, i8*, i32)*, i8** (%struct._SERVER_REC*, i8*, i8*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)*, %struct._QUERY_REC* (%struct._SERVER_REC*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)*, %struct._GSList*, %struct._GSList*, %struct._REDIRECT_REC*, %struct._GSList*, i8*, i8*, i8*, i8*, i8*, i32, i16, i32, i32, i32, i32, %struct._GHashTable*, %struct._GSList*, %struct._GSList*, %struct._GString*, i32, i32, %struct._GSList*, %struct._GTimeVal, %struct._GTimeVal, i32, i32, i32, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GHashTable*, %struct._GSList*, %struct._GSList*, i8*, %struct._GHashTable*, [256 x %struct.modes_type], [256 x i8], i32 (i8*, i8*)* }
%struct._IRC_SERVER_CONNECT_REC = type { i32, i32, i32, i8*, i32, i8*, i8*, i8*, i16, i8*, i8*, i32, i8*, %struct._IPADDR*, %struct._IPADDR*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._GIOChannel*, i8, i8*, i8*, i8*, i8*, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }
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
%struct._SERVER_REC = type { i32, i32, i32, %struct._SERVER_CONNECT_REC*, i64, i64, i8*, i8*, i8, %struct._NET_SENDBUF_REC*, i32, [2 x %struct._GIOChannel*], i32, i32, %struct._RAWLOG_REC*, %struct._GHashTable*, i8*, i8*, i8*, i8, %struct._GTimeVal, i64, i32, %struct._GSList*, %struct._GSList*, {}*, i32 (%struct._SERVER_REC*, i8)*, i32 (%struct._SERVER_REC*, i8*)*, i8* (%struct._SERVER_REC*)*, void (%struct._SERVER_REC*, i8*, i8*, i32)*, i8** (%struct._SERVER_REC*, i8*, i8*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*)*, %struct._QUERY_REC* (%struct._SERVER_REC*, i8*)*, i32 (i8*, i8*)*, i32 (i8*, i8*)* }
%struct._SERVER_CONNECT_REC = type { i32, i32, i32, i8*, i32, i8*, i8*, i8*, i16, i8*, i8*, i32, i8*, %struct._IPADDR*, %struct._IPADDR*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._GIOChannel*, i8, i8*, i8* }
%struct._CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)* }
%struct._QUERY_REC = type opaque
%struct._REDIRECT_REC = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct._GTimeVal = type { i64, i64 }
%struct.modes_type = type { void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, i8 }
%struct._WI_ITEM_REC = type opaque
%struct._GHashTable = type opaque
%struct._NICK_REC = type { i32, i32, i64, i8*, i8*, i8*, i32, i8, [8 x i8], i8*, %struct._NICK_REC* }
%struct._GSList = type { i8*, %struct._GSList* }
%struct.BAN_REC = type { i8*, i8*, i64 }

@.str = private unnamed_addr constant [17 x i8] c"WINDOW ITEM TYPE\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"CHANNEL\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"IRC\00", align 1
@__func__.ban_get_mask = private unnamed_addr constant [13 x i8] c"ban_get_mask\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"IS_IRC_CHANNEL(channel)\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"nick != NULL\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"channel %s is not synced, using nick ban for %s\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"%s!*@*\00", align 1
@default_ban_type = internal global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@__func__.ban_set = private unnamed_addr constant [8 x i8] c"ban_set\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"bans != NULL\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"+b\00", align 1
@__func__.ban_remove = private unnamed_addr constant [11 x i8] c"ban_remove\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"channel %s is not synced\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"-b\00", align 1
@default_ban_type_str = internal global i8* null, align 8
@.str.14 = private unnamed_addr constant [9 x i8] c"irc/core\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"misc\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"ban_type\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"ban\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"unban\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"normal user host domain +custom\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"first last\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"setup changed\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"SERVER\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"error command\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"domain\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"custom\00", align 1
@__func__.command_set_ban = private unnamed_addr constant [16 x i8] c"command_set_ban\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"data != NULL\00", align 1
@.str.30 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"first\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"last\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"ban type changed\00", align 1
@__func__.parse_ban_type = private unnamed_addr constant [15 x i8] c"parse_ban_type\00", align 1
@.str.35 = private unnamed_addr constant [13 x i8] c"type != NULL\00", align 1

; Function Attrs: nounwind uwtable
define i8* @ban_get_mask(%struct._IRC_CHANNEL_REC*, i8*, i32) #0 !dbg !707 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._NICK_REC*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct._IRC_CHANNEL_REC* %0, %struct._IRC_CHANNEL_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %5, metadata !711, metadata !712), !dbg !713
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !714, metadata !712), !dbg !715
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !716, metadata !712), !dbg !717
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %8, metadata !718, metadata !712), !dbg !719
  call void @llvm.dbg.declare(metadata i8** %9, metadata !720, metadata !712), !dbg !721
  call void @llvm.dbg.declare(metadata i8** %10, metadata !722, metadata !712), !dbg !723
  call void @llvm.dbg.declare(metadata i8** %11, metadata !724, metadata !712), !dbg !725
  call void @llvm.dbg.declare(metadata i32* %12, metadata !726, metadata !712), !dbg !727
  br label %13, !dbg !728, !llvm.loop !729

; <label>:13:                                     ; preds = %3
  %14 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %5, align 8, !dbg !730
  %15 = bitcast %struct._IRC_CHANNEL_REC* %14 to i8*, !dbg !730
  %16 = call i8* @module_check_cast_module(i8* %15, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0)), !dbg !734
  %17 = bitcast i8* %16 to %struct._CHANNEL_REC*, !dbg !735
  %18 = bitcast %struct._CHANNEL_REC* %17 to i8*, !dbg !736
  %19 = call i8* @chat_protocol_check_cast(i8* %18, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)), !dbg !737
  %20 = bitcast i8* %19 to %struct._IRC_CHANNEL_REC*, !dbg !739
  %21 = icmp ne %struct._IRC_CHANNEL_REC* %20, null, !dbg !739
  br i1 %21, label %22, label %23, !dbg !740

; <label>:22:                                     ; preds = %13
  br i1 false, label %25, label %24, !dbg !741

; <label>:23:                                     ; preds = %13
  br i1 false, label %24, label %25, !dbg !743

; <label>:24:                                     ; preds = %23, %22
  br label %26, !dbg !745

; <label>:25:                                     ; preds = %23, %22
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.ban_get_mask, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0)), !dbg !748
  store i8* null, i8** %4, align 8, !dbg !751
  br label %110, !dbg !751

; <label>:26:                                     ; preds = %24
  br label %27, !dbg !752

; <label>:27:                                     ; preds = %26
  br label %28, !dbg !754, !llvm.loop !755

; <label>:28:                                     ; preds = %27
  %29 = load i8*, i8** %6, align 8, !dbg !756
  %30 = icmp ne i8* %29, null, !dbg !760
  br i1 %30, label %31, label %32, !dbg !756

; <label>:31:                                     ; preds = %28
  br label %33, !dbg !761

; <label>:32:                                     ; preds = %28
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.ban_get_mask, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0)), !dbg !764
  store i8* null, i8** %4, align 8, !dbg !767
  br label %110, !dbg !767

; <label>:33:                                     ; preds = %31
  br label %34, !dbg !768

; <label>:34:                                     ; preds = %33
  %35 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %5, align 8, !dbg !770
  %36 = bitcast %struct._IRC_CHANNEL_REC* %35 to i8*, !dbg !770
  %37 = call i8* @module_check_cast_module(i8* %36, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0)), !dbg !771
  %38 = bitcast i8* %37 to %struct._CHANNEL_REC*, !dbg !772
  %39 = load i8*, i8** %6, align 8, !dbg !773
  %40 = call %struct._NICK_REC* @nicklist_find(%struct._CHANNEL_REC* %38, i8* %39), !dbg !774
  store %struct._NICK_REC* %40, %struct._NICK_REC** %8, align 8, !dbg !776
  %41 = load %struct._NICK_REC*, %struct._NICK_REC** %8, align 8, !dbg !777
  %42 = icmp eq %struct._NICK_REC* %41, null, !dbg !779
  br i1 %42, label %43, label %44, !dbg !780

; <label>:43:                                     ; preds = %34
  store i8* null, i8** %4, align 8, !dbg !781
  br label %110, !dbg !781

; <label>:44:                                     ; preds = %34
  %45 = load %struct._NICK_REC*, %struct._NICK_REC** %8, align 8, !dbg !783
  %46 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %45, i32 0, i32 4, !dbg !785
  %47 = load i8*, i8** %46, align 8, !dbg !785
  %48 = icmp eq i8* %47, null, !dbg !786
  br i1 %48, label %49, label %56, !dbg !787

; <label>:49:                                     ; preds = %44
  %50 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %5, align 8, !dbg !788
  %51 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %50, i32 0, i32 6, !dbg !790
  %52 = load i8*, i8** %51, align 8, !dbg !790
  %53 = load i8*, i8** %6, align 8, !dbg !791
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i32 0, i32 0), i8* %52, i8* %53), !dbg !792
  %54 = load i8*, i8** %6, align 8, !dbg !793
  %55 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* %54), !dbg !794
  store i8* %55, i8** %4, align 8, !dbg !795
  br label %110, !dbg !795

; <label>:56:                                     ; preds = %44
  %57 = load i32, i32* %7, align 4, !dbg !796
  %58 = icmp sle i32 %57, 0, !dbg !798
  br i1 %58, label %59, label %61, !dbg !799

; <label>:59:                                     ; preds = %56
  %60 = load i32, i32* @default_ban_type, align 4, !dbg !800
  store i32 %60, i32* %7, align 4, !dbg !801
  br label %61, !dbg !802

; <label>:61:                                     ; preds = %59, %56
  %62 = load i8*, i8** %6, align 8, !dbg !803
  %63 = load %struct._NICK_REC*, %struct._NICK_REC** %8, align 8, !dbg !804
  %64 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %63, i32 0, i32 4, !dbg !805
  %65 = load i8*, i8** %64, align 8, !dbg !805
  %66 = load i32, i32* %7, align 4, !dbg !806
  %67 = call i8* @irc_get_mask(i8* %62, i8* %65, i32 %66), !dbg !807
  store i8* %67, i8** %9, align 8, !dbg !808
  %68 = load i8*, i8** %9, align 8, !dbg !809
  %69 = call i8* @strchr(i8* %68, i32 33) #5, !dbg !810
  store i8* %69, i8** %10, align 8, !dbg !811
  %70 = load i8*, i8** %10, align 8, !dbg !812
  %71 = icmp eq i8* %70, null, !dbg !814
  br i1 %71, label %72, label %74, !dbg !815

; <label>:72:                                     ; preds = %61
  %73 = load i8*, i8** %9, align 8, !dbg !816
  store i8* %73, i8** %4, align 8, !dbg !818
  br label %110, !dbg !818

; <label>:74:                                     ; preds = %61
  %75 = load i8*, i8** %10, align 8, !dbg !819
  %76 = getelementptr inbounds i8, i8* %75, i32 1, !dbg !819
  store i8* %76, i8** %10, align 8, !dbg !819
  %77 = call i8* @strchr(i8* %76, i32 64) #5, !dbg !820
  store i8* %77, i8** %11, align 8, !dbg !821
  %78 = load i8*, i8** %11, align 8, !dbg !822
  %79 = icmp eq i8* %78, null, !dbg !824
  br i1 %79, label %80, label %82, !dbg !825

; <label>:80:                                     ; preds = %74
  %81 = load i8*, i8** %9, align 8, !dbg !826
  store i8* %81, i8** %4, align 8, !dbg !828
  br label %110, !dbg !828

; <label>:82:                                     ; preds = %74
  %83 = load i8*, i8** %11, align 8, !dbg !829
  %84 = load i8*, i8** %10, align 8, !dbg !830
  %85 = ptrtoint i8* %83 to i64, !dbg !831
  %86 = ptrtoint i8* %84 to i64, !dbg !831
  %87 = sub i64 %85, %86, !dbg !831
  %88 = trunc i64 %87 to i32, !dbg !832
  store i32 %88, i32* %12, align 4, !dbg !833
  %89 = load i32, i32* %12, align 4, !dbg !834
  %90 = icmp sge i32 %89, 10, !dbg !836
  br i1 %90, label %91, label %108, !dbg !837

; <label>:91:                                     ; preds = %82
  br label %92, !dbg !838, !llvm.loop !840

; <label>:92:                                     ; preds = %91
  %93 = load i8*, i8** %10, align 8, !dbg !841
  %94 = getelementptr inbounds i8, i8* %93, i64 1, !dbg !844
  %95 = load i8*, i8** %10, align 8, !dbg !845
  %96 = load i32, i32* %12, align 4, !dbg !846
  %97 = sub nsw i32 %96, 9, !dbg !847
  %98 = sext i32 %97 to i64, !dbg !848
  %99 = getelementptr inbounds i8, i8* %95, i64 %98, !dbg !848
  %100 = load i8*, i8** %10, align 8, !dbg !849
  %101 = load i32, i32* %12, align 4, !dbg !850
  %102 = sub nsw i32 %101, 9, !dbg !851
  %103 = sext i32 %102 to i64, !dbg !852
  %104 = getelementptr inbounds i8, i8* %100, i64 %103, !dbg !852
  %105 = call i64 @strlen(i8* %104) #5, !dbg !853
  %106 = add i64 %105, 1, !dbg !854
  call void @llvm.memmove.p0i8.p0i8.i64(i8* %94, i8* %99, i64 %106, i32 1, i1 false), !dbg !855
  br label %107, !dbg !857

; <label>:107:                                    ; preds = %92
  br label %108, !dbg !858

; <label>:108:                                    ; preds = %107, %82
  %109 = load i8*, i8** %9, align 8, !dbg !859
  store i8* %109, i8** %4, align 8, !dbg !860
  br label %110, !dbg !860

; <label>:110:                                    ; preds = %108, %80, %72, %49, %43, %32, %25
  %111 = load i8*, i8** %4, align 8, !dbg !861
  ret i8* %111, !dbg !861
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i8* @chat_protocol_check_cast(i8*, i32, i8*) #2

declare i8* @module_check_cast_module(i8*, i32, i8*, i8*) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare %struct._NICK_REC* @nicklist_find(%struct._CHANNEL_REC*, i8*) #2

declare void @g_log(i8*, i32, i8*, ...) #2

declare noalias i8* @g_strdup_printf(i8*, ...) #2

declare i8* @irc_get_mask(i8*, i8*, i32) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define i8* @ban_get_masks(%struct._IRC_CHANNEL_REC*, i8*, i32) #0 !dbg !862 {
  %4 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._GString*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct._IRC_CHANNEL_REC* %0, %struct._IRC_CHANNEL_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %4, metadata !863, metadata !712), !dbg !864
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !865, metadata !712), !dbg !866
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !867, metadata !712), !dbg !868
  call void @llvm.dbg.declare(metadata %struct._GString** %7, metadata !869, metadata !712), !dbg !870
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !871, metadata !712), !dbg !872
  call void @llvm.dbg.declare(metadata i8*** %9, metadata !873, metadata !712), !dbg !874
  call void @llvm.dbg.declare(metadata i8** %10, metadata !875, metadata !712), !dbg !876
  call void @llvm.dbg.declare(metadata i8** %11, metadata !877, metadata !712), !dbg !878
  %12 = call %struct._GString* @g_string_new(i8* null), !dbg !879
  store %struct._GString* %12, %struct._GString** %7, align 8, !dbg !880
  %13 = load i8*, i8** %5, align 8, !dbg !881
  %14 = call noalias i8** @g_strsplit(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i32 -1), !dbg !882
  store i8** %14, i8*** %9, align 8, !dbg !883
  %15 = load i8**, i8*** %9, align 8, !dbg !884
  store i8** %15, i8*** %8, align 8, !dbg !886
  br label %16, !dbg !887

; <label>:16:                                     ; preds = %48, %3
  %17 = load i8**, i8*** %8, align 8, !dbg !888
  %18 = load i8*, i8** %17, align 8, !dbg !891
  %19 = icmp ne i8* %18, null, !dbg !892
  br i1 %19, label %20, label %51, !dbg !893

; <label>:20:                                     ; preds = %16
  %21 = load i8**, i8*** %8, align 8, !dbg !894
  %22 = load i8*, i8** %21, align 8, !dbg !897
  %23 = load i8, i8* %22, align 1, !dbg !898
  %24 = sext i8 %23 to i32, !dbg !898
  %25 = icmp eq i32 %24, 36, !dbg !899
  br i1 %25, label %31, label %26, !dbg !900

; <label>:26:                                     ; preds = %20
  %27 = load i8**, i8*** %8, align 8, !dbg !901
  %28 = load i8*, i8** %27, align 8, !dbg !903
  %29 = call i8* @strchr(i8* %28, i32 33) #5, !dbg !904
  %30 = icmp ne i8* %29, null, !dbg !905
  br i1 %30, label %31, label %35, !dbg !906

; <label>:31:                                     ; preds = %26, %20
  %32 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !907
  %33 = load i8**, i8*** %8, align 8, !dbg !909
  %34 = load i8*, i8** %33, align 8, !dbg !910
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* %34), !dbg !911
  br label %48, !dbg !912

; <label>:35:                                     ; preds = %26
  %36 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %4, align 8, !dbg !913
  %37 = load i8**, i8*** %8, align 8, !dbg !914
  %38 = load i8*, i8** %37, align 8, !dbg !915
  %39 = load i32, i32* %6, align 4, !dbg !916
  %40 = call i8* @ban_get_mask(%struct._IRC_CHANNEL_REC* %36, i8* %38, i32 %39), !dbg !917
  store i8* %40, i8** %10, align 8, !dbg !918
  %41 = load i8*, i8** %10, align 8, !dbg !919
  %42 = icmp ne i8* %41, null, !dbg !921
  br i1 %42, label %43, label %47, !dbg !922

; <label>:43:                                     ; preds = %35
  %44 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !923
  %45 = load i8*, i8** %10, align 8, !dbg !925
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* %45), !dbg !926
  %46 = load i8*, i8** %10, align 8, !dbg !927
  call void @g_free(i8* %46), !dbg !928
  br label %47, !dbg !929

; <label>:47:                                     ; preds = %43, %35
  br label %48, !dbg !930

; <label>:48:                                     ; preds = %47, %31
  %49 = load i8**, i8*** %8, align 8, !dbg !931
  %50 = getelementptr inbounds i8*, i8** %49, i32 1, !dbg !931
  store i8** %50, i8*** %8, align 8, !dbg !931
  br label %16, !dbg !933, !llvm.loop !934

; <label>:51:                                     ; preds = %16
  %52 = load i8**, i8*** %9, align 8, !dbg !936
  call void @g_strfreev(i8** %52), !dbg !937
  %53 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !938
  %54 = getelementptr inbounds %struct._GString, %struct._GString* %53, i32 0, i32 1, !dbg !940
  %55 = load i64, i64* %54, align 8, !dbg !940
  %56 = icmp ugt i64 %55, 0, !dbg !941
  br i1 %56, label %57, label %64, !dbg !942

; <label>:57:                                     ; preds = %51
  %58 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !943
  %59 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !944
  %60 = getelementptr inbounds %struct._GString, %struct._GString* %59, i32 0, i32 1, !dbg !945
  %61 = load i64, i64* %60, align 8, !dbg !945
  %62 = sub i64 %61, 1, !dbg !946
  %63 = call %struct._GString* @g_string_truncate(%struct._GString* %58, i64 %62), !dbg !947
  br label %64, !dbg !947

; <label>:64:                                     ; preds = %57, %51
  %65 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !948
  %66 = getelementptr inbounds %struct._GString, %struct._GString* %65, i32 0, i32 0, !dbg !949
  %67 = load i8*, i8** %66, align 8, !dbg !949
  store i8* %67, i8** %11, align 8, !dbg !950
  %68 = load %struct._GString*, %struct._GString** %7, align 8, !dbg !951
  %69 = call i8* @g_string_free(%struct._GString* %68, i32 0), !dbg !952
  %70 = load i8*, i8** %11, align 8, !dbg !953
  ret i8* %70, !dbg !954
}

declare %struct._GString* @g_string_new(i8*) #2

declare noalias i8** @g_strsplit(i8*, i8*, i32) #2

declare void @g_string_append_printf(%struct._GString*, i8*, ...) #2

declare void @g_free(i8*) #2

declare void @g_strfreev(i8**) #2

declare %struct._GString* @g_string_truncate(%struct._GString*, i64) #2

declare i8* @g_string_free(%struct._GString*, i32) #2

; Function Attrs: nounwind uwtable
define void @ban_set(%struct._IRC_CHANNEL_REC*, i8*, i32) #0 !dbg !955 {
  %4 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct._IRC_CHANNEL_REC* %0, %struct._IRC_CHANNEL_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %4, metadata !958, metadata !712), !dbg !959
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !960, metadata !712), !dbg !961
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !962, metadata !712), !dbg !963
  call void @llvm.dbg.declare(metadata i8** %7, metadata !964, metadata !712), !dbg !965
  br label %8, !dbg !966, !llvm.loop !967

; <label>:8:                                      ; preds = %3
  %9 = load i8*, i8** %5, align 8, !dbg !968
  %10 = icmp ne i8* %9, null, !dbg !972
  br i1 %10, label %11, label %12, !dbg !968

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !973

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @__func__.ban_set, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0)), !dbg !976
  br label %27, !dbg !979

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !980

; <label>:14:                                     ; preds = %13
  %15 = load i32, i32* %6, align 4, !dbg !982
  %16 = icmp sle i32 %15, 0, !dbg !984
  br i1 %16, label %17, label %19, !dbg !985

; <label>:17:                                     ; preds = %14
  %18 = load i32, i32* @default_ban_type, align 4, !dbg !986
  store i32 %18, i32* %6, align 4, !dbg !987
  br label %19, !dbg !988

; <label>:19:                                     ; preds = %17, %14
  %20 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %4, align 8, !dbg !989
  %21 = load i8*, i8** %5, align 8, !dbg !990
  %22 = load i32, i32* %6, align 4, !dbg !991
  %23 = call i8* @ban_get_masks(%struct._IRC_CHANNEL_REC* %20, i8* %21, i32 %22), !dbg !992
  store i8* %23, i8** %7, align 8, !dbg !993
  %24 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %4, align 8, !dbg !994
  %25 = load i8*, i8** %7, align 8, !dbg !995
  call void @channel_set_singlemode(%struct._IRC_CHANNEL_REC* %24, i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0)), !dbg !996
  %26 = load i8*, i8** %7, align 8, !dbg !997
  call void @g_free(i8* %26), !dbg !998
  br label %27, !dbg !999

; <label>:27:                                     ; preds = %19, %12
  ret void, !dbg !1000
}

declare void @channel_set_singlemode(%struct._IRC_CHANNEL_REC*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @ban_remove(%struct._IRC_CHANNEL_REC*, i8*) #0 !dbg !1002 {
  %3 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._GString*, align 8
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca %struct.BAN_REC*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  store %struct._IRC_CHANNEL_REC* %0, %struct._IRC_CHANNEL_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %3, metadata !1005, metadata !712), !dbg !1006
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1007, metadata !712), !dbg !1008
  call void @llvm.dbg.declare(metadata %struct._GString** %5, metadata !1009, metadata !712), !dbg !1010
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !1011, metadata !712), !dbg !1012
  call void @llvm.dbg.declare(metadata %struct.BAN_REC** %7, metadata !1013, metadata !712), !dbg !1022
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !1023, metadata !712), !dbg !1024
  call void @llvm.dbg.declare(metadata i8*** %9, metadata !1025, metadata !712), !dbg !1026
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1027, metadata !712), !dbg !1028
  br label %11, !dbg !1029, !llvm.loop !1030

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** %4, align 8, !dbg !1031
  %13 = icmp ne i8* %12, null, !dbg !1035
  br i1 %13, label %14, label %15, !dbg !1031

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !1036

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.ban_remove, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0)), !dbg !1039
  br label %130, !dbg !1042

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !1043

; <label>:17:                                     ; preds = %16
  %18 = call %struct._GString* @g_string_new(i8* null), !dbg !1045
  store %struct._GString* %18, %struct._GString** %5, align 8, !dbg !1046
  %19 = load i8*, i8** %4, align 8, !dbg !1047
  %20 = call noalias i8** @g_strsplit(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i32 -1), !dbg !1048
  store i8** %20, i8*** %9, align 8, !dbg !1049
  %21 = load i8**, i8*** %9, align 8, !dbg !1050
  store i8** %21, i8*** %8, align 8, !dbg !1052
  br label %22, !dbg !1053

; <label>:22:                                     ; preds = %113, %17
  %23 = load i8**, i8*** %8, align 8, !dbg !1054
  %24 = load i8*, i8** %23, align 8, !dbg !1057
  %25 = icmp ne i8* %24, null, !dbg !1058
  br i1 %25, label %26, label %116, !dbg !1059

; <label>:26:                                     ; preds = %22
  store i32 0, i32* %10, align 4, !dbg !1060
  %27 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %3, align 8, !dbg !1062
  %28 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %27, i32 0, i32 23, !dbg !1064
  %29 = load %struct._GSList*, %struct._GSList** %28, align 8, !dbg !1064
  store %struct._GSList* %29, %struct._GSList** %6, align 8, !dbg !1065
  br label %30, !dbg !1066

; <label>:30:                                     ; preds = %51, %26
  %31 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1067
  %32 = icmp ne %struct._GSList* %31, null, !dbg !1070
  br i1 %32, label %33, label %55, !dbg !1071

; <label>:33:                                     ; preds = %30
  %34 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1072
  %35 = getelementptr inbounds %struct._GSList, %struct._GSList* %34, i32 0, i32 0, !dbg !1074
  %36 = load i8*, i8** %35, align 8, !dbg !1074
  %37 = bitcast i8* %36 to %struct.BAN_REC*, !dbg !1072
  store %struct.BAN_REC* %37, %struct.BAN_REC** %7, align 8, !dbg !1075
  %38 = load i8**, i8*** %8, align 8, !dbg !1076
  %39 = load i8*, i8** %38, align 8, !dbg !1078
  %40 = load %struct.BAN_REC*, %struct.BAN_REC** %7, align 8, !dbg !1079
  %41 = getelementptr inbounds %struct.BAN_REC, %struct.BAN_REC* %40, i32 0, i32 0, !dbg !1080
  %42 = load i8*, i8** %41, align 8, !dbg !1080
  %43 = call i32 @match_wildcards(i8* %39, i8* %42), !dbg !1081
  %44 = icmp ne i32 %43, 0, !dbg !1081
  br i1 %44, label %45, label %50, !dbg !1082

; <label>:45:                                     ; preds = %33
  %46 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1083
  %47 = load %struct.BAN_REC*, %struct.BAN_REC** %7, align 8, !dbg !1085
  %48 = getelementptr inbounds %struct.BAN_REC, %struct.BAN_REC* %47, i32 0, i32 0, !dbg !1086
  %49 = load i8*, i8** %48, align 8, !dbg !1086
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* %49), !dbg !1087
  store i32 1, i32* %10, align 4, !dbg !1088
  br label %50, !dbg !1089

; <label>:50:                                     ; preds = %45, %33
  br label %51, !dbg !1090

; <label>:51:                                     ; preds = %50
  %52 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1091
  %53 = getelementptr inbounds %struct._GSList, %struct._GSList* %52, i32 0, i32 1, !dbg !1093
  %54 = load %struct._GSList*, %struct._GSList** %53, align 8, !dbg !1093
  store %struct._GSList* %54, %struct._GSList** %6, align 8, !dbg !1094
  br label %30, !dbg !1095, !llvm.loop !1096

; <label>:55:                                     ; preds = %30
  %56 = load i32, i32* %10, align 4, !dbg !1098
  %57 = icmp ne i32 %56, 0, !dbg !1098
  br i1 %57, label %112, label %58, !dbg !1100

; <label>:58:                                     ; preds = %55
  store %struct.BAN_REC* null, %struct.BAN_REC** %7, align 8, !dbg !1101
  %59 = load i8**, i8*** %8, align 8, !dbg !1103
  %60 = load i8*, i8** %59, align 8, !dbg !1105
  %61 = call i32 @g_ascii_strcasecmp(i8* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0)), !dbg !1106
  %62 = icmp ne i32 %61, 0, !dbg !1106
  br i1 %62, label %74, label %63, !dbg !1107

; <label>:63:                                     ; preds = %58
  %64 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %3, align 8, !dbg !1108
  %65 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %64, i32 0, i32 23, !dbg !1110
  %66 = load %struct._GSList*, %struct._GSList** %65, align 8, !dbg !1110
  %67 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %3, align 8, !dbg !1111
  %68 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %67, i32 0, i32 23, !dbg !1112
  %69 = load %struct._GSList*, %struct._GSList** %68, align 8, !dbg !1112
  %70 = call i32 @g_slist_length(%struct._GSList* %69), !dbg !1113
  %71 = sub i32 %70, 1, !dbg !1114
  %72 = call i8* @g_slist_nth_data(%struct._GSList* %66, i32 %71), !dbg !1115
  %73 = bitcast i8* %72 to %struct.BAN_REC*, !dbg !1115
  store %struct.BAN_REC* %73, %struct.BAN_REC** %7, align 8, !dbg !1116
  br label %90, !dbg !1117

; <label>:74:                                     ; preds = %58
  %75 = load i8**, i8*** %8, align 8, !dbg !1118
  %76 = load i8*, i8** %75, align 8, !dbg !1120
  %77 = call i32 @is_numeric(i8* %76, i8 signext 0), !dbg !1121
  %78 = icmp ne i32 %77, 0, !dbg !1121
  br i1 %78, label %79, label %89, !dbg !1122

; <label>:79:                                     ; preds = %74
  %80 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %3, align 8, !dbg !1123
  %81 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %80, i32 0, i32 23, !dbg !1125
  %82 = load %struct._GSList*, %struct._GSList** %81, align 8, !dbg !1125
  %83 = load i8**, i8*** %8, align 8, !dbg !1126
  %84 = load i8*, i8** %83, align 8, !dbg !1127
  %85 = call i32 @atoi(i8* %84) #5, !dbg !1128
  %86 = sub nsw i32 %85, 1, !dbg !1129
  %87 = call i8* @g_slist_nth_data(%struct._GSList* %82, i32 %86), !dbg !1130
  %88 = bitcast i8* %87 to %struct.BAN_REC*, !dbg !1130
  store %struct.BAN_REC* %88, %struct.BAN_REC** %7, align 8, !dbg !1131
  br label %89, !dbg !1132

; <label>:89:                                     ; preds = %79, %74
  br label %90

; <label>:90:                                     ; preds = %89, %63
  %91 = load %struct.BAN_REC*, %struct.BAN_REC** %7, align 8, !dbg !1133
  %92 = icmp ne %struct.BAN_REC* %91, null, !dbg !1135
  br i1 %92, label %93, label %98, !dbg !1136

; <label>:93:                                     ; preds = %90
  %94 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1137
  %95 = load %struct.BAN_REC*, %struct.BAN_REC** %7, align 8, !dbg !1138
  %96 = getelementptr inbounds %struct.BAN_REC, %struct.BAN_REC* %95, i32 0, i32 0, !dbg !1139
  %97 = load i8*, i8** %96, align 8, !dbg !1139
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %94, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* %97), !dbg !1140
  br label %111, !dbg !1140

; <label>:98:                                     ; preds = %90
  %99 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %3, align 8, !dbg !1141
  %100 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %99, i32 0, i32 21, !dbg !1143
  %101 = load i16, i16* %100, align 8, !dbg !1143
  %102 = lshr i16 %101, 3, !dbg !1143
  %103 = and i16 %102, 1, !dbg !1143
  %104 = zext i16 %103 to i32, !dbg !1143
  %105 = icmp ne i32 %104, 0, !dbg !1141
  br i1 %105, label %110, label %106, !dbg !1144

; <label>:106:                                    ; preds = %98
  %107 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %3, align 8, !dbg !1145
  %108 = getelementptr inbounds %struct._IRC_CHANNEL_REC, %struct._IRC_CHANNEL_REC* %107, i32 0, i32 6, !dbg !1146
  %109 = load i8*, i8** %108, align 8, !dbg !1146
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0), i8* %109), !dbg !1147
  br label %110, !dbg !1147

; <label>:110:                                    ; preds = %106, %98
  br label %111

; <label>:111:                                    ; preds = %110, %93
  br label %112, !dbg !1148

; <label>:112:                                    ; preds = %111, %55
  br label %113, !dbg !1149

; <label>:113:                                    ; preds = %112
  %114 = load i8**, i8*** %8, align 8, !dbg !1150
  %115 = getelementptr inbounds i8*, i8** %114, i32 1, !dbg !1150
  store i8** %115, i8*** %8, align 8, !dbg !1150
  br label %22, !dbg !1152, !llvm.loop !1153

; <label>:116:                                    ; preds = %22
  %117 = load i8**, i8*** %9, align 8, !dbg !1155
  call void @g_strfreev(i8** %117), !dbg !1156
  %118 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1157
  %119 = getelementptr inbounds %struct._GString, %struct._GString* %118, i32 0, i32 1, !dbg !1159
  %120 = load i64, i64* %119, align 8, !dbg !1159
  %121 = icmp ugt i64 %120, 0, !dbg !1160
  br i1 %121, label %122, label %127, !dbg !1161

; <label>:122:                                    ; preds = %116
  %123 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %3, align 8, !dbg !1162
  %124 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1163
  %125 = getelementptr inbounds %struct._GString, %struct._GString* %124, i32 0, i32 0, !dbg !1164
  %126 = load i8*, i8** %125, align 8, !dbg !1164
  call void @channel_set_singlemode(%struct._IRC_CHANNEL_REC* %123, i8* %126, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0)), !dbg !1165
  br label %127, !dbg !1165

; <label>:127:                                    ; preds = %122, %116
  %128 = load %struct._GString*, %struct._GString** %5, align 8, !dbg !1166
  %129 = call i8* @g_string_free(%struct._GString* %128, i32 1), !dbg !1167
  br label %130, !dbg !1168

; <label>:130:                                    ; preds = %127, %15
  ret void, !dbg !1169
}

declare i32 @match_wildcards(i8*, i8*) #2

declare i32 @g_ascii_strcasecmp(i8*, i8*) #2

declare i8* @g_slist_nth_data(%struct._GSList*, i32) #2

declare i32 @g_slist_length(%struct._GSList*) #2

declare i32 @is_numeric(i8*, i8 signext) #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

; Function Attrs: nounwind uwtable
define void @bans_init() #0 !dbg !1171 {
  store i8* null, i8** @default_ban_type_str, align 8, !dbg !1172
  call void @settings_add_str_module(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0)), !dbg !1173
  %1 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)), !dbg !1174
  call void @command_bind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i32 %1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, i8*)* @cmd_ban to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1175
  %2 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)), !dbg !1177
  call void @command_bind_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 %2, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, i8*)* @cmd_unban to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1178
  call void @command_set_options_module(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i32 0, i32 0)), !dbg !1179
  call void @command_set_options_module(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0)), !dbg !1180
  call void @read_settings(), !dbg !1181
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1182
  ret void, !dbg !1183
}

declare void @settings_add_str_module(i8*, i8*, i8*, i8*) #2

declare void @command_bind_full(i8*, i32, i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare i32 @chat_protocol_lookup(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @cmd_ban(i8*, %struct._IRC_SERVER_REC*, i8*) #0 !dbg !1184 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._GHashTable*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1187, metadata !712), !dbg !1188
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !1189, metadata !712), !dbg !1190
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1191, metadata !712), !dbg !1192
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %7, metadata !1193, metadata !712), !dbg !1194
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1195, metadata !712), !dbg !1196
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1197, metadata !712), !dbg !1198
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1199, metadata !712), !dbg !1200
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1201, metadata !712), !dbg !1202
  br label %12, !dbg !1203, !llvm.loop !1204

; <label>:12:                                     ; preds = %3
  %13 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1205
  %14 = icmp ne %struct._IRC_SERVER_REC* %13, null, !dbg !1209
  br i1 %14, label %15, label %27, !dbg !1210

; <label>:15:                                     ; preds = %12
  %16 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1211
  %17 = bitcast %struct._IRC_SERVER_REC* %16 to i8*, !dbg !1211
  %18 = call i8* @module_check_cast(i8* %17, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0)), !dbg !1213
  %19 = bitcast i8* %18 to %struct._SERVER_REC*, !dbg !1214
  %20 = bitcast %struct._SERVER_REC* %19 to i8*, !dbg !1215
  %21 = call i8* @chat_protocol_check_cast(i8* %20, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)), !dbg !1216
  %22 = bitcast i8* %21 to %struct._IRC_SERVER_REC*, !dbg !1218
  %23 = icmp ne %struct._IRC_SERVER_REC* %22, null, !dbg !1218
  br i1 %23, label %24, label %25, !dbg !1219

; <label>:24:                                     ; preds = %15
  br i1 false, label %26, label %27, !dbg !1220

; <label>:25:                                     ; preds = %15
  br i1 false, label %27, label %26, !dbg !1222

; <label>:26:                                     ; preds = %25, %24
  br label %88, !dbg !1224

; <label>:27:                                     ; preds = %25, %24, %12
  %28 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1226
  %29 = icmp eq %struct._IRC_SERVER_REC* %28, null, !dbg !1229
  br i1 %29, label %37, label %30, !dbg !1230

; <label>:30:                                     ; preds = %27
  %31 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1231
  %32 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %31, i32 0, i32 8, !dbg !1233
  %33 = load i8, i8* %32, align 8, !dbg !1233
  %34 = and i8 %33, 1, !dbg !1233
  %35 = zext i8 %34 to i32, !dbg !1233
  %36 = icmp ne i32 %35, 0, !dbg !1234
  br i1 %36, label %41, label %37, !dbg !1235

; <label>:37:                                     ; preds = %30, %27
  br label %38, !dbg !1236, !llvm.loop !1238

; <label>:38:                                     ; preds = %37
  %39 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !1240
  call void @signal_stop(), !dbg !1243
  br label %88, !dbg !1245
                                                  ; No predecessors!
  br label %41, !dbg !1246

; <label>:41:                                     ; preds = %40, %30
  br label %42, !dbg !1248

; <label>:42:                                     ; preds = %41
  %43 = load i8*, i8** %4, align 8, !dbg !1250
  %44 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %43, i8** %11, i32 286721, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), %struct._GHashTable** %7, i8** %9), !dbg !1252
  %45 = icmp ne i32 %44, 0, !dbg !1252
  br i1 %45, label %47, label %46, !dbg !1253

; <label>:46:                                     ; preds = %42
  br label %88, !dbg !1254

; <label>:47:                                     ; preds = %42
  %48 = load %struct._GHashTable*, %struct._GHashTable** %7, align 8, !dbg !1255
  %49 = call i8* @g_hash_table_lookup(%struct._GHashTable* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0)), !dbg !1257
  %50 = icmp ne i8* %49, null, !dbg !1258
  br i1 %50, label %51, label %52, !dbg !1259

; <label>:51:                                     ; preds = %47
  store i32 10, i32* %10, align 4, !dbg !1260
  br label %81, !dbg !1261

; <label>:52:                                     ; preds = %47
  %53 = load %struct._GHashTable*, %struct._GHashTable** %7, align 8, !dbg !1262
  %54 = call i8* @g_hash_table_lookup(%struct._GHashTable* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0)), !dbg !1264
  %55 = icmp ne i8* %54, null, !dbg !1265
  br i1 %55, label %56, label %57, !dbg !1266

; <label>:56:                                     ; preds = %52
  store i32 2, i32* %10, align 4, !dbg !1267
  br label %80, !dbg !1268

; <label>:57:                                     ; preds = %52
  %58 = load %struct._GHashTable*, %struct._GHashTable** %7, align 8, !dbg !1269
  %59 = call i8* @g_hash_table_lookup(%struct._GHashTable* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0)), !dbg !1271
  %60 = icmp ne i8* %59, null, !dbg !1272
  br i1 %60, label %61, label %62, !dbg !1273

; <label>:61:                                     ; preds = %57
  store i32 12, i32* %10, align 4, !dbg !1274
  br label %79, !dbg !1275

; <label>:62:                                     ; preds = %57
  %63 = load %struct._GHashTable*, %struct._GHashTable** %7, align 8, !dbg !1276
  %64 = call i8* @g_hash_table_lookup(%struct._GHashTable* %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0)), !dbg !1278
  %65 = icmp ne i8* %64, null, !dbg !1279
  br i1 %65, label %66, label %67, !dbg !1280

; <label>:66:                                     ; preds = %62
  store i32 8, i32* %10, align 4, !dbg !1281
  br label %78, !dbg !1282

; <label>:67:                                     ; preds = %62
  %68 = load %struct._GHashTable*, %struct._GHashTable** %7, align 8, !dbg !1283
  %69 = call i8* @g_hash_table_lookup(%struct._GHashTable* %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i32 0, i32 0)), !dbg !1285
  store i8* %69, i8** %8, align 8, !dbg !1286
  %70 = load i8*, i8** %8, align 8, !dbg !1287
  %71 = icmp ne i8* %70, null, !dbg !1289
  br i1 %71, label %72, label %75, !dbg !1290

; <label>:72:                                     ; preds = %67
  %73 = load i8*, i8** %8, align 8, !dbg !1291
  %74 = call i32 @parse_custom_ban(i8* %73), !dbg !1292
  store i32 %74, i32* %10, align 4, !dbg !1293
  br label %77, !dbg !1294

; <label>:75:                                     ; preds = %67
  %76 = load i32, i32* @default_ban_type, align 4, !dbg !1295
  store i32 %76, i32* %10, align 4, !dbg !1296
  br label %77

; <label>:77:                                     ; preds = %75, %72
  br label %78

; <label>:78:                                     ; preds = %77, %66
  br label %79

; <label>:79:                                     ; preds = %78, %61
  br label %80

; <label>:80:                                     ; preds = %79, %56
  br label %81

; <label>:81:                                     ; preds = %80, %51
  %82 = load i8*, i8** %9, align 8, !dbg !1297
  %83 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1298
  %84 = load i8*, i8** %6, align 8, !dbg !1299
  %85 = bitcast i8* %84 to %struct._WI_ITEM_REC*, !dbg !1299
  %86 = load i32, i32* %10, align 4, !dbg !1300
  call void @command_set_ban(i8* %82, %struct._IRC_SERVER_REC* %83, %struct._WI_ITEM_REC* %85, i32 1, i32 %86), !dbg !1301
  %87 = load i8*, i8** %11, align 8, !dbg !1302
  call void @cmd_params_free(i8* %87), !dbg !1303
  br label %88, !dbg !1304

; <label>:88:                                     ; preds = %81, %46, %38, %26
  ret void, !dbg !1305
}

; Function Attrs: nounwind uwtable
define internal void @cmd_unban(i8*, %struct._IRC_SERVER_REC*, i8*) #0 !dbg !1307 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._GHashTable*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1308, metadata !712), !dbg !1309
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !1310, metadata !712), !dbg !1311
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1312, metadata !712), !dbg !1313
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %7, metadata !1314, metadata !712), !dbg !1315
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1316, metadata !712), !dbg !1317
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1318, metadata !712), !dbg !1319
  br label %10, !dbg !1320, !llvm.loop !1321

; <label>:10:                                     ; preds = %3
  %11 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1322
  %12 = icmp ne %struct._IRC_SERVER_REC* %11, null, !dbg !1326
  br i1 %12, label %13, label %25, !dbg !1327

; <label>:13:                                     ; preds = %10
  %14 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1328
  %15 = bitcast %struct._IRC_SERVER_REC* %14 to i8*, !dbg !1328
  %16 = call i8* @module_check_cast(i8* %15, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0)), !dbg !1330
  %17 = bitcast i8* %16 to %struct._SERVER_REC*, !dbg !1331
  %18 = bitcast %struct._SERVER_REC* %17 to i8*, !dbg !1332
  %19 = call i8* @chat_protocol_check_cast(i8* %18, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)), !dbg !1333
  %20 = bitcast i8* %19 to %struct._IRC_SERVER_REC*, !dbg !1335
  %21 = icmp ne %struct._IRC_SERVER_REC* %20, null, !dbg !1335
  br i1 %21, label %22, label %23, !dbg !1336

; <label>:22:                                     ; preds = %13
  br i1 false, label %24, label %25, !dbg !1337

; <label>:23:                                     ; preds = %13
  br i1 false, label %25, label %24, !dbg !1339

; <label>:24:                                     ; preds = %23, %22
  br label %72, !dbg !1341

; <label>:25:                                     ; preds = %23, %22, %10
  %26 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1343
  %27 = icmp eq %struct._IRC_SERVER_REC* %26, null, !dbg !1346
  br i1 %27, label %35, label %28, !dbg !1347

; <label>:28:                                     ; preds = %25
  %29 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1348
  %30 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %29, i32 0, i32 8, !dbg !1350
  %31 = load i8, i8* %30, align 8, !dbg !1350
  %32 = and i8 %31, 1, !dbg !1350
  %33 = zext i8 %32 to i32, !dbg !1350
  %34 = icmp ne i32 %33, 0, !dbg !1351
  br i1 %34, label %39, label %35, !dbg !1352

; <label>:35:                                     ; preds = %28, %25
  br label %36, !dbg !1353, !llvm.loop !1355

; <label>:36:                                     ; preds = %35
  %37 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !1357
  call void @signal_stop(), !dbg !1360
  br label %72, !dbg !1362
                                                  ; No predecessors!
  br label %39, !dbg !1363

; <label>:39:                                     ; preds = %38, %28
  br label %40, !dbg !1365

; <label>:40:                                     ; preds = %39
  %41 = load i8*, i8** %4, align 8, !dbg !1367
  %42 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %41, i8** %9, i32 286721, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), %struct._GHashTable** %7, i8** %8), !dbg !1369
  %43 = icmp ne i32 %42, 0, !dbg !1369
  br i1 %43, label %45, label %44, !dbg !1370

; <label>:44:                                     ; preds = %40
  br label %72, !dbg !1371

; <label>:45:                                     ; preds = %40
  store i8* null, i8** %8, align 8, !dbg !1372
  %46 = load %struct._GHashTable*, %struct._GHashTable** %7, align 8, !dbg !1373
  %47 = call i8* @g_hash_table_lookup(%struct._GHashTable* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0)), !dbg !1375
  %48 = icmp ne i8* %47, null, !dbg !1376
  br i1 %48, label %49, label %51, !dbg !1377

; <label>:49:                                     ; preds = %45
  %50 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0)), !dbg !1378
  store i8* %50, i8** %8, align 8, !dbg !1379
  br label %58, !dbg !1380

; <label>:51:                                     ; preds = %45
  %52 = load %struct._GHashTable*, %struct._GHashTable** %7, align 8, !dbg !1381
  %53 = call i8* @g_hash_table_lookup(%struct._GHashTable* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0)), !dbg !1383
  %54 = icmp ne i8* %53, null, !dbg !1384
  br i1 %54, label %55, label %57, !dbg !1385

; <label>:55:                                     ; preds = %51
  %56 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0)), !dbg !1386
  store i8* %56, i8** %8, align 8, !dbg !1387
  br label %57, !dbg !1388

; <label>:57:                                     ; preds = %55, %51
  br label %58

; <label>:58:                                     ; preds = %57, %49
  %59 = load i8*, i8** %8, align 8, !dbg !1389
  %60 = icmp ne i8* %59, null, !dbg !1389
  br i1 %60, label %61, label %63, !dbg !1389

; <label>:61:                                     ; preds = %58
  %62 = load i8*, i8** %8, align 8, !dbg !1390
  br label %65, !dbg !1392

; <label>:63:                                     ; preds = %58
  %64 = load i8*, i8** %4, align 8, !dbg !1393
  br label %65, !dbg !1395

; <label>:65:                                     ; preds = %63, %61
  %66 = phi i8* [ %62, %61 ], [ %64, %63 ], !dbg !1396
  %67 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1398
  %68 = load i8*, i8** %6, align 8, !dbg !1399
  %69 = bitcast i8* %68 to %struct._WI_ITEM_REC*, !dbg !1399
  call void @command_set_ban(i8* %66, %struct._IRC_SERVER_REC* %67, %struct._WI_ITEM_REC* %69, i32 0, i32 0), !dbg !1400
  %70 = load i8*, i8** %8, align 8, !dbg !1401
  call void @g_free(i8* %70), !dbg !1402
  %71 = load i8*, i8** %9, align 8, !dbg !1403
  call void @cmd_params_free(i8* %71), !dbg !1404
  br label %72, !dbg !1405

; <label>:72:                                     ; preds = %65, %44, %36, %24
  ret void, !dbg !1406
}

declare void @command_set_options_module(i8*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @read_settings() #0 !dbg !1407 {
  %1 = load i8*, i8** @default_ban_type_str, align 8, !dbg !1408
  %2 = icmp ne i8* %1, null, !dbg !1410
  br i1 %2, label %3, label %9, !dbg !1411

; <label>:3:                                      ; preds = %0
  %4 = load i8*, i8** @default_ban_type_str, align 8, !dbg !1412
  %5 = call i8* @settings_get_str(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0)), !dbg !1413
  %6 = call i32 @g_strcmp0(i8* %4, i8* %5), !dbg !1414
  %7 = icmp eq i32 %6, 0, !dbg !1416
  br i1 %7, label %8, label %9, !dbg !1417

; <label>:8:                                      ; preds = %3
  br label %30, !dbg !1419

; <label>:9:                                      ; preds = %3, %0
  %10 = load i8*, i8** @default_ban_type_str, align 8, !dbg !1420
  call void @g_free(i8* %10), !dbg !1421
  %11 = call i8* @settings_get_str(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0)), !dbg !1422
  %12 = call i32 @parse_ban_type(i8* %11), !dbg !1423
  store i32 %12, i32* @default_ban_type, align 4, !dbg !1424
  %13 = load i32, i32* @default_ban_type, align 4, !dbg !1425
  %14 = icmp sle i32 %13, 0, !dbg !1427
  br i1 %14, label %18, label %15, !dbg !1428

; <label>:15:                                     ; preds = %9
  %16 = load i8*, i8** @default_ban_type_str, align 8, !dbg !1429
  %17 = icmp ne i8* %16, null, !dbg !1431
  br i1 %17, label %18, label %23, !dbg !1432

; <label>:18:                                     ; preds = %15, %9
  %19 = load i32, i32* @default_ban_type, align 4, !dbg !1433
  %20 = sext i32 %19 to i64, !dbg !1435
  %21 = inttoptr i64 %20 to i8*, !dbg !1436
  %22 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i32 0, i32 0), i32 1, i8* %21), !dbg !1437
  br label %23, !dbg !1438

; <label>:23:                                     ; preds = %18, %15
  %24 = load i32, i32* @default_ban_type, align 4, !dbg !1439
  %25 = icmp sle i32 %24, 0, !dbg !1441
  br i1 %25, label %26, label %27, !dbg !1442

; <label>:26:                                     ; preds = %23
  store i32 10, i32* @default_ban_type, align 4, !dbg !1443
  br label %27, !dbg !1444

; <label>:27:                                     ; preds = %26, %23
  %28 = call i8* @settings_get_str(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0)), !dbg !1445
  %29 = call noalias i8* @g_strdup(i8* %28), !dbg !1446
  store i8* %29, i8** @default_ban_type_str, align 8, !dbg !1447
  br label %30, !dbg !1448

; <label>:30:                                     ; preds = %27, %8
  ret void, !dbg !1449
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define void @bans_deinit() #0 !dbg !1450 {
  %1 = load i8*, i8** @default_ban_type_str, align 8, !dbg !1451
  call void @g_free(i8* %1), !dbg !1452
  call void @command_unbind_full(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, i8*)* @cmd_ban to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1453
  call void @command_unbind_full(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._IRC_SERVER_REC*, i8*)* @cmd_unban to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1454
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1455
  ret void, !dbg !1456
}

declare void @command_unbind_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare i8* @module_check_cast(i8*, i32, i8*) #2

declare i32 @signal_emit(i8*, i32, ...) #2

declare void @signal_stop() #2

declare i32 @cmd_get_params(i8*, i8**, i32, ...) #2

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @parse_custom_ban(i8*) #0 !dbg !1457 {
  %2 = alloca i8*, align 8
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1460, metadata !712), !dbg !1461
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !1462, metadata !712), !dbg !1463
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1464, metadata !712), !dbg !1465
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1466, metadata !712), !dbg !1467
  store i32 0, i32* %5, align 4, !dbg !1468
  %6 = load i8*, i8** %2, align 8, !dbg !1469
  %7 = call noalias i8** @g_strsplit(i8* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i32 -1), !dbg !1470
  store i8** %7, i8*** %3, align 8, !dbg !1471
  store i32 0, i32* %4, align 4, !dbg !1472
  br label %8, !dbg !1474

; <label>:8:                                      ; preds = %75, %1
  %9 = load i32, i32* %4, align 4, !dbg !1475
  %10 = sext i32 %9 to i64, !dbg !1478
  %11 = load i8**, i8*** %3, align 8, !dbg !1478
  %12 = getelementptr inbounds i8*, i8** %11, i64 %10, !dbg !1478
  %13 = load i8*, i8** %12, align 8, !dbg !1478
  %14 = icmp ne i8* %13, null, !dbg !1479
  br i1 %14, label %15, label %78, !dbg !1480

; <label>:15:                                     ; preds = %8
  %16 = load i32, i32* %4, align 4, !dbg !1481
  %17 = sext i32 %16 to i64, !dbg !1484
  %18 = load i8**, i8*** %3, align 8, !dbg !1484
  %19 = getelementptr inbounds i8*, i8** %18, i64 %17, !dbg !1484
  %20 = load i8*, i8** %19, align 8, !dbg !1484
  %21 = getelementptr inbounds i8, i8* %20, i64 0, !dbg !1484
  %22 = load i8, i8* %21, align 1, !dbg !1484
  %23 = zext i8 %22 to i32, !dbg !1485
  %24 = call i32 @toupper(i32 %23) #5, !dbg !1486
  %25 = icmp eq i32 %24, 78, !dbg !1487
  br i1 %25, label %26, label %29, !dbg !1488

; <label>:26:                                     ; preds = %15
  %27 = load i32, i32* %5, align 4, !dbg !1489
  %28 = or i32 %27, 1, !dbg !1489
  store i32 %28, i32* %5, align 4, !dbg !1489
  br label %74, !dbg !1490

; <label>:29:                                     ; preds = %15
  %30 = load i32, i32* %4, align 4, !dbg !1491
  %31 = sext i32 %30 to i64, !dbg !1493
  %32 = load i8**, i8*** %3, align 8, !dbg !1493
  %33 = getelementptr inbounds i8*, i8** %32, i64 %31, !dbg !1493
  %34 = load i8*, i8** %33, align 8, !dbg !1493
  %35 = getelementptr inbounds i8, i8* %34, i64 0, !dbg !1493
  %36 = load i8, i8* %35, align 1, !dbg !1493
  %37 = zext i8 %36 to i32, !dbg !1494
  %38 = call i32 @toupper(i32 %37) #5, !dbg !1495
  %39 = icmp eq i32 %38, 85, !dbg !1496
  br i1 %39, label %40, label %43, !dbg !1497

; <label>:40:                                     ; preds = %29
  %41 = load i32, i32* %5, align 4, !dbg !1498
  %42 = or i32 %41, 2, !dbg !1498
  store i32 %42, i32* %5, align 4, !dbg !1498
  br label %73, !dbg !1499

; <label>:43:                                     ; preds = %29
  %44 = load i32, i32* %4, align 4, !dbg !1500
  %45 = sext i32 %44 to i64, !dbg !1502
  %46 = load i8**, i8*** %3, align 8, !dbg !1502
  %47 = getelementptr inbounds i8*, i8** %46, i64 %45, !dbg !1502
  %48 = load i8*, i8** %47, align 8, !dbg !1502
  %49 = getelementptr inbounds i8, i8* %48, i64 0, !dbg !1502
  %50 = load i8, i8* %49, align 1, !dbg !1502
  %51 = zext i8 %50 to i32, !dbg !1503
  %52 = call i32 @toupper(i32 %51) #5, !dbg !1504
  %53 = icmp eq i32 %52, 72, !dbg !1505
  br i1 %53, label %54, label %57, !dbg !1506

; <label>:54:                                     ; preds = %43
  %55 = load i32, i32* %5, align 4, !dbg !1507
  %56 = or i32 %55, 12, !dbg !1507
  store i32 %56, i32* %5, align 4, !dbg !1507
  br label %72, !dbg !1508

; <label>:57:                                     ; preds = %43
  %58 = load i32, i32* %4, align 4, !dbg !1509
  %59 = sext i32 %58 to i64, !dbg !1511
  %60 = load i8**, i8*** %3, align 8, !dbg !1511
  %61 = getelementptr inbounds i8*, i8** %60, i64 %59, !dbg !1511
  %62 = load i8*, i8** %61, align 8, !dbg !1511
  %63 = getelementptr inbounds i8, i8* %62, i64 0, !dbg !1511
  %64 = load i8, i8* %63, align 1, !dbg !1511
  %65 = zext i8 %64 to i32, !dbg !1512
  %66 = call i32 @toupper(i32 %65) #5, !dbg !1513
  %67 = icmp eq i32 %66, 68, !dbg !1514
  br i1 %67, label %68, label %71, !dbg !1515

; <label>:68:                                     ; preds = %57
  %69 = load i32, i32* %5, align 4, !dbg !1516
  %70 = or i32 %69, 8, !dbg !1516
  store i32 %70, i32* %5, align 4, !dbg !1516
  br label %71, !dbg !1517

; <label>:71:                                     ; preds = %68, %57
  br label %72

; <label>:72:                                     ; preds = %71, %54
  br label %73

; <label>:73:                                     ; preds = %72, %40
  br label %74

; <label>:74:                                     ; preds = %73, %26
  br label %75, !dbg !1518

; <label>:75:                                     ; preds = %74
  %76 = load i32, i32* %4, align 4, !dbg !1519
  %77 = add nsw i32 %76, 1, !dbg !1519
  store i32 %77, i32* %4, align 4, !dbg !1519
  br label %8, !dbg !1521, !llvm.loop !1522

; <label>:78:                                     ; preds = %8
  %79 = load i8**, i8*** %3, align 8, !dbg !1524
  call void @g_strfreev(i8** %79), !dbg !1525
  %80 = load i32, i32* %5, align 4, !dbg !1526
  ret i32 %80, !dbg !1527
}

; Function Attrs: nounwind uwtable
define internal void @command_set_ban(i8*, %struct._IRC_SERVER_REC*, %struct._WI_ITEM_REC*, i32, i32) #0 !dbg !1528 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct._IRC_SERVER_REC*, align 8
  %8 = alloca %struct._WI_ITEM_REC*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct._IRC_CHANNEL_REC*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1531, metadata !712), !dbg !1532
  store %struct._IRC_SERVER_REC* %1, %struct._IRC_SERVER_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %7, metadata !1533, metadata !712), !dbg !1534
  store %struct._WI_ITEM_REC* %2, %struct._WI_ITEM_REC** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %8, metadata !1535, metadata !712), !dbg !1536
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1537, metadata !712), !dbg !1538
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !1539, metadata !712), !dbg !1540
  call void @llvm.dbg.declare(metadata %struct._IRC_CHANNEL_REC** %11, metadata !1541, metadata !712), !dbg !1542
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1543, metadata !712), !dbg !1544
  call void @llvm.dbg.declare(metadata i8** %13, metadata !1545, metadata !712), !dbg !1546
  call void @llvm.dbg.declare(metadata i8** %14, metadata !1547, metadata !712), !dbg !1548
  br label %15, !dbg !1549, !llvm.loop !1550

; <label>:15:                                     ; preds = %5
  %16 = load i8*, i8** %6, align 8, !dbg !1551
  %17 = icmp ne i8* %16, null, !dbg !1555
  br i1 %17, label %18, label %19, !dbg !1551

; <label>:18:                                     ; preds = %15
  br label %20, !dbg !1556

; <label>:19:                                     ; preds = %15
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.command_set_ban, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0)), !dbg !1559
  br label %125, !dbg !1562

; <label>:20:                                     ; preds = %18
  br label %21, !dbg !1563

; <label>:21:                                     ; preds = %20
  %22 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %7, align 8, !dbg !1565
  %23 = icmp eq %struct._IRC_SERVER_REC* %22, null, !dbg !1567
  br i1 %23, label %42, label %24, !dbg !1568

; <label>:24:                                     ; preds = %21
  %25 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %7, align 8, !dbg !1569
  %26 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %25, i32 0, i32 8, !dbg !1571
  %27 = load i8, i8* %26, align 8, !dbg !1571
  %28 = and i8 %27, 1, !dbg !1571
  %29 = zext i8 %28 to i32, !dbg !1571
  %30 = icmp ne i32 %29, 0, !dbg !1569
  br i1 %30, label %31, label %42, !dbg !1572

; <label>:31:                                     ; preds = %24
  %32 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %7, align 8, !dbg !1573
  %33 = bitcast %struct._IRC_SERVER_REC* %32 to i8*, !dbg !1573
  %34 = call i8* @module_check_cast(i8* %33, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0)), !dbg !1575
  %35 = bitcast i8* %34 to %struct._SERVER_REC*, !dbg !1576
  %36 = bitcast %struct._SERVER_REC* %35 to i8*, !dbg !1577
  %37 = call i8* @chat_protocol_check_cast(i8* %36, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)), !dbg !1578
  %38 = bitcast i8* %37 to %struct._IRC_SERVER_REC*, !dbg !1580
  %39 = icmp ne %struct._IRC_SERVER_REC* %38, null, !dbg !1580
  br i1 %39, label %40, label %41, !dbg !1581

; <label>:40:                                     ; preds = %31
  br i1 false, label %42, label %46, !dbg !1582

; <label>:41:                                     ; preds = %31
  br i1 false, label %46, label %42, !dbg !1584

; <label>:42:                                     ; preds = %41, %40, %24, %21
  br label %43, !dbg !1586, !llvm.loop !1587

; <label>:43:                                     ; preds = %42
  %44 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !1588
  call void @signal_stop(), !dbg !1591
  br label %125, !dbg !1593
                                                  ; No predecessors!
  br label %46, !dbg !1594

; <label>:46:                                     ; preds = %45, %41, %40
  %47 = load i8*, i8** %6, align 8, !dbg !1596
  %48 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %8, align 8, !dbg !1598
  %49 = call i32 (i8*, i8**, i32, ...) @cmd_get_params(i8* %47, i8** %14, i32 335874, %struct._WI_ITEM_REC* %48, i8** %12, i8** %13), !dbg !1599
  %50 = icmp ne i32 %49, 0, !dbg !1599
  br i1 %50, label %52, label %51, !dbg !1600

; <label>:51:                                     ; preds = %46
  br label %125, !dbg !1601

; <label>:52:                                     ; preds = %46
  %53 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %7, align 8, !dbg !1603
  %54 = bitcast %struct._IRC_SERVER_REC* %53 to i8*, !dbg !1603
  %55 = call i8* @module_check_cast(i8* %54, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0)), !dbg !1605
  %56 = bitcast i8* %55 to %struct._SERVER_REC*, !dbg !1606
  %57 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %56, i32 0, i32 27, !dbg !1607
  %58 = load i32 (%struct._SERVER_REC*, i8*)*, i32 (%struct._SERVER_REC*, i8*)** %57, align 8, !dbg !1607
  %59 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %7, align 8, !dbg !1608
  %60 = bitcast %struct._IRC_SERVER_REC* %59 to i8*, !dbg !1608
  %61 = call i8* @module_check_cast(i8* %60, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0)), !dbg !1609
  %62 = bitcast i8* %61 to %struct._SERVER_REC*, !dbg !1611
  %63 = load i8*, i8** %12, align 8, !dbg !1612
  %64 = call i32 %58(%struct._SERVER_REC* %62, i8* %63), !dbg !1613
  %65 = icmp ne i32 %64, 0, !dbg !1615
  br i1 %65, label %73, label %66, !dbg !1616

; <label>:66:                                     ; preds = %52
  br label %67, !dbg !1617, !llvm.loop !1619

; <label>:67:                                     ; preds = %66
  %68 = load i8*, i8** %14, align 8, !dbg !1621
  call void @cmd_params_free(i8* %68), !dbg !1624
  br label %69, !dbg !1625, !llvm.loop !1626

; <label>:69:                                     ; preds = %67
  %70 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), i32 1, i8* inttoptr (i64 5 to i8*)), !dbg !1628
  call void @signal_stop(), !dbg !1631
  br label %125, !dbg !1633
                                                  ; No predecessors!
  br label %72, !dbg !1634

; <label>:72:                                     ; preds = %71
  br label %73, !dbg !1636

; <label>:73:                                     ; preds = %72, %52
  %74 = load i8*, i8** %13, align 8, !dbg !1638
  %75 = load i8, i8* %74, align 1, !dbg !1640
  %76 = sext i8 %75 to i32, !dbg !1640
  %77 = icmp eq i32 %76, 0, !dbg !1641
  br i1 %77, label %78, label %91, !dbg !1642

; <label>:78:                                     ; preds = %73
  %79 = load i8*, i8** %6, align 8, !dbg !1643
  %80 = call i32 @g_strcmp0(i8* %79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i32 0, i32 0)), !dbg !1646
  %81 = icmp ne i32 %80, 0, !dbg !1647
  br i1 %81, label %82, label %89, !dbg !1648

; <label>:82:                                     ; preds = %78
  br label %83, !dbg !1649, !llvm.loop !1650

; <label>:83:                                     ; preds = %82
  %84 = load i8*, i8** %14, align 8, !dbg !1651
  call void @cmd_params_free(i8* %84), !dbg !1654
  br label %85, !dbg !1655, !llvm.loop !1656

; <label>:85:                                     ; preds = %83
  %86 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !1658
  call void @signal_stop(), !dbg !1661
  br label %125, !dbg !1663
                                                  ; No predecessors!
  br label %88, !dbg !1664

; <label>:88:                                     ; preds = %87
  br label %89, !dbg !1666

; <label>:89:                                     ; preds = %88, %78
  %90 = load i8*, i8** %6, align 8, !dbg !1668
  store i8* %90, i8** %13, align 8, !dbg !1669
  br label %91, !dbg !1670

; <label>:91:                                     ; preds = %89, %73
  %92 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %7, align 8, !dbg !1671
  %93 = bitcast %struct._IRC_SERVER_REC* %92 to i8*, !dbg !1671
  %94 = call i8* @module_check_cast(i8* %93, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0)), !dbg !1672
  %95 = bitcast i8* %94 to %struct._SERVER_REC*, !dbg !1673
  %96 = load i8*, i8** %12, align 8, !dbg !1674
  %97 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %95, i8* %96), !dbg !1675
  %98 = bitcast %struct._CHANNEL_REC* %97 to i8*, !dbg !1677
  %99 = call i8* @module_check_cast_module(i8* %98, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0)), !dbg !1678
  %100 = bitcast i8* %99 to %struct._CHANNEL_REC*, !dbg !1680
  %101 = bitcast %struct._CHANNEL_REC* %100 to i8*, !dbg !1681
  %102 = call i8* @chat_protocol_check_cast(i8* %101, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)), !dbg !1682
  %103 = bitcast i8* %102 to %struct._IRC_CHANNEL_REC*, !dbg !1684
  store %struct._IRC_CHANNEL_REC* %103, %struct._IRC_CHANNEL_REC** %11, align 8, !dbg !1685
  %104 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %11, align 8, !dbg !1686
  %105 = icmp eq %struct._IRC_CHANNEL_REC* %104, null, !dbg !1688
  br i1 %105, label %106, label %113, !dbg !1689

; <label>:106:                                    ; preds = %91
  br label %107, !dbg !1690, !llvm.loop !1691

; <label>:107:                                    ; preds = %106
  %108 = load i8*, i8** %14, align 8, !dbg !1692
  call void @cmd_params_free(i8* %108), !dbg !1695
  br label %109, !dbg !1696, !llvm.loop !1697

; <label>:109:                                    ; preds = %107
  %110 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i32 0, i32 0), i32 1, i8* inttoptr (i64 6 to i8*)), !dbg !1699
  call void @signal_stop(), !dbg !1702
  br label %125, !dbg !1704
                                                  ; No predecessors!
  br label %112, !dbg !1705

; <label>:112:                                    ; preds = %111
  br label %113, !dbg !1707

; <label>:113:                                    ; preds = %112, %91
  %114 = load i32, i32* %9, align 4, !dbg !1709
  %115 = icmp ne i32 %114, 0, !dbg !1709
  br i1 %115, label %116, label %120, !dbg !1711

; <label>:116:                                    ; preds = %113
  %117 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %11, align 8, !dbg !1712
  %118 = load i8*, i8** %13, align 8, !dbg !1713
  %119 = load i32, i32* %10, align 4, !dbg !1714
  call void @ban_set(%struct._IRC_CHANNEL_REC* %117, i8* %118, i32 %119), !dbg !1715
  br label %123, !dbg !1715

; <label>:120:                                    ; preds = %113
  %121 = load %struct._IRC_CHANNEL_REC*, %struct._IRC_CHANNEL_REC** %11, align 8, !dbg !1716
  %122 = load i8*, i8** %13, align 8, !dbg !1717
  call void @ban_remove(%struct._IRC_CHANNEL_REC* %121, i8* %122), !dbg !1718
  br label %123

; <label>:123:                                    ; preds = %120, %116
  %124 = load i8*, i8** %14, align 8, !dbg !1719
  call void @cmd_params_free(i8* %124), !dbg !1720
  br label %125, !dbg !1721

; <label>:125:                                    ; preds = %123, %109, %85, %69, %51, %43, %19
  ret void, !dbg !1722
}

declare void @cmd_params_free(i8*) #2

; Function Attrs: nounwind readonly
declare i32 @toupper(i32) #3

declare i32 @g_strcmp0(i8*, i8*) #2

declare %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC*, i8*) #2

declare noalias i8* @g_strdup(i8*) #2

declare i8* @settings_get_str(i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @parse_ban_type(i8*) #0 !dbg !1723 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1724, metadata !712), !dbg !1725
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1726, metadata !712), !dbg !1727
  br label %5, !dbg !1728, !llvm.loop !1729

; <label>:5:                                      ; preds = %1
  %6 = load i8*, i8** %3, align 8, !dbg !1730
  %7 = icmp ne i8* %6, null, !dbg !1734
  br i1 %7, label %8, label %9, !dbg !1730

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !1735

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.parse_ban_type, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.35, i32 0, i32 0)), !dbg !1738
  store i32 0, i32* %2, align 4, !dbg !1741
  br label %61, !dbg !1741

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !1742

; <label>:11:                                     ; preds = %10
  %12 = load i8*, i8** %3, align 8, !dbg !1744
  %13 = getelementptr inbounds i8, i8* %12, i64 0, !dbg !1744
  %14 = load i8, i8* %13, align 1, !dbg !1744
  %15 = zext i8 %14 to i32, !dbg !1746
  %16 = call i32 @toupper(i32 %15) #5, !dbg !1747
  %17 = icmp eq i32 %16, 78, !dbg !1748
  br i1 %17, label %18, label %19, !dbg !1749

; <label>:18:                                     ; preds = %11
  store i32 10, i32* %2, align 4, !dbg !1750
  br label %61, !dbg !1750

; <label>:19:                                     ; preds = %11
  %20 = load i8*, i8** %3, align 8, !dbg !1751
  %21 = getelementptr inbounds i8, i8* %20, i64 0, !dbg !1751
  %22 = load i8, i8* %21, align 1, !dbg !1751
  %23 = zext i8 %22 to i32, !dbg !1753
  %24 = call i32 @toupper(i32 %23) #5, !dbg !1754
  %25 = icmp eq i32 %24, 85, !dbg !1755
  br i1 %25, label %26, label %27, !dbg !1756

; <label>:26:                                     ; preds = %19
  store i32 2, i32* %2, align 4, !dbg !1757
  br label %61, !dbg !1757

; <label>:27:                                     ; preds = %19
  %28 = load i8*, i8** %3, align 8, !dbg !1758
  %29 = getelementptr inbounds i8, i8* %28, i64 0, !dbg !1758
  %30 = load i8, i8* %29, align 1, !dbg !1758
  %31 = zext i8 %30 to i32, !dbg !1760
  %32 = call i32 @toupper(i32 %31) #5, !dbg !1761
  %33 = icmp eq i32 %32, 72, !dbg !1762
  br i1 %33, label %34, label %35, !dbg !1763

; <label>:34:                                     ; preds = %27
  store i32 12, i32* %2, align 4, !dbg !1764
  br label %61, !dbg !1764

; <label>:35:                                     ; preds = %27
  %36 = load i8*, i8** %3, align 8, !dbg !1765
  %37 = getelementptr inbounds i8, i8* %36, i64 0, !dbg !1765
  %38 = load i8, i8* %37, align 1, !dbg !1765
  %39 = zext i8 %38 to i32, !dbg !1767
  %40 = call i32 @toupper(i32 %39) #5, !dbg !1768
  %41 = icmp eq i32 %40, 68, !dbg !1769
  br i1 %41, label %42, label %43, !dbg !1770

; <label>:42:                                     ; preds = %35
  store i32 8, i32* %2, align 4, !dbg !1771
  br label %61, !dbg !1771

; <label>:43:                                     ; preds = %35
  %44 = load i8*, i8** %3, align 8, !dbg !1772
  %45 = getelementptr inbounds i8, i8* %44, i64 0, !dbg !1772
  %46 = load i8, i8* %45, align 1, !dbg !1772
  %47 = zext i8 %46 to i32, !dbg !1774
  %48 = call i32 @toupper(i32 %47) #5, !dbg !1775
  %49 = icmp eq i32 %48, 67, !dbg !1776
  br i1 %49, label %50, label %60, !dbg !1777

; <label>:50:                                     ; preds = %43
  %51 = load i8*, i8** %3, align 8, !dbg !1778
  %52 = call i8* @strchr(i8* %51, i32 32) #5, !dbg !1780
  store i8* %52, i8** %4, align 8, !dbg !1781
  %53 = load i8*, i8** %4, align 8, !dbg !1782
  %54 = icmp ne i8* %53, null, !dbg !1784
  br i1 %54, label %55, label %59, !dbg !1785

; <label>:55:                                     ; preds = %50
  %56 = load i8*, i8** %4, align 8, !dbg !1786
  %57 = getelementptr inbounds i8, i8* %56, i64 1, !dbg !1787
  %58 = call i32 @parse_custom_ban(i8* %57), !dbg !1788
  store i32 %58, i32* %2, align 4, !dbg !1789
  br label %61, !dbg !1789

; <label>:59:                                     ; preds = %50
  br label %60, !dbg !1790

; <label>:60:                                     ; preds = %59, %43
  store i32 0, i32* %2, align 4, !dbg !1791
  br label %61, !dbg !1791

; <label>:61:                                     ; preds = %60, %55, %42, %34, %26, %18, %9
  %62 = load i32, i32* %2, align 4, !dbg !1792
  ret i32 %62, !dbg !1792
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!704, !705}
!llvm.ident = !{!706}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !68, globals: !700)
!1 = !DIFile(filename: "line105-bans.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !10, !15, !24, !35, !47}
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
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !48, line: 25, size: 32, align: 32, elements: !49)
!48 = !DIFile(filename: "../../../src/core/commands.h", directory: "/home/lichi/Desktop/irssi/task1")
!49 = !{!50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67}
!50 = !DIEnumerator(name: "CMDERR_OPTION_UNKNOWN", value: -3)
!51 = !DIEnumerator(name: "CMDERR_OPTION_AMBIGUOUS", value: -2)
!52 = !DIEnumerator(name: "CMDERR_OPTION_ARG_MISSING", value: -1)
!53 = !DIEnumerator(name: "CMDERR_UNKNOWN", value: 0)
!54 = !DIEnumerator(name: "CMDERR_AMBIGUOUS", value: 1)
!55 = !DIEnumerator(name: "CMDERR_ERRNO", value: 2)
!56 = !DIEnumerator(name: "CMDERR_NOT_ENOUGH_PARAMS", value: 3)
!57 = !DIEnumerator(name: "CMDERR_NOT_CONNECTED", value: 4)
!58 = !DIEnumerator(name: "CMDERR_NOT_JOINED", value: 5)
!59 = !DIEnumerator(name: "CMDERR_CHAN_NOT_FOUND", value: 6)
!60 = !DIEnumerator(name: "CMDERR_CHAN_NOT_SYNCED", value: 7)
!61 = !DIEnumerator(name: "CMDERR_ILLEGAL_PROTO", value: 8)
!62 = !DIEnumerator(name: "CMDERR_NOT_GOOD_IDEA", value: 9)
!63 = !DIEnumerator(name: "CMDERR_INVALID_TIME", value: 10)
!64 = !DIEnumerator(name: "CMDERR_INVALID_CHARSET", value: 11)
!65 = !DIEnumerator(name: "CMDERR_EVAL_MAX_RECURSE", value: 12)
!66 = !DIEnumerator(name: "CMDERR_PROGRAM_NOT_FOUND", value: 13)
!67 = !DIEnumerator(name: "CMDERR_NO_SERVER_DEFINED", value: 14)
!68 = !{!69, !501, !154, !482, !85, !77, !692, !87, !394, !199, !384, !699, !106}
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_CHANNEL_REC", file: !71, line: 7, baseType: !72)
!71 = !DIFile(filename: "irc.h", directory: "/home/lichi/Desktop/irssi/task1")
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_CHANNEL_REC", file: !73, line: 15, size: 1600, align: 64, elements: !74)
!73 = !DIFile(filename: "irc-channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!74 = !{!75, !78, !79, !84, !86, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !72, file: !76, line: 3, baseType: !77, size: 32, align: 32)
!76 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!77 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !72, file: !76, line: 4, baseType: !77, size: 32, align: 32, offset: 32)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !72, file: !76, line: 5, baseType: !80, size: 64, align: 64, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64, align: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !82, line: 37, baseType: !83)
!82 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!83 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !82, line: 37, flags: DIFlagFwdDecl)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !72, file: !76, line: 7, baseType: !85, size: 64, align: 64, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !72, file: !76, line: 8, baseType: !87, size: 64, align: 64, offset: 192)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64, align: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_REC", file: !71, line: 6, baseType: !89)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_REC", file: !90, line: 42, size: 39168, align: 64, elements: !91)
!90 = !DIFile(filename: "irc-servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!91 = !{!92, !94, !95, !96, !343, !348, !349, !350, !351, !352, !353, !354, !355, !356, !360, !361, !365, !366, !367, !371, !372, !373, !374, !375, !376, !377, !378, !379, !386, !387, !388, !389, !390, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !659, !661}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !89, file: !93, line: 3, baseType: !77, size: 32, align: 32)
!93 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!94 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !89, file: !93, line: 4, baseType: !77, size: 32, align: 32, offset: 32)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !89, file: !93, line: 6, baseType: !77, size: 32, align: 32, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !89, file: !93, line: 8, baseType: !97, size: 64, align: 64, offset: 128)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64, align: 64)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_CONNECT_REC", file: !71, line: 5, baseType: !99)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_CONNECT_REC", file: !90, line: 24, size: 2496, align: 64, elements: !100)
!100 = !{!101, !103, !104, !105, !108, !109, !110, !111, !112, !114, !115, !116, !117, !118, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !99, file: !102, line: 3, baseType: !77, size: 32, align: 32)
!102 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!103 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !99, file: !102, line: 4, baseType: !77, size: 32, align: 32, offset: 32)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !99, file: !102, line: 6, baseType: !77, size: 32, align: 32, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !99, file: !102, line: 9, baseType: !106, size: 64, align: 64, offset: 128)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64, align: 64)
!107 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !99, file: !102, line: 10, baseType: !77, size: 32, align: 32, offset: 192)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !99, file: !102, line: 11, baseType: !106, size: 64, align: 64, offset: 256)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !99, file: !102, line: 11, baseType: !106, size: 64, align: 64, offset: 320)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !99, file: !102, line: 11, baseType: !106, size: 64, align: 64, offset: 384)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !99, file: !102, line: 13, baseType: !113, size: 16, align: 16, offset: 448)
!113 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !99, file: !102, line: 14, baseType: !106, size: 64, align: 64, offset: 512)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !99, file: !102, line: 15, baseType: !106, size: 64, align: 64, offset: 576)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !99, file: !102, line: 16, baseType: !77, size: 32, align: 32, offset: 640)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !99, file: !102, line: 17, baseType: !106, size: 64, align: 64, offset: 704)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !99, file: !102, line: 19, baseType: !119, size: 64, align: 64, offset: 768)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !121, line: 99, baseType: !122)
!121 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!122 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !121, line: 99, flags: DIFlagFwdDecl)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !99, file: !102, line: 19, baseType: !119, size: 64, align: 64, offset: 832)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !99, file: !102, line: 21, baseType: !106, size: 64, align: 64, offset: 896)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !99, file: !102, line: 22, baseType: !106, size: 64, align: 64, offset: 960)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !99, file: !102, line: 23, baseType: !106, size: 64, align: 64, offset: 1024)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !99, file: !102, line: 24, baseType: !106, size: 64, align: 64, offset: 1088)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !99, file: !102, line: 26, baseType: !106, size: 64, align: 64, offset: 1152)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !99, file: !102, line: 27, baseType: !106, size: 64, align: 64, offset: 1216)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !99, file: !102, line: 28, baseType: !106, size: 64, align: 64, offset: 1280)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !99, file: !102, line: 29, baseType: !106, size: 64, align: 64, offset: 1344)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !99, file: !102, line: 30, baseType: !106, size: 64, align: 64, offset: 1408)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !99, file: !102, line: 31, baseType: !106, size: 64, align: 64, offset: 1472)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !99, file: !102, line: 32, baseType: !106, size: 64, align: 64, offset: 1536)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !99, file: !102, line: 33, baseType: !106, size: 64, align: 64, offset: 1600)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !99, file: !102, line: 35, baseType: !137, size: 64, align: 64, offset: 1664)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64, align: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !139)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !140)
!140 = !{!141, !144, !288, !289, !294, !295, !296, !297, !298, !307, !308, !309, !313, !314, !315, !316, !317, !318, !319, !320}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !139, file: !4, line: 100, baseType: !142, size: 32, align: 32)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !143, line: 49, baseType: !77)
!143 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!144 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !139, file: !4, line: 101, baseType: !145, size: 64, align: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64, align: 64)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !147)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !148)
!148 = !{!149, !173, !179, !186, !190, !275, !279, !284}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !147, file: !4, line: 133, baseType: !150, size: 64, align: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, align: 64)
!151 = !DISubroutineType(types: !152)
!152 = !{!153, !137, !154, !156, !159, !160}
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64, align: 64)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !143, line: 46, baseType: !107)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !157, line: 66, baseType: !158)
!157 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!158 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64, align: 64)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64, align: 64)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64, align: 64)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !163, line: 42, baseType: !164)
!163 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !163, line: 44, size: 128, align: 64, elements: !165)
!165 = !{!166, !171, !172}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !164, file: !163, line: 46, baseType: !167, size: 32, align: 32)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !168, line: 36, baseType: !169)
!168 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !157, line: 45, baseType: !170)
!170 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !164, file: !163, line: 47, baseType: !142, size: 32, align: 32, offset: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !164, file: !163, line: 48, baseType: !154, size: 64, align: 64, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !147, file: !4, line: 138, baseType: !174, size: 64, align: 64, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64, align: 64)
!175 = !DISubroutineType(types: !176)
!176 = !{!153, !137, !177, !156, !159, !160}
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64, align: 64)
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !155)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !147, file: !4, line: 143, baseType: !180, size: 64, align: 64, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64, align: 64)
!181 = !DISubroutineType(types: !182)
!182 = !{!153, !137, !183, !185, !160}
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !157, line: 51, baseType: !184)
!184 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !147, file: !4, line: 147, baseType: !187, size: 64, align: 64, offset: 192)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64, align: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{!153, !137, !160}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !147, file: !4, line: 149, baseType: !191, size: 64, align: 64, offset: 256)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64, align: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{!194, !137, !274}
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64, align: 64)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !196)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !197)
!197 = !{!198, !200, !221, !250, !252, !256, !257, !258, !259, !267, !268, !269, !270}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !196, file: !16, line: 174, baseType: !199, size: 64, align: 64)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !143, line: 77, baseType: !85)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !196, file: !16, line: 175, baseType: !201, size: 64, align: 64, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64, align: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !203)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !204)
!204 = !{!205, !209, !210}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !203, file: !16, line: 198, baseType: !206, size: 64, align: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64, align: 64)
!207 = !DISubroutineType(types: !208)
!208 = !{null, !199}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !203, file: !16, line: 199, baseType: !206, size: 64, align: 64, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !203, file: !16, line: 200, baseType: !211, size: 64, align: 64, offset: 128)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64, align: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{null, !199, !194, !214, !220}
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64, align: 64)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{!219, !199}
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !143, line: 50, baseType: !142)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64, align: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !196, file: !16, line: 177, baseType: !222, size: 64, align: 64, offset: 128)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64, align: 64)
!223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !225)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !226)
!226 = !{!227, !232, !236, !240, !244, !245}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !225, file: !16, line: 216, baseType: !228, size: 64, align: 64)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64, align: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{!219, !194, !231}
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64, align: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !225, file: !16, line: 218, baseType: !233, size: 64, align: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64, align: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!219, !194}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !225, file: !16, line: 219, baseType: !237, size: 64, align: 64, offset: 128)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64, align: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{!219, !194, !215, !199}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !225, file: !16, line: 222, baseType: !241, size: 64, align: 64, offset: 192)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64, align: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{null, !194}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !225, file: !16, line: 226, baseType: !215, size: 64, align: 64, offset: 256)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !225, file: !16, line: 227, baseType: !246, size: 64, align: 64, offset: 320)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !247)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64, align: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{null}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !196, file: !16, line: 178, baseType: !251, size: 32, align: 32, offset: 192)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !143, line: 55, baseType: !170)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !196, file: !16, line: 180, baseType: !253, size: 64, align: 64, offset: 256)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !255)
!255 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !196, file: !16, line: 182, baseType: !142, size: 32, align: 32, offset: 320)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !196, file: !16, line: 183, baseType: !251, size: 32, align: 32, offset: 352)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !196, file: !16, line: 184, baseType: !251, size: 32, align: 32, offset: 384)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !196, file: !16, line: 186, baseType: !260, size: 64, align: 64, offset: 448)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !262, line: 37, baseType: !263)
!262 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !262, line: 39, size: 128, align: 64, elements: !264)
!264 = !{!265, !266}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !263, file: !262, line: 41, baseType: !199, size: 64, align: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !263, file: !262, line: 42, baseType: !260, size: 64, align: 64, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !196, file: !16, line: 188, baseType: !194, size: 64, align: 64, offset: 512)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !196, file: !16, line: 189, baseType: !194, size: 64, align: 64, offset: 576)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !196, file: !16, line: 191, baseType: !106, size: 64, align: 64, offset: 640)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !196, file: !16, line: 193, baseType: !271, size: 64, align: 64, offset: 704)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64, align: 64)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !273)
!273 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !147, file: !4, line: 151, baseType: !276, size: 64, align: 64, offset: 320)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64, align: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{null, !137}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !147, file: !4, line: 152, baseType: !280, size: 64, align: 64, offset: 384)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64, align: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{!153, !137, !283, !160}
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !147, file: !4, line: 155, baseType: !285, size: 64, align: 64, offset: 448)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64, align: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{!283, !137}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !139, file: !4, line: 103, baseType: !154, size: 64, align: 64, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !139, file: !4, line: 104, baseType: !290, size: 64, align: 64, offset: 192)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !291, line: 77, baseType: !292)
!291 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64, align: 64)
!293 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !291, line: 77, flags: DIFlagFwdDecl)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !139, file: !4, line: 105, baseType: !290, size: 64, align: 64, offset: 256)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !139, file: !4, line: 106, baseType: !154, size: 64, align: 64, offset: 320)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !139, file: !4, line: 107, baseType: !251, size: 32, align: 32, offset: 384)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !139, file: !4, line: 109, baseType: !156, size: 64, align: 64, offset: 448)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !139, file: !4, line: 110, baseType: !299, size: 64, align: 64, offset: 512)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64, align: 64)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !301, line: 39, baseType: !302)
!301 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !301, line: 41, size: 192, align: 64, elements: !303)
!303 = !{!304, !305, !306}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !302, file: !301, line: 43, baseType: !154, size: 64, align: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !302, file: !301, line: 44, baseType: !156, size: 64, align: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !302, file: !301, line: 45, baseType: !156, size: 64, align: 64, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !139, file: !4, line: 111, baseType: !299, size: 64, align: 64, offset: 576)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !139, file: !4, line: 112, baseType: !299, size: 64, align: 64, offset: 640)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !139, file: !4, line: 113, baseType: !310, size: 48, align: 8, offset: 704)
!310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 48, align: 8, elements: !311)
!311 = !{!312}
!312 = !DISubrange(count: 6)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !139, file: !4, line: 117, baseType: !251, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !139, file: !4, line: 118, baseType: !251, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !139, file: !4, line: 119, baseType: !251, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !139, file: !4, line: 120, baseType: !251, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !139, file: !4, line: 121, baseType: !251, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !139, file: !4, line: 122, baseType: !251, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !139, file: !4, line: 124, baseType: !199, size: 64, align: 64, offset: 768)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !139, file: !4, line: 125, baseType: !199, size: 64, align: 64, offset: 832)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !99, file: !102, line: 38, baseType: !170, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !99, file: !102, line: 39, baseType: !170, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !99, file: !102, line: 40, baseType: !170, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !99, file: !102, line: 41, baseType: !170, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !99, file: !102, line: 42, baseType: !170, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !99, file: !102, line: 43, baseType: !170, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !99, file: !102, line: 44, baseType: !170, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !99, file: !102, line: 45, baseType: !170, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !99, file: !102, line: 46, baseType: !106, size: 64, align: 64, offset: 1792)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !99, file: !102, line: 47, baseType: !106, size: 64, align: 64, offset: 1856)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !99, file: !90, line: 27, baseType: !106, size: 64, align: 64, offset: 1920)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_nick", scope: !99, file: !90, line: 28, baseType: !106, size: 64, align: 64, offset: 1984)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !99, file: !90, line: 30, baseType: !77, size: 32, align: 32, offset: 2048)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_username", scope: !99, file: !90, line: 31, baseType: !106, size: 64, align: 64, offset: 2112)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !99, file: !90, line: 32, baseType: !106, size: 64, align: 64, offset: 2176)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !99, file: !90, line: 34, baseType: !77, size: 32, align: 32, offset: 2240)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !99, file: !90, line: 35, baseType: !77, size: 32, align: 32, offset: 2272)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !99, file: !90, line: 36, baseType: !77, size: 32, align: 32, offset: 2304)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks", scope: !99, file: !90, line: 38, baseType: !77, size: 32, align: 32, offset: 2336)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !99, file: !90, line: 38, baseType: !77, size: 32, align: 32, offset: 2368)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes", scope: !99, file: !90, line: 38, baseType: !77, size: 32, align: 32, offset: 2400)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois", scope: !99, file: !90, line: 38, baseType: !77, size: 32, align: 32, offset: 2432)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !89, file: !93, line: 9, baseType: !344, size: 64, align: 64, offset: 192)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !345, line: 75, baseType: !346)
!345 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !347, line: 139, baseType: !184)
!347 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!348 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !89, file: !93, line: 10, baseType: !344, size: 64, align: 64, offset: 256)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !89, file: !93, line: 12, baseType: !106, size: 64, align: 64, offset: 320)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !89, file: !93, line: 13, baseType: !106, size: 64, align: 64, offset: 384)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !89, file: !93, line: 15, baseType: !170, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !89, file: !93, line: 16, baseType: !170, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !89, file: !93, line: 17, baseType: !170, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !89, file: !93, line: 18, baseType: !170, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !89, file: !93, line: 19, baseType: !170, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !89, file: !93, line: 21, baseType: !357, size: 64, align: 64, offset: 512)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64, align: 64)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !121, line: 102, baseType: !359)
!359 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !121, line: 102, flags: DIFlagFwdDecl)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !89, file: !93, line: 22, baseType: !77, size: 32, align: 32, offset: 576)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !89, file: !93, line: 25, baseType: !362, size: 128, align: 64, offset: 640)
!362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 128, align: 64, elements: !363)
!363 = !{!364}
!364 = !DISubrange(count: 2)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !89, file: !93, line: 26, baseType: !77, size: 32, align: 32, offset: 768)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !89, file: !93, line: 27, baseType: !77, size: 32, align: 32, offset: 800)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !89, file: !93, line: 29, baseType: !368, size: 64, align: 64, offset: 832)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64, align: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !121, line: 103, baseType: !370)
!370 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !121, line: 103, flags: DIFlagFwdDecl)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !89, file: !93, line: 30, baseType: !80, size: 64, align: 64, offset: 896)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !89, file: !93, line: 32, baseType: !106, size: 64, align: 64, offset: 960)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !89, file: !93, line: 33, baseType: !106, size: 64, align: 64, offset: 1024)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !89, file: !93, line: 34, baseType: !106, size: 64, align: 64, offset: 1088)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !89, file: !93, line: 35, baseType: !170, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !89, file: !93, line: 36, baseType: !170, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !89, file: !93, line: 37, baseType: !170, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !89, file: !93, line: 38, baseType: !170, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !89, file: !93, line: 40, baseType: !380, size: 128, align: 64, offset: 1216)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !143, line: 504, baseType: !381)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !143, line: 506, size: 128, align: 64, elements: !382)
!382 = !{!383, !385}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !381, file: !143, line: 508, baseType: !384, size: 64, align: 64)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !143, line: 48, baseType: !184)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !381, file: !143, line: 509, baseType: !384, size: 64, align: 64, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !89, file: !93, line: 41, baseType: !344, size: 64, align: 64, offset: 1344)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !89, file: !93, line: 42, baseType: !77, size: 32, align: 32, offset: 1408)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !89, file: !93, line: 44, baseType: !260, size: 64, align: 64, offset: 1472)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !89, file: !93, line: 45, baseType: !260, size: 64, align: 64, offset: 1536)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !89, file: !93, line: 53, baseType: !391, size: 64, align: 64, offset: 1600)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64, align: 64)
!392 = !DISubroutineType(types: !393)
!393 = !{null, !394, !482, !77}
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64, align: 64)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !121, line: 107, baseType: !396)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !397, line: 30, size: 2240, align: 64, elements: !398)
!397 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!398 = !{!399, !400, !401, !402, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !478, !484, !488, !492, !497, !575, !582, !586}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !396, file: !93, line: 3, baseType: !77, size: 32, align: 32)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !396, file: !93, line: 4, baseType: !77, size: 32, align: 32, offset: 32)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !396, file: !93, line: 6, baseType: !77, size: 32, align: 32, offset: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !396, file: !93, line: 8, baseType: !403, size: 64, align: 64, offset: 128)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64, align: 64)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !121, line: 113, baseType: !405)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !397, line: 25, size: 1920, align: 64, elements: !406)
!406 = !{!407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !405, file: !102, line: 3, baseType: !77, size: 32, align: 32)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !405, file: !102, line: 4, baseType: !77, size: 32, align: 32, offset: 32)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !405, file: !102, line: 6, baseType: !77, size: 32, align: 32, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !405, file: !102, line: 9, baseType: !106, size: 64, align: 64, offset: 128)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !405, file: !102, line: 10, baseType: !77, size: 32, align: 32, offset: 192)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !405, file: !102, line: 11, baseType: !106, size: 64, align: 64, offset: 256)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !405, file: !102, line: 11, baseType: !106, size: 64, align: 64, offset: 320)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !405, file: !102, line: 11, baseType: !106, size: 64, align: 64, offset: 384)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !405, file: !102, line: 13, baseType: !113, size: 16, align: 16, offset: 448)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !405, file: !102, line: 14, baseType: !106, size: 64, align: 64, offset: 512)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !405, file: !102, line: 15, baseType: !106, size: 64, align: 64, offset: 576)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !405, file: !102, line: 16, baseType: !77, size: 32, align: 32, offset: 640)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !405, file: !102, line: 17, baseType: !106, size: 64, align: 64, offset: 704)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !405, file: !102, line: 19, baseType: !119, size: 64, align: 64, offset: 768)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !405, file: !102, line: 19, baseType: !119, size: 64, align: 64, offset: 832)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !405, file: !102, line: 21, baseType: !106, size: 64, align: 64, offset: 896)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !405, file: !102, line: 22, baseType: !106, size: 64, align: 64, offset: 960)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !405, file: !102, line: 23, baseType: !106, size: 64, align: 64, offset: 1024)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !405, file: !102, line: 24, baseType: !106, size: 64, align: 64, offset: 1088)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !405, file: !102, line: 26, baseType: !106, size: 64, align: 64, offset: 1152)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !405, file: !102, line: 27, baseType: !106, size: 64, align: 64, offset: 1216)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !405, file: !102, line: 28, baseType: !106, size: 64, align: 64, offset: 1280)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !405, file: !102, line: 29, baseType: !106, size: 64, align: 64, offset: 1344)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !405, file: !102, line: 30, baseType: !106, size: 64, align: 64, offset: 1408)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !405, file: !102, line: 31, baseType: !106, size: 64, align: 64, offset: 1472)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !405, file: !102, line: 32, baseType: !106, size: 64, align: 64, offset: 1536)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !405, file: !102, line: 33, baseType: !106, size: 64, align: 64, offset: 1600)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !405, file: !102, line: 35, baseType: !137, size: 64, align: 64, offset: 1664)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !405, file: !102, line: 38, baseType: !170, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !405, file: !102, line: 39, baseType: !170, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !405, file: !102, line: 40, baseType: !170, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !405, file: !102, line: 41, baseType: !170, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !405, file: !102, line: 42, baseType: !170, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !405, file: !102, line: 43, baseType: !170, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !405, file: !102, line: 44, baseType: !170, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !405, file: !102, line: 45, baseType: !170, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !405, file: !102, line: 46, baseType: !106, size: 64, align: 64, offset: 1792)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !405, file: !102, line: 47, baseType: !106, size: 64, align: 64, offset: 1856)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !396, file: !93, line: 9, baseType: !344, size: 64, align: 64, offset: 192)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !396, file: !93, line: 10, baseType: !344, size: 64, align: 64, offset: 256)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !396, file: !93, line: 12, baseType: !106, size: 64, align: 64, offset: 320)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !396, file: !93, line: 13, baseType: !106, size: 64, align: 64, offset: 384)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !396, file: !93, line: 15, baseType: !170, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !396, file: !93, line: 16, baseType: !170, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !396, file: !93, line: 17, baseType: !170, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !396, file: !93, line: 18, baseType: !170, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !396, file: !93, line: 19, baseType: !170, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !396, file: !93, line: 21, baseType: !357, size: 64, align: 64, offset: 512)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !396, file: !93, line: 22, baseType: !77, size: 32, align: 32, offset: 576)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !396, file: !93, line: 25, baseType: !362, size: 128, align: 64, offset: 640)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !396, file: !93, line: 26, baseType: !77, size: 32, align: 32, offset: 768)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !396, file: !93, line: 27, baseType: !77, size: 32, align: 32, offset: 800)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !396, file: !93, line: 29, baseType: !368, size: 64, align: 64, offset: 832)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !396, file: !93, line: 30, baseType: !80, size: 64, align: 64, offset: 896)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !396, file: !93, line: 32, baseType: !106, size: 64, align: 64, offset: 960)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !396, file: !93, line: 33, baseType: !106, size: 64, align: 64, offset: 1024)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !396, file: !93, line: 34, baseType: !106, size: 64, align: 64, offset: 1088)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !396, file: !93, line: 35, baseType: !170, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !396, file: !93, line: 36, baseType: !170, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !396, file: !93, line: 37, baseType: !170, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !396, file: !93, line: 38, baseType: !170, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !396, file: !93, line: 40, baseType: !380, size: 128, align: 64, offset: 1216)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !396, file: !93, line: 41, baseType: !344, size: 64, align: 64, offset: 1344)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !396, file: !93, line: 42, baseType: !77, size: 32, align: 32, offset: 1408)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !396, file: !93, line: 44, baseType: !260, size: 64, align: 64, offset: 1472)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !396, file: !93, line: 45, baseType: !260, size: 64, align: 64, offset: 1536)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !396, file: !93, line: 53, baseType: !391, size: 64, align: 64, offset: 1600)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !396, file: !93, line: 55, baseType: !475, size: 64, align: 64, offset: 1664)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64, align: 64)
!476 = !DISubroutineType(types: !477)
!477 = !{!77, !394, !107}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !396, file: !93, line: 57, baseType: !479, size: 64, align: 64, offset: 1728)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64, align: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{!77, !394, !482}
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64, align: 64)
!483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !396, file: !93, line: 60, baseType: !485, size: 64, align: 64, offset: 1792)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64, align: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{!482, !394}
!488 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !396, file: !93, line: 62, baseType: !489, size: 64, align: 64, offset: 1856)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64, align: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{null, !394, !482, !482, !77}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !396, file: !93, line: 65, baseType: !493, size: 64, align: 64, offset: 1920)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64, align: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!496, !394, !482, !482}
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64, align: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !396, file: !93, line: 69, baseType: !498, size: 64, align: 64, offset: 1984)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64, align: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{!501, !394, !482}
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64, align: 64)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !121, line: 109, baseType: !503)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !504, line: 15, size: 1408, align: 64, elements: !505)
!504 = !DIFile(filename: "../../../src/core/channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!505 = !{!506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !523, !527, !529, !530, !531, !532, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !503, file: !76, line: 3, baseType: !77, size: 32, align: 32)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !503, file: !76, line: 4, baseType: !77, size: 32, align: 32, offset: 32)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !503, file: !76, line: 5, baseType: !80, size: 64, align: 64, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !503, file: !76, line: 7, baseType: !85, size: 64, align: 64, offset: 128)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !503, file: !76, line: 8, baseType: !394, size: 64, align: 64, offset: 192)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !503, file: !76, line: 9, baseType: !106, size: 64, align: 64, offset: 256)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !503, file: !76, line: 10, baseType: !106, size: 64, align: 64, offset: 320)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !503, file: !76, line: 11, baseType: !344, size: 64, align: 64, offset: 384)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !503, file: !76, line: 12, baseType: !77, size: 32, align: 32, offset: 448)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !503, file: !76, line: 13, baseType: !106, size: 64, align: 64, offset: 512)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !503, file: !76, line: 15, baseType: !517, size: 64, align: 64, offset: 576)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64, align: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{null, !520}
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64, align: 64)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !121, line: 108, baseType: !522)
!522 = !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !121, line: 108, flags: DIFlagFwdDecl)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !503, file: !76, line: 17, baseType: !524, size: 64, align: 64, offset: 640)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64, align: 64)
!525 = !DISubroutineType(types: !526)
!526 = !{!482, !520}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !503, file: !528, line: 5, baseType: !106, size: 64, align: 64, offset: 704)
!528 = !DIFile(filename: "../../../src/core/channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!529 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !503, file: !528, line: 6, baseType: !106, size: 64, align: 64, offset: 768)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !503, file: !528, line: 7, baseType: !344, size: 64, align: 64, offset: 832)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !503, file: !528, line: 9, baseType: !80, size: 64, align: 64, offset: 896)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !503, file: !528, line: 10, baseType: !533, size: 64, align: 64, offset: 960)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64, align: 64)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !121, line: 111, baseType: !535)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !536, line: 13, size: 576, align: 64, elements: !537)
!536 = !DIFile(filename: "../../../src/core/nicklist.h", directory: "/home/lichi/Desktop/irssi/task1")
!537 = !{!538, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !556, !557}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !535, file: !539, line: 3, baseType: !77, size: 32, align: 32)
!539 = !DIFile(filename: "../../../src/core/nick-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!540 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !535, file: !539, line: 4, baseType: !77, size: 32, align: 32, offset: 32)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "last_check", scope: !535, file: !539, line: 6, baseType: !344, size: 64, align: 64, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !535, file: !539, line: 8, baseType: !106, size: 64, align: 64, offset: 128)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !535, file: !539, line: 9, baseType: !106, size: 64, align: 64, offset: 192)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !535, file: !539, line: 10, baseType: !106, size: 64, align: 64, offset: 256)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "hops", scope: !535, file: !539, line: 11, baseType: !77, size: 32, align: 32, offset: 320)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "gone", scope: !535, file: !539, line: 14, baseType: !170, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "serverop", scope: !535, file: !539, line: 15, baseType: !170, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "send_massjoin", scope: !535, file: !539, line: 18, baseType: !170, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !535, file: !539, line: 19, baseType: !170, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !535, file: !539, line: 20, baseType: !170, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !535, file: !539, line: 21, baseType: !170, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !535, file: !539, line: 22, baseType: !553, size: 64, align: 8, offset: 360)
!553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 64, align: 8, elements: !554)
!554 = !{!555}
!555 = !DISubrange(count: 8)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !535, file: !539, line: 26, baseType: !85, size: 64, align: 64, offset: 448)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !535, file: !539, line: 28, baseType: !533, size: 64, align: 64, offset: 512)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !503, file: !528, line: 12, baseType: !170, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !503, file: !528, line: 13, baseType: !106, size: 64, align: 64, offset: 1088)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !503, file: !528, line: 14, baseType: !77, size: 32, align: 32, offset: 1152)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !503, file: !528, line: 15, baseType: !106, size: 64, align: 64, offset: 1216)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !503, file: !528, line: 17, baseType: !170, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !503, file: !528, line: 18, baseType: !170, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !503, file: !528, line: 19, baseType: !170, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !503, file: !528, line: 20, baseType: !170, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !503, file: !528, line: 22, baseType: !170, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !503, file: !528, line: 23, baseType: !170, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !503, file: !528, line: 24, baseType: !170, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !503, file: !528, line: 25, baseType: !170, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !503, file: !528, line: 26, baseType: !170, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !503, file: !528, line: 31, baseType: !572, size: 64, align: 64, offset: 1344)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64, align: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!106, !501}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !396, file: !93, line: 70, baseType: !576, size: 64, align: 64, offset: 2048)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64, align: 64)
!577 = !DISubroutineType(types: !578)
!578 = !{!579, !394, !482}
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64, align: 64)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !121, line: 110, baseType: !581)
!581 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !121, line: 110, flags: DIFlagFwdDecl)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !396, file: !93, line: 71, baseType: !583, size: 64, align: 64, offset: 2112)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64, align: 64)
!584 = !DISubroutineType(types: !585)
!585 = !{!77, !482, !482}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !396, file: !93, line: 73, baseType: !583, size: 64, align: 64, offset: 2176)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !89, file: !93, line: 55, baseType: !475, size: 64, align: 64, offset: 1664)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !89, file: !93, line: 57, baseType: !479, size: 64, align: 64, offset: 1728)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !89, file: !93, line: 60, baseType: !485, size: 64, align: 64, offset: 1792)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !89, file: !93, line: 62, baseType: !489, size: 64, align: 64, offset: 1856)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !89, file: !93, line: 65, baseType: !493, size: 64, align: 64, offset: 1920)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !89, file: !93, line: 69, baseType: !498, size: 64, align: 64, offset: 1984)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !89, file: !93, line: 70, baseType: !576, size: 64, align: 64, offset: 2048)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !89, file: !93, line: 71, baseType: !583, size: 64, align: 64, offset: 2112)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !89, file: !93, line: 73, baseType: !583, size: 64, align: 64, offset: 2176)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "redirects", scope: !89, file: !90, line: 46, baseType: !260, size: 64, align: 64, offset: 2240)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_queue", scope: !89, file: !90, line: 47, baseType: !260, size: 64, align: 64, offset: 2304)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_next", scope: !89, file: !90, line: 48, baseType: !599, size: 64, align: 64, offset: 2368)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64, align: 64)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "REDIRECT_REC", file: !71, line: 8, baseType: !601)
!601 = !DICompositeType(tag: DW_TAG_structure_type, name: "_REDIRECT_REC", file: !71, line: 8, flags: DIFlagFwdDecl)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_active", scope: !89, file: !90, line: 49, baseType: !260, size: 64, align: 64, offset: 2432)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "last_nick", scope: !89, file: !90, line: 51, baseType: !106, size: 64, align: 64, offset: 2496)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !89, file: !90, line: 53, baseType: !106, size: 64, align: 64, offset: 2560)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !89, file: !90, line: 54, baseType: !106, size: 64, align: 64, offset: 2624)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "wanted_usermode", scope: !89, file: !90, line: 55, baseType: !106, size: 64, align: 64, offset: 2688)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "userhost", scope: !89, file: !90, line: 56, baseType: !106, size: 64, align: 64, offset: 2752)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "channels_formed", scope: !89, file: !90, line: 57, baseType: !77, size: 32, align: 32, offset: 2816)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "whois_found", scope: !89, file: !90, line: 59, baseType: !170, size: 1, align: 32, offset: 2848, flags: DIFlagBitField, extraData: i64 2848)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "whowas_found", scope: !89, file: !90, line: 60, baseType: !170, size: 1, align: 32, offset: 2849, flags: DIFlagBitField, extraData: i64 2848)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "emode_known", scope: !89, file: !90, line: 62, baseType: !170, size: 1, align: 32, offset: 2850, flags: DIFlagBitField, extraData: i64 2848)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_mode", scope: !89, file: !90, line: 63, baseType: !170, size: 1, align: 32, offset: 2851, flags: DIFlagBitField, extraData: i64 2848)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_who", scope: !89, file: !90, line: 64, baseType: !170, size: 1, align: 32, offset: 2852, flags: DIFlagBitField, extraData: i64 2848)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "one_endofwho", scope: !89, file: !90, line: 65, baseType: !170, size: 1, align: 32, offset: 2853, flags: DIFlagBitField, extraData: i64 2848)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "disable_lag", scope: !89, file: !90, line: 66, baseType: !170, size: 1, align: 32, offset: 2854, flags: DIFlagBitField, extraData: i64 2848)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "nick_collision", scope: !89, file: !90, line: 67, baseType: !170, size: 1, align: 32, offset: 2855, flags: DIFlagBitField, extraData: i64 2848)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "motd_got", scope: !89, file: !90, line: 68, baseType: !170, size: 1, align: 32, offset: 2856, flags: DIFlagBitField, extraData: i64 2848)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "isupport_sent", scope: !89, file: !90, line: 69, baseType: !170, size: 1, align: 32, offset: 2857, flags: DIFlagBitField, extraData: i64 2848)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "cap_complete", scope: !89, file: !90, line: 70, baseType: !170, size: 1, align: 32, offset: 2858, flags: DIFlagBitField, extraData: i64 2848)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "cap_in_multiline", scope: !89, file: !90, line: 71, baseType: !170, size: 1, align: 32, offset: 2859, flags: DIFlagBitField, extraData: i64 2848)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_success", scope: !89, file: !90, line: 72, baseType: !170, size: 1, align: 32, offset: 2860, flags: DIFlagBitField, extraData: i64 2848)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks_in_cmd", scope: !89, file: !90, line: 74, baseType: !77, size: 32, align: 32, offset: 2880)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes_in_cmd", scope: !89, file: !90, line: 75, baseType: !77, size: 32, align: 32, offset: 2912)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois_in_cmd", scope: !89, file: !90, line: 76, baseType: !77, size: 32, align: 32, offset: 2944)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs_in_cmd", scope: !89, file: !90, line: 77, baseType: !77, size: 32, align: 32, offset: 2976)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "cap_supported", scope: !89, file: !90, line: 79, baseType: !80, size: 64, align: 64, offset: 3008)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "cap_active", scope: !89, file: !90, line: 80, baseType: !260, size: 64, align: 64, offset: 3072)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "cap_queue", scope: !89, file: !90, line: 81, baseType: !260, size: 64, align: 64, offset: 3136)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_buffer", scope: !89, file: !90, line: 83, baseType: !299, size: 64, align: 64, offset: 3200)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_timeout", scope: !89, file: !90, line: 84, baseType: !251, size: 32, align: 32, offset: 3264)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcount", scope: !89, file: !90, line: 87, baseType: !77, size: 32, align: 32, offset: 3296)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "cmdqueue", scope: !89, file: !90, line: 91, baseType: !260, size: 64, align: 64, offset: 3328)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "wait_cmd", scope: !89, file: !90, line: 92, baseType: !380, size: 128, align: 64, offset: 3392)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd", scope: !89, file: !90, line: 93, baseType: !380, size: 128, align: 64, offset: 3520)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !89, file: !90, line: 95, baseType: !77, size: 32, align: 32, offset: 3648)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !89, file: !90, line: 96, baseType: !77, size: 32, align: 32, offset: 3680)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !89, file: !90, line: 97, baseType: !77, size: 32, align: 32, offset: 3712)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "idles", scope: !89, file: !90, line: 100, baseType: !260, size: 64, align: 64, offset: 3776)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "ctcpqueue", scope: !89, file: !90, line: 103, baseType: !260, size: 64, align: 64, offset: 3840)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "knockoutlist", scope: !89, file: !90, line: 106, baseType: !260, size: 64, align: 64, offset: 3904)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "splits", scope: !89, file: !90, line: 108, baseType: !80, size: 64, align: 64, offset: 3968)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "split_servers", scope: !89, file: !90, line: 109, baseType: !260, size: 64, align: 64, offset: 4032)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "rejoin_channels", scope: !89, file: !90, line: 111, baseType: !260, size: 64, align: 64, offset: 4096)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "chanqueries", scope: !89, file: !90, line: 114, baseType: !85, size: 64, align: 64, offset: 4160)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "isupport", scope: !89, file: !90, line: 116, baseType: !80, size: 64, align: 64, offset: 4224)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !89, file: !90, line: 117, baseType: !647, size: 32768, align: 64, offset: 4288)
!647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !648, size: 32768, align: 64, elements: !657)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "modes_type", file: !649, line: 10, size: 128, align: 64, elements: !650)
!649 = !DIFile(filename: "modes.h", directory: "/home/lichi/Desktop/irssi/task1")
!650 = !{!651, !656}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !648, file: !649, line: 11, baseType: !652, size: 64, align: 64)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64, align: 64)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_func_t", file: !649, line: 7, baseType: !654)
!654 = !DISubroutineType(types: !655)
!655 = !{null, !69, !482, !107, !107, !106, !299}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !648, file: !649, line: 12, baseType: !107, size: 8, align: 8, offset: 64)
!657 = !{!658}
!658 = !DISubrange(count: 256)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !89, file: !90, line: 118, baseType: !660, size: 2048, align: 8, offset: 37056)
!660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 2048, align: 8, elements: !657)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "nick_comp_func", scope: !89, file: !90, line: 120, baseType: !583, size: 64, align: 64, offset: 39104)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !72, file: !76, line: 9, baseType: !106, size: 64, align: 64, offset: 256)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !72, file: !76, line: 10, baseType: !106, size: 64, align: 64, offset: 320)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !72, file: !76, line: 11, baseType: !344, size: 64, align: 64, offset: 384)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !72, file: !76, line: 12, baseType: !77, size: 32, align: 32, offset: 448)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !72, file: !76, line: 13, baseType: !106, size: 64, align: 64, offset: 512)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !72, file: !76, line: 15, baseType: !517, size: 64, align: 64, offset: 576)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !72, file: !76, line: 17, baseType: !524, size: 64, align: 64, offset: 640)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !72, file: !528, line: 5, baseType: !106, size: 64, align: 64, offset: 704)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !72, file: !528, line: 6, baseType: !106, size: 64, align: 64, offset: 768)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !72, file: !528, line: 7, baseType: !344, size: 64, align: 64, offset: 832)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !72, file: !528, line: 9, baseType: !80, size: 64, align: 64, offset: 896)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !72, file: !528, line: 10, baseType: !533, size: 64, align: 64, offset: 960)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !72, file: !528, line: 12, baseType: !170, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !72, file: !528, line: 13, baseType: !106, size: 64, align: 64, offset: 1088)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !72, file: !528, line: 14, baseType: !77, size: 32, align: 32, offset: 1152)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !72, file: !528, line: 15, baseType: !106, size: 64, align: 64, offset: 1216)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !72, file: !528, line: 17, baseType: !170, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !72, file: !528, line: 18, baseType: !170, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !72, file: !528, line: 19, baseType: !170, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !72, file: !528, line: 20, baseType: !170, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !72, file: !528, line: 22, baseType: !170, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !72, file: !528, line: 23, baseType: !170, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !72, file: !528, line: 24, baseType: !170, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !72, file: !528, line: 25, baseType: !170, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !72, file: !528, line: 26, baseType: !170, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !72, file: !528, line: 31, baseType: !572, size: 64, align: 64, offset: 1344)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "banlist", scope: !72, file: !73, line: 18, baseType: !260, size: 64, align: 64, offset: 1408)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "massjoin_start", scope: !72, file: !73, line: 20, baseType: !344, size: 64, align: 64, offset: 1472)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "massjoins", scope: !72, file: !73, line: 21, baseType: !77, size: 32, align: 32, offset: 1536)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "last_massjoins", scope: !72, file: !73, line: 22, baseType: !77, size: 32, align: 32, offset: 1568)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !693, line: 9, baseType: !694)
!693 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64, align: 64)
!695 = !DISubroutineType(types: !696)
!696 = !{null, !697, !697, !697, !697, !697, !697}
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64, align: 64)
!698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!699 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!700 = !{!701, !703}
!701 = distinct !DIGlobalVariable(name: "default_ban_type_str", scope: !0, file: !702, line: 41, type: !106, isLocal: true, isDefinition: true, variable: i8** @default_ban_type_str)
!702 = !DIFile(filename: "bans.c", directory: "/home/lichi/Desktop/irssi/task1")
!703 = distinct !DIGlobalVariable(name: "default_ban_type", scope: !0, file: !702, line: 42, type: !77, isLocal: true, isDefinition: true, variable: i32* @default_ban_type)
!704 = !{i32 2, !"Dwarf Version", i32 4}
!705 = !{i32 2, !"Debug Info Version", i32 3}
!706 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!707 = distinct !DISubprogram(name: "ban_get_mask", scope: !702, file: !702, line: 44, type: !708, isLocal: false, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !710)
!708 = !DISubroutineType(types: !709)
!709 = !{!106, !69, !482, !77}
!710 = !{}
!711 = !DILocalVariable(name: "channel", arg: 1, scope: !707, file: !702, line: 44, type: !69)
!712 = !DIExpression()
!713 = !DILocation(line: 44, column: 37, scope: !707)
!714 = !DILocalVariable(name: "nick", arg: 2, scope: !707, file: !702, line: 44, type: !482)
!715 = !DILocation(line: 44, column: 58, scope: !707)
!716 = !DILocalVariable(name: "ban_type", arg: 3, scope: !707, file: !702, line: 44, type: !77)
!717 = !DILocation(line: 44, column: 68, scope: !707)
!718 = !DILocalVariable(name: "rec", scope: !707, file: !702, line: 46, type: !533)
!719 = !DILocation(line: 46, column: 12, scope: !707)
!720 = !DILocalVariable(name: "str", scope: !707, file: !702, line: 47, type: !106)
!721 = !DILocation(line: 47, column: 8, scope: !707)
!722 = !DILocalVariable(name: "user", scope: !707, file: !702, line: 47, type: !106)
!723 = !DILocation(line: 47, column: 14, scope: !707)
!724 = !DILocalVariable(name: "host", scope: !707, file: !702, line: 47, type: !106)
!725 = !DILocation(line: 47, column: 21, scope: !707)
!726 = !DILocalVariable(name: "size", scope: !707, file: !702, line: 48, type: !77)
!727 = !DILocation(line: 48, column: 13, scope: !707)
!728 = !DILocation(line: 50, column: 2, scope: !707)
!729 = distinct !{!729, !728}
!730 = !DILocation(line: 50, column: 99, scope: !731)
!731 = !DILexicalBlockFile(scope: !732, file: !702, discriminator: 1)
!732 = distinct !DILexicalBlock(scope: !733, file: !702, line: 50, column: 10)
!733 = distinct !DILexicalBlock(scope: !707, file: !702, line: 50, column: 4)
!734 = !DILocation(line: 50, column: 74, scope: !731)
!735 = !DILocation(line: 50, column: 58, scope: !731)
!736 = !DILocation(line: 50, column: 57, scope: !731)
!737 = !DILocation(line: 50, column: 32, scope: !738)
!738 = !DILexicalBlockFile(scope: !731, file: !702, discriminator: 7)
!739 = !DILocation(line: 50, column: 12, scope: !731)
!740 = !DILocation(line: 50, column: 10, scope: !731)
!741 = !DILocation(line: 50, column: 11, scope: !742)
!742 = !DILexicalBlockFile(scope: !732, file: !702, discriminator: 2)
!743 = !DILocation(line: 50, column: 10, scope: !744)
!744 = !DILexicalBlockFile(scope: !733, file: !702, discriminator: 3)
!745 = !DILocation(line: 50, column: 30, scope: !746)
!746 = !DILexicalBlockFile(scope: !747, file: !702, discriminator: 4)
!747 = distinct !DILexicalBlock(scope: !732, file: !702, line: 50, column: 28)
!748 = !DILocation(line: 50, column: 39, scope: !749)
!749 = !DILexicalBlockFile(scope: !750, file: !702, discriminator: 5)
!750 = distinct !DILexicalBlock(scope: !732, file: !702, line: 50, column: 37)
!751 = !DILocation(line: 50, column: 135, scope: !749)
!752 = !DILocation(line: 50, column: 7, scope: !753)
!753 = !DILexicalBlockFile(scope: !733, file: !702, discriminator: 6)
!754 = !DILocation(line: 51, column: 2, scope: !707)
!755 = distinct !{!755, !754}
!756 = !DILocation(line: 51, column: 10, scope: !757)
!757 = !DILexicalBlockFile(scope: !758, file: !702, discriminator: 1)
!758 = distinct !DILexicalBlock(scope: !759, file: !702, line: 51, column: 10)
!759 = distinct !DILexicalBlock(scope: !707, file: !702, line: 51, column: 4)
!760 = !DILocation(line: 51, column: 15, scope: !757)
!761 = !DILocation(line: 51, column: 5, scope: !762)
!762 = !DILexicalBlockFile(scope: !763, file: !702, discriminator: 2)
!763 = distinct !DILexicalBlock(scope: !758, file: !702, line: 51, column: 3)
!764 = !DILocation(line: 51, column: 14, scope: !765)
!765 = !DILexicalBlockFile(scope: !766, file: !702, discriminator: 3)
!766 = distinct !DILexicalBlock(scope: !758, file: !702, line: 51, column: 12)
!767 = !DILocation(line: 51, column: 99, scope: !765)
!768 = !DILocation(line: 51, column: 7, scope: !769)
!769 = !DILexicalBlockFile(scope: !759, file: !702, discriminator: 4)
!770 = !DILocation(line: 53, column: 64, scope: !707)
!771 = !DILocation(line: 53, column: 39, scope: !707)
!772 = !DILocation(line: 53, column: 23, scope: !707)
!773 = !DILocation(line: 53, column: 56, scope: !707)
!774 = !DILocation(line: 53, column: 8, scope: !775)
!775 = !DILexicalBlockFile(scope: !707, file: !702, discriminator: 1)
!776 = !DILocation(line: 53, column: 6, scope: !707)
!777 = !DILocation(line: 54, column: 6, scope: !778)
!778 = distinct !DILexicalBlock(scope: !707, file: !702, line: 54, column: 6)
!779 = !DILocation(line: 54, column: 10, scope: !778)
!780 = !DILocation(line: 54, column: 6, scope: !707)
!781 = !DILocation(line: 54, column: 18, scope: !782)
!782 = !DILexicalBlockFile(scope: !778, file: !702, discriminator: 1)
!783 = !DILocation(line: 55, column: 6, scope: !784)
!784 = distinct !DILexicalBlock(scope: !707, file: !702, line: 55, column: 6)
!785 = !DILocation(line: 55, column: 11, scope: !784)
!786 = !DILocation(line: 55, column: 16, scope: !784)
!787 = !DILocation(line: 55, column: 6, scope: !707)
!788 = !DILocation(line: 56, column: 96, scope: !789)
!789 = distinct !DILexicalBlock(scope: !784, file: !702, line: 55, column: 24)
!790 = !DILocation(line: 56, column: 105, scope: !789)
!791 = !DILocation(line: 56, column: 111, scope: !789)
!792 = !DILocation(line: 56, column: 3, scope: !789)
!793 = !DILocation(line: 57, column: 36, scope: !789)
!794 = !DILocation(line: 57, column: 10, scope: !789)
!795 = !DILocation(line: 57, column: 3, scope: !789)
!796 = !DILocation(line: 60, column: 6, scope: !797)
!797 = distinct !DILexicalBlock(scope: !707, file: !702, line: 60, column: 6)
!798 = !DILocation(line: 60, column: 15, scope: !797)
!799 = !DILocation(line: 60, column: 6, scope: !707)
!800 = !DILocation(line: 61, column: 14, scope: !797)
!801 = !DILocation(line: 61, column: 12, scope: !797)
!802 = !DILocation(line: 61, column: 3, scope: !797)
!803 = !DILocation(line: 63, column: 21, scope: !707)
!804 = !DILocation(line: 63, column: 27, scope: !707)
!805 = !DILocation(line: 63, column: 32, scope: !707)
!806 = !DILocation(line: 63, column: 38, scope: !707)
!807 = !DILocation(line: 63, column: 8, scope: !707)
!808 = !DILocation(line: 63, column: 6, scope: !707)
!809 = !DILocation(line: 69, column: 16, scope: !707)
!810 = !DILocation(line: 69, column: 9, scope: !707)
!811 = !DILocation(line: 69, column: 7, scope: !707)
!812 = !DILocation(line: 70, column: 6, scope: !813)
!813 = distinct !DILexicalBlock(scope: !707, file: !702, line: 70, column: 6)
!814 = !DILocation(line: 70, column: 11, scope: !813)
!815 = !DILocation(line: 70, column: 6, scope: !707)
!816 = !DILocation(line: 70, column: 26, scope: !817)
!817 = !DILexicalBlockFile(scope: !813, file: !702, discriminator: 1)
!818 = !DILocation(line: 70, column: 19, scope: !817)
!819 = !DILocation(line: 72, column: 16, scope: !707)
!820 = !DILocation(line: 72, column: 9, scope: !707)
!821 = !DILocation(line: 72, column: 7, scope: !707)
!822 = !DILocation(line: 73, column: 6, scope: !823)
!823 = distinct !DILexicalBlock(scope: !707, file: !702, line: 73, column: 6)
!824 = !DILocation(line: 73, column: 11, scope: !823)
!825 = !DILocation(line: 73, column: 6, scope: !707)
!826 = !DILocation(line: 73, column: 26, scope: !827)
!827 = !DILexicalBlockFile(scope: !823, file: !702, discriminator: 1)
!828 = !DILocation(line: 73, column: 19, scope: !827)
!829 = !DILocation(line: 75, column: 23, scope: !707)
!830 = !DILocation(line: 75, column: 28, scope: !707)
!831 = !DILocation(line: 75, column: 27, scope: !707)
!832 = !DILocation(line: 75, column: 16, scope: !707)
!833 = !DILocation(line: 75, column: 14, scope: !707)
!834 = !DILocation(line: 76, column: 6, scope: !835)
!835 = distinct !DILexicalBlock(scope: !707, file: !702, line: 76, column: 6)
!836 = !DILocation(line: 76, column: 11, scope: !835)
!837 = !DILocation(line: 76, column: 6, scope: !707)
!838 = !DILocation(line: 78, column: 3, scope: !839)
!839 = distinct !DILexicalBlock(scope: !835, file: !702, line: 76, column: 18)
!840 = distinct !{!840, !838}
!841 = !DILocation(line: 78, column: 18, scope: !842)
!842 = !DILexicalBlockFile(scope: !843, file: !702, discriminator: 1)
!843 = distinct !DILexicalBlock(scope: !839, file: !702, line: 78, column: 6)
!844 = !DILocation(line: 78, column: 22, scope: !842)
!845 = !DILocation(line: 78, column: 28, scope: !842)
!846 = !DILocation(line: 78, column: 34, scope: !842)
!847 = !DILocation(line: 78, column: 38, scope: !842)
!848 = !DILocation(line: 78, column: 32, scope: !842)
!849 = !DILocation(line: 78, column: 52, scope: !842)
!850 = !DILocation(line: 78, column: 58, scope: !842)
!851 = !DILocation(line: 78, column: 62, scope: !842)
!852 = !DILocation(line: 78, column: 56, scope: !842)
!853 = !DILocation(line: 78, column: 45, scope: !842)
!854 = !DILocation(line: 78, column: 66, scope: !842)
!855 = !DILocation(line: 78, column: 8, scope: !856)
!856 = !DILexicalBlockFile(scope: !842, file: !702, discriminator: 2)
!857 = !DILocation(line: 78, column: 72, scope: !842)
!858 = !DILocation(line: 79, column: 2, scope: !839)
!859 = !DILocation(line: 80, column: 9, scope: !707)
!860 = !DILocation(line: 80, column: 2, scope: !707)
!861 = !DILocation(line: 81, column: 1, scope: !707)
!862 = distinct !DISubprogram(name: "ban_get_masks", scope: !702, file: !702, line: 83, type: !708, isLocal: false, isDefinition: true, scopeLine: 84, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !710)
!863 = !DILocalVariable(name: "channel", arg: 1, scope: !862, file: !702, line: 83, type: !69)
!864 = !DILocation(line: 83, column: 38, scope: !862)
!865 = !DILocalVariable(name: "nicks", arg: 2, scope: !862, file: !702, line: 83, type: !482)
!866 = !DILocation(line: 83, column: 59, scope: !862)
!867 = !DILocalVariable(name: "ban_type", arg: 3, scope: !862, file: !702, line: 83, type: !77)
!868 = !DILocation(line: 83, column: 70, scope: !862)
!869 = !DILocalVariable(name: "str", scope: !862, file: !702, line: 85, type: !299)
!870 = !DILocation(line: 85, column: 11, scope: !862)
!871 = !DILocalVariable(name: "ban", scope: !862, file: !702, line: 86, type: !496)
!872 = !DILocation(line: 86, column: 9, scope: !862)
!873 = !DILocalVariable(name: "banlist", scope: !862, file: !702, line: 86, type: !496)
!874 = !DILocation(line: 86, column: 16, scope: !862)
!875 = !DILocalVariable(name: "realban", scope: !862, file: !702, line: 86, type: !106)
!876 = !DILocation(line: 86, column: 26, scope: !862)
!877 = !DILocalVariable(name: "ret", scope: !862, file: !702, line: 86, type: !106)
!878 = !DILocation(line: 86, column: 36, scope: !862)
!879 = !DILocation(line: 88, column: 8, scope: !862)
!880 = !DILocation(line: 88, column: 6, scope: !862)
!881 = !DILocation(line: 89, column: 23, scope: !862)
!882 = !DILocation(line: 89, column: 12, scope: !862)
!883 = !DILocation(line: 89, column: 10, scope: !862)
!884 = !DILocation(line: 90, column: 13, scope: !885)
!885 = distinct !DILexicalBlock(scope: !862, file: !702, line: 90, column: 2)
!886 = !DILocation(line: 90, column: 11, scope: !885)
!887 = !DILocation(line: 90, column: 7, scope: !885)
!888 = !DILocation(line: 90, column: 23, scope: !889)
!889 = !DILexicalBlockFile(scope: !890, file: !702, discriminator: 1)
!890 = distinct !DILexicalBlock(scope: !885, file: !702, line: 90, column: 2)
!891 = !DILocation(line: 90, column: 22, scope: !889)
!892 = !DILocation(line: 90, column: 27, scope: !889)
!893 = !DILocation(line: 90, column: 2, scope: !889)
!894 = !DILocation(line: 91, column: 9, scope: !895)
!895 = distinct !DILexicalBlock(scope: !896, file: !702, line: 91, column: 7)
!896 = distinct !DILexicalBlock(scope: !890, file: !702, line: 90, column: 42)
!897 = !DILocation(line: 91, column: 8, scope: !895)
!898 = !DILocation(line: 91, column: 7, scope: !895)
!899 = !DILocation(line: 91, column: 13, scope: !895)
!900 = !DILocation(line: 91, column: 20, scope: !895)
!901 = !DILocation(line: 91, column: 31, scope: !902)
!902 = !DILexicalBlockFile(scope: !895, file: !702, discriminator: 1)
!903 = !DILocation(line: 91, column: 30, scope: !902)
!904 = !DILocation(line: 91, column: 23, scope: !902)
!905 = !DILocation(line: 91, column: 41, scope: !902)
!906 = !DILocation(line: 91, column: 7, scope: !902)
!907 = !DILocation(line: 93, column: 27, scope: !908)
!908 = distinct !DILexicalBlock(scope: !895, file: !702, line: 91, column: 49)
!909 = !DILocation(line: 93, column: 40, scope: !908)
!910 = !DILocation(line: 93, column: 39, scope: !908)
!911 = !DILocation(line: 93, column: 4, scope: !908)
!912 = !DILocation(line: 94, column: 4, scope: !908)
!913 = !DILocation(line: 98, column: 26, scope: !896)
!914 = !DILocation(line: 98, column: 36, scope: !896)
!915 = !DILocation(line: 98, column: 35, scope: !896)
!916 = !DILocation(line: 98, column: 41, scope: !896)
!917 = !DILocation(line: 98, column: 13, scope: !896)
!918 = !DILocation(line: 98, column: 11, scope: !896)
!919 = !DILocation(line: 99, column: 7, scope: !920)
!920 = distinct !DILexicalBlock(scope: !896, file: !702, line: 99, column: 7)
!921 = !DILocation(line: 99, column: 15, scope: !920)
!922 = !DILocation(line: 99, column: 7, scope: !896)
!923 = !DILocation(line: 100, column: 27, scope: !924)
!924 = distinct !DILexicalBlock(scope: !920, file: !702, line: 99, column: 23)
!925 = !DILocation(line: 100, column: 39, scope: !924)
!926 = !DILocation(line: 100, column: 4, scope: !924)
!927 = !DILocation(line: 101, column: 11, scope: !924)
!928 = !DILocation(line: 101, column: 4, scope: !924)
!929 = !DILocation(line: 102, column: 3, scope: !924)
!930 = !DILocation(line: 103, column: 2, scope: !896)
!931 = !DILocation(line: 90, column: 38, scope: !932)
!932 = !DILexicalBlockFile(scope: !890, file: !702, discriminator: 2)
!933 = !DILocation(line: 90, column: 2, scope: !932)
!934 = distinct !{!934, !935}
!935 = !DILocation(line: 90, column: 2, scope: !862)
!936 = !DILocation(line: 104, column: 13, scope: !862)
!937 = !DILocation(line: 104, column: 2, scope: !862)
!938 = !DILocation(line: 106, column: 6, scope: !939)
!939 = distinct !DILexicalBlock(scope: !862, file: !702, line: 106, column: 6)
!940 = !DILocation(line: 106, column: 11, scope: !939)
!941 = !DILocation(line: 106, column: 15, scope: !939)
!942 = !DILocation(line: 106, column: 6, scope: !862)
!943 = !DILocation(line: 107, column: 21, scope: !939)
!944 = !DILocation(line: 107, column: 26, scope: !939)
!945 = !DILocation(line: 107, column: 31, scope: !939)
!946 = !DILocation(line: 107, column: 34, scope: !939)
!947 = !DILocation(line: 107, column: 3, scope: !939)
!948 = !DILocation(line: 109, column: 8, scope: !862)
!949 = !DILocation(line: 109, column: 13, scope: !862)
!950 = !DILocation(line: 109, column: 6, scope: !862)
!951 = !DILocation(line: 110, column: 16, scope: !862)
!952 = !DILocation(line: 110, column: 2, scope: !862)
!953 = !DILocation(line: 111, column: 16, scope: !862)
!954 = !DILocation(line: 111, column: 9, scope: !862)
!955 = distinct !DISubprogram(name: "ban_set", scope: !702, file: !702, line: 114, type: !956, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !710)
!956 = !DISubroutineType(types: !957)
!957 = !{null, !69, !482, !77}
!958 = !DILocalVariable(name: "channel", arg: 1, scope: !955, file: !702, line: 114, type: !69)
!959 = !DILocation(line: 114, column: 31, scope: !955)
!960 = !DILocalVariable(name: "bans", arg: 2, scope: !955, file: !702, line: 114, type: !482)
!961 = !DILocation(line: 114, column: 52, scope: !955)
!962 = !DILocalVariable(name: "ban_type", arg: 3, scope: !955, file: !702, line: 114, type: !77)
!963 = !DILocation(line: 114, column: 62, scope: !955)
!964 = !DILocalVariable(name: "masks", scope: !955, file: !702, line: 116, type: !106)
!965 = !DILocation(line: 116, column: 8, scope: !955)
!966 = !DILocation(line: 118, column: 2, scope: !955)
!967 = distinct !{!967, !966}
!968 = !DILocation(line: 118, column: 10, scope: !969)
!969 = !DILexicalBlockFile(scope: !970, file: !702, discriminator: 1)
!970 = distinct !DILexicalBlock(scope: !971, file: !702, line: 118, column: 10)
!971 = distinct !DILexicalBlock(scope: !955, file: !702, line: 118, column: 4)
!972 = !DILocation(line: 118, column: 15, scope: !969)
!973 = !DILocation(line: 118, column: 5, scope: !974)
!974 = !DILexicalBlockFile(scope: !975, file: !702, discriminator: 2)
!975 = distinct !DILexicalBlock(scope: !970, file: !702, line: 118, column: 3)
!976 = !DILocation(line: 118, column: 14, scope: !977)
!977 = !DILexicalBlockFile(scope: !978, file: !702, discriminator: 3)
!978 = distinct !DILexicalBlock(scope: !970, file: !702, line: 118, column: 12)
!979 = !DILocation(line: 118, column: 99, scope: !977)
!980 = !DILocation(line: 118, column: 110, scope: !981)
!981 = !DILexicalBlockFile(scope: !971, file: !702, discriminator: 4)
!982 = !DILocation(line: 120, column: 6, scope: !983)
!983 = distinct !DILexicalBlock(scope: !955, file: !702, line: 120, column: 6)
!984 = !DILocation(line: 120, column: 15, scope: !983)
!985 = !DILocation(line: 120, column: 6, scope: !955)
!986 = !DILocation(line: 121, column: 14, scope: !983)
!987 = !DILocation(line: 121, column: 12, scope: !983)
!988 = !DILocation(line: 121, column: 3, scope: !983)
!989 = !DILocation(line: 123, column: 24, scope: !955)
!990 = !DILocation(line: 123, column: 33, scope: !955)
!991 = !DILocation(line: 123, column: 39, scope: !955)
!992 = !DILocation(line: 123, column: 10, scope: !955)
!993 = !DILocation(line: 123, column: 8, scope: !955)
!994 = !DILocation(line: 124, column: 25, scope: !955)
!995 = !DILocation(line: 124, column: 34, scope: !955)
!996 = !DILocation(line: 124, column: 2, scope: !955)
!997 = !DILocation(line: 125, column: 16, scope: !955)
!998 = !DILocation(line: 125, column: 9, scope: !955)
!999 = !DILocation(line: 126, column: 1, scope: !955)
!1000 = !DILocation(line: 126, column: 1, scope: !1001)
!1001 = !DILexicalBlockFile(scope: !955, file: !702, discriminator: 1)
!1002 = distinct !DISubprogram(name: "ban_remove", scope: !702, file: !702, line: 128, type: !1003, isLocal: false, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !710)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{null, !69, !482}
!1005 = !DILocalVariable(name: "channel", arg: 1, scope: !1002, file: !702, line: 128, type: !69)
!1006 = !DILocation(line: 128, column: 34, scope: !1002)
!1007 = !DILocalVariable(name: "bans", arg: 2, scope: !1002, file: !702, line: 128, type: !482)
!1008 = !DILocation(line: 128, column: 55, scope: !1002)
!1009 = !DILocalVariable(name: "str", scope: !1002, file: !702, line: 130, type: !299)
!1010 = !DILocation(line: 130, column: 11, scope: !1002)
!1011 = !DILocalVariable(name: "tmp", scope: !1002, file: !702, line: 131, type: !260)
!1012 = !DILocation(line: 131, column: 10, scope: !1002)
!1013 = !DILocalVariable(name: "rec", scope: !1002, file: !702, line: 132, type: !1014)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64, align: 64)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "BAN_REC", file: !1016, line: 8, baseType: !1017)
!1016 = !DIFile(filename: "mode-lists.h", directory: "/home/lichi/Desktop/irssi/task1")
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1016, line: 4, size: 192, align: 64, elements: !1018)
!1018 = !{!1019, !1020, !1021}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "ban", scope: !1017, file: !1016, line: 5, baseType: !106, size: 64, align: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "setby", scope: !1017, file: !1016, line: 6, baseType: !106, size: 64, align: 64, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1017, file: !1016, line: 7, baseType: !344, size: 64, align: 64, offset: 128)
!1022 = !DILocation(line: 132, column: 11, scope: !1002)
!1023 = !DILocalVariable(name: "ban", scope: !1002, file: !702, line: 133, type: !496)
!1024 = !DILocation(line: 133, column: 9, scope: !1002)
!1025 = !DILocalVariable(name: "banlist", scope: !1002, file: !702, line: 133, type: !496)
!1026 = !DILocation(line: 133, column: 16, scope: !1002)
!1027 = !DILocalVariable(name: "found", scope: !1002, file: !702, line: 134, type: !77)
!1028 = !DILocation(line: 134, column: 13, scope: !1002)
!1029 = !DILocation(line: 136, column: 2, scope: !1002)
!1030 = distinct !{!1030, !1029}
!1031 = !DILocation(line: 136, column: 10, scope: !1032)
!1032 = !DILexicalBlockFile(scope: !1033, file: !702, discriminator: 1)
!1033 = distinct !DILexicalBlock(scope: !1034, file: !702, line: 136, column: 10)
!1034 = distinct !DILexicalBlock(scope: !1002, file: !702, line: 136, column: 4)
!1035 = !DILocation(line: 136, column: 15, scope: !1032)
!1036 = !DILocation(line: 136, column: 5, scope: !1037)
!1037 = !DILexicalBlockFile(scope: !1038, file: !702, discriminator: 2)
!1038 = distinct !DILexicalBlock(scope: !1033, file: !702, line: 136, column: 3)
!1039 = !DILocation(line: 136, column: 14, scope: !1040)
!1040 = !DILexicalBlockFile(scope: !1041, file: !702, discriminator: 3)
!1041 = distinct !DILexicalBlock(scope: !1033, file: !702, line: 136, column: 12)
!1042 = !DILocation(line: 136, column: 99, scope: !1040)
!1043 = !DILocation(line: 136, column: 110, scope: !1044)
!1044 = !DILexicalBlockFile(scope: !1034, file: !702, discriminator: 4)
!1045 = !DILocation(line: 138, column: 8, scope: !1002)
!1046 = !DILocation(line: 138, column: 6, scope: !1002)
!1047 = !DILocation(line: 139, column: 23, scope: !1002)
!1048 = !DILocation(line: 139, column: 12, scope: !1002)
!1049 = !DILocation(line: 139, column: 10, scope: !1002)
!1050 = !DILocation(line: 140, column: 13, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1002, file: !702, line: 140, column: 2)
!1052 = !DILocation(line: 140, column: 11, scope: !1051)
!1053 = !DILocation(line: 140, column: 7, scope: !1051)
!1054 = !DILocation(line: 140, column: 23, scope: !1055)
!1055 = !DILexicalBlockFile(scope: !1056, file: !702, discriminator: 1)
!1056 = distinct !DILexicalBlock(scope: !1051, file: !702, line: 140, column: 2)
!1057 = !DILocation(line: 140, column: 22, scope: !1055)
!1058 = !DILocation(line: 140, column: 27, scope: !1055)
!1059 = !DILocation(line: 140, column: 2, scope: !1055)
!1060 = !DILocation(line: 141, column: 23, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1056, file: !702, line: 140, column: 42)
!1062 = !DILocation(line: 142, column: 14, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1061, file: !702, line: 142, column: 3)
!1064 = !DILocation(line: 142, column: 23, scope: !1063)
!1065 = !DILocation(line: 142, column: 12, scope: !1063)
!1066 = !DILocation(line: 142, column: 8, scope: !1063)
!1067 = !DILocation(line: 142, column: 32, scope: !1068)
!1068 = !DILexicalBlockFile(scope: !1069, file: !702, discriminator: 1)
!1069 = distinct !DILexicalBlock(scope: !1063, file: !702, line: 142, column: 3)
!1070 = !DILocation(line: 142, column: 36, scope: !1068)
!1071 = !DILocation(line: 142, column: 3, scope: !1068)
!1072 = !DILocation(line: 143, column: 10, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1069, file: !702, line: 142, column: 61)
!1074 = !DILocation(line: 143, column: 15, scope: !1073)
!1075 = !DILocation(line: 143, column: 8, scope: !1073)
!1076 = !DILocation(line: 145, column: 25, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1073, file: !702, line: 145, column: 8)
!1078 = !DILocation(line: 145, column: 24, scope: !1077)
!1079 = !DILocation(line: 145, column: 30, scope: !1077)
!1080 = !DILocation(line: 145, column: 35, scope: !1077)
!1081 = !DILocation(line: 145, column: 8, scope: !1077)
!1082 = !DILocation(line: 145, column: 8, scope: !1073)
!1083 = !DILocation(line: 146, column: 28, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1077, file: !702, line: 145, column: 41)
!1085 = !DILocation(line: 146, column: 40, scope: !1084)
!1086 = !DILocation(line: 146, column: 45, scope: !1084)
!1087 = !DILocation(line: 146, column: 5, scope: !1084)
!1088 = !DILocation(line: 147, column: 39, scope: !1084)
!1089 = !DILocation(line: 148, column: 4, scope: !1084)
!1090 = !DILocation(line: 149, column: 3, scope: !1073)
!1091 = !DILocation(line: 142, column: 50, scope: !1092)
!1092 = !DILexicalBlockFile(scope: !1069, file: !702, discriminator: 2)
!1093 = !DILocation(line: 142, column: 55, scope: !1092)
!1094 = !DILocation(line: 142, column: 48, scope: !1092)
!1095 = !DILocation(line: 142, column: 3, scope: !1092)
!1096 = distinct !{!1096, !1097}
!1097 = !DILocation(line: 142, column: 3, scope: !1061)
!1098 = !DILocation(line: 151, column: 8, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1061, file: !702, line: 151, column: 7)
!1100 = !DILocation(line: 151, column: 7, scope: !1061)
!1101 = !DILocation(line: 152, column: 8, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1099, file: !702, line: 151, column: 15)
!1103 = !DILocation(line: 153, column: 29, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1102, file: !702, line: 153, column: 8)
!1105 = !DILocation(line: 153, column: 28, scope: !1104)
!1106 = !DILocation(line: 153, column: 9, scope: !1104)
!1107 = !DILocation(line: 153, column: 8, scope: !1102)
!1108 = !DILocation(line: 155, column: 28, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1104, file: !702, line: 153, column: 41)
!1110 = !DILocation(line: 155, column: 37, scope: !1109)
!1111 = !DILocation(line: 156, column: 23, scope: !1109)
!1112 = !DILocation(line: 156, column: 32, scope: !1109)
!1113 = !DILocation(line: 156, column: 8, scope: !1109)
!1114 = !DILocation(line: 156, column: 41, scope: !1109)
!1115 = !DILocation(line: 155, column: 11, scope: !1109)
!1116 = !DILocation(line: 155, column: 9, scope: !1109)
!1117 = !DILocation(line: 157, column: 4, scope: !1109)
!1118 = !DILocation(line: 158, column: 25, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1104, file: !702, line: 158, column: 13)
!1120 = !DILocation(line: 158, column: 24, scope: !1119)
!1121 = !DILocation(line: 158, column: 13, scope: !1119)
!1122 = !DILocation(line: 158, column: 13, scope: !1104)
!1123 = !DILocation(line: 160, column: 28, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1119, file: !702, line: 158, column: 37)
!1125 = !DILocation(line: 160, column: 37, scope: !1124)
!1126 = !DILocation(line: 161, column: 14, scope: !1124)
!1127 = !DILocation(line: 161, column: 13, scope: !1124)
!1128 = !DILocation(line: 161, column: 8, scope: !1124)
!1129 = !DILocation(line: 161, column: 18, scope: !1124)
!1130 = !DILocation(line: 160, column: 11, scope: !1124)
!1131 = !DILocation(line: 160, column: 9, scope: !1124)
!1132 = !DILocation(line: 162, column: 4, scope: !1124)
!1133 = !DILocation(line: 163, column: 8, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1102, file: !702, line: 163, column: 8)
!1135 = !DILocation(line: 163, column: 12, scope: !1134)
!1136 = !DILocation(line: 163, column: 8, scope: !1102)
!1137 = !DILocation(line: 164, column: 28, scope: !1134)
!1138 = !DILocation(line: 164, column: 40, scope: !1134)
!1139 = !DILocation(line: 164, column: 45, scope: !1134)
!1140 = !DILocation(line: 164, column: 5, scope: !1134)
!1141 = !DILocation(line: 165, column: 14, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1134, file: !702, line: 165, column: 13)
!1143 = !DILocation(line: 165, column: 23, scope: !1142)
!1144 = !DILocation(line: 165, column: 13, scope: !1134)
!1145 = !DILocation(line: 166, column: 75, scope: !1142)
!1146 = !DILocation(line: 166, column: 84, scope: !1142)
!1147 = !DILocation(line: 166, column: 5, scope: !1142)
!1148 = !DILocation(line: 167, column: 3, scope: !1102)
!1149 = !DILocation(line: 168, column: 2, scope: !1061)
!1150 = !DILocation(line: 140, column: 38, scope: !1151)
!1151 = !DILexicalBlockFile(scope: !1056, file: !702, discriminator: 2)
!1152 = !DILocation(line: 140, column: 2, scope: !1151)
!1153 = distinct !{!1153, !1154}
!1154 = !DILocation(line: 140, column: 2, scope: !1002)
!1155 = !DILocation(line: 169, column: 13, scope: !1002)
!1156 = !DILocation(line: 169, column: 2, scope: !1002)
!1157 = !DILocation(line: 171, column: 6, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1002, file: !702, line: 171, column: 6)
!1159 = !DILocation(line: 171, column: 11, scope: !1158)
!1160 = !DILocation(line: 171, column: 15, scope: !1158)
!1161 = !DILocation(line: 171, column: 6, scope: !1002)
!1162 = !DILocation(line: 172, column: 26, scope: !1158)
!1163 = !DILocation(line: 172, column: 35, scope: !1158)
!1164 = !DILocation(line: 172, column: 40, scope: !1158)
!1165 = !DILocation(line: 172, column: 3, scope: !1158)
!1166 = !DILocation(line: 173, column: 16, scope: !1002)
!1167 = !DILocation(line: 173, column: 2, scope: !1002)
!1168 = !DILocation(line: 174, column: 1, scope: !1002)
!1169 = !DILocation(line: 174, column: 1, scope: !1170)
!1170 = !DILexicalBlockFile(scope: !1002, file: !702, discriminator: 1)
!1171 = distinct !DISubprogram(name: "bans_init", scope: !702, file: !702, line: 337, type: !248, isLocal: false, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !710)
!1172 = !DILocation(line: 339, column: 30, scope: !1171)
!1173 = !DILocation(line: 340, column: 2, scope: !1171)
!1174 = !DILocation(line: 342, column: 43, scope: !1171)
!1175 = !DILocation(line: 342, column: 2, scope: !1176)
!1176 = !DILexicalBlockFile(scope: !1171, file: !702, discriminator: 1)
!1177 = !DILocation(line: 343, column: 45, scope: !1171)
!1178 = !DILocation(line: 343, column: 2, scope: !1176)
!1179 = !DILocation(line: 344, column: 2, scope: !1171)
!1180 = !DILocation(line: 345, column: 2, scope: !1171)
!1181 = !DILocation(line: 347, column: 9, scope: !1171)
!1182 = !DILocation(line: 348, column: 9, scope: !1171)
!1183 = !DILocation(line: 349, column: 1, scope: !1171)
!1184 = distinct !DISubprogram(name: "cmd_ban", scope: !702, file: !702, line: 255, type: !1185, isLocal: true, isDefinition: true, scopeLine: 256, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !710)
!1185 = !DISubroutineType(types: !1186)
!1186 = !{null, !482, !87, !85}
!1187 = !DILocalVariable(name: "data", arg: 1, scope: !1184, file: !702, line: 255, type: !482)
!1188 = !DILocation(line: 255, column: 33, scope: !1184)
!1189 = !DILocalVariable(name: "server", arg: 2, scope: !1184, file: !702, line: 255, type: !87)
!1190 = !DILocation(line: 255, column: 55, scope: !1184)
!1191 = !DILocalVariable(name: "item", arg: 3, scope: !1184, file: !702, line: 255, type: !85)
!1192 = !DILocation(line: 255, column: 69, scope: !1184)
!1193 = !DILocalVariable(name: "optlist", scope: !1184, file: !702, line: 257, type: !80)
!1194 = !DILocation(line: 257, column: 14, scope: !1184)
!1195 = !DILocalVariable(name: "custom_type", scope: !1184, file: !702, line: 258, type: !482)
!1196 = !DILocation(line: 258, column: 21, scope: !1184)
!1197 = !DILocalVariable(name: "ban", scope: !1184, file: !702, line: 259, type: !106)
!1198 = !DILocation(line: 259, column: 8, scope: !1184)
!1199 = !DILocalVariable(name: "ban_type", scope: !1184, file: !702, line: 260, type: !77)
!1200 = !DILocation(line: 260, column: 13, scope: !1184)
!1201 = !DILocalVariable(name: "free_arg", scope: !1184, file: !702, line: 261, type: !85)
!1202 = !DILocation(line: 261, column: 8, scope: !1184)
!1203 = !DILocation(line: 263, column: 9, scope: !1184)
!1204 = distinct !{!1204, !1203}
!1205 = !DILocation(line: 263, column: 18, scope: !1206)
!1206 = !DILexicalBlockFile(scope: !1207, file: !702, discriminator: 1)
!1207 = distinct !DILexicalBlock(scope: !1208, file: !702, line: 263, column: 18)
!1208 = distinct !DILexicalBlock(scope: !1184, file: !702, line: 263, column: 12)
!1209 = !DILocation(line: 263, column: 25, scope: !1206)
!1210 = !DILocation(line: 263, column: 8, scope: !1206)
!1211 = !DILocation(line: 263, column: 92, scope: !1212)
!1212 = !DILexicalBlockFile(scope: !1207, file: !702, discriminator: 2)
!1213 = !DILocation(line: 263, column: 74, scope: !1212)
!1214 = !DILocation(line: 263, column: 59, scope: !1212)
!1215 = !DILocation(line: 263, column: 58, scope: !1212)
!1216 = !DILocation(line: 263, column: 33, scope: !1217)
!1217 = !DILexicalBlockFile(scope: !1212, file: !702, discriminator: 12)
!1218 = !DILocation(line: 263, column: 14, scope: !1212)
!1219 = !DILocation(line: 263, column: 18, scope: !1212)
!1220 = !DILocation(line: 263, column: 13, scope: !1221)
!1221 = !DILexicalBlockFile(scope: !1207, file: !702, discriminator: 3)
!1222 = !DILocation(line: 263, column: 18, scope: !1223)
!1223 = !DILexicalBlockFile(scope: !1208, file: !702, discriminator: 4)
!1224 = !DILocation(line: 263, column: 35, scope: !1225)
!1225 = !DILexicalBlockFile(scope: !1207, file: !702, discriminator: 5)
!1226 = !DILocation(line: 263, column: 47, scope: !1227)
!1227 = !DILexicalBlockFile(scope: !1228, file: !702, discriminator: 6)
!1228 = distinct !DILexicalBlock(scope: !1208, file: !702, line: 263, column: 47)
!1229 = !DILocation(line: 263, column: 54, scope: !1227)
!1230 = !DILocation(line: 263, column: 8, scope: !1227)
!1231 = !DILocation(line: 263, column: 13, scope: !1232)
!1232 = !DILexicalBlockFile(scope: !1228, file: !702, discriminator: 7)
!1233 = !DILocation(line: 263, column: 22, scope: !1232)
!1234 = !DILocation(line: 263, column: 12, scope: !1232)
!1235 = !DILocation(line: 263, column: 47, scope: !1232)
!1236 = !DILocation(line: 263, column: 33, scope: !1237)
!1237 = !DILexicalBlockFile(scope: !1228, file: !702, discriminator: 8)
!1238 = distinct !{!1238, !1239}
!1239 = !DILocation(line: 263, column: 33, scope: !1228)
!1240 = !DILocation(line: 263, column: 38, scope: !1241)
!1241 = !DILexicalBlockFile(scope: !1242, file: !702, discriminator: 9)
!1242 = distinct !DILexicalBlock(scope: !1228, file: !702, line: 263, column: 36)
!1243 = !DILocation(line: 263, column: 116, scope: !1244)
!1244 = !DILexicalBlockFile(scope: !1241, file: !702, discriminator: 13)
!1245 = !DILocation(line: 263, column: 131, scope: !1241)
!1246 = !DILocation(line: 263, column: 139, scope: !1247)
!1247 = !DILexicalBlockFile(scope: !1242, file: !702, discriminator: 10)
!1248 = !DILocation(line: 263, column: 152, scope: !1249)
!1249 = !DILexicalBlockFile(scope: !1208, file: !702, discriminator: 11)
!1250 = !DILocation(line: 265, column: 22, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1184, file: !702, line: 265, column: 6)
!1252 = !DILocation(line: 265, column: 7, scope: !1251)
!1253 = !DILocation(line: 265, column: 6, scope: !1184)
!1254 = !DILocation(line: 268, column: 3, scope: !1251)
!1255 = !DILocation(line: 270, column: 26, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1184, file: !702, line: 270, column: 6)
!1257 = !DILocation(line: 270, column: 6, scope: !1256)
!1258 = !DILocation(line: 270, column: 45, scope: !1256)
!1259 = !DILocation(line: 270, column: 6, scope: !1184)
!1260 = !DILocation(line: 271, column: 12, scope: !1256)
!1261 = !DILocation(line: 271, column: 3, scope: !1256)
!1262 = !DILocation(line: 272, column: 31, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1256, file: !702, line: 272, column: 11)
!1264 = !DILocation(line: 272, column: 11, scope: !1263)
!1265 = !DILocation(line: 272, column: 48, scope: !1263)
!1266 = !DILocation(line: 272, column: 11, scope: !1256)
!1267 = !DILocation(line: 273, column: 12, scope: !1263)
!1268 = !DILocation(line: 273, column: 3, scope: !1263)
!1269 = !DILocation(line: 274, column: 31, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1263, file: !702, line: 274, column: 11)
!1271 = !DILocation(line: 274, column: 11, scope: !1270)
!1272 = !DILocation(line: 274, column: 48, scope: !1270)
!1273 = !DILocation(line: 274, column: 11, scope: !1263)
!1274 = !DILocation(line: 275, column: 12, scope: !1270)
!1275 = !DILocation(line: 275, column: 3, scope: !1270)
!1276 = !DILocation(line: 276, column: 31, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1270, file: !702, line: 276, column: 11)
!1278 = !DILocation(line: 276, column: 11, scope: !1277)
!1279 = !DILocation(line: 276, column: 50, scope: !1277)
!1280 = !DILocation(line: 276, column: 11, scope: !1270)
!1281 = !DILocation(line: 277, column: 12, scope: !1277)
!1282 = !DILocation(line: 277, column: 3, scope: !1277)
!1283 = !DILocation(line: 279, column: 37, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1277, file: !702, line: 278, column: 7)
!1285 = !DILocation(line: 279, column: 17, scope: !1284)
!1286 = !DILocation(line: 279, column: 15, scope: !1284)
!1287 = !DILocation(line: 280, column: 21, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1284, file: !702, line: 280, column: 21)
!1289 = !DILocation(line: 280, column: 33, scope: !1288)
!1290 = !DILocation(line: 280, column: 21, scope: !1284)
!1291 = !DILocation(line: 281, column: 32, scope: !1288)
!1292 = !DILocation(line: 281, column: 15, scope: !1288)
!1293 = !DILocation(line: 281, column: 13, scope: !1288)
!1294 = !DILocation(line: 281, column: 4, scope: !1288)
!1295 = !DILocation(line: 283, column: 15, scope: !1288)
!1296 = !DILocation(line: 283, column: 13, scope: !1288)
!1297 = !DILocation(line: 286, column: 18, scope: !1184)
!1298 = !DILocation(line: 286, column: 23, scope: !1184)
!1299 = !DILocation(line: 286, column: 31, scope: !1184)
!1300 = !DILocation(line: 286, column: 45, scope: !1184)
!1301 = !DILocation(line: 286, column: 2, scope: !1184)
!1302 = !DILocation(line: 288, column: 18, scope: !1184)
!1303 = !DILocation(line: 288, column: 2, scope: !1184)
!1304 = !DILocation(line: 289, column: 1, scope: !1184)
!1305 = !DILocation(line: 289, column: 1, scope: !1306)
!1306 = !DILexicalBlockFile(scope: !1184, file: !702, discriminator: 1)
!1307 = distinct !DISubprogram(name: "cmd_unban", scope: !702, file: !702, line: 292, type: !1185, isLocal: true, isDefinition: true, scopeLine: 293, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !710)
!1308 = !DILocalVariable(name: "data", arg: 1, scope: !1307, file: !702, line: 292, type: !482)
!1309 = !DILocation(line: 292, column: 35, scope: !1307)
!1310 = !DILocalVariable(name: "server", arg: 2, scope: !1307, file: !702, line: 292, type: !87)
!1311 = !DILocation(line: 292, column: 57, scope: !1307)
!1312 = !DILocalVariable(name: "item", arg: 3, scope: !1307, file: !702, line: 292, type: !85)
!1313 = !DILocation(line: 292, column: 71, scope: !1307)
!1314 = !DILocalVariable(name: "optlist", scope: !1307, file: !702, line: 294, type: !80)
!1315 = !DILocation(line: 294, column: 14, scope: !1307)
!1316 = !DILocalVariable(name: "ban", scope: !1307, file: !702, line: 295, type: !106)
!1317 = !DILocation(line: 295, column: 8, scope: !1307)
!1318 = !DILocalVariable(name: "free_arg", scope: !1307, file: !702, line: 296, type: !85)
!1319 = !DILocation(line: 296, column: 8, scope: !1307)
!1320 = !DILocation(line: 298, column: 9, scope: !1307)
!1321 = distinct !{!1321, !1320}
!1322 = !DILocation(line: 298, column: 18, scope: !1323)
!1323 = !DILexicalBlockFile(scope: !1324, file: !702, discriminator: 1)
!1324 = distinct !DILexicalBlock(scope: !1325, file: !702, line: 298, column: 18)
!1325 = distinct !DILexicalBlock(scope: !1307, file: !702, line: 298, column: 12)
!1326 = !DILocation(line: 298, column: 25, scope: !1323)
!1327 = !DILocation(line: 298, column: 8, scope: !1323)
!1328 = !DILocation(line: 298, column: 92, scope: !1329)
!1329 = !DILexicalBlockFile(scope: !1324, file: !702, discriminator: 2)
!1330 = !DILocation(line: 298, column: 74, scope: !1329)
!1331 = !DILocation(line: 298, column: 59, scope: !1329)
!1332 = !DILocation(line: 298, column: 58, scope: !1329)
!1333 = !DILocation(line: 298, column: 33, scope: !1334)
!1334 = !DILexicalBlockFile(scope: !1329, file: !702, discriminator: 12)
!1335 = !DILocation(line: 298, column: 14, scope: !1329)
!1336 = !DILocation(line: 298, column: 18, scope: !1329)
!1337 = !DILocation(line: 298, column: 13, scope: !1338)
!1338 = !DILexicalBlockFile(scope: !1324, file: !702, discriminator: 3)
!1339 = !DILocation(line: 298, column: 18, scope: !1340)
!1340 = !DILexicalBlockFile(scope: !1325, file: !702, discriminator: 4)
!1341 = !DILocation(line: 298, column: 35, scope: !1342)
!1342 = !DILexicalBlockFile(scope: !1324, file: !702, discriminator: 5)
!1343 = !DILocation(line: 298, column: 47, scope: !1344)
!1344 = !DILexicalBlockFile(scope: !1345, file: !702, discriminator: 6)
!1345 = distinct !DILexicalBlock(scope: !1325, file: !702, line: 298, column: 47)
!1346 = !DILocation(line: 298, column: 54, scope: !1344)
!1347 = !DILocation(line: 298, column: 8, scope: !1344)
!1348 = !DILocation(line: 298, column: 13, scope: !1349)
!1349 = !DILexicalBlockFile(scope: !1345, file: !702, discriminator: 7)
!1350 = !DILocation(line: 298, column: 22, scope: !1349)
!1351 = !DILocation(line: 298, column: 12, scope: !1349)
!1352 = !DILocation(line: 298, column: 47, scope: !1349)
!1353 = !DILocation(line: 298, column: 33, scope: !1354)
!1354 = !DILexicalBlockFile(scope: !1345, file: !702, discriminator: 8)
!1355 = distinct !{!1355, !1356}
!1356 = !DILocation(line: 298, column: 33, scope: !1345)
!1357 = !DILocation(line: 298, column: 38, scope: !1358)
!1358 = !DILexicalBlockFile(scope: !1359, file: !702, discriminator: 9)
!1359 = distinct !DILexicalBlock(scope: !1345, file: !702, line: 298, column: 36)
!1360 = !DILocation(line: 298, column: 116, scope: !1361)
!1361 = !DILexicalBlockFile(scope: !1358, file: !702, discriminator: 13)
!1362 = !DILocation(line: 298, column: 131, scope: !1358)
!1363 = !DILocation(line: 298, column: 139, scope: !1364)
!1364 = !DILexicalBlockFile(scope: !1359, file: !702, discriminator: 10)
!1365 = !DILocation(line: 298, column: 152, scope: !1366)
!1366 = !DILexicalBlockFile(scope: !1325, file: !702, discriminator: 11)
!1367 = !DILocation(line: 300, column: 22, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1307, file: !702, line: 300, column: 6)
!1369 = !DILocation(line: 300, column: 7, scope: !1368)
!1370 = !DILocation(line: 300, column: 6, scope: !1307)
!1371 = !DILocation(line: 303, column: 3, scope: !1368)
!1372 = !DILocation(line: 305, column: 6, scope: !1307)
!1373 = !DILocation(line: 306, column: 26, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1307, file: !702, line: 306, column: 6)
!1375 = !DILocation(line: 306, column: 6, scope: !1374)
!1376 = !DILocation(line: 306, column: 44, scope: !1374)
!1377 = !DILocation(line: 306, column: 6, scope: !1307)
!1378 = !DILocation(line: 307, column: 9, scope: !1374)
!1379 = !DILocation(line: 307, column: 7, scope: !1374)
!1380 = !DILocation(line: 307, column: 3, scope: !1374)
!1381 = !DILocation(line: 308, column: 31, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1374, file: !702, line: 308, column: 11)
!1383 = !DILocation(line: 308, column: 11, scope: !1382)
!1384 = !DILocation(line: 308, column: 48, scope: !1382)
!1385 = !DILocation(line: 308, column: 11, scope: !1374)
!1386 = !DILocation(line: 309, column: 9, scope: !1382)
!1387 = !DILocation(line: 309, column: 7, scope: !1382)
!1388 = !DILocation(line: 309, column: 3, scope: !1382)
!1389 = !DILocation(line: 311, column: 18, scope: !1307)
!1390 = !DILocation(line: 311, column: 24, scope: !1391)
!1391 = !DILexicalBlockFile(scope: !1307, file: !702, discriminator: 1)
!1392 = !DILocation(line: 311, column: 18, scope: !1391)
!1393 = !DILocation(line: 311, column: 30, scope: !1394)
!1394 = !DILexicalBlockFile(scope: !1307, file: !702, discriminator: 2)
!1395 = !DILocation(line: 311, column: 18, scope: !1394)
!1396 = !DILocation(line: 311, column: 18, scope: !1397)
!1397 = !DILexicalBlockFile(scope: !1307, file: !702, discriminator: 3)
!1398 = !DILocation(line: 311, column: 36, scope: !1397)
!1399 = !DILocation(line: 311, column: 44, scope: !1397)
!1400 = !DILocation(line: 311, column: 2, scope: !1397)
!1401 = !DILocation(line: 313, column: 9, scope: !1307)
!1402 = !DILocation(line: 313, column: 2, scope: !1307)
!1403 = !DILocation(line: 315, column: 18, scope: !1307)
!1404 = !DILocation(line: 315, column: 2, scope: !1307)
!1405 = !DILocation(line: 316, column: 1, scope: !1307)
!1406 = !DILocation(line: 316, column: 1, scope: !1391)
!1407 = distinct !DISubprogram(name: "read_settings", scope: !702, file: !702, line: 318, type: !248, isLocal: true, isDefinition: true, scopeLine: 319, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !710)
!1408 = !DILocation(line: 320, column: 6, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1407, file: !702, line: 320, column: 6)
!1410 = !DILocation(line: 320, column: 27, scope: !1409)
!1411 = !DILocation(line: 320, column: 34, scope: !1409)
!1412 = !DILocation(line: 321, column: 16, scope: !1409)
!1413 = !DILocation(line: 321, column: 38, scope: !1409)
!1414 = !DILocation(line: 321, column: 6, scope: !1415)
!1415 = !DILexicalBlockFile(scope: !1409, file: !702, discriminator: 1)
!1416 = !DILocation(line: 321, column: 68, scope: !1409)
!1417 = !DILocation(line: 320, column: 6, scope: !1418)
!1418 = !DILexicalBlockFile(scope: !1407, file: !702, discriminator: 1)
!1419 = !DILocation(line: 322, column: 3, scope: !1409)
!1420 = !DILocation(line: 324, column: 9, scope: !1407)
!1421 = !DILocation(line: 324, column: 2, scope: !1407)
!1422 = !DILocation(line: 325, column: 36, scope: !1407)
!1423 = !DILocation(line: 325, column: 21, scope: !1418)
!1424 = !DILocation(line: 325, column: 19, scope: !1407)
!1425 = !DILocation(line: 326, column: 6, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1407, file: !702, line: 326, column: 6)
!1427 = !DILocation(line: 326, column: 23, scope: !1426)
!1428 = !DILocation(line: 326, column: 28, scope: !1426)
!1429 = !DILocation(line: 326, column: 31, scope: !1430)
!1430 = !DILexicalBlockFile(scope: !1426, file: !702, discriminator: 1)
!1431 = !DILocation(line: 326, column: 52, scope: !1430)
!1432 = !DILocation(line: 326, column: 6, scope: !1430)
!1433 = !DILocation(line: 328, column: 29, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1426, file: !702, line: 326, column: 60)
!1435 = !DILocation(line: 328, column: 20, scope: !1434)
!1436 = !DILocation(line: 328, column: 9, scope: !1434)
!1437 = !DILocation(line: 327, column: 3, scope: !1434)
!1438 = !DILocation(line: 329, column: 2, scope: !1434)
!1439 = !DILocation(line: 331, column: 6, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1407, file: !702, line: 331, column: 6)
!1441 = !DILocation(line: 331, column: 23, scope: !1440)
!1442 = !DILocation(line: 331, column: 6, scope: !1407)
!1443 = !DILocation(line: 332, column: 34, scope: !1440)
!1444 = !DILocation(line: 332, column: 17, scope: !1440)
!1445 = !DILocation(line: 334, column: 34, scope: !1407)
!1446 = !DILocation(line: 334, column: 25, scope: !1418)
!1447 = !DILocation(line: 334, column: 23, scope: !1407)
!1448 = !DILocation(line: 335, column: 1, scope: !1407)
!1449 = !DILocation(line: 335, column: 1, scope: !1418)
!1450 = distinct !DISubprogram(name: "bans_deinit", scope: !702, file: !702, line: 351, type: !248, isLocal: false, isDefinition: true, scopeLine: 352, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !710)
!1451 = !DILocation(line: 353, column: 9, scope: !1450)
!1452 = !DILocation(line: 353, column: 2, scope: !1450)
!1453 = !DILocation(line: 355, column: 2, scope: !1450)
!1454 = !DILocation(line: 356, column: 2, scope: !1450)
!1455 = !DILocation(line: 358, column: 2, scope: !1450)
!1456 = !DILocation(line: 359, column: 1, scope: !1450)
!1457 = distinct !DISubprogram(name: "parse_custom_ban", scope: !702, file: !702, line: 209, type: !1458, isLocal: true, isDefinition: true, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !710)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{!77, !482}
!1460 = !DILocalVariable(name: "type", arg: 1, scope: !1457, file: !702, line: 209, type: !482)
!1461 = !DILocation(line: 209, column: 41, scope: !1457)
!1462 = !DILocalVariable(name: "list", scope: !1457, file: !702, line: 211, type: !496)
!1463 = !DILocation(line: 211, column: 9, scope: !1457)
!1464 = !DILocalVariable(name: "n", scope: !1457, file: !702, line: 212, type: !77)
!1465 = !DILocation(line: 212, column: 6, scope: !1457)
!1466 = !DILocalVariable(name: "ban_type", scope: !1457, file: !702, line: 212, type: !77)
!1467 = !DILocation(line: 212, column: 9, scope: !1457)
!1468 = !DILocation(line: 214, column: 18, scope: !1457)
!1469 = !DILocation(line: 215, column: 20, scope: !1457)
!1470 = !DILocation(line: 215, column: 9, scope: !1457)
!1471 = !DILocation(line: 215, column: 7, scope: !1457)
!1472 = !DILocation(line: 216, column: 9, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1457, file: !702, line: 216, column: 2)
!1474 = !DILocation(line: 216, column: 7, scope: !1473)
!1475 = !DILocation(line: 216, column: 19, scope: !1476)
!1476 = !DILexicalBlockFile(scope: !1477, file: !702, discriminator: 1)
!1477 = distinct !DILexicalBlock(scope: !1473, file: !702, line: 216, column: 2)
!1478 = !DILocation(line: 216, column: 14, scope: !1476)
!1479 = !DILocation(line: 216, column: 22, scope: !1476)
!1480 = !DILocation(line: 216, column: 2, scope: !1476)
!1481 = !DILocation(line: 217, column: 43, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1483, file: !702, line: 217, column: 7)
!1483 = distinct !DILexicalBlock(scope: !1477, file: !702, line: 216, column: 35)
!1484 = !DILocation(line: 217, column: 38, scope: !1482)
!1485 = !DILocation(line: 217, column: 15, scope: !1482)
!1486 = !DILocation(line: 217, column: 7, scope: !1482)
!1487 = !DILocation(line: 217, column: 51, scope: !1482)
!1488 = !DILocation(line: 217, column: 7, scope: !1483)
!1489 = !DILocation(line: 218, column: 13, scope: !1482)
!1490 = !DILocation(line: 218, column: 4, scope: !1482)
!1491 = !DILocation(line: 219, column: 48, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1482, file: !702, line: 219, column: 12)
!1493 = !DILocation(line: 219, column: 43, scope: !1492)
!1494 = !DILocation(line: 219, column: 20, scope: !1492)
!1495 = !DILocation(line: 219, column: 12, scope: !1492)
!1496 = !DILocation(line: 219, column: 56, scope: !1492)
!1497 = !DILocation(line: 219, column: 12, scope: !1482)
!1498 = !DILocation(line: 220, column: 13, scope: !1492)
!1499 = !DILocation(line: 220, column: 4, scope: !1492)
!1500 = !DILocation(line: 221, column: 48, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1492, file: !702, line: 221, column: 12)
!1502 = !DILocation(line: 221, column: 43, scope: !1501)
!1503 = !DILocation(line: 221, column: 20, scope: !1501)
!1504 = !DILocation(line: 221, column: 12, scope: !1501)
!1505 = !DILocation(line: 221, column: 56, scope: !1501)
!1506 = !DILocation(line: 221, column: 12, scope: !1492)
!1507 = !DILocation(line: 222, column: 13, scope: !1501)
!1508 = !DILocation(line: 222, column: 4, scope: !1501)
!1509 = !DILocation(line: 223, column: 48, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1501, file: !702, line: 223, column: 12)
!1511 = !DILocation(line: 223, column: 43, scope: !1510)
!1512 = !DILocation(line: 223, column: 20, scope: !1510)
!1513 = !DILocation(line: 223, column: 12, scope: !1510)
!1514 = !DILocation(line: 223, column: 56, scope: !1510)
!1515 = !DILocation(line: 223, column: 12, scope: !1501)
!1516 = !DILocation(line: 224, column: 13, scope: !1510)
!1517 = !DILocation(line: 224, column: 4, scope: !1510)
!1518 = !DILocation(line: 225, column: 2, scope: !1483)
!1519 = !DILocation(line: 216, column: 31, scope: !1520)
!1520 = !DILexicalBlockFile(scope: !1477, file: !702, discriminator: 2)
!1521 = !DILocation(line: 216, column: 2, scope: !1520)
!1522 = distinct !{!1522, !1523}
!1523 = !DILocation(line: 216, column: 2, scope: !1457)
!1524 = !DILocation(line: 226, column: 13, scope: !1457)
!1525 = !DILocation(line: 226, column: 2, scope: !1457)
!1526 = !DILocation(line: 228, column: 16, scope: !1457)
!1527 = !DILocation(line: 228, column: 9, scope: !1457)
!1528 = distinct !DISubprogram(name: "command_set_ban", scope: !702, file: !702, line: 176, type: !1529, isLocal: true, isDefinition: true, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !710)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{null, !482, !87, !520, !77, !77}
!1531 = !DILocalVariable(name: "data", arg: 1, scope: !1528, file: !702, line: 176, type: !482)
!1532 = !DILocation(line: 176, column: 41, scope: !1528)
!1533 = !DILocalVariable(name: "server", arg: 2, scope: !1528, file: !702, line: 176, type: !87)
!1534 = !DILocation(line: 176, column: 63, scope: !1528)
!1535 = !DILocalVariable(name: "item", arg: 3, scope: !1528, file: !702, line: 177, type: !520)
!1536 = !DILocation(line: 177, column: 21, scope: !1528)
!1537 = !DILocalVariable(name: "set", arg: 4, scope: !1528, file: !702, line: 177, type: !77)
!1538 = !DILocation(line: 177, column: 31, scope: !1528)
!1539 = !DILocalVariable(name: "ban_type", arg: 5, scope: !1528, file: !702, line: 177, type: !77)
!1540 = !DILocation(line: 177, column: 40, scope: !1528)
!1541 = !DILocalVariable(name: "chanrec", scope: !1528, file: !702, line: 179, type: !69)
!1542 = !DILocation(line: 179, column: 19, scope: !1528)
!1543 = !DILocalVariable(name: "channel", scope: !1528, file: !702, line: 180, type: !106)
!1544 = !DILocation(line: 180, column: 8, scope: !1528)
!1545 = !DILocalVariable(name: "nicks", scope: !1528, file: !702, line: 180, type: !106)
!1546 = !DILocation(line: 180, column: 18, scope: !1528)
!1547 = !DILocalVariable(name: "free_arg", scope: !1528, file: !702, line: 181, type: !85)
!1548 = !DILocation(line: 181, column: 8, scope: !1528)
!1549 = !DILocation(line: 183, column: 2, scope: !1528)
!1550 = distinct !{!1550, !1549}
!1551 = !DILocation(line: 183, column: 10, scope: !1552)
!1552 = !DILexicalBlockFile(scope: !1553, file: !702, discriminator: 1)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !702, line: 183, column: 10)
!1554 = distinct !DILexicalBlock(scope: !1528, file: !702, line: 183, column: 4)
!1555 = !DILocation(line: 183, column: 15, scope: !1552)
!1556 = !DILocation(line: 183, column: 5, scope: !1557)
!1557 = !DILexicalBlockFile(scope: !1558, file: !702, discriminator: 2)
!1558 = distinct !DILexicalBlock(scope: !1553, file: !702, line: 183, column: 3)
!1559 = !DILocation(line: 183, column: 14, scope: !1560)
!1560 = !DILexicalBlockFile(scope: !1561, file: !702, discriminator: 3)
!1561 = distinct !DILexicalBlock(scope: !1553, file: !702, line: 183, column: 12)
!1562 = !DILocation(line: 183, column: 99, scope: !1560)
!1563 = !DILocation(line: 183, column: 110, scope: !1564)
!1564 = !DILexicalBlockFile(scope: !1554, file: !702, discriminator: 4)
!1565 = !DILocation(line: 184, column: 6, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1528, file: !702, line: 184, column: 6)
!1567 = !DILocation(line: 184, column: 13, scope: !1566)
!1568 = !DILocation(line: 184, column: 20, scope: !1566)
!1569 = !DILocation(line: 184, column: 24, scope: !1570)
!1570 = !DILexicalBlockFile(scope: !1566, file: !702, discriminator: 1)
!1571 = !DILocation(line: 184, column: 32, scope: !1570)
!1572 = !DILocation(line: 184, column: 42, scope: !1570)
!1573 = !DILocation(line: 184, column: 126, scope: !1574)
!1574 = !DILexicalBlockFile(scope: !1566, file: !702, discriminator: 2)
!1575 = !DILocation(line: 184, column: 108, scope: !1574)
!1576 = !DILocation(line: 184, column: 93, scope: !1574)
!1577 = !DILocation(line: 184, column: 92, scope: !1574)
!1578 = !DILocation(line: 184, column: 67, scope: !1579)
!1579 = !DILexicalBlockFile(scope: !1574, file: !702, discriminator: 5)
!1580 = !DILocation(line: 184, column: 48, scope: !1574)
!1581 = !DILocation(line: 184, column: 6, scope: !1574)
!1582 = !DILocation(line: 184, column: 47, scope: !1583)
!1583 = !DILexicalBlockFile(scope: !1566, file: !702, discriminator: 3)
!1584 = !DILocation(line: 184, column: 6, scope: !1585)
!1585 = !DILexicalBlockFile(scope: !1528, file: !702, discriminator: 4)
!1586 = !DILocation(line: 185, column: 3, scope: !1566)
!1587 = distinct !{!1587, !1586}
!1588 = !DILocation(line: 185, column: 8, scope: !1589)
!1589 = !DILexicalBlockFile(scope: !1590, file: !702, discriminator: 1)
!1590 = distinct !DILexicalBlock(scope: !1566, file: !702, line: 185, column: 6)
!1591 = !DILocation(line: 185, column: 86, scope: !1592)
!1592 = !DILexicalBlockFile(scope: !1589, file: !702, discriminator: 3)
!1593 = !DILocation(line: 185, column: 101, scope: !1589)
!1594 = !DILocation(line: 185, column: 109, scope: !1595)
!1595 = !DILexicalBlockFile(scope: !1590, file: !702, discriminator: 2)
!1596 = !DILocation(line: 187, column: 22, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1528, file: !702, line: 187, column: 6)
!1598 = !DILocation(line: 188, column: 20, scope: !1597)
!1599 = !DILocation(line: 187, column: 7, scope: !1597)
!1600 = !DILocation(line: 187, column: 6, scope: !1528)
!1601 = !DILocation(line: 188, column: 45, scope: !1602)
!1602 = !DILexicalBlockFile(scope: !1597, file: !702, discriminator: 1)
!1603 = !DILocation(line: 189, column: 43, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1528, file: !702, line: 189, column: 6)
!1605 = !DILocation(line: 189, column: 25, scope: !1604)
!1606 = !DILocation(line: 189, column: 10, scope: !1604)
!1607 = !DILocation(line: 189, column: 21, scope: !1604)
!1608 = !DILocation(line: 189, column: 65, scope: !1604)
!1609 = !DILocation(line: 189, column: 47, scope: !1610)
!1610 = !DILexicalBlockFile(scope: !1604, file: !702, discriminator: 6)
!1611 = !DILocation(line: 189, column: 32, scope: !1604)
!1612 = !DILocation(line: 189, column: 20, scope: !1604)
!1613 = !DILocation(line: 189, column: 8, scope: !1614)
!1614 = !DILexicalBlockFile(scope: !1604, file: !702, discriminator: 7)
!1615 = !DILocation(line: 189, column: 8, scope: !1604)
!1616 = !DILocation(line: 189, column: 6, scope: !1528)
!1617 = !DILocation(line: 189, column: 31, scope: !1618)
!1618 = !DILexicalBlockFile(scope: !1604, file: !702, discriminator: 1)
!1619 = distinct !{!1619, !1620}
!1620 = !DILocation(line: 189, column: 31, scope: !1604)
!1621 = !DILocation(line: 189, column: 52, scope: !1622)
!1622 = !DILexicalBlockFile(scope: !1623, file: !702, discriminator: 2)
!1623 = distinct !DILexicalBlock(scope: !1604, file: !702, line: 189, column: 34)
!1624 = !DILocation(line: 189, column: 36, scope: !1622)
!1625 = !DILocation(line: 189, column: 63, scope: !1622)
!1626 = distinct !{!1626, !1627}
!1627 = !DILocation(line: 189, column: 63, scope: !1623)
!1628 = !DILocation(line: 189, column: 68, scope: !1629)
!1629 = !DILexicalBlockFile(scope: !1630, file: !702, discriminator: 3)
!1630 = distinct !DILexicalBlock(scope: !1623, file: !702, line: 189, column: 66)
!1631 = !DILocation(line: 189, column: 143, scope: !1632)
!1632 = !DILexicalBlockFile(scope: !1629, file: !702, discriminator: 8)
!1633 = !DILocation(line: 189, column: 158, scope: !1629)
!1634 = !DILocation(line: 189, column: 179, scope: !1635)
!1635 = !DILexicalBlockFile(scope: !1623, file: !702, discriminator: 4)
!1636 = !DILocation(line: 189, column: 179, scope: !1637)
!1637 = !DILexicalBlockFile(scope: !1623, file: !702, discriminator: 5)
!1638 = !DILocation(line: 190, column: 7, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1528, file: !702, line: 190, column: 6)
!1640 = !DILocation(line: 190, column: 6, scope: !1639)
!1641 = !DILocation(line: 190, column: 13, scope: !1639)
!1642 = !DILocation(line: 190, column: 6, scope: !1528)
!1643 = !DILocation(line: 191, column: 17, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1645, file: !702, line: 191, column: 7)
!1645 = distinct !DILexicalBlock(scope: !1639, file: !702, line: 190, column: 22)
!1646 = !DILocation(line: 191, column: 7, scope: !1644)
!1647 = !DILocation(line: 191, column: 28, scope: !1644)
!1648 = !DILocation(line: 191, column: 7, scope: !1645)
!1649 = !DILocation(line: 192, column: 4, scope: !1644)
!1650 = distinct !{!1650, !1649}
!1651 = !DILocation(line: 192, column: 25, scope: !1652)
!1652 = !DILexicalBlockFile(scope: !1653, file: !702, discriminator: 1)
!1653 = distinct !DILexicalBlock(scope: !1644, file: !702, line: 192, column: 7)
!1654 = !DILocation(line: 192, column: 9, scope: !1652)
!1655 = !DILocation(line: 192, column: 36, scope: !1652)
!1656 = distinct !{!1656, !1657}
!1657 = !DILocation(line: 192, column: 36, scope: !1653)
!1658 = !DILocation(line: 192, column: 41, scope: !1659)
!1659 = !DILexicalBlockFile(scope: !1660, file: !702, discriminator: 2)
!1660 = distinct !DILexicalBlock(scope: !1653, file: !702, line: 192, column: 39)
!1661 = !DILocation(line: 192, column: 123, scope: !1662)
!1662 = !DILexicalBlockFile(scope: !1659, file: !702, discriminator: 5)
!1663 = !DILocation(line: 192, column: 138, scope: !1659)
!1664 = !DILocation(line: 192, column: 159, scope: !1665)
!1665 = !DILexicalBlockFile(scope: !1653, file: !702, discriminator: 3)
!1666 = !DILocation(line: 192, column: 159, scope: !1667)
!1667 = !DILexicalBlockFile(scope: !1653, file: !702, discriminator: 4)
!1668 = !DILocation(line: 194, column: 20, scope: !1645)
!1669 = !DILocation(line: 194, column: 9, scope: !1645)
!1670 = !DILocation(line: 195, column: 2, scope: !1645)
!1671 = !DILocation(line: 197, column: 147, scope: !1528)
!1672 = !DILocation(line: 197, column: 129, scope: !1528)
!1673 = !DILocation(line: 197, column: 114, scope: !1528)
!1674 = !DILocation(line: 197, column: 25, scope: !1528)
!1675 = !DILocation(line: 197, column: 100, scope: !1676)
!1676 = !DILexicalBlockFile(scope: !1528, file: !702, discriminator: 1)
!1677 = !DILocation(line: 197, column: 100, scope: !1528)
!1678 = !DILocation(line: 197, column: 75, scope: !1679)
!1679 = !DILexicalBlockFile(scope: !1528, file: !702, discriminator: 2)
!1680 = !DILocation(line: 197, column: 59, scope: !1528)
!1681 = !DILocation(line: 197, column: 58, scope: !1528)
!1682 = !DILocation(line: 197, column: 33, scope: !1683)
!1683 = !DILexicalBlockFile(scope: !1528, file: !702, discriminator: 3)
!1684 = !DILocation(line: 197, column: 13, scope: !1528)
!1685 = !DILocation(line: 197, column: 10, scope: !1528)
!1686 = !DILocation(line: 198, column: 6, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1528, file: !702, line: 198, column: 6)
!1688 = !DILocation(line: 198, column: 14, scope: !1687)
!1689 = !DILocation(line: 198, column: 6, scope: !1528)
!1690 = !DILocation(line: 199, column: 3, scope: !1687)
!1691 = distinct !{!1691, !1690}
!1692 = !DILocation(line: 199, column: 24, scope: !1693)
!1693 = !DILexicalBlockFile(scope: !1694, file: !702, discriminator: 1)
!1694 = distinct !DILexicalBlock(scope: !1687, file: !702, line: 199, column: 6)
!1695 = !DILocation(line: 199, column: 8, scope: !1693)
!1696 = !DILocation(line: 199, column: 35, scope: !1693)
!1697 = distinct !{!1697, !1698}
!1698 = !DILocation(line: 199, column: 35, scope: !1694)
!1699 = !DILocation(line: 199, column: 40, scope: !1700)
!1700 = !DILexicalBlockFile(scope: !1701, file: !702, discriminator: 2)
!1701 = distinct !DILexicalBlock(scope: !1694, file: !702, line: 199, column: 38)
!1702 = !DILocation(line: 199, column: 119, scope: !1703)
!1703 = !DILexicalBlockFile(scope: !1700, file: !702, discriminator: 5)
!1704 = !DILocation(line: 199, column: 134, scope: !1700)
!1705 = !DILocation(line: 199, column: 155, scope: !1706)
!1706 = !DILexicalBlockFile(scope: !1694, file: !702, discriminator: 3)
!1707 = !DILocation(line: 199, column: 155, scope: !1708)
!1708 = !DILexicalBlockFile(scope: !1694, file: !702, discriminator: 4)
!1709 = !DILocation(line: 201, column: 6, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1528, file: !702, line: 201, column: 6)
!1711 = !DILocation(line: 201, column: 6, scope: !1528)
!1712 = !DILocation(line: 202, column: 11, scope: !1710)
!1713 = !DILocation(line: 202, column: 20, scope: !1710)
!1714 = !DILocation(line: 202, column: 27, scope: !1710)
!1715 = !DILocation(line: 202, column: 3, scope: !1710)
!1716 = !DILocation(line: 204, column: 14, scope: !1710)
!1717 = !DILocation(line: 204, column: 23, scope: !1710)
!1718 = !DILocation(line: 204, column: 3, scope: !1710)
!1719 = !DILocation(line: 206, column: 18, scope: !1528)
!1720 = !DILocation(line: 206, column: 2, scope: !1528)
!1721 = !DILocation(line: 207, column: 1, scope: !1528)
!1722 = !DILocation(line: 207, column: 1, scope: !1676)
!1723 = distinct !DISubprogram(name: "parse_ban_type", scope: !702, file: !702, line: 231, type: !1458, isLocal: true, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !710)
!1724 = !DILocalVariable(name: "type", arg: 1, scope: !1723, file: !702, line: 231, type: !482)
!1725 = !DILocation(line: 231, column: 39, scope: !1723)
!1726 = !DILocalVariable(name: "pos", scope: !1723, file: !702, line: 233, type: !482)
!1727 = !DILocation(line: 233, column: 14, scope: !1723)
!1728 = !DILocation(line: 235, column: 2, scope: !1723)
!1729 = distinct !{!1729, !1728}
!1730 = !DILocation(line: 235, column: 10, scope: !1731)
!1731 = !DILexicalBlockFile(scope: !1732, file: !702, discriminator: 1)
!1732 = distinct !DILexicalBlock(scope: !1733, file: !702, line: 235, column: 10)
!1733 = distinct !DILexicalBlock(scope: !1723, file: !702, line: 235, column: 4)
!1734 = !DILocation(line: 235, column: 15, scope: !1731)
!1735 = !DILocation(line: 235, column: 5, scope: !1736)
!1736 = !DILexicalBlockFile(scope: !1737, file: !702, discriminator: 2)
!1737 = distinct !DILexicalBlock(scope: !1732, file: !702, line: 235, column: 3)
!1738 = !DILocation(line: 235, column: 14, scope: !1739)
!1739 = !DILexicalBlockFile(scope: !1740, file: !702, discriminator: 3)
!1740 = distinct !DILexicalBlock(scope: !1732, file: !702, line: 235, column: 12)
!1741 = !DILocation(line: 235, column: 99, scope: !1739)
!1742 = !DILocation(line: 235, column: 114, scope: !1743)
!1743 = !DILexicalBlockFile(scope: !1733, file: !702, discriminator: 4)
!1744 = !DILocation(line: 237, column: 37, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1723, file: !702, line: 237, column: 6)
!1746 = !DILocation(line: 237, column: 14, scope: !1745)
!1747 = !DILocation(line: 237, column: 6, scope: !1745)
!1748 = !DILocation(line: 237, column: 47, scope: !1745)
!1749 = !DILocation(line: 237, column: 6, scope: !1723)
!1750 = !DILocation(line: 238, column: 3, scope: !1745)
!1751 = !DILocation(line: 239, column: 37, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1723, file: !702, line: 239, column: 6)
!1753 = !DILocation(line: 239, column: 14, scope: !1752)
!1754 = !DILocation(line: 239, column: 6, scope: !1752)
!1755 = !DILocation(line: 239, column: 47, scope: !1752)
!1756 = !DILocation(line: 239, column: 6, scope: !1723)
!1757 = !DILocation(line: 240, column: 3, scope: !1752)
!1758 = !DILocation(line: 241, column: 37, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1723, file: !702, line: 241, column: 6)
!1760 = !DILocation(line: 241, column: 14, scope: !1759)
!1761 = !DILocation(line: 241, column: 6, scope: !1759)
!1762 = !DILocation(line: 241, column: 47, scope: !1759)
!1763 = !DILocation(line: 241, column: 6, scope: !1723)
!1764 = !DILocation(line: 242, column: 3, scope: !1759)
!1765 = !DILocation(line: 243, column: 37, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1723, file: !702, line: 243, column: 6)
!1767 = !DILocation(line: 243, column: 14, scope: !1766)
!1768 = !DILocation(line: 243, column: 6, scope: !1766)
!1769 = !DILocation(line: 243, column: 47, scope: !1766)
!1770 = !DILocation(line: 243, column: 6, scope: !1723)
!1771 = !DILocation(line: 244, column: 3, scope: !1766)
!1772 = !DILocation(line: 245, column: 37, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1723, file: !702, line: 245, column: 6)
!1774 = !DILocation(line: 245, column: 14, scope: !1773)
!1775 = !DILocation(line: 245, column: 6, scope: !1773)
!1776 = !DILocation(line: 245, column: 47, scope: !1773)
!1777 = !DILocation(line: 245, column: 6, scope: !1723)
!1778 = !DILocation(line: 246, column: 16, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1773, file: !702, line: 245, column: 55)
!1780 = !DILocation(line: 246, column: 9, scope: !1779)
!1781 = !DILocation(line: 246, column: 7, scope: !1779)
!1782 = !DILocation(line: 247, column: 21, scope: !1783)
!1783 = distinct !DILexicalBlock(scope: !1779, file: !702, line: 247, column: 21)
!1784 = !DILocation(line: 247, column: 25, scope: !1783)
!1785 = !DILocation(line: 247, column: 21, scope: !1779)
!1786 = !DILocation(line: 248, column: 28, scope: !1783)
!1787 = !DILocation(line: 248, column: 31, scope: !1783)
!1788 = !DILocation(line: 248, column: 11, scope: !1783)
!1789 = !DILocation(line: 248, column: 4, scope: !1783)
!1790 = !DILocation(line: 249, column: 2, scope: !1779)
!1791 = !DILocation(line: 251, column: 9, scope: !1723)
!1792 = !DILocation(line: 252, column: 1, scope: !1723)
