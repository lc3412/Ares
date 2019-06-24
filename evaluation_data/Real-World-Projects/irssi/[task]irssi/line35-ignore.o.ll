; ModuleID = './line35-ignore.o.i'
source_filename = "./line35-ignore.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.NICKMATCH_REC = type { %struct._GHashTable*, void (%struct._GHashTable*, %struct._CHANNEL_REC*, %struct._NICK_REC*)* }
%struct._GHashTable = type opaque
%struct._CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)* }
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
%struct._GTimeVal = type { i64, i64 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._QUERY_REC = type opaque
%struct._WI_ITEM_REC = type opaque
%struct._NICK_REC = type { i32, i32, i64, i8*, i8*, i8*, i32, i8, [8 x i8], i8*, %struct._NICK_REC* }
%struct._CONFIG_REC = type { i8*, i32, i32, i8*, %struct._CONFIG_NODE*, %struct._GHashTable*, %struct._GHashTable*, %struct._GScanner*, %struct._GIOChannel*, i32, i32 }
%struct._CONFIG_NODE = type { i32, i8*, i8* }
%struct._GScanner = type { i8*, i32, i32, i8*, %struct._GData*, %struct._GScannerConfig*, i32, %union._GTokenValue, i32, i32, i32, %union._GTokenValue, i32, i32, %struct._GHashTable*, i32, i8*, i8*, i8*, i32, void (%struct._GScanner*, i8*, i32)* }
%struct._GData = type opaque
%struct._GScannerConfig = type { i8*, i8*, i8*, i8*, i24, i32 }
%union._GTokenValue = type { i8* }
%struct._IGNORE_REC = type { i32, i8*, i8*, i8**, i8*, i64, i8, %struct._GRegex* }
%struct._GRegex = type opaque
%struct._MatchInfo = type opaque

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@nickmatch = internal global %struct.NICKMATCH_REC* null, align 8
@ignores = common global %struct._GSList* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"ignore created\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"ignore changed\00", align 1
@time_tag = internal global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"setup reread\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Failed to compile regexp '%s': %s\00", align 1
@mainconfig = external global %struct._CONFIG_REC*, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c"(ignores\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"mask\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"pattern\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"exception\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"regexp\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"fullword\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"replies\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"unignore_time\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"servertag\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"channels\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"ignores\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"ignore destroyed\00", align 1

; Function Attrs: nounwind uwtable
define i32 @ignore_check(%struct._SERVER_REC*, i8*, i8*, i8*, i8*, i32) #0 !dbg !575 {
  %7 = alloca i32, align 4
  %8 = alloca %struct._SERVER_REC*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct._CHANNEL_REC*, align 8
  %15 = alloca %struct._NICK_REC*, align 8
  %16 = alloca %struct._IGNORE_REC*, align 8
  %17 = alloca %struct._GSList*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %8, metadata !579, metadata !580), !dbg !581
  store i8* %1, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !582, metadata !580), !dbg !583
  store i8* %2, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !584, metadata !580), !dbg !585
  store i8* %3, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !586, metadata !580), !dbg !587
  store i8* %4, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !588, metadata !580), !dbg !589
  store i32 %5, i32* %13, align 4
  call void @llvm.dbg.declare(metadata i32* %13, metadata !590, metadata !580), !dbg !591
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %14, metadata !592, metadata !580), !dbg !593
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %15, metadata !594, metadata !580), !dbg !595
  call void @llvm.dbg.declare(metadata %struct._IGNORE_REC** %16, metadata !596, metadata !580), !dbg !597
  call void @llvm.dbg.declare(metadata %struct._GSList** %17, metadata !598, metadata !580), !dbg !599
  call void @llvm.dbg.declare(metadata i8** %18, metadata !600, metadata !580), !dbg !601
  call void @llvm.dbg.declare(metadata i32* %19, metadata !602, metadata !580), !dbg !603
  call void @llvm.dbg.declare(metadata i32* %20, metadata !604, metadata !580), !dbg !605
  call void @llvm.dbg.declare(metadata i32* %21, metadata !606, metadata !580), !dbg !607
  call void @llvm.dbg.declare(metadata i32* %22, metadata !608, metadata !580), !dbg !609
  %24 = load i8*, i8** %9, align 8, !dbg !610
  %25 = icmp eq i8* %24, null, !dbg !612
  br i1 %25, label %26, label %27, !dbg !613

; <label>:26:                                     ; preds = %6
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8** %9, align 8, !dbg !614
  br label %27, !dbg !616

; <label>:27:                                     ; preds = %26, %6
  %28 = load %struct._SERVER_REC*, %struct._SERVER_REC** %8, align 8, !dbg !617
  %29 = icmp eq %struct._SERVER_REC* %28, null, !dbg !618
  br i1 %29, label %33, label %30, !dbg !619

; <label>:30:                                     ; preds = %27
  %31 = load i8*, i8** %11, align 8, !dbg !620
  %32 = icmp eq i8* %31, null, !dbg !622
  br i1 %32, label %33, label %34, !dbg !623

; <label>:33:                                     ; preds = %30, %27
  br label %38, !dbg !624

; <label>:34:                                     ; preds = %30
  %35 = load %struct._SERVER_REC*, %struct._SERVER_REC** %8, align 8, !dbg !626
  %36 = load i8*, i8** %11, align 8, !dbg !627
  %37 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %35, i8* %36), !dbg !628
  br label %38, !dbg !629

; <label>:38:                                     ; preds = %34, %33
  %39 = phi %struct._CHANNEL_REC* [ null, %33 ], [ %37, %34 ], !dbg !631
  store %struct._CHANNEL_REC* %39, %struct._CHANNEL_REC** %14, align 8, !dbg !633
  %40 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %14, align 8, !dbg !634
  %41 = icmp ne %struct._CHANNEL_REC* %40, null, !dbg !636
  br i1 %41, label %42, label %67, !dbg !637

; <label>:42:                                     ; preds = %38
  %43 = load i8*, i8** %9, align 8, !dbg !638
  %44 = icmp ne i8* %43, null, !dbg !640
  br i1 %44, label %45, label %67, !dbg !641

; <label>:45:                                     ; preds = %42
  %46 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %14, align 8, !dbg !642
  %47 = load i8*, i8** %9, align 8, !dbg !643
  %48 = call %struct._NICK_REC* @nicklist_find(%struct._CHANNEL_REC* %46, i8* %47), !dbg !644
  store %struct._NICK_REC* %48, %struct._NICK_REC** %15, align 8, !dbg !645
  %49 = icmp ne %struct._NICK_REC* %48, null, !dbg !646
  br i1 %49, label %50, label %67, !dbg !647

; <label>:50:                                     ; preds = %45
  %51 = load %struct._NICK_REC*, %struct._NICK_REC** %15, align 8, !dbg !648
  %52 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %51, i32 0, i32 4, !dbg !651
  %53 = load i8*, i8** %52, align 8, !dbg !651
  %54 = icmp eq i8* %53, null, !dbg !652
  br i1 %54, label %55, label %59, !dbg !653

; <label>:55:                                     ; preds = %50
  %56 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %14, align 8, !dbg !654
  %57 = load %struct._NICK_REC*, %struct._NICK_REC** %15, align 8, !dbg !655
  %58 = load i8*, i8** %10, align 8, !dbg !656
  call void @nicklist_set_host(%struct._CHANNEL_REC* %56, %struct._NICK_REC* %57, i8* %58), !dbg !657
  br label %59, !dbg !657

; <label>:59:                                     ; preds = %55, %50
  %60 = load %struct.NICKMATCH_REC*, %struct.NICKMATCH_REC** @nickmatch, align 8, !dbg !658
  %61 = getelementptr inbounds %struct.NICKMATCH_REC, %struct.NICKMATCH_REC* %60, i32 0, i32 0, !dbg !659
  %62 = load %struct._GHashTable*, %struct._GHashTable** %61, align 8, !dbg !659
  %63 = load %struct._NICK_REC*, %struct._NICK_REC** %15, align 8, !dbg !660
  %64 = bitcast %struct._NICK_REC* %63 to i8*, !dbg !660
  %65 = call i8* @g_hash_table_lookup(%struct._GHashTable* %62, i8* %64), !dbg !661
  %66 = bitcast i8* %65 to %struct._GSList*, !dbg !661
  store %struct._GSList* %66, %struct._GSList** %17, align 8, !dbg !662
  store i8* null, i8** %18, align 8, !dbg !663
  br label %72, !dbg !664

; <label>:67:                                     ; preds = %45, %42, %38
  %68 = load %struct._GSList*, %struct._GSList** @ignores, align 8, !dbg !665
  store %struct._GSList* %68, %struct._GSList** %17, align 8, !dbg !667
  %69 = load i8*, i8** %9, align 8, !dbg !668
  %70 = load i8*, i8** %10, align 8, !dbg !669
  %71 = call noalias i8* (i8*, ...) @g_strconcat(i8* %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* %70, i8* null), !dbg !670
  store i8* %71, i8** %18, align 8, !dbg !671
  br label %72

; <label>:72:                                     ; preds = %67, %59
  store i32 -1, i32* %22, align 4, !dbg !672
  store i32 -1, i32* %20, align 4, !dbg !673
  store i32 0, i32* %21, align 4, !dbg !674
  br label %73, !dbg !675

; <label>:73:                                     ; preds = %234, %72
  %74 = load %struct._GSList*, %struct._GSList** %17, align 8, !dbg !676
  %75 = icmp ne %struct._GSList* %74, null, !dbg !680
  br i1 %75, label %76, label %238, !dbg !681

; <label>:76:                                     ; preds = %73
  call void @llvm.dbg.declare(metadata i32* %23, metadata !682, metadata !580), !dbg !684
  store i32 1, i32* %23, align 4, !dbg !684
  %77 = load %struct._GSList*, %struct._GSList** %17, align 8, !dbg !685
  %78 = getelementptr inbounds %struct._GSList, %struct._GSList* %77, i32 0, i32 0, !dbg !686
  %79 = load i8*, i8** %78, align 8, !dbg !686
  %80 = bitcast i8* %79 to %struct._IGNORE_REC*, !dbg !685
  store %struct._IGNORE_REC* %80, %struct._IGNORE_REC** %16, align 8, !dbg !687
  %81 = load i8*, i8** %18, align 8, !dbg !688
  %82 = icmp ne i8* %81, null, !dbg !690
  br i1 %82, label %83, label %146, !dbg !691

; <label>:83:                                     ; preds = %76
  %84 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %16, align 8, !dbg !692
  %85 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %84, i32 0, i32 2, !dbg !693
  %86 = load i8*, i8** %85, align 8, !dbg !693
  %87 = icmp eq i8* %86, null, !dbg !694
  br i1 %87, label %100, label %88, !dbg !695

; <label>:88:                                     ; preds = %83
  %89 = load %struct._SERVER_REC*, %struct._SERVER_REC** %8, align 8, !dbg !696
  %90 = icmp ne %struct._SERVER_REC* %89, null, !dbg !698
  br i1 %90, label %91, label %143, !dbg !699

; <label>:91:                                     ; preds = %88
  %92 = load %struct._SERVER_REC*, %struct._SERVER_REC** %8, align 8, !dbg !700
  %93 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %92, i32 0, i32 6, !dbg !702
  %94 = load i8*, i8** %93, align 8, !dbg !702
  %95 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %16, align 8, !dbg !703
  %96 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %95, i32 0, i32 2, !dbg !704
  %97 = load i8*, i8** %96, align 8, !dbg !704
  %98 = call i32 @g_ascii_strcasecmp(i8* %94, i8* %97), !dbg !705
  %99 = icmp eq i32 %98, 0, !dbg !706
  br i1 %99, label %100, label %143, !dbg !707

; <label>:100:                                    ; preds = %91, %83
  %101 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %16, align 8, !dbg !708
  %102 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %101, i32 0, i32 3, !dbg !709
  %103 = load i8**, i8*** %102, align 8, !dbg !709
  %104 = icmp eq i8** %103, null, !dbg !710
  br i1 %104, label %115, label %105, !dbg !711

; <label>:105:                                    ; preds = %100
  %106 = load i8*, i8** %11, align 8, !dbg !712
  %107 = icmp ne i8* %106, null, !dbg !713
  br i1 %107, label %108, label %143, !dbg !714

; <label>:108:                                    ; preds = %105
  %109 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %16, align 8, !dbg !715
  %110 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %109, i32 0, i32 3, !dbg !716
  %111 = load i8**, i8*** %110, align 8, !dbg !716
  %112 = load i8*, i8** %11, align 8, !dbg !717
  %113 = call i32 @strarray_find(i8** %111, i8* %112), !dbg !718
  %114 = icmp ne i32 %113, -1, !dbg !719
  br i1 %114, label %115, label %143, !dbg !720

; <label>:115:                                    ; preds = %108, %100
  %116 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %16, align 8, !dbg !721
  %117 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %116, i32 0, i32 1, !dbg !722
  %118 = load i8*, i8** %117, align 8, !dbg !722
  %119 = icmp eq i8* %118, null, !dbg !723
  br i1 %119, label %141, label %120, !dbg !724

; <label>:120:                                    ; preds = %115
  %121 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %16, align 8, !dbg !725
  %122 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %121, i32 0, i32 1, !dbg !726
  %123 = load i8*, i8** %122, align 8, !dbg !726
  %124 = call i8* @strchr(i8* %123, i32 33) #5, !dbg !727
  %125 = icmp ne i8* %124, null, !dbg !728
  br i1 %125, label %126, label %132, !dbg !727

; <label>:126:                                    ; preds = %120
  %127 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %16, align 8, !dbg !729
  %128 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %127, i32 0, i32 1, !dbg !730
  %129 = load i8*, i8** %128, align 8, !dbg !730
  %130 = load i8*, i8** %18, align 8, !dbg !731
  %131 = call i32 @match_wildcards(i8* %129, i8* %130), !dbg !732
  br label %138, !dbg !733

; <label>:132:                                    ; preds = %120
  %133 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %16, align 8, !dbg !734
  %134 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %133, i32 0, i32 1, !dbg !736
  %135 = load i8*, i8** %134, align 8, !dbg !736
  %136 = load i8*, i8** %9, align 8, !dbg !737
  %137 = call i32 @match_wildcards(i8* %135, i8* %136), !dbg !738
  br label %138, !dbg !739

; <label>:138:                                    ; preds = %132, %126
  %139 = phi i32 [ %131, %126 ], [ %137, %132 ], !dbg !740
  %140 = icmp ne i32 %139, 0, !dbg !742
  br label %141, !dbg !742

; <label>:141:                                    ; preds = %138, %115
  %142 = phi i1 [ true, %115 ], [ %140, %138 ]
  br label %143

; <label>:143:                                    ; preds = %141, %108, %105, %91, %88
  %144 = phi i1 [ false, %108 ], [ false, %105 ], [ false, %91 ], [ false, %88 ], [ %142, %141 ]
  %145 = zext i1 %144 to i32, !dbg !743
  store i32 %145, i32* %23, align 4, !dbg !744
  br label %146, !dbg !745

; <label>:146:                                    ; preds = %143, %76
  %147 = load i32, i32* %23, align 4, !dbg !746
  %148 = icmp ne i32 %147, 0, !dbg !746
  br i1 %148, label %149, label %233, !dbg !748

; <label>:149:                                    ; preds = %146
  %150 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %16, align 8, !dbg !749
  %151 = load i32, i32* %13, align 4, !dbg !750
  %152 = call i32 @ignore_match_level(%struct._IGNORE_REC* %150, i32 %151), !dbg !751
  %153 = icmp ne i32 %152, 0, !dbg !751
  br i1 %153, label %154, label %233, !dbg !752

; <label>:154:                                    ; preds = %149
  %155 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %16, align 8, !dbg !753
  %156 = load i8*, i8** %12, align 8, !dbg !754
  %157 = call i32 @ignore_match_pattern(%struct._IGNORE_REC* %155, i8* %156), !dbg !755
  %158 = icmp ne i32 %157, 0, !dbg !755
  br i1 %158, label %159, label %233, !dbg !756

; <label>:159:                                    ; preds = %154
  %160 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %16, align 8, !dbg !758
  %161 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %160, i32 0, i32 1, !dbg !760
  %162 = load i8*, i8** %161, align 8, !dbg !760
  %163 = icmp eq i8* %162, null, !dbg !761
  br i1 %163, label %164, label %165, !dbg !758

; <label>:164:                                    ; preds = %159
  br label %170, !dbg !762

; <label>:165:                                    ; preds = %159
  %166 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %16, align 8, !dbg !764
  %167 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %166, i32 0, i32 1, !dbg !766
  %168 = load i8*, i8** %167, align 8, !dbg !766
  %169 = call i64 @strlen(i8* %168) #5, !dbg !767
  br label %170, !dbg !768

; <label>:170:                                    ; preds = %165, %164
  %171 = phi i64 [ 0, %164 ], [ %169, %165 ], !dbg !769
  %172 = trunc i64 %171 to i32, !dbg !769
  store i32 %172, i32* %19, align 4, !dbg !771
  %173 = load i32, i32* %19, align 4, !dbg !772
  %174 = load i32, i32* %20, align 4, !dbg !774
  %175 = icmp sgt i32 %173, %174, !dbg !775
  br i1 %175, label %176, label %186, !dbg !776

; <label>:176:                                    ; preds = %170
  %177 = load i32, i32* %19, align 4, !dbg !777
  store i32 %177, i32* %20, align 4, !dbg !779
  %178 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %16, align 8, !dbg !780
  %179 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %178, i32 0, i32 6, !dbg !781
  %180 = load i8, i8* %179, align 8, !dbg !781
  %181 = and i8 %180, 1, !dbg !781
  %182 = zext i8 %181 to i32, !dbg !781
  %183 = icmp ne i32 %182, 0, !dbg !782
  %184 = xor i1 %183, true, !dbg !782
  %185 = zext i1 %184 to i32, !dbg !782
  store i32 %185, i32* %21, align 4, !dbg !783
  br label %232, !dbg !784

; <label>:186:                                    ; preds = %170
  %187 = load i32, i32* %19, align 4, !dbg !785
  %188 = load i32, i32* %20, align 4, !dbg !788
  %189 = icmp eq i32 %187, %188, !dbg !789
  br i1 %189, label %190, label %231, !dbg !785

; <label>:190:                                    ; preds = %186
  %191 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %16, align 8, !dbg !790
  %192 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %191, i32 0, i32 4, !dbg !792
  %193 = load i8*, i8** %192, align 8, !dbg !792
  %194 = icmp eq i8* %193, null, !dbg !793
  br i1 %194, label %195, label %196, !dbg !790

; <label>:195:                                    ; preds = %190
  br label %201, !dbg !794

; <label>:196:                                    ; preds = %190
  %197 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %16, align 8, !dbg !796
  %198 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %197, i32 0, i32 4, !dbg !798
  %199 = load i8*, i8** %198, align 8, !dbg !798
  %200 = call i64 @strlen(i8* %199) #5, !dbg !799
  br label %201, !dbg !800

; <label>:201:                                    ; preds = %196, %195
  %202 = phi i64 [ 0, %195 ], [ %200, %196 ], !dbg !801
  %203 = trunc i64 %202 to i32, !dbg !801
  store i32 %203, i32* %19, align 4, !dbg !803
  %204 = load i32, i32* %19, align 4, !dbg !804
  %205 = load i32, i32* %22, align 4, !dbg !806
  %206 = icmp sgt i32 %204, %205, !dbg !807
  br i1 %206, label %207, label %217, !dbg !808

; <label>:207:                                    ; preds = %201
  %208 = load i32, i32* %19, align 4, !dbg !809
  store i32 %208, i32* %22, align 4, !dbg !811
  %209 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %16, align 8, !dbg !812
  %210 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %209, i32 0, i32 6, !dbg !813
  %211 = load i8, i8* %210, align 8, !dbg !813
  %212 = and i8 %211, 1, !dbg !813
  %213 = zext i8 %212 to i32, !dbg !813
  %214 = icmp ne i32 %213, 0, !dbg !814
  %215 = xor i1 %214, true, !dbg !814
  %216 = zext i1 %215 to i32, !dbg !814
  store i32 %216, i32* %21, align 4, !dbg !815
  br label %230, !dbg !816

; <label>:217:                                    ; preds = %201
  %218 = load i32, i32* %19, align 4, !dbg !817
  %219 = load i32, i32* %22, align 4, !dbg !820
  %220 = icmp eq i32 %218, %219, !dbg !821
  br i1 %220, label %221, label %229, !dbg !822

; <label>:221:                                    ; preds = %217
  %222 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %16, align 8, !dbg !823
  %223 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %222, i32 0, i32 6, !dbg !825
  %224 = load i8, i8* %223, align 8, !dbg !825
  %225 = and i8 %224, 1, !dbg !825
  %226 = zext i8 %225 to i32, !dbg !825
  %227 = icmp ne i32 %226, 0, !dbg !823
  br i1 %227, label %228, label %229, !dbg !826

; <label>:228:                                    ; preds = %221
  store i32 0, i32* %21, align 4, !dbg !827
  br label %229, !dbg !828

; <label>:229:                                    ; preds = %228, %221, %217
  br label %230

; <label>:230:                                    ; preds = %229, %207
  br label %231, !dbg !829

; <label>:231:                                    ; preds = %230, %186
  br label %232

; <label>:232:                                    ; preds = %231, %176
  br label %233, !dbg !830

; <label>:233:                                    ; preds = %232, %154, %149, %146
  br label %234, !dbg !831

; <label>:234:                                    ; preds = %233
  %235 = load %struct._GSList*, %struct._GSList** %17, align 8, !dbg !832
  %236 = getelementptr inbounds %struct._GSList, %struct._GSList* %235, i32 0, i32 1, !dbg !834
  %237 = load %struct._GSList*, %struct._GSList** %236, align 8, !dbg !834
  store %struct._GSList* %237, %struct._GSList** %17, align 8, !dbg !835
  br label %73, !dbg !836, !llvm.loop !837

; <label>:238:                                    ; preds = %73
  %239 = load i8*, i8** %18, align 8, !dbg !838
  call void @g_free(i8* %239), !dbg !839
  %240 = load i32, i32* %21, align 4, !dbg !840
  %241 = icmp ne i32 %240, 0, !dbg !840
  br i1 %241, label %246, label %242, !dbg !842

; <label>:242:                                    ; preds = %238
  %243 = load i32, i32* %13, align 4, !dbg !843
  %244 = and i32 %243, 4, !dbg !845
  %245 = icmp eq i32 %244, 0, !dbg !846
  br i1 %245, label %246, label %248, !dbg !847

; <label>:246:                                    ; preds = %242, %238
  %247 = load i32, i32* %21, align 4, !dbg !848
  store i32 %247, i32* %7, align 4, !dbg !849
  br label %253, !dbg !849

; <label>:248:                                    ; preds = %242
  %249 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %14, align 8, !dbg !850
  %250 = load i8*, i8** %12, align 8, !dbg !851
  %251 = load i32, i32* %13, align 4, !dbg !852
  %252 = call i32 @ignore_check_replies(%struct._CHANNEL_REC* %249, i8* %250, i32 %251), !dbg !853
  store i32 %252, i32* %7, align 4, !dbg !854
  br label %253, !dbg !854

; <label>:253:                                    ; preds = %248, %246
  %254 = load i32, i32* %7, align 4, !dbg !855
  ret i32 %254, !dbg !855
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC*, i8*) #2

declare %struct._NICK_REC* @nicklist_find(%struct._CHANNEL_REC*, i8*) #2

declare void @nicklist_set_host(%struct._CHANNEL_REC*, %struct._NICK_REC*, i8*) #2

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #2

declare noalias i8* @g_strconcat(i8*, ...) #2

declare i32 @g_ascii_strcasecmp(i8*, i8*) #2

declare i32 @strarray_find(i8**, i8*) #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #3

declare i32 @match_wildcards(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @ignore_match_level(%struct._IGNORE_REC*, i32) #0 !dbg !856 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._IGNORE_REC*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct._IGNORE_REC* %0, %struct._IGNORE_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IGNORE_REC** %4, metadata !859, metadata !580), !dbg !860
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !861, metadata !580), !dbg !862
  %8 = load i32, i32* %5, align 4, !dbg !863
  %9 = and i32 %8, 301989888, !dbg !865
  %10 = icmp ne i32 %9, 0, !dbg !865
  br i1 %10, label %11, label %32, !dbg !866

; <label>:11:                                     ; preds = %2
  call void @llvm.dbg.declare(metadata i32* %6, metadata !867, metadata !580), !dbg !869
  %12 = load i32, i32* %5, align 4, !dbg !870
  %13 = and i32 %12, 301989888, !dbg !871
  store i32 %13, i32* %6, align 4, !dbg !869
  call void @llvm.dbg.declare(metadata i32* %7, metadata !872, metadata !580), !dbg !873
  %14 = load i32, i32* %5, align 4, !dbg !874
  %15 = and i32 %14, -301989889, !dbg !875
  store i32 %15, i32* %7, align 4, !dbg !873
  %16 = load i32, i32* %7, align 4, !dbg !876
  %17 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %4, align 8, !dbg !877
  %18 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %17, i32 0, i32 0, !dbg !878
  %19 = load i32, i32* %18, align 8, !dbg !878
  %20 = and i32 %16, %19, !dbg !879
  %21 = icmp ne i32 %20, 0, !dbg !879
  br i1 %21, label %22, label %29, !dbg !880

; <label>:22:                                     ; preds = %11
  %23 = load i32, i32* %6, align 4, !dbg !881
  %24 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %4, align 8, !dbg !883
  %25 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %24, i32 0, i32 0, !dbg !884
  %26 = load i32, i32* %25, align 8, !dbg !884
  %27 = and i32 %23, %26, !dbg !885
  %28 = icmp ne i32 %27, 0, !dbg !886
  br label %29

; <label>:29:                                     ; preds = %22, %11
  %30 = phi i1 [ false, %11 ], [ %28, %22 ]
  %31 = zext i1 %30 to i32, !dbg !887
  store i32 %31, i32* %3, align 4, !dbg !889
  br label %45, !dbg !889

; <label>:32:                                     ; preds = %2
  %33 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %4, align 8, !dbg !890
  %34 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %33, i32 0, i32 0, !dbg !892
  %35 = load i32, i32* %34, align 8, !dbg !892
  %36 = and i32 %35, 301989888, !dbg !893
  %37 = icmp ne i32 %36, 0, !dbg !893
  br i1 %37, label %44, label %38, !dbg !894

; <label>:38:                                     ; preds = %32
  %39 = load i32, i32* %5, align 4, !dbg !895
  %40 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %4, align 8, !dbg !897
  %41 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %40, i32 0, i32 0, !dbg !898
  %42 = load i32, i32* %41, align 8, !dbg !898
  %43 = and i32 %39, %42, !dbg !899
  store i32 %43, i32* %3, align 4, !dbg !900
  br label %45, !dbg !900

; <label>:44:                                     ; preds = %32
  store i32 0, i32* %3, align 4, !dbg !901
  br label %45, !dbg !901

; <label>:45:                                     ; preds = %44, %38, %29
  %46 = load i32, i32* %3, align 4, !dbg !903
  ret i32 %46, !dbg !903
}

; Function Attrs: nounwind uwtable
define internal i32 @ignore_match_pattern(%struct._IGNORE_REC*, i8*) #0 !dbg !904 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._IGNORE_REC*, align 8
  %5 = alloca i8*, align 8
  store %struct._IGNORE_REC* %0, %struct._IGNORE_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._IGNORE_REC** %4, metadata !907, metadata !580), !dbg !908
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !909, metadata !580), !dbg !910
  %6 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %4, align 8, !dbg !911
  %7 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %6, i32 0, i32 4, !dbg !913
  %8 = load i8*, i8** %7, align 8, !dbg !913
  %9 = icmp eq i8* %8, null, !dbg !914
  br i1 %9, label %10, label %11, !dbg !915

; <label>:10:                                     ; preds = %2
  store i32 1, i32* %3, align 4, !dbg !916
  br label %64, !dbg !916

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** %5, align 8, !dbg !917
  %13 = icmp eq i8* %12, null, !dbg !919
  br i1 %13, label %14, label %15, !dbg !920

; <label>:14:                                     ; preds = %11
  store i32 0, i32* %3, align 4, !dbg !921
  br label %64, !dbg !921

; <label>:15:                                     ; preds = %11
  %16 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %4, align 8, !dbg !922
  %17 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %16, i32 0, i32 6, !dbg !924
  %18 = load i8, i8* %17, align 8, !dbg !924
  %19 = lshr i8 %18, 1, !dbg !924
  %20 = and i8 %19, 1, !dbg !924
  %21 = zext i8 %20 to i32, !dbg !924
  %22 = icmp ne i32 %21, 0, !dbg !922
  br i1 %22, label %23, label %38, !dbg !925

; <label>:23:                                     ; preds = %15
  %24 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %4, align 8, !dbg !926
  %25 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %24, i32 0, i32 7, !dbg !928
  %26 = load %struct._GRegex*, %struct._GRegex** %25, align 8, !dbg !928
  %27 = icmp ne %struct._GRegex* %26, null, !dbg !929
  br i1 %27, label %28, label %35, !dbg !930

; <label>:28:                                     ; preds = %23
  %29 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %4, align 8, !dbg !931
  %30 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %29, i32 0, i32 7, !dbg !932
  %31 = load %struct._GRegex*, %struct._GRegex** %30, align 8, !dbg !932
  %32 = load i8*, i8** %5, align 8, !dbg !933
  %33 = call i32 @i_regex_match(%struct._GRegex* %31, i8* %32, i32 0, %struct._MatchInfo** null), !dbg !934
  %34 = icmp ne i32 %33, 0, !dbg !935
  br label %35

; <label>:35:                                     ; preds = %28, %23
  %36 = phi i1 [ false, %23 ], [ %34, %28 ]
  %37 = zext i1 %36 to i32, !dbg !937
  store i32 %37, i32* %3, align 4, !dbg !939
  br label %64, !dbg !939

; <label>:38:                                     ; preds = %15
  %39 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %4, align 8, !dbg !940
  %40 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %39, i32 0, i32 6, !dbg !941
  %41 = load i8, i8* %40, align 8, !dbg !941
  %42 = lshr i8 %41, 2, !dbg !941
  %43 = and i8 %42, 1, !dbg !941
  %44 = zext i8 %43 to i32, !dbg !941
  %45 = icmp ne i32 %44, 0, !dbg !940
  br i1 %45, label %46, label %54, !dbg !940

; <label>:46:                                     ; preds = %38
  %47 = load i8*, i8** %5, align 8, !dbg !942
  %48 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %4, align 8, !dbg !943
  %49 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %48, i32 0, i32 4, !dbg !944
  %50 = load i8*, i8** %49, align 8, !dbg !944
  %51 = call i8* @stristr_full(i8* %47, i8* %50), !dbg !945
  %52 = icmp ne i8* %51, null, !dbg !946
  %53 = zext i1 %52 to i32, !dbg !946
  br label %62, !dbg !947

; <label>:54:                                     ; preds = %38
  %55 = load i8*, i8** %5, align 8, !dbg !949
  %56 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %4, align 8, !dbg !950
  %57 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %56, i32 0, i32 4, !dbg !951
  %58 = load i8*, i8** %57, align 8, !dbg !951
  %59 = call i8* @stristr(i8* %55, i8* %58), !dbg !952
  %60 = icmp ne i8* %59, null, !dbg !953
  %61 = zext i1 %60 to i32, !dbg !953
  br label %62, !dbg !954

; <label>:62:                                     ; preds = %54, %46
  %63 = phi i32 [ %53, %46 ], [ %61, %54 ], !dbg !956
  store i32 %63, i32* %3, align 4, !dbg !958
  br label %64, !dbg !958

; <label>:64:                                     ; preds = %62, %35, %14, %10
  %65 = load i32, i32* %3, align 4, !dbg !959
  ret i32 %65, !dbg !959
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare void @g_free(i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @ignore_check_replies(%struct._CHANNEL_REC*, i8*, i32) #0 !dbg !960 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._CHANNEL_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._GSList*, align 8
  %9 = alloca %struct._IGNORE_REC*, align 8
  store %struct._CHANNEL_REC* %0, %struct._CHANNEL_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %5, metadata !963, metadata !580), !dbg !964
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !965, metadata !580), !dbg !966
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !967, metadata !580), !dbg !968
  call void @llvm.dbg.declare(metadata %struct._GSList** %8, metadata !969, metadata !580), !dbg !970
  %10 = load i8*, i8** %6, align 8, !dbg !971
  %11 = icmp eq i8* %10, null, !dbg !973
  br i1 %11, label %15, label %12, !dbg !974

; <label>:12:                                     ; preds = %3
  %13 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %5, align 8, !dbg !975
  %14 = icmp eq %struct._CHANNEL_REC* %13, null, !dbg !977
  br i1 %14, label %15, label %16, !dbg !978

