; ModuleID = './line143-irc-cap.o.i'
source_filename = "./line143-irc-cap.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct._WI_ITEM_REC = type opaque
%struct._NICK_REC = type { i32, i32, i64, i8*, i8*, i8*, i32, i8, [8 x i8], i8*, %struct._NICK_REC* }
%struct._QUERY_REC = type opaque
%struct._REDIRECT_REC = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct._GTimeVal = type { i64, i64 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GHashTable = type opaque
%struct.modes_type = type { void (%struct._IRC_CHANNEL_REC*, i8*, i8, i8, i8*, %struct._GString*)*, i8 }
%struct._IRC_CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._IRC_SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)*, %struct._GSList*, i64, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"server cap req\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"CAP REQ %s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"-%s\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"CAP END\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"server cap end\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"irc/core\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"event cap\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"event 410\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"LS\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"irc-cap.c\00", align 1
@__func__.event_cap = private unnamed_addr constant [10 x i8] c"event_cap\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"Invalid CAP %s key/value pair\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"The server sent the %s capability twice\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"CAP REQ :\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"ACK\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"sasl\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"ack\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"NAK\00", align 1
@.str.19 = private unnamed_addr constant [74 x i8] c"The server answered with a NAK to our CAP request, this should not happen\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"nak\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"NEW\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"DEL\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"LIST\00", align 1
@.str.26 = private unnamed_addr constant [28 x i8] c"Unhandled CAP subcommand %s\00", align 1
@__func__.parse_cap_name = private unnamed_addr constant [15 x i8] c"parse_cap_name\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"name != NULL\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"name[0] != '\5C0'\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"server cap %s %s\00", align 1
@.str.30 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define i32 @cap_toggle(%struct._IRC_SERVER_REC*, i8*, i32) #0 !dbg !73 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !687, metadata !688), !dbg !689
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !690, metadata !688), !dbg !691
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !692, metadata !688), !dbg !693
  %9 = load i8*, i8** %6, align 8, !dbg !694
  %10 = icmp eq i8* %9, null, !dbg !696
  br i1 %10, label %16, label %11, !dbg !697

; <label>:11:                                     ; preds = %3
  %12 = load i8*, i8** %6, align 8, !dbg !698
  %13 = load i8, i8* %12, align 1, !dbg !700
  %14 = sext i8 %13 to i32, !dbg !700
  %15 = icmp eq i32 %14, 0, !dbg !701
  br i1 %15, label %16, label %17, !dbg !702

; <label>:16:                                     ; preds = %11, %3
  store i32 0, i32* %4, align 4, !dbg !703
  br label %109, !dbg !703

; <label>:17:                                     ; preds = %11
  %18 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !704
  %19 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %18, i32 0, i32 45, !dbg !706
  %20 = load i16, i16* %19, align 4, !dbg !706
  %21 = lshr i16 %20, 10, !dbg !706
  %22 = and i16 %21, 1, !dbg !706
  %23 = zext i16 %22 to i32, !dbg !706
  %24 = icmp ne i32 %23, 0, !dbg !704
  br i1 %24, label %64, label %25, !dbg !707

; <label>:25:                                     ; preds = %17
  %26 = load i32, i32* %7, align 4, !dbg !708
  %27 = icmp ne i32 %26, 0, !dbg !708
  br i1 %27, label %28, label %44, !dbg !711

; <label>:28:                                     ; preds = %25
  %29 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !712
  %30 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %29, i32 0, i32 52, !dbg !714
  %31 = load %struct._GSList*, %struct._GSList** %30, align 8, !dbg !714
  %32 = load i8*, i8** %6, align 8, !dbg !715
  %33 = call %struct._GSList* @gslist_find_string(%struct._GSList* %31, i8* %32), !dbg !716
  %34 = icmp ne %struct._GSList* %33, null, !dbg !716
  br i1 %34, label %44, label %35, !dbg !717

; <label>:35:                                     ; preds = %28
  %36 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !718
  %37 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %36, i32 0, i32 52, !dbg !720
  %38 = load %struct._GSList*, %struct._GSList** %37, align 8, !dbg !720
  %39 = load i8*, i8** %6, align 8, !dbg !721
  %40 = call noalias i8* @g_strdup(i8* %39), !dbg !722
  %41 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %38, i8* %40), !dbg !723
  %42 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !725
  %43 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %42, i32 0, i32 52, !dbg !726
  store %struct._GSList* %41, %struct._GSList** %43, align 8, !dbg !727
  store i32 1, i32* %4, align 4, !dbg !728
  br label %109, !dbg !728

; <label>:44:                                     ; preds = %28, %25
  %45 = load i32, i32* %7, align 4, !dbg !729
  %46 = icmp ne i32 %45, 0, !dbg !729
  br i1 %46, label %62, label %47, !dbg !731

; <label>:47:                                     ; preds = %44
  %48 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !732
  %49 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %48, i32 0, i32 52, !dbg !734
  %50 = load %struct._GSList*, %struct._GSList** %49, align 8, !dbg !734
  %51 = load i8*, i8** %6, align 8, !dbg !735
  %52 = call %struct._GSList* @gslist_find_string(%struct._GSList* %50, i8* %51), !dbg !736
  %53 = icmp ne %struct._GSList* %52, null, !dbg !736
  br i1 %53, label %54, label %62, !dbg !737

; <label>:54:                                     ; preds = %47
  %55 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !738
  %56 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %55, i32 0, i32 52, !dbg !740
  %57 = load %struct._GSList*, %struct._GSList** %56, align 8, !dbg !740
  %58 = load i8*, i8** %6, align 8, !dbg !741
  %59 = call %struct._GSList* @gslist_delete_string(%struct._GSList* %57, i8* %58, void (i8*)* @g_free), !dbg !742
  %60 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !743
  %61 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %60, i32 0, i32 52, !dbg !744
  store %struct._GSList* %59, %struct._GSList** %61, align 8, !dbg !745
  store i32 1, i32* %4, align 4, !dbg !746
  br label %109, !dbg !746

; <label>:62:                                     ; preds = %47, %44
  br label %63

; <label>:63:                                     ; preds = %62
  store i32 0, i32* %4, align 4, !dbg !747
  br label %109, !dbg !747

; <label>:64:                                     ; preds = %17
  %65 = load i32, i32* %7, align 4, !dbg !748
  %66 = icmp ne i32 %65, 0, !dbg !748
  br i1 %66, label %67, label %88, !dbg !750

; <label>:67:                                     ; preds = %64
  %68 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !751
  %69 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %68, i32 0, i32 51, !dbg !753
  %70 = load %struct._GSList*, %struct._GSList** %69, align 8, !dbg !753
  %71 = load i8*, i8** %6, align 8, !dbg !754
  %72 = call %struct._GSList* @gslist_find_string(%struct._GSList* %70, i8* %71), !dbg !755
  %73 = icmp ne %struct._GSList* %72, null, !dbg !755
  br i1 %73, label %88, label %74, !dbg !756

; <label>:74:                                     ; preds = %67
  %75 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !757
  %76 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %75, i32 0, i32 50, !dbg !760
  %77 = load %struct._GHashTable*, %struct._GHashTable** %76, align 8, !dbg !760
  %78 = load i8*, i8** %6, align 8, !dbg !761
  %79 = call i32 @g_hash_table_lookup_extended(%struct._GHashTable* %77, i8* %78, i8** null, i8** null), !dbg !762
  %80 = icmp ne i32 %79, 0, !dbg !762
  br i1 %80, label %82, label %81, !dbg !763

; <label>:81:                                     ; preds = %74
  store i32 0, i32* %4, align 4, !dbg !764
  br label %109, !dbg !764

; <label>:82:                                     ; preds = %74
  %83 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !765
  %84 = load i8*, i8** %6, align 8, !dbg !766
  %85 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 2, %struct._IRC_SERVER_REC* %83, i8* %84), !dbg !767
  %86 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !768
  %87 = load i8*, i8** %6, align 8, !dbg !769
  call void (%struct._IRC_SERVER_REC*, i8*, ...) @irc_send_cmdv(%struct._IRC_SERVER_REC* %86, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* %87), !dbg !770
  store i32 1, i32* %4, align 4, !dbg !771
  br label %109, !dbg !771

; <label>:88:                                     ; preds = %67, %64
  %89 = load i32, i32* %7, align 4, !dbg !772
  %90 = icmp ne i32 %89, 0, !dbg !772
  br i1 %90, label %107, label %91, !dbg !774

; <label>:91:                                     ; preds = %88
  %92 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !775
  %93 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %92, i32 0, i32 51, !dbg !777
  %94 = load %struct._GSList*, %struct._GSList** %93, align 8, !dbg !777
  %95 = load i8*, i8** %6, align 8, !dbg !778
  %96 = call %struct._GSList* @gslist_find_string(%struct._GSList* %94, i8* %95), !dbg !779
  %97 = icmp ne %struct._GSList* %96, null, !dbg !779
  br i1 %97, label %98, label %107, !dbg !780

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.declare(metadata i8** %8, metadata !781, metadata !688), !dbg !783
  %99 = load i8*, i8** %6, align 8, !dbg !784
  %100 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* %99), !dbg !785
  store i8* %100, i8** %8, align 8, !dbg !783
  %101 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !786
  %102 = load i8*, i8** %8, align 8, !dbg !787
  %103 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 2, %struct._IRC_SERVER_REC* %101, i8* %102), !dbg !788
  %104 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !789
  %105 = load i8*, i8** %8, align 8, !dbg !790
  call void (%struct._IRC_SERVER_REC*, i8*, ...) @irc_send_cmdv(%struct._IRC_SERVER_REC* %104, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i8* %105), !dbg !791
  %106 = load i8*, i8** %8, align 8, !dbg !792
  call void @g_free(i8* %106), !dbg !793
  store i32 1, i32* %4, align 4, !dbg !794
  br label %109, !dbg !794

; <label>:107:                                    ; preds = %91, %88
  br label %108

; <label>:108:                                    ; preds = %107
  store i32 0, i32* %4, align 4, !dbg !795
  br label %109, !dbg !795

; <label>:109:                                    ; preds = %108, %98, %82, %81, %63, %54, %35, %16
  %110 = load i32, i32* %4, align 4, !dbg !796
  ret i32 %110, !dbg !796
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct._GSList* @gslist_find_string(%struct._GSList*, i8*) #2

declare %struct._GSList* @g_slist_prepend(%struct._GSList*, i8*) #2

declare noalias i8* @g_strdup(i8*) #2

declare %struct._GSList* @gslist_delete_string(%struct._GSList*, i8*, void (i8*)*) #2

declare void @g_free(i8*) #2

declare i32 @g_hash_table_lookup_extended(%struct._GHashTable*, i8*, i8**, i8**) #2

declare i32 @signal_emit(i8*, i32, ...) #2

declare void @irc_send_cmdv(%struct._IRC_SERVER_REC*, i8*, ...) #2

declare noalias i8* @g_strdup_printf(i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @cap_finish_negotiation(%struct._IRC_SERVER_REC*) #0 !dbg !797 {
  %2 = alloca %struct._IRC_SERVER_REC*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %2, metadata !800, metadata !688), !dbg !801
  %3 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !802
  %4 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %3, i32 0, i32 45, !dbg !804
  %5 = load i16, i16* %4, align 4, !dbg !804
  %6 = lshr i16 %5, 10, !dbg !804
  %7 = and i16 %6, 1, !dbg !804
  %8 = zext i16 %7 to i32, !dbg !804
  %9 = icmp ne i32 %8, 0, !dbg !802
  br i1 %9, label %10, label %11, !dbg !805

; <label>:10:                                     ; preds = %1
  br label %20, !dbg !806

; <label>:11:                                     ; preds = %1
  %12 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !807
  %13 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %12, i32 0, i32 45, !dbg !808
  %14 = load i16, i16* %13, align 4, !dbg !809
  %15 = and i16 %14, -1025, !dbg !809
  %16 = or i16 %15, 1024, !dbg !809
  store i16 %16, i16* %13, align 4, !dbg !809
  %17 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !810
  call void @irc_send_cmd_now(%struct._IRC_SERVER_REC* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0)), !dbg !811
  %18 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %2, align 8, !dbg !812
  %19 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i32 1, %struct._IRC_SERVER_REC* %18), !dbg !813
  br label %20, !dbg !814

; <label>:20:                                     ; preds = %11, %10
  ret void, !dbg !815
}

declare void @irc_send_cmd_now(%struct._IRC_SERVER_REC*, i8*) #2

; Function Attrs: nounwind uwtable
define void @cap_init() #0 !dbg !817 {
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_cap to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !818
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i32 -100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_invalid_cap to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !819
  ret void, !dbg !820
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @event_cap(%struct._IRC_SERVER_REC*, i8*, i8*, i8*) #0 !dbg !821 {
  %5 = alloca %struct._IRC_SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._GSList*, align 8
  %10 = alloca %struct._GString*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %5, metadata !824, metadata !688), !dbg !825
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !826, metadata !688), !dbg !827
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !828, metadata !688), !dbg !829
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !830, metadata !688), !dbg !831
  call void @llvm.dbg.declare(metadata %struct._GSList** %9, metadata !832, metadata !688), !dbg !833
  call void @llvm.dbg.declare(metadata %struct._GString** %10, metadata !834, metadata !688), !dbg !835
  call void @llvm.dbg.declare(metadata i8** %11, metadata !836, metadata !688), !dbg !837
  call void @llvm.dbg.declare(metadata i8** %12, metadata !838, metadata !688), !dbg !839
  call void @llvm.dbg.declare(metadata i8** %13, metadata !840, metadata !688), !dbg !841
  call void @llvm.dbg.declare(metadata i8** %14, metadata !842, metadata !688), !dbg !843
  call void @llvm.dbg.declare(metadata i8*** %15, metadata !844, metadata !688), !dbg !845
  call void @llvm.dbg.declare(metadata i32* %16, metadata !846, metadata !688), !dbg !847
  call void @llvm.dbg.declare(metadata i32* %17, metadata !848, metadata !688), !dbg !849
  call void @llvm.dbg.declare(metadata i32* %18, metadata !850, metadata !688), !dbg !851
  call void @llvm.dbg.declare(metadata i32* %19, metadata !852, metadata !688), !dbg !853
  call void @llvm.dbg.declare(metadata i32* %20, metadata !854, metadata !688), !dbg !855
  %28 = load i8*, i8** %6, align 8, !dbg !856
  %29 = call i8* (i8*, i32, ...) @event_get_params(i8* %28, i32 4, i8* null, i8** %12, i8** %14, i8** %13), !dbg !857
  store i8* %29, i8** %11, align 8, !dbg !858
  %30 = load i8*, i8** %11, align 8, !dbg !859
  %31 = icmp eq i8* %30, null, !dbg !861
  br i1 %31, label %32, label %33, !dbg !862

; <label>:32:                                     ; preds = %4
  br label %381, !dbg !863

; <label>:33:                                     ; preds = %4
  %34 = load i8*, i8** %12, align 8, !dbg !864
  %35 = call i32 @g_ascii_strcasecmp(i8* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0)), !dbg !866
  %36 = icmp ne i32 %35, 0, !dbg !866
  br i1 %36, label %42, label %37, !dbg !867

; <label>:37:                                     ; preds = %33
  %38 = load i8*, i8** %14, align 8, !dbg !868
  %39 = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0)) #5, !dbg !870
  %40 = icmp ne i32 %39, 0, !dbg !870
  br i1 %40, label %42, label %41, !dbg !871

; <label>:41:                                     ; preds = %37
  store i32 1, i32* %20, align 4, !dbg !872
  br label %55, !dbg !874

; <label>:42:                                     ; preds = %37, %33
  %43 = load i8*, i8** %13, align 8, !dbg !875
  %44 = getelementptr inbounds i8, i8* %43, i64 0, !dbg !875
  %45 = load i8, i8* %44, align 1, !dbg !875
  %46 = sext i8 %45 to i32, !dbg !875
  %47 = icmp eq i32 %46, 0, !dbg !877
  br i1 %47, label %48, label %50, !dbg !878

; <label>:48:                                     ; preds = %42
  store i32 0, i32* %20, align 4, !dbg !879
  %49 = load i8*, i8** %14, align 8, !dbg !881
  store i8* %49, i8** %13, align 8, !dbg !882
  br label %54, !dbg !883

; <label>:50:                                     ; preds = %42
  %51 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !884
  call void @cap_finish_negotiation(%struct._IRC_SERVER_REC* %51), !dbg !886
  br label %52, !dbg !887, !llvm.loop !888

; <label>:52:                                     ; preds = %50
  call void @g_warn_message(i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i32 134, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.event_cap, i32 0, i32 0), i8* null), !dbg !889
  br label %53, !dbg !892

; <label>:53:                                     ; preds = %52
  br label %381, !dbg !893

; <label>:54:                                     ; preds = %48
  br label %55

; <label>:55:                                     ; preds = %54, %41
  %56 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !894
  %57 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %56, i32 0, i32 50, !dbg !896
  %58 = load %struct._GHashTable*, %struct._GHashTable** %57, align 8, !dbg !896
  %59 = icmp eq %struct._GHashTable* %58, null, !dbg !897
  br i1 %59, label %60, label %64, !dbg !898

; <label>:60:                                     ; preds = %55
  %61 = call %struct._GHashTable* @g_hash_table_new_full(i32 (i8*)* @g_str_hash, i32 (i8*, i8*)* @g_str_equal, void (i8*)* @g_free, void (i8*)* @g_free), !dbg !899
  %62 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !901
  %63 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %62, i32 0, i32 50, !dbg !902
  store %struct._GHashTable* %61, %struct._GHashTable** %63, align 8, !dbg !903
  br label %64, !dbg !904

; <label>:64:                                     ; preds = %60, %55
  %65 = load i8*, i8** %13, align 8, !dbg !905
  %66 = call i8* @g_strchomp(i8* %65), !dbg !906
  %67 = call noalias i8** @g_strsplit(i8* %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), i32 -1), !dbg !907
  store i8** %67, i8*** %15, align 8, !dbg !909
  %68 = load i8**, i8*** %15, align 8, !dbg !910
  %69 = call i32 @g_strv_length(i8** %68), !dbg !911
  store i32 %69, i32* %17, align 4, !dbg !912
  %70 = load i8*, i8** %12, align 8, !dbg !913
  %71 = call i32 @g_ascii_strcasecmp(i8* %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0)), !dbg !915
  %72 = icmp ne i32 %71, 0, !dbg !915
  br i1 %72, label %202, label %73, !dbg !916

; <label>:73:                                     ; preds = %64
  %74 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !917
  %75 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %74, i32 0, i32 45, !dbg !920
  %76 = load i16, i16* %75, align 4, !dbg !920
  %77 = lshr i16 %76, 11, !dbg !920
  %78 = and i16 %77, 1, !dbg !920
  %79 = zext i16 %78 to i32, !dbg !920
  %80 = icmp ne i32 %79, 0, !dbg !917
  br i1 %80, label %85, label %81, !dbg !921