; <label>:15:                                     ; preds = %12, %3
  store i32 0, i32* %4, align 4, !dbg !979
  br label %75, !dbg !979

; <label>:16:                                     ; preds = %12
  %17 = load %struct._GSList*, %struct._GSList** @ignores, align 8, !dbg !980
  store %struct._GSList* %17, %struct._GSList** %8, align 8, !dbg !982
  br label %18, !dbg !983

; <label>:18:                                     ; preds = %70, %16
  %19 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !984
  %20 = icmp ne %struct._GSList* %19, null, !dbg !987
  br i1 %20, label %21, label %74, !dbg !988

; <label>:21:                                     ; preds = %18
  call void @llvm.dbg.declare(metadata %struct._IGNORE_REC** %9, metadata !989, metadata !580), !dbg !991
  %22 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !992
  %23 = getelementptr inbounds %struct._GSList, %struct._GSList* %22, i32 0, i32 0, !dbg !993
  %24 = load i8*, i8** %23, align 8, !dbg !993
  %25 = bitcast i8* %24 to %struct._IGNORE_REC*, !dbg !992
  store %struct._IGNORE_REC* %25, %struct._IGNORE_REC** %9, align 8, !dbg !991
  %26 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %9, align 8, !dbg !994
  %27 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %26, i32 0, i32 1, !dbg !996
  %28 = load i8*, i8** %27, align 8, !dbg !996
  %29 = icmp ne i8* %28, null, !dbg !997
  br i1 %29, label %30, label %69, !dbg !998

; <label>:30:                                     ; preds = %21
  %31 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %9, align 8, !dbg !999
  %32 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %31, i32 0, i32 6, !dbg !1001
  %33 = load i8, i8* %32, align 8, !dbg !1001
  %34 = lshr i8 %33, 3, !dbg !1001
  %35 = and i8 %34, 1, !dbg !1001
  %36 = zext i8 %35 to i32, !dbg !1001
  %37 = icmp ne i32 %36, 0, !dbg !999
  br i1 %37, label %38, label %69, !dbg !1002

; <label>:38:                                     ; preds = %30
  %39 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %9, align 8, !dbg !1003
  %40 = load i32, i32* %7, align 4, !dbg !1004
  %41 = call i32 @ignore_match_level(%struct._IGNORE_REC* %39, i32 %40), !dbg !1005
  %42 = icmp ne i32 %41, 0, !dbg !1005
  br i1 %42, label %43, label %69, !dbg !1006

; <label>:43:                                     ; preds = %38
  %44 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %9, align 8, !dbg !1007
  %45 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %44, i32 0, i32 3, !dbg !1008
  %46 = load i8**, i8*** %45, align 8, !dbg !1008
  %47 = icmp eq i8** %46, null, !dbg !1009
  br i1 %47, label %62, label %48, !dbg !1010

; <label>:48:                                     ; preds = %43
  %49 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %5, align 8, !dbg !1011
  %50 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %49, i32 0, i32 6, !dbg !1012
  %51 = load i8*, i8** %50, align 8, !dbg !1012
  %52 = icmp ne i8* %51, null, !dbg !1013
  br i1 %52, label %53, label %69, !dbg !1014

; <label>:53:                                     ; preds = %48
  %54 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %9, align 8, !dbg !1015
  %55 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %54, i32 0, i32 3, !dbg !1017
  %56 = load i8**, i8*** %55, align 8, !dbg !1017
  %57 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %5, align 8, !dbg !1018
  %58 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %57, i32 0, i32 6, !dbg !1019
  %59 = load i8*, i8** %58, align 8, !dbg !1019
  %60 = call i32 @strarray_find(i8** %56, i8* %59), !dbg !1020
  %61 = icmp ne i32 %60, -1, !dbg !1021
  br i1 %61, label %62, label %69, !dbg !1022

; <label>:62:                                     ; preds = %53, %43
  %63 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %9, align 8, !dbg !1023
  %64 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %5, align 8, !dbg !1024
  %65 = load i8*, i8** %6, align 8, !dbg !1025
  %66 = call i32 @ignore_check_replies_rec(%struct._IGNORE_REC* %63, %struct._CHANNEL_REC* %64, i8* %65), !dbg !1026
  %67 = icmp ne i32 %66, 0, !dbg !1026
  br i1 %67, label %68, label %69, !dbg !1027

; <label>:68:                                     ; preds = %62
  store i32 1, i32* %4, align 4, !dbg !1029
  br label %75, !dbg !1029

; <label>:69:                                     ; preds = %62, %53, %48, %38, %30, %21
  br label %70, !dbg !1030

; <label>:70:                                     ; preds = %69
  %71 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !1031
  %72 = getelementptr inbounds %struct._GSList, %struct._GSList* %71, i32 0, i32 1, !dbg !1033
  %73 = load %struct._GSList*, %struct._GSList** %72, align 8, !dbg !1033
  store %struct._GSList* %73, %struct._GSList** %8, align 8, !dbg !1034
  br label %18, !dbg !1035, !llvm.loop !1036

; <label>:74:                                     ; preds = %18
  store i32 0, i32* %4, align 4, !dbg !1038
  br label %75, !dbg !1038

; <label>:75:                                     ; preds = %74, %68, %15
  %76 = load i32, i32* %4, align 4, !dbg !1039
  ret i32 %76, !dbg !1039
}

; Function Attrs: nounwind uwtable
define %struct._IGNORE_REC* @ignore_find_full(i8*, i8*, i8*, i8**, i32) #0 !dbg !1040 {
  %6 = alloca %struct._IGNORE_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct._GSList*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct._IGNORE_REC*, align 8
  store i8* %0, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1044, metadata !580), !dbg !1045
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1046, metadata !580), !dbg !1047
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1048, metadata !580), !dbg !1049
  store i8** %3, i8*** %10, align 8
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !1050, metadata !580), !dbg !1051
  store i32 %4, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1052, metadata !580), !dbg !1053
  call void @llvm.dbg.declare(metadata %struct._GSList** %12, metadata !1054, metadata !580), !dbg !1055
  call void @llvm.dbg.declare(metadata i8*** %13, metadata !1056, metadata !580), !dbg !1057
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1058, metadata !580), !dbg !1059
  %16 = load i8*, i8** %8, align 8, !dbg !1060
  %17 = icmp ne i8* %16, null, !dbg !1062
  br i1 %17, label %18, label %28, !dbg !1063

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %8, align 8, !dbg !1064
  %20 = load i8, i8* %19, align 1, !dbg !1066
  %21 = sext i8 %20 to i32, !dbg !1066
  %22 = icmp eq i32 %21, 0, !dbg !1067
  br i1 %22, label %27, label %23, !dbg !1068

; <label>:23:                                     ; preds = %18
  %24 = load i8*, i8** %8, align 8, !dbg !1069
  %25 = call i32 @g_strcmp0(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)), !dbg !1071
  %26 = icmp eq i32 %25, 0, !dbg !1072
  br i1 %26, label %27, label %28, !dbg !1073

; <label>:27:                                     ; preds = %23, %18
  store i8* null, i8** %8, align 8, !dbg !1074
  br label %28, !dbg !1075

; <label>:28:                                     ; preds = %27, %23, %5
  %29 = load i8*, i8** %7, align 8, !dbg !1076
  %30 = icmp ne i8* %29, null, !dbg !1077
  br i1 %30, label %31, label %35, !dbg !1078

; <label>:31:                                     ; preds = %28
  %32 = load i8*, i8** %7, align 8, !dbg !1079
  %33 = call i32 @g_strcmp0(i8* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)), !dbg !1081
  %34 = icmp eq i32 %33, 0, !dbg !1082
  br label %35

; <label>:35:                                     ; preds = %31, %28
  %36 = phi i1 [ false, %28 ], [ %34, %31 ]
  %37 = zext i1 %36 to i32, !dbg !1083
  store i32 %37, i32* %14, align 4, !dbg !1085
  %38 = load %struct._GSList*, %struct._GSList** @ignores, align 8, !dbg !1086
  store %struct._GSList* %38, %struct._GSList** %12, align 8, !dbg !1088
  br label %39, !dbg !1089

; <label>:39:                                     ; preds = %251, %35
  %40 = load %struct._GSList*, %struct._GSList** %12, align 8, !dbg !1090
  %41 = icmp ne %struct._GSList* %40, null, !dbg !1093
  br i1 %41, label %42, label %255, !dbg !1094

; <label>:42:                                     ; preds = %39
  call void @llvm.dbg.declare(metadata %struct._IGNORE_REC** %15, metadata !1095, metadata !580), !dbg !1097
  %43 = load %struct._GSList*, %struct._GSList** %12, align 8, !dbg !1098
  %44 = getelementptr inbounds %struct._GSList, %struct._GSList* %43, i32 0, i32 0, !dbg !1099
  %45 = load i8*, i8** %44, align 8, !dbg !1099
  %46 = bitcast i8* %45 to %struct._IGNORE_REC*, !dbg !1098
  store %struct._IGNORE_REC* %46, %struct._IGNORE_REC** %15, align 8, !dbg !1097
  %47 = load i32, i32* %14, align 4, !dbg !1100
  %48 = icmp ne i32 %47, 0, !dbg !1100
  br i1 %48, label %78, label %49, !dbg !1102

; <label>:49:                                     ; preds = %42
  %50 = load i8*, i8** %7, align 8, !dbg !1103
  %51 = icmp eq i8* %50, null, !dbg !1106
  br i1 %51, label %52, label %57, !dbg !1107

; <label>:52:                                     ; preds = %49
  %53 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %15, align 8, !dbg !1108
  %54 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %53, i32 0, i32 2, !dbg !1110
  %55 = load i8*, i8** %54, align 8, !dbg !1110
  %56 = icmp ne i8* %55, null, !dbg !1111
  br i1 %56, label %65, label %57, !dbg !1112

; <label>:57:                                     ; preds = %52, %49
  %58 = load i8*, i8** %7, align 8, !dbg !1113
  %59 = icmp ne i8* %58, null, !dbg !1114
  br i1 %59, label %60, label %66, !dbg !1115

; <label>:60:                                     ; preds = %57
  %61 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %15, align 8, !dbg !1116
  %62 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %61, i32 0, i32 2, !dbg !1117
  %63 = load i8*, i8** %62, align 8, !dbg !1117
  %64 = icmp eq i8* %63, null, !dbg !1118
  br i1 %64, label %65, label %66, !dbg !1119

; <label>:65:                                     ; preds = %60, %52
  br label %251, !dbg !1121

; <label>:66:                                     ; preds = %60, %57
  %67 = load i8*, i8** %7, align 8, !dbg !1122
  %68 = icmp ne i8* %67, null, !dbg !1124
  br i1 %68, label %69, label %77, !dbg !1125

; <label>:69:                                     ; preds = %66
  %70 = load i8*, i8** %7, align 8, !dbg !1126
  %71 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %15, align 8, !dbg !1128
  %72 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %71, i32 0, i32 2, !dbg !1129
  %73 = load i8*, i8** %72, align 8, !dbg !1129
  %74 = call i32 @g_ascii_strcasecmp(i8* %70, i8* %73), !dbg !1130
  %75 = icmp ne i32 %74, 0, !dbg !1131
  br i1 %75, label %76, label %77, !dbg !1132

; <label>:76:                                     ; preds = %69
  br label %251, !dbg !1133

; <label>:77:                                     ; preds = %69, %66
  br label %78, !dbg !1134

; <label>:78:                                     ; preds = %77, %42
  %79 = load i32, i32* %11, align 4, !dbg !1135
  %80 = and i32 %79, 2, !dbg !1137
  %81 = icmp ne i32 %80, 0, !dbg !1137
  br i1 %81, label %82, label %89, !dbg !1138

; <label>:82:                                     ; preds = %78
  %83 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %15, align 8, !dbg !1139
  %84 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %83, i32 0, i32 0, !dbg !1141
  %85 = load i32, i32* %84, align 8, !dbg !1141
  %86 = and i32 %85, 33554432, !dbg !1142
  %87 = icmp eq i32 %86, 0, !dbg !1143
  br i1 %87, label %88, label %89, !dbg !1144

; <label>:88:                                     ; preds = %82
  br label %251, !dbg !1145

; <label>:89:                                     ; preds = %82, %78
  %90 = load i32, i32* %11, align 4, !dbg !1146
  %91 = and i32 %90, 2, !dbg !1148
  %92 = icmp ne i32 %91, 0, !dbg !1148
  br i1 %92, label %100, label %93, !dbg !1149

; <label>:93:                                     ; preds = %89
  %94 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %15, align 8, !dbg !1150
  %95 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %94, i32 0, i32 0, !dbg !1152
  %96 = load i32, i32* %95, align 8, !dbg !1152
  %97 = and i32 %96, 33554432, !dbg !1153
  %98 = icmp ne i32 %97, 0, !dbg !1154
  br i1 %98, label %99, label %100, !dbg !1155

; <label>:99:                                     ; preds = %93
  br label %251, !dbg !1156

; <label>:100:                                    ; preds = %93, %89
  %101 = load i32, i32* %11, align 4, !dbg !1157
  %102 = and i32 %101, 4, !dbg !1159
  %103 = icmp ne i32 %102, 0, !dbg !1159
  br i1 %103, label %104, label %111, !dbg !1160

; <label>:104:                                    ; preds = %100
  %105 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %15, align 8, !dbg !1161
  %106 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %105, i32 0, i32 0, !dbg !1163
  %107 = load i32, i32* %106, align 8, !dbg !1163
  %108 = and i32 %107, 268435456, !dbg !1164
  %109 = icmp eq i32 %108, 0, !dbg !1165
  br i1 %109, label %110, label %111, !dbg !1166

; <label>:110:                                    ; preds = %104
  br label %251, !dbg !1167

; <label>:111:                                    ; preds = %104, %100
  %112 = load i32, i32* %11, align 4, !dbg !1168
  %113 = and i32 %112, 4, !dbg !1170
  %114 = icmp ne i32 %113, 0, !dbg !1170
  br i1 %114, label %122, label %115, !dbg !1171

; <label>:115:                                    ; preds = %111
  %116 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %15, align 8, !dbg !1172
  %117 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %116, i32 0, i32 0, !dbg !1174
  %118 = load i32, i32* %117, align 8, !dbg !1174
  %119 = and i32 %118, 268435456, !dbg !1175
  %120 = icmp ne i32 %119, 0, !dbg !1176
  br i1 %120, label %121, label %122, !dbg !1177

; <label>:121:                                    ; preds = %115
  br label %251, !dbg !1178

; <label>:122:                                    ; preds = %115, %111
  %123 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %15, align 8, !dbg !1179
  %124 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %123, i32 0, i32 1, !dbg !1181
  %125 = load i8*, i8** %124, align 8, !dbg !1181
  %126 = icmp eq i8* %125, null, !dbg !1182
  br i1 %126, label %127, label %130, !dbg !1183

; <label>:127:                                    ; preds = %122
  %128 = load i8*, i8** %8, align 8, !dbg !1184
  %129 = icmp ne i8* %128, null, !dbg !1186
  br i1 %129, label %138, label %130, !dbg !1187

; <label>:130:                                    ; preds = %127, %122
  %131 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %15, align 8, !dbg !1188
  %132 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %131, i32 0, i32 1, !dbg !1189
  %133 = load i8*, i8** %132, align 8, !dbg !1189
  %134 = icmp ne i8* %133, null, !dbg !1190
  br i1 %134, label %135, label %139, !dbg !1191

; <label>:135:                                    ; preds = %130
  %136 = load i8*, i8** %8, align 8, !dbg !1192
  %137 = icmp eq i8* %136, null, !dbg !1193
  br i1 %137, label %138, label %139, !dbg !1194

; <label>:138:                                    ; preds = %135, %127
  br label %251, !dbg !1196

; <label>:139:                                    ; preds = %135, %130
  %140 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %15, align 8, !dbg !1197
  %141 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %140, i32 0, i32 1, !dbg !1199
  %142 = load i8*, i8** %141, align 8, !dbg !1199
  %143 = icmp ne i8* %142, null, !dbg !1200
  br i1 %143, label %144, label %152, !dbg !1201

; <label>:144:                                    ; preds = %139
  %145 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %15, align 8, !dbg !1202
  %146 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %145, i32 0, i32 1, !dbg !1204
  %147 = load i8*, i8** %146, align 8, !dbg !1204
  %148 = load i8*, i8** %8, align 8, !dbg !1205
  %149 = call i32 @g_ascii_strcasecmp(i8* %147, i8* %148), !dbg !1206
  %150 = icmp ne i32 %149, 0, !dbg !1207
  br i1 %150, label %151, label %152, !dbg !1208

; <label>:151:                                    ; preds = %144
  br label %251, !dbg !1209

; <label>:152:                                    ; preds = %144, %139
  %153 = load i32, i32* %11, align 4, !dbg !1210
  %154 = and i32 %153, 1, !dbg !1212
  %155 = icmp ne i32 %154, 0, !dbg !1212
  br i1 %155, label %156, label %187, !dbg !1213

; <label>:156:                                    ; preds = %152
  %157 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %15, align 8, !dbg !1214
  %158 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %157, i32 0, i32 4, !dbg !1217
  %159 = load i8*, i8** %158, align 8, !dbg !1217
  %160 = icmp eq i8* %159, null, !dbg !1218
  br i1 %160, label %161, label %164, !dbg !1219

; <label>:161:                                    ; preds = %156
  %162 = load i8*, i8** %9, align 8, !dbg !1220
  %163 = icmp ne i8* %162, null, !dbg !1222
  br i1 %163, label %172, label %164, !dbg !1223

; <label>:164:                                    ; preds = %161, %156
  %165 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %15, align 8, !dbg !1224
  %166 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %165, i32 0, i32 4, !dbg !1225
  %167 = load i8*, i8** %166, align 8, !dbg !1225
  %168 = icmp ne i8* %167, null, !dbg !1226
  br i1 %168, label %169, label %173, !dbg !1227

; <label>:169:                                    ; preds = %164
  %170 = load i8*, i8** %9, align 8, !dbg !1228
  %171 = icmp eq i8* %170, null, !dbg !1229
  br i1 %171, label %172, label %173, !dbg !1230

; <label>:172:                                    ; preds = %169, %161
  br label %251, !dbg !1232

; <label>:173:                                    ; preds = %169, %164
  %174 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %15, align 8, !dbg !1233
  %175 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %174, i32 0, i32 4, !dbg !1235
  %176 = load i8*, i8** %175, align 8, !dbg !1235
  %177 = icmp ne i8* %176, null, !dbg !1236
  br i1 %177, label %178, label %186, !dbg !1237

; <label>:178:                                    ; preds = %173
  %179 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %15, align 8, !dbg !1238
  %180 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %179, i32 0, i32 4, !dbg !1240
  %181 = load i8*, i8** %180, align 8, !dbg !1240
  %182 = load i8*, i8** %9, align 8, !dbg !1241
  %183 = call i32 @g_ascii_strcasecmp(i8* %181, i8* %182), !dbg !1242
  %184 = icmp ne i32 %183, 0, !dbg !1243
  br i1 %184, label %185, label %186, !dbg !1244

; <label>:185:                                    ; preds = %178
  br label %251, !dbg !1245

; <label>:186:                                    ; preds = %178, %173
  br label %187, !dbg !1246

; <label>:187:                                    ; preds = %186, %152
  %188 = load i8**, i8*** %10, align 8, !dbg !1247
  %189 = icmp eq i8** %188, null, !dbg !1249
  br i1 %189, label %190, label %197, !dbg !1250

; <label>:190:                                    ; preds = %187
  %191 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %15, align 8, !dbg !1251
  %192 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %191, i32 0, i32 3, !dbg !1253
  %193 = load i8**, i8*** %192, align 8, !dbg !1253
  %194 = icmp eq i8** %193, null, !dbg !1254
  br i1 %194, label %195, label %197, !dbg !1255

; <label>:195:                                    ; preds = %190
  %196 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %15, align 8, !dbg !1256
  store %struct._IGNORE_REC* %196, %struct._IGNORE_REC** %6, align 8, !dbg !1257
  br label %256, !dbg !1257

; <label>:197:                                    ; preds = %190, %187
  %198 = load i8**, i8*** %10, align 8, !dbg !1258
  %199 = icmp ne i8** %198, null, !dbg !1260
  br i1 %199, label %200, label %207, !dbg !1261

; <label>:200:                                    ; preds = %197
  %201 = load i8**, i8*** %10, align 8, !dbg !1262
  %202 = load i8*, i8** %201, align 8, !dbg !1264
  %203 = call i32 @g_strcmp0(i8* %202, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)), !dbg !1265
  %204 = icmp eq i32 %203, 0, !dbg !1266
  br i1 %204, label %205, label %207, !dbg !1267

; <label>:205:                                    ; preds = %200
  %206 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %15, align 8, !dbg !1268
  store %struct._IGNORE_REC* %206, %struct._IGNORE_REC** %6, align 8, !dbg !1269
  br label %256, !dbg !1269

; <label>:207:                                    ; preds = %200, %197
  %208 = load i8**, i8*** %10, align 8, !dbg !1270
  %209 = icmp eq i8** %208, null, !dbg !1272
  br i1 %209, label %215, label %210, !dbg !1273

; <label>:210:                                    ; preds = %207
  %211 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %15, align 8, !dbg !1274
  %212 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %211, i32 0, i32 3, !dbg !1276
  %213 = load i8**, i8*** %212, align 8, !dbg !1276
  %214 = icmp eq i8** %213, null, !dbg !1277
  br i1 %214, label %215, label %216, !dbg !1278

; <label>:215:                                    ; preds = %210, %207
  br label %251, !dbg !1279

; <label>:216:                                    ; preds = %210
  %217 = load i8**, i8*** %10, align 8, !dbg !1280
  %218 = call i32 @g_strv_length(i8** %217), !dbg !1282
  %219 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %15, align 8, !dbg !1283
  %220 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %219, i32 0, i32 3, !dbg !1284
  %221 = load i8**, i8*** %220, align 8, !dbg !1284
  %222 = call i32 @g_strv_length(i8** %221), !dbg !1285
  %223 = icmp ne i32 %218, %222, !dbg !1287
  br i1 %223, label %224, label %225, !dbg !1288

; <label>:224:                                    ; preds = %216
  br label %251, !dbg !1289

; <label>:225:                                    ; preds = %216
  %226 = load i8**, i8*** %10, align 8, !dbg !1290
  store i8** %226, i8*** %13, align 8, !dbg !1292
  br label %227, !dbg !1293

; <label>:227:                                    ; preds = %241, %225
  %228 = load i8**, i8*** %13, align 8, !dbg !1294
  %229 = load i8*, i8** %228, align 8, !dbg !1297
  %230 = icmp ne i8* %229, null, !dbg !1298
  br i1 %230, label %231, label %244, !dbg !1299

; <label>:231:                                    ; preds = %227
  %232 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %15, align 8, !dbg !1300
  %233 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %232, i32 0, i32 3, !dbg !1303
  %234 = load i8**, i8*** %233, align 8, !dbg !1303
  %235 = load i8**, i8*** %13, align 8, !dbg !1304
  %236 = load i8*, i8** %235, align 8, !dbg !1305
  %237 = call i32 @strarray_find(i8** %234, i8* %236), !dbg !1306
  %238 = icmp eq i32 %237, -1, !dbg !1307
  br i1 %238, label %239, label %240, !dbg !1308

; <label>:239:                                    ; preds = %231
  br label %244, !dbg !1309

; <label>:240:                                    ; preds = %231
  br label %241, !dbg !1310

; <label>:241:                                    ; preds = %240
  %242 = load i8**, i8*** %13, align 8, !dbg !1311
  %243 = getelementptr inbounds i8*, i8** %242, i32 1, !dbg !1311
  store i8** %243, i8*** %13, align 8, !dbg !1311
  br label %227, !dbg !1313, !llvm.loop !1314

; <label>:244:                                    ; preds = %239, %227
  %245 = load i8**, i8*** %13, align 8, !dbg !1316
  %246 = load i8*, i8** %245, align 8, !dbg !1318
  %247 = icmp eq i8* %246, null, !dbg !1319
  br i1 %247, label %248, label %250, !dbg !1320

; <label>:248:                                    ; preds = %244
  %249 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %15, align 8, !dbg !1321
  store %struct._IGNORE_REC* %249, %struct._IGNORE_REC** %6, align 8, !dbg !1322
  br label %256, !dbg !1322

; <label>:250:                                    ; preds = %244
  br label %251, !dbg !1323

; <label>:251:                                    ; preds = %250, %224, %215, %185, %172, %151, %138, %121, %110, %99, %88, %76, %65
  %252 = load %struct._GSList*, %struct._GSList** %12, align 8, !dbg !1324
  %253 = getelementptr inbounds %struct._GSList, %struct._GSList* %252, i32 0, i32 1, !dbg !1326
  %254 = load %struct._GSList*, %struct._GSList** %253, align 8, !dbg !1326
  store %struct._GSList* %254, %struct._GSList** %12, align 8, !dbg !1327
  br label %39, !dbg !1328, !llvm.loop !1329

; <label>:255:                                    ; preds = %39
  store %struct._IGNORE_REC* null, %struct._IGNORE_REC** %6, align 8, !dbg !1331
  br label %256, !dbg !1331

; <label>:256:                                    ; preds = %255, %248, %205, %195
  %257 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %6, align 8, !dbg !1332
  ret %struct._IGNORE_REC* %257, !dbg !1332
}

declare i32 @g_strcmp0(i8*, i8*) #2

declare i32 @g_strv_length(i8**) #2

; Function Attrs: nounwind uwtable
define %struct._IGNORE_REC* @ignore_find(i8*, i8*, i8**) #0 !dbg !1333 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1336, metadata !580), !dbg !1337
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1338, metadata !580), !dbg !1339
  store i8** %2, i8*** %6, align 8
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !1340, metadata !580), !dbg !1341
  %7 = load i8*, i8** %4, align 8, !dbg !1342
  %8 = load i8*, i8** %5, align 8, !dbg !1343
  %9 = load i8**, i8*** %6, align 8, !dbg !1344
  %10 = call %struct._IGNORE_REC* @ignore_find_full(i8* %7, i8* %8, i8* null, i8** %9, i32 0), !dbg !1345
  ret %struct._IGNORE_REC* %10, !dbg !1346
}

; Function Attrs: nounwind uwtable
define %struct._IGNORE_REC* @ignore_find_noact(i8*, i8*, i8**, i32) #0 !dbg !1347 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1350, metadata !580), !dbg !1351
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1352, metadata !580), !dbg !1353
  store i8** %2, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !1354, metadata !580), !dbg !1355
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1356, metadata !580), !dbg !1357
  %9 = load i8*, i8** %5, align 8, !dbg !1358
  %10 = load i8*, i8** %6, align 8, !dbg !1359
  %11 = load i8**, i8*** %7, align 8, !dbg !1360
  %12 = call %struct._IGNORE_REC* @ignore_find_full(i8* %9, i8* %10, i8* null, i8** %11, i32 2), !dbg !1361
  ret %struct._IGNORE_REC* %12, !dbg !1362
}

; Function Attrs: nounwind uwtable
define %struct._IGNORE_REC* @ignore_find_hidden(i8*, i8*, i8**, i32) #0 !dbg !1363 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1364, metadata !580), !dbg !1365
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1366, metadata !580), !dbg !1367
  store i8** %2, i8*** %7, align 8
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !1368, metadata !580), !dbg !1369
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1370, metadata !580), !dbg !1371
  %9 = load i8*, i8** %5, align 8, !dbg !1372
  %10 = load i8*, i8** %6, align 8, !dbg !1373
  %11 = load i8**, i8*** %7, align 8, !dbg !1374
  %12 = call %struct._IGNORE_REC* @ignore_find_full(i8* %9, i8* %10, i8* null, i8** %11, i32 4), !dbg !1375
  ret %struct._IGNORE_REC* %12, !dbg !1376
}

; Function Attrs: nounwind uwtable
define void @ignore_add_rec(%struct._IGNORE_REC*) #0 !dbg !1377 {
  %2 = alloca %struct._IGNORE_REC*, align 8
  store %struct._IGNORE_REC* %0, %struct._IGNORE_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IGNORE_REC** %2, metadata !1380, metadata !580), !dbg !1381
  %3 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %2, align 8, !dbg !1382
  call void @ignore_init_rec(%struct._IGNORE_REC* %3), !dbg !1383
  %4 = load %struct._GSList*, %struct._GSList** @ignores, align 8, !dbg !1384
  %5 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %2, align 8, !dbg !1385
  %6 = bitcast %struct._IGNORE_REC* %5 to i8*, !dbg !1385
  %7 = call %struct._GSList* @g_slist_append(%struct._GSList* %4, i8* %6), !dbg !1386
  store %struct._GSList* %7, %struct._GSList** @ignores, align 8, !dbg !1387
  %8 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %2, align 8, !dbg !1388
  call void @ignore_set_config(%struct._IGNORE_REC* %8), !dbg !1389
  %9 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %2, align 8, !dbg !1390
  %10 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct._IGNORE_REC* %9), !dbg !1391
  %11 = load %struct.NICKMATCH_REC*, %struct.NICKMATCH_REC** @nickmatch, align 8, !dbg !1392
  call void @nickmatch_rebuild(%struct.NICKMATCH_REC* %11), !dbg !1393
  ret void, !dbg !1394
}

; Function Attrs: nounwind uwtable
define internal void @ignore_init_rec(%struct._IGNORE_REC*) #0 !dbg !1395 {
  %2 = alloca %struct._IGNORE_REC*, align 8
  %3 = alloca %struct._GError*, align 8
  store %struct._IGNORE_REC* %0, %struct._IGNORE_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IGNORE_REC** %2, metadata !1396, metadata !580), !dbg !1397
  %4 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %2, align 8, !dbg !1398
  %5 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %4, i32 0, i32 7, !dbg !1400
  %6 = load %struct._GRegex*, %struct._GRegex** %5, align 8, !dbg !1400
  %7 = icmp ne %struct._GRegex* %6, null, !dbg !1401
  br i1 %7, label %8, label %12, !dbg !1402

; <label>:8:                                      ; preds = %1
  %9 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %2, align 8, !dbg !1403
  %10 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %9, i32 0, i32 7, !dbg !1404
  %11 = load %struct._GRegex*, %struct._GRegex** %10, align 8, !dbg !1404
  call void @i_regex_unref(%struct._GRegex* %11), !dbg !1405
  br label %12, !dbg !1405

; <label>:12:                                     ; preds = %8, %1
  %13 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %2, align 8, !dbg !1406
  %14 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %13, i32 0, i32 6, !dbg !1408
  %15 = load i8, i8* %14, align 8, !dbg !1408
  %16 = lshr i8 %15, 1, !dbg !1408
  %17 = and i8 %16, 1, !dbg !1408
  %18 = zext i8 %17 to i32, !dbg !1408
  %19 = icmp ne i32 %18, 0, !dbg !1406
  br i1 %19, label %20, label %45, !dbg !1409

; <label>:20:                                     ; preds = %12
  %21 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %2, align 8, !dbg !1410
  %22 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %21, i32 0, i32 4, !dbg !1412
  %23 = load i8*, i8** %22, align 8, !dbg !1412
  %24 = icmp ne i8* %23, null, !dbg !1413
  br i1 %24, label %25, label %45, !dbg !1414

; <label>:25:                                     ; preds = %20
  call void @llvm.dbg.declare(metadata %struct._GError** %3, metadata !1415, metadata !580), !dbg !1417
  store %struct._GError* null, %struct._GError** %3, align 8, !dbg !1417
  %26 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %2, align 8, !dbg !1418
  %27 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %26, i32 0, i32 4, !dbg !1419
  %28 = load i8*, i8** %27, align 8, !dbg !1419
  %29 = call %struct._GRegex* @i_regex_new(i8* %28, i32 8193, i32 0, %struct._GError** %3), !dbg !1420
  %30 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %2, align 8, !dbg !1421
  %31 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %30, i32 0, i32 7, !dbg !1422
  store %struct._GRegex* %29, %struct._GRegex** %31, align 8, !dbg !1423
  %32 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %2, align 8, !dbg !1424
  %33 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %32, i32 0, i32 7, !dbg !1426
  %34 = load %struct._GRegex*, %struct._GRegex** %33, align 8, !dbg !1426
  %35 = icmp eq %struct._GRegex* %34, null, !dbg !1427
  br i1 %35, label %36, label %44, !dbg !1428