; <label>:81:                                     ; preds = %73
  %82 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !922
  %83 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %82, i32 0, i32 50, !dbg !924
  %84 = load %struct._GHashTable*, %struct._GHashTable** %83, align 8, !dbg !924
  call void @g_hash_table_remove_all(%struct._GHashTable* %84), !dbg !925
  br label %85, !dbg !926

; <label>:85:                                     ; preds = %81, %73
  %86 = load i32, i32* %20, align 4, !dbg !927
  %87 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !928
  %88 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %87, i32 0, i32 45, !dbg !929
  %89 = trunc i32 %86 to i16, !dbg !930
  %90 = load i16, i16* %88, align 4, !dbg !930
  %91 = and i16 %89, 1, !dbg !930
  %92 = shl i16 %91, 11, !dbg !930
  %93 = and i16 %90, -2049, !dbg !930
  %94 = or i16 %93, %92, !dbg !930
  store i16 %94, i16* %88, align 4, !dbg !930
  %95 = zext i16 %91 to i32, !dbg !930
  store i32 0, i32* %16, align 4, !dbg !931
  br label %96, !dbg !933

; <label>:96:                                     ; preds = %126, %85
  %97 = load i32, i32* %16, align 4, !dbg !934
  %98 = load i32, i32* %17, align 4, !dbg !937
  %99 = icmp slt i32 %97, %98, !dbg !938
  br i1 %99, label %100, label %129, !dbg !939

; <label>:100:                                    ; preds = %96
  call void @llvm.dbg.declare(metadata i8** %21, metadata !940, metadata !688), !dbg !942
  call void @llvm.dbg.declare(metadata i8** %22, metadata !943, metadata !688), !dbg !944
  %101 = load i32, i32* %16, align 4, !dbg !945
  %102 = sext i32 %101 to i64, !dbg !947
  %103 = load i8**, i8*** %15, align 8, !dbg !947
  %104 = getelementptr inbounds i8*, i8** %103, i64 %102, !dbg !947
  %105 = load i8*, i8** %104, align 8, !dbg !947
  %106 = call i32 @parse_cap_name(i8* %105, i8** %21, i8** %22), !dbg !948
  %107 = icmp ne i32 %106, 0, !dbg !948
  br i1 %107, label %110, label %108, !dbg !949

; <label>:108:                                    ; preds = %100
  %109 = load i8*, i8** %12, align 8, !dbg !950
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i32 0, i32 0), i8* %109), !dbg !952
  br label %126, !dbg !953

; <label>:110:                                    ; preds = %100
  %111 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !954
  %112 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %111, i32 0, i32 50, !dbg !956
  %113 = load %struct._GHashTable*, %struct._GHashTable** %112, align 8, !dbg !956
  %114 = load i8*, i8** %21, align 8, !dbg !957
  %115 = call i32 @g_hash_table_lookup_extended(%struct._GHashTable* %113, i8* %114, i8** null, i8** null), !dbg !958
  %116 = icmp ne i32 %115, 0, !dbg !958
  br i1 %116, label %117, label %119, !dbg !959

; <label>:117:                                    ; preds = %110
  %118 = load i8*, i8** %21, align 8, !dbg !960
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i32 0, i32 0), i8* %118), !dbg !962
  br label %119, !dbg !963

; <label>:119:                                    ; preds = %117, %110
  %120 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !964
  %121 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %120, i32 0, i32 50, !dbg !965
  %122 = load %struct._GHashTable*, %struct._GHashTable** %121, align 8, !dbg !965
  %123 = load i8*, i8** %21, align 8, !dbg !966
  %124 = load i8*, i8** %22, align 8, !dbg !967
  %125 = call i32 @g_hash_table_insert(%struct._GHashTable* %122, i8* %123, i8* %124), !dbg !968
  br label %126, !dbg !969

; <label>:126:                                    ; preds = %119, %108
  %127 = load i32, i32* %16, align 4, !dbg !970
  %128 = add nsw i32 %127, 1, !dbg !970
  store i32 %128, i32* %16, align 4, !dbg !970
  br label %96, !dbg !972, !llvm.loop !973

; <label>:129:                                    ; preds = %96
  %130 = load i32, i32* %20, align 4, !dbg !975
  %131 = icmp eq i32 %130, 0, !dbg !977
  br i1 %131, label %132, label %201, !dbg !978

; <label>:132:                                    ; preds = %129
  %133 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !979
  %134 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %133, i32 0, i32 52, !dbg !982
  %135 = load %struct._GSList*, %struct._GSList** %134, align 8, !dbg !982
  %136 = icmp eq %struct._GSList* %135, null, !dbg !983
  br i1 %136, label %137, label %139, !dbg !984

; <label>:137:                                    ; preds = %132
  %138 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !985
  call void @cap_finish_negotiation(%struct._IRC_SERVER_REC* %138), !dbg !987
  br label %200, !dbg !988

; <label>:139:                                    ; preds = %132
  %140 = call %struct._GString* @g_string_new(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0)), !dbg !989
  store %struct._GString* %140, %struct._GString** %10, align 8, !dbg !991
  store i32 0, i32* %19, align 4, !dbg !992
  %141 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !993
  %142 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %141, i32 0, i32 52, !dbg !995
  %143 = load %struct._GSList*, %struct._GSList** %142, align 8, !dbg !995
  store %struct._GSList* %143, %struct._GSList** %9, align 8, !dbg !996
  br label %144, !dbg !997

; <label>:144:                                    ; preds = %171, %139
  %145 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !998
  %146 = icmp ne %struct._GSList* %145, null, !dbg !1001
  br i1 %146, label %147, label %175, !dbg !1002

; <label>:147:                                    ; preds = %144
  %148 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1003
  %149 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %148, i32 0, i32 50, !dbg !1006
  %150 = load %struct._GHashTable*, %struct._GHashTable** %149, align 8, !dbg !1006
  %151 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !1007
  %152 = getelementptr inbounds %struct._GSList, %struct._GSList* %151, i32 0, i32 0, !dbg !1008
  %153 = load i8*, i8** %152, align 8, !dbg !1008
  %154 = call i32 @g_hash_table_lookup_extended(%struct._GHashTable* %150, i8* %153, i8** null, i8** null), !dbg !1009
  %155 = icmp ne i32 %154, 0, !dbg !1009
  br i1 %155, label %156, label %170, !dbg !1010

; <label>:156:                                    ; preds = %147
  %157 = load i32, i32* %19, align 4, !dbg !1011
  %158 = icmp sgt i32 %157, 0, !dbg !1014
  br i1 %158, label %159, label %162, !dbg !1015

; <label>:159:                                    ; preds = %156
  %160 = load %struct._GString*, %struct._GString** %10, align 8, !dbg !1016
  %161 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %160, i8 signext 32), !dbg !1017
  br label %162, !dbg !1017

; <label>:162:                                    ; preds = %159, %156
  %163 = load %struct._GString*, %struct._GString** %10, align 8, !dbg !1018
  %164 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !1019
  %165 = getelementptr inbounds %struct._GSList, %struct._GSList* %164, i32 0, i32 0, !dbg !1020
  %166 = load i8*, i8** %165, align 8, !dbg !1020
  %167 = call %struct._GString* @g_string_append(%struct._GString* %163, i8* %166), !dbg !1021
  %168 = load i32, i32* %19, align 4, !dbg !1022
  %169 = add nsw i32 %168, 1, !dbg !1022
  store i32 %169, i32* %19, align 4, !dbg !1022
  br label %170, !dbg !1023

; <label>:170:                                    ; preds = %162, %147
  br label %171, !dbg !1024

; <label>:171:                                    ; preds = %170
  %172 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !1025
  %173 = getelementptr inbounds %struct._GSList, %struct._GSList* %172, i32 0, i32 1, !dbg !1027
  %174 = load %struct._GSList*, %struct._GSList** %173, align 8, !dbg !1027
  store %struct._GSList* %174, %struct._GSList** %9, align 8, !dbg !1028
  br label %144, !dbg !1029, !llvm.loop !1030

; <label>:175:                                    ; preds = %144
  %176 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1032
  %177 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %176, i32 0, i32 52, !dbg !1033
  %178 = load %struct._GSList*, %struct._GSList** %177, align 8, !dbg !1033
  call void @gslist_free_full(%struct._GSList* %178, void (i8*)* @g_free), !dbg !1034
  %179 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1035
  %180 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %179, i32 0, i32 52, !dbg !1036
  store %struct._GSList* null, %struct._GSList** %180, align 8, !dbg !1037
  %181 = load i32, i32* %19, align 4, !dbg !1038
  %182 = icmp sgt i32 %181, 0, !dbg !1040
  br i1 %182, label %183, label %195, !dbg !1041

; <label>:183:                                    ; preds = %175
  %184 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1042
  %185 = load %struct._GString*, %struct._GString** %10, align 8, !dbg !1044
  %186 = getelementptr inbounds %struct._GString, %struct._GString* %185, i32 0, i32 0, !dbg !1045
  %187 = load i8*, i8** %186, align 8, !dbg !1045
  %188 = getelementptr inbounds i8, i8* %187, i64 10, !dbg !1046
  %189 = getelementptr inbounds i8, i8* %188, i64 -1, !dbg !1047
  %190 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 2, %struct._IRC_SERVER_REC* %184, i8* %189), !dbg !1048
  %191 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1049
  %192 = load %struct._GString*, %struct._GString** %10, align 8, !dbg !1050
  %193 = getelementptr inbounds %struct._GString, %struct._GString* %192, i32 0, i32 0, !dbg !1051
  %194 = load i8*, i8** %193, align 8, !dbg !1051
  call void @irc_send_cmd_now(%struct._IRC_SERVER_REC* %191, i8* %194), !dbg !1052
  br label %197, !dbg !1053

; <label>:195:                                    ; preds = %175
  %196 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1054
  call void @cap_finish_negotiation(%struct._IRC_SERVER_REC* %196), !dbg !1056
  br label %197

; <label>:197:                                    ; preds = %195, %183
  %198 = load %struct._GString*, %struct._GString** %10, align 8, !dbg !1057
  %199 = call i8* @g_string_free(%struct._GString* %198, i32 1), !dbg !1058
  br label %200

; <label>:200:                                    ; preds = %197, %137
  br label %201, !dbg !1059

; <label>:201:                                    ; preds = %200, %129
  br label %378, !dbg !1060

; <label>:202:                                    ; preds = %64
  %203 = load i8*, i8** %12, align 8, !dbg !1061
  %204 = call i32 @g_ascii_strcasecmp(i8* %203, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0)), !dbg !1063
  %205 = icmp ne i32 %204, 0, !dbg !1063
  br i1 %205, label %274, label %206, !dbg !1064

; <label>:206:                                    ; preds = %202
  call void @llvm.dbg.declare(metadata i32* %23, metadata !1065, metadata !688), !dbg !1067
  store i32 0, i32* %23, align 4, !dbg !1067
  store i32 0, i32* %16, align 4, !dbg !1068
  br label %207, !dbg !1070

; <label>:207:                                    ; preds = %265, %206
  %208 = load i32, i32* %16, align 4, !dbg !1071
  %209 = load i32, i32* %17, align 4, !dbg !1074
  %210 = icmp slt i32 %208, %209, !dbg !1075
  br i1 %210, label %211, label %268, !dbg !1076

; <label>:211:                                    ; preds = %207
  %212 = load i32, i32* %16, align 4, !dbg !1077
  %213 = sext i32 %212 to i64, !dbg !1079
  %214 = load i8**, i8*** %15, align 8, !dbg !1079
  %215 = getelementptr inbounds i8*, i8** %214, i64 %213, !dbg !1079
  %216 = load i8*, i8** %215, align 8, !dbg !1079
  %217 = load i8, i8* %216, align 1, !dbg !1080
  %218 = sext i8 %217 to i32, !dbg !1080
  %219 = icmp eq i32 %218, 45, !dbg !1081
  %220 = zext i1 %219 to i32, !dbg !1081
  store i32 %220, i32* %18, align 4, !dbg !1082
  %221 = load i32, i32* %18, align 4, !dbg !1083
  %222 = icmp ne i32 %221, 0, !dbg !1083
  br i1 %222, label %223, label %236, !dbg !1085

; <label>:223:                                    ; preds = %211
  %224 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1086
  %225 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %224, i32 0, i32 51, !dbg !1087
  %226 = load %struct._GSList*, %struct._GSList** %225, align 8, !dbg !1087
  %227 = load i32, i32* %16, align 4, !dbg !1088
  %228 = sext i32 %227 to i64, !dbg !1089
  %229 = load i8**, i8*** %15, align 8, !dbg !1089
  %230 = getelementptr inbounds i8*, i8** %229, i64 %228, !dbg !1089
  %231 = load i8*, i8** %230, align 8, !dbg !1089
  %232 = getelementptr inbounds i8, i8* %231, i64 1, !dbg !1090
  %233 = call %struct._GSList* @gslist_delete_string(%struct._GSList* %226, i8* %232, void (i8*)* @g_free), !dbg !1091
  %234 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1092
  %235 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %234, i32 0, i32 51, !dbg !1093
  store %struct._GSList* %233, %struct._GSList** %235, align 8, !dbg !1094
  br label %249, !dbg !1092

; <label>:236:                                    ; preds = %211
  %237 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1095
  %238 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %237, i32 0, i32 51, !dbg !1096
  %239 = load %struct._GSList*, %struct._GSList** %238, align 8, !dbg !1096
  %240 = load i32, i32* %16, align 4, !dbg !1097
  %241 = sext i32 %240 to i64, !dbg !1098
  %242 = load i8**, i8*** %15, align 8, !dbg !1098
  %243 = getelementptr inbounds i8*, i8** %242, i64 %241, !dbg !1098
  %244 = load i8*, i8** %243, align 8, !dbg !1098
  %245 = call noalias i8* @g_strdup(i8* %244), !dbg !1099
  %246 = call %struct._GSList* @g_slist_prepend(%struct._GSList* %239, i8* %245), !dbg !1100
  %247 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1102
  %248 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %247, i32 0, i32 51, !dbg !1103
  store %struct._GSList* %246, %struct._GSList** %248, align 8, !dbg !1104
  br label %249

; <label>:249:                                    ; preds = %236, %223
  %250 = load i32, i32* %16, align 4, !dbg !1105
  %251 = sext i32 %250 to i64, !dbg !1107
  %252 = load i8**, i8*** %15, align 8, !dbg !1107
  %253 = getelementptr inbounds i8*, i8** %252, i64 %251, !dbg !1107
  %254 = load i8*, i8** %253, align 8, !dbg !1107
  %255 = call i32 @strcmp(i8* %254, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0)) #5, !dbg !1108
  %256 = icmp ne i32 %255, 0, !dbg !1108
  br i1 %256, label %258, label %257, !dbg !1109

; <label>:257:                                    ; preds = %249
  store i32 1, i32* %23, align 4, !dbg !1110
  br label %258, !dbg !1111

; <label>:258:                                    ; preds = %257, %249
  %259 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1112
  %260 = load i32, i32* %16, align 4, !dbg !1113
  %261 = sext i32 %260 to i64, !dbg !1114
  %262 = load i8**, i8*** %15, align 8, !dbg !1114
  %263 = getelementptr inbounds i8*, i8** %262, i64 %261, !dbg !1114
  %264 = load i8*, i8** %263, align 8, !dbg !1114
  call void @cap_emit_signal(%struct._IRC_SERVER_REC* %259, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i8* %264), !dbg !1115
  br label %265, !dbg !1116

; <label>:265:                                    ; preds = %258
  %266 = load i32, i32* %16, align 4, !dbg !1117
  %267 = add nsw i32 %266, 1, !dbg !1117
  store i32 %267, i32* %16, align 4, !dbg !1117
  br label %207, !dbg !1119, !llvm.loop !1120

; <label>:268:                                    ; preds = %207
  %269 = load i32, i32* %23, align 4, !dbg !1122
  %270 = icmp eq i32 %269, 0, !dbg !1124
  br i1 %270, label %271, label %273, !dbg !1125

; <label>:271:                                    ; preds = %268
  %272 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1126
  call void @cap_finish_negotiation(%struct._IRC_SERVER_REC* %272), !dbg !1127
  br label %273, !dbg !1127

; <label>:273:                                    ; preds = %271, %268
  br label %377, !dbg !1128

; <label>:274:                                    ; preds = %202
  %275 = load i8*, i8** %12, align 8, !dbg !1129
  %276 = call i32 @g_ascii_strcasecmp(i8* %275, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0)), !dbg !1131
  %277 = icmp ne i32 %276, 0, !dbg !1131
  br i1 %277, label %294, label %278, !dbg !1132

; <label>:278:                                    ; preds = %274
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.19, i32 0, i32 0)), !dbg !1133
  store i32 0, i32* %16, align 4, !dbg !1135
  br label %279, !dbg !1137

; <label>:279:                                    ; preds = %290, %278
  %280 = load i32, i32* %16, align 4, !dbg !1138
  %281 = load i32, i32* %17, align 4, !dbg !1141
  %282 = icmp slt i32 %280, %281, !dbg !1142
  br i1 %282, label %283, label %293, !dbg !1143

; <label>:283:                                    ; preds = %279
  %284 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1144
  %285 = load i32, i32* %16, align 4, !dbg !1145
  %286 = sext i32 %285 to i64, !dbg !1146
  %287 = load i8**, i8*** %15, align 8, !dbg !1146
  %288 = getelementptr inbounds i8*, i8** %287, i64 %286, !dbg !1146
  %289 = load i8*, i8** %288, align 8, !dbg !1146
  call void @cap_emit_signal(%struct._IRC_SERVER_REC* %284, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* %289), !dbg !1147
  br label %290, !dbg !1147

; <label>:290:                                    ; preds = %283
  %291 = load i32, i32* %16, align 4, !dbg !1148
  %292 = add nsw i32 %291, 1, !dbg !1148
  store i32 %292, i32* %16, align 4, !dbg !1148
  br label %279, !dbg !1150, !llvm.loop !1151

; <label>:293:                                    ; preds = %279
  br label %376, !dbg !1153

; <label>:294:                                    ; preds = %274
  %295 = load i8*, i8** %12, align 8, !dbg !1154
  %296 = call i32 @g_ascii_strcasecmp(i8* %295, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0)), !dbg !1156
  %297 = icmp ne i32 %296, 0, !dbg !1156
  br i1 %297, label %326, label %298, !dbg !1157

; <label>:298:                                    ; preds = %294
  store i32 0, i32* %16, align 4, !dbg !1158
  br label %299, !dbg !1161

; <label>:299:                                    ; preds = %322, %298
  %300 = load i32, i32* %16, align 4, !dbg !1162
  %301 = load i32, i32* %17, align 4, !dbg !1165
  %302 = icmp slt i32 %300, %301, !dbg !1166
  br i1 %302, label %303, label %325, !dbg !1167

; <label>:303:                                    ; preds = %299
  call void @llvm.dbg.declare(metadata i8** %24, metadata !1168, metadata !688), !dbg !1170
  call void @llvm.dbg.declare(metadata i8** %25, metadata !1171, metadata !688), !dbg !1172
  %304 = load i32, i32* %16, align 4, !dbg !1173
  %305 = sext i32 %304 to i64, !dbg !1175
  %306 = load i8**, i8*** %15, align 8, !dbg !1175
  %307 = getelementptr inbounds i8*, i8** %306, i64 %305, !dbg !1175
  %308 = load i8*, i8** %307, align 8, !dbg !1175
  %309 = call i32 @parse_cap_name(i8* %308, i8** %24, i8** %25), !dbg !1176
  %310 = icmp ne i32 %309, 0, !dbg !1176
  br i1 %310, label %313, label %311, !dbg !1177

; <label>:311:                                    ; preds = %303
  %312 = load i8*, i8** %12, align 8, !dbg !1178
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i32 0, i32 0), i8* %312), !dbg !1180
  br label %322, !dbg !1181

; <label>:313:                                    ; preds = %303
  %314 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1182
  %315 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %314, i32 0, i32 50, !dbg !1183
  %316 = load %struct._GHashTable*, %struct._GHashTable** %315, align 8, !dbg !1183
  %317 = load i8*, i8** %24, align 8, !dbg !1184
  %318 = load i8*, i8** %25, align 8, !dbg !1185
  %319 = call i32 @g_hash_table_insert(%struct._GHashTable* %316, i8* %317, i8* %318), !dbg !1186
  %320 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1187
  %321 = load i8*, i8** %24, align 8, !dbg !1188
  call void @cap_emit_signal(%struct._IRC_SERVER_REC* %320, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i8* %321), !dbg !1189
  br label %322, !dbg !1190

; <label>:322:                                    ; preds = %313, %311
  %323 = load i32, i32* %16, align 4, !dbg !1191
  %324 = add nsw i32 %323, 1, !dbg !1191
  store i32 %324, i32* %16, align 4, !dbg !1191
  br label %299, !dbg !1193, !llvm.loop !1194

; <label>:325:                                    ; preds = %299
  br label %375, !dbg !1196

; <label>:326:                                    ; preds = %294
  %327 = load i8*, i8** %12, align 8, !dbg !1197
  %328 = call i32 @g_ascii_strcasecmp(i8* %327, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0)), !dbg !1199
  %329 = icmp ne i32 %328, 0, !dbg !1199
  br i1 %329, label %366, label %330, !dbg !1200

; <label>:330:                                    ; preds = %326
  store i32 0, i32* %16, align 4, !dbg !1201
  br label %331, !dbg !1204

; <label>:331:                                    ; preds = %362, %330
  %332 = load i32, i32* %16, align 4, !dbg !1205
  %333 = load i32, i32* %17, align 4, !dbg !1208
  %334 = icmp slt i32 %332, %333, !dbg !1209
  br i1 %334, label %335, label %365, !dbg !1210

; <label>:335:                                    ; preds = %331
  call void @llvm.dbg.declare(metadata i8** %26, metadata !1211, metadata !688), !dbg !1213
  call void @llvm.dbg.declare(metadata i8** %27, metadata !1214, metadata !688), !dbg !1215
  %336 = load i32, i32* %16, align 4, !dbg !1216
  %337 = sext i32 %336 to i64, !dbg !1218
  %338 = load i8**, i8*** %15, align 8, !dbg !1218
  %339 = getelementptr inbounds i8*, i8** %338, i64 %337, !dbg !1218
  %340 = load i8*, i8** %339, align 8, !dbg !1218
  %341 = call i32 @parse_cap_name(i8* %340, i8** %26, i8** %27), !dbg !1219
  %342 = icmp ne i32 %341, 0, !dbg !1219
  br i1 %342, label %345, label %343, !dbg !1220

; <label>:343:                                    ; preds = %335
  %344 = load i8*, i8** %12, align 8, !dbg !1221
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i32 0, i32 0), i8* %344), !dbg !1223
  br label %362, !dbg !1224

; <label>:345:                                    ; preds = %335
  %346 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1225
  %347 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %346, i32 0, i32 50, !dbg !1226
  %348 = load %struct._GHashTable*, %struct._GHashTable** %347, align 8, !dbg !1226
  %349 = load i8*, i8** %26, align 8, !dbg !1227
  %350 = call i32 @g_hash_table_remove(%struct._GHashTable* %348, i8* %349), !dbg !1228
  %351 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1229
  %352 = load i8*, i8** %26, align 8, !dbg !1230
  call void @cap_emit_signal(%struct._IRC_SERVER_REC* %351, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), i8* %352), !dbg !1231
  %353 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1232
  %354 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %353, i32 0, i32 51, !dbg !1233
  %355 = load %struct._GSList*, %struct._GSList** %354, align 8, !dbg !1233
  %356 = load i8*, i8** %26, align 8, !dbg !1234
  %357 = call %struct._GSList* @gslist_delete_string(%struct._GSList* %355, i8* %356, void (i8*)* @g_free), !dbg !1235
  %358 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %5, align 8, !dbg !1236
  %359 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %358, i32 0, i32 51, !dbg !1237
  store %struct._GSList* %357, %struct._GSList** %359, align 8, !dbg !1238
  %360 = load i8*, i8** %26, align 8, !dbg !1239
  call void @g_free(i8* %360), !dbg !1240
  %361 = load i8*, i8** %27, align 8, !dbg !1241
  call void @g_free(i8* %361), !dbg !1242
  br label %362, !dbg !1243

; <label>:362:                                    ; preds = %345, %343
  %363 = load i32, i32* %16, align 4, !dbg !1244
  %364 = add nsw i32 %363, 1, !dbg !1244
  store i32 %364, i32* %16, align 4, !dbg !1244
  br label %331, !dbg !1246, !llvm.loop !1247

; <label>:365:                                    ; preds = %331
  br label %374, !dbg !1249

; <label>:366:                                    ; preds = %326
  %367 = load i8*, i8** %12, align 8, !dbg !1250
  %368 = call i32 @g_ascii_strcasecmp(i8* %367, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0)), !dbg !1252
  %369 = icmp ne i32 %368, 0, !dbg !1252
  br i1 %369, label %371, label %370, !dbg !1253

; <label>:370:                                    ; preds = %366
  br label %373, !dbg !1254

; <label>:371:                                    ; preds = %366
  %372 = load i8*, i8** %12, align 8, !dbg !1256
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.26, i32 0, i32 0), i8* %372), !dbg !1258
  br label %373

; <label>:373:                                    ; preds = %371, %370
  br label %374

; <label>:374:                                    ; preds = %373, %365
  br label %375

; <label>:375:                                    ; preds = %374, %325
  br label %376

; <label>:376:                                    ; preds = %375, %293
  br label %377

; <label>:377:                                    ; preds = %376, %273
  br label %378

; <label>:378:                                    ; preds = %377, %201
  %379 = load i8**, i8*** %15, align 8, !dbg !1259
  call void @g_strfreev(i8** %379), !dbg !1260
  %380 = load i8*, i8** %11, align 8, !dbg !1261
  call void @g_free(i8* %380), !dbg !1262
  br label %381, !dbg !1263

; <label>:381:                                    ; preds = %378, %53, %32
  ret void, !dbg !1264
}

; Function Attrs: nounwind uwtable
define internal void @event_invalid_cap(%struct._IRC_SERVER_REC*, i8*, i8*) #0 !dbg !1265 {
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !1268, metadata !688), !dbg !1269
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1270, metadata !688), !dbg !1271
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1272, metadata !688), !dbg !1273
  %7 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1274
  %8 = getelementptr inbounds %struct._IRC_SERVER_REC, %struct._IRC_SERVER_REC* %7, i32 0, i32 45, !dbg !1275
  %9 = load i16, i16* %8, align 4, !dbg !1276
  %10 = and i16 %9, -1025, !dbg !1276
  store i16 %10, i16* %8, align 4, !dbg !1276
  %11 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1277
  call void @irc_send_cmd_now(%struct._IRC_SERVER_REC* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0)), !dbg !1278
  ret void, !dbg !1279
}

; Function Attrs: nounwind uwtable
define void @cap_deinit() #0 !dbg !1280 {
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*, i8*)* @event_cap to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1281
  call void @signal_remove_full(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_SERVER_REC*, i8*, i8*)* @event_invalid_cap to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1282
  ret void, !dbg !1283
}

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare i8* @event_get_params(i8*, i32, ...) #2

declare i32 @g_ascii_strcasecmp(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare void @g_warn_message(i8*, i8*, i32, i8*, i8*) #2

declare %struct._GHashTable* @g_hash_table_new_full(i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, void (i8*)*) #2

declare i32 @g_str_hash(i8*) #2

declare i32 @g_str_equal(i8*, i8*) #2

declare noalias i8** @g_strsplit(i8*, i8*, i32) #2

declare i8* @g_strchomp(i8*) #2

declare i32 @g_strv_length(i8**) #2

declare void @g_hash_table_remove_all(%struct._GHashTable*) #2

; Function Attrs: nounwind uwtable
define internal i32 @parse_cap_name(i8*, i8**, i8**) #0 !dbg !1284 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1287, metadata !688), !dbg !1288
  store i8** %1, i8*** %6, align 8
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !1289, metadata !688), !dbg !1290
  store i8** %2, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !1291, metadata !688), !dbg !1292
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1293, metadata !688), !dbg !1294
  br label %9, !dbg !1295, !llvm.loop !1296

; <label>:9:                                      ; preds = %3
  %10 = load i8*, i8** %5, align 8, !dbg !1297
  %11 = icmp ne i8* %10, null, !dbg !1301
  br i1 %11, label %12, label %13, !dbg !1297

; <label>:12:                                     ; preds = %9
  br label %14, !dbg !1302

; <label>:13:                                     ; preds = %9
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.parse_cap_name, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0)), !dbg !1305
  store i32 0, i32* %4, align 4, !dbg !1308
  br label %49, !dbg !1308

; <label>:14:                                     ; preds = %12
  br label %15, !dbg !1309

; <label>:15:                                     ; preds = %14
  br label %16, !dbg !1311, !llvm.loop !1312

; <label>:16:                                     ; preds = %15
  %17 = load i8*, i8** %5, align 8, !dbg !1313
  %18 = getelementptr inbounds i8, i8* %17, i64 0, !dbg !1313
  %19 = load i8, i8* %18, align 1, !dbg !1313
  %20 = sext i8 %19 to i32, !dbg !1313
  %21 = icmp ne i32 %20, 0, !dbg !1317
  br i1 %21, label %22, label %23, !dbg !1313

; <label>:22:                                     ; preds = %16
  br label %24, !dbg !1318

; <label>:23:                                     ; preds = %16
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.parse_cap_name, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0)), !dbg !1321
  store i32 0, i32* %4, align 4, !dbg !1324
  br label %49, !dbg !1324

; <label>:24:                                     ; preds = %22
  br label %25, !dbg !1325

; <label>:25:                                     ; preds = %24
  %26 = load i8*, i8** %5, align 8, !dbg !1327
  %27 = call i8* @strchr(i8* %26, i32 61) #5, !dbg !1328
  store i8* %27, i8** %8, align 8, !dbg !1329
  %28 = load i8*, i8** %8, align 8, !dbg !1330
  %29 = icmp eq i8* %28, null, !dbg !1332
  br i1 %29, label %30, label %35, !dbg !1333

; <label>:30:                                     ; preds = %25
  %31 = load i8*, i8** %5, align 8, !dbg !1334
  %32 = call noalias i8* @g_strdup(i8* %31), !dbg !1336
  %33 = load i8**, i8*** %6, align 8, !dbg !1337
  store i8* %32, i8** %33, align 8, !dbg !1338
  %34 = load i8**, i8*** %7, align 8, !dbg !1339
  store i8* null, i8** %34, align 8, !dbg !1340
  br label %48, !dbg !1341

; <label>:35:                                     ; preds = %25
  %36 = load i8*, i8** %5, align 8, !dbg !1342
  %37 = load i8*, i8** %8, align 8, !dbg !1344
  %38 = load i8*, i8** %5, align 8, !dbg !1345
  %39 = ptrtoint i8* %37 to i64, !dbg !1346
  %40 = ptrtoint i8* %38 to i64, !dbg !1346
  %41 = sub i64 %39, %40, !dbg !1346
  %42 = call noalias i8* @g_strndup(i8* %36, i64 %41), !dbg !1347
  %43 = load i8**, i8*** %6, align 8, !dbg !1348
  store i8* %42, i8** %43, align 8, !dbg !1349
  %44 = load i8*, i8** %8, align 8, !dbg !1350
  %45 = getelementptr inbounds i8, i8* %44, i64 1, !dbg !1351
  %46 = call noalias i8* @g_strdup(i8* %45), !dbg !1352
  %47 = load i8**, i8*** %7, align 8, !dbg !1353
  store i8* %46, i8** %47, align 8, !dbg !1354
  br label %48

; <label>:48:                                     ; preds = %35, %30
  store i32 1, i32* %4, align 4, !dbg !1355
  br label %49, !dbg !1355

; <label>:49:                                     ; preds = %48, %23, %13
  %50 = load i32, i32* %4, align 4, !dbg !1356
  ret i32 %50, !dbg !1356
}

declare void @g_log(i8*, i32, i8*, ...) #2

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #2

declare %struct._GString* @g_string_new(i8*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._GString* @g_string_append_c_inline(%struct._GString*, i8 signext) #4 !dbg !1357 {
  %3 = alloca %struct._GString*, align 8
  %4 = alloca i8, align 1
  store %struct._GString* %0, %struct._GString** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._GString** %3, metadata !1360, metadata !688), !dbg !1361
  store i8 %1, i8* %4, align 1
  call void @llvm.dbg.declare(metadata i8* %4, metadata !1362, metadata !688), !dbg !1363
  %5 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1364
  %6 = getelementptr inbounds %struct._GString, %struct._GString* %5, i32 0, i32 1, !dbg !1366
  %7 = load i64, i64* %6, align 8, !dbg !1366
  %8 = add i64 %7, 1, !dbg !1367
  %9 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1368
  %10 = getelementptr inbounds %struct._GString, %struct._GString* %9, i32 0, i32 2, !dbg !1369
  %11 = load i64, i64* %10, align 8, !dbg !1369
  %12 = icmp ult i64 %8, %11, !dbg !1370
  br i1 %12, label %13, label %30, !dbg !1371

; <label>:13:                                     ; preds = %2
  %14 = load i8, i8* %4, align 1, !dbg !1372
  %15 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1374
  %16 = getelementptr inbounds %struct._GString, %struct._GString* %15, i32 0, i32 1, !dbg !1375
  %17 = load i64, i64* %16, align 8, !dbg !1376
  %18 = add i64 %17, 1, !dbg !1376
  store i64 %18, i64* %16, align 8, !dbg !1376
  %19 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1377
  %20 = getelementptr inbounds %struct._GString, %struct._GString* %19, i32 0, i32 0, !dbg !1378
  %21 = load i8*, i8** %20, align 8, !dbg !1378
  %22 = getelementptr inbounds i8, i8* %21, i64 %17, !dbg !1377
  store i8 %14, i8* %22, align 1, !dbg !1379
  %23 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1380
  %24 = getelementptr inbounds %struct._GString, %struct._GString* %23, i32 0, i32 1, !dbg !1381
  %25 = load i64, i64* %24, align 8, !dbg !1381
  %26 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1382
  %27 = getelementptr inbounds %struct._GString, %struct._GString* %26, i32 0, i32 0, !dbg !1383
  %28 = load i8*, i8** %27, align 8, !dbg !1383
  %29 = getelementptr inbounds i8, i8* %28, i64 %25, !dbg !1382
  store i8 0, i8* %29, align 1, !dbg !1384
  br label %34, !dbg !1385

; <label>:30:                                     ; preds = %2
  %31 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1386
  %32 = load i8, i8* %4, align 1, !dbg !1387
  %33 = call %struct._GString* @g_string_insert_c(%struct._GString* %31, i64 -1, i8 signext %32), !dbg !1388
  br label %34

; <label>:34:                                     ; preds = %30, %13
  %35 = load %struct._GString*, %struct._GString** %3, align 8, !dbg !1389
  ret %struct._GString* %35, !dbg !1390
}

declare %struct._GString* @g_string_append(%struct._GString*, i8*) #2

declare void @gslist_free_full(%struct._GSList*, void (i8*)*) #2

declare i8* @g_string_free(%struct._GString*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @cap_emit_signal(%struct._IRC_SERVER_REC*, i8*, i8*) #0 !dbg !1391 {
  %4 = alloca %struct._IRC_SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct._IRC_SERVER_REC* %0, %struct._IRC_SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_SERVER_REC** %4, metadata !1394, metadata !688), !dbg !1395
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1396, metadata !688), !dbg !1397
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1398, metadata !688), !dbg !1399
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1400, metadata !688), !dbg !1401
  %8 = load i8*, i8** %5, align 8, !dbg !1402
  %9 = load i8*, i8** %6, align 8, !dbg !1403
  %10 = icmp ne i8* %9, null, !dbg !1403
  br i1 %10, label %11, label %13, !dbg !1403

; <label>:11:                                     ; preds = %3
  %12 = load i8*, i8** %6, align 8, !dbg !1404
  br label %14, !dbg !1406

; <label>:13:                                     ; preds = %3
  br label %14, !dbg !1407

; <label>:14:                                     ; preds = %13, %11
  %15 = phi i8* [ %12, %11 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.30, i32 0, i32 0), %13 ], !dbg !1409
  %16 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i32 0, i32 0), i8* %8, i8* %15), !dbg !1411
  store i8* %16, i8** %7, align 8, !dbg !1412
  %17 = load i8*, i8** %7, align 8, !dbg !1413
  %18 = load %struct._IRC_SERVER_REC*, %struct._IRC_SERVER_REC** %4, align 8, !dbg !1414
  %19 = call i32 (i8*, i32, ...) @signal_emit(i8* %17, i32 1, %struct._IRC_SERVER_REC* %18), !dbg !1415
  %20 = load i8*, i8** %7, align 8, !dbg !1416
  call void @g_free(i8* %20), !dbg !1417
  ret void, !dbg !1418
}

declare i32 @g_hash_table_remove(%struct._GHashTable*, i8*) #2

declare void @g_strfreev(i8**) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

declare noalias i8* @g_strndup(i8*, i64) #2