; <label>:36:                                     ; preds = %25
  %37 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %2, align 8, !dbg !1429
  %38 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %37, i32 0, i32 4, !dbg !1431
  %39 = load i8*, i8** %38, align 8, !dbg !1431
  %40 = load %struct._GError*, %struct._GError** %3, align 8, !dbg !1432
  %41 = getelementptr inbounds %struct._GError, %struct._GError* %40, i32 0, i32 2, !dbg !1433
  %42 = load i8*, i8** %41, align 8, !dbg !1433
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i32 0, i32 0), i8* %39, i8* %42), !dbg !1434
  %43 = load %struct._GError*, %struct._GError** %3, align 8, !dbg !1435
  call void @g_error_free(%struct._GError* %43), !dbg !1436
  br label %44, !dbg !1437

; <label>:44:                                     ; preds = %36, %25
  br label %45, !dbg !1438

; <label>:45:                                     ; preds = %44, %20, %12
  ret void, !dbg !1439
}

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @ignore_set_config(%struct._IGNORE_REC*) #0 !dbg !1440 {
  %2 = alloca %struct._IGNORE_REC*, align 8
  %3 = alloca %struct._CONFIG_NODE*, align 8
  %4 = alloca i8*, align 8
  store %struct._IGNORE_REC* %0, %struct._IGNORE_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IGNORE_REC** %2, metadata !1441, metadata !580), !dbg !1442
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %3, metadata !1443, metadata !580), !dbg !1451
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1452, metadata !580), !dbg !1453
  %5 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %2, align 8, !dbg !1454
  %6 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %5, i32 0, i32 0, !dbg !1456
  %7 = load i32, i32* %6, align 8, !dbg !1456
  %8 = icmp eq i32 %7, 0, !dbg !1457
  br i1 %8, label %9, label %10, !dbg !1458

; <label>:9:                                      ; preds = %1
  br label %125, !dbg !1459

; <label>:10:                                     ; preds = %1
  %11 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1460
  %12 = call %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i32 1), !dbg !1461
  store %struct._CONFIG_NODE* %12, %struct._CONFIG_NODE** %3, align 8, !dbg !1462
  %13 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1463
  %14 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1464
  %15 = call %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC* %13, %struct._CONFIG_NODE* %14, i8* null, i32 2), !dbg !1465
  store %struct._CONFIG_NODE* %15, %struct._CONFIG_NODE** %3, align 8, !dbg !1466
  %16 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %2, align 8, !dbg !1467
  %17 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %16, i32 0, i32 1, !dbg !1469
  %18 = load i8*, i8** %17, align 8, !dbg !1469
  %19 = icmp ne i8* %18, null, !dbg !1470
  br i1 %19, label %20, label %26, !dbg !1471

; <label>:20:                                     ; preds = %10
  %21 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1472
  %22 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1474
  %23 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %2, align 8, !dbg !1475
  %24 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %23, i32 0, i32 1, !dbg !1476
  %25 = load i8*, i8** %24, align 8, !dbg !1476
  call void @config_node_set_str(%struct._CONFIG_REC* %21, %struct._CONFIG_NODE* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* %25), !dbg !1477
  br label %26, !dbg !1477

; <label>:26:                                     ; preds = %20, %10
  %27 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %2, align 8, !dbg !1478
  %28 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %27, i32 0, i32 0, !dbg !1480
  %29 = load i32, i32* %28, align 8, !dbg !1480
  %30 = icmp ne i32 %29, 0, !dbg !1478
  br i1 %30, label %31, label %40, !dbg !1481

; <label>:31:                                     ; preds = %26
  %32 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %2, align 8, !dbg !1482
  %33 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %32, i32 0, i32 0, !dbg !1484
  %34 = load i32, i32* %33, align 8, !dbg !1484
  %35 = call i8* @bits2level(i32 %34), !dbg !1485
  store i8* %35, i8** %4, align 8, !dbg !1486
  %36 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1487
  %37 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1488
  %38 = load i8*, i8** %4, align 8, !dbg !1489
  call void @config_node_set_str(%struct._CONFIG_REC* %36, %struct._CONFIG_NODE* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* %38), !dbg !1490
  %39 = load i8*, i8** %4, align 8, !dbg !1491
  call void @g_free(i8* %39), !dbg !1492
  br label %40, !dbg !1493

; <label>:40:                                     ; preds = %31, %26
  %41 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1494
  %42 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1495
  %43 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %2, align 8, !dbg !1496
  %44 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %43, i32 0, i32 4, !dbg !1497
  %45 = load i8*, i8** %44, align 8, !dbg !1497
  call void @config_node_set_str(%struct._CONFIG_REC* %41, %struct._CONFIG_NODE* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i8* %45), !dbg !1498
  %46 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %2, align 8, !dbg !1499
  %47 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %46, i32 0, i32 6, !dbg !1501
  %48 = load i8, i8* %47, align 8, !dbg !1501
  %49 = and i8 %48, 1, !dbg !1501
  %50 = zext i8 %49 to i32, !dbg !1501
  %51 = icmp ne i32 %50, 0, !dbg !1499
  br i1 %51, label %52, label %55, !dbg !1502

; <label>:52:                                     ; preds = %40
  %53 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1503
  %54 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1505
  call void @config_node_set_bool(%struct._CONFIG_REC* %53, %struct._CONFIG_NODE* %54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i32 1), !dbg !1506
  br label %55, !dbg !1506

; <label>:55:                                     ; preds = %52, %40
  %56 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %2, align 8, !dbg !1507
  %57 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %56, i32 0, i32 6, !dbg !1509
  %58 = load i8, i8* %57, align 8, !dbg !1509
  %59 = lshr i8 %58, 1, !dbg !1509
  %60 = and i8 %59, 1, !dbg !1509
  %61 = zext i8 %60 to i32, !dbg !1509
  %62 = icmp ne i32 %61, 0, !dbg !1507
  br i1 %62, label %63, label %66, !dbg !1510

; <label>:63:                                     ; preds = %55
  %64 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1511
  %65 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1513
  call void @config_node_set_bool(%struct._CONFIG_REC* %64, %struct._CONFIG_NODE* %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i32 1), !dbg !1514
  br label %66, !dbg !1514

; <label>:66:                                     ; preds = %63, %55
  %67 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %2, align 8, !dbg !1515
  %68 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %67, i32 0, i32 6, !dbg !1517
  %69 = load i8, i8* %68, align 8, !dbg !1517
  %70 = lshr i8 %69, 2, !dbg !1517
  %71 = and i8 %70, 1, !dbg !1517
  %72 = zext i8 %71 to i32, !dbg !1517
  %73 = icmp ne i32 %72, 0, !dbg !1515
  br i1 %73, label %74, label %77, !dbg !1518

; <label>:74:                                     ; preds = %66
  %75 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1519
  %76 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1521
  call void @config_node_set_bool(%struct._CONFIG_REC* %75, %struct._CONFIG_NODE* %76, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i32 1), !dbg !1522
  br label %77, !dbg !1522

; <label>:77:                                     ; preds = %74, %66
  %78 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %2, align 8, !dbg !1523
  %79 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %78, i32 0, i32 6, !dbg !1525
  %80 = load i8, i8* %79, align 8, !dbg !1525
  %81 = lshr i8 %80, 3, !dbg !1525
  %82 = and i8 %81, 1, !dbg !1525
  %83 = zext i8 %82 to i32, !dbg !1525
  %84 = icmp ne i32 %83, 0, !dbg !1523
  br i1 %84, label %85, label %88, !dbg !1526

; <label>:85:                                     ; preds = %77
  %86 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1527
  %87 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1529
  call void @config_node_set_bool(%struct._CONFIG_REC* %86, %struct._CONFIG_NODE* %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i32 1), !dbg !1530
  br label %88, !dbg !1530

; <label>:88:                                     ; preds = %85, %77
  %89 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %2, align 8, !dbg !1531
  %90 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %89, i32 0, i32 5, !dbg !1533
  %91 = load i64, i64* %90, align 8, !dbg !1533
  %92 = icmp ne i64 %91, 0, !dbg !1534
  br i1 %92, label %93, label %100, !dbg !1535

; <label>:93:                                     ; preds = %88
  %94 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1536
  %95 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1537
  %96 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %2, align 8, !dbg !1538
  %97 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %96, i32 0, i32 5, !dbg !1539
  %98 = load i64, i64* %97, align 8, !dbg !1539
  %99 = trunc i64 %98 to i32, !dbg !1538
  call void @config_node_set_int(%struct._CONFIG_REC* %94, %struct._CONFIG_NODE* %95, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i32 %99), !dbg !1540
  br label %100, !dbg !1540

; <label>:100:                                    ; preds = %93, %88
  %101 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1541
  %102 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1542
  %103 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %2, align 8, !dbg !1543
  %104 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %103, i32 0, i32 2, !dbg !1544
  %105 = load i8*, i8** %104, align 8, !dbg !1544
  call void @config_node_set_str(%struct._CONFIG_REC* %101, %struct._CONFIG_NODE* %102, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* %105), !dbg !1545
  %106 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %2, align 8, !dbg !1546
  %107 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %106, i32 0, i32 3, !dbg !1548
  %108 = load i8**, i8*** %107, align 8, !dbg !1548
  %109 = icmp ne i8** %108, null, !dbg !1549
  br i1 %109, label %110, label %125, !dbg !1550

; <label>:110:                                    ; preds = %100
  %111 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %2, align 8, !dbg !1551
  %112 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %111, i32 0, i32 3, !dbg !1553
  %113 = load i8**, i8*** %112, align 8, !dbg !1553
  %114 = load i8*, i8** %113, align 8, !dbg !1554
  %115 = icmp ne i8* %114, null, !dbg !1555
  br i1 %115, label %116, label %125, !dbg !1556

; <label>:116:                                    ; preds = %110
  %117 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1557
  %118 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1559
  %119 = call %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC* %117, %struct._CONFIG_NODE* %118, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i32 3), !dbg !1560
  store %struct._CONFIG_NODE* %119, %struct._CONFIG_NODE** %3, align 8, !dbg !1561
  %120 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1562
  %121 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1563
  %122 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %2, align 8, !dbg !1564
  %123 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %122, i32 0, i32 3, !dbg !1565
  %124 = load i8**, i8*** %123, align 8, !dbg !1565
  call void @config_node_add_list(%struct._CONFIG_REC* %120, %struct._CONFIG_NODE* %121, i8** %124), !dbg !1566
  br label %125, !dbg !1567

; <label>:125:                                    ; preds = %9, %116, %110, %100
  ret void, !dbg !1568
}

declare i32 @signal_emit(i8*, i32, ...) #2

declare void @nickmatch_rebuild(%struct.NICKMATCH_REC*) #2

; Function Attrs: nounwind uwtable
define void @ignore_update_rec(%struct._IGNORE_REC*) #0 !dbg !1569 {
  %2 = alloca %struct._IGNORE_REC*, align 8
  store %struct._IGNORE_REC* %0, %struct._IGNORE_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IGNORE_REC** %2, metadata !1570, metadata !580), !dbg !1571
  %3 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %2, align 8, !dbg !1572
  %4 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %3, i32 0, i32 0, !dbg !1574
  %5 = load i32, i32* %4, align 8, !dbg !1574
  %6 = icmp eq i32 %5, 0, !dbg !1575
  br i1 %6, label %7, label %10, !dbg !1576

; <label>:7:                                      ; preds = %1
  %8 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %2, align 8, !dbg !1577
  call void @ignore_remove_config(%struct._IGNORE_REC* %8), !dbg !1579
  %9 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %2, align 8, !dbg !1580
  call void @ignore_destroy(%struct._IGNORE_REC* %9, i32 1), !dbg !1581
  br label %24, !dbg !1582

; <label>:10:                                     ; preds = %1
  %11 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %2, align 8, !dbg !1583
  call void @ignore_remove_config(%struct._IGNORE_REC* %11), !dbg !1585
  %12 = load %struct._GSList*, %struct._GSList** @ignores, align 8, !dbg !1586
  %13 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %2, align 8, !dbg !1587
  %14 = bitcast %struct._IGNORE_REC* %13 to i8*, !dbg !1587
  %15 = call %struct._GSList* @g_slist_remove(%struct._GSList* %12, i8* %14), !dbg !1588
  store %struct._GSList* %15, %struct._GSList** @ignores, align 8, !dbg !1589
  %16 = load %struct._GSList*, %struct._GSList** @ignores, align 8, !dbg !1590
  %17 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %2, align 8, !dbg !1591
  %18 = bitcast %struct._IGNORE_REC* %17 to i8*, !dbg !1591
  %19 = call %struct._GSList* @g_slist_append(%struct._GSList* %16, i8* %18), !dbg !1592
  store %struct._GSList* %19, %struct._GSList** @ignores, align 8, !dbg !1593
  %20 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %2, align 8, !dbg !1594
  call void @ignore_set_config(%struct._IGNORE_REC* %20), !dbg !1595
  %21 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %2, align 8, !dbg !1596
  call void @ignore_init_rec(%struct._IGNORE_REC* %21), !dbg !1597
  %22 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %2, align 8, !dbg !1598
  %23 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i32 1, %struct._IGNORE_REC* %22), !dbg !1599
  br label %24

; <label>:24:                                     ; preds = %10, %7
  %25 = load %struct.NICKMATCH_REC*, %struct.NICKMATCH_REC** @nickmatch, align 8, !dbg !1600
  call void @nickmatch_rebuild(%struct.NICKMATCH_REC* %25), !dbg !1601
  ret void, !dbg !1602
}

; Function Attrs: nounwind uwtable
define internal void @ignore_remove_config(%struct._IGNORE_REC*) #0 !dbg !1603 {
  %2 = alloca %struct._IGNORE_REC*, align 8
  %3 = alloca %struct._CONFIG_NODE*, align 8
  store %struct._IGNORE_REC* %0, %struct._IGNORE_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IGNORE_REC** %2, metadata !1604, metadata !580), !dbg !1605
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %3, metadata !1606, metadata !580), !dbg !1607
  %4 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1608
  %5 = call %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i32 0), !dbg !1609
  store %struct._CONFIG_NODE* %5, %struct._CONFIG_NODE** %3, align 8, !dbg !1610
  %6 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1611
  %7 = icmp ne %struct._CONFIG_NODE* %6, null, !dbg !1613
  br i1 %7, label %8, label %13, !dbg !1614

; <label>:8:                                      ; preds = %1
  %9 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1615
  %10 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1617
  %11 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %2, align 8, !dbg !1618
  %12 = call i32 @ignore_index(%struct._IGNORE_REC* %11), !dbg !1619
  call void @config_node_list_remove(%struct._CONFIG_REC* %9, %struct._CONFIG_NODE* %10, i32 %12), !dbg !1620
  br label %13, !dbg !1622

; <label>:13:                                     ; preds = %8, %1
  ret void, !dbg !1623
}

; Function Attrs: nounwind uwtable
define internal void @ignore_destroy(%struct._IGNORE_REC*, i32) #0 !dbg !1624 {
  %3 = alloca %struct._IGNORE_REC*, align 8
  %4 = alloca i32, align 4
  store %struct._IGNORE_REC* %0, %struct._IGNORE_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IGNORE_REC** %3, metadata !1627, metadata !580), !dbg !1628
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1629, metadata !580), !dbg !1630
  %5 = load %struct._GSList*, %struct._GSList** @ignores, align 8, !dbg !1631
  %6 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %3, align 8, !dbg !1632
  %7 = bitcast %struct._IGNORE_REC* %6 to i8*, !dbg !1632
  %8 = call %struct._GSList* @g_slist_remove(%struct._GSList* %5, i8* %7), !dbg !1633
  store %struct._GSList* %8, %struct._GSList** @ignores, align 8, !dbg !1634
  %9 = load i32, i32* %4, align 4, !dbg !1635
  %10 = icmp ne i32 %9, 0, !dbg !1635
  br i1 %10, label %11, label %14, !dbg !1637

; <label>:11:                                     ; preds = %2
  %12 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %3, align 8, !dbg !1638
  %13 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i32 0, i32 0), i32 1, %struct._IGNORE_REC* %12), !dbg !1639
  br label %14, !dbg !1639

; <label>:14:                                     ; preds = %11, %2
  %15 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %3, align 8, !dbg !1640
  %16 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %15, i32 0, i32 7, !dbg !1642
  %17 = load %struct._GRegex*, %struct._GRegex** %16, align 8, !dbg !1642
  %18 = icmp ne %struct._GRegex* %17, null, !dbg !1643
  br i1 %18, label %19, label %23, !dbg !1644

; <label>:19:                                     ; preds = %14
  %20 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %3, align 8, !dbg !1645
  %21 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %20, i32 0, i32 7, !dbg !1647
  %22 = load %struct._GRegex*, %struct._GRegex** %21, align 8, !dbg !1647
  call void @i_regex_unref(%struct._GRegex* %22), !dbg !1648
  br label %23, !dbg !1648

; <label>:23:                                     ; preds = %19, %14
  %24 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %3, align 8, !dbg !1649
  %25 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %24, i32 0, i32 3, !dbg !1651
  %26 = load i8**, i8*** %25, align 8, !dbg !1651
  %27 = icmp ne i8** %26, null, !dbg !1652
  br i1 %27, label %28, label %32, !dbg !1653

; <label>:28:                                     ; preds = %23
  %29 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %3, align 8, !dbg !1654
  %30 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %29, i32 0, i32 3, !dbg !1656
  %31 = load i8**, i8*** %30, align 8, !dbg !1656
  call void @g_strfreev(i8** %31), !dbg !1657
  br label %32, !dbg !1657

; <label>:32:                                     ; preds = %28, %23
  %33 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %3, align 8, !dbg !1658
  %34 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %33, i32 0, i32 1, !dbg !1659
  %35 = load i8*, i8** %34, align 8, !dbg !1659
  call void @g_free(i8* %35), !dbg !1660
  %36 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %3, align 8, !dbg !1661
  %37 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %36, i32 0, i32 2, !dbg !1662
  %38 = load i8*, i8** %37, align 8, !dbg !1662
  call void @g_free(i8* %38), !dbg !1663
  %39 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %3, align 8, !dbg !1664
  %40 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %39, i32 0, i32 4, !dbg !1665
  %41 = load i8*, i8** %40, align 8, !dbg !1665
  call void @g_free(i8* %41), !dbg !1666
  %42 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %3, align 8, !dbg !1667
  %43 = bitcast %struct._IGNORE_REC* %42 to i8*, !dbg !1667
  call void @g_free(i8* %43), !dbg !1668
  ret void, !dbg !1669
}

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #2

; Function Attrs: nounwind uwtable
define void @ignore_init() #0 !dbg !1670 {
  store %struct._GSList* null, %struct._GSList** @ignores, align 8, !dbg !1671
  %1 = call %struct.NICKMATCH_REC* @nickmatch_init(void (%struct._GHashTable*, %struct._CHANNEL_REC*, %struct._NICK_REC*)* @ignore_nick_cache), !dbg !1672
  store %struct.NICKMATCH_REC* %1, %struct.NICKMATCH_REC** @nickmatch, align 8, !dbg !1673
  %2 = call i32 @g_timeout_add(i32 1000, i32 (i8*)* bitcast (i32 ()* @unignore_timeout to i32 (i8*)*), i8* null), !dbg !1674
  store i32 %2, i32* @time_tag, align 4, !dbg !1675
  call void @read_ignores(), !dbg !1676
  call void @signal_add_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_ignores to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1677
  ret void, !dbg !1678
}

declare %struct.NICKMATCH_REC* @nickmatch_init(void (%struct._GHashTable*, %struct._CHANNEL_REC*, %struct._NICK_REC*)*) #2

; Function Attrs: nounwind uwtable
define internal void @ignore_nick_cache(%struct._GHashTable*, %struct._CHANNEL_REC*, %struct._NICK_REC*) #0 !dbg !1679 {
  %4 = alloca %struct._GHashTable*, align 8
  %5 = alloca %struct._CHANNEL_REC*, align 8
  %6 = alloca %struct._NICK_REC*, align 8
  %7 = alloca %struct._GSList*, align 8
  %8 = alloca %struct._GSList*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct._IGNORE_REC*, align 8
  store %struct._GHashTable* %0, %struct._GHashTable** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._GHashTable** %4, metadata !1680, metadata !580), !dbg !1681
  store %struct._CHANNEL_REC* %1, %struct._CHANNEL_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %5, metadata !1682, metadata !580), !dbg !1683
  store %struct._NICK_REC* %2, %struct._NICK_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %6, metadata !1684, metadata !580), !dbg !1685
  call void @llvm.dbg.declare(metadata %struct._GSList** %7, metadata !1686, metadata !580), !dbg !1687
  call void @llvm.dbg.declare(metadata %struct._GSList** %8, metadata !1688, metadata !580), !dbg !1689
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1690, metadata !580), !dbg !1691
  %11 = load %struct._NICK_REC*, %struct._NICK_REC** %6, align 8, !dbg !1692
  %12 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %11, i32 0, i32 4, !dbg !1694
  %13 = load i8*, i8** %12, align 8, !dbg !1694
  %14 = icmp eq i8* %13, null, !dbg !1695
  br i1 %14, label %15, label %16, !dbg !1696

; <label>:15:                                     ; preds = %3
  br label %125, !dbg !1697

; <label>:16:                                     ; preds = %3
  store %struct._GSList* null, %struct._GSList** %8, align 8, !dbg !1698
  %17 = load %struct._NICK_REC*, %struct._NICK_REC** %6, align 8, !dbg !1699
  %18 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %17, i32 0, i32 3, !dbg !1700
  %19 = load i8*, i8** %18, align 8, !dbg !1700
  %20 = load %struct._NICK_REC*, %struct._NICK_REC** %6, align 8, !dbg !1701
  %21 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %20, i32 0, i32 4, !dbg !1702
  %22 = load i8*, i8** %21, align 8, !dbg !1702
  %23 = call noalias i8* (i8*, ...) @g_strconcat(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), i8* %22, i8* null), !dbg !1703
  store i8* %23, i8** %9, align 8, !dbg !1704
  %24 = load %struct._GSList*, %struct._GSList** @ignores, align 8, !dbg !1705
  store %struct._GSList* %24, %struct._GSList** %7, align 8, !dbg !1707
  br label %25, !dbg !1708

; <label>:25:                                     ; preds = %105, %16
  %26 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1709
  %27 = icmp ne %struct._GSList* %26, null, !dbg !1712
  br i1 %27, label %28, label %109, !dbg !1713

; <label>:28:                                     ; preds = %25
  call void @llvm.dbg.declare(metadata %struct._IGNORE_REC** %10, metadata !1714, metadata !580), !dbg !1716
  %29 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1717
  %30 = getelementptr inbounds %struct._GSList, %struct._GSList* %29, i32 0, i32 0, !dbg !1718
  %31 = load i8*, i8** %30, align 8, !dbg !1718
  %32 = bitcast i8* %31 to %struct._IGNORE_REC*, !dbg !1717
  store %struct._IGNORE_REC* %32, %struct._IGNORE_REC** %10, align 8, !dbg !1716
  %33 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %10, align 8, !dbg !1719
  %34 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %33, i32 0, i32 1, !dbg !1721
  %35 = load i8*, i8** %34, align 8, !dbg !1721
  %36 = icmp eq i8* %35, null, !dbg !1722
  br i1 %36, label %59, label %37, !dbg !1723

; <label>:37:                                     ; preds = %28
  %38 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %10, align 8, !dbg !1724
  %39 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %38, i32 0, i32 1, !dbg !1726
  %40 = load i8*, i8** %39, align 8, !dbg !1726
  %41 = call i8* @strchr(i8* %40, i32 33) #5, !dbg !1727
  %42 = icmp ne i8* %41, null, !dbg !1728
  br i1 %42, label %43, label %50, !dbg !1729

; <label>:43:                                     ; preds = %37
  %44 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %10, align 8, !dbg !1730
  %45 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %44, i32 0, i32 1, !dbg !1732
  %46 = load i8*, i8** %45, align 8, !dbg !1732
  %47 = load i8*, i8** %9, align 8, !dbg !1733
  %48 = call i32 @match_wildcards(i8* %46, i8* %47), !dbg !1734
  %49 = icmp ne i32 %48, 0, !dbg !1734
  br i1 %49, label %59, label %104, !dbg !1735

; <label>:50:                                     ; preds = %37
  %51 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %10, align 8, !dbg !1736
  %52 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %51, i32 0, i32 1, !dbg !1738
  %53 = load i8*, i8** %52, align 8, !dbg !1738
  %54 = load %struct._NICK_REC*, %struct._NICK_REC** %6, align 8, !dbg !1739
  %55 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %54, i32 0, i32 3, !dbg !1740
  %56 = load i8*, i8** %55, align 8, !dbg !1740
  %57 = call i32 @match_wildcards(i8* %53, i8* %56), !dbg !1741
  %58 = icmp ne i32 %57, 0, !dbg !1741
  br i1 %58, label %59, label %104, !dbg !1742

; <label>:59:                                     ; preds = %50, %43, %28
  %60 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %10, align 8, !dbg !1743
  %61 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %60, i32 0, i32 2, !dbg !1744
  %62 = load i8*, i8** %61, align 8, !dbg !1744
  %63 = icmp eq i8* %62, null, !dbg !1745
  br i1 %63, label %80, label %64, !dbg !1746

; <label>:64:                                     ; preds = %59
  %65 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %5, align 8, !dbg !1747
  %66 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %65, i32 0, i32 4, !dbg !1748
  %67 = load %struct._SERVER_REC*, %struct._SERVER_REC** %66, align 8, !dbg !1748
  %68 = icmp ne %struct._SERVER_REC* %67, null, !dbg !1749
  br i1 %68, label %69, label %104, !dbg !1750

; <label>:69:                                     ; preds = %64
  %70 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %5, align 8, !dbg !1751
  %71 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %70, i32 0, i32 4, !dbg !1752
  %72 = load %struct._SERVER_REC*, %struct._SERVER_REC** %71, align 8, !dbg !1752
  %73 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %72, i32 0, i32 6, !dbg !1753
  %74 = load i8*, i8** %73, align 8, !dbg !1753
  %75 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %10, align 8, !dbg !1754
  %76 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %75, i32 0, i32 2, !dbg !1755
  %77 = load i8*, i8** %76, align 8, !dbg !1755
  %78 = call i32 @g_ascii_strcasecmp(i8* %74, i8* %77), !dbg !1756
  %79 = icmp eq i32 %78, 0, !dbg !1757
  br i1 %79, label %80, label %104, !dbg !1758

; <label>:80:                                     ; preds = %69, %59
  %81 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %10, align 8, !dbg !1759
  %82 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %81, i32 0, i32 3, !dbg !1760
  %83 = load i8**, i8*** %82, align 8, !dbg !1760
  %84 = icmp eq i8** %83, null, !dbg !1761
  br i1 %84, label %99, label %85, !dbg !1762

; <label>:85:                                     ; preds = %80
  %86 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %5, align 8, !dbg !1763
  %87 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %86, i32 0, i32 6, !dbg !1764
  %88 = load i8*, i8** %87, align 8, !dbg !1764
  %89 = icmp ne i8* %88, null, !dbg !1765
  br i1 %89, label %90, label %104, !dbg !1766

; <label>:90:                                     ; preds = %85
  %91 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %10, align 8, !dbg !1767
  %92 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %91, i32 0, i32 3, !dbg !1768
  %93 = load i8**, i8*** %92, align 8, !dbg !1768
  %94 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %5, align 8, !dbg !1769
  %95 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %94, i32 0, i32 6, !dbg !1770
  %96 = load i8*, i8** %95, align 8, !dbg !1770
  %97 = call i32 @strarray_find(i8** %93, i8* %96), !dbg !1771
  %98 = icmp ne i32 %97, -1, !dbg !1772
  br i1 %98, label %99, label %104, !dbg !1773

; <label>:99:                                     ; preds = %90, %80
  %100 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !1775
  %101 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %10, align 8, !dbg !1776
  %102 = bitcast %struct._IGNORE_REC* %101 to i8*, !dbg !1776
  %103 = call %struct._GSList* @g_slist_append(%struct._GSList* %100, i8* %102), !dbg !1777
  store %struct._GSList* %103, %struct._GSList** %8, align 8, !dbg !1778
  br label %104, !dbg !1779

; <label>:104:                                    ; preds = %99, %90, %85, %69, %64, %50, %43
  br label %105, !dbg !1780

; <label>:105:                                    ; preds = %104
  %106 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1781
  %107 = getelementptr inbounds %struct._GSList, %struct._GSList* %106, i32 0, i32 1, !dbg !1783
  %108 = load %struct._GSList*, %struct._GSList** %107, align 8, !dbg !1783
  store %struct._GSList* %108, %struct._GSList** %7, align 8, !dbg !1784
  br label %25, !dbg !1785, !llvm.loop !1786

; <label>:109:                                    ; preds = %25
  %110 = load i8*, i8** %9, align 8, !dbg !1788
  call void @g_free(i8* %110), !dbg !1789
  %111 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !1790
  %112 = icmp eq %struct._GSList* %111, null, !dbg !1792
  br i1 %112, label %113, label %118, !dbg !1793

; <label>:113:                                    ; preds = %109
  %114 = load %struct._GHashTable*, %struct._GHashTable** %4, align 8, !dbg !1794
  %115 = load %struct._NICK_REC*, %struct._NICK_REC** %6, align 8, !dbg !1795
  %116 = bitcast %struct._NICK_REC* %115 to i8*, !dbg !1795
  %117 = call i32 @g_hash_table_remove(%struct._GHashTable* %114, i8* %116), !dbg !1796
  br label %125, !dbg !1796

; <label>:118:                                    ; preds = %109
  %119 = load %struct._GHashTable*, %struct._GHashTable** %4, align 8, !dbg !1797
  %120 = load %struct._NICK_REC*, %struct._NICK_REC** %6, align 8, !dbg !1798
  %121 = bitcast %struct._NICK_REC* %120 to i8*, !dbg !1798
  %122 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !1799
  %123 = bitcast %struct._GSList* %122 to i8*, !dbg !1799
  %124 = call i32 @g_hash_table_insert(%struct._GHashTable* %119, i8* %121, i8* %123), !dbg !1800
  br label %125

; <label>:125:                                    ; preds = %15, %118, %113
  ret void, !dbg !1801
}

declare i32 @g_timeout_add(i32, i32 (i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @unignore_timeout() #0 !dbg !1802 {
  %1 = alloca %struct._GSList*, align 8
  %2 = alloca %struct._GSList*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct._IGNORE_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %1, metadata !1805, metadata !580), !dbg !1806
  call void @llvm.dbg.declare(metadata %struct._GSList** %2, metadata !1807, metadata !580), !dbg !1808
  call void @llvm.dbg.declare(metadata i64* %3, metadata !1809, metadata !580), !dbg !1810
  %5 = call i64 @time(i64* null) #6, !dbg !1811
  store i64 %5, i64* %3, align 8, !dbg !1812
  %6 = load %struct._GSList*, %struct._GSList** @ignores, align 8, !dbg !1813
  store %struct._GSList* %6, %struct._GSList** %1, align 8, !dbg !1815
  br label %7, !dbg !1816

; <label>:7:                                      ; preds = %33, %0
  %8 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !1817
  %9 = icmp ne %struct._GSList* %8, null, !dbg !1820
  br i1 %9, label %10, label %35, !dbg !1821

; <label>:10:                                     ; preds = %7
  call void @llvm.dbg.declare(metadata %struct._IGNORE_REC** %4, metadata !1822, metadata !580), !dbg !1824
  %11 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !1825
  %12 = getelementptr inbounds %struct._GSList, %struct._GSList* %11, i32 0, i32 0, !dbg !1826
  %13 = load i8*, i8** %12, align 8, !dbg !1826
  %14 = bitcast i8* %13 to %struct._IGNORE_REC*, !dbg !1825
  store %struct._IGNORE_REC* %14, %struct._IGNORE_REC** %4, align 8, !dbg !1824
  %15 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !1827
  %16 = getelementptr inbounds %struct._GSList, %struct._GSList* %15, i32 0, i32 1, !dbg !1828
  %17 = load %struct._GSList*, %struct._GSList** %16, align 8, !dbg !1828
  store %struct._GSList* %17, %struct._GSList** %2, align 8, !dbg !1829
  %18 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %4, align 8, !dbg !1830
  %19 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %18, i32 0, i32 5, !dbg !1832
  %20 = load i64, i64* %19, align 8, !dbg !1832
  %21 = icmp sgt i64 %20, 0, !dbg !1833
  br i1 %21, label %22, label %32, !dbg !1834

; <label>:22:                                     ; preds = %10
  %23 = load i64, i64* %3, align 8, !dbg !1835
  %24 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %4, align 8, !dbg !1837
  %25 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %24, i32 0, i32 5, !dbg !1838
  %26 = load i64, i64* %25, align 8, !dbg !1838
  %27 = icmp sge i64 %23, %26, !dbg !1839
  br i1 %27, label %28, label %32, !dbg !1840

; <label>:28:                                     ; preds = %22
  %29 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %4, align 8, !dbg !1841
  %30 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %29, i32 0, i32 0, !dbg !1843
  store i32 0, i32* %30, align 8, !dbg !1844
  %31 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %4, align 8, !dbg !1845
  call void @ignore_update_rec(%struct._IGNORE_REC* %31), !dbg !1846
  br label %32, !dbg !1847

; <label>:32:                                     ; preds = %28, %22, %10
  br label %33, !dbg !1848

; <label>:33:                                     ; preds = %32
  %34 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !1849
  store %struct._GSList* %34, %struct._GSList** %1, align 8, !dbg !1851
  br label %7, !dbg !1852, !llvm.loop !1853

; <label>:35:                                     ; preds = %7
  ret i32 1, !dbg !1855
}

; Function Attrs: nounwind uwtable
define internal void @read_ignores() #0 !dbg !1856 {
  %1 = alloca %struct._IGNORE_REC*, align 8
  %2 = alloca %struct._CONFIG_NODE*, align 8
  %3 = alloca %struct._GSList*, align 8
  call void @llvm.dbg.declare(metadata %struct._IGNORE_REC** %1, metadata !1857, metadata !580), !dbg !1858
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %2, metadata !1859, metadata !580), !dbg !1860
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !1861, metadata !580), !dbg !1862
  br label %4, !dbg !1863

; <label>:4:                                      ; preds = %7, %0
  %5 = load %struct._GSList*, %struct._GSList** @ignores, align 8, !dbg !1864
  %6 = icmp ne %struct._GSList* %5, null, !dbg !1866
  br i1 %6, label %7, label %12, !dbg !1867

; <label>:7:                                      ; preds = %4
  %8 = load %struct._GSList*, %struct._GSList** @ignores, align 8, !dbg !1868
  %9 = getelementptr inbounds %struct._GSList, %struct._GSList* %8, i32 0, i32 0, !dbg !1869
  %10 = load i8*, i8** %9, align 8, !dbg !1869
  %11 = bitcast i8* %10 to %struct._IGNORE_REC*, !dbg !1868
  call void @ignore_destroy(%struct._IGNORE_REC* %11, i32 0), !dbg !1870
  br label %4, !dbg !1871, !llvm.loop !1873

; <label>:12:                                     ; preds = %4
  %13 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1874
  %14 = call %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i32 0), !dbg !1875
  store %struct._CONFIG_NODE* %14, %struct._CONFIG_NODE** %2, align 8, !dbg !1876
  %15 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %2, align 8, !dbg !1877
  %16 = icmp eq %struct._CONFIG_NODE* %15, null, !dbg !1879
  br i1 %16, label %17, label %19, !dbg !1880

; <label>:17:                                     ; preds = %12
  %18 = load %struct.NICKMATCH_REC*, %struct.NICKMATCH_REC** @nickmatch, align 8, !dbg !1881
  call void @nickmatch_rebuild(%struct.NICKMATCH_REC* %18), !dbg !1883
  br label %130, !dbg !1884

; <label>:19:                                     ; preds = %12
  %20 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %2, align 8, !dbg !1885
  %21 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %20, i32 0, i32 2, !dbg !1886
  %22 = load i8*, i8** %21, align 8, !dbg !1886
  %23 = bitcast i8* %22 to %struct._GSList*, !dbg !1885
  %24 = call %struct._GSList* @config_node_first(%struct._GSList* %23), !dbg !1887
  store %struct._GSList* %24, %struct._GSList** %3, align 8, !dbg !1888
  br label %25, !dbg !1889

; <label>:25:                                     ; preds = %125, %19
  %26 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1890
  %27 = icmp ne %struct._GSList* %26, null, !dbg !1894
  br i1 %27, label %28, label %128, !dbg !1895

; <label>:28:                                     ; preds = %25
  %29 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1896
  %30 = getelementptr inbounds %struct._GSList, %struct._GSList* %29, i32 0, i32 0, !dbg !1898
  %31 = load i8*, i8** %30, align 8, !dbg !1898
  %32 = bitcast i8* %31 to %struct._CONFIG_NODE*, !dbg !1896
  store %struct._CONFIG_NODE* %32, %struct._CONFIG_NODE** %2, align 8, !dbg !1899
  %33 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %2, align 8, !dbg !1900
  %34 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %33, i32 0, i32 0, !dbg !1902
  %35 = load i32, i32* %34, align 8, !dbg !1902
  %36 = icmp ne i32 %35, 2, !dbg !1903
  br i1 %36, label %37, label %38, !dbg !1904

; <label>:37:                                     ; preds = %28
  br label %125, !dbg !1905

; <label>:38:                                     ; preds = %28
  %39 = call noalias i8* @g_malloc0_n(i64 1, i64 64), !dbg !1906
  %40 = bitcast i8* %39 to %struct._IGNORE_REC*, !dbg !1907
  store %struct._IGNORE_REC* %40, %struct._IGNORE_REC** %1, align 8, !dbg !1908
  %41 = load %struct._GSList*, %struct._GSList** @ignores, align 8, !dbg !1909
  %42 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %1, align 8, !dbg !1910
  %43 = bitcast %struct._IGNORE_REC* %42 to i8*, !dbg !1910
  %44 = call %struct._GSList* @g_slist_append(%struct._GSList* %41, i8* %43), !dbg !1911
  store %struct._GSList* %44, %struct._GSList** @ignores, align 8, !dbg !1912
  %45 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %2, align 8, !dbg !1913
  %46 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* null), !dbg !1914
  %47 = call noalias i8* @g_strdup(i8* %46), !dbg !1915
  %48 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %1, align 8, !dbg !1917
  %49 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %48, i32 0, i32 1, !dbg !1918
  store i8* %47, i8** %49, align 8, !dbg !1919
  %50 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %2, align 8, !dbg !1920
  %51 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i8* null), !dbg !1921
  %52 = call noalias i8* @g_strdup(i8* %51), !dbg !1922
  %53 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %1, align 8, !dbg !1923
  %54 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %53, i32 0, i32 4, !dbg !1924
  store i8* %52, i8** %54, align 8, !dbg !1925
  %55 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %2, align 8, !dbg !1926
  %56 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0)), !dbg !1927
  %57 = call i32 @level2bits(i8* %56, i32* null), !dbg !1928
  %58 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %1, align 8, !dbg !1929
  %59 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %58, i32 0, i32 0, !dbg !1930
  store i32 %57, i32* %59, align 8, !dbg !1931
  %60 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %2, align 8, !dbg !1932
  %61 = call i32 @config_node_get_bool(%struct._CONFIG_NODE* %60, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i32 0), !dbg !1933
  %62 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %1, align 8, !dbg !1934
  %63 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %62, i32 0, i32 6, !dbg !1935
  %64 = trunc i32 %61 to i8, !dbg !1936
  %65 = load i8, i8* %63, align 8, !dbg !1936
  %66 = and i8 %64, 1, !dbg !1936
  %67 = and i8 %65, -2, !dbg !1936
  %68 = or i8 %67, %66, !dbg !1936
  store i8 %68, i8* %63, align 8, !dbg !1936
  %69 = zext i8 %66 to i32, !dbg !1936
  %70 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %2, align 8, !dbg !1937
  %71 = call i32 @config_node_get_bool(%struct._CONFIG_NODE* %70, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i32 0), !dbg !1938
  %72 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %1, align 8, !dbg !1939
  %73 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %72, i32 0, i32 6, !dbg !1940
  %74 = trunc i32 %71 to i8, !dbg !1941
  %75 = load i8, i8* %73, align 8, !dbg !1941
  %76 = and i8 %74, 1, !dbg !1941
  %77 = shl i8 %76, 1, !dbg !1941
  %78 = and i8 %75, -3, !dbg !1941
  %79 = or i8 %78, %77, !dbg !1941
  store i8 %79, i8* %73, align 8, !dbg !1941
  %80 = zext i8 %76 to i32, !dbg !1941
  %81 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %2, align 8, !dbg !1942
  %82 = call i32 @config_node_get_bool(%struct._CONFIG_NODE* %81, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i32 0), !dbg !1943
  %83 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %1, align 8, !dbg !1944
  %84 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %83, i32 0, i32 6, !dbg !1945
  %85 = trunc i32 %82 to i8, !dbg !1946
  %86 = load i8, i8* %84, align 8, !dbg !1946
  %87 = and i8 %85, 1, !dbg !1946
  %88 = shl i8 %87, 2, !dbg !1946
  %89 = and i8 %86, -5, !dbg !1946
  %90 = or i8 %89, %88, !dbg !1946
  store i8 %90, i8* %84, align 8, !dbg !1946
  %91 = zext i8 %87 to i32, !dbg !1946
  %92 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %2, align 8, !dbg !1947
  %93 = call i32 @config_node_get_bool(%struct._CONFIG_NODE* %92, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i32 0), !dbg !1948
  %94 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %1, align 8, !dbg !1949
  %95 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %94, i32 0, i32 6, !dbg !1950
  %96 = trunc i32 %93 to i8, !dbg !1951
  %97 = load i8, i8* %95, align 8, !dbg !1951
  %98 = and i8 %96, 1, !dbg !1951
  %99 = shl i8 %98, 3, !dbg !1951
  %100 = and i8 %97, -9, !dbg !1951
  %101 = or i8 %100, %99, !dbg !1951
  store i8 %101, i8* %95, align 8, !dbg !1951
  %102 = zext i8 %98 to i32, !dbg !1951
  %103 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %2, align 8, !dbg !1952
  %104 = call i32 @config_node_get_int(%struct._CONFIG_NODE* %103, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i32 0), !dbg !1953
  %105 = sext i32 %104 to i64, !dbg !1953
  %106 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %1, align 8, !dbg !1954
  %107 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %106, i32 0, i32 5, !dbg !1955
  store i64 %105, i64* %107, align 8, !dbg !1956
  %108 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %2, align 8, !dbg !1957
  %109 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %108, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* null), !dbg !1958
  %110 = call noalias i8* @g_strdup(i8* %109), !dbg !1959
  %111 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %1, align 8, !dbg !1960
  %112 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %111, i32 0, i32 2, !dbg !1961
  store i8* %110, i8** %112, align 8, !dbg !1962
  %113 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1963
  %114 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %2, align 8, !dbg !1964
  %115 = call %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC* %113, %struct._CONFIG_NODE* %114, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i32 -1), !dbg !1965
  store %struct._CONFIG_NODE* %115, %struct._CONFIG_NODE** %2, align 8, !dbg !1966
  %116 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %2, align 8, !dbg !1967
  %117 = icmp ne %struct._CONFIG_NODE* %116, null, !dbg !1969
  br i1 %117, label %118, label %123, !dbg !1970

; <label>:118:                                    ; preds = %38
  %119 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %2, align 8, !dbg !1971
  %120 = call i8** @config_node_get_list(%struct._CONFIG_NODE* %119), !dbg !1973
  %121 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %1, align 8, !dbg !1974
  %122 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %121, i32 0, i32 3, !dbg !1975
  store i8** %120, i8*** %122, align 8, !dbg !1976
  br label %123, !dbg !1974

; <label>:123:                                    ; preds = %118, %38
  %124 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %1, align 8, !dbg !1977
  call void @ignore_init_rec(%struct._IGNORE_REC* %124), !dbg !1978
  br label %125, !dbg !1979

; <label>:125:                                    ; preds = %123, %37
  %126 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1980
  %127 = call %struct._GSList* @config_node_next(%struct._GSList* %126), !dbg !1982
  store %struct._GSList* %127, %struct._GSList** %3, align 8, !dbg !1983
  br label %25, !dbg !1984, !llvm.loop !1985

; <label>:128:                                    ; preds = %25
  %129 = load %struct.NICKMATCH_REC*, %struct.NICKMATCH_REC** @nickmatch, align 8, !dbg !1986
  call void @nickmatch_rebuild(%struct.NICKMATCH_REC* %129), !dbg !1987
  br label %130, !dbg !1988

; <label>:130:                                    ; preds = %128, %17
  ret void, !dbg !1989
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define void @ignore_deinit() #0 !dbg !1990 {
  %1 = load i32, i32* @time_tag, align 4, !dbg !1991
  %2 = call i32 @g_source_remove(i32 %1), !dbg !1992
  br label %3, !dbg !1993

; <label>:3:                                      ; preds = %6, %0
  %4 = load %struct._GSList*, %struct._GSList** @ignores, align 8, !dbg !1994
  %5 = icmp ne %struct._GSList* %4, null, !dbg !1996
  br i1 %5, label %6, label %11, !dbg !1997

; <label>:6:                                      ; preds = %3
  %7 = load %struct._GSList*, %struct._GSList** @ignores, align 8, !dbg !1998
  %8 = getelementptr inbounds %struct._GSList, %struct._GSList* %7, i32 0, i32 0, !dbg !1999
  %9 = load i8*, i8** %8, align 8, !dbg !1999
  %10 = bitcast i8* %9 to %struct._IGNORE_REC*, !dbg !1998
  call void @ignore_destroy(%struct._IGNORE_REC* %10, i32 1), !dbg !2000
  br label %3, !dbg !2001, !llvm.loop !2003

; <label>:11:                                     ; preds = %3
  %12 = load %struct.NICKMATCH_REC*, %struct.NICKMATCH_REC** @nickmatch, align 8, !dbg !2004
  call void @nickmatch_deinit(%struct.NICKMATCH_REC* %12), !dbg !2005
  call void @signal_remove_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_ignores to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2006
  ret void, !dbg !2007
}

declare i32 @g_source_remove(i32) #2

declare void @nickmatch_deinit(%struct.NICKMATCH_REC*) #2

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare i32 @i_regex_match(%struct._GRegex*, i8*, i32, %struct._MatchInfo**) #2

declare i8* @stristr_full(i8*, i8*) #2

declare i8* @stristr(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @ignore_check_replies_rec(%struct._IGNORE_REC*, %struct._CHANNEL_REC*, i8*) #0 !dbg !2008 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._IGNORE_REC*, align 8
  %6 = alloca %struct._CHANNEL_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct._GSList*, align 8
  %9 = alloca %struct._GSList*, align 8
  %10 = alloca %struct._NICK_REC*, align 8
  store %struct._IGNORE_REC* %0, %struct._IGNORE_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._IGNORE_REC** %5, metadata !2011, metadata !580), !dbg !2012
  store %struct._CHANNEL_REC* %1, %struct._CHANNEL_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %6, metadata !2013, metadata !580), !dbg !2014
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2015, metadata !580), !dbg !2016
  call void @llvm.dbg.declare(metadata %struct._GSList** %8, metadata !2017, metadata !580), !dbg !2018
  call void @llvm.dbg.declare(metadata %struct._GSList** %9, metadata !2019, metadata !580), !dbg !2020
  %11 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %6, align 8, !dbg !2021
  %12 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %5, align 8, !dbg !2022
  %13 = getelementptr inbounds %struct._IGNORE_REC, %struct._IGNORE_REC* %12, i32 0, i32 1, !dbg !2023
  %14 = load i8*, i8** %13, align 8, !dbg !2023
  %15 = call %struct._GSList* @nicklist_find_multiple(%struct._CHANNEL_REC* %11, i8* %14), !dbg !2024
  store %struct._GSList* %15, %struct._GSList** %8, align 8, !dbg !2025
  %16 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !2026
  %17 = icmp eq %struct._GSList* %16, null, !dbg !2028
  br i1 %17, label %18, label %19, !dbg !2029

; <label>:18:                                     ; preds = %3
  store i32 0, i32* %4, align 4, !dbg !2030
  br label %44, !dbg !2030

; <label>:19:                                     ; preds = %3
  %20 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !2032
  store %struct._GSList* %20, %struct._GSList** %9, align 8, !dbg !2034
  br label %21, !dbg !2035

; <label>:21:                                     ; preds = %38, %19
  %22 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !2036
  %23 = icmp ne %struct._GSList* %22, null, !dbg !2039
  br i1 %23, label %24, label %42, !dbg !2040

; <label>:24:                                     ; preds = %21
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %10, metadata !2041, metadata !580), !dbg !2043
  %25 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !2044
  %26 = getelementptr inbounds %struct._GSList, %struct._GSList* %25, i32 0, i32 0, !dbg !2045
  %27 = load i8*, i8** %26, align 8, !dbg !2045
  %28 = bitcast i8* %27 to %struct._NICK_REC*, !dbg !2044
  store %struct._NICK_REC* %28, %struct._NICK_REC** %10, align 8, !dbg !2043
  %29 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %6, align 8, !dbg !2046
  %30 = load i8*, i8** %7, align 8, !dbg !2048
  %31 = load %struct._NICK_REC*, %struct._NICK_REC** %10, align 8, !dbg !2049
  %32 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %31, i32 0, i32 3, !dbg !2050
  %33 = load i8*, i8** %32, align 8, !dbg !2050
  %34 = call i32 @nick_match_msg(%struct._CHANNEL_REC* %29, i8* %30, i8* %33), !dbg !2051
  %35 = icmp ne i32 %34, 0, !dbg !2051
  br i1 %35, label %36, label %37, !dbg !2052

; <label>:36:                                     ; preds = %24
  store i32 1, i32* %4, align 4, !dbg !2053
  br label %44, !dbg !2053

; <label>:37:                                     ; preds = %24
  br label %38, !dbg !2054

; <label>:38:                                     ; preds = %37
  %39 = load %struct._GSList*, %struct._GSList** %9, align 8, !dbg !2055
  %40 = getelementptr inbounds %struct._GSList, %struct._GSList* %39, i32 0, i32 1, !dbg !2057
  %41 = load %struct._GSList*, %struct._GSList** %40, align 8, !dbg !2057
  store %struct._GSList* %41, %struct._GSList** %9, align 8, !dbg !2058
  br label %21, !dbg !2059, !llvm.loop !2060

; <label>:42:                                     ; preds = %21
  %43 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !2062
  call void @g_slist_free(%struct._GSList* %43), !dbg !2063
  store i32 0, i32* %4, align 4, !dbg !2064
  br label %44, !dbg !2064

; <label>:44:                                     ; preds = %42, %36, %18
  %45 = load i32, i32* %4, align 4, !dbg !2065
  ret i32 %45, !dbg !2065
}

declare %struct._GSList* @nicklist_find_multiple(%struct._CHANNEL_REC*, i8*) #2

declare i32 @nick_match_msg(%struct._CHANNEL_REC*, i8*, i8*) #2

declare void @g_slist_free(%struct._GSList*) #2

declare void @i_regex_unref(%struct._GRegex*) #2

declare %struct._GRegex* @i_regex_new(i8*, i32, i32, %struct._GError**) #2

declare void @g_log(i8*, i32, i8*, ...) #2

declare void @g_error_free(%struct._GError*) #2

declare %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC*, i8*, i32) #2

declare %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i32) #2

declare void @config_node_set_str(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i8*) #2

declare i8* @bits2level(i32) #2

declare void @config_node_set_bool(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i32) #2

declare void @config_node_set_int(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i32) #2

declare void @config_node_add_list(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8**) #2

declare void @config_node_list_remove(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @ignore_index(%struct._IGNORE_REC*) #0 !dbg !2066 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._IGNORE_REC*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._IGNORE_REC*, align 8
  store %struct._IGNORE_REC* %0, %struct._IGNORE_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IGNORE_REC** %3, metadata !2069, metadata !580), !dbg !2070
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !2071, metadata !580), !dbg !2072
  call void @llvm.dbg.declare(metadata i32* %5, metadata !2073, metadata !580), !dbg !2074
  store i32 0, i32* %5, align 4, !dbg !2075
  %7 = load %struct._GSList*, %struct._GSList** @ignores, align 8, !dbg !2076
  store %struct._GSList* %7, %struct._GSList** %4, align 8, !dbg !2078
  br label %8, !dbg !2079

; <label>:8:                                      ; preds = %24, %1
  %9 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2080
  %10 = icmp ne %struct._GSList* %9, null, !dbg !2083
  br i1 %10, label %11, label %28, !dbg !2084

; <label>:11:                                     ; preds = %8
  call void @llvm.dbg.declare(metadata %struct._IGNORE_REC** %6, metadata !2085, metadata !580), !dbg !2087
  %12 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2088
  %13 = getelementptr inbounds %struct._GSList, %struct._GSList* %12, i32 0, i32 0, !dbg !2089
  %14 = load i8*, i8** %13, align 8, !dbg !2089
  %15 = bitcast i8* %14 to %struct._IGNORE_REC*, !dbg !2088
  store %struct._IGNORE_REC* %15, %struct._IGNORE_REC** %6, align 8, !dbg !2087
  %16 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %6, align 8, !dbg !2090
  %17 = load %struct._IGNORE_REC*, %struct._IGNORE_REC** %3, align 8, !dbg !2092
  %18 = icmp eq %struct._IGNORE_REC* %16, %17, !dbg !2093
  br i1 %18, label %19, label %21, !dbg !2094

; <label>:19:                                     ; preds = %11
  %20 = load i32, i32* %5, align 4, !dbg !2095
  store i32 %20, i32* %2, align 4, !dbg !2096
  br label %29, !dbg !2096

; <label>:21:                                     ; preds = %11
  %22 = load i32, i32* %5, align 4, !dbg !2097
  %23 = add nsw i32 %22, 1, !dbg !2097
  store i32 %23, i32* %5, align 4, !dbg !2097
  br label %24, !dbg !2098

; <label>:24:                                     ; preds = %21
  %25 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !2099
  %26 = getelementptr inbounds %struct._GSList, %struct._GSList* %25, i32 0, i32 1, !dbg !2101
  %27 = load %struct._GSList*, %struct._GSList** %26, align 8, !dbg !2101
  store %struct._GSList* %27, %struct._GSList** %4, align 8, !dbg !2102
  br label %8, !dbg !2103, !llvm.loop !2104

; <label>:28:                                     ; preds = %8
  store i32 -1, i32* %2, align 4, !dbg !2106
  br label %29, !dbg !2106

; <label>:29:                                     ; preds = %28, %19
  %30 = load i32, i32* %2, align 4, !dbg !2107
  ret i32 %30, !dbg !2107
}

declare void @g_strfreev(i8**) #2

declare i32 @g_hash_table_remove(%struct._GHashTable*, i8*) #2

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #2

; Function Attrs: nounwind
declare i64 @time(i64*) #4

declare %struct._GSList* @config_node_first(%struct._GSList*) #2

declare noalias i8* @g_malloc0_n(i64, i64) #2

declare noalias i8* @g_strdup(i8*) #2

declare i8* @config_node_get_str(%struct._CONFIG_NODE*, i8*, i8*) #2

declare i32 @level2bits(i8*, i32*) #2

declare i32 @config_node_get_bool(%struct._CONFIG_NODE*, i8*, i32) #2

declare i32 @config_node_get_int(%struct._CONFIG_NODE*, i8*, i32) #2

declare i8** @config_node_get_list(%struct._CONFIG_NODE*) #2