declare %struct._GString* @g_string_insert_c(%struct._GString*, i64, i8 signext) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!70, !71}
!llvm.ident = !{!72}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !47)
!1 = !DIFile(filename: "line143-irc-cap.o.i", directory: "/home/lichi/Desktop/irssi/task1")
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
!47 = !{!48, !49, !56, !60, !62, !67}
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !50, line: 9, baseType: !51)
!50 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DISubroutineType(types: !53)
!53 = !{null, !54, !54, !54, !54, !54, !54}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !58, line: 46, baseType: !59)
!58 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!59 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "GDestroyNotify", file: !58, line: 87, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !66}
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !58, line: 77, baseType: !48)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !68, line: 66, baseType: !69)
!68 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!69 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!70 = !{i32 2, !"Dwarf Version", i32 4}
!71 = !{i32 2, !"Debug Info Version", i32 3}
!72 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!73 = distinct !DISubprogram(name: "cap_toggle", scope: !74, file: !74, line: 27, type: !75, isLocal: false, isDefinition: true, scopeLine: 28, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !686)
!74 = !DIFile(filename: "irc-cap.c", directory: "/home/lichi/Desktop/irssi/task1")
!75 = !DISubroutineType(types: !76)
!76 = !{!77, !78, !98, !77}
!77 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_REC", file: !80, line: 6, baseType: !81)
!80 = !DIFile(filename: "irc.h", directory: "/home/lichi/Desktop/irssi/task1")
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_REC", file: !82, line: 42, size: 39168, align: 64, elements: !83)
!82 = !DIFile(filename: "irc-servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!83 = !{!84, !86, !87, !88, !324, !329, !330, !331, !332, !333, !334, !335, !336, !337, !341, !342, !346, !347, !348, !352, !357, !358, !359, !360, !361, !362, !363, !364, !371, !372, !373, !374, !375, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !683, !685}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !81, file: !85, line: 3, baseType: !77, size: 32, align: 32)
!85 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!86 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !81, file: !85, line: 4, baseType: !77, size: 32, align: 32, offset: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !81, file: !85, line: 6, baseType: !77, size: 32, align: 32, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !81, file: !85, line: 8, baseType: !89, size: 64, align: 64, offset: 128)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_SERVER_CONNECT_REC", file: !80, line: 5, baseType: !91)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_SERVER_CONNECT_REC", file: !82, line: 24, size: 2496, align: 64, elements: !92)
!92 = !{!93, !95, !96, !97, !99, !100, !101, !102, !103, !105, !106, !107, !108, !109, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !91, file: !94, line: 3, baseType: !77, size: 32, align: 32)
!94 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!95 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !91, file: !94, line: 4, baseType: !77, size: 32, align: 32, offset: 32)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !91, file: !94, line: 6, baseType: !77, size: 32, align: 32, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !91, file: !94, line: 9, baseType: !98, size: 64, align: 64, offset: 128)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !91, file: !94, line: 10, baseType: !77, size: 32, align: 32, offset: 192)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !91, file: !94, line: 11, baseType: !98, size: 64, align: 64, offset: 256)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !91, file: !94, line: 11, baseType: !98, size: 64, align: 64, offset: 320)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !91, file: !94, line: 11, baseType: !98, size: 64, align: 64, offset: 384)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !91, file: !94, line: 13, baseType: !104, size: 16, align: 16, offset: 448)
!104 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !91, file: !94, line: 14, baseType: !98, size: 64, align: 64, offset: 512)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !91, file: !94, line: 15, baseType: !98, size: 64, align: 64, offset: 576)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !91, file: !94, line: 16, baseType: !77, size: 32, align: 32, offset: 640)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !91, file: !94, line: 17, baseType: !98, size: 64, align: 64, offset: 704)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !91, file: !94, line: 19, baseType: !110, size: 64, align: 64, offset: 768)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64, align: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !112, line: 99, baseType: !113)
!112 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!113 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !112, line: 99, flags: DIFlagFwdDecl)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !91, file: !94, line: 19, baseType: !110, size: 64, align: 64, offset: 832)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !91, file: !94, line: 21, baseType: !98, size: 64, align: 64, offset: 896)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !91, file: !94, line: 22, baseType: !98, size: 64, align: 64, offset: 960)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !91, file: !94, line: 23, baseType: !98, size: 64, align: 64, offset: 1024)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !91, file: !94, line: 24, baseType: !98, size: 64, align: 64, offset: 1088)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !91, file: !94, line: 26, baseType: !98, size: 64, align: 64, offset: 1152)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !91, file: !94, line: 27, baseType: !98, size: 64, align: 64, offset: 1216)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !91, file: !94, line: 28, baseType: !98, size: 64, align: 64, offset: 1280)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !91, file: !94, line: 29, baseType: !98, size: 64, align: 64, offset: 1344)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !91, file: !94, line: 30, baseType: !98, size: 64, align: 64, offset: 1408)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !91, file: !94, line: 31, baseType: !98, size: 64, align: 64, offset: 1472)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !91, file: !94, line: 32, baseType: !98, size: 64, align: 64, offset: 1536)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !91, file: !94, line: 33, baseType: !98, size: 64, align: 64, offset: 1600)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !91, file: !94, line: 35, baseType: !128, size: 64, align: 64, offset: 1664)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64, align: 64)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !130)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !131)
!131 = !{!132, !134, !269, !270, !275, !276, !277, !278, !279, !288, !289, !290, !294, !295, !296, !297, !298, !299, !300, !301}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !130, file: !4, line: 100, baseType: !133, size: 32, align: 32)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !58, line: 49, baseType: !77)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !130, file: !4, line: 101, baseType: !135, size: 64, align: 64, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64, align: 64)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !137)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !138)
!138 = !{!139, !158, !164, !171, !175, !256, !260, !265}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !137, file: !4, line: 133, baseType: !140, size: 64, align: 64)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64, align: 64)
!141 = !DISubroutineType(types: !142)
!142 = !{!143, !128, !56, !67, !144, !145}
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64, align: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64, align: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !148, line: 42, baseType: !149)
!148 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !148, line: 44, size: 128, align: 64, elements: !150)
!150 = !{!151, !156, !157}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !149, file: !148, line: 46, baseType: !152, size: 32, align: 32)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !153, line: 36, baseType: !154)
!153 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !68, line: 45, baseType: !155)
!155 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !149, file: !148, line: 47, baseType: !133, size: 32, align: 32, offset: 32)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !149, file: !148, line: 48, baseType: !56, size: 64, align: 64, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !137, file: !4, line: 138, baseType: !159, size: 64, align: 64, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64, align: 64)
!160 = !DISubroutineType(types: !161)
!161 = !{!143, !128, !162, !67, !144, !145}
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64, align: 64)
!163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !137, file: !4, line: 143, baseType: !165, size: 64, align: 64, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64, align: 64)
!166 = !DISubroutineType(types: !167)
!167 = !{!143, !128, !168, !170, !145}
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !68, line: 51, baseType: !169)
!169 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !137, file: !4, line: 147, baseType: !172, size: 64, align: 64, offset: 192)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64, align: 64)
!173 = !DISubroutineType(types: !174)
!174 = !{!143, !128, !145}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !137, file: !4, line: 149, baseType: !176, size: 64, align: 64, offset: 256)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64, align: 64)
!177 = !DISubroutineType(types: !178)
!178 = !{!179, !128, !255}
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64, align: 64)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !181)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !182)
!182 = !{!183, !184, !202, !231, !233, !237, !238, !239, !240, !248, !249, !250, !251}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !181, file: !16, line: 174, baseType: !66, size: 64, align: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !181, file: !16, line: 175, baseType: !185, size: 64, align: 64, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64, align: 64)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !187)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !188)
!188 = !{!189, !190, !191}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !187, file: !16, line: 198, baseType: !63, size: 64, align: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !187, file: !16, line: 199, baseType: !63, size: 64, align: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !187, file: !16, line: 200, baseType: !192, size: 64, align: 64, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64, align: 64)
!193 = !DISubroutineType(types: !194)
!194 = !{null, !66, !179, !195, !201}
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64, align: 64)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64, align: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!200, !66}
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !58, line: 50, baseType: !133)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !181, file: !16, line: 177, baseType: !203, size: 64, align: 64, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64, align: 64)
!204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !206)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !207)
!207 = !{!208, !213, !217, !221, !225, !226}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !206, file: !16, line: 216, baseType: !209, size: 64, align: 64)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64, align: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{!200, !179, !212}
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64, align: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !206, file: !16, line: 218, baseType: !214, size: 64, align: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64, align: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{!200, !179}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !206, file: !16, line: 219, baseType: !218, size: 64, align: 64, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64, align: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{!200, !179, !196, !66}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !206, file: !16, line: 222, baseType: !222, size: 64, align: 64, offset: 192)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64, align: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{null, !179}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !206, file: !16, line: 226, baseType: !196, size: 64, align: 64, offset: 256)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !206, file: !16, line: 227, baseType: !227, size: 64, align: 64, offset: 320)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64, align: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{null}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !181, file: !16, line: 178, baseType: !232, size: 32, align: 32, offset: 192)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !58, line: 55, baseType: !155)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !181, file: !16, line: 180, baseType: !234, size: 64, align: 64, offset: 256)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64, align: 64)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !236)
!236 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !181, file: !16, line: 182, baseType: !133, size: 32, align: 32, offset: 320)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !181, file: !16, line: 183, baseType: !232, size: 32, align: 32, offset: 352)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !181, file: !16, line: 184, baseType: !232, size: 32, align: 32, offset: 384)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !181, file: !16, line: 186, baseType: !241, size: 64, align: 64, offset: 448)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64, align: 64)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !243, line: 37, baseType: !244)
!243 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !243, line: 39, size: 128, align: 64, elements: !245)
!245 = !{!246, !247}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !244, file: !243, line: 41, baseType: !66, size: 64, align: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !244, file: !243, line: 42, baseType: !241, size: 64, align: 64, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !181, file: !16, line: 188, baseType: !179, size: 64, align: 64, offset: 512)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !181, file: !16, line: 189, baseType: !179, size: 64, align: 64, offset: 576)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !181, file: !16, line: 191, baseType: !98, size: 64, align: 64, offset: 640)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !181, file: !16, line: 193, baseType: !252, size: 64, align: 64, offset: 704)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64, align: 64)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !254)
!254 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !137, file: !4, line: 151, baseType: !257, size: 64, align: 64, offset: 320)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64, align: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{null, !128}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !137, file: !4, line: 152, baseType: !261, size: 64, align: 64, offset: 384)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64, align: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{!143, !128, !264, !145}
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !137, file: !4, line: 155, baseType: !266, size: 64, align: 64, offset: 448)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64, align: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{!264, !128}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !130, file: !4, line: 103, baseType: !56, size: 64, align: 64, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !130, file: !4, line: 104, baseType: !271, size: 64, align: 64, offset: 192)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !272, line: 77, baseType: !273)
!272 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64, align: 64)
!274 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !272, line: 77, flags: DIFlagFwdDecl)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !130, file: !4, line: 105, baseType: !271, size: 64, align: 64, offset: 256)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !130, file: !4, line: 106, baseType: !56, size: 64, align: 64, offset: 320)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !130, file: !4, line: 107, baseType: !232, size: 32, align: 32, offset: 384)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !130, file: !4, line: 109, baseType: !67, size: 64, align: 64, offset: 448)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !130, file: !4, line: 110, baseType: !280, size: 64, align: 64, offset: 512)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64, align: 64)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !282, line: 39, baseType: !283)
!282 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !282, line: 41, size: 192, align: 64, elements: !284)
!284 = !{!285, !286, !287}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !283, file: !282, line: 43, baseType: !56, size: 64, align: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !283, file: !282, line: 44, baseType: !67, size: 64, align: 64, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !283, file: !282, line: 45, baseType: !67, size: 64, align: 64, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !130, file: !4, line: 111, baseType: !280, size: 64, align: 64, offset: 576)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !130, file: !4, line: 112, baseType: !280, size: 64, align: 64, offset: 640)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !130, file: !4, line: 113, baseType: !291, size: 48, align: 8, offset: 704)
!291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 48, align: 8, elements: !292)
!292 = !{!293}
!293 = !DISubrange(count: 6)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !130, file: !4, line: 117, baseType: !232, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !130, file: !4, line: 118, baseType: !232, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !130, file: !4, line: 119, baseType: !232, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !130, file: !4, line: 120, baseType: !232, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !130, file: !4, line: 121, baseType: !232, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !130, file: !4, line: 122, baseType: !232, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !130, file: !4, line: 124, baseType: !66, size: 64, align: 64, offset: 768)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !130, file: !4, line: 125, baseType: !66, size: 64, align: 64, offset: 832)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !91, file: !94, line: 38, baseType: !155, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !91, file: !94, line: 39, baseType: !155, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !91, file: !94, line: 40, baseType: !155, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !91, file: !94, line: 41, baseType: !155, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !91, file: !94, line: 42, baseType: !155, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !91, file: !94, line: 43, baseType: !155, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !91, file: !94, line: 44, baseType: !155, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !91, file: !94, line: 45, baseType: !155, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !91, file: !94, line: 46, baseType: !98, size: 64, align: 64, offset: 1792)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !91, file: !94, line: 47, baseType: !98, size: 64, align: 64, offset: 1856)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !91, file: !82, line: 27, baseType: !98, size: 64, align: 64, offset: 1920)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_nick", scope: !91, file: !82, line: 28, baseType: !98, size: 64, align: 64, offset: 1984)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !91, file: !82, line: 30, baseType: !77, size: 32, align: 32, offset: 2048)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_username", scope: !91, file: !82, line: 31, baseType: !98, size: 64, align: 64, offset: 2112)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !91, file: !82, line: 32, baseType: !98, size: 64, align: 64, offset: 2176)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !91, file: !82, line: 34, baseType: !77, size: 32, align: 32, offset: 2240)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !91, file: !82, line: 35, baseType: !77, size: 32, align: 32, offset: 2272)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !91, file: !82, line: 36, baseType: !77, size: 32, align: 32, offset: 2304)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks", scope: !91, file: !82, line: 38, baseType: !77, size: 32, align: 32, offset: 2336)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !91, file: !82, line: 38, baseType: !77, size: 32, align: 32, offset: 2368)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes", scope: !91, file: !82, line: 38, baseType: !77, size: 32, align: 32, offset: 2400)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois", scope: !91, file: !82, line: 38, baseType: !77, size: 32, align: 32, offset: 2432)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !81, file: !85, line: 9, baseType: !325, size: 64, align: 64, offset: 192)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !326, line: 75, baseType: !327)
!326 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !328, line: 139, baseType: !169)
!328 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!329 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !81, file: !85, line: 10, baseType: !325, size: 64, align: 64, offset: 256)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !81, file: !85, line: 12, baseType: !98, size: 64, align: 64, offset: 320)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !81, file: !85, line: 13, baseType: !98, size: 64, align: 64, offset: 384)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !81, file: !85, line: 15, baseType: !155, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !81, file: !85, line: 16, baseType: !155, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !81, file: !85, line: 17, baseType: !155, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !81, file: !85, line: 18, baseType: !155, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !81, file: !85, line: 19, baseType: !155, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !81, file: !85, line: 21, baseType: !338, size: 64, align: 64, offset: 512)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64, align: 64)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !112, line: 102, baseType: !340)
!340 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !112, line: 102, flags: DIFlagFwdDecl)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !81, file: !85, line: 22, baseType: !77, size: 32, align: 32, offset: 576)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !81, file: !85, line: 25, baseType: !343, size: 128, align: 64, offset: 640)
!343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 128, align: 64, elements: !344)
!344 = !{!345}
!345 = !DISubrange(count: 2)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !81, file: !85, line: 26, baseType: !77, size: 32, align: 32, offset: 768)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !81, file: !85, line: 27, baseType: !77, size: 32, align: 32, offset: 800)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !81, file: !85, line: 29, baseType: !349, size: 64, align: 64, offset: 832)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64, align: 64)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !112, line: 103, baseType: !351)
!351 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !112, line: 103, flags: DIFlagFwdDecl)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !81, file: !85, line: 30, baseType: !353, size: 64, align: 64, offset: 896)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64, align: 64)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !355, line: 37, baseType: !356)
!355 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!356 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !355, line: 37, flags: DIFlagFwdDecl)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !81, file: !85, line: 32, baseType: !98, size: 64, align: 64, offset: 960)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !81, file: !85, line: 33, baseType: !98, size: 64, align: 64, offset: 1024)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !81, file: !85, line: 34, baseType: !98, size: 64, align: 64, offset: 1088)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !81, file: !85, line: 35, baseType: !155, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !81, file: !85, line: 36, baseType: !155, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !81, file: !85, line: 37, baseType: !155, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !81, file: !85, line: 38, baseType: !155, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !81, file: !85, line: 40, baseType: !365, size: 128, align: 64, offset: 1216)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !58, line: 504, baseType: !366)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !58, line: 506, size: 128, align: 64, elements: !367)
!367 = !{!368, !370}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !366, file: !58, line: 508, baseType: !369, size: 64, align: 64)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !58, line: 48, baseType: !169)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !366, file: !58, line: 509, baseType: !369, size: 64, align: 64, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !81, file: !85, line: 41, baseType: !325, size: 64, align: 64, offset: 1344)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !81, file: !85, line: 42, baseType: !77, size: 32, align: 32, offset: 1408)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !81, file: !85, line: 44, baseType: !241, size: 64, align: 64, offset: 1472)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !81, file: !85, line: 45, baseType: !241, size: 64, align: 64, offset: 1536)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !81, file: !85, line: 53, baseType: !376, size: 64, align: 64, offset: 1600)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64, align: 64)
!377 = !DISubroutineType(types: !378)
!378 = !{null, !379, !60, !77}
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64, align: 64)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !112, line: 107, baseType: !381)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !382, line: 30, size: 2240, align: 64, elements: !383)
!382 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!383 = !{!384, !385, !386, !387, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !463, !467, !471, !475, !480, !559, !566, !570}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !381, file: !85, line: 3, baseType: !77, size: 32, align: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !381, file: !85, line: 4, baseType: !77, size: 32, align: 32, offset: 32)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !381, file: !85, line: 6, baseType: !77, size: 32, align: 32, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !381, file: !85, line: 8, baseType: !388, size: 64, align: 64, offset: 128)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64, align: 64)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !112, line: 113, baseType: !390)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !382, line: 25, size: 1920, align: 64, elements: !391)
!391 = !{!392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !390, file: !94, line: 3, baseType: !77, size: 32, align: 32)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !390, file: !94, line: 4, baseType: !77, size: 32, align: 32, offset: 32)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !390, file: !94, line: 6, baseType: !77, size: 32, align: 32, offset: 64)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !390, file: !94, line: 9, baseType: !98, size: 64, align: 64, offset: 128)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !390, file: !94, line: 10, baseType: !77, size: 32, align: 32, offset: 192)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !390, file: !94, line: 11, baseType: !98, size: 64, align: 64, offset: 256)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !390, file: !94, line: 11, baseType: !98, size: 64, align: 64, offset: 320)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !390, file: !94, line: 11, baseType: !98, size: 64, align: 64, offset: 384)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !390, file: !94, line: 13, baseType: !104, size: 16, align: 16, offset: 448)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !390, file: !94, line: 14, baseType: !98, size: 64, align: 64, offset: 512)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !390, file: !94, line: 15, baseType: !98, size: 64, align: 64, offset: 576)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !390, file: !94, line: 16, baseType: !77, size: 32, align: 32, offset: 640)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !390, file: !94, line: 17, baseType: !98, size: 64, align: 64, offset: 704)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !390, file: !94, line: 19, baseType: !110, size: 64, align: 64, offset: 768)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !390, file: !94, line: 19, baseType: !110, size: 64, align: 64, offset: 832)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !390, file: !94, line: 21, baseType: !98, size: 64, align: 64, offset: 896)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !390, file: !94, line: 22, baseType: !98, size: 64, align: 64, offset: 960)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !390, file: !94, line: 23, baseType: !98, size: 64, align: 64, offset: 1024)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !390, file: !94, line: 24, baseType: !98, size: 64, align: 64, offset: 1088)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !390, file: !94, line: 26, baseType: !98, size: 64, align: 64, offset: 1152)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !390, file: !94, line: 27, baseType: !98, size: 64, align: 64, offset: 1216)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !390, file: !94, line: 28, baseType: !98, size: 64, align: 64, offset: 1280)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !390, file: !94, line: 29, baseType: !98, size: 64, align: 64, offset: 1344)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !390, file: !94, line: 30, baseType: !98, size: 64, align: 64, offset: 1408)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !390, file: !94, line: 31, baseType: !98, size: 64, align: 64, offset: 1472)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !390, file: !94, line: 32, baseType: !98, size: 64, align: 64, offset: 1536)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !390, file: !94, line: 33, baseType: !98, size: 64, align: 64, offset: 1600)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !390, file: !94, line: 35, baseType: !128, size: 64, align: 64, offset: 1664)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !390, file: !94, line: 38, baseType: !155, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !390, file: !94, line: 39, baseType: !155, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !390, file: !94, line: 40, baseType: !155, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !390, file: !94, line: 41, baseType: !155, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !390, file: !94, line: 42, baseType: !155, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !390, file: !94, line: 43, baseType: !155, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !390, file: !94, line: 44, baseType: !155, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !390, file: !94, line: 45, baseType: !155, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !390, file: !94, line: 46, baseType: !98, size: 64, align: 64, offset: 1792)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !390, file: !94, line: 47, baseType: !98, size: 64, align: 64, offset: 1856)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !381, file: !85, line: 9, baseType: !325, size: 64, align: 64, offset: 192)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !381, file: !85, line: 10, baseType: !325, size: 64, align: 64, offset: 256)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !381, file: !85, line: 12, baseType: !98, size: 64, align: 64, offset: 320)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !381, file: !85, line: 13, baseType: !98, size: 64, align: 64, offset: 384)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !381, file: !85, line: 15, baseType: !155, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !381, file: !85, line: 16, baseType: !155, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !381, file: !85, line: 17, baseType: !155, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !381, file: !85, line: 18, baseType: !155, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !381, file: !85, line: 19, baseType: !155, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !381, file: !85, line: 21, baseType: !338, size: 64, align: 64, offset: 512)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !381, file: !85, line: 22, baseType: !77, size: 32, align: 32, offset: 576)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !381, file: !85, line: 25, baseType: !343, size: 128, align: 64, offset: 640)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !381, file: !85, line: 26, baseType: !77, size: 32, align: 32, offset: 768)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !381, file: !85, line: 27, baseType: !77, size: 32, align: 32, offset: 800)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !381, file: !85, line: 29, baseType: !349, size: 64, align: 64, offset: 832)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !381, file: !85, line: 30, baseType: !353, size: 64, align: 64, offset: 896)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !381, file: !85, line: 32, baseType: !98, size: 64, align: 64, offset: 960)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !381, file: !85, line: 33, baseType: !98, size: 64, align: 64, offset: 1024)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !381, file: !85, line: 34, baseType: !98, size: 64, align: 64, offset: 1088)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !381, file: !85, line: 35, baseType: !155, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !381, file: !85, line: 36, baseType: !155, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !381, file: !85, line: 37, baseType: !155, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !381, file: !85, line: 38, baseType: !155, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !381, file: !85, line: 40, baseType: !365, size: 128, align: 64, offset: 1216)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !381, file: !85, line: 41, baseType: !325, size: 64, align: 64, offset: 1344)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !381, file: !85, line: 42, baseType: !77, size: 32, align: 32, offset: 1408)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !381, file: !85, line: 44, baseType: !241, size: 64, align: 64, offset: 1472)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !381, file: !85, line: 45, baseType: !241, size: 64, align: 64, offset: 1536)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !381, file: !85, line: 53, baseType: !376, size: 64, align: 64, offset: 1600)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !381, file: !85, line: 55, baseType: !460, size: 64, align: 64, offset: 1664)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64, align: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{!77, !379, !59}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !381, file: !85, line: 57, baseType: !464, size: 64, align: 64, offset: 1728)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64, align: 64)
!465 = !DISubroutineType(types: !466)
!466 = !{!77, !379, !60}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !381, file: !85, line: 60, baseType: !468, size: 64, align: 64, offset: 1792)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64, align: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{!60, !379}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !381, file: !85, line: 62, baseType: !472, size: 64, align: 64, offset: 1856)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64, align: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{null, !379, !60, !60, !77}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !381, file: !85, line: 65, baseType: !476, size: 64, align: 64, offset: 1920)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64, align: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{!479, !379, !60, !60}
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64, align: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !381, file: !85, line: 69, baseType: !481, size: 64, align: 64, offset: 1984)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64, align: 64)
!482 = !DISubroutineType(types: !483)
!483 = !{!484, !379, !60}
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64, align: 64)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !112, line: 109, baseType: !486)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !487, line: 15, size: 1408, align: 64, elements: !488)
!487 = !DIFile(filename: "../../../src/core/channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!488 = !{!489, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !507, !511, !513, !514, !515, !516, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !486, file: !490, line: 3, baseType: !77, size: 32, align: 32)
!490 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!491 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !486, file: !490, line: 4, baseType: !77, size: 32, align: 32, offset: 32)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !486, file: !490, line: 5, baseType: !353, size: 64, align: 64, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !486, file: !490, line: 7, baseType: !48, size: 64, align: 64, offset: 128)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !486, file: !490, line: 8, baseType: !379, size: 64, align: 64, offset: 192)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !486, file: !490, line: 9, baseType: !98, size: 64, align: 64, offset: 256)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !486, file: !490, line: 10, baseType: !98, size: 64, align: 64, offset: 320)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !486, file: !490, line: 11, baseType: !325, size: 64, align: 64, offset: 384)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !486, file: !490, line: 12, baseType: !77, size: 32, align: 32, offset: 448)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !486, file: !490, line: 13, baseType: !98, size: 64, align: 64, offset: 512)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !486, file: !490, line: 15, baseType: !501, size: 64, align: 64, offset: 576)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64, align: 64)
!502 = !DISubroutineType(types: !503)
!503 = !{null, !504}
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64, align: 64)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !112, line: 108, baseType: !506)
!506 = !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !112, line: 108, flags: DIFlagFwdDecl)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !486, file: !490, line: 17, baseType: !508, size: 64, align: 64, offset: 640)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64, align: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!60, !504}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !486, file: !512, line: 5, baseType: !98, size: 64, align: 64, offset: 704)
!512 = !DIFile(filename: "../../../src/core/channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!513 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !486, file: !512, line: 6, baseType: !98, size: 64, align: 64, offset: 768)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !486, file: !512, line: 7, baseType: !325, size: 64, align: 64, offset: 832)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !486, file: !512, line: 9, baseType: !353, size: 64, align: 64, offset: 896)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !486, file: !512, line: 10, baseType: !517, size: 64, align: 64, offset: 960)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64, align: 64)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !112, line: 111, baseType: !519)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !520, line: 13, size: 576, align: 64, elements: !521)
!520 = !DIFile(filename: "../../../src/core/nicklist.h", directory: "/home/lichi/Desktop/irssi/task1")
!521 = !{!522, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !540, !541}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !519, file: !523, line: 3, baseType: !77, size: 32, align: 32)
!523 = !DIFile(filename: "../../../src/core/nick-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!524 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !519, file: !523, line: 4, baseType: !77, size: 32, align: 32, offset: 32)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "last_check", scope: !519, file: !523, line: 6, baseType: !325, size: 64, align: 64, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !519, file: !523, line: 8, baseType: !98, size: 64, align: 64, offset: 128)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !519, file: !523, line: 9, baseType: !98, size: 64, align: 64, offset: 192)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !519, file: !523, line: 10, baseType: !98, size: 64, align: 64, offset: 256)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "hops", scope: !519, file: !523, line: 11, baseType: !77, size: 32, align: 32, offset: 320)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "gone", scope: !519, file: !523, line: 14, baseType: !155, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "serverop", scope: !519, file: !523, line: 15, baseType: !155, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "send_massjoin", scope: !519, file: !523, line: 18, baseType: !155, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !519, file: !523, line: 19, baseType: !155, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !519, file: !523, line: 20, baseType: !155, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !519, file: !523, line: 21, baseType: !155, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !519, file: !523, line: 22, baseType: !537, size: 64, align: 8, offset: 360)
!537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 64, align: 8, elements: !538)
!538 = !{!539}
!539 = !DISubrange(count: 8)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !519, file: !523, line: 26, baseType: !48, size: 64, align: 64, offset: 448)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !519, file: !523, line: 28, baseType: !517, size: 64, align: 64, offset: 512)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !486, file: !512, line: 12, baseType: !155, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !486, file: !512, line: 13, baseType: !98, size: 64, align: 64, offset: 1088)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !486, file: !512, line: 14, baseType: !77, size: 32, align: 32, offset: 1152)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !486, file: !512, line: 15, baseType: !98, size: 64, align: 64, offset: 1216)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !486, file: !512, line: 17, baseType: !155, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !486, file: !512, line: 18, baseType: !155, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !486, file: !512, line: 19, baseType: !155, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !486, file: !512, line: 20, baseType: !155, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !486, file: !512, line: 22, baseType: !155, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !486, file: !512, line: 23, baseType: !155, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !486, file: !512, line: 24, baseType: !155, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !486, file: !512, line: 25, baseType: !155, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !486, file: !512, line: 26, baseType: !155, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !486, file: !512, line: 31, baseType: !556, size: 64, align: 64, offset: 1344)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64, align: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{!98, !484}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !381, file: !85, line: 70, baseType: !560, size: 64, align: 64, offset: 2048)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64, align: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{!563, !379, !60}
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64, align: 64)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !112, line: 110, baseType: !565)
!565 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !112, line: 110, flags: DIFlagFwdDecl)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !381, file: !85, line: 71, baseType: !567, size: 64, align: 64, offset: 2112)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64, align: 64)
!568 = !DISubroutineType(types: !569)
!569 = !{!77, !60, !60}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !381, file: !85, line: 73, baseType: !567, size: 64, align: 64, offset: 2176)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !81, file: !85, line: 55, baseType: !460, size: 64, align: 64, offset: 1664)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !81, file: !85, line: 57, baseType: !464, size: 64, align: 64, offset: 1728)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !81, file: !85, line: 60, baseType: !468, size: 64, align: 64, offset: 1792)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !81, file: !85, line: 62, baseType: !472, size: 64, align: 64, offset: 1856)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !81, file: !85, line: 65, baseType: !476, size: 64, align: 64, offset: 1920)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !81, file: !85, line: 69, baseType: !481, size: 64, align: 64, offset: 1984)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !81, file: !85, line: 70, baseType: !560, size: 64, align: 64, offset: 2048)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !81, file: !85, line: 71, baseType: !567, size: 64, align: 64, offset: 2112)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !81, file: !85, line: 73, baseType: !567, size: 64, align: 64, offset: 2176)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "redirects", scope: !81, file: !82, line: 46, baseType: !241, size: 64, align: 64, offset: 2240)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_queue", scope: !81, file: !82, line: 47, baseType: !241, size: 64, align: 64, offset: 2304)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_next", scope: !81, file: !82, line: 48, baseType: !583, size: 64, align: 64, offset: 2368)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64, align: 64)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "REDIRECT_REC", file: !80, line: 8, baseType: !585)
!585 = !DICompositeType(tag: DW_TAG_structure_type, name: "_REDIRECT_REC", file: !80, line: 8, flags: DIFlagFwdDecl)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_active", scope: !81, file: !82, line: 49, baseType: !241, size: 64, align: 64, offset: 2432)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "last_nick", scope: !81, file: !82, line: 51, baseType: !98, size: 64, align: 64, offset: 2496)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !81, file: !82, line: 53, baseType: !98, size: 64, align: 64, offset: 2560)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !81, file: !82, line: 54, baseType: !98, size: 64, align: 64, offset: 2624)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "wanted_usermode", scope: !81, file: !82, line: 55, baseType: !98, size: 64, align: 64, offset: 2688)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "userhost", scope: !81, file: !82, line: 56, baseType: !98, size: 64, align: 64, offset: 2752)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "channels_formed", scope: !81, file: !82, line: 57, baseType: !77, size: 32, align: 32, offset: 2816)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "whois_found", scope: !81, file: !82, line: 59, baseType: !155, size: 1, align: 32, offset: 2848, flags: DIFlagBitField, extraData: i64 2848)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "whowas_found", scope: !81, file: !82, line: 60, baseType: !155, size: 1, align: 32, offset: 2849, flags: DIFlagBitField, extraData: i64 2848)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "emode_known", scope: !81, file: !82, line: 62, baseType: !155, size: 1, align: 32, offset: 2850, flags: DIFlagBitField, extraData: i64 2848)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_mode", scope: !81, file: !82, line: 63, baseType: !155, size: 1, align: 32, offset: 2851, flags: DIFlagBitField, extraData: i64 2848)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "no_multi_who", scope: !81, file: !82, line: 64, baseType: !155, size: 1, align: 32, offset: 2852, flags: DIFlagBitField, extraData: i64 2848)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "one_endofwho", scope: !81, file: !82, line: 65, baseType: !155, size: 1, align: 32, offset: 2853, flags: DIFlagBitField, extraData: i64 2848)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "disable_lag", scope: !81, file: !82, line: 66, baseType: !155, size: 1, align: 32, offset: 2854, flags: DIFlagBitField, extraData: i64 2848)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "nick_collision", scope: !81, file: !82, line: 67, baseType: !155, size: 1, align: 32, offset: 2855, flags: DIFlagBitField, extraData: i64 2848)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "motd_got", scope: !81, file: !82, line: 68, baseType: !155, size: 1, align: 32, offset: 2856, flags: DIFlagBitField, extraData: i64 2848)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "isupport_sent", scope: !81, file: !82, line: 69, baseType: !155, size: 1, align: 32, offset: 2857, flags: DIFlagBitField, extraData: i64 2848)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "cap_complete", scope: !81, file: !82, line: 70, baseType: !155, size: 1, align: 32, offset: 2858, flags: DIFlagBitField, extraData: i64 2848)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "cap_in_multiline", scope: !81, file: !82, line: 71, baseType: !155, size: 1, align: 32, offset: 2859, flags: DIFlagBitField, extraData: i64 2848)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_success", scope: !81, file: !82, line: 72, baseType: !155, size: 1, align: 32, offset: 2860, flags: DIFlagBitField, extraData: i64 2848)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks_in_cmd", scope: !81, file: !82, line: 74, baseType: !77, size: 32, align: 32, offset: 2880)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes_in_cmd", scope: !81, file: !82, line: 75, baseType: !77, size: 32, align: 32, offset: 2912)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois_in_cmd", scope: !81, file: !82, line: 76, baseType: !77, size: 32, align: 32, offset: 2944)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs_in_cmd", scope: !81, file: !82, line: 77, baseType: !77, size: 32, align: 32, offset: 2976)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "cap_supported", scope: !81, file: !82, line: 79, baseType: !353, size: 64, align: 64, offset: 3008)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "cap_active", scope: !81, file: !82, line: 80, baseType: !241, size: 64, align: 64, offset: 3072)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "cap_queue", scope: !81, file: !82, line: 81, baseType: !241, size: 64, align: 64, offset: 3136)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_buffer", scope: !81, file: !82, line: 83, baseType: !280, size: 64, align: 64, offset: 3200)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_timeout", scope: !81, file: !82, line: 84, baseType: !232, size: 32, align: 32, offset: 3264)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "cmdcount", scope: !81, file: !82, line: 87, baseType: !77, size: 32, align: 32, offset: 3296)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "cmdqueue", scope: !81, file: !82, line: 91, baseType: !241, size: 64, align: 64, offset: 3328)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "wait_cmd", scope: !81, file: !82, line: 92, baseType: !365, size: 128, align: 64, offset: 3392)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "last_cmd", scope: !81, file: !82, line: 93, baseType: !365, size: 128, align: 64, offset: 3520)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !81, file: !82, line: 95, baseType: !77, size: 32, align: 32, offset: 3648)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !81, file: !82, line: 96, baseType: !77, size: 32, align: 32, offset: 3680)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !81, file: !82, line: 97, baseType: !77, size: 32, align: 32, offset: 3712)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "idles", scope: !81, file: !82, line: 100, baseType: !241, size: 64, align: 64, offset: 3776)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "ctcpqueue", scope: !81, file: !82, line: 103, baseType: !241, size: 64, align: 64, offset: 3840)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "knockoutlist", scope: !81, file: !82, line: 106, baseType: !241, size: 64, align: 64, offset: 3904)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "splits", scope: !81, file: !82, line: 108, baseType: !353, size: 64, align: 64, offset: 3968)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "split_servers", scope: !81, file: !82, line: 109, baseType: !241, size: 64, align: 64, offset: 4032)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "rejoin_channels", scope: !81, file: !82, line: 111, baseType: !241, size: 64, align: 64, offset: 4096)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "chanqueries", scope: !81, file: !82, line: 114, baseType: !48, size: 64, align: 64, offset: 4160)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "isupport", scope: !81, file: !82, line: 116, baseType: !353, size: 64, align: 64, offset: 4224)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !81, file: !82, line: 117, baseType: !631, size: 32768, align: 64, offset: 4288)
!631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !632, size: 32768, align: 64, elements: !681)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "modes_type", file: !633, line: 10, size: 128, align: 64, elements: !634)
!633 = !DIFile(filename: "modes.h", directory: "/home/lichi/Desktop/irssi/task1")
!634 = !{!635, !680}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !632, file: !633, line: 11, baseType: !636, size: 64, align: 64)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64, align: 64)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_func_t", file: !633, line: 7, baseType: !638)
!638 = !DISubroutineType(types: !639)
!639 = !{null, !640, !60, !59, !59, !98, !280}
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64, align: 64)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_CHANNEL_REC", file: !80, line: 7, baseType: !642)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_CHANNEL_REC", file: !643, line: 15, size: 1600, align: 64, elements: !644)
!643 = !DIFile(filename: "irc-channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!644 = !{!645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !642, file: !490, line: 3, baseType: !77, size: 32, align: 32)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !642, file: !490, line: 4, baseType: !77, size: 32, align: 32, offset: 32)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !642, file: !490, line: 5, baseType: !353, size: 64, align: 64, offset: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !642, file: !490, line: 7, baseType: !48, size: 64, align: 64, offset: 128)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !642, file: !490, line: 8, baseType: !78, size: 64, align: 64, offset: 192)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !642, file: !490, line: 9, baseType: !98, size: 64, align: 64, offset: 256)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !642, file: !490, line: 10, baseType: !98, size: 64, align: 64, offset: 320)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !642, file: !490, line: 11, baseType: !325, size: 64, align: 64, offset: 384)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !642, file: !490, line: 12, baseType: !77, size: 32, align: 32, offset: 448)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !642, file: !490, line: 13, baseType: !98, size: 64, align: 64, offset: 512)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !642, file: !490, line: 15, baseType: !501, size: 64, align: 64, offset: 576)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !642, file: !490, line: 17, baseType: !508, size: 64, align: 64, offset: 640)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !642, file: !512, line: 5, baseType: !98, size: 64, align: 64, offset: 704)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !642, file: !512, line: 6, baseType: !98, size: 64, align: 64, offset: 768)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !642, file: !512, line: 7, baseType: !325, size: 64, align: 64, offset: 832)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !642, file: !512, line: 9, baseType: !353, size: 64, align: 64, offset: 896)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !642, file: !512, line: 10, baseType: !517, size: 64, align: 64, offset: 960)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !642, file: !512, line: 12, baseType: !155, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !642, file: !512, line: 13, baseType: !98, size: 64, align: 64, offset: 1088)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !642, file: !512, line: 14, baseType: !77, size: 32, align: 32, offset: 1152)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !642, file: !512, line: 15, baseType: !98, size: 64, align: 64, offset: 1216)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !642, file: !512, line: 17, baseType: !155, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !642, file: !512, line: 18, baseType: !155, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !642, file: !512, line: 19, baseType: !155, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !642, file: !512, line: 20, baseType: !155, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !642, file: !512, line: 22, baseType: !155, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !642, file: !512, line: 23, baseType: !155, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !642, file: !512, line: 24, baseType: !155, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !642, file: !512, line: 25, baseType: !155, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !642, file: !512, line: 26, baseType: !155, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !642, file: !512, line: 31, baseType: !556, size: 64, align: 64, offset: 1344)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "banlist", scope: !642, file: !643, line: 18, baseType: !241, size: 64, align: 64, offset: 1408)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "massjoin_start", scope: !642, file: !643, line: 20, baseType: !325, size: 64, align: 64, offset: 1472)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "massjoins", scope: !642, file: !643, line: 21, baseType: !77, size: 32, align: 32, offset: 1536)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "last_massjoins", scope: !642, file: !643, line: 22, baseType: !77, size: 32, align: 32, offset: 1568)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !632, file: !633, line: 12, baseType: !59, size: 8, align: 8, offset: 64)
!681 = !{!682}
!682 = !DISubrange(count: 256)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !81, file: !82, line: 118, baseType: !684, size: 2048, align: 8, offset: 37056)
!684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 2048, align: 8, elements: !681)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "nick_comp_func", scope: !81, file: !82, line: 120, baseType: !567, size: 64, align: 64, offset: 39104)
!686 = !{}
!687 = !DILocalVariable(name: "server", arg: 1, scope: !73, file: !74, line: 27, type: !78)
!688 = !DIExpression()
!689 = !DILocation(line: 27, column: 33, scope: !73)
!690 = !DILocalVariable(name: "cap", arg: 2, scope: !73, file: !74, line: 27, type: !98)
!691 = !DILocation(line: 27, column: 47, scope: !73)
!692 = !DILocalVariable(name: "enable", arg: 3, scope: !73, file: !74, line: 27, type: !77)
!693 = !DILocation(line: 27, column: 56, scope: !73)
!694 = !DILocation(line: 29, column: 6, scope: !695)
!695 = distinct !DILexicalBlock(scope: !73, file: !74, line: 29, column: 6)
!696 = !DILocation(line: 29, column: 10, scope: !695)
!697 = !DILocation(line: 29, column: 17, scope: !695)
!698 = !DILocation(line: 29, column: 21, scope: !699)
!699 = !DILexicalBlockFile(scope: !695, file: !74, discriminator: 1)
!700 = !DILocation(line: 29, column: 20, scope: !699)
!701 = !DILocation(line: 29, column: 25, scope: !699)
!702 = !DILocation(line: 29, column: 6, scope: !699)
!703 = !DILocation(line: 30, column: 3, scope: !695)
!704 = !DILocation(line: 33, column: 7, scope: !705)
!705 = distinct !DILexicalBlock(scope: !73, file: !74, line: 33, column: 6)
!706 = !DILocation(line: 33, column: 15, scope: !705)
!707 = !DILocation(line: 33, column: 6, scope: !73)
!708 = !DILocation(line: 34, column: 7, scope: !709)
!709 = distinct !DILexicalBlock(scope: !710, file: !74, line: 34, column: 7)
!710 = distinct !DILexicalBlock(scope: !705, file: !74, line: 33, column: 29)
!711 = !DILocation(line: 34, column: 14, scope: !709)
!712 = !DILocation(line: 34, column: 37, scope: !713)
!713 = !DILexicalBlockFile(scope: !709, file: !74, discriminator: 1)
!714 = !DILocation(line: 34, column: 45, scope: !713)
!715 = !DILocation(line: 34, column: 56, scope: !713)
!716 = !DILocation(line: 34, column: 18, scope: !713)
!717 = !DILocation(line: 34, column: 7, scope: !713)
!718 = !DILocation(line: 35, column: 40, scope: !719)
!719 = distinct !DILexicalBlock(scope: !709, file: !74, line: 34, column: 62)
!720 = !DILocation(line: 35, column: 48, scope: !719)
!721 = !DILocation(line: 35, column: 68, scope: !719)
!722 = !DILocation(line: 35, column: 59, scope: !719)
!723 = !DILocation(line: 35, column: 24, scope: !724)
!724 = !DILexicalBlockFile(scope: !719, file: !74, discriminator: 1)
!725 = !DILocation(line: 35, column: 4, scope: !719)
!726 = !DILocation(line: 35, column: 12, scope: !719)
!727 = !DILocation(line: 35, column: 22, scope: !719)
!728 = !DILocation(line: 36, column: 4, scope: !719)
!729 = !DILocation(line: 38, column: 13, scope: !730)
!730 = distinct !DILexicalBlock(scope: !709, file: !74, line: 38, column: 12)
!731 = !DILocation(line: 38, column: 20, scope: !730)
!732 = !DILocation(line: 38, column: 42, scope: !733)
!733 = !DILexicalBlockFile(scope: !730, file: !74, discriminator: 1)
!734 = !DILocation(line: 38, column: 50, scope: !733)
!735 = !DILocation(line: 38, column: 61, scope: !733)
!736 = !DILocation(line: 38, column: 23, scope: !733)
!737 = !DILocation(line: 38, column: 12, scope: !733)
!738 = !DILocation(line: 39, column: 45, scope: !739)
!739 = distinct !DILexicalBlock(scope: !730, file: !74, line: 38, column: 67)
!740 = !DILocation(line: 39, column: 53, scope: !739)
!741 = !DILocation(line: 39, column: 64, scope: !739)
!742 = !DILocation(line: 39, column: 24, scope: !739)
!743 = !DILocation(line: 39, column: 4, scope: !739)
!744 = !DILocation(line: 39, column: 12, scope: !739)
!745 = !DILocation(line: 39, column: 22, scope: !739)
!746 = !DILocation(line: 40, column: 4, scope: !739)
!747 = !DILocation(line: 43, column: 3, scope: !710)
!748 = !DILocation(line: 46, column: 6, scope: !749)
!749 = distinct !DILexicalBlock(scope: !73, file: !74, line: 46, column: 6)
!750 = !DILocation(line: 46, column: 13, scope: !749)
!751 = !DILocation(line: 46, column: 36, scope: !752)
!752 = !DILexicalBlockFile(scope: !749, file: !74, discriminator: 1)
!753 = !DILocation(line: 46, column: 44, scope: !752)
!754 = !DILocation(line: 46, column: 56, scope: !752)
!755 = !DILocation(line: 46, column: 17, scope: !752)
!756 = !DILocation(line: 46, column: 6, scope: !752)
!757 = !DILocation(line: 48, column: 37, scope: !758)
!758 = distinct !DILexicalBlock(scope: !759, file: !74, line: 48, column: 7)
!759 = distinct !DILexicalBlock(scope: !749, file: !74, line: 46, column: 62)
!760 = !DILocation(line: 48, column: 45, scope: !758)
!761 = !DILocation(line: 48, column: 60, scope: !758)
!762 = !DILocation(line: 48, column: 8, scope: !758)
!763 = !DILocation(line: 48, column: 7, scope: !759)
!764 = !DILocation(line: 49, column: 4, scope: !758)
!765 = !DILocation(line: 51, column: 36, scope: !759)
!766 = !DILocation(line: 51, column: 44, scope: !759)
!767 = !DILocation(line: 51, column: 3, scope: !759)
!768 = !DILocation(line: 52, column: 17, scope: !759)
!769 = !DILocation(line: 52, column: 39, scope: !759)
!770 = !DILocation(line: 52, column: 3, scope: !759)
!771 = !DILocation(line: 53, column: 3, scope: !759)
!772 = !DILocation(line: 55, column: 12, scope: !773)
!773 = distinct !DILexicalBlock(scope: !749, file: !74, line: 55, column: 11)
!774 = !DILocation(line: 55, column: 19, scope: !773)
!775 = !DILocation(line: 55, column: 41, scope: !776)
!776 = !DILexicalBlockFile(scope: !773, file: !74, discriminator: 1)
!777 = !DILocation(line: 55, column: 49, scope: !776)
!778 = !DILocation(line: 55, column: 61, scope: !776)
!779 = !DILocation(line: 55, column: 22, scope: !776)
!780 = !DILocation(line: 55, column: 11, scope: !776)
!781 = !DILocalVariable(name: "negcap", scope: !782, file: !74, line: 56, type: !98)
!782 = distinct !DILexicalBlock(scope: !773, file: !74, line: 55, column: 67)
!783 = !DILocation(line: 56, column: 9, scope: !782)
!784 = !DILocation(line: 56, column: 41, scope: !782)
!785 = !DILocation(line: 56, column: 18, scope: !782)
!786 = !DILocation(line: 58, column: 36, scope: !782)
!787 = !DILocation(line: 58, column: 44, scope: !782)
!788 = !DILocation(line: 58, column: 3, scope: !782)
!789 = !DILocation(line: 59, column: 17, scope: !782)
!790 = !DILocation(line: 59, column: 39, scope: !782)
!791 = !DILocation(line: 59, column: 3, scope: !782)
!792 = !DILocation(line: 61, column: 10, scope: !782)
!793 = !DILocation(line: 61, column: 3, scope: !782)
!794 = !DILocation(line: 62, column: 3, scope: !782)
!795 = !DILocation(line: 65, column: 2, scope: !73)
!796 = !DILocation(line: 66, column: 1, scope: !73)
!797 = distinct !DISubprogram(name: "cap_finish_negotiation", scope: !74, file: !74, line: 68, type: !798, isLocal: false, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !686)
!798 = !DISubroutineType(types: !799)
!799 = !{null, !78}
!800 = !DILocalVariable(name: "server", arg: 1, scope: !797, file: !74, line: 68, type: !78)
!801 = !DILocation(line: 68, column: 46, scope: !797)
!802 = !DILocation(line: 70, column: 6, scope: !803)
!803 = distinct !DILexicalBlock(scope: !797, file: !74, line: 70, column: 6)
!804 = !DILocation(line: 70, column: 14, scope: !803)
!805 = !DILocation(line: 70, column: 6, scope: !797)
!806 = !DILocation(line: 71, column: 3, scope: !803)
!807 = !DILocation(line: 73, column: 2, scope: !797)
!808 = !DILocation(line: 73, column: 10, scope: !797)
!809 = !DILocation(line: 73, column: 23, scope: !797)
!810 = !DILocation(line: 74, column: 19, scope: !797)
!811 = !DILocation(line: 74, column: 2, scope: !797)
!812 = !DILocation(line: 76, column: 35, scope: !797)
!813 = !DILocation(line: 76, column: 2, scope: !797)
!814 = !DILocation(line: 77, column: 1, scope: !797)
!815 = !DILocation(line: 77, column: 1, scope: !816)
!816 = !DILexicalBlockFile(scope: !797, file: !74, discriminator: 1)
!817 = distinct !DISubprogram(name: "cap_init", scope: !74, file: !74, line: 299, type: !229, isLocal: false, isDefinition: true, scopeLine: 300, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !686)
!818 = !DILocation(line: 301, column: 2, scope: !817)
!819 = !DILocation(line: 302, column: 2, scope: !817)
!820 = !DILocation(line: 303, column: 1, scope: !817)
!821 = distinct !DISubprogram(name: "event_cap", scope: !74, file: !74, line: 109, type: !822, isLocal: true, isDefinition: true, scopeLine: 110, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !686)
!822 = !DISubroutineType(types: !823)
!823 = !{null, !78, !98, !98, !98}
!824 = !DILocalVariable(name: "server", arg: 1, scope: !821, file: !74, line: 109, type: !78)
!825 = !DILocation(line: 109, column: 40, scope: !821)
!826 = !DILocalVariable(name: "args", arg: 2, scope: !821, file: !74, line: 109, type: !98)
!827 = !DILocation(line: 109, column: 54, scope: !821)
!828 = !DILocalVariable(name: "nick", arg: 3, scope: !821, file: !74, line: 109, type: !98)
!829 = !DILocation(line: 109, column: 66, scope: !821)
!830 = !DILocalVariable(name: "address", arg: 4, scope: !821, file: !74, line: 109, type: !98)
!831 = !DILocation(line: 109, column: 78, scope: !821)
!832 = !DILocalVariable(name: "tmp", scope: !821, file: !74, line: 111, type: !241)
!833 = !DILocation(line: 111, column: 10, scope: !821)
!834 = !DILocalVariable(name: "cmd", scope: !821, file: !74, line: 112, type: !280)
!835 = !DILocation(line: 112, column: 11, scope: !821)
!836 = !DILocalVariable(name: "params", scope: !821, file: !74, line: 113, type: !98)
!837 = !DILocation(line: 113, column: 8, scope: !821)
!838 = !DILocalVariable(name: "evt", scope: !821, file: !74, line: 113, type: !98)
!839 = !DILocation(line: 113, column: 17, scope: !821)
!840 = !DILocalVariable(name: "list", scope: !821, file: !74, line: 113, type: !98)
!841 = !DILocation(line: 113, column: 23, scope: !821)
!842 = !DILocalVariable(name: "star", scope: !821, file: !74, line: 113, type: !98)
!843 = !DILocation(line: 113, column: 30, scope: !821)
!844 = !DILocalVariable(name: "caps", scope: !821, file: !74, line: 113, type: !479)
!845 = !DILocation(line: 113, column: 38, scope: !821)
!846 = !DILocalVariable(name: "i", scope: !821, file: !74, line: 114, type: !77)
!847 = !DILocation(line: 114, column: 6, scope: !821)
!848 = !DILocalVariable(name: "caps_length", scope: !821, file: !74, line: 114, type: !77)
!849 = !DILocation(line: 114, column: 9, scope: !821)
!850 = !DILocalVariable(name: "disable", scope: !821, file: !74, line: 114, type: !77)
!851 = !DILocation(line: 114, column: 22, scope: !821)
!852 = !DILocalVariable(name: "avail_caps", scope: !821, file: !74, line: 114, type: !77)
!853 = !DILocation(line: 114, column: 31, scope: !821)
!854 = !DILocalVariable(name: "multiline", scope: !821, file: !74, line: 114, type: !77)
!855 = !DILocation(line: 114, column: 43, scope: !821)
!856 = !DILocation(line: 116, column: 28, scope: !821)
!857 = !DILocation(line: 116, column: 11, scope: !821)
!858 = !DILocation(line: 116, column: 9, scope: !821)
!859 = !DILocation(line: 117, column: 6, scope: !860)
!860 = distinct !DILexicalBlock(scope: !821, file: !74, line: 117, column: 6)
!861 = !DILocation(line: 117, column: 13, scope: !860)
!862 = !DILocation(line: 117, column: 6, scope: !821)
!863 = !DILocation(line: 118, column: 3, scope: !860)
!864 = !DILocation(line: 122, column: 26, scope: !865)
!865 = distinct !DILexicalBlock(scope: !821, file: !74, line: 122, column: 6)
!866 = !DILocation(line: 122, column: 7, scope: !865)
!867 = !DILocation(line: 122, column: 37, scope: !865)
!868 = !DILocation(line: 122, column: 48, scope: !869)
!869 = !DILexicalBlockFile(scope: !865, file: !74, discriminator: 1)
!870 = !DILocation(line: 122, column: 41, scope: !869)
!871 = !DILocation(line: 122, column: 6, scope: !869)
!872 = !DILocation(line: 123, column: 13, scope: !873)
!873 = distinct !DILexicalBlock(scope: !865, file: !74, line: 122, column: 60)
!874 = !DILocation(line: 124, column: 2, scope: !873)
!875 = !DILocation(line: 127, column: 11, scope: !876)
!876 = distinct !DILexicalBlock(scope: !865, file: !74, line: 127, column: 11)
!877 = !DILocation(line: 127, column: 19, scope: !876)
!878 = !DILocation(line: 127, column: 11, scope: !865)
!879 = !DILocation(line: 128, column: 13, scope: !880)
!880 = distinct !DILexicalBlock(scope: !876, file: !74, line: 127, column: 28)
!881 = !DILocation(line: 129, column: 10, scope: !880)
!882 = !DILocation(line: 129, column: 8, scope: !880)
!883 = !DILocation(line: 130, column: 2, scope: !880)
!884 = !DILocation(line: 133, column: 26, scope: !885)
!885 = distinct !DILexicalBlock(scope: !876, file: !74, line: 132, column: 7)
!886 = !DILocation(line: 133, column: 3, scope: !885)
!887 = !DILocation(line: 134, column: 3, scope: !885)
!888 = distinct !{!888, !887}
!889 = !DILocation(line: 134, column: 8, scope: !890)
!890 = !DILexicalBlockFile(scope: !891, file: !74, discriminator: 1)
!891 = distinct !DILexicalBlock(scope: !885, file: !74, line: 134, column: 6)
!892 = !DILocation(line: 134, column: 5, scope: !890)
!893 = !DILocation(line: 135, column: 3, scope: !885)
!894 = !DILocation(line: 139, column: 6, scope: !895)
!895 = distinct !DILexicalBlock(scope: !821, file: !74, line: 139, column: 6)
!896 = !DILocation(line: 139, column: 14, scope: !895)
!897 = !DILocation(line: 139, column: 28, scope: !895)
!898 = !DILocation(line: 139, column: 6, scope: !821)
!899 = !DILocation(line: 140, column: 27, scope: !900)
!900 = distinct !DILexicalBlock(scope: !895, file: !74, line: 139, column: 36)
!901 = !DILocation(line: 140, column: 3, scope: !900)
!902 = !DILocation(line: 140, column: 11, scope: !900)
!903 = !DILocation(line: 140, column: 25, scope: !900)
!904 = !DILocation(line: 143, column: 2, scope: !900)
!905 = !DILocation(line: 147, column: 31, scope: !821)
!906 = !DILocation(line: 147, column: 20, scope: !821)
!907 = !DILocation(line: 147, column: 9, scope: !908)
!908 = !DILexicalBlockFile(scope: !821, file: !74, discriminator: 1)
!909 = !DILocation(line: 147, column: 7, scope: !821)
!910 = !DILocation(line: 148, column: 30, scope: !821)
!911 = !DILocation(line: 148, column: 16, scope: !821)
!912 = !DILocation(line: 148, column: 14, scope: !821)
!913 = !DILocation(line: 150, column: 26, scope: !914)
!914 = distinct !DILexicalBlock(scope: !821, file: !74, line: 150, column: 6)
!915 = !DILocation(line: 150, column: 7, scope: !914)
!916 = !DILocation(line: 150, column: 6, scope: !821)
!917 = !DILocation(line: 151, column: 8, scope: !918)
!918 = distinct !DILexicalBlock(scope: !919, file: !74, line: 151, column: 7)
!919 = distinct !DILexicalBlock(scope: !914, file: !74, line: 150, column: 38)
!920 = !DILocation(line: 151, column: 16, scope: !918)
!921 = !DILocation(line: 151, column: 7, scope: !919)
!922 = !DILocation(line: 153, column: 28, scope: !923)
!923 = distinct !DILexicalBlock(scope: !918, file: !74, line: 151, column: 34)
!924 = !DILocation(line: 153, column: 36, scope: !923)
!925 = !DILocation(line: 153, column: 4, scope: !923)
!926 = !DILocation(line: 154, column: 3, scope: !923)
!927 = !DILocation(line: 156, column: 30, scope: !919)
!928 = !DILocation(line: 156, column: 3, scope: !919)
!929 = !DILocation(line: 156, column: 11, scope: !919)
!930 = !DILocation(line: 156, column: 28, scope: !919)
!931 = !DILocation(line: 159, column: 10, scope: !932)
!932 = distinct !DILexicalBlock(scope: !919, file: !74, line: 159, column: 3)
!933 = !DILocation(line: 159, column: 8, scope: !932)
!934 = !DILocation(line: 159, column: 15, scope: !935)
!935 = !DILexicalBlockFile(scope: !936, file: !74, discriminator: 1)
!936 = distinct !DILexicalBlock(scope: !932, file: !74, line: 159, column: 3)
!937 = !DILocation(line: 159, column: 19, scope: !935)
!938 = !DILocation(line: 159, column: 17, scope: !935)
!939 = !DILocation(line: 159, column: 3, scope: !935)
!940 = !DILocalVariable(name: "key", scope: !941, file: !74, line: 160, type: !98)
!941 = distinct !DILexicalBlock(scope: !936, file: !74, line: 159, column: 37)
!942 = !DILocation(line: 160, column: 10, scope: !941)
!943 = !DILocalVariable(name: "val", scope: !941, file: !74, line: 160, type: !98)
!944 = !DILocation(line: 160, column: 16, scope: !941)
!945 = !DILocation(line: 162, column: 29, scope: !946)
!946 = distinct !DILexicalBlock(scope: !941, file: !74, line: 162, column: 8)
!947 = !DILocation(line: 162, column: 24, scope: !946)
!948 = !DILocation(line: 162, column: 9, scope: !946)
!949 = !DILocation(line: 162, column: 8, scope: !941)
!950 = !DILocation(line: 163, column: 80, scope: !951)
!951 = distinct !DILexicalBlock(scope: !946, file: !74, line: 162, column: 46)
!952 = !DILocation(line: 163, column: 5, scope: !951)
!953 = !DILocation(line: 164, column: 5, scope: !951)
!954 = !DILocation(line: 167, column: 37, scope: !955)
!955 = distinct !DILexicalBlock(scope: !941, file: !74, line: 167, column: 8)
!956 = !DILocation(line: 167, column: 45, scope: !955)
!957 = !DILocation(line: 167, column: 60, scope: !955)
!958 = !DILocation(line: 167, column: 8, scope: !955)
!959 = !DILocation(line: 167, column: 8, scope: !941)
!960 = !DILocation(line: 170, column: 90, scope: !961)
!961 = distinct !DILexicalBlock(scope: !955, file: !74, line: 167, column: 77)
!962 = !DILocation(line: 170, column: 5, scope: !961)
!963 = !DILocation(line: 171, column: 4, scope: !961)
!964 = !DILocation(line: 172, column: 24, scope: !941)
!965 = !DILocation(line: 172, column: 32, scope: !941)
!966 = !DILocation(line: 172, column: 47, scope: !941)
!967 = !DILocation(line: 172, column: 52, scope: !941)
!968 = !DILocation(line: 172, column: 4, scope: !941)
!969 = !DILocation(line: 173, column: 3, scope: !941)
!970 = !DILocation(line: 159, column: 33, scope: !971)
!971 = !DILexicalBlockFile(scope: !936, file: !74, discriminator: 2)
!972 = !DILocation(line: 159, column: 3, scope: !971)
!973 = distinct !{!973, !974}
!974 = !DILocation(line: 159, column: 3, scope: !919)
!975 = !DILocation(line: 177, column: 7, scope: !976)
!976 = distinct !DILexicalBlock(scope: !919, file: !74, line: 177, column: 7)
!977 = !DILocation(line: 177, column: 17, scope: !976)
!978 = !DILocation(line: 177, column: 7, scope: !919)
!979 = !DILocation(line: 179, column: 8, scope: !980)
!980 = distinct !DILexicalBlock(scope: !981, file: !74, line: 179, column: 8)
!981 = distinct !DILexicalBlock(scope: !976, file: !74, line: 177, column: 25)
!982 = !DILocation(line: 179, column: 16, scope: !980)
!983 = !DILocation(line: 179, column: 26, scope: !980)
!984 = !DILocation(line: 179, column: 8, scope: !981)
!985 = !DILocation(line: 180, column: 28, scope: !986)
!986 = distinct !DILexicalBlock(scope: !980, file: !74, line: 179, column: 34)
!987 = !DILocation(line: 180, column: 5, scope: !986)
!988 = !DILocation(line: 181, column: 4, scope: !986)
!989 = !DILocation(line: 183, column: 11, scope: !990)
!990 = distinct !DILexicalBlock(scope: !980, file: !74, line: 182, column: 9)
!991 = !DILocation(line: 183, column: 9, scope: !990)
!992 = !DILocation(line: 185, column: 16, scope: !990)
!993 = !DILocation(line: 188, column: 16, scope: !994)
!994 = distinct !DILexicalBlock(scope: !990, file: !74, line: 188, column: 5)
!995 = !DILocation(line: 188, column: 24, scope: !994)
!996 = !DILocation(line: 188, column: 14, scope: !994)
!997 = !DILocation(line: 188, column: 10, scope: !994)
!998 = !DILocation(line: 188, column: 35, scope: !999)
!999 = !DILexicalBlockFile(scope: !1000, file: !74, discriminator: 1)
!1000 = distinct !DILexicalBlock(scope: !994, file: !74, line: 188, column: 5)
!1001 = !DILocation(line: 188, column: 39, scope: !999)
!1002 = !DILocation(line: 188, column: 5, scope: !999)
!1003 = !DILocation(line: 189, column: 39, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !1005, file: !74, line: 189, column: 10)
!1005 = distinct !DILexicalBlock(scope: !1000, file: !74, line: 188, column: 64)
!1006 = !DILocation(line: 189, column: 47, scope: !1004)
!1007 = !DILocation(line: 189, column: 62, scope: !1004)
!1008 = !DILocation(line: 189, column: 67, scope: !1004)
!1009 = !DILocation(line: 189, column: 10, scope: !1004)
!1010 = !DILocation(line: 189, column: 10, scope: !1005)
!1011 = !DILocation(line: 190, column: 11, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1013, file: !74, line: 190, column: 11)
!1013 = distinct !DILexicalBlock(scope: !1004, file: !74, line: 189, column: 85)
!1014 = !DILocation(line: 190, column: 22, scope: !1012)
!1015 = !DILocation(line: 190, column: 11, scope: !1013)
!1016 = !DILocation(line: 191, column: 34, scope: !1012)
!1017 = !DILocation(line: 191, column: 8, scope: !1012)
!1018 = !DILocation(line: 192, column: 23, scope: !1013)
!1019 = !DILocation(line: 192, column: 28, scope: !1013)
!1020 = !DILocation(line: 192, column: 33, scope: !1013)
!1021 = !DILocation(line: 192, column: 7, scope: !1013)
!1022 = !DILocation(line: 194, column: 17, scope: !1013)
!1023 = !DILocation(line: 195, column: 6, scope: !1013)
!1024 = !DILocation(line: 196, column: 5, scope: !1005)
!1025 = !DILocation(line: 188, column: 53, scope: !1026)
!1026 = !DILexicalBlockFile(scope: !1000, file: !74, discriminator: 2)
!1027 = !DILocation(line: 188, column: 58, scope: !1026)
!1028 = !DILocation(line: 188, column: 51, scope: !1026)
!1029 = !DILocation(line: 188, column: 5, scope: !1026)
!1030 = distinct !{!1030, !1031}
!1031 = !DILocation(line: 188, column: 5, scope: !990)
!1032 = !DILocation(line: 199, column: 22, scope: !990)
!1033 = !DILocation(line: 199, column: 30, scope: !990)
!1034 = !DILocation(line: 199, column: 5, scope: !990)
!1035 = !DILocation(line: 200, column: 5, scope: !990)
!1036 = !DILocation(line: 200, column: 13, scope: !990)
!1037 = !DILocation(line: 200, column: 23, scope: !990)
!1038 = !DILocation(line: 203, column: 9, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !990, file: !74, line: 203, column: 9)
!1040 = !DILocation(line: 203, column: 20, scope: !1039)
!1041 = !DILocation(line: 203, column: 9, scope: !990)
!1042 = !DILocation(line: 204, column: 39, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1039, file: !74, line: 203, column: 25)
!1044 = !DILocation(line: 204, column: 47, scope: !1043)
!1045 = !DILocation(line: 204, column: 52, scope: !1043)
!1046 = !DILocation(line: 204, column: 56, scope: !1043)
!1047 = !DILocation(line: 204, column: 78, scope: !1043)
!1048 = !DILocation(line: 204, column: 6, scope: !1043)
!1049 = !DILocation(line: 205, column: 23, scope: !1043)
!1050 = !DILocation(line: 205, column: 31, scope: !1043)
!1051 = !DILocation(line: 205, column: 36, scope: !1043)
!1052 = !DILocation(line: 205, column: 6, scope: !1043)
!1053 = !DILocation(line: 206, column: 5, scope: !1043)
!1054 = !DILocation(line: 207, column: 29, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1039, file: !74, line: 206, column: 12)
!1056 = !DILocation(line: 207, column: 6, scope: !1055)
!1057 = !DILocation(line: 210, column: 19, scope: !990)
!1058 = !DILocation(line: 210, column: 5, scope: !990)
!1059 = !DILocation(line: 212, column: 3, scope: !981)
!1060 = !DILocation(line: 213, column: 2, scope: !919)
!1061 = !DILocation(line: 214, column: 31, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !914, file: !74, line: 214, column: 11)
!1063 = !DILocation(line: 214, column: 12, scope: !1062)
!1064 = !DILocation(line: 214, column: 11, scope: !914)
!1065 = !DILocalVariable(name: "got_sasl", scope: !1066, file: !74, line: 215, type: !77)
!1066 = distinct !DILexicalBlock(scope: !1062, file: !74, line: 214, column: 44)
!1067 = !DILocation(line: 215, column: 7, scope: !1066)
!1068 = !DILocation(line: 218, column: 10, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1066, file: !74, line: 218, column: 3)
!1070 = !DILocation(line: 218, column: 8, scope: !1069)
!1071 = !DILocation(line: 218, column: 15, scope: !1072)
!1072 = !DILexicalBlockFile(scope: !1073, file: !74, discriminator: 1)
!1073 = distinct !DILexicalBlock(scope: !1069, file: !74, line: 218, column: 3)
!1074 = !DILocation(line: 218, column: 19, scope: !1072)
!1075 = !DILocation(line: 218, column: 17, scope: !1072)
!1076 = !DILocation(line: 218, column: 3, scope: !1072)
!1077 = !DILocation(line: 219, column: 21, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1073, file: !74, line: 218, column: 37)
!1079 = !DILocation(line: 219, column: 16, scope: !1078)
!1080 = !DILocation(line: 219, column: 15, scope: !1078)
!1081 = !DILocation(line: 219, column: 24, scope: !1078)
!1082 = !DILocation(line: 219, column: 12, scope: !1078)
!1083 = !DILocation(line: 221, column: 8, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1078, file: !74, line: 221, column: 8)
!1085 = !DILocation(line: 221, column: 8, scope: !1078)
!1086 = !DILocation(line: 222, column: 47, scope: !1084)
!1087 = !DILocation(line: 222, column: 55, scope: !1084)
!1088 = !DILocation(line: 222, column: 72, scope: !1084)
!1089 = !DILocation(line: 222, column: 67, scope: !1084)
!1090 = !DILocation(line: 222, column: 75, scope: !1084)
!1091 = !DILocation(line: 222, column: 26, scope: !1084)
!1092 = !DILocation(line: 222, column: 5, scope: !1084)
!1093 = !DILocation(line: 222, column: 13, scope: !1084)
!1094 = !DILocation(line: 222, column: 24, scope: !1084)
!1095 = !DILocation(line: 224, column: 42, scope: !1084)
!1096 = !DILocation(line: 224, column: 50, scope: !1084)
!1097 = !DILocation(line: 224, column: 76, scope: !1084)
!1098 = !DILocation(line: 224, column: 71, scope: !1084)
!1099 = !DILocation(line: 224, column: 62, scope: !1084)
!1100 = !DILocation(line: 224, column: 26, scope: !1101)
!1101 = !DILexicalBlockFile(scope: !1084, file: !74, discriminator: 1)
!1102 = !DILocation(line: 224, column: 5, scope: !1084)
!1103 = !DILocation(line: 224, column: 13, scope: !1084)
!1104 = !DILocation(line: 224, column: 24, scope: !1084)
!1105 = !DILocation(line: 226, column: 21, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1078, file: !74, line: 226, column: 8)
!1107 = !DILocation(line: 226, column: 16, scope: !1106)
!1108 = !DILocation(line: 226, column: 9, scope: !1106)
!1109 = !DILocation(line: 226, column: 8, scope: !1078)
!1110 = !DILocation(line: 227, column: 14, scope: !1106)
!1111 = !DILocation(line: 227, column: 5, scope: !1106)
!1112 = !DILocation(line: 229, column: 20, scope: !1078)
!1113 = !DILocation(line: 229, column: 40, scope: !1078)
!1114 = !DILocation(line: 229, column: 35, scope: !1078)
!1115 = !DILocation(line: 229, column: 4, scope: !1078)
!1116 = !DILocation(line: 230, column: 3, scope: !1078)
!1117 = !DILocation(line: 218, column: 33, scope: !1118)
!1118 = !DILexicalBlockFile(scope: !1073, file: !74, discriminator: 2)
!1119 = !DILocation(line: 218, column: 3, scope: !1118)
!1120 = distinct !{!1120, !1121}
!1121 = !DILocation(line: 218, column: 3, scope: !1066)
!1122 = !DILocation(line: 235, column: 7, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1066, file: !74, line: 235, column: 7)
!1124 = !DILocation(line: 235, column: 16, scope: !1123)
!1125 = !DILocation(line: 235, column: 7, scope: !1066)
!1126 = !DILocation(line: 236, column: 27, scope: !1123)
!1127 = !DILocation(line: 236, column: 4, scope: !1123)
!1128 = !DILocation(line: 237, column: 2, scope: !1066)
!1129 = !DILocation(line: 238, column: 31, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1062, file: !74, line: 238, column: 11)
!1131 = !DILocation(line: 238, column: 12, scope: !1130)
!1132 = !DILocation(line: 238, column: 11, scope: !1062)
!1133 = !DILocation(line: 239, column: 3, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1130, file: !74, line: 238, column: 44)
!1135 = !DILocation(line: 243, column: 10, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1134, file: !74, line: 243, column: 3)
!1137 = !DILocation(line: 243, column: 8, scope: !1136)
!1138 = !DILocation(line: 243, column: 15, scope: !1139)
!1139 = !DILexicalBlockFile(scope: !1140, file: !74, discriminator: 1)
!1140 = distinct !DILexicalBlock(scope: !1136, file: !74, line: 243, column: 3)
!1141 = !DILocation(line: 243, column: 19, scope: !1139)
!1142 = !DILocation(line: 243, column: 17, scope: !1139)
!1143 = !DILocation(line: 243, column: 3, scope: !1139)
!1144 = !DILocation(line: 244, column: 20, scope: !1140)
!1145 = !DILocation(line: 244, column: 40, scope: !1140)
!1146 = !DILocation(line: 244, column: 35, scope: !1140)
!1147 = !DILocation(line: 244, column: 4, scope: !1140)
!1148 = !DILocation(line: 243, column: 33, scope: !1149)
!1149 = !DILexicalBlockFile(scope: !1140, file: !74, discriminator: 2)
!1150 = !DILocation(line: 243, column: 3, scope: !1149)
!1151 = distinct !{!1151, !1152}
!1152 = !DILocation(line: 243, column: 3, scope: !1134)
!1153 = !DILocation(line: 245, column: 2, scope: !1134)
!1154 = !DILocation(line: 246, column: 31, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1130, file: !74, line: 246, column: 11)
!1156 = !DILocation(line: 246, column: 12, scope: !1155)
!1157 = !DILocation(line: 246, column: 11, scope: !1130)
!1158 = !DILocation(line: 247, column: 10, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1160, file: !74, line: 247, column: 3)
!1160 = distinct !DILexicalBlock(scope: !1155, file: !74, line: 246, column: 44)
!1161 = !DILocation(line: 247, column: 8, scope: !1159)
!1162 = !DILocation(line: 247, column: 15, scope: !1163)
!1163 = !DILexicalBlockFile(scope: !1164, file: !74, discriminator: 1)
!1164 = distinct !DILexicalBlock(scope: !1159, file: !74, line: 247, column: 3)
!1165 = !DILocation(line: 247, column: 19, scope: !1163)
!1166 = !DILocation(line: 247, column: 17, scope: !1163)
!1167 = !DILocation(line: 247, column: 3, scope: !1163)
!1168 = !DILocalVariable(name: "key", scope: !1169, file: !74, line: 248, type: !98)
!1169 = distinct !DILexicalBlock(scope: !1164, file: !74, line: 247, column: 37)
!1170 = !DILocation(line: 248, column: 10, scope: !1169)
!1171 = !DILocalVariable(name: "val", scope: !1169, file: !74, line: 248, type: !98)
!1172 = !DILocation(line: 248, column: 16, scope: !1169)
!1173 = !DILocation(line: 250, column: 29, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1169, file: !74, line: 250, column: 8)
!1175 = !DILocation(line: 250, column: 24, scope: !1174)
!1176 = !DILocation(line: 250, column: 9, scope: !1174)
!1177 = !DILocation(line: 250, column: 8, scope: !1169)
!1178 = !DILocation(line: 251, column: 80, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1174, file: !74, line: 250, column: 46)
!1180 = !DILocation(line: 251, column: 5, scope: !1179)
!1181 = !DILocation(line: 252, column: 5, scope: !1179)
!1182 = !DILocation(line: 255, column: 24, scope: !1169)
!1183 = !DILocation(line: 255, column: 32, scope: !1169)
!1184 = !DILocation(line: 255, column: 47, scope: !1169)
!1185 = !DILocation(line: 255, column: 52, scope: !1169)
!1186 = !DILocation(line: 255, column: 4, scope: !1169)
!1187 = !DILocation(line: 256, column: 20, scope: !1169)
!1188 = !DILocation(line: 256, column: 35, scope: !1169)
!1189 = !DILocation(line: 256, column: 4, scope: !1169)
!1190 = !DILocation(line: 257, column: 3, scope: !1169)
!1191 = !DILocation(line: 247, column: 33, scope: !1192)
!1192 = !DILexicalBlockFile(scope: !1164, file: !74, discriminator: 2)
!1193 = !DILocation(line: 247, column: 3, scope: !1192)
!1194 = distinct !{!1194, !1195}
!1195 = !DILocation(line: 247, column: 3, scope: !1160)
!1196 = !DILocation(line: 258, column: 2, scope: !1160)
!1197 = !DILocation(line: 259, column: 31, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1155, file: !74, line: 259, column: 11)
!1199 = !DILocation(line: 259, column: 12, scope: !1198)
!1200 = !DILocation(line: 259, column: 11, scope: !1155)
!1201 = !DILocation(line: 260, column: 10, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1203, file: !74, line: 260, column: 3)
!1203 = distinct !DILexicalBlock(scope: !1198, file: !74, line: 259, column: 44)
!1204 = !DILocation(line: 260, column: 8, scope: !1202)
!1205 = !DILocation(line: 260, column: 15, scope: !1206)
!1206 = !DILexicalBlockFile(scope: !1207, file: !74, discriminator: 1)
!1207 = distinct !DILexicalBlock(scope: !1202, file: !74, line: 260, column: 3)
!1208 = !DILocation(line: 260, column: 19, scope: !1206)
!1209 = !DILocation(line: 260, column: 17, scope: !1206)
!1210 = !DILocation(line: 260, column: 3, scope: !1206)
!1211 = !DILocalVariable(name: "key", scope: !1212, file: !74, line: 261, type: !98)
!1212 = distinct !DILexicalBlock(scope: !1207, file: !74, line: 260, column: 37)
!1213 = !DILocation(line: 261, column: 10, scope: !1212)
!1214 = !DILocalVariable(name: "val", scope: !1212, file: !74, line: 261, type: !98)
!1215 = !DILocation(line: 261, column: 16, scope: !1212)
!1216 = !DILocation(line: 263, column: 29, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1212, file: !74, line: 263, column: 8)
!1218 = !DILocation(line: 263, column: 24, scope: !1217)
!1219 = !DILocation(line: 263, column: 9, scope: !1217)
!1220 = !DILocation(line: 263, column: 8, scope: !1212)
!1221 = !DILocation(line: 264, column: 80, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1217, file: !74, line: 263, column: 46)
!1223 = !DILocation(line: 264, column: 5, scope: !1222)
!1224 = !DILocation(line: 265, column: 5, scope: !1222)
!1225 = !DILocation(line: 268, column: 24, scope: !1212)
!1226 = !DILocation(line: 268, column: 32, scope: !1212)
!1227 = !DILocation(line: 268, column: 47, scope: !1212)
!1228 = !DILocation(line: 268, column: 4, scope: !1212)
!1229 = !DILocation(line: 269, column: 20, scope: !1212)
!1230 = !DILocation(line: 269, column: 38, scope: !1212)
!1231 = !DILocation(line: 269, column: 4, scope: !1212)
!1232 = !DILocation(line: 272, column: 46, scope: !1212)
!1233 = !DILocation(line: 272, column: 54, scope: !1212)
!1234 = !DILocation(line: 272, column: 66, scope: !1212)
!1235 = !DILocation(line: 272, column: 25, scope: !1212)
!1236 = !DILocation(line: 272, column: 4, scope: !1212)
!1237 = !DILocation(line: 272, column: 12, scope: !1212)
!1238 = !DILocation(line: 272, column: 23, scope: !1212)
!1239 = !DILocation(line: 275, column: 11, scope: !1212)
!1240 = !DILocation(line: 275, column: 4, scope: !1212)
!1241 = !DILocation(line: 276, column: 11, scope: !1212)
!1242 = !DILocation(line: 276, column: 4, scope: !1212)
!1243 = !DILocation(line: 277, column: 3, scope: !1212)
!1244 = !DILocation(line: 260, column: 33, scope: !1245)
!1245 = !DILexicalBlockFile(scope: !1207, file: !74, discriminator: 2)
!1246 = !DILocation(line: 260, column: 3, scope: !1245)
!1247 = distinct !{!1247, !1248}
!1248 = !DILocation(line: 260, column: 3, scope: !1203)
!1249 = !DILocation(line: 278, column: 2, scope: !1203)
!1250 = !DILocation(line: 279, column: 31, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1198, file: !74, line: 279, column: 11)
!1252 = !DILocation(line: 279, column: 12, scope: !1251)
!1253 = !DILocation(line: 279, column: 11, scope: !1198)
!1254 = !DILocation(line: 281, column: 2, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1251, file: !74, line: 279, column: 45)
!1256 = !DILocation(line: 283, column: 76, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1251, file: !74, line: 282, column: 7)
!1258 = !DILocation(line: 283, column: 3, scope: !1257)
!1259 = !DILocation(line: 286, column: 13, scope: !821)
!1260 = !DILocation(line: 286, column: 2, scope: !821)
!1261 = !DILocation(line: 287, column: 9, scope: !821)
!1262 = !DILocation(line: 287, column: 2, scope: !821)
!1263 = !DILocation(line: 288, column: 1, scope: !821)
!1264 = !DILocation(line: 288, column: 1, scope: !908)
!1265 = distinct !DISubprogram(name: "event_invalid_cap", scope: !74, file: !74, line: 290, type: !1266, isLocal: true, isDefinition: true, scopeLine: 291, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !686)
!1266 = !DISubroutineType(types: !1267)
!1267 = !{null, !78, !60, !60}
!1268 = !DILocalVariable(name: "server", arg: 1, scope: !1265, file: !74, line: 290, type: !78)
!1269 = !DILocation(line: 290, column: 48, scope: !1265)
!1270 = !DILocalVariable(name: "data", arg: 2, scope: !1265, file: !74, line: 290, type: !60)
!1271 = !DILocation(line: 290, column: 68, scope: !1265)
!1272 = !DILocalVariable(name: "from", arg: 3, scope: !1265, file: !74, line: 290, type: !60)
!1273 = !DILocation(line: 290, column: 86, scope: !1265)
!1274 = !DILocation(line: 295, column: 2, scope: !1265)
!1275 = !DILocation(line: 295, column: 10, scope: !1265)
!1276 = !DILocation(line: 295, column: 23, scope: !1265)
!1277 = !DILocation(line: 296, column: 19, scope: !1265)
!1278 = !DILocation(line: 296, column: 2, scope: !1265)
!1279 = !DILocation(line: 297, column: 1, scope: !1265)
!1280 = distinct !DISubprogram(name: "cap_deinit", scope: !74, file: !74, line: 305, type: !229, isLocal: false, isDefinition: true, scopeLine: 306, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !686)
!1281 = !DILocation(line: 307, column: 2, scope: !1280)
!1282 = !DILocation(line: 308, column: 2, scope: !1280)
!1283 = !DILocation(line: 309, column: 1, scope: !1280)
!1284 = distinct !DISubprogram(name: "parse_cap_name", scope: !74, file: !74, line: 88, type: !1285, isLocal: true, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !686)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{!200, !98, !479, !479}
!1287 = !DILocalVariable(name: "name", arg: 1, scope: !1284, file: !74, line: 88, type: !98)
!1288 = !DILocation(line: 88, column: 38, scope: !1284)
!1289 = !DILocalVariable(name: "key", arg: 2, scope: !1284, file: !74, line: 88, type: !479)
!1290 = !DILocation(line: 88, column: 51, scope: !1284)
!1291 = !DILocalVariable(name: "val", arg: 3, scope: !1284, file: !74, line: 88, type: !479)
!1292 = !DILocation(line: 88, column: 63, scope: !1284)
!1293 = !DILocalVariable(name: "eq", scope: !1284, file: !74, line: 90, type: !60)
!1294 = !DILocation(line: 90, column: 14, scope: !1284)
!1295 = !DILocation(line: 92, column: 2, scope: !1284)
!1296 = distinct !{!1296, !1295}
!1297 = !DILocation(line: 92, column: 10, scope: !1298)
!1298 = !DILexicalBlockFile(scope: !1299, file: !74, discriminator: 1)
!1299 = distinct !DILexicalBlock(scope: !1300, file: !74, line: 92, column: 10)
!1300 = distinct !DILexicalBlock(scope: !1284, file: !74, line: 92, column: 4)
!1301 = !DILocation(line: 92, column: 15, scope: !1298)
!1302 = !DILocation(line: 92, column: 5, scope: !1303)
!1303 = !DILexicalBlockFile(scope: !1304, file: !74, discriminator: 2)
!1304 = distinct !DILexicalBlock(scope: !1299, file: !74, line: 92, column: 3)
!1305 = !DILocation(line: 92, column: 14, scope: !1306)
!1306 = !DILexicalBlockFile(scope: !1307, file: !74, discriminator: 3)
!1307 = distinct !DILexicalBlock(scope: !1299, file: !74, line: 92, column: 12)
!1308 = !DILocation(line: 92, column: 99, scope: !1306)
!1309 = !DILocation(line: 92, column: 116, scope: !1310)
!1310 = !DILexicalBlockFile(scope: !1300, file: !74, discriminator: 4)
!1311 = !DILocation(line: 93, column: 2, scope: !1284)
!1312 = distinct !{!1312, !1311}
!1313 = !DILocation(line: 93, column: 10, scope: !1314)
!1314 = !DILexicalBlockFile(scope: !1315, file: !74, discriminator: 1)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !74, line: 93, column: 10)
!1316 = distinct !DILexicalBlock(scope: !1284, file: !74, line: 93, column: 4)
!1317 = !DILocation(line: 93, column: 18, scope: !1314)
!1318 = !DILocation(line: 93, column: 29, scope: !1319)
!1319 = !DILexicalBlockFile(scope: !1320, file: !74, discriminator: 2)
!1320 = distinct !DILexicalBlock(scope: !1315, file: !74, line: 93, column: 27)
!1321 = !DILocation(line: 93, column: 38, scope: !1322)
!1322 = !DILexicalBlockFile(scope: !1323, file: !74, discriminator: 3)
!1323 = distinct !DILexicalBlock(scope: !1315, file: !74, line: 93, column: 36)
!1324 = !DILocation(line: 93, column: 127, scope: !1322)
!1325 = !DILocation(line: 93, column: 144, scope: !1326)
!1326 = !DILexicalBlockFile(scope: !1316, file: !74, discriminator: 4)
!1327 = !DILocation(line: 95, column: 14, scope: !1284)
!1328 = !DILocation(line: 95, column: 7, scope: !1284)
!1329 = !DILocation(line: 95, column: 5, scope: !1284)
!1330 = !DILocation(line: 97, column: 6, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1284, file: !74, line: 97, column: 6)
!1332 = !DILocation(line: 97, column: 9, scope: !1331)
!1333 = !DILocation(line: 97, column: 6, scope: !1284)
!1334 = !DILocation(line: 98, column: 19, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1331, file: !74, line: 97, column: 17)
!1336 = !DILocation(line: 98, column: 10, scope: !1335)
!1337 = !DILocation(line: 98, column: 4, scope: !1335)
!1338 = !DILocation(line: 98, column: 8, scope: !1335)
!1339 = !DILocation(line: 99, column: 4, scope: !1335)
!1340 = !DILocation(line: 99, column: 8, scope: !1335)
!1341 = !DILocation(line: 101, column: 2, scope: !1335)
!1342 = !DILocation(line: 102, column: 20, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1331, file: !74, line: 101, column: 9)
!1344 = !DILocation(line: 102, column: 34, scope: !1343)
!1345 = !DILocation(line: 102, column: 39, scope: !1343)
!1346 = !DILocation(line: 102, column: 37, scope: !1343)
!1347 = !DILocation(line: 102, column: 10, scope: !1343)
!1348 = !DILocation(line: 102, column: 4, scope: !1343)
!1349 = !DILocation(line: 102, column: 8, scope: !1343)
!1350 = !DILocation(line: 103, column: 19, scope: !1343)
!1351 = !DILocation(line: 103, column: 22, scope: !1343)
!1352 = !DILocation(line: 103, column: 10, scope: !1343)
!1353 = !DILocation(line: 103, column: 4, scope: !1343)
!1354 = !DILocation(line: 103, column: 8, scope: !1343)
!1355 = !DILocation(line: 106, column: 2, scope: !1284)
!1356 = !DILocation(line: 107, column: 1, scope: !1284)
!1357 = distinct !DISubprogram(name: "g_string_append_c_inline", scope: !282, file: !282, line: 161, type: !1358, isLocal: true, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !686)
!1358 = !DISubroutineType(types: !1359)
!1359 = !{!280, !280, !57}
!1360 = !DILocalVariable(name: "gstring", arg: 1, scope: !1357, file: !282, line: 161, type: !280)
!1361 = !DILocation(line: 161, column: 36, scope: !1357)
!1362 = !DILocalVariable(name: "c", arg: 2, scope: !1357, file: !282, line: 162, type: !57)
!1363 = !DILocation(line: 162, column: 33, scope: !1357)
!1364 = !DILocation(line: 164, column: 7, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1357, file: !282, line: 164, column: 7)
!1366 = !DILocation(line: 164, column: 16, scope: !1365)
!1367 = !DILocation(line: 164, column: 20, scope: !1365)
!1368 = !DILocation(line: 164, column: 26, scope: !1365)
!1369 = !DILocation(line: 164, column: 35, scope: !1365)
!1370 = !DILocation(line: 164, column: 24, scope: !1365)
!1371 = !DILocation(line: 164, column: 7, scope: !1357)
!1372 = !DILocation(line: 166, column: 38, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1365, file: !282, line: 165, column: 5)
!1374 = !DILocation(line: 166, column: 20, scope: !1373)
!1375 = !DILocation(line: 166, column: 29, scope: !1373)
!1376 = !DILocation(line: 166, column: 32, scope: !1373)
!1377 = !DILocation(line: 166, column: 7, scope: !1373)
!1378 = !DILocation(line: 166, column: 16, scope: !1373)
!1379 = !DILocation(line: 166, column: 36, scope: !1373)
!1380 = !DILocation(line: 167, column: 20, scope: !1373)
!1381 = !DILocation(line: 167, column: 29, scope: !1373)
!1382 = !DILocation(line: 167, column: 7, scope: !1373)
!1383 = !DILocation(line: 167, column: 16, scope: !1373)
!1384 = !DILocation(line: 167, column: 34, scope: !1373)
!1385 = !DILocation(line: 168, column: 5, scope: !1373)
!1386 = !DILocation(line: 170, column: 24, scope: !1365)
!1387 = !DILocation(line: 170, column: 37, scope: !1365)
!1388 = !DILocation(line: 170, column: 5, scope: !1365)
!1389 = !DILocation(line: 171, column: 10, scope: !1357)
!1390 = !DILocation(line: 171, column: 3, scope: !1357)
!1391 = distinct !DISubprogram(name: "cap_emit_signal", scope: !74, file: !74, line: 79, type: !1392, isLocal: true, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !686)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{null, !78, !98, !98}
!1394 = !DILocalVariable(name: "server", arg: 1, scope: !1391, file: !74, line: 79, type: !78)
!1395 = !DILocation(line: 79, column: 46, scope: !1391)
!1396 = !DILocalVariable(name: "cmd", arg: 2, scope: !1391, file: !74, line: 79, type: !98)
!1397 = !DILocation(line: 79, column: 60, scope: !1391)
!1398 = !DILocalVariable(name: "args", arg: 3, scope: !1391, file: !74, line: 79, type: !98)
!1399 = !DILocation(line: 79, column: 71, scope: !1391)
!1400 = !DILocalVariable(name: "signal_name", scope: !1391, file: !74, line: 81, type: !98)
!1401 = !DILocation(line: 81, column: 8, scope: !1391)
!1402 = !DILocation(line: 83, column: 52, scope: !1391)
!1403 = !DILocation(line: 83, column: 57, scope: !1391)
!1404 = !DILocation(line: 83, column: 63, scope: !1405)
!1405 = !DILexicalBlockFile(scope: !1391, file: !74, discriminator: 1)
!1406 = !DILocation(line: 83, column: 57, scope: !1405)
!1407 = !DILocation(line: 83, column: 57, scope: !1408)
!1408 = !DILexicalBlockFile(scope: !1391, file: !74, discriminator: 2)
!1409 = !DILocation(line: 83, column: 57, scope: !1410)
!1410 = !DILexicalBlockFile(scope: !1391, file: !74, discriminator: 3)
!1411 = !DILocation(line: 83, column: 16, scope: !1410)
!1412 = !DILocation(line: 83, column: 14, scope: !1410)
!1413 = !DILocation(line: 84, column: 14, scope: !1391)
!1414 = !DILocation(line: 84, column: 30, scope: !1391)
!1415 = !DILocation(line: 84, column: 2, scope: !1391)
!1416 = !DILocation(line: 85, column: 9, scope: !1391)
!1417 = !DILocation(line: 85, column: 2, scope: !1391)
!1418 = !DILocation(line: 86, column: 1, scope: !1391)