declare %struct._GSList* @config_node_next(%struct._GSList*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!572, !573}
!llvm.ident = !{!574}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !113, globals: !162)
!1 = !DIFile(filename: "line35-ignore.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !10, !15, !24, !35, !66, !72, !93, !105}
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
!36 = !DIFile(filename: "levels.h", directory: "/home/lichi/Desktop/irssi/task1")
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
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !67, line: 29, size: 32, align: 32, elements: !68)
!67 = !DIFile(filename: "ignore.h", directory: "/home/lichi/Desktop/irssi/task1")
!68 = !{!69, !70, !71}
!69 = !DIEnumerator(name: "IGNORE_FIND_PATTERN", value: 1)
!70 = !DIEnumerator(name: "IGNORE_FIND_NOACT", value: 2)
!71 = !DIEnumerator(name: "IGNORE_FIND_HIDDEN", value: 4)
!72 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !73, line: 297, size: 32, align: 32, elements: !74)
!73 = !DIFile(filename: "/usr/include/glib-2.0/glib/gregex.h", directory: "/home/lichi/Desktop/irssi/task1")
!74 = !{!75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92}
!75 = !DIEnumerator(name: "G_REGEX_CASELESS", value: 1)
!76 = !DIEnumerator(name: "G_REGEX_MULTILINE", value: 2)
!77 = !DIEnumerator(name: "G_REGEX_DOTALL", value: 4)
!78 = !DIEnumerator(name: "G_REGEX_EXTENDED", value: 8)
!79 = !DIEnumerator(name: "G_REGEX_ANCHORED", value: 16)
!80 = !DIEnumerator(name: "G_REGEX_DOLLAR_ENDONLY", value: 32)
!81 = !DIEnumerator(name: "G_REGEX_UNGREEDY", value: 512)
!82 = !DIEnumerator(name: "G_REGEX_RAW", value: 2048)
!83 = !DIEnumerator(name: "G_REGEX_NO_AUTO_CAPTURE", value: 4096)
!84 = !DIEnumerator(name: "G_REGEX_OPTIMIZE", value: 8192)
!85 = !DIEnumerator(name: "G_REGEX_FIRSTLINE", value: 262144)
!86 = !DIEnumerator(name: "G_REGEX_DUPNAMES", value: 524288)
!87 = !DIEnumerator(name: "G_REGEX_NEWLINE_CR", value: 1048576)
!88 = !DIEnumerator(name: "G_REGEX_NEWLINE_LF", value: 2097152)
!89 = !DIEnumerator(name: "G_REGEX_NEWLINE_CRLF", value: 3145728)
!90 = !DIEnumerator(name: "G_REGEX_NEWLINE_ANYCRLF", value: 5242880)
!91 = !DIEnumerator(name: "G_REGEX_BSR_ANYCRLF", value: 8388608)
!92 = !DIEnumerator(name: "G_REGEX_JAVASCRIPT_COMPAT", value: 33554432)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !94, line: 51, size: 32, align: 32, elements: !95)
!94 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/irssi/task1")
!95 = !{!96, !97, !98, !99, !100, !101, !102, !103, !104}
!96 = !DIEnumerator(name: "G_LOG_FLAG_RECURSION", value: 1)
!97 = !DIEnumerator(name: "G_LOG_FLAG_FATAL", value: 2)
!98 = !DIEnumerator(name: "G_LOG_LEVEL_ERROR", value: 4)
!99 = !DIEnumerator(name: "G_LOG_LEVEL_CRITICAL", value: 8)
!100 = !DIEnumerator(name: "G_LOG_LEVEL_WARNING", value: 16)
!101 = !DIEnumerator(name: "G_LOG_LEVEL_MESSAGE", value: 32)
!102 = !DIEnumerator(name: "G_LOG_LEVEL_INFO", value: 64)
!103 = !DIEnumerator(name: "G_LOG_LEVEL_DEBUG", value: 128)
!104 = !DIEnumerator(name: "G_LOG_LEVEL_MASK", value: -4)
!105 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !106, line: 4, size: 32, align: 32, elements: !107)
!106 = !DIFile(filename: "../../src/lib-config/iconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!107 = !{!108, !109, !110, !111, !112}
!108 = !DIEnumerator(name: "NODE_TYPE_KEY", value: 0)
!109 = !DIEnumerator(name: "NODE_TYPE_VALUE", value: 1)
!110 = !DIEnumerator(name: "NODE_TYPE_BLOCK", value: 2)
!111 = !DIEnumerator(name: "NODE_TYPE_LIST", value: 3)
!112 = !DIEnumerator(name: "NODE_TYPE_COMMENT", value: 4)
!113 = !{!114, !115, !124, !131, !134}
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64, align: 64)
!117 = !DISubroutineType(types: !118)
!118 = !{!119, !123}
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !120, line: 50, baseType: !121)
!120 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !120, line: 49, baseType: !122)
!122 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !120, line: 77, baseType: !114)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !125, line: 9, baseType: !126)
!125 = !DIFile(filename: "signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64, align: 64)
!127 = !DISubroutineType(types: !128)
!128 = !{null, !129, !129, !129, !129, !129, !129}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64, align: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !120, line: 46, baseType: !133)
!133 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "IGNORE_REC", file: !67, line: 6, baseType: !136)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IGNORE_REC", file: !67, line: 8, size: 512, align: 64, elements: !137)
!137 = !{!138, !139, !141, !142, !144, !145, !151, !153, !154, !155, !156}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !136, file: !67, line: 9, baseType: !122, size: 32, align: 32)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !136, file: !67, line: 10, baseType: !140, size: 64, align: 64, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64, align: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !136, file: !67, line: 11, baseType: !140, size: 64, align: 64, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !136, file: !67, line: 12, baseType: !143, size: 64, align: 64, offset: 192)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, align: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "pattern", scope: !136, file: !67, line: 13, baseType: !140, size: 64, align: 64, offset: 256)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "unignore_time", scope: !136, file: !67, line: 15, baseType: !146, size: 64, align: 64, offset: 320)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !147, line: 75, baseType: !148)
!147 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !149, line: 139, baseType: !150)
!149 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!150 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "exception", scope: !136, file: !67, line: 17, baseType: !152, size: 1, align: 32, offset: 384, flags: DIFlagBitField, extraData: i64 384)
!152 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "regexp", scope: !136, file: !67, line: 18, baseType: !152, size: 1, align: 32, offset: 385, flags: DIFlagBitField, extraData: i64 384)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "fullword", scope: !136, file: !67, line: 19, baseType: !152, size: 1, align: 32, offset: 386, flags: DIFlagBitField, extraData: i64 384)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "replies", scope: !136, file: !67, line: 20, baseType: !152, size: 1, align: 32, offset: 387, flags: DIFlagBitField, extraData: i64 384)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "preg", scope: !136, file: !67, line: 21, baseType: !157, size: 64, align: 64, offset: 448)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64, align: 64)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "Regex", file: !159, line: 9, baseType: !160)
!159 = !DIFile(filename: "iregex.h", directory: "/home/lichi/Desktop/irssi/task1")
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "GRegex", file: !73, line: 414, baseType: !161)
!161 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GRegex", file: !73, line: 414, flags: DIFlagFwdDecl)
!162 = !{!163, !172, !571}
!163 = distinct !DIGlobalVariable(name: "ignores", scope: !0, file: !164, line: 37, type: !165, isLocal: false, isDefinition: true, variable: %struct._GSList** @ignores)
!164 = !DIFile(filename: "ignore.c", directory: "/home/lichi/Desktop/irssi/task1")
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64, align: 64)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !167, line: 37, baseType: !168)
!167 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !167, line: 39, size: 128, align: 64, elements: !169)
!169 = !{!170, !171}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !168, file: !167, line: 41, baseType: !123, size: 64, align: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !168, file: !167, line: 42, baseType: !165, size: 64, align: 64, offset: 64)
!172 = distinct !DIGlobalVariable(name: "nickmatch", scope: !0, file: !164, line: 39, type: !173, isLocal: true, isDefinition: true, variable: %struct.NICKMATCH_REC** @nickmatch)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64, align: 64)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICKMATCH_REC", file: !175, line: 10, baseType: !176)
!175 = !DIFile(filename: "nickmatch-cache.h", directory: "/home/lichi/Desktop/irssi/task1")
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !175, line: 7, size: 128, align: 64, elements: !177)
!177 = !{!178, !183}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !176, file: !175, line: 8, baseType: !179, size: 64, align: 64)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64, align: 64)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !181, line: 37, baseType: !182)
!181 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!182 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !181, line: 37, flags: DIFlagFwdDecl)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !176, file: !175, line: 9, baseType: !184, size: 64, align: 64, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICKMATCH_REBUILD_FUNC", file: !175, line: 4, baseType: !185)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64, align: 64)
!186 = !DISubroutineType(types: !187)
!187 = !{null, !179, !188, !529}
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64, align: 64)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !190, line: 109, baseType: !191)
!190 = !DIFile(filename: "../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !192, line: 15, size: 1408, align: 64, elements: !193)
!192 = !DIFile(filename: "channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!193 = !{!194, !196, !197, !198, !199, !507, !508, !509, !510, !511, !512, !519, !523, !525, !526, !527, !528, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !191, file: !195, line: 3, baseType: !122, size: 32, align: 32)
!195 = !DIFile(filename: "window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!196 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !191, file: !195, line: 4, baseType: !122, size: 32, align: 32, offset: 32)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !191, file: !195, line: 5, baseType: !179, size: 64, align: 64, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !191, file: !195, line: 7, baseType: !114, size: 64, align: 64, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !191, file: !195, line: 8, baseType: !200, size: 64, align: 64, offset: 192)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64, align: 64)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !190, line: 107, baseType: !202)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !203, line: 30, size: 2240, align: 64, elements: !204)
!203 = !DIFile(filename: "servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!204 = !{!205, !207, !208, !209, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !435, !436, !440, !441, !442, !446, !447, !448, !449, !450, !451, !452, !453, !454, !461, !462, !463, !464, !465, !471, !475, !479, !483, !487, !491, !495, !502, !506}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !202, file: !206, line: 3, baseType: !122, size: 32, align: 32)
!206 = !DIFile(filename: "server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!207 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !202, file: !206, line: 4, baseType: !122, size: 32, align: 32, offset: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !202, file: !206, line: 6, baseType: !122, size: 32, align: 32, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !202, file: !206, line: 8, baseType: !210, size: 64, align: 64, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !190, line: 113, baseType: !212)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !203, line: 25, size: 1920, align: 64, elements: !213)
!213 = !{!214, !216, !217, !218, !219, !220, !221, !222, !223, !225, !226, !227, !228, !229, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !212, file: !215, line: 3, baseType: !122, size: 32, align: 32)
!215 = !DIFile(filename: "server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!216 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !212, file: !215, line: 4, baseType: !122, size: 32, align: 32, offset: 32)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !212, file: !215, line: 6, baseType: !122, size: 32, align: 32, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !212, file: !215, line: 9, baseType: !140, size: 64, align: 64, offset: 128)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !212, file: !215, line: 10, baseType: !122, size: 32, align: 32, offset: 192)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !212, file: !215, line: 11, baseType: !140, size: 64, align: 64, offset: 256)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !212, file: !215, line: 11, baseType: !140, size: 64, align: 64, offset: 320)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !212, file: !215, line: 11, baseType: !140, size: 64, align: 64, offset: 384)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !212, file: !215, line: 13, baseType: !224, size: 16, align: 16, offset: 448)
!224 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !212, file: !215, line: 14, baseType: !140, size: 64, align: 64, offset: 512)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !212, file: !215, line: 15, baseType: !140, size: 64, align: 64, offset: 576)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !212, file: !215, line: 16, baseType: !122, size: 32, align: 32, offset: 640)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !212, file: !215, line: 17, baseType: !140, size: 64, align: 64, offset: 704)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !212, file: !215, line: 19, baseType: !230, size: 64, align: 64, offset: 768)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64, align: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !190, line: 99, baseType: !232)
!232 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !190, line: 99, flags: DIFlagFwdDecl)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !212, file: !215, line: 19, baseType: !230, size: 64, align: 64, offset: 832)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !212, file: !215, line: 21, baseType: !140, size: 64, align: 64, offset: 896)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !212, file: !215, line: 22, baseType: !140, size: 64, align: 64, offset: 960)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !212, file: !215, line: 23, baseType: !140, size: 64, align: 64, offset: 1024)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !212, file: !215, line: 24, baseType: !140, size: 64, align: 64, offset: 1088)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !212, file: !215, line: 26, baseType: !140, size: 64, align: 64, offset: 1152)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !212, file: !215, line: 27, baseType: !140, size: 64, align: 64, offset: 1216)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !212, file: !215, line: 28, baseType: !140, size: 64, align: 64, offset: 1280)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !212, file: !215, line: 29, baseType: !140, size: 64, align: 64, offset: 1344)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !212, file: !215, line: 30, baseType: !140, size: 64, align: 64, offset: 1408)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !212, file: !215, line: 31, baseType: !140, size: 64, align: 64, offset: 1472)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !212, file: !215, line: 32, baseType: !140, size: 64, align: 64, offset: 1536)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !212, file: !215, line: 33, baseType: !140, size: 64, align: 64, offset: 1600)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !212, file: !215, line: 35, baseType: !247, size: 64, align: 64, offset: 1664)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64, align: 64)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !249)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !250)
!250 = !{!251, !252, !379, !380, !385, !386, !387, !388, !389, !398, !399, !400, !404, !405, !406, !407, !408, !409, !410, !411}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !249, file: !4, line: 100, baseType: !121, size: 32, align: 32)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !249, file: !4, line: 101, baseType: !253, size: 64, align: 64, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !255)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !256)
!256 = !{!257, !278, !284, !290, !294, !366, !370, !375}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !255, file: !4, line: 133, baseType: !258, size: 64, align: 64)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64, align: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{!261, !247, !131, !262, !265, !266}
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !263, line: 66, baseType: !264)
!263 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!264 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64, align: 64)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64, align: 64)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64, align: 64)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !269, line: 42, baseType: !270)
!269 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !269, line: 44, size: 128, align: 64, elements: !271)
!271 = !{!272, !276, !277}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !270, file: !269, line: 46, baseType: !273, size: 32, align: 32)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !274, line: 36, baseType: !275)
!274 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !263, line: 45, baseType: !152)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !270, file: !269, line: 47, baseType: !121, size: 32, align: 32, offset: 32)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !270, file: !269, line: 48, baseType: !131, size: 64, align: 64, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !255, file: !4, line: 138, baseType: !279, size: 64, align: 64, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64, align: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!261, !247, !282, !262, !265, !266}
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64, align: 64)
!283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !255, file: !4, line: 143, baseType: !285, size: 64, align: 64, offset: 128)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64, align: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{!261, !247, !288, !289, !266}
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !263, line: 51, baseType: !150)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !255, file: !4, line: 147, baseType: !291, size: 64, align: 64, offset: 192)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64, align: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{!261, !247, !266}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !255, file: !4, line: 149, baseType: !295, size: 64, align: 64, offset: 256)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64, align: 64)
!296 = !DISubroutineType(types: !297)
!297 = !{!298, !247, !365}
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64, align: 64)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !300)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !301)
!301 = !{!302, !303, !319, !348, !350, !354, !355, !356, !357, !358, !359, !360, !361}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !300, file: !16, line: 174, baseType: !123, size: 64, align: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !300, file: !16, line: 175, baseType: !304, size: 64, align: 64, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64, align: 64)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !306)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !307)
!307 = !{!308, !312, !313}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !306, file: !16, line: 198, baseType: !309, size: 64, align: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64, align: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{null, !123}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !306, file: !16, line: 199, baseType: !309, size: 64, align: 64, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !306, file: !16, line: 200, baseType: !314, size: 64, align: 64, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64, align: 64)
!315 = !DISubroutineType(types: !316)
!316 = !{null, !123, !298, !317, !318}
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64, align: 64)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64, align: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !300, file: !16, line: 177, baseType: !320, size: 64, align: 64, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64, align: 64)
!321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !322)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !323)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !324)
!324 = !{!325, !330, !334, !338, !342, !343}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !323, file: !16, line: 216, baseType: !326, size: 64, align: 64)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64, align: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{!119, !298, !329}
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, align: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !323, file: !16, line: 218, baseType: !331, size: 64, align: 64, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64, align: 64)
!332 = !DISubroutineType(types: !333)
!333 = !{!119, !298}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !323, file: !16, line: 219, baseType: !335, size: 64, align: 64, offset: 128)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64, align: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{!119, !298, !115, !123}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !323, file: !16, line: 222, baseType: !339, size: 64, align: 64, offset: 192)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64, align: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{null, !298}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !323, file: !16, line: 226, baseType: !115, size: 64, align: 64, offset: 256)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !323, file: !16, line: 227, baseType: !344, size: 64, align: 64, offset: 320)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !345)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64, align: 64)
!346 = !DISubroutineType(types: !347)
!347 = !{null}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !300, file: !16, line: 178, baseType: !349, size: 32, align: 32, offset: 192)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !120, line: 55, baseType: !152)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !300, file: !16, line: 180, baseType: !351, size: 64, align: 64, offset: 256)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64, align: 64)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !353)
!353 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !300, file: !16, line: 182, baseType: !121, size: 32, align: 32, offset: 320)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !300, file: !16, line: 183, baseType: !349, size: 32, align: 32, offset: 352)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !300, file: !16, line: 184, baseType: !349, size: 32, align: 32, offset: 384)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !300, file: !16, line: 186, baseType: !165, size: 64, align: 64, offset: 448)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !300, file: !16, line: 188, baseType: !298, size: 64, align: 64, offset: 512)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !300, file: !16, line: 189, baseType: !298, size: 64, align: 64, offset: 576)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !300, file: !16, line: 191, baseType: !140, size: 64, align: 64, offset: 640)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !300, file: !16, line: 193, baseType: !362, size: 64, align: 64, offset: 704)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64, align: 64)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !364)
!364 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !255, file: !4, line: 151, baseType: !367, size: 64, align: 64, offset: 320)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64, align: 64)
!368 = !DISubroutineType(types: !369)
!369 = !{null, !247}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !255, file: !4, line: 152, baseType: !371, size: 64, align: 64, offset: 384)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64, align: 64)
!372 = !DISubroutineType(types: !373)
!373 = !{!261, !247, !374, !266}
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !255, file: !4, line: 155, baseType: !376, size: 64, align: 64, offset: 448)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64, align: 64)
!377 = !DISubroutineType(types: !378)
!378 = !{!374, !247}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !249, file: !4, line: 103, baseType: !131, size: 64, align: 64, offset: 128)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !249, file: !4, line: 104, baseType: !381, size: 64, align: 64, offset: 192)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !382, line: 77, baseType: !383)
!382 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64, align: 64)
!384 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !382, line: 77, flags: DIFlagFwdDecl)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !249, file: !4, line: 105, baseType: !381, size: 64, align: 64, offset: 256)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !249, file: !4, line: 106, baseType: !131, size: 64, align: 64, offset: 320)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !249, file: !4, line: 107, baseType: !349, size: 32, align: 32, offset: 384)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !249, file: !4, line: 109, baseType: !262, size: 64, align: 64, offset: 448)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !249, file: !4, line: 110, baseType: !390, size: 64, align: 64, offset: 512)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64, align: 64)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !392, line: 39, baseType: !393)
!392 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !392, line: 41, size: 192, align: 64, elements: !394)
!394 = !{!395, !396, !397}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !393, file: !392, line: 43, baseType: !131, size: 64, align: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !393, file: !392, line: 44, baseType: !262, size: 64, align: 64, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !393, file: !392, line: 45, baseType: !262, size: 64, align: 64, offset: 128)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !249, file: !4, line: 111, baseType: !390, size: 64, align: 64, offset: 576)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !249, file: !4, line: 112, baseType: !390, size: 64, align: 64, offset: 640)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !249, file: !4, line: 113, baseType: !401, size: 48, align: 8, offset: 704)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !132, size: 48, align: 8, elements: !402)
!402 = !{!403}
!403 = !DISubrange(count: 6)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !249, file: !4, line: 117, baseType: !349, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !249, file: !4, line: 118, baseType: !349, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !249, file: !4, line: 119, baseType: !349, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !249, file: !4, line: 120, baseType: !349, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !249, file: !4, line: 121, baseType: !349, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !249, file: !4, line: 122, baseType: !349, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !249, file: !4, line: 124, baseType: !123, size: 64, align: 64, offset: 768)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !249, file: !4, line: 125, baseType: !123, size: 64, align: 64, offset: 832)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !212, file: !215, line: 38, baseType: !152, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !212, file: !215, line: 39, baseType: !152, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !212, file: !215, line: 40, baseType: !152, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !212, file: !215, line: 41, baseType: !152, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !212, file: !215, line: 42, baseType: !152, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !212, file: !215, line: 43, baseType: !152, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !212, file: !215, line: 44, baseType: !152, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !212, file: !215, line: 45, baseType: !152, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !212, file: !215, line: 46, baseType: !140, size: 64, align: 64, offset: 1792)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !212, file: !215, line: 47, baseType: !140, size: 64, align: 64, offset: 1856)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !202, file: !206, line: 9, baseType: !146, size: 64, align: 64, offset: 192)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !202, file: !206, line: 10, baseType: !146, size: 64, align: 64, offset: 256)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !202, file: !206, line: 12, baseType: !140, size: 64, align: 64, offset: 320)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !202, file: !206, line: 13, baseType: !140, size: 64, align: 64, offset: 384)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !202, file: !206, line: 15, baseType: !152, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !202, file: !206, line: 16, baseType: !152, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !202, file: !206, line: 17, baseType: !152, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !202, file: !206, line: 18, baseType: !152, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !202, file: !206, line: 19, baseType: !152, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !202, file: !206, line: 21, baseType: !432, size: 64, align: 64, offset: 512)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64, align: 64)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !190, line: 102, baseType: !434)
!434 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !190, line: 102, flags: DIFlagFwdDecl)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !202, file: !206, line: 22, baseType: !122, size: 32, align: 32, offset: 576)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !202, file: !206, line: 25, baseType: !437, size: 128, align: 64, offset: 640)
!437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 128, align: 64, elements: !438)
!438 = !{!439}
!439 = !DISubrange(count: 2)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !202, file: !206, line: 26, baseType: !122, size: 32, align: 32, offset: 768)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !202, file: !206, line: 27, baseType: !122, size: 32, align: 32, offset: 800)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !202, file: !206, line: 29, baseType: !443, size: 64, align: 64, offset: 832)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64, align: 64)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !190, line: 103, baseType: !445)
!445 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !190, line: 103, flags: DIFlagFwdDecl)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !202, file: !206, line: 30, baseType: !179, size: 64, align: 64, offset: 896)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !202, file: !206, line: 32, baseType: !140, size: 64, align: 64, offset: 960)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !202, file: !206, line: 33, baseType: !140, size: 64, align: 64, offset: 1024)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !202, file: !206, line: 34, baseType: !140, size: 64, align: 64, offset: 1088)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !202, file: !206, line: 35, baseType: !152, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !202, file: !206, line: 36, baseType: !152, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !202, file: !206, line: 37, baseType: !152, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !202, file: !206, line: 38, baseType: !152, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !202, file: !206, line: 40, baseType: !455, size: 128, align: 64, offset: 1216)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !120, line: 504, baseType: !456)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !120, line: 506, size: 128, align: 64, elements: !457)
!457 = !{!458, !460}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !456, file: !120, line: 508, baseType: !459, size: 64, align: 64)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !120, line: 48, baseType: !150)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !456, file: !120, line: 509, baseType: !459, size: 64, align: 64, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !202, file: !206, line: 41, baseType: !146, size: 64, align: 64, offset: 1344)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !202, file: !206, line: 42, baseType: !122, size: 32, align: 32, offset: 1408)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !202, file: !206, line: 44, baseType: !165, size: 64, align: 64, offset: 1472)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !202, file: !206, line: 45, baseType: !165, size: 64, align: 64, offset: 1536)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !202, file: !206, line: 53, baseType: !466, size: 64, align: 64, offset: 1600)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64, align: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{null, !200, !469, !122}
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64, align: 64)
!470 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !202, file: !206, line: 55, baseType: !472, size: 64, align: 64, offset: 1664)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64, align: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{!122, !200, !133}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !202, file: !206, line: 57, baseType: !476, size: 64, align: 64, offset: 1728)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64, align: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{!122, !200, !469}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !202, file: !206, line: 60, baseType: !480, size: 64, align: 64, offset: 1792)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64, align: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!469, !200}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !202, file: !206, line: 62, baseType: !484, size: 64, align: 64, offset: 1856)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64, align: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{null, !200, !469, !469, !122}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !202, file: !206, line: 65, baseType: !488, size: 64, align: 64, offset: 1920)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64, align: 64)
!489 = !DISubroutineType(types: !490)
!490 = !{!143, !200, !469, !469}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !202, file: !206, line: 69, baseType: !492, size: 64, align: 64, offset: 1984)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64, align: 64)
!493 = !DISubroutineType(types: !494)
!494 = !{!188, !200, !469}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !202, file: !206, line: 70, baseType: !496, size: 64, align: 64, offset: 2048)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64, align: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{!499, !200, !469}
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64, align: 64)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !190, line: 110, baseType: !501)
!501 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !190, line: 110, flags: DIFlagFwdDecl)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !202, file: !206, line: 71, baseType: !503, size: 64, align: 64, offset: 2112)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64, align: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!122, !469, !469}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !202, file: !206, line: 73, baseType: !503, size: 64, align: 64, offset: 2176)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !191, file: !195, line: 9, baseType: !140, size: 64, align: 64, offset: 256)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !191, file: !195, line: 10, baseType: !140, size: 64, align: 64, offset: 320)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !191, file: !195, line: 11, baseType: !146, size: 64, align: 64, offset: 384)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !191, file: !195, line: 12, baseType: !122, size: 32, align: 32, offset: 448)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !191, file: !195, line: 13, baseType: !140, size: 64, align: 64, offset: 512)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !191, file: !195, line: 15, baseType: !513, size: 64, align: 64, offset: 576)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64, align: 64)
!514 = !DISubroutineType(types: !515)
!515 = !{null, !516}
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64, align: 64)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !190, line: 108, baseType: !518)
!518 = !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !190, line: 108, flags: DIFlagFwdDecl)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !191, file: !195, line: 17, baseType: !520, size: 64, align: 64, offset: 640)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64, align: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{!469, !516}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !191, file: !524, line: 5, baseType: !140, size: 64, align: 64, offset: 704)
!524 = !DIFile(filename: "channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!525 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !191, file: !524, line: 6, baseType: !140, size: 64, align: 64, offset: 768)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !191, file: !524, line: 7, baseType: !146, size: 64, align: 64, offset: 832)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !191, file: !524, line: 9, baseType: !179, size: 64, align: 64, offset: 896)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !191, file: !524, line: 10, baseType: !529, size: 64, align: 64, offset: 960)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64, align: 64)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !190, line: 111, baseType: !531)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !532, line: 13, size: 576, align: 64, elements: !533)
!532 = !DIFile(filename: "nicklist.h", directory: "/home/lichi/Desktop/irssi/task1")
!533 = !{!534, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !552, !553}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !531, file: !535, line: 3, baseType: !122, size: 32, align: 32)
!535 = !DIFile(filename: "nick-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!536 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !531, file: !535, line: 4, baseType: !122, size: 32, align: 32, offset: 32)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "last_check", scope: !531, file: !535, line: 6, baseType: !146, size: 64, align: 64, offset: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !531, file: !535, line: 8, baseType: !140, size: 64, align: 64, offset: 128)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !531, file: !535, line: 9, baseType: !140, size: 64, align: 64, offset: 192)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !531, file: !535, line: 10, baseType: !140, size: 64, align: 64, offset: 256)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "hops", scope: !531, file: !535, line: 11, baseType: !122, size: 32, align: 32, offset: 320)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "gone", scope: !531, file: !535, line: 14, baseType: !152, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "serverop", scope: !531, file: !535, line: 15, baseType: !152, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "send_massjoin", scope: !531, file: !535, line: 18, baseType: !152, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !531, file: !535, line: 19, baseType: !152, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !531, file: !535, line: 20, baseType: !152, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !531, file: !535, line: 21, baseType: !152, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !531, file: !535, line: 22, baseType: !549, size: 64, align: 8, offset: 360)
!549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 64, align: 8, elements: !550)
!550 = !{!551}
!551 = !DISubrange(count: 8)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !531, file: !535, line: 26, baseType: !114, size: 64, align: 64, offset: 448)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !531, file: !535, line: 28, baseType: !529, size: 64, align: 64, offset: 512)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !191, file: !524, line: 12, baseType: !152, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !191, file: !524, line: 13, baseType: !140, size: 64, align: 64, offset: 1088)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !191, file: !524, line: 14, baseType: !122, size: 32, align: 32, offset: 1152)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !191, file: !524, line: 15, baseType: !140, size: 64, align: 64, offset: 1216)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !191, file: !524, line: 17, baseType: !152, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !191, file: !524, line: 18, baseType: !152, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !191, file: !524, line: 19, baseType: !152, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !191, file: !524, line: 20, baseType: !152, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !191, file: !524, line: 22, baseType: !152, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !191, file: !524, line: 23, baseType: !152, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !191, file: !524, line: 24, baseType: !152, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !191, file: !524, line: 25, baseType: !152, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !191, file: !524, line: 26, baseType: !152, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !191, file: !524, line: 31, baseType: !568, size: 64, align: 64, offset: 1344)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64, align: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!140, !188}
!571 = distinct !DIGlobalVariable(name: "time_tag", scope: !0, file: !164, line: 40, type: !122, isLocal: true, isDefinition: true, variable: i32* @time_tag)
!572 = !{i32 2, !"Dwarf Version", i32 4}
!573 = !{i32 2, !"Debug Info Version", i32 3}
!574 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!575 = distinct !DISubprogram(name: "ignore_check", scope: !164, file: !164, line: 133, type: !576, isLocal: false, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !578)
!576 = !DISubroutineType(types: !577)
!577 = !{!122, !200, !469, !469, !469, !469, !122}
!578 = !{}
!579 = !DILocalVariable(name: "server", arg: 1, scope: !575, file: !164, line: 133, type: !200)
!580 = !DIExpression()
!581 = !DILocation(line: 133, column: 30, scope: !575)
!582 = !DILocalVariable(name: "nick", arg: 2, scope: !575, file: !164, line: 133, type: !469)
!583 = !DILocation(line: 133, column: 50, scope: !575)
!584 = !DILocalVariable(name: "host", arg: 3, scope: !575, file: !164, line: 133, type: !469)
!585 = !DILocation(line: 133, column: 68, scope: !575)
!586 = !DILocalVariable(name: "channel", arg: 4, scope: !575, file: !164, line: 134, type: !469)
!587 = !DILocation(line: 134, column: 16, scope: !575)
!588 = !DILocalVariable(name: "text", arg: 5, scope: !575, file: !164, line: 134, type: !469)
!589 = !DILocation(line: 134, column: 37, scope: !575)
!590 = !DILocalVariable(name: "level", arg: 6, scope: !575, file: !164, line: 134, type: !122)
!591 = !DILocation(line: 134, column: 47, scope: !575)
!592 = !DILocalVariable(name: "chanrec", scope: !575, file: !164, line: 136, type: !188)
!593 = !DILocation(line: 136, column: 15, scope: !575)
!594 = !DILocalVariable(name: "nickrec", scope: !575, file: !164, line: 137, type: !529)
!595 = !DILocation(line: 137, column: 12, scope: !575)
!596 = !DILocalVariable(name: "rec", scope: !575, file: !164, line: 138, type: !134)
!597 = !DILocation(line: 138, column: 21, scope: !575)
!598 = !DILocalVariable(name: "tmp", scope: !575, file: !164, line: 139, type: !165)
!599 = !DILocation(line: 139, column: 10, scope: !575)
!600 = !DILocalVariable(name: "nickmask", scope: !575, file: !164, line: 140, type: !140)
!601 = !DILocation(line: 140, column: 15, scope: !575)
!602 = !DILocalVariable(name: "len", scope: !575, file: !164, line: 141, type: !122)
!603 = !DILocation(line: 141, column: 13, scope: !575)
!604 = !DILocalVariable(name: "best_mask", scope: !575, file: !164, line: 141, type: !122)
!605 = !DILocation(line: 141, column: 18, scope: !575)
!606 = !DILocalVariable(name: "best_match", scope: !575, file: !164, line: 141, type: !122)
!607 = !DILocation(line: 141, column: 29, scope: !575)
!608 = !DILocalVariable(name: "best_patt", scope: !575, file: !164, line: 141, type: !122)
!609 = !DILocation(line: 141, column: 41, scope: !575)
!610 = !DILocation(line: 143, column: 13, scope: !611)
!611 = distinct !DILexicalBlock(scope: !575, file: !164, line: 143, column: 13)
!612 = !DILocation(line: 143, column: 18, scope: !611)
!613 = !DILocation(line: 143, column: 13, scope: !575)
!614 = !DILocation(line: 143, column: 31, scope: !615)
!615 = !DILexicalBlockFile(scope: !611, file: !164, discriminator: 1)
!616 = !DILocation(line: 143, column: 26, scope: !615)
!617 = !DILocation(line: 145, column: 12, scope: !575)
!618 = !DILocation(line: 145, column: 19, scope: !575)
!619 = !DILocation(line: 145, column: 26, scope: !575)
!620 = !DILocation(line: 145, column: 29, scope: !621)
!621 = !DILexicalBlockFile(scope: !575, file: !164, discriminator: 1)
!622 = !DILocation(line: 145, column: 37, scope: !621)
!623 = !DILocation(line: 145, column: 12, scope: !621)
!624 = !DILocation(line: 145, column: 12, scope: !625)
!625 = !DILexicalBlockFile(scope: !575, file: !164, discriminator: 2)
!626 = !DILocation(line: 146, column: 16, scope: !575)
!627 = !DILocation(line: 146, column: 24, scope: !575)
!628 = !DILocation(line: 146, column: 3, scope: !575)
!629 = !DILocation(line: 145, column: 12, scope: !630)
!630 = !DILexicalBlockFile(scope: !575, file: !164, discriminator: 3)
!631 = !DILocation(line: 145, column: 12, scope: !632)
!632 = !DILexicalBlockFile(scope: !575, file: !164, discriminator: 4)
!633 = !DILocation(line: 145, column: 10, scope: !632)
!634 = !DILocation(line: 147, column: 6, scope: !635)
!635 = distinct !DILexicalBlock(scope: !575, file: !164, line: 147, column: 6)
!636 = !DILocation(line: 147, column: 14, scope: !635)
!637 = !DILocation(line: 147, column: 21, scope: !635)
!638 = !DILocation(line: 147, column: 24, scope: !639)
!639 = !DILexicalBlockFile(scope: !635, file: !164, discriminator: 1)
!640 = !DILocation(line: 147, column: 29, scope: !639)
!641 = !DILocation(line: 147, column: 37, scope: !639)
!642 = !DILocation(line: 148, column: 31, scope: !635)
!643 = !DILocation(line: 148, column: 40, scope: !635)
!644 = !DILocation(line: 148, column: 17, scope: !635)
!645 = !DILocation(line: 148, column: 15, scope: !635)
!646 = !DILocation(line: 148, column: 47, scope: !635)
!647 = !DILocation(line: 147, column: 6, scope: !625)
!648 = !DILocation(line: 150, column: 7, scope: !649)
!649 = distinct !DILexicalBlock(scope: !650, file: !164, line: 150, column: 7)
!650 = distinct !DILexicalBlock(scope: !635, file: !164, line: 148, column: 55)
!651 = !DILocation(line: 150, column: 16, scope: !649)
!652 = !DILocation(line: 150, column: 21, scope: !649)
!653 = !DILocation(line: 150, column: 7, scope: !650)
!654 = !DILocation(line: 151, column: 22, scope: !649)
!655 = !DILocation(line: 151, column: 31, scope: !649)
!656 = !DILocation(line: 151, column: 40, scope: !649)
!657 = !DILocation(line: 151, column: 4, scope: !649)
!658 = !DILocation(line: 153, column: 30, scope: !650)
!659 = !DILocation(line: 153, column: 42, scope: !650)
!660 = !DILocation(line: 153, column: 49, scope: !650)
!661 = !DILocation(line: 153, column: 9, scope: !650)
!662 = !DILocation(line: 153, column: 7, scope: !650)
!663 = !DILocation(line: 154, column: 12, scope: !650)
!664 = !DILocation(line: 155, column: 2, scope: !650)
!665 = !DILocation(line: 156, column: 9, scope: !666)
!666 = distinct !DILexicalBlock(scope: !635, file: !164, line: 155, column: 9)
!667 = !DILocation(line: 156, column: 7, scope: !666)
!668 = !DILocation(line: 157, column: 26, scope: !666)
!669 = !DILocation(line: 157, column: 37, scope: !666)
!670 = !DILocation(line: 157, column: 14, scope: !666)
!671 = !DILocation(line: 157, column: 12, scope: !666)
!672 = !DILocation(line: 160, column: 31, scope: !575)
!673 = !DILocation(line: 160, column: 19, scope: !575)
!674 = !DILocation(line: 160, column: 48, scope: !575)
!675 = !DILocation(line: 161, column: 2, scope: !575)
!676 = !DILocation(line: 161, column: 9, scope: !677)
!677 = !DILexicalBlockFile(scope: !678, file: !164, discriminator: 1)
!678 = distinct !DILexicalBlock(scope: !679, file: !164, line: 161, column: 2)
!679 = distinct !DILexicalBlock(scope: !575, file: !164, line: 161, column: 2)
!680 = !DILocation(line: 161, column: 13, scope: !677)
!681 = !DILocation(line: 161, column: 2, scope: !677)
!682 = !DILocalVariable(name: "match", scope: !683, file: !164, line: 162, type: !122)
!683 = distinct !DILexicalBlock(scope: !678, file: !164, line: 161, column: 38)
!684 = !DILocation(line: 162, column: 7, scope: !683)
!685 = !DILocation(line: 163, column: 9, scope: !683)
!686 = !DILocation(line: 163, column: 14, scope: !683)
!687 = !DILocation(line: 163, column: 7, scope: !683)
!688 = !DILocation(line: 165, column: 7, scope: !689)
!689 = distinct !DILexicalBlock(scope: !683, file: !164, line: 165, column: 7)
!690 = !DILocation(line: 165, column: 16, scope: !689)
!691 = !DILocation(line: 165, column: 7, scope: !683)
!692 = !DILocation(line: 166, column: 14, scope: !689)
!693 = !DILocation(line: 166, column: 20, scope: !689)
!694 = !DILocation(line: 166, column: 30, scope: !689)
!695 = !DILocation(line: 166, column: 11, scope: !689)
!696 = !DILocation(line: 166, column: 16, scope: !697)
!697 = !DILexicalBlockFile(scope: !689, file: !164, discriminator: 1)
!698 = !DILocation(line: 166, column: 24, scope: !697)
!699 = !DILocation(line: 166, column: 11, scope: !697)
!700 = !DILocation(line: 166, column: 34, scope: !701)
!701 = !DILexicalBlockFile(scope: !689, file: !164, discriminator: 2)
!702 = !DILocation(line: 166, column: 43, scope: !701)
!703 = !DILocation(line: 166, column: 49, scope: !701)
!704 = !DILocation(line: 166, column: 55, scope: !701)
!705 = !DILocation(line: 166, column: 14, scope: !701)
!706 = !DILocation(line: 166, column: 66, scope: !701)
!707 = !DILocation(line: 166, column: 73, scope: !701)
!708 = !DILocation(line: 167, column: 7, scope: !689)
!709 = !DILocation(line: 167, column: 13, scope: !689)
!710 = !DILocation(line: 167, column: 22, scope: !689)
!711 = !DILocation(line: 167, column: 4, scope: !689)
!712 = !DILocation(line: 167, column: 9, scope: !697)
!713 = !DILocation(line: 167, column: 18, scope: !697)
!714 = !DILocation(line: 167, column: 4, scope: !697)
!715 = !DILocation(line: 167, column: 22, scope: !701)
!716 = !DILocation(line: 167, column: 28, scope: !701)
!717 = !DILocation(line: 167, column: 39, scope: !701)
!718 = !DILocation(line: 167, column: 7, scope: !701)
!719 = !DILocation(line: 167, column: 49, scope: !701)
!720 = !DILocation(line: 167, column: 57, scope: !701)
!721 = !DILocation(line: 168, column: 7, scope: !689)
!722 = !DILocation(line: 168, column: 13, scope: !689)
!723 = !DILocation(line: 168, column: 18, scope: !689)
!724 = !DILocation(line: 168, column: 4, scope: !689)
!725 = !DILocation(line: 168, column: 16, scope: !697)
!726 = !DILocation(line: 168, column: 22, scope: !697)
!727 = !DILocation(line: 168, column: 8, scope: !697)
!728 = !DILocation(line: 168, column: 33, scope: !697)
!729 = !DILocation(line: 168, column: 23, scope: !701)
!730 = !DILocation(line: 168, column: 29, scope: !701)
!731 = !DILocation(line: 168, column: 35, scope: !701)
!732 = !DILocation(line: 168, column: 6, scope: !701)
!733 = !DILocation(line: 168, column: 8, scope: !701)
!734 = !DILocation(line: 168, column: 64, scope: !735)
!735 = !DILexicalBlockFile(scope: !689, file: !164, discriminator: 3)
!736 = !DILocation(line: 168, column: 70, scope: !735)
!737 = !DILocation(line: 168, column: 76, scope: !735)
!738 = !DILocation(line: 168, column: 47, scope: !735)
!739 = !DILocation(line: 168, column: 8, scope: !735)
!740 = !DILocation(line: 168, column: 8, scope: !741)
!741 = !DILexicalBlockFile(scope: !689, file: !164, discriminator: 4)
!742 = !DILocation(line: 168, column: 4, scope: !741)
!743 = !DILocation(line: 167, column: 57, scope: !735)
!744 = !DILocation(line: 166, column: 10, scope: !735)
!745 = !DILocation(line: 166, column: 4, scope: !735)
!746 = !DILocation(line: 169, column: 7, scope: !747)
!747 = distinct !DILexicalBlock(scope: !683, file: !164, line: 169, column: 7)
!748 = !DILocation(line: 169, column: 13, scope: !747)
!749 = !DILocation(line: 170, column: 26, scope: !747)
!750 = !DILocation(line: 170, column: 31, scope: !747)
!751 = !DILocation(line: 170, column: 7, scope: !747)
!752 = !DILocation(line: 170, column: 38, scope: !747)
!753 = !DILocation(line: 171, column: 28, scope: !747)
!754 = !DILocation(line: 171, column: 33, scope: !747)
!755 = !DILocation(line: 171, column: 7, scope: !747)
!756 = !DILocation(line: 169, column: 7, scope: !757)
!757 = !DILexicalBlockFile(scope: !683, file: !164, discriminator: 1)
!758 = !DILocation(line: 172, column: 10, scope: !759)
!759 = distinct !DILexicalBlock(scope: !747, file: !164, line: 171, column: 40)
!760 = !DILocation(line: 172, column: 15, scope: !759)
!761 = !DILocation(line: 172, column: 20, scope: !759)
!762 = !DILocation(line: 172, column: 10, scope: !763)
!763 = !DILexicalBlockFile(scope: !759, file: !164, discriminator: 1)
!764 = !DILocation(line: 172, column: 40, scope: !765)
!765 = !DILexicalBlockFile(scope: !759, file: !164, discriminator: 2)
!766 = !DILocation(line: 172, column: 45, scope: !765)
!767 = !DILocation(line: 172, column: 33, scope: !765)
!768 = !DILocation(line: 172, column: 10, scope: !765)
!769 = !DILocation(line: 172, column: 10, scope: !770)
!770 = !DILexicalBlockFile(scope: !759, file: !164, discriminator: 3)
!771 = !DILocation(line: 172, column: 8, scope: !770)
!772 = !DILocation(line: 173, column: 8, scope: !773)
!773 = distinct !DILexicalBlock(scope: !759, file: !164, line: 173, column: 8)
!774 = !DILocation(line: 173, column: 14, scope: !773)
!775 = !DILocation(line: 173, column: 12, scope: !773)
!776 = !DILocation(line: 173, column: 8, scope: !759)
!777 = !DILocation(line: 174, column: 17, scope: !778)
!778 = distinct !DILexicalBlock(scope: !773, file: !164, line: 173, column: 25)
!779 = !DILocation(line: 174, column: 15, scope: !778)
!780 = !DILocation(line: 175, column: 19, scope: !778)
!781 = !DILocation(line: 175, column: 24, scope: !778)
!782 = !DILocation(line: 175, column: 18, scope: !778)
!783 = !DILocation(line: 175, column: 16, scope: !778)
!784 = !DILocation(line: 176, column: 4, scope: !778)
!785 = !DILocation(line: 176, column: 15, scope: !786)
!786 = !DILexicalBlockFile(scope: !787, file: !164, discriminator: 1)
!787 = distinct !DILexicalBlock(scope: !773, file: !164, line: 176, column: 15)
!788 = !DILocation(line: 176, column: 22, scope: !786)
!789 = !DILocation(line: 176, column: 19, scope: !786)
!790 = !DILocation(line: 177, column: 11, scope: !791)
!791 = distinct !DILexicalBlock(scope: !787, file: !164, line: 176, column: 33)
!792 = !DILocation(line: 177, column: 16, scope: !791)
!793 = !DILocation(line: 177, column: 24, scope: !791)
!794 = !DILocation(line: 177, column: 11, scope: !795)
!795 = !DILexicalBlockFile(scope: !791, file: !164, discriminator: 1)
!796 = !DILocation(line: 177, column: 44, scope: !797)
!797 = !DILexicalBlockFile(scope: !791, file: !164, discriminator: 2)
!798 = !DILocation(line: 177, column: 49, scope: !797)
!799 = !DILocation(line: 177, column: 37, scope: !797)
!800 = !DILocation(line: 177, column: 11, scope: !797)
!801 = !DILocation(line: 177, column: 11, scope: !802)
!802 = !DILexicalBlockFile(scope: !791, file: !164, discriminator: 3)
!803 = !DILocation(line: 177, column: 9, scope: !802)
!804 = !DILocation(line: 178, column: 9, scope: !805)
!805 = distinct !DILexicalBlock(scope: !791, file: !164, line: 178, column: 9)
!806 = !DILocation(line: 178, column: 15, scope: !805)
!807 = !DILocation(line: 178, column: 13, scope: !805)
!808 = !DILocation(line: 178, column: 9, scope: !791)
!809 = !DILocation(line: 179, column: 18, scope: !810)
!810 = distinct !DILexicalBlock(scope: !805, file: !164, line: 178, column: 26)
!811 = !DILocation(line: 179, column: 16, scope: !810)
!812 = !DILocation(line: 180, column: 20, scope: !810)
!813 = !DILocation(line: 180, column: 25, scope: !810)
!814 = !DILocation(line: 180, column: 19, scope: !810)
!815 = !DILocation(line: 180, column: 17, scope: !810)
!816 = !DILocation(line: 181, column: 5, scope: !810)
!817 = !DILocation(line: 181, column: 16, scope: !818)
!818 = !DILexicalBlockFile(scope: !819, file: !164, discriminator: 1)
!819 = distinct !DILexicalBlock(scope: !805, file: !164, line: 181, column: 16)
!820 = !DILocation(line: 181, column: 23, scope: !818)
!821 = !DILocation(line: 181, column: 20, scope: !818)
!822 = !DILocation(line: 181, column: 33, scope: !818)
!823 = !DILocation(line: 181, column: 36, scope: !824)
!824 = !DILexicalBlockFile(scope: !819, file: !164, discriminator: 2)
!825 = !DILocation(line: 181, column: 41, scope: !824)
!826 = !DILocation(line: 181, column: 16, scope: !824)
!827 = !DILocation(line: 182, column: 17, scope: !819)
!828 = !DILocation(line: 182, column: 6, scope: !819)
!829 = !DILocation(line: 183, column: 4, scope: !791)
!830 = !DILocation(line: 184, column: 3, scope: !759)
!831 = !DILocation(line: 185, column: 2, scope: !683)
!832 = !DILocation(line: 161, column: 27, scope: !833)
!833 = !DILexicalBlockFile(scope: !678, file: !164, discriminator: 2)
!834 = !DILocation(line: 161, column: 32, scope: !833)
!835 = !DILocation(line: 161, column: 25, scope: !833)
!836 = !DILocation(line: 161, column: 2, scope: !833)
!837 = distinct !{!837, !675}
!838 = !DILocation(line: 186, column: 16, scope: !575)
!839 = !DILocation(line: 186, column: 9, scope: !575)
!840 = !DILocation(line: 188, column: 6, scope: !841)
!841 = distinct !DILexicalBlock(scope: !575, file: !164, line: 188, column: 6)
!842 = !DILocation(line: 188, column: 17, scope: !841)
!843 = !DILocation(line: 188, column: 21, scope: !844)
!844 = !DILexicalBlockFile(scope: !841, file: !164, discriminator: 1)
!845 = !DILocation(line: 188, column: 27, scope: !844)
!846 = !DILocation(line: 188, column: 46, scope: !844)
!847 = !DILocation(line: 188, column: 6, scope: !844)
!848 = !DILocation(line: 189, column: 10, scope: !841)
!849 = !DILocation(line: 189, column: 3, scope: !841)
!850 = !DILocation(line: 191, column: 37, scope: !575)
!851 = !DILocation(line: 191, column: 46, scope: !575)
!852 = !DILocation(line: 191, column: 52, scope: !575)
!853 = !DILocation(line: 191, column: 16, scope: !575)
!854 = !DILocation(line: 191, column: 9, scope: !575)
!855 = !DILocation(line: 192, column: 1, scope: !575)
!856 = distinct !DISubprogram(name: "ignore_match_level", scope: !164, file: !164, line: 85, type: !857, isLocal: true, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !578)
!857 = !DISubroutineType(types: !858)
!858 = !{!122, !134, !122}
!859 = !DILocalVariable(name: "rec", arg: 1, scope: !856, file: !164, line: 85, type: !134)
!860 = !DILocation(line: 85, column: 43, scope: !856)
!861 = !DILocalVariable(name: "level", arg: 2, scope: !856, file: !164, line: 85, type: !122)
!862 = !DILocation(line: 85, column: 52, scope: !856)
!863 = !DILocation(line: 87, column: 6, scope: !864)
!864 = distinct !DILexicalBlock(scope: !856, file: !164, line: 87, column: 6)
!865 = !DILocation(line: 87, column: 12, scope: !864)
!866 = !DILocation(line: 87, column: 6, scope: !856)
!867 = !DILocalVariable(name: "flaglevel", scope: !868, file: !164, line: 88, type: !122)
!868 = distinct !DILexicalBlock(scope: !864, file: !164, line: 87, column: 53)
!869 = !DILocation(line: 88, column: 7, scope: !868)
!870 = !DILocation(line: 88, column: 19, scope: !868)
!871 = !DILocation(line: 88, column: 25, scope: !868)
!872 = !DILocalVariable(name: "msglevel", scope: !868, file: !164, line: 89, type: !122)
!873 = !DILocation(line: 89, column: 7, scope: !868)
!874 = !DILocation(line: 89, column: 18, scope: !868)
!875 = !DILocation(line: 89, column: 24, scope: !868)
!876 = !DILocation(line: 90, column: 11, scope: !868)
!877 = !DILocation(line: 90, column: 22, scope: !868)
!878 = !DILocation(line: 90, column: 27, scope: !868)
!879 = !DILocation(line: 90, column: 20, scope: !868)
!880 = !DILocation(line: 90, column: 34, scope: !868)
!881 = !DILocation(line: 90, column: 38, scope: !882)
!882 = !DILexicalBlockFile(scope: !868, file: !164, discriminator: 1)
!883 = !DILocation(line: 90, column: 50, scope: !882)
!884 = !DILocation(line: 90, column: 55, scope: !882)
!885 = !DILocation(line: 90, column: 48, scope: !882)
!886 = !DILocation(line: 90, column: 34, scope: !882)
!887 = !DILocation(line: 90, column: 34, scope: !888)
!888 = !DILexicalBlockFile(scope: !868, file: !164, discriminator: 2)
!889 = !DILocation(line: 90, column: 3, scope: !888)
!890 = !DILocation(line: 91, column: 15, scope: !891)
!891 = distinct !DILexicalBlock(scope: !864, file: !164, line: 91, column: 13)
!892 = !DILocation(line: 91, column: 20, scope: !891)
!893 = !DILocation(line: 91, column: 26, scope: !891)
!894 = !DILocation(line: 91, column: 13, scope: !864)
!895 = !DILocation(line: 92, column: 11, scope: !896)
!896 = distinct !DILexicalBlock(scope: !891, file: !164, line: 91, column: 68)
!897 = !DILocation(line: 92, column: 19, scope: !896)
!898 = !DILocation(line: 92, column: 24, scope: !896)
!899 = !DILocation(line: 92, column: 17, scope: !896)
!900 = !DILocation(line: 92, column: 3, scope: !896)
!901 = !DILocation(line: 94, column: 3, scope: !902)
!902 = distinct !DILexicalBlock(scope: !891, file: !164, line: 93, column: 9)
!903 = !DILocation(line: 96, column: 1, scope: !856)
!904 = distinct !DISubprogram(name: "ignore_match_pattern", scope: !164, file: !164, line: 62, type: !905, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !578)
!905 = !DISubroutineType(types: !906)
!906 = !{!122, !134, !469}
!907 = !DILocalVariable(name: "rec", arg: 1, scope: !904, file: !164, line: 62, type: !134)
!908 = !DILocation(line: 62, column: 45, scope: !904)
!909 = !DILocalVariable(name: "text", arg: 2, scope: !904, file: !164, line: 62, type: !469)
!910 = !DILocation(line: 62, column: 62, scope: !904)
!911 = !DILocation(line: 64, column: 6, scope: !912)
!912 = distinct !DILexicalBlock(scope: !904, file: !164, line: 64, column: 6)
!913 = !DILocation(line: 64, column: 11, scope: !912)
!914 = !DILocation(line: 64, column: 19, scope: !912)
!915 = !DILocation(line: 64, column: 6, scope: !904)
!916 = !DILocation(line: 65, column: 3, scope: !912)
!917 = !DILocation(line: 67, column: 13, scope: !918)
!918 = distinct !DILexicalBlock(scope: !904, file: !164, line: 67, column: 13)
!919 = !DILocation(line: 67, column: 18, scope: !918)
!920 = !DILocation(line: 67, column: 13, scope: !904)
!921 = !DILocation(line: 68, column: 3, scope: !918)
!922 = !DILocation(line: 70, column: 6, scope: !923)
!923 = distinct !DILexicalBlock(scope: !904, file: !164, line: 70, column: 6)
!924 = !DILocation(line: 70, column: 11, scope: !923)
!925 = !DILocation(line: 70, column: 6, scope: !904)
!926 = !DILocation(line: 71, column: 10, scope: !927)
!927 = distinct !DILexicalBlock(scope: !923, file: !164, line: 70, column: 19)
!928 = !DILocation(line: 71, column: 15, scope: !927)
!929 = !DILocation(line: 71, column: 20, scope: !927)
!930 = !DILocation(line: 71, column: 27, scope: !927)
!931 = !DILocation(line: 72, column: 18, scope: !927)
!932 = !DILocation(line: 72, column: 23, scope: !927)
!933 = !DILocation(line: 72, column: 29, scope: !927)
!934 = !DILocation(line: 72, column: 4, scope: !927)
!935 = !DILocation(line: 71, column: 27, scope: !936)
!936 = !DILexicalBlockFile(scope: !927, file: !164, discriminator: 1)
!937 = !DILocation(line: 71, column: 27, scope: !938)
!938 = !DILexicalBlockFile(scope: !927, file: !164, discriminator: 2)
!939 = !DILocation(line: 71, column: 3, scope: !938)
!940 = !DILocation(line: 75, column: 9, scope: !904)
!941 = !DILocation(line: 75, column: 14, scope: !904)
!942 = !DILocation(line: 76, column: 16, scope: !904)
!943 = !DILocation(line: 76, column: 22, scope: !904)
!944 = !DILocation(line: 76, column: 27, scope: !904)
!945 = !DILocation(line: 76, column: 3, scope: !904)
!946 = !DILocation(line: 76, column: 36, scope: !904)
!947 = !DILocation(line: 75, column: 9, scope: !948)
!948 = !DILexicalBlockFile(scope: !904, file: !164, discriminator: 1)
!949 = !DILocation(line: 77, column: 11, scope: !904)
!950 = !DILocation(line: 77, column: 17, scope: !904)
!951 = !DILocation(line: 77, column: 22, scope: !904)
!952 = !DILocation(line: 77, column: 3, scope: !904)
!953 = !DILocation(line: 77, column: 31, scope: !904)
!954 = !DILocation(line: 75, column: 9, scope: !955)
!955 = !DILexicalBlockFile(scope: !904, file: !164, discriminator: 2)
!956 = !DILocation(line: 75, column: 9, scope: !957)
!957 = !DILexicalBlockFile(scope: !904, file: !164, discriminator: 3)
!958 = !DILocation(line: 75, column: 2, scope: !957)
!959 = !DILocation(line: 78, column: 1, scope: !904)
!960 = distinct !DISubprogram(name: "ignore_check_replies", scope: !164, file: !164, line: 112, type: !961, isLocal: true, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !578)
!961 = !DISubroutineType(types: !962)
!962 = !{!122, !188, !469, !122}
!963 = !DILocalVariable(name: "chanrec", arg: 1, scope: !960, file: !164, line: 112, type: !188)
!964 = !DILocation(line: 112, column: 46, scope: !960)
!965 = !DILocalVariable(name: "text", arg: 2, scope: !960, file: !164, line: 112, type: !469)
!966 = !DILocation(line: 112, column: 67, scope: !960)
!967 = !DILocalVariable(name: "level", arg: 3, scope: !960, file: !164, line: 112, type: !122)
!968 = !DILocation(line: 112, column: 77, scope: !960)
!969 = !DILocalVariable(name: "tmp", scope: !960, file: !164, line: 114, type: !165)
!970 = !DILocation(line: 114, column: 10, scope: !960)
!971 = !DILocation(line: 116, column: 6, scope: !972)
!972 = distinct !DILexicalBlock(scope: !960, file: !164, line: 116, column: 6)
!973 = !DILocation(line: 116, column: 11, scope: !972)
!974 = !DILocation(line: 116, column: 18, scope: !972)
!975 = !DILocation(line: 116, column: 21, scope: !976)
!976 = !DILexicalBlockFile(scope: !972, file: !164, discriminator: 1)
!977 = !DILocation(line: 116, column: 29, scope: !976)
!978 = !DILocation(line: 116, column: 6, scope: !976)
!979 = !DILocation(line: 117, column: 3, scope: !972)
!980 = !DILocation(line: 120, column: 13, scope: !981)
!981 = distinct !DILexicalBlock(scope: !960, file: !164, line: 120, column: 2)
!982 = !DILocation(line: 120, column: 11, scope: !981)
!983 = !DILocation(line: 120, column: 7, scope: !981)
!984 = !DILocation(line: 120, column: 22, scope: !985)
!985 = !DILexicalBlockFile(scope: !986, file: !164, discriminator: 1)
!986 = distinct !DILexicalBlock(scope: !981, file: !164, line: 120, column: 2)
!987 = !DILocation(line: 120, column: 26, scope: !985)
!988 = !DILocation(line: 120, column: 2, scope: !985)
!989 = !DILocalVariable(name: "rec", scope: !990, file: !164, line: 121, type: !134)
!990 = distinct !DILexicalBlock(scope: !986, file: !164, line: 120, column: 51)
!991 = !DILocation(line: 121, column: 15, scope: !990)
!992 = !DILocation(line: 121, column: 21, scope: !990)
!993 = !DILocation(line: 121, column: 26, scope: !990)
!994 = !DILocation(line: 123, column: 7, scope: !995)
!995 = distinct !DILexicalBlock(scope: !990, file: !164, line: 123, column: 7)
!996 = !DILocation(line: 123, column: 12, scope: !995)
!997 = !DILocation(line: 123, column: 17, scope: !995)
!998 = !DILocation(line: 123, column: 24, scope: !995)
!999 = !DILocation(line: 123, column: 27, scope: !1000)
!1000 = !DILexicalBlockFile(scope: !995, file: !164, discriminator: 1)
!1001 = !DILocation(line: 123, column: 32, scope: !1000)
!1002 = !DILocation(line: 123, column: 40, scope: !1000)
!1003 = !DILocation(line: 124, column: 26, scope: !995)
!1004 = !DILocation(line: 124, column: 31, scope: !995)
!1005 = !DILocation(line: 124, column: 7, scope: !995)
!1006 = !DILocation(line: 124, column: 38, scope: !995)
!1007 = !DILocation(line: 125, column: 9, scope: !995)
!1008 = !DILocation(line: 125, column: 15, scope: !995)
!1009 = !DILocation(line: 125, column: 24, scope: !995)
!1010 = !DILocation(line: 125, column: 6, scope: !995)
!1011 = !DILocation(line: 125, column: 11, scope: !1000)
!1012 = !DILocation(line: 125, column: 20, scope: !1000)
!1013 = !DILocation(line: 125, column: 26, scope: !1000)
!1014 = !DILocation(line: 125, column: 6, scope: !1000)
!1015 = !DILocation(line: 125, column: 24, scope: !1016)
!1016 = !DILexicalBlockFile(scope: !995, file: !164, discriminator: 2)
!1017 = !DILocation(line: 125, column: 30, scope: !1016)
!1018 = !DILocation(line: 125, column: 41, scope: !1016)
!1019 = !DILocation(line: 125, column: 50, scope: !1016)
!1020 = !DILocation(line: 125, column: 9, scope: !1016)
!1021 = !DILocation(line: 125, column: 57, scope: !1016)
!1022 = !DILocation(line: 125, column: 65, scope: !1016)
!1023 = !DILocation(line: 126, column: 32, scope: !995)
!1024 = !DILocation(line: 126, column: 37, scope: !995)
!1025 = !DILocation(line: 126, column: 46, scope: !995)
!1026 = !DILocation(line: 126, column: 7, scope: !995)
!1027 = !DILocation(line: 123, column: 7, scope: !1028)
!1028 = !DILexicalBlockFile(scope: !990, file: !164, discriminator: 2)
!1029 = !DILocation(line: 127, column: 4, scope: !995)
!1030 = !DILocation(line: 128, column: 2, scope: !990)
!1031 = !DILocation(line: 120, column: 40, scope: !1032)
!1032 = !DILexicalBlockFile(scope: !986, file: !164, discriminator: 2)
!1033 = !DILocation(line: 120, column: 45, scope: !1032)
!1034 = !DILocation(line: 120, column: 38, scope: !1032)
!1035 = !DILocation(line: 120, column: 2, scope: !1032)
!1036 = distinct !{!1036, !1037}
!1037 = !DILocation(line: 120, column: 2, scope: !960)
!1038 = !DILocation(line: 130, column: 2, scope: !960)
!1039 = !DILocation(line: 131, column: 1, scope: !960)
!1040 = distinct !DISubprogram(name: "ignore_find_full", scope: !164, file: !164, line: 194, type: !1041, isLocal: false, isDefinition: true, scopeLine: 196, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !578)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!134, !469, !469, !469, !143, !1043}
!1043 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!1044 = !DILocalVariable(name: "servertag", arg: 1, scope: !1040, file: !164, line: 194, type: !469)
!1045 = !DILocation(line: 194, column: 42, scope: !1040)
!1046 = !DILocalVariable(name: "mask", arg: 2, scope: !1040, file: !164, line: 194, type: !469)
!1047 = !DILocation(line: 194, column: 65, scope: !1040)
!1048 = !DILocalVariable(name: "pattern", arg: 3, scope: !1040, file: !164, line: 194, type: !469)
!1049 = !DILocation(line: 194, column: 83, scope: !1040)
!1050 = !DILocalVariable(name: "channels", arg: 4, scope: !1040, file: !164, line: 195, type: !143)
!1051 = !DILocation(line: 195, column: 10, scope: !1040)
!1052 = !DILocalVariable(name: "flags", arg: 5, scope: !1040, file: !164, line: 195, type: !1043)
!1053 = !DILocation(line: 195, column: 30, scope: !1040)
!1054 = !DILocalVariable(name: "tmp", scope: !1040, file: !164, line: 197, type: !165)
!1055 = !DILocation(line: 197, column: 10, scope: !1040)
!1056 = !DILocalVariable(name: "chan", scope: !1040, file: !164, line: 198, type: !143)
!1057 = !DILocation(line: 198, column: 9, scope: !1040)
!1058 = !DILocalVariable(name: "ignore_servertag", scope: !1040, file: !164, line: 199, type: !122)
!1059 = !DILocation(line: 199, column: 6, scope: !1040)
!1060 = !DILocation(line: 201, column: 6, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1040, file: !164, line: 201, column: 6)
!1062 = !DILocation(line: 201, column: 11, scope: !1061)
!1063 = !DILocation(line: 201, column: 18, scope: !1061)
!1064 = !DILocation(line: 201, column: 23, scope: !1065)
!1065 = !DILexicalBlockFile(scope: !1061, file: !164, discriminator: 1)
!1066 = !DILocation(line: 201, column: 22, scope: !1065)
!1067 = !DILocation(line: 201, column: 28, scope: !1065)
!1068 = !DILocation(line: 201, column: 36, scope: !1065)
!1069 = !DILocation(line: 201, column: 49, scope: !1070)
!1070 = !DILexicalBlockFile(scope: !1061, file: !164, discriminator: 2)
!1071 = !DILocation(line: 201, column: 39, scope: !1070)
!1072 = !DILocation(line: 201, column: 60, scope: !1070)
!1073 = !DILocation(line: 201, column: 6, scope: !1070)
!1074 = !DILocation(line: 202, column: 8, scope: !1061)
!1075 = !DILocation(line: 202, column: 3, scope: !1061)
!1076 = !DILocation(line: 204, column: 21, scope: !1040)
!1077 = !DILocation(line: 204, column: 31, scope: !1040)
!1078 = !DILocation(line: 204, column: 38, scope: !1040)
!1079 = !DILocation(line: 204, column: 51, scope: !1080)
!1080 = !DILexicalBlockFile(scope: !1040, file: !164, discriminator: 1)
!1081 = !DILocation(line: 204, column: 41, scope: !1080)
!1082 = !DILocation(line: 204, column: 67, scope: !1080)
!1083 = !DILocation(line: 204, column: 38, scope: !1084)
!1084 = !DILexicalBlockFile(scope: !1040, file: !164, discriminator: 2)
!1085 = !DILocation(line: 204, column: 19, scope: !1084)
!1086 = !DILocation(line: 205, column: 13, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1040, file: !164, line: 205, column: 2)
!1088 = !DILocation(line: 205, column: 11, scope: !1087)
!1089 = !DILocation(line: 205, column: 7, scope: !1087)
!1090 = !DILocation(line: 205, column: 22, scope: !1091)
!1091 = !DILexicalBlockFile(scope: !1092, file: !164, discriminator: 1)
!1092 = distinct !DILexicalBlock(scope: !1087, file: !164, line: 205, column: 2)
!1093 = !DILocation(line: 205, column: 26, scope: !1091)
!1094 = !DILocation(line: 205, column: 2, scope: !1091)
!1095 = !DILocalVariable(name: "rec", scope: !1096, file: !164, line: 206, type: !134)
!1096 = distinct !DILexicalBlock(scope: !1092, file: !164, line: 205, column: 51)
!1097 = !DILocation(line: 206, column: 15, scope: !1096)
!1098 = !DILocation(line: 206, column: 21, scope: !1096)
!1099 = !DILocation(line: 206, column: 26, scope: !1096)
!1100 = !DILocation(line: 208, column: 8, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1096, file: !164, line: 208, column: 7)
!1102 = !DILocation(line: 208, column: 7, scope: !1096)
!1103 = !DILocation(line: 209, column: 9, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1105, file: !164, line: 209, column: 8)
!1105 = distinct !DILexicalBlock(scope: !1101, file: !164, line: 208, column: 26)
!1106 = !DILocation(line: 209, column: 19, scope: !1104)
!1107 = !DILocation(line: 209, column: 26, scope: !1104)
!1108 = !DILocation(line: 209, column: 29, scope: !1109)
!1109 = !DILexicalBlockFile(scope: !1104, file: !164, discriminator: 1)
!1110 = !DILocation(line: 209, column: 34, scope: !1109)
!1111 = !DILocation(line: 209, column: 44, scope: !1109)
!1112 = !DILocation(line: 209, column: 53, scope: !1109)
!1113 = !DILocation(line: 210, column: 9, scope: !1104)
!1114 = !DILocation(line: 210, column: 19, scope: !1104)
!1115 = !DILocation(line: 210, column: 26, scope: !1104)
!1116 = !DILocation(line: 210, column: 29, scope: !1109)
!1117 = !DILocation(line: 210, column: 34, scope: !1109)
!1118 = !DILocation(line: 210, column: 44, scope: !1109)
!1119 = !DILocation(line: 209, column: 8, scope: !1120)
!1120 = !DILexicalBlockFile(scope: !1105, file: !164, discriminator: 2)
!1121 = !DILocation(line: 211, column: 5, scope: !1104)
!1122 = !DILocation(line: 213, column: 8, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1105, file: !164, line: 213, column: 8)
!1124 = !DILocation(line: 213, column: 18, scope: !1123)
!1125 = !DILocation(line: 213, column: 25, scope: !1123)
!1126 = !DILocation(line: 213, column: 47, scope: !1127)
!1127 = !DILexicalBlockFile(scope: !1123, file: !164, discriminator: 1)
!1128 = !DILocation(line: 213, column: 58, scope: !1127)
!1129 = !DILocation(line: 213, column: 63, scope: !1127)
!1130 = !DILocation(line: 213, column: 28, scope: !1127)
!1131 = !DILocation(line: 213, column: 74, scope: !1127)
!1132 = !DILocation(line: 213, column: 8, scope: !1127)
!1133 = !DILocation(line: 214, column: 5, scope: !1123)
!1134 = !DILocation(line: 215, column: 3, scope: !1105)
!1135 = !DILocation(line: 217, column: 8, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1096, file: !164, line: 217, column: 7)
!1137 = !DILocation(line: 217, column: 14, scope: !1136)
!1138 = !DILocation(line: 217, column: 35, scope: !1136)
!1139 = !DILocation(line: 217, column: 39, scope: !1140)
!1140 = !DILexicalBlockFile(scope: !1136, file: !164, discriminator: 1)
!1141 = !DILocation(line: 217, column: 44, scope: !1140)
!1142 = !DILocation(line: 217, column: 50, scope: !1140)
!1143 = !DILocation(line: 217, column: 69, scope: !1140)
!1144 = !DILocation(line: 217, column: 7, scope: !1140)
!1145 = !DILocation(line: 218, column: 4, scope: !1136)
!1146 = !DILocation(line: 220, column: 9, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1096, file: !164, line: 220, column: 7)
!1148 = !DILocation(line: 220, column: 15, scope: !1147)
!1149 = !DILocation(line: 220, column: 36, scope: !1147)
!1150 = !DILocation(line: 220, column: 40, scope: !1151)
!1151 = !DILexicalBlockFile(scope: !1147, file: !164, discriminator: 1)
!1152 = !DILocation(line: 220, column: 45, scope: !1151)
!1153 = !DILocation(line: 220, column: 51, scope: !1151)
!1154 = !DILocation(line: 220, column: 70, scope: !1151)
!1155 = !DILocation(line: 220, column: 7, scope: !1151)
!1156 = !DILocation(line: 221, column: 4, scope: !1147)
!1157 = !DILocation(line: 223, column: 8, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1096, file: !164, line: 223, column: 7)
!1159 = !DILocation(line: 223, column: 14, scope: !1158)
!1160 = !DILocation(line: 223, column: 36, scope: !1158)
!1161 = !DILocation(line: 223, column: 40, scope: !1162)
!1162 = !DILexicalBlockFile(scope: !1158, file: !164, discriminator: 1)
!1163 = !DILocation(line: 223, column: 45, scope: !1162)
!1164 = !DILocation(line: 223, column: 51, scope: !1162)
!1165 = !DILocation(line: 223, column: 70, scope: !1162)
!1166 = !DILocation(line: 223, column: 7, scope: !1162)
!1167 = !DILocation(line: 224, column: 4, scope: !1158)
!1168 = !DILocation(line: 226, column: 9, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1096, file: !164, line: 226, column: 7)
!1170 = !DILocation(line: 226, column: 15, scope: !1169)
!1171 = !DILocation(line: 226, column: 37, scope: !1169)
!1172 = !DILocation(line: 226, column: 41, scope: !1173)
!1173 = !DILexicalBlockFile(scope: !1169, file: !164, discriminator: 1)
!1174 = !DILocation(line: 226, column: 46, scope: !1173)
!1175 = !DILocation(line: 226, column: 52, scope: !1173)
!1176 = !DILocation(line: 226, column: 71, scope: !1173)
!1177 = !DILocation(line: 226, column: 7, scope: !1173)
!1178 = !DILocation(line: 227, column: 4, scope: !1169)
!1179 = !DILocation(line: 229, column: 8, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1096, file: !164, line: 229, column: 7)
!1181 = !DILocation(line: 229, column: 13, scope: !1180)
!1182 = !DILocation(line: 229, column: 18, scope: !1180)
!1183 = !DILocation(line: 229, column: 25, scope: !1180)
!1184 = !DILocation(line: 229, column: 28, scope: !1185)
!1185 = !DILexicalBlockFile(scope: !1180, file: !164, discriminator: 1)
!1186 = !DILocation(line: 229, column: 33, scope: !1185)
!1187 = !DILocation(line: 229, column: 42, scope: !1185)
!1188 = !DILocation(line: 230, column: 8, scope: !1180)
!1189 = !DILocation(line: 230, column: 13, scope: !1180)
!1190 = !DILocation(line: 230, column: 18, scope: !1180)
!1191 = !DILocation(line: 230, column: 25, scope: !1180)
!1192 = !DILocation(line: 230, column: 28, scope: !1185)
!1193 = !DILocation(line: 230, column: 33, scope: !1185)
!1194 = !DILocation(line: 229, column: 7, scope: !1195)
!1195 = !DILexicalBlockFile(scope: !1096, file: !164, discriminator: 2)
!1196 = !DILocation(line: 231, column: 4, scope: !1180)
!1197 = !DILocation(line: 233, column: 7, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1096, file: !164, line: 233, column: 7)
!1199 = !DILocation(line: 233, column: 12, scope: !1198)
!1200 = !DILocation(line: 233, column: 17, scope: !1198)
!1201 = !DILocation(line: 233, column: 24, scope: !1198)
!1202 = !DILocation(line: 233, column: 46, scope: !1203)
!1203 = !DILexicalBlockFile(scope: !1198, file: !164, discriminator: 1)
!1204 = !DILocation(line: 233, column: 51, scope: !1203)
!1205 = !DILocation(line: 233, column: 57, scope: !1203)
!1206 = !DILocation(line: 233, column: 27, scope: !1203)
!1207 = !DILocation(line: 233, column: 63, scope: !1203)
!1208 = !DILocation(line: 233, column: 7, scope: !1203)
!1209 = !DILocation(line: 234, column: 4, scope: !1198)
!1210 = !DILocation(line: 237, column: 7, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1096, file: !164, line: 237, column: 7)
!1212 = !DILocation(line: 237, column: 13, scope: !1211)
!1213 = !DILocation(line: 237, column: 7, scope: !1096)
!1214 = !DILocation(line: 238, column: 9, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1216, file: !164, line: 238, column: 8)
!1216 = distinct !DILexicalBlock(scope: !1211, file: !164, line: 237, column: 36)
!1217 = !DILocation(line: 238, column: 14, scope: !1215)
!1218 = !DILocation(line: 238, column: 22, scope: !1215)
!1219 = !DILocation(line: 238, column: 29, scope: !1215)
!1220 = !DILocation(line: 238, column: 32, scope: !1221)
!1221 = !DILexicalBlockFile(scope: !1215, file: !164, discriminator: 1)
!1222 = !DILocation(line: 238, column: 40, scope: !1221)
!1223 = !DILocation(line: 238, column: 49, scope: !1221)
!1224 = !DILocation(line: 239, column: 9, scope: !1215)
!1225 = !DILocation(line: 239, column: 14, scope: !1215)
!1226 = !DILocation(line: 239, column: 22, scope: !1215)
!1227 = !DILocation(line: 239, column: 29, scope: !1215)
!1228 = !DILocation(line: 239, column: 32, scope: !1221)
!1229 = !DILocation(line: 239, column: 40, scope: !1221)
!1230 = !DILocation(line: 238, column: 8, scope: !1231)
!1231 = !DILexicalBlockFile(scope: !1216, file: !164, discriminator: 2)
!1232 = !DILocation(line: 240, column: 5, scope: !1215)
!1233 = !DILocation(line: 242, column: 8, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1216, file: !164, line: 242, column: 8)
!1235 = !DILocation(line: 242, column: 13, scope: !1234)
!1236 = !DILocation(line: 242, column: 21, scope: !1234)
!1237 = !DILocation(line: 242, column: 28, scope: !1234)
!1238 = !DILocation(line: 242, column: 50, scope: !1239)
!1239 = !DILexicalBlockFile(scope: !1234, file: !164, discriminator: 1)
!1240 = !DILocation(line: 242, column: 55, scope: !1239)
!1241 = !DILocation(line: 242, column: 64, scope: !1239)
!1242 = !DILocation(line: 242, column: 31, scope: !1239)
!1243 = !DILocation(line: 242, column: 73, scope: !1239)
!1244 = !DILocation(line: 242, column: 8, scope: !1239)
!1245 = !DILocation(line: 243, column: 5, scope: !1234)
!1246 = !DILocation(line: 244, column: 3, scope: !1216)
!1247 = !DILocation(line: 246, column: 8, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1096, file: !164, line: 246, column: 7)
!1249 = !DILocation(line: 246, column: 17, scope: !1248)
!1250 = !DILocation(line: 246, column: 24, scope: !1248)
!1251 = !DILocation(line: 246, column: 27, scope: !1252)
!1252 = !DILexicalBlockFile(scope: !1248, file: !164, discriminator: 1)
!1253 = !DILocation(line: 246, column: 32, scope: !1252)
!1254 = !DILocation(line: 246, column: 41, scope: !1252)
!1255 = !DILocation(line: 246, column: 7, scope: !1252)
!1256 = !DILocation(line: 247, column: 11, scope: !1248)
!1257 = !DILocation(line: 247, column: 4, scope: !1248)
!1258 = !DILocation(line: 249, column: 7, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1096, file: !164, line: 249, column: 7)
!1260 = !DILocation(line: 249, column: 16, scope: !1259)
!1261 = !DILocation(line: 249, column: 23, scope: !1259)
!1262 = !DILocation(line: 249, column: 37, scope: !1263)
!1263 = !DILexicalBlockFile(scope: !1259, file: !164, discriminator: 1)
!1264 = !DILocation(line: 249, column: 36, scope: !1263)
!1265 = !DILocation(line: 249, column: 26, scope: !1263)
!1266 = !DILocation(line: 249, column: 52, scope: !1263)
!1267 = !DILocation(line: 249, column: 7, scope: !1263)
!1268 = !DILocation(line: 250, column: 11, scope: !1259)
!1269 = !DILocation(line: 250, column: 4, scope: !1259)
!1270 = !DILocation(line: 252, column: 7, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1096, file: !164, line: 252, column: 7)
!1272 = !DILocation(line: 252, column: 16, scope: !1271)
!1273 = !DILocation(line: 252, column: 23, scope: !1271)
!1274 = !DILocation(line: 252, column: 26, scope: !1275)
!1275 = !DILexicalBlockFile(scope: !1271, file: !164, discriminator: 1)
!1276 = !DILocation(line: 252, column: 31, scope: !1275)
!1277 = !DILocation(line: 252, column: 40, scope: !1275)
!1278 = !DILocation(line: 252, column: 7, scope: !1275)
!1279 = !DILocation(line: 253, column: 4, scope: !1271)
!1280 = !DILocation(line: 255, column: 21, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1096, file: !164, line: 255, column: 7)
!1282 = !DILocation(line: 255, column: 7, scope: !1281)
!1283 = !DILocation(line: 255, column: 48, scope: !1281)
!1284 = !DILocation(line: 255, column: 53, scope: !1281)
!1285 = !DILocation(line: 255, column: 34, scope: !1286)
!1286 = !DILexicalBlockFile(scope: !1281, file: !164, discriminator: 1)
!1287 = !DILocation(line: 255, column: 31, scope: !1281)
!1288 = !DILocation(line: 255, column: 7, scope: !1096)
!1289 = !DILocation(line: 256, column: 4, scope: !1281)
!1290 = !DILocation(line: 259, column: 15, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1096, file: !164, line: 259, column: 3)
!1292 = !DILocation(line: 259, column: 13, scope: !1291)
!1293 = !DILocation(line: 259, column: 8, scope: !1291)
!1294 = !DILocation(line: 259, column: 26, scope: !1295)
!1295 = !DILexicalBlockFile(scope: !1296, file: !164, discriminator: 1)
!1296 = distinct !DILexicalBlock(scope: !1291, file: !164, line: 259, column: 3)
!1297 = !DILocation(line: 259, column: 25, scope: !1295)
!1298 = !DILocation(line: 259, column: 31, scope: !1295)
!1299 = !DILocation(line: 259, column: 3, scope: !1295)
!1300 = !DILocation(line: 260, column: 22, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1302, file: !164, line: 260, column: 8)
!1302 = distinct !DILexicalBlock(scope: !1296, file: !164, line: 259, column: 47)
!1303 = !DILocation(line: 260, column: 27, scope: !1301)
!1304 = !DILocation(line: 260, column: 38, scope: !1301)
!1305 = !DILocation(line: 260, column: 37, scope: !1301)
!1306 = !DILocation(line: 260, column: 8, scope: !1301)
!1307 = !DILocation(line: 260, column: 44, scope: !1301)
!1308 = !DILocation(line: 260, column: 8, scope: !1302)
!1309 = !DILocation(line: 261, column: 33, scope: !1301)
!1310 = !DILocation(line: 262, column: 3, scope: !1302)
!1311 = !DILocation(line: 259, column: 43, scope: !1312)
!1312 = !DILexicalBlockFile(scope: !1296, file: !164, discriminator: 2)
!1313 = !DILocation(line: 259, column: 3, scope: !1312)
!1314 = distinct !{!1314, !1315}
!1315 = !DILocation(line: 259, column: 3, scope: !1096)
!1316 = !DILocation(line: 264, column: 8, scope: !1317)
!1317 = distinct !DILexicalBlock(scope: !1096, file: !164, line: 264, column: 7)
!1318 = !DILocation(line: 264, column: 7, scope: !1317)
!1319 = !DILocation(line: 264, column: 13, scope: !1317)
!1320 = !DILocation(line: 264, column: 7, scope: !1096)
!1321 = !DILocation(line: 265, column: 11, scope: !1317)
!1322 = !DILocation(line: 265, column: 4, scope: !1317)
!1323 = !DILocation(line: 266, column: 2, scope: !1096)
!1324 = !DILocation(line: 205, column: 40, scope: !1325)
!1325 = !DILexicalBlockFile(scope: !1092, file: !164, discriminator: 2)
!1326 = !DILocation(line: 205, column: 45, scope: !1325)
!1327 = !DILocation(line: 205, column: 38, scope: !1325)
!1328 = !DILocation(line: 205, column: 2, scope: !1325)
!1329 = distinct !{!1329, !1330}
!1330 = !DILocation(line: 205, column: 2, scope: !1040)
!1331 = !DILocation(line: 268, column: 2, scope: !1040)
!1332 = !DILocation(line: 269, column: 1, scope: !1040)
!1333 = distinct !DISubprogram(name: "ignore_find", scope: !164, file: !164, line: 271, type: !1334, isLocal: false, isDefinition: true, scopeLine: 272, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !578)
!1334 = !DISubroutineType(types: !1335)
!1335 = !{!134, !469, !469, !143}
!1336 = !DILocalVariable(name: "servertag", arg: 1, scope: !1333, file: !164, line: 271, type: !469)
!1337 = !DILocation(line: 271, column: 37, scope: !1333)
!1338 = !DILocalVariable(name: "mask", arg: 2, scope: !1333, file: !164, line: 271, type: !469)
!1339 = !DILocation(line: 271, column: 60, scope: !1333)
!1340 = !DILocalVariable(name: "channels", arg: 3, scope: !1333, file: !164, line: 271, type: !143)
!1341 = !DILocation(line: 271, column: 73, scope: !1333)
!1342 = !DILocation(line: 273, column: 26, scope: !1333)
!1343 = !DILocation(line: 273, column: 37, scope: !1333)
!1344 = !DILocation(line: 273, column: 48, scope: !1333)
!1345 = !DILocation(line: 273, column: 9, scope: !1333)
!1346 = !DILocation(line: 273, column: 2, scope: !1333)
!1347 = distinct !DISubprogram(name: "ignore_find_noact", scope: !164, file: !164, line: 276, type: !1348, isLocal: false, isDefinition: true, scopeLine: 277, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !578)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{!134, !469, !469, !143, !122}
!1350 = !DILocalVariable(name: "servertag", arg: 1, scope: !1347, file: !164, line: 276, type: !469)
!1351 = !DILocation(line: 276, column: 43, scope: !1347)
!1352 = !DILocalVariable(name: "mask", arg: 2, scope: !1347, file: !164, line: 276, type: !469)
!1353 = !DILocation(line: 276, column: 66, scope: !1347)
!1354 = !DILocalVariable(name: "channels", arg: 3, scope: !1347, file: !164, line: 276, type: !143)
!1355 = !DILocation(line: 276, column: 79, scope: !1347)
!1356 = !DILocalVariable(name: "noact", arg: 4, scope: !1347, file: !164, line: 276, type: !122)
!1357 = !DILocation(line: 276, column: 93, scope: !1347)
!1358 = !DILocation(line: 278, column: 26, scope: !1347)
!1359 = !DILocation(line: 278, column: 37, scope: !1347)
!1360 = !DILocation(line: 278, column: 48, scope: !1347)
!1361 = !DILocation(line: 278, column: 9, scope: !1347)
!1362 = !DILocation(line: 278, column: 2, scope: !1347)
!1363 = distinct !DISubprogram(name: "ignore_find_hidden", scope: !164, file: !164, line: 281, type: !1348, isLocal: false, isDefinition: true, scopeLine: 282, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !578)
!1364 = !DILocalVariable(name: "servertag", arg: 1, scope: !1363, file: !164, line: 281, type: !469)
!1365 = !DILocation(line: 281, column: 44, scope: !1363)
!1366 = !DILocalVariable(name: "mask", arg: 2, scope: !1363, file: !164, line: 281, type: !469)
!1367 = !DILocation(line: 281, column: 67, scope: !1363)
!1368 = !DILocalVariable(name: "channels", arg: 3, scope: !1363, file: !164, line: 281, type: !143)
!1369 = !DILocation(line: 281, column: 80, scope: !1363)
!1370 = !DILocalVariable(name: "hidden", arg: 4, scope: !1363, file: !164, line: 281, type: !122)
!1371 = !DILocation(line: 281, column: 94, scope: !1363)
!1372 = !DILocation(line: 283, column: 26, scope: !1363)
!1373 = !DILocation(line: 283, column: 37, scope: !1363)
!1374 = !DILocation(line: 283, column: 48, scope: !1363)
!1375 = !DILocation(line: 283, column: 9, scope: !1363)
!1376 = !DILocation(line: 283, column: 2, scope: !1363)
!1377 = distinct !DISubprogram(name: "ignore_add_rec", scope: !164, file: !164, line: 360, type: !1378, isLocal: false, isDefinition: true, scopeLine: 361, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !578)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{null, !134}
!1380 = !DILocalVariable(name: "rec", arg: 1, scope: !1377, file: !164, line: 360, type: !134)
!1381 = !DILocation(line: 360, column: 33, scope: !1377)
!1382 = !DILocation(line: 362, column: 18, scope: !1377)
!1383 = !DILocation(line: 362, column: 2, scope: !1377)
!1384 = !DILocation(line: 364, column: 27, scope: !1377)
!1385 = !DILocation(line: 364, column: 36, scope: !1377)
!1386 = !DILocation(line: 364, column: 12, scope: !1377)
!1387 = !DILocation(line: 364, column: 10, scope: !1377)
!1388 = !DILocation(line: 365, column: 20, scope: !1377)
!1389 = !DILocation(line: 365, column: 2, scope: !1377)
!1390 = !DILocation(line: 367, column: 35, scope: !1377)
!1391 = !DILocation(line: 367, column: 2, scope: !1377)
!1392 = !DILocation(line: 368, column: 20, scope: !1377)
!1393 = !DILocation(line: 368, column: 2, scope: !1377)
!1394 = !DILocation(line: 369, column: 1, scope: !1377)
!1395 = distinct !DISubprogram(name: "ignore_init_rec", scope: !164, file: !164, line: 343, type: !1378, isLocal: true, isDefinition: true, scopeLine: 344, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !578)
!1396 = !DILocalVariable(name: "rec", arg: 1, scope: !1395, file: !164, line: 343, type: !134)
!1397 = !DILocation(line: 343, column: 41, scope: !1395)
!1398 = !DILocation(line: 345, column: 6, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1395, file: !164, line: 345, column: 6)
!1400 = !DILocation(line: 345, column: 11, scope: !1399)
!1401 = !DILocation(line: 345, column: 16, scope: !1399)
!1402 = !DILocation(line: 345, column: 6, scope: !1395)
!1403 = !DILocation(line: 346, column: 17, scope: !1399)
!1404 = !DILocation(line: 346, column: 22, scope: !1399)
!1405 = !DILocation(line: 346, column: 3, scope: !1399)
!1406 = !DILocation(line: 348, column: 6, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1395, file: !164, line: 348, column: 6)
!1408 = !DILocation(line: 348, column: 11, scope: !1407)
!1409 = !DILocation(line: 348, column: 18, scope: !1407)
!1410 = !DILocation(line: 348, column: 21, scope: !1411)
!1411 = !DILexicalBlockFile(scope: !1407, file: !164, discriminator: 1)
!1412 = !DILocation(line: 348, column: 26, scope: !1411)
!1413 = !DILocation(line: 348, column: 34, scope: !1411)
!1414 = !DILocation(line: 348, column: 6, scope: !1411)
!1415 = !DILocalVariable(name: "re_error", scope: !1416, file: !164, line: 349, type: !267)
!1416 = distinct !DILexicalBlock(scope: !1407, file: !164, line: 348, column: 42)
!1417 = !DILocation(line: 349, column: 11, scope: !1416)
!1418 = !DILocation(line: 351, column: 27, scope: !1416)
!1419 = !DILocation(line: 351, column: 32, scope: !1416)
!1420 = !DILocation(line: 351, column: 15, scope: !1416)
!1421 = !DILocation(line: 351, column: 3, scope: !1416)
!1422 = !DILocation(line: 351, column: 8, scope: !1416)
!1423 = !DILocation(line: 351, column: 13, scope: !1416)
!1424 = !DILocation(line: 353, column: 7, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1416, file: !164, line: 353, column: 7)
!1426 = !DILocation(line: 353, column: 12, scope: !1425)
!1427 = !DILocation(line: 353, column: 17, scope: !1425)
!1428 = !DILocation(line: 353, column: 7, scope: !1416)
!1429 = !DILocation(line: 354, column: 83, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1425, file: !164, line: 353, column: 25)
!1431 = !DILocation(line: 354, column: 88, scope: !1430)
!1432 = !DILocation(line: 354, column: 97, scope: !1430)
!1433 = !DILocation(line: 354, column: 107, scope: !1430)
!1434 = !DILocation(line: 354, column: 4, scope: !1430)
!1435 = !DILocation(line: 355, column: 17, scope: !1430)
!1436 = !DILocation(line: 355, column: 4, scope: !1430)
!1437 = !DILocation(line: 356, column: 3, scope: !1430)
!1438 = !DILocation(line: 357, column: 2, scope: !1416)
!1439 = !DILocation(line: 358, column: 1, scope: !1395)
!1440 = distinct !DISubprogram(name: "ignore_set_config", scope: !164, file: !164, line: 286, type: !1378, isLocal: true, isDefinition: true, scopeLine: 287, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !578)
!1441 = !DILocalVariable(name: "rec", arg: 1, scope: !1440, file: !164, line: 286, type: !134)
!1442 = !DILocation(line: 286, column: 43, scope: !1440)
!1443 = !DILocalVariable(name: "node", scope: !1440, file: !164, line: 288, type: !1444)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64, align: 64)
!1445 = !DIDerivedType(tag: DW_TAG_typedef, name: "CONFIG_NODE", file: !106, line: 17, baseType: !1446)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CONFIG_NODE", file: !106, line: 20, size: 192, align: 64, elements: !1447)
!1447 = !{!1448, !1449, !1450}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1446, file: !106, line: 21, baseType: !122, size: 32, align: 32)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1446, file: !106, line: 22, baseType: !140, size: 64, align: 64, offset: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1446, file: !106, line: 23, baseType: !114, size: 64, align: 64, offset: 128)
!1451 = !DILocation(line: 288, column: 15, scope: !1440)
!1452 = !DILocalVariable(name: "levelstr", scope: !1440, file: !164, line: 289, type: !140)
!1453 = !DILocation(line: 289, column: 8, scope: !1440)
!1454 = !DILocation(line: 291, column: 6, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1440, file: !164, line: 291, column: 6)
!1456 = !DILocation(line: 291, column: 11, scope: !1455)
!1457 = !DILocation(line: 291, column: 17, scope: !1455)
!1458 = !DILocation(line: 291, column: 6, scope: !1440)
!1459 = !DILocation(line: 292, column: 3, scope: !1455)
!1460 = !DILocation(line: 294, column: 30, scope: !1440)
!1461 = !DILocation(line: 294, column: 9, scope: !1440)
!1462 = !DILocation(line: 294, column: 7, scope: !1440)
!1463 = !DILocation(line: 295, column: 29, scope: !1440)
!1464 = !DILocation(line: 295, column: 41, scope: !1440)
!1465 = !DILocation(line: 295, column: 9, scope: !1440)
!1466 = !DILocation(line: 295, column: 7, scope: !1440)
!1467 = !DILocation(line: 297, column: 6, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1440, file: !164, line: 297, column: 6)
!1469 = !DILocation(line: 297, column: 11, scope: !1468)
!1470 = !DILocation(line: 297, column: 16, scope: !1468)
!1471 = !DILocation(line: 297, column: 6, scope: !1440)
!1472 = !DILocation(line: 297, column: 44, scope: !1473)
!1473 = !DILexicalBlockFile(scope: !1468, file: !164, discriminator: 1)
!1474 = !DILocation(line: 297, column: 56, scope: !1473)
!1475 = !DILocation(line: 297, column: 70, scope: !1473)
!1476 = !DILocation(line: 297, column: 75, scope: !1473)
!1477 = !DILocation(line: 297, column: 24, scope: !1473)
!1478 = !DILocation(line: 298, column: 6, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1440, file: !164, line: 298, column: 6)
!1480 = !DILocation(line: 298, column: 11, scope: !1479)
!1481 = !DILocation(line: 298, column: 6, scope: !1440)
!1482 = !DILocation(line: 299, column: 25, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1479, file: !164, line: 298, column: 18)
!1484 = !DILocation(line: 299, column: 30, scope: !1483)
!1485 = !DILocation(line: 299, column: 14, scope: !1483)
!1486 = !DILocation(line: 299, column: 12, scope: !1483)
!1487 = !DILocation(line: 300, column: 23, scope: !1483)
!1488 = !DILocation(line: 300, column: 35, scope: !1483)
!1489 = !DILocation(line: 300, column: 50, scope: !1483)
!1490 = !DILocation(line: 300, column: 3, scope: !1483)
!1491 = !DILocation(line: 301, column: 10, scope: !1483)
!1492 = !DILocation(line: 301, column: 3, scope: !1483)
!1493 = !DILocation(line: 302, column: 2, scope: !1483)
!1494 = !DILocation(line: 303, column: 22, scope: !1440)
!1495 = !DILocation(line: 303, column: 34, scope: !1440)
!1496 = !DILocation(line: 303, column: 51, scope: !1440)
!1497 = !DILocation(line: 303, column: 56, scope: !1440)
!1498 = !DILocation(line: 303, column: 2, scope: !1440)
!1499 = !DILocation(line: 304, column: 6, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1440, file: !164, line: 304, column: 6)
!1501 = !DILocation(line: 304, column: 11, scope: !1500)
!1502 = !DILocation(line: 304, column: 6, scope: !1440)
!1503 = !DILocation(line: 304, column: 43, scope: !1504)
!1504 = !DILexicalBlockFile(scope: !1500, file: !164, discriminator: 1)
!1505 = !DILocation(line: 304, column: 55, scope: !1504)
!1506 = !DILocation(line: 304, column: 22, scope: !1504)
!1507 = !DILocation(line: 305, column: 6, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1440, file: !164, line: 305, column: 6)
!1509 = !DILocation(line: 305, column: 11, scope: !1508)
!1510 = !DILocation(line: 305, column: 6, scope: !1440)
!1511 = !DILocation(line: 305, column: 40, scope: !1512)
!1512 = !DILexicalBlockFile(scope: !1508, file: !164, discriminator: 1)
!1513 = !DILocation(line: 305, column: 52, scope: !1512)
!1514 = !DILocation(line: 305, column: 19, scope: !1512)
!1515 = !DILocation(line: 306, column: 6, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1440, file: !164, line: 306, column: 6)
!1517 = !DILocation(line: 306, column: 11, scope: !1516)
!1518 = !DILocation(line: 306, column: 6, scope: !1440)
!1519 = !DILocation(line: 306, column: 42, scope: !1520)
!1520 = !DILexicalBlockFile(scope: !1516, file: !164, discriminator: 1)
!1521 = !DILocation(line: 306, column: 54, scope: !1520)
!1522 = !DILocation(line: 306, column: 21, scope: !1520)
!1523 = !DILocation(line: 307, column: 6, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1440, file: !164, line: 307, column: 6)
!1525 = !DILocation(line: 307, column: 11, scope: !1524)
!1526 = !DILocation(line: 307, column: 6, scope: !1440)
!1527 = !DILocation(line: 307, column: 41, scope: !1528)
!1528 = !DILexicalBlockFile(scope: !1524, file: !164, discriminator: 1)
!1529 = !DILocation(line: 307, column: 53, scope: !1528)
!1530 = !DILocation(line: 307, column: 20, scope: !1528)
!1531 = !DILocation(line: 308, column: 6, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1440, file: !164, line: 308, column: 6)
!1533 = !DILocation(line: 308, column: 11, scope: !1532)
!1534 = !DILocation(line: 308, column: 25, scope: !1532)
!1535 = !DILocation(line: 308, column: 6, scope: !1440)
!1536 = !DILocation(line: 309, column: 23, scope: !1532)
!1537 = !DILocation(line: 309, column: 35, scope: !1532)
!1538 = !DILocation(line: 309, column: 58, scope: !1532)
!1539 = !DILocation(line: 309, column: 63, scope: !1532)
!1540 = !DILocation(line: 309, column: 3, scope: !1532)
!1541 = !DILocation(line: 310, column: 22, scope: !1440)
!1542 = !DILocation(line: 310, column: 34, scope: !1440)
!1543 = !DILocation(line: 310, column: 53, scope: !1440)
!1544 = !DILocation(line: 310, column: 58, scope: !1440)
!1545 = !DILocation(line: 310, column: 2, scope: !1440)
!1546 = !DILocation(line: 312, column: 6, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1440, file: !164, line: 312, column: 6)
!1548 = !DILocation(line: 312, column: 11, scope: !1547)
!1549 = !DILocation(line: 312, column: 20, scope: !1547)
!1550 = !DILocation(line: 312, column: 27, scope: !1547)
!1551 = !DILocation(line: 312, column: 31, scope: !1552)
!1552 = !DILexicalBlockFile(scope: !1547, file: !164, discriminator: 1)
!1553 = !DILocation(line: 312, column: 36, scope: !1552)
!1554 = !DILocation(line: 312, column: 30, scope: !1552)
!1555 = !DILocation(line: 312, column: 45, scope: !1552)
!1556 = !DILocation(line: 312, column: 6, scope: !1552)
!1557 = !DILocation(line: 313, column: 30, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1547, file: !164, line: 312, column: 54)
!1559 = !DILocation(line: 313, column: 42, scope: !1558)
!1560 = !DILocation(line: 313, column: 10, scope: !1558)
!1561 = !DILocation(line: 313, column: 8, scope: !1558)
!1562 = !DILocation(line: 314, column: 24, scope: !1558)
!1563 = !DILocation(line: 314, column: 36, scope: !1558)
!1564 = !DILocation(line: 314, column: 42, scope: !1558)
!1565 = !DILocation(line: 314, column: 47, scope: !1558)
!1566 = !DILocation(line: 314, column: 3, scope: !1558)
!1567 = !DILocation(line: 315, column: 2, scope: !1558)
!1568 = !DILocation(line: 316, column: 1, scope: !1440)
!1569 = distinct !DISubprogram(name: "ignore_update_rec", scope: !164, file: !164, line: 385, type: !1378, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !578)
!1570 = !DILocalVariable(name: "rec", arg: 1, scope: !1569, file: !164, line: 385, type: !134)
!1571 = !DILocation(line: 385, column: 36, scope: !1569)
!1572 = !DILocation(line: 387, column: 6, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1569, file: !164, line: 387, column: 6)
!1574 = !DILocation(line: 387, column: 11, scope: !1573)
!1575 = !DILocation(line: 387, column: 17, scope: !1573)
!1576 = !DILocation(line: 387, column: 6, scope: !1569)
!1577 = !DILocation(line: 389, column: 24, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1573, file: !164, line: 387, column: 23)
!1579 = !DILocation(line: 389, column: 3, scope: !1578)
!1580 = !DILocation(line: 390, column: 18, scope: !1578)
!1581 = !DILocation(line: 390, column: 3, scope: !1578)
!1582 = !DILocation(line: 391, column: 2, scope: !1578)
!1583 = !DILocation(line: 393, column: 24, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1573, file: !164, line: 391, column: 9)
!1585 = !DILocation(line: 393, column: 3, scope: !1584)
!1586 = !DILocation(line: 394, column: 28, scope: !1584)
!1587 = !DILocation(line: 394, column: 37, scope: !1584)
!1588 = !DILocation(line: 394, column: 13, scope: !1584)
!1589 = !DILocation(line: 394, column: 11, scope: !1584)
!1590 = !DILocation(line: 396, column: 28, scope: !1584)
!1591 = !DILocation(line: 396, column: 37, scope: !1584)
!1592 = !DILocation(line: 396, column: 13, scope: !1584)
!1593 = !DILocation(line: 396, column: 11, scope: !1584)
!1594 = !DILocation(line: 397, column: 21, scope: !1584)
!1595 = !DILocation(line: 397, column: 3, scope: !1584)
!1596 = !DILocation(line: 399, column: 33, scope: !1584)
!1597 = !DILocation(line: 399, column: 17, scope: !1584)
!1598 = !DILocation(line: 400, column: 36, scope: !1584)
!1599 = !DILocation(line: 400, column: 3, scope: !1584)
!1600 = !DILocation(line: 402, column: 27, scope: !1569)
!1601 = !DILocation(line: 402, column: 9, scope: !1569)
!1602 = !DILocation(line: 403, column: 1, scope: !1569)
!1603 = distinct !DISubprogram(name: "ignore_remove_config", scope: !164, file: !164, line: 335, type: !1378, isLocal: true, isDefinition: true, scopeLine: 336, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !578)
!1604 = !DILocalVariable(name: "rec", arg: 1, scope: !1603, file: !164, line: 335, type: !134)
!1605 = !DILocation(line: 335, column: 46, scope: !1603)
!1606 = !DILocalVariable(name: "node", scope: !1603, file: !164, line: 337, type: !1444)
!1607 = !DILocation(line: 337, column: 15, scope: !1603)
!1608 = !DILocation(line: 339, column: 30, scope: !1603)
!1609 = !DILocation(line: 339, column: 9, scope: !1603)
!1610 = !DILocation(line: 339, column: 7, scope: !1603)
!1611 = !DILocation(line: 340, column: 6, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1603, file: !164, line: 340, column: 6)
!1613 = !DILocation(line: 340, column: 11, scope: !1612)
!1614 = !DILocation(line: 340, column: 6, scope: !1603)
!1615 = !DILocation(line: 340, column: 43, scope: !1616)
!1616 = !DILexicalBlockFile(scope: !1612, file: !164, discriminator: 1)
!1617 = !DILocation(line: 340, column: 55, scope: !1616)
!1618 = !DILocation(line: 340, column: 74, scope: !1616)
!1619 = !DILocation(line: 340, column: 61, scope: !1616)
!1620 = !DILocation(line: 340, column: 19, scope: !1621)
!1621 = !DILexicalBlockFile(scope: !1616, file: !164, discriminator: 2)
!1622 = !DILocation(line: 340, column: 19, scope: !1616)
!1623 = !DILocation(line: 341, column: 1, scope: !1603)
!1624 = distinct !DISubprogram(name: "ignore_destroy", scope: !164, file: !164, line: 371, type: !1625, isLocal: true, isDefinition: true, scopeLine: 372, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !578)
!1625 = !DISubroutineType(types: !1626)
!1626 = !{null, !134, !122}
!1627 = !DILocalVariable(name: "rec", arg: 1, scope: !1624, file: !164, line: 371, type: !134)
!1628 = !DILocation(line: 371, column: 40, scope: !1624)
!1629 = !DILocalVariable(name: "send_signal", arg: 2, scope: !1624, file: !164, line: 371, type: !122)
!1630 = !DILocation(line: 371, column: 49, scope: !1624)
!1631 = !DILocation(line: 373, column: 27, scope: !1624)
!1632 = !DILocation(line: 373, column: 36, scope: !1624)
!1633 = !DILocation(line: 373, column: 12, scope: !1624)
!1634 = !DILocation(line: 373, column: 10, scope: !1624)
!1635 = !DILocation(line: 374, column: 6, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1624, file: !164, line: 374, column: 6)
!1637 = !DILocation(line: 374, column: 6, scope: !1624)
!1638 = !DILocation(line: 375, column: 38, scope: !1636)
!1639 = !DILocation(line: 375, column: 3, scope: !1636)
!1640 = !DILocation(line: 377, column: 6, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1624, file: !164, line: 377, column: 6)
!1642 = !DILocation(line: 377, column: 11, scope: !1641)
!1643 = !DILocation(line: 377, column: 16, scope: !1641)
!1644 = !DILocation(line: 377, column: 6, scope: !1624)
!1645 = !DILocation(line: 377, column: 38, scope: !1646)
!1646 = !DILexicalBlockFile(scope: !1641, file: !164, discriminator: 1)
!1647 = !DILocation(line: 377, column: 43, scope: !1646)
!1648 = !DILocation(line: 377, column: 24, scope: !1646)
!1649 = !DILocation(line: 378, column: 6, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1624, file: !164, line: 378, column: 6)
!1651 = !DILocation(line: 378, column: 11, scope: !1650)
!1652 = !DILocation(line: 378, column: 20, scope: !1650)
!1653 = !DILocation(line: 378, column: 6, scope: !1624)
!1654 = !DILocation(line: 378, column: 39, scope: !1655)
!1655 = !DILexicalBlockFile(scope: !1650, file: !164, discriminator: 1)
!1656 = !DILocation(line: 378, column: 44, scope: !1655)
!1657 = !DILocation(line: 378, column: 28, scope: !1655)
!1658 = !DILocation(line: 379, column: 9, scope: !1624)
!1659 = !DILocation(line: 379, column: 14, scope: !1624)
!1660 = !DILocation(line: 379, column: 2, scope: !1624)
!1661 = !DILocation(line: 380, column: 9, scope: !1624)
!1662 = !DILocation(line: 380, column: 14, scope: !1624)
!1663 = !DILocation(line: 380, column: 2, scope: !1624)
!1664 = !DILocation(line: 381, column: 9, scope: !1624)
!1665 = !DILocation(line: 381, column: 14, scope: !1624)
!1666 = !DILocation(line: 381, column: 2, scope: !1624)
!1667 = !DILocation(line: 382, column: 9, scope: !1624)
!1668 = !DILocation(line: 382, column: 2, scope: !1624)
!1669 = !DILocation(line: 383, column: 1, scope: !1624)
!1670 = distinct !DISubprogram(name: "ignore_init", scope: !164, file: !164, line: 495, type: !346, isLocal: false, isDefinition: true, scopeLine: 496, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !578)
!1671 = !DILocation(line: 497, column: 10, scope: !1670)
!1672 = !DILocation(line: 498, column: 14, scope: !1670)
!1673 = !DILocation(line: 498, column: 12, scope: !1670)
!1674 = !DILocation(line: 499, column: 13, scope: !1670)
!1675 = !DILocation(line: 499, column: 11, scope: !1670)
!1676 = !DILocation(line: 501, column: 9, scope: !1670)
!1677 = !DILocation(line: 502, column: 9, scope: !1670)
!1678 = !DILocation(line: 503, column: 1, scope: !1670)
!1679 = distinct !DISubprogram(name: "ignore_nick_cache", scope: !164, file: !164, line: 468, type: !186, isLocal: true, isDefinition: true, scopeLine: 470, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !578)
!1680 = !DILocalVariable(name: "list", arg: 1, scope: !1679, file: !164, line: 468, type: !179)
!1681 = !DILocation(line: 468, column: 43, scope: !1679)
!1682 = !DILocalVariable(name: "channel", arg: 2, scope: !1679, file: !164, line: 468, type: !188)
!1683 = !DILocation(line: 468, column: 62, scope: !1679)
!1684 = !DILocalVariable(name: "nick", arg: 3, scope: !1679, file: !164, line: 469, type: !529)
!1685 = !DILocation(line: 469, column: 20, scope: !1679)
!1686 = !DILocalVariable(name: "tmp", scope: !1679, file: !164, line: 471, type: !165)
!1687 = !DILocation(line: 471, column: 10, scope: !1679)
!1688 = !DILocalVariable(name: "matches", scope: !1679, file: !164, line: 471, type: !165)
!1689 = !DILocation(line: 471, column: 16, scope: !1679)
!1690 = !DILocalVariable(name: "nickmask", scope: !1679, file: !164, line: 472, type: !140)
!1691 = !DILocation(line: 472, column: 15, scope: !1679)
!1692 = !DILocation(line: 474, column: 6, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1679, file: !164, line: 474, column: 6)
!1694 = !DILocation(line: 474, column: 12, scope: !1693)
!1695 = !DILocation(line: 474, column: 17, scope: !1693)
!1696 = !DILocation(line: 474, column: 6, scope: !1679)
!1697 = !DILocation(line: 475, column: 3, scope: !1693)
!1698 = !DILocation(line: 477, column: 17, scope: !1679)
!1699 = !DILocation(line: 478, column: 25, scope: !1679)
!1700 = !DILocation(line: 478, column: 31, scope: !1679)
!1701 = !DILocation(line: 478, column: 42, scope: !1679)
!1702 = !DILocation(line: 478, column: 48, scope: !1679)
!1703 = !DILocation(line: 478, column: 13, scope: !1679)
!1704 = !DILocation(line: 478, column: 11, scope: !1679)
!1705 = !DILocation(line: 479, column: 13, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1679, file: !164, line: 479, column: 2)
!1707 = !DILocation(line: 479, column: 11, scope: !1706)
!1708 = !DILocation(line: 479, column: 7, scope: !1706)
!1709 = !DILocation(line: 479, column: 22, scope: !1710)
!1710 = !DILexicalBlockFile(scope: !1711, file: !164, discriminator: 1)
!1711 = distinct !DILexicalBlock(scope: !1706, file: !164, line: 479, column: 2)
!1712 = !DILocation(line: 479, column: 26, scope: !1710)
!1713 = !DILocation(line: 479, column: 2, scope: !1710)
!1714 = !DILocalVariable(name: "rec", scope: !1715, file: !164, line: 480, type: !134)
!1715 = distinct !DILexicalBlock(scope: !1711, file: !164, line: 479, column: 51)
!1716 = !DILocation(line: 480, column: 15, scope: !1715)
!1717 = !DILocation(line: 480, column: 21, scope: !1715)
!1718 = !DILocation(line: 480, column: 26, scope: !1715)
!1719 = !DILocation(line: 482, column: 9, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1715, file: !164, line: 482, column: 7)
!1721 = !DILocation(line: 482, column: 15, scope: !1720)
!1722 = !DILocation(line: 482, column: 20, scope: !1720)
!1723 = !DILocation(line: 482, column: 6, scope: !1720)
!1724 = !DILocation(line: 482, column: 18, scope: !1725)
!1725 = !DILexicalBlockFile(scope: !1720, file: !164, discriminator: 1)
!1726 = !DILocation(line: 482, column: 24, scope: !1725)
!1727 = !DILocation(line: 482, column: 10, scope: !1725)
!1728 = !DILocation(line: 482, column: 35, scope: !1725)
!1729 = !DILocation(line: 482, column: 92, scope: !1725)
!1730 = !DILocation(line: 482, column: 25, scope: !1731)
!1731 = !DILexicalBlockFile(scope: !1720, file: !164, discriminator: 2)
!1732 = !DILocation(line: 482, column: 31, scope: !1731)
!1733 = !DILocation(line: 482, column: 37, scope: !1731)
!1734 = !DILocation(line: 482, column: 8, scope: !1731)
!1735 = !DILocation(line: 482, column: 10, scope: !1731)
!1736 = !DILocation(line: 482, column: 66, scope: !1737)
!1737 = !DILexicalBlockFile(scope: !1720, file: !164, discriminator: 3)
!1738 = !DILocation(line: 482, column: 72, scope: !1737)
!1739 = !DILocation(line: 482, column: 78, scope: !1737)
!1740 = !DILocation(line: 482, column: 84, scope: !1737)
!1741 = !DILocation(line: 482, column: 49, scope: !1737)
!1742 = !DILocation(line: 482, column: 92, scope: !1737)
!1743 = !DILocation(line: 483, column: 9, scope: !1720)
!1744 = !DILocation(line: 483, column: 15, scope: !1720)
!1745 = !DILocation(line: 483, column: 25, scope: !1720)
!1746 = !DILocation(line: 483, column: 6, scope: !1720)
!1747 = !DILocation(line: 483, column: 11, scope: !1725)
!1748 = !DILocation(line: 483, column: 20, scope: !1725)
!1749 = !DILocation(line: 483, column: 28, scope: !1725)
!1750 = !DILocation(line: 483, column: 6, scope: !1725)
!1751 = !DILocation(line: 483, column: 29, scope: !1731)
!1752 = !DILocation(line: 483, column: 38, scope: !1731)
!1753 = !DILocation(line: 483, column: 47, scope: !1731)
!1754 = !DILocation(line: 483, column: 53, scope: !1731)
!1755 = !DILocation(line: 483, column: 59, scope: !1731)
!1756 = !DILocation(line: 483, column: 9, scope: !1731)
!1757 = !DILocation(line: 483, column: 70, scope: !1731)
!1758 = !DILocation(line: 483, column: 77, scope: !1731)
!1759 = !DILocation(line: 484, column: 9, scope: !1720)
!1760 = !DILocation(line: 484, column: 15, scope: !1720)
!1761 = !DILocation(line: 484, column: 24, scope: !1720)
!1762 = !DILocation(line: 484, column: 6, scope: !1720)
!1763 = !DILocation(line: 484, column: 11, scope: !1725)
!1764 = !DILocation(line: 484, column: 20, scope: !1725)
!1765 = !DILocation(line: 484, column: 26, scope: !1725)
!1766 = !DILocation(line: 484, column: 6, scope: !1725)
!1767 = !DILocation(line: 484, column: 24, scope: !1731)
!1768 = !DILocation(line: 484, column: 30, scope: !1731)
!1769 = !DILocation(line: 484, column: 41, scope: !1731)
!1770 = !DILocation(line: 484, column: 50, scope: !1731)
!1771 = !DILocation(line: 484, column: 9, scope: !1731)
!1772 = !DILocation(line: 484, column: 57, scope: !1731)
!1773 = !DILocation(line: 482, column: 7, scope: !1774)
!1774 = !DILexicalBlockFile(scope: !1715, file: !164, discriminator: 4)
!1775 = !DILocation(line: 485, column: 29, scope: !1720)
!1776 = !DILocation(line: 485, column: 38, scope: !1720)
!1777 = !DILocation(line: 485, column: 14, scope: !1720)
!1778 = !DILocation(line: 485, column: 12, scope: !1720)
!1779 = !DILocation(line: 485, column: 4, scope: !1720)
!1780 = !DILocation(line: 486, column: 2, scope: !1715)
!1781 = !DILocation(line: 479, column: 40, scope: !1782)
!1782 = !DILexicalBlockFile(scope: !1711, file: !164, discriminator: 2)
!1783 = !DILocation(line: 479, column: 45, scope: !1782)
!1784 = !DILocation(line: 479, column: 38, scope: !1782)
!1785 = !DILocation(line: 479, column: 2, scope: !1782)
!1786 = distinct !{!1786, !1787}
!1787 = !DILocation(line: 479, column: 2, scope: !1679)
!1788 = !DILocation(line: 487, column: 9, scope: !1679)
!1789 = !DILocation(line: 487, column: 2, scope: !1679)
!1790 = !DILocation(line: 489, column: 6, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1679, file: !164, line: 489, column: 6)
!1792 = !DILocation(line: 489, column: 14, scope: !1791)
!1793 = !DILocation(line: 489, column: 6, scope: !1679)
!1794 = !DILocation(line: 490, column: 23, scope: !1791)
!1795 = !DILocation(line: 490, column: 29, scope: !1791)
!1796 = !DILocation(line: 490, column: 3, scope: !1791)
!1797 = !DILocation(line: 492, column: 37, scope: !1791)
!1798 = !DILocation(line: 492, column: 43, scope: !1791)
!1799 = !DILocation(line: 492, column: 49, scope: !1791)
!1800 = !DILocation(line: 492, column: 17, scope: !1791)
!1801 = !DILocation(line: 493, column: 1, scope: !1679)
!1802 = distinct !DISubprogram(name: "unignore_timeout", scope: !164, file: !164, line: 405, type: !1803, isLocal: true, isDefinition: true, scopeLine: 406, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !578)
!1803 = !DISubroutineType(types: !1804)
!1804 = !{!122}
!1805 = !DILocalVariable(name: "tmp", scope: !1802, file: !164, line: 407, type: !165)
!1806 = !DILocation(line: 407, column: 10, scope: !1802)
!1807 = !DILocalVariable(name: "next", scope: !1802, file: !164, line: 407, type: !165)
!1808 = !DILocation(line: 407, column: 16, scope: !1802)
!1809 = !DILocalVariable(name: "now", scope: !1802, file: !164, line: 408, type: !146)
!1810 = !DILocation(line: 408, column: 16, scope: !1802)
!1811 = !DILocation(line: 410, column: 15, scope: !1802)
!1812 = !DILocation(line: 410, column: 13, scope: !1802)
!1813 = !DILocation(line: 411, column: 13, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1802, file: !164, line: 411, column: 2)
!1815 = !DILocation(line: 411, column: 11, scope: !1814)
!1816 = !DILocation(line: 411, column: 7, scope: !1814)
!1817 = !DILocation(line: 411, column: 22, scope: !1818)
!1818 = !DILexicalBlockFile(scope: !1819, file: !164, discriminator: 1)
!1819 = distinct !DILexicalBlock(scope: !1814, file: !164, line: 411, column: 2)
!1820 = !DILocation(line: 411, column: 26, scope: !1818)
!1821 = !DILocation(line: 411, column: 2, scope: !1818)
!1822 = !DILocalVariable(name: "rec", scope: !1823, file: !164, line: 412, type: !134)
!1823 = distinct !DILexicalBlock(scope: !1819, file: !164, line: 411, column: 46)
!1824 = !DILocation(line: 412, column: 15, scope: !1823)
!1825 = !DILocation(line: 412, column: 21, scope: !1823)
!1826 = !DILocation(line: 412, column: 26, scope: !1823)
!1827 = !DILocation(line: 414, column: 10, scope: !1823)
!1828 = !DILocation(line: 414, column: 15, scope: !1823)
!1829 = !DILocation(line: 414, column: 8, scope: !1823)
!1830 = !DILocation(line: 415, column: 7, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1823, file: !164, line: 415, column: 7)
!1832 = !DILocation(line: 415, column: 12, scope: !1831)
!1833 = !DILocation(line: 415, column: 26, scope: !1831)
!1834 = !DILocation(line: 415, column: 30, scope: !1831)
!1835 = !DILocation(line: 415, column: 33, scope: !1836)
!1836 = !DILexicalBlockFile(scope: !1831, file: !164, discriminator: 1)
!1837 = !DILocation(line: 415, column: 40, scope: !1836)
!1838 = !DILocation(line: 415, column: 45, scope: !1836)
!1839 = !DILocation(line: 415, column: 37, scope: !1836)
!1840 = !DILocation(line: 415, column: 7, scope: !1836)
!1841 = !DILocation(line: 416, column: 4, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1831, file: !164, line: 415, column: 60)
!1843 = !DILocation(line: 416, column: 9, scope: !1842)
!1844 = !DILocation(line: 416, column: 15, scope: !1842)
!1845 = !DILocation(line: 417, column: 22, scope: !1842)
!1846 = !DILocation(line: 417, column: 4, scope: !1842)
!1847 = !DILocation(line: 418, column: 3, scope: !1842)
!1848 = !DILocation(line: 419, column: 2, scope: !1823)
!1849 = !DILocation(line: 411, column: 40, scope: !1850)
!1850 = !DILexicalBlockFile(scope: !1819, file: !164, discriminator: 2)
!1851 = !DILocation(line: 411, column: 38, scope: !1850)
!1852 = !DILocation(line: 411, column: 2, scope: !1850)
!1853 = distinct !{!1853, !1854}
!1854 = !DILocation(line: 411, column: 2, scope: !1802)
!1855 = !DILocation(line: 421, column: 2, scope: !1802)
!1856 = distinct !DISubprogram(name: "read_ignores", scope: !164, file: !164, line: 424, type: !346, isLocal: true, isDefinition: true, scopeLine: 425, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !578)
!1857 = !DILocalVariable(name: "rec", scope: !1856, file: !164, line: 426, type: !134)
!1858 = !DILocation(line: 426, column: 14, scope: !1856)
!1859 = !DILocalVariable(name: "node", scope: !1856, file: !164, line: 427, type: !1444)
!1860 = !DILocation(line: 427, column: 15, scope: !1856)
!1861 = !DILocalVariable(name: "tmp", scope: !1856, file: !164, line: 428, type: !165)
!1862 = !DILocation(line: 428, column: 10, scope: !1856)
!1863 = !DILocation(line: 430, column: 2, scope: !1856)
!1864 = !DILocation(line: 430, column: 9, scope: !1865)
!1865 = !DILexicalBlockFile(scope: !1856, file: !164, discriminator: 1)
!1866 = !DILocation(line: 430, column: 17, scope: !1865)
!1867 = !DILocation(line: 430, column: 2, scope: !1865)
!1868 = !DILocation(line: 431, column: 32, scope: !1856)
!1869 = !DILocation(line: 431, column: 41, scope: !1856)
!1870 = !DILocation(line: 431, column: 17, scope: !1856)
!1871 = !DILocation(line: 430, column: 2, scope: !1872)
!1872 = !DILexicalBlockFile(scope: !1856, file: !164, discriminator: 2)
!1873 = distinct !{!1873, !1863}
!1874 = !DILocation(line: 433, column: 30, scope: !1856)
!1875 = !DILocation(line: 433, column: 9, scope: !1856)
!1876 = !DILocation(line: 433, column: 7, scope: !1856)
!1877 = !DILocation(line: 434, column: 6, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1856, file: !164, line: 434, column: 6)
!1879 = !DILocation(line: 434, column: 11, scope: !1878)
!1880 = !DILocation(line: 434, column: 6, scope: !1856)
!1881 = !DILocation(line: 435, column: 21, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1878, file: !164, line: 434, column: 19)
!1883 = !DILocation(line: 435, column: 3, scope: !1882)
!1884 = !DILocation(line: 436, column: 3, scope: !1882)
!1885 = !DILocation(line: 439, column: 26, scope: !1856)
!1886 = !DILocation(line: 439, column: 32, scope: !1856)
!1887 = !DILocation(line: 439, column: 8, scope: !1856)
!1888 = !DILocation(line: 439, column: 6, scope: !1856)
!1889 = !DILocation(line: 440, column: 2, scope: !1856)
!1890 = !DILocation(line: 440, column: 9, scope: !1891)
!1891 = !DILexicalBlockFile(scope: !1892, file: !164, discriminator: 1)
!1892 = distinct !DILexicalBlock(scope: !1893, file: !164, line: 440, column: 2)
!1893 = distinct !DILexicalBlock(scope: !1856, file: !164, line: 440, column: 2)
!1894 = !DILocation(line: 440, column: 13, scope: !1891)
!1895 = !DILocation(line: 440, column: 2, scope: !1891)
!1896 = !DILocation(line: 441, column: 10, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1892, file: !164, line: 440, column: 50)
!1898 = !DILocation(line: 441, column: 15, scope: !1897)
!1899 = !DILocation(line: 441, column: 8, scope: !1897)
!1900 = !DILocation(line: 443, column: 7, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !1897, file: !164, line: 443, column: 7)
!1902 = !DILocation(line: 443, column: 13, scope: !1901)
!1903 = !DILocation(line: 443, column: 18, scope: !1901)
!1904 = !DILocation(line: 443, column: 7, scope: !1897)
!1905 = !DILocation(line: 444, column: 4, scope: !1901)
!1906 = !DILocation(line: 446, column: 25, scope: !1897)
!1907 = !DILocation(line: 446, column: 10, scope: !1897)
!1908 = !DILocation(line: 446, column: 7, scope: !1897)
!1909 = !DILocation(line: 447, column: 28, scope: !1897)
!1910 = !DILocation(line: 447, column: 37, scope: !1897)
!1911 = !DILocation(line: 447, column: 13, scope: !1897)
!1912 = !DILocation(line: 447, column: 11, scope: !1897)
!1913 = !DILocation(line: 449, column: 44, scope: !1897)
!1914 = !DILocation(line: 449, column: 24, scope: !1897)
!1915 = !DILocation(line: 449, column: 15, scope: !1916)
!1916 = !DILexicalBlockFile(scope: !1897, file: !164, discriminator: 1)
!1917 = !DILocation(line: 449, column: 3, scope: !1897)
!1918 = !DILocation(line: 449, column: 8, scope: !1897)
!1919 = !DILocation(line: 449, column: 13, scope: !1897)
!1920 = !DILocation(line: 450, column: 47, scope: !1897)
!1921 = !DILocation(line: 450, column: 27, scope: !1897)
!1922 = !DILocation(line: 450, column: 18, scope: !1916)
!1923 = !DILocation(line: 450, column: 3, scope: !1897)
!1924 = !DILocation(line: 450, column: 8, scope: !1897)
!1925 = !DILocation(line: 450, column: 16, scope: !1897)
!1926 = !DILocation(line: 451, column: 47, scope: !1897)
!1927 = !DILocation(line: 451, column: 27, scope: !1897)
!1928 = !DILocation(line: 451, column: 16, scope: !1916)
!1929 = !DILocation(line: 451, column: 3, scope: !1897)
!1930 = !DILocation(line: 451, column: 8, scope: !1897)
!1931 = !DILocation(line: 451, column: 14, scope: !1897)
!1932 = !DILocation(line: 452, column: 55, scope: !1897)
!1933 = !DILocation(line: 452, column: 34, scope: !1897)
!1934 = !DILocation(line: 452, column: 17, scope: !1897)
!1935 = !DILocation(line: 452, column: 22, scope: !1897)
!1936 = !DILocation(line: 452, column: 32, scope: !1897)
!1937 = !DILocation(line: 453, column: 38, scope: !1897)
!1938 = !DILocation(line: 453, column: 17, scope: !1897)
!1939 = !DILocation(line: 453, column: 3, scope: !1897)
!1940 = !DILocation(line: 453, column: 8, scope: !1897)
!1941 = !DILocation(line: 453, column: 15, scope: !1897)
!1942 = !DILocation(line: 454, column: 40, scope: !1897)
!1943 = !DILocation(line: 454, column: 19, scope: !1897)
!1944 = !DILocation(line: 454, column: 3, scope: !1897)
!1945 = !DILocation(line: 454, column: 8, scope: !1897)
!1946 = !DILocation(line: 454, column: 17, scope: !1897)
!1947 = !DILocation(line: 455, column: 39, scope: !1897)
!1948 = !DILocation(line: 455, column: 18, scope: !1897)
!1949 = !DILocation(line: 455, column: 3, scope: !1897)
!1950 = !DILocation(line: 455, column: 8, scope: !1897)
!1951 = !DILocation(line: 455, column: 16, scope: !1897)
!1952 = !DILocation(line: 456, column: 44, scope: !1897)
!1953 = !DILocation(line: 456, column: 24, scope: !1897)
!1954 = !DILocation(line: 456, column: 3, scope: !1897)
!1955 = !DILocation(line: 456, column: 8, scope: !1897)
!1956 = !DILocation(line: 456, column: 22, scope: !1897)
!1957 = !DILocation(line: 457, column: 49, scope: !1897)
!1958 = !DILocation(line: 457, column: 29, scope: !1897)
!1959 = !DILocation(line: 457, column: 20, scope: !1916)
!1960 = !DILocation(line: 457, column: 3, scope: !1897)
!1961 = !DILocation(line: 457, column: 8, scope: !1897)
!1962 = !DILocation(line: 457, column: 18, scope: !1897)
!1963 = !DILocation(line: 459, column: 30, scope: !1897)
!1964 = !DILocation(line: 459, column: 42, scope: !1897)
!1965 = !DILocation(line: 459, column: 10, scope: !1897)
!1966 = !DILocation(line: 459, column: 8, scope: !1897)
!1967 = !DILocation(line: 460, column: 7, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1897, file: !164, line: 460, column: 7)
!1969 = !DILocation(line: 460, column: 12, scope: !1968)
!1970 = !DILocation(line: 460, column: 7, scope: !1897)
!1971 = !DILocation(line: 460, column: 57, scope: !1972)
!1972 = !DILexicalBlockFile(scope: !1968, file: !164, discriminator: 1)
!1973 = !DILocation(line: 460, column: 36, scope: !1972)
!1974 = !DILocation(line: 460, column: 20, scope: !1972)
!1975 = !DILocation(line: 460, column: 25, scope: !1972)
!1976 = !DILocation(line: 460, column: 34, scope: !1972)
!1977 = !DILocation(line: 462, column: 19, scope: !1897)
!1978 = !DILocation(line: 462, column: 3, scope: !1897)
!1979 = !DILocation(line: 463, column: 2, scope: !1897)
!1980 = !DILocation(line: 440, column: 44, scope: !1981)
!1981 = !DILexicalBlockFile(scope: !1892, file: !164, discriminator: 2)
!1982 = !DILocation(line: 440, column: 27, scope: !1981)
!1983 = !DILocation(line: 440, column: 25, scope: !1981)
!1984 = !DILocation(line: 440, column: 2, scope: !1981)
!1985 = distinct !{!1985, !1889}
!1986 = !DILocation(line: 465, column: 20, scope: !1856)
!1987 = !DILocation(line: 465, column: 2, scope: !1856)
!1988 = !DILocation(line: 466, column: 1, scope: !1856)
!1989 = !DILocation(line: 466, column: 1, scope: !1865)
!1990 = distinct !DISubprogram(name: "ignore_deinit", scope: !164, file: !164, line: 505, type: !346, isLocal: false, isDefinition: true, scopeLine: 506, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !578)
!1991 = !DILocation(line: 507, column: 18, scope: !1990)
!1992 = !DILocation(line: 507, column: 2, scope: !1990)
!1993 = !DILocation(line: 508, column: 2, scope: !1990)
!1994 = !DILocation(line: 508, column: 9, scope: !1995)
!1995 = !DILexicalBlockFile(scope: !1990, file: !164, discriminator: 1)
!1996 = !DILocation(line: 508, column: 17, scope: !1995)
!1997 = !DILocation(line: 508, column: 2, scope: !1995)
!1998 = !DILocation(line: 509, column: 32, scope: !1990)
!1999 = !DILocation(line: 509, column: 41, scope: !1990)
!2000 = !DILocation(line: 509, column: 17, scope: !1990)
!2001 = !DILocation(line: 508, column: 2, scope: !2002)
!2002 = !DILexicalBlockFile(scope: !1990, file: !164, discriminator: 2)
!2003 = distinct !{!2003, !1993}
!2004 = !DILocation(line: 510, column: 26, scope: !1990)
!2005 = !DILocation(line: 510, column: 9, scope: !1990)
!2006 = !DILocation(line: 512, column: 2, scope: !1990)
!2007 = !DILocation(line: 513, column: 1, scope: !1990)
!2008 = distinct !DISubprogram(name: "ignore_check_replies_rec", scope: !164, file: !164, line: 43, type: !2009, isLocal: true, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !578)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!122, !134, !188, !469}
!2011 = !DILocalVariable(name: "rec", arg: 1, scope: !2008, file: !164, line: 43, type: !134)
!2012 = !DILocation(line: 43, column: 49, scope: !2008)
!2013 = !DILocalVariable(name: "channel", arg: 2, scope: !2008, file: !164, line: 43, type: !188)
!2014 = !DILocation(line: 43, column: 67, scope: !2008)
!2015 = !DILocalVariable(name: "text", arg: 3, scope: !2008, file: !164, line: 44, type: !469)
!2016 = !DILocation(line: 44, column: 21, scope: !2008)
!2017 = !DILocalVariable(name: "nicks", scope: !2008, file: !164, line: 46, type: !165)
!2018 = !DILocation(line: 46, column: 10, scope: !2008)
!2019 = !DILocalVariable(name: "tmp", scope: !2008, file: !164, line: 46, type: !165)
!2020 = !DILocation(line: 46, column: 18, scope: !2008)
!2021 = !DILocation(line: 48, column: 33, scope: !2008)
!2022 = !DILocation(line: 48, column: 42, scope: !2008)
!2023 = !DILocation(line: 48, column: 47, scope: !2008)
!2024 = !DILocation(line: 48, column: 10, scope: !2008)
!2025 = !DILocation(line: 48, column: 8, scope: !2008)
!2026 = !DILocation(line: 49, column: 6, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2008, file: !164, line: 49, column: 6)
!2028 = !DILocation(line: 49, column: 12, scope: !2027)
!2029 = !DILocation(line: 49, column: 6, scope: !2008)
!2030 = !DILocation(line: 49, column: 20, scope: !2031)
!2031 = !DILexicalBlockFile(scope: !2027, file: !164, discriminator: 1)
!2032 = !DILocation(line: 51, column: 13, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2008, file: !164, line: 51, column: 2)
!2034 = !DILocation(line: 51, column: 11, scope: !2033)
!2035 = !DILocation(line: 51, column: 7, scope: !2033)
!2036 = !DILocation(line: 51, column: 20, scope: !2037)
!2037 = !DILexicalBlockFile(scope: !2038, file: !164, discriminator: 1)
!2038 = distinct !DILexicalBlock(scope: !2033, file: !164, line: 51, column: 2)
!2039 = !DILocation(line: 51, column: 24, scope: !2037)
!2040 = !DILocation(line: 51, column: 2, scope: !2037)
!2041 = !DILocalVariable(name: "nick", scope: !2042, file: !164, line: 52, type: !529)
!2042 = distinct !DILexicalBlock(scope: !2038, file: !164, line: 51, column: 49)
!2043 = !DILocation(line: 52, column: 13, scope: !2042)
!2044 = !DILocation(line: 52, column: 20, scope: !2042)
!2045 = !DILocation(line: 52, column: 25, scope: !2042)
!2046 = !DILocation(line: 54, column: 22, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2042, file: !164, line: 54, column: 7)
!2048 = !DILocation(line: 54, column: 31, scope: !2047)
!2049 = !DILocation(line: 54, column: 37, scope: !2047)
!2050 = !DILocation(line: 54, column: 43, scope: !2047)
!2051 = !DILocation(line: 54, column: 7, scope: !2047)
!2052 = !DILocation(line: 54, column: 7, scope: !2042)
!2053 = !DILocation(line: 55, column: 4, scope: !2047)
!2054 = !DILocation(line: 56, column: 2, scope: !2042)
!2055 = !DILocation(line: 51, column: 38, scope: !2056)
!2056 = !DILexicalBlockFile(scope: !2038, file: !164, discriminator: 2)
!2057 = !DILocation(line: 51, column: 43, scope: !2056)
!2058 = !DILocation(line: 51, column: 36, scope: !2056)
!2059 = !DILocation(line: 51, column: 2, scope: !2056)
!2060 = distinct !{!2060, !2061}
!2061 = !DILocation(line: 51, column: 2, scope: !2008)
!2062 = !DILocation(line: 57, column: 15, scope: !2008)
!2063 = !DILocation(line: 57, column: 2, scope: !2008)
!2064 = !DILocation(line: 59, column: 2, scope: !2008)
!2065 = !DILocation(line: 60, column: 1, scope: !2008)
!2066 = distinct !DISubprogram(name: "ignore_index", scope: !164, file: !164, line: 318, type: !2067, isLocal: true, isDefinition: true, scopeLine: 319, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !578)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{!122, !134}
!2069 = !DILocalVariable(name: "find", arg: 1, scope: !2066, file: !164, line: 318, type: !134)
!2070 = !DILocation(line: 318, column: 37, scope: !2066)
!2071 = !DILocalVariable(name: "tmp", scope: !2066, file: !164, line: 320, type: !165)
!2072 = !DILocation(line: 320, column: 10, scope: !2066)
!2073 = !DILocalVariable(name: "index", scope: !2066, file: !164, line: 321, type: !122)
!2074 = !DILocation(line: 321, column: 6, scope: !2066)
!2075 = !DILocation(line: 323, column: 8, scope: !2066)
!2076 = !DILocation(line: 324, column: 13, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2066, file: !164, line: 324, column: 2)
!2078 = !DILocation(line: 324, column: 11, scope: !2077)
!2079 = !DILocation(line: 324, column: 7, scope: !2077)
!2080 = !DILocation(line: 324, column: 22, scope: !2081)
!2081 = !DILexicalBlockFile(scope: !2082, file: !164, discriminator: 1)
!2082 = distinct !DILexicalBlock(scope: !2077, file: !164, line: 324, column: 2)
!2083 = !DILocation(line: 324, column: 26, scope: !2081)
!2084 = !DILocation(line: 324, column: 2, scope: !2081)
!2085 = !DILocalVariable(name: "rec", scope: !2086, file: !164, line: 325, type: !134)
!2086 = distinct !DILexicalBlock(scope: !2082, file: !164, line: 324, column: 51)
!2087 = !DILocation(line: 325, column: 15, scope: !2086)
!2088 = !DILocation(line: 325, column: 21, scope: !2086)
!2089 = !DILocation(line: 325, column: 26, scope: !2086)
!2090 = !DILocation(line: 327, column: 7, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2086, file: !164, line: 327, column: 7)
!2092 = !DILocation(line: 327, column: 14, scope: !2091)
!2093 = !DILocation(line: 327, column: 11, scope: !2091)
!2094 = !DILocation(line: 327, column: 7, scope: !2086)
!2095 = !DILocation(line: 328, column: 11, scope: !2091)
!2096 = !DILocation(line: 328, column: 4, scope: !2091)
!2097 = !DILocation(line: 329, column: 8, scope: !2086)
!2098 = !DILocation(line: 330, column: 2, scope: !2086)
!2099 = !DILocation(line: 324, column: 40, scope: !2100)
!2100 = !DILexicalBlockFile(scope: !2082, file: !164, discriminator: 2)
!2101 = !DILocation(line: 324, column: 45, scope: !2100)
!2102 = !DILocation(line: 324, column: 38, scope: !2100)
!2103 = !DILocation(line: 324, column: 2, scope: !2100)
!2104 = distinct !{!2104, !2105}
!2105 = !DILocation(line: 324, column: 2, scope: !2066)
!2106 = !DILocation(line: 332, column: 2, scope: !2066)
!2107 = !DILocation(line: 333, column: 1, scope: !2066)
