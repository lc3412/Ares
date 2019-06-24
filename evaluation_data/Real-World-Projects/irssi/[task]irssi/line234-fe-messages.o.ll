; ModuleID = './line234-fe-messages.o.i'
source_filename = "./line234-fe-messages.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GHashTable = type opaque
%struct._WINDOW_REC = type { i32, i8*, i32, i32, %struct._GSList*, %struct._WI_ITEM_REC*, %struct._SERVER_REC*, %struct._SERVER_REC*, i8*, i32, %struct._GSList*, i8, %struct.HISTORY_REC*, i8*, i32, i8*, i64, i64, i8*, i8*, i8* }
%struct._WI_ITEM_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)* }
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
%struct._CHANNEL_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, %struct._GHashTable*, %struct._NICK_REC*, i8, i8*, i32, i8*, i16, i8* (%struct._CHANNEL_REC*)* }
%struct._NICK_REC = type { i32, i32, i64, i8*, i8*, i8*, i32, i8, [8 x i8], i8*, %struct._NICK_REC* }
%struct._QUERY_REC = type { i32, i32, %struct._GHashTable*, i8*, %struct._SERVER_REC*, i8*, i8*, i64, i32, i8*, void (%struct._WI_ITEM_REC*)*, i8* (%struct._WI_ITEM_REC*)*, i8*, i8*, i64, i8 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct.HISTORY_REC = type { i8*, %struct._GList*, i32, i32, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._HILIGHT_REC = type { i8*, i8**, i32, i8*, i8*, i32, i8, %struct._GRegex*, i8* }
%struct._GRegex = type opaque
%struct._TEXT_DEST_REC = type { %struct._WINDOW_REC*, %struct._SERVER_REC*, i8*, i8*, i8*, i8*, i32, i32, i8*, i32 }

@__func__.expand_emphasis = private unnamed_addr constant [16 x i8] c"expand_emphasis\00", align 1
@.str = private unnamed_addr constant [13 x i8] c"text != NULL\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"emphasis_italics\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"WINDOW ITEM TYPE\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"CHANNEL\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"emphasis_multiword\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"emphasis_replace\00", align 1
@__func__.channel_get_nickmode = private unnamed_addr constant [21 x i8] c"channel_get_nickmode\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"nick != NULL\00", align 1
@printnicks = common global %struct._GHashTable* null, align 8
@.str.7 = private unnamed_addr constant [15 x i8] c"fe-common/core\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"lookandfeel\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"hilight_nick_matches\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"hilight_nick_matches_everywhere\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"emphasis\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"show_nickmode\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"show_nickmode_empty\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"print_active_channel\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"show_quit_once\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"show_own_nickchange_once\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"message public\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"message private\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"message own_public\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"message own_private\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"message join\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"message part\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"message quit\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"message kick\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"message nick\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"message own_nick\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"message invite\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"message topic\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"nicklist new\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"nicklist remove\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"nicklist changed\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"nicklist host changed\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"channel joined\00", align 1
@.str.34 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.35 = private unnamed_addr constant [2 x i8] c" \00", align 1
@__func__.sig_message_own_private = private unnamed_addr constant [24 x i8] c"sig_message_own_private\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"server != NULL\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"msg != NULL\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.40 = private unnamed_addr constant [67 x i8] c"g_strcmp0(origtarget, \22,\22) == 0 || g_strcmp0(origtarget, \22.\22) == 0\00", align 1
@active_win = external global %struct._WINDOW_REC*, align 8
@.str.41 = private unnamed_addr constant [4 x i8] c"%s,\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"%s@%s\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1

; Function Attrs: nounwind uwtable
define i8* @expand_emphasis(%struct._WI_ITEM_REC*, i8*) #0 !dbg !846 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._WI_ITEM_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._GString*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct._WI_ITEM_REC* %0, %struct._WI_ITEM_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._WI_ITEM_REC** %4, metadata !850, metadata !851), !dbg !852
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !853, metadata !851), !dbg !854
  call void @llvm.dbg.declare(metadata %struct._GString** %6, metadata !855, metadata !851), !dbg !856
  call void @llvm.dbg.declare(metadata i8** %7, metadata !857, metadata !851), !dbg !858
  call void @llvm.dbg.declare(metadata i32* %8, metadata !859, metadata !851), !dbg !860
  call void @llvm.dbg.declare(metadata i32* %9, metadata !861, metadata !851), !dbg !862
  br label %17, !dbg !863, !llvm.loop !864

; <label>:17:                                     ; preds = %2
  %18 = load i8*, i8** %5, align 8, !dbg !865
  %19 = icmp ne i8* %18, null, !dbg !869
  br i1 %19, label %20, label %21, !dbg !865

; <label>:20:                                     ; preds = %17
  br label %22, !dbg !870

; <label>:21:                                     ; preds = %17
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.expand_emphasis, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)), !dbg !873
  store i8* null, i8** %3, align 8, !dbg !876
  br label %413, !dbg !876

; <label>:22:                                     ; preds = %20
  br label %23, !dbg !877

; <label>:23:                                     ; preds = %22
  %24 = call i32 @settings_get_bool(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0)), !dbg !879
  store i32 %24, i32* %9, align 4, !dbg !880
  %25 = load i8*, i8** %5, align 8, !dbg !881
  %26 = call %struct._GString* @g_string_new(i8* %25), !dbg !882
  store %struct._GString* %26, %struct._GString** %6, align 8, !dbg !883
  store i32 0, i32* %8, align 4, !dbg !884
  br label %27, !dbg !886

; <label>:27:                                     ; preds = %403, %23
  %28 = load i32, i32* %8, align 4, !dbg !887
  %29 = sext i32 %28 to i64, !dbg !887
  %30 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !890
  %31 = getelementptr inbounds %struct._GString, %struct._GString* %30, i32 0, i32 1, !dbg !891
  %32 = load i64, i64* %31, align 8, !dbg !891
  %33 = icmp ult i64 %29, %32, !dbg !892
  br i1 %33, label %34, label %406, !dbg !893

; <label>:34:                                     ; preds = %27
  call void @llvm.dbg.declare(metadata i8* %10, metadata !894, metadata !851), !dbg !896
  call void @llvm.dbg.declare(metadata i8** %11, metadata !897, metadata !851), !dbg !898
  call void @llvm.dbg.declare(metadata i8** %12, metadata !899, metadata !851), !dbg !900
  %35 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !901
  %36 = getelementptr inbounds %struct._GString, %struct._GString* %35, i32 0, i32 0, !dbg !902
  %37 = load i8*, i8** %36, align 8, !dbg !902
  %38 = load i32, i32* %8, align 4, !dbg !903
  %39 = sext i32 %38 to i64, !dbg !904
  %40 = getelementptr inbounds i8, i8* %37, i64 %39, !dbg !904
  store i8* %40, i8** %11, align 8, !dbg !905
  %41 = load i8*, i8** %11, align 8, !dbg !906
  %42 = load i8, i8* %41, align 1, !dbg !908
  %43 = sext i8 %42 to i32, !dbg !908
  %44 = icmp eq i32 %43, 42, !dbg !909
  br i1 %44, label %45, label %46, !dbg !910

; <label>:45:                                     ; preds = %34
  store i8 2, i8* %10, align 1, !dbg !911
  br label %64, !dbg !912

; <label>:46:                                     ; preds = %34
  %47 = load i8*, i8** %11, align 8, !dbg !913
  %48 = load i8, i8* %47, align 1, !dbg !915
  %49 = sext i8 %48 to i32, !dbg !915
  %50 = icmp eq i32 %49, 47, !dbg !916
  br i1 %50, label %51, label %55, !dbg !917

; <label>:51:                                     ; preds = %46
  %52 = load i32, i32* %9, align 4, !dbg !918
  %53 = icmp ne i32 %52, 0, !dbg !918
  br i1 %53, label %54, label %55, !dbg !920

; <label>:54:                                     ; preds = %51
  store i8 29, i8* %10, align 1, !dbg !921
  br label %63, !dbg !922

; <label>:55:                                     ; preds = %51, %46
  %56 = load i8*, i8** %11, align 8, !dbg !923
  %57 = load i8, i8* %56, align 1, !dbg !925
  %58 = sext i8 %57 to i32, !dbg !925
  %59 = icmp eq i32 %58, 95, !dbg !926
  br i1 %59, label %60, label %61, !dbg !927

; <label>:60:                                     ; preds = %55
  store i8 31, i8* %10, align 1, !dbg !928
  br label %62, !dbg !929

; <label>:61:                                     ; preds = %55
  br label %403, !dbg !930

; <label>:62:                                     ; preds = %60
  br label %63

; <label>:63:                                     ; preds = %62, %54
  br label %64

; <label>:64:                                     ; preds = %63, %45
  %65 = load i32, i32* %8, align 4, !dbg !931
  %66 = icmp sgt i32 %65, 0, !dbg !933
  br i1 %66, label %67, label %73, !dbg !934

; <label>:67:                                     ; preds = %64
  %68 = load i8*, i8** %11, align 8, !dbg !935
  %69 = getelementptr inbounds i8, i8* %68, i64 -1, !dbg !935
  %70 = load i8, i8* %69, align 1, !dbg !935
  %71 = sext i8 %70 to i32, !dbg !935
  %72 = icmp ne i32 %71, 32, !dbg !937
  br i1 %72, label %92, label %73, !dbg !938

; <label>:73:                                     ; preds = %67, %64
  %74 = load i8*, i8** %11, align 8, !dbg !939
  %75 = getelementptr inbounds i8, i8* %74, i64 1, !dbg !939
  %76 = load i8, i8* %75, align 1, !dbg !939
  %77 = zext i8 %76 to i32, !dbg !941
  %78 = icmp sge i32 %77, 128, !dbg !942
  br i1 %78, label %93, label %79, !dbg !943

; <label>:79:                                     ; preds = %73
  %80 = load i8*, i8** %11, align 8, !dbg !944
  %81 = getelementptr inbounds i8, i8* %80, i64 1, !dbg !944
  %82 = load i8, i8* %81, align 1, !dbg !944
  %83 = zext i8 %82 to i32, !dbg !946
  %84 = sext i32 %83 to i64, !dbg !947
  %85 = call i16** @__ctype_b_loc() #1, !dbg !948
  %86 = load i16*, i16** %85, align 8, !dbg !949
  %87 = getelementptr inbounds i16, i16* %86, i64 %84, !dbg !947
  %88 = load i16, i16* %87, align 2, !dbg !947
  %89 = zext i16 %88 to i32, !dbg !947
  %90 = and i32 %89, 8, !dbg !950
  %91 = icmp ne i32 %90, 0, !dbg !950
  br i1 %91, label %93, label %92, !dbg !951

; <label>:92:                                     ; preds = %79, %67
  br label %403, !dbg !952

; <label>:93:                                     ; preds = %79, %73
  %94 = load i8*, i8** %11, align 8, !dbg !953
  %95 = getelementptr inbounds i8, i8* %94, i64 1, !dbg !955
  %96 = load i8*, i8** %11, align 8, !dbg !956
  %97 = load i8, i8* %96, align 1, !dbg !957
  %98 = sext i8 %97 to i32, !dbg !957
  %99 = call i8* @strchr(i8* %95, i32 %98) #5, !dbg !958
  store i8* %99, i8** %12, align 8, !dbg !959
  %100 = icmp eq i8* %99, null, !dbg !960
  br i1 %100, label %101, label %102, !dbg !961

; <label>:101:                                    ; preds = %93
  br label %403, !dbg !962

; <label>:102:                                    ; preds = %93
  %103 = load i8*, i8** %12, align 8, !dbg !963
  %104 = getelementptr inbounds i8, i8* %103, i64 -1, !dbg !963
  %105 = load i8, i8* %104, align 1, !dbg !963
  %106 = zext i8 %105 to i32, !dbg !965
  %107 = icmp sge i32 %106, 128, !dbg !966
  br i1 %107, label %121, label %108, !dbg !967

; <label>:108:                                    ; preds = %102
  %109 = load i8*, i8** %12, align 8, !dbg !968
  %110 = getelementptr inbounds i8, i8* %109, i64 -1, !dbg !968
  %111 = load i8, i8* %110, align 1, !dbg !968
  %112 = zext i8 %111 to i32, !dbg !970
  %113 = sext i32 %112 to i64, !dbg !971
  %114 = call i16** @__ctype_b_loc() #1, !dbg !972
  %115 = load i16*, i16** %114, align 8, !dbg !973
  %116 = getelementptr inbounds i16, i16* %115, i64 %113, !dbg !971
  %117 = load i16, i16* %116, align 2, !dbg !971
  %118 = zext i16 %117 to i32, !dbg !971
  %119 = and i32 %118, 8, !dbg !974
  %120 = icmp ne i32 %119, 0, !dbg !974
  br i1 %120, label %121, label %196, !dbg !973

; <label>:121:                                    ; preds = %108, %102
  %122 = load i8*, i8** %12, align 8, !dbg !975
  %123 = getelementptr inbounds i8, i8* %122, i64 1, !dbg !975
  %124 = load i8, i8* %123, align 1, !dbg !975
  %125 = zext i8 %124 to i32, !dbg !977
  %126 = icmp sge i32 %125, 128, !dbg !978
  br i1 %126, label %196, label %127, !dbg !979

; <label>:127:                                    ; preds = %121
  %128 = load i8*, i8** %12, align 8, !dbg !980
  %129 = getelementptr inbounds i8, i8* %128, i64 1, !dbg !980
  %130 = load i8, i8* %129, align 1, !dbg !980
  %131 = zext i8 %130 to i32, !dbg !982
  %132 = sext i32 %131 to i64, !dbg !983
  %133 = call i16** @__ctype_b_loc() #1, !dbg !984
  %134 = load i16*, i16** %133, align 8, !dbg !985
  %135 = getelementptr inbounds i16, i16* %134, i64 %132, !dbg !983
  %136 = load i16, i16* %135, align 2, !dbg !983
  %137 = zext i16 %136 to i32, !dbg !983
  %138 = and i32 %137, 8, !dbg !986
  %139 = icmp ne i32 %138, 0, !dbg !986
  br i1 %139, label %196, label %140, !dbg !985

; <label>:140:                                    ; preds = %127
  %141 = load i8*, i8** %12, align 8, !dbg !987
  %142 = getelementptr inbounds i8, i8* %141, i64 1, !dbg !987
  %143 = load i8, i8* %142, align 1, !dbg !987
  %144 = sext i8 %143 to i32, !dbg !987
  %145 = load i8, i8* %10, align 1, !dbg !988
  %146 = sext i8 %145 to i32, !dbg !988
  %147 = icmp eq i32 %144, %146, !dbg !989
  br i1 %147, label %196, label %148, !dbg !990

; <label>:148:                                    ; preds = %140
  %149 = load i8*, i8** %12, align 8, !dbg !991
  %150 = getelementptr inbounds i8, i8* %149, i64 1, !dbg !991
  %151 = load i8, i8* %150, align 1, !dbg !991
  %152 = sext i8 %151 to i32, !dbg !991
  %153 = icmp eq i32 %152, 42, !dbg !992
  br i1 %153, label %196, label %154, !dbg !993

; <label>:154:                                    ; preds = %148
  %155 = load i8*, i8** %12, align 8, !dbg !994
  %156 = getelementptr inbounds i8, i8* %155, i64 1, !dbg !994
  %157 = load i8, i8* %156, align 1, !dbg !994
  %158 = sext i8 %157 to i32, !dbg !994
  %159 = icmp eq i32 %158, 95, !dbg !995
  br i1 %159, label %196, label %160, !dbg !996

; <label>:160:                                    ; preds = %154
  %161 = load i8, i8* %10, align 1, !dbg !997
  %162 = sext i8 %161 to i32, !dbg !997
  %163 = icmp eq i32 %162, 29, !dbg !998
  br i1 %163, label %164, label %197, !dbg !999

; <label>:164:                                    ; preds = %160
  %165 = load i8*, i8** %12, align 8, !dbg !1000
  %166 = getelementptr inbounds i8, i8* %165, i64 1, !dbg !1000
  %167 = load i8, i8* %166, align 1, !dbg !1000
  %168 = zext i8 %167 to i32, !dbg !1001
  %169 = sext i32 %168 to i64, !dbg !1002
  %170 = call i16** @__ctype_b_loc() #1, !dbg !1003
  %171 = load i16*, i16** %170, align 8, !dbg !1004
  %172 = getelementptr inbounds i16, i16* %171, i64 %169, !dbg !1002
  %173 = load i16, i16* %172, align 2, !dbg !1002
  %174 = zext i16 %173 to i32, !dbg !1002
  %175 = and i32 %174, 4, !dbg !1005
  %176 = icmp ne i32 %175, 0, !dbg !1005
  br i1 %176, label %177, label %197, !dbg !1006

; <label>:177:                                    ; preds = %164
  %178 = load i8*, i8** %12, align 8, !dbg !1007
  %179 = getelementptr inbounds i8, i8* %178, i64 2, !dbg !1007
  %180 = load i8, i8* %179, align 1, !dbg !1007
  %181 = zext i8 %180 to i32, !dbg !1008
  %182 = icmp sge i32 %181, 128, !dbg !1009
  br i1 %182, label %196, label %183, !dbg !1010

; <label>:183:                                    ; preds = %177
  %184 = load i8*, i8** %12, align 8, !dbg !1011
  %185 = getelementptr inbounds i8, i8* %184, i64 2, !dbg !1011
  %186 = load i8, i8* %185, align 1, !dbg !1011
  %187 = zext i8 %186 to i32, !dbg !1012
  %188 = sext i32 %187 to i64, !dbg !1013
  %189 = call i16** @__ctype_b_loc() #1, !dbg !1014
  %190 = load i16*, i16** %189, align 8, !dbg !1015
  %191 = getelementptr inbounds i16, i16* %190, i64 %188, !dbg !1013
  %192 = load i16, i16* %191, align 2, !dbg !1013
  %193 = zext i16 %192 to i32, !dbg !1013
  %194 = and i32 %193, 8, !dbg !1016
  %195 = icmp ne i32 %194, 0, !dbg !1016
  br i1 %195, label %196, label %197, !dbg !1017

; <label>:196:                                    ; preds = %183, %177, %154, %148, %140, %127, %121, %108
  br label %403, !dbg !1019

; <label>:197:                                    ; preds = %183, %164, %160
  %198 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %4, align 8, !dbg !1020
  %199 = bitcast %struct._WI_ITEM_REC* %198 to i8*, !dbg !1020
  %200 = call i8* @module_check_cast_module(i8* %199, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0)), !dbg !1022
  %201 = bitcast i8* %200 to %struct._CHANNEL_REC*, !dbg !1023
  %202 = icmp ne %struct._CHANNEL_REC* %201, null, !dbg !1023
  br i1 %202, label %203, label %204, !dbg !1024

; <label>:203:                                    ; preds = %197
  br i1 false, label %326, label %205, !dbg !1025

; <label>:204:                                    ; preds = %197
  br i1 false, label %205, label %326, !dbg !1027

; <label>:205:                                    ; preds = %204, %203
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1029, metadata !851), !dbg !1031
  call void @llvm.dbg.declare(metadata i8* %14, metadata !1032, metadata !851), !dbg !1033
  call void @llvm.dbg.declare(metadata i8** %15, metadata !1034, metadata !851), !dbg !1035
  %206 = load i8*, i8** %12, align 8, !dbg !1036
  %207 = getelementptr inbounds i8, i8* %206, i64 1, !dbg !1036
  %208 = load i8, i8* %207, align 1, !dbg !1036
  store i8 %208, i8* %14, align 1, !dbg !1037
  %209 = load i8*, i8** %12, align 8, !dbg !1038
  %210 = getelementptr inbounds i8, i8* %209, i64 1, !dbg !1038
  store i8 0, i8* %210, align 1, !dbg !1039
  %211 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %4, align 8, !dbg !1040
  %212 = bitcast %struct._WI_ITEM_REC* %211 to i8*, !dbg !1040
  %213 = call i8* @module_check_cast_module(i8* %212, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0)), !dbg !1041
  %214 = bitcast i8* %213 to %struct._CHANNEL_REC*, !dbg !1042
  %215 = load i8*, i8** %11, align 8, !dbg !1043
  %216 = call %struct._NICK_REC* @nicklist_find(%struct._CHANNEL_REC* %214, i8* %215), !dbg !1044
  %217 = icmp ne %struct._NICK_REC* %216, null, !dbg !1046
  %218 = zext i1 %217 to i32, !dbg !1046
  store i32 %218, i32* %13, align 4, !dbg !1047
  %219 = load i8, i8* %14, align 1, !dbg !1048
  %220 = load i8*, i8** %12, align 8, !dbg !1049
  %221 = getelementptr inbounds i8, i8* %220, i64 1, !dbg !1049
  store i8 %219, i8* %221, align 1, !dbg !1050
  %222 = load i32, i32* %13, align 4, !dbg !1051
  %223 = icmp ne i32 %222, 0, !dbg !1051
  br i1 %223, label %224, label %225, !dbg !1053

; <label>:224:                                    ; preds = %205
  br label %403, !dbg !1054

; <label>:225:                                    ; preds = %205
  %226 = load i8*, i8** %12, align 8, !dbg !1056
  store i8* %226, i8** %15, align 8, !dbg !1057
  br label %227, !dbg !1058

; <label>:227:                                    ; preds = %302, %225
  %228 = load i8*, i8** %15, align 8, !dbg !1059
  %229 = getelementptr inbounds i8, i8* %228, i64 1, !dbg !1059
  %230 = load i8, i8* %229, align 1, !dbg !1059
  %231 = zext i8 %230 to i32, !dbg !1060
  %232 = sext i32 %231 to i64, !dbg !1061
  %233 = call i16** @__ctype_b_loc() #1, !dbg !1062
  %234 = load i16*, i16** %233, align 8, !dbg !1063
  %235 = getelementptr inbounds i16, i16* %234, i64 %232, !dbg !1061
  %236 = load i16, i16* %235, align 2, !dbg !1061
  %237 = zext i16 %236 to i32, !dbg !1061
  %238 = and i32 %237, 8, !dbg !1064
  %239 = icmp ne i32 %238, 0, !dbg !1064
  br i1 %239, label %300, label %240, !dbg !1060

; <label>:240:                                    ; preds = %227
  %241 = load i8*, i8** %15, align 8, !dbg !1065
  %242 = getelementptr inbounds i8, i8* %241, i64 1, !dbg !1065
  %243 = load i8, i8* %242, align 1, !dbg !1065
  %244 = sext i8 %243 to i32, !dbg !1067
  %245 = icmp eq i32 %244, 96, !dbg !1068
  br i1 %245, label %300, label %246, !dbg !1069

; <label>:246:                                    ; preds = %240
  %247 = load i8*, i8** %15, align 8, !dbg !1070
  %248 = getelementptr inbounds i8, i8* %247, i64 1, !dbg !1070
  %249 = load i8, i8* %248, align 1, !dbg !1070
  %250 = sext i8 %249 to i32, !dbg !1072
  %251 = icmp eq i32 %250, 45, !dbg !1073
  br i1 %251, label %300, label %252, !dbg !1074

; <label>:252:                                    ; preds = %246
  %253 = load i8*, i8** %15, align 8, !dbg !1075
  %254 = getelementptr inbounds i8, i8* %253, i64 1, !dbg !1075
  %255 = load i8, i8* %254, align 1, !dbg !1075
  %256 = sext i8 %255 to i32, !dbg !1077
  %257 = icmp eq i32 %256, 95, !dbg !1078
  br i1 %257, label %300, label %258, !dbg !1079

; <label>:258:                                    ; preds = %252
  %259 = load i8*, i8** %15, align 8, !dbg !1080
  %260 = getelementptr inbounds i8, i8* %259, i64 1, !dbg !1080
  %261 = load i8, i8* %260, align 1, !dbg !1080
  %262 = sext i8 %261 to i32, !dbg !1082
  %263 = icmp eq i32 %262, 91, !dbg !1083
  br i1 %263, label %300, label %264, !dbg !1084

; <label>:264:                                    ; preds = %258
  %265 = load i8*, i8** %15, align 8, !dbg !1085
  %266 = getelementptr inbounds i8, i8* %265, i64 1, !dbg !1085
  %267 = load i8, i8* %266, align 1, !dbg !1085
  %268 = sext i8 %267 to i32, !dbg !1087
  %269 = icmp eq i32 %268, 93, !dbg !1088
  br i1 %269, label %300, label %270, !dbg !1089

; <label>:270:                                    ; preds = %264
  %271 = load i8*, i8** %15, align 8, !dbg !1090
  %272 = getelementptr inbounds i8, i8* %271, i64 1, !dbg !1090
  %273 = load i8, i8* %272, align 1, !dbg !1090
  %274 = sext i8 %273 to i32, !dbg !1092
  %275 = icmp eq i32 %274, 123, !dbg !1093
  br i1 %275, label %300, label %276, !dbg !1094

; <label>:276:                                    ; preds = %270
  %277 = load i8*, i8** %15, align 8, !dbg !1095
  %278 = getelementptr inbounds i8, i8* %277, i64 1, !dbg !1095
  %279 = load i8, i8* %278, align 1, !dbg !1095
  %280 = sext i8 %279 to i32, !dbg !1097
  %281 = icmp eq i32 %280, 125, !dbg !1098
  br i1 %281, label %300, label %282, !dbg !1099

; <label>:282:                                    ; preds = %276
  %283 = load i8*, i8** %15, align 8, !dbg !1100
  %284 = getelementptr inbounds i8, i8* %283, i64 1, !dbg !1100
  %285 = load i8, i8* %284, align 1, !dbg !1100
  %286 = sext i8 %285 to i32, !dbg !1102
  %287 = icmp eq i32 %286, 124, !dbg !1103
  br i1 %287, label %300, label %288, !dbg !1104

; <label>:288:                                    ; preds = %282
  %289 = load i8*, i8** %15, align 8, !dbg !1105
  %290 = getelementptr inbounds i8, i8* %289, i64 1, !dbg !1105
  %291 = load i8, i8* %290, align 1, !dbg !1105
  %292 = sext i8 %291 to i32, !dbg !1107
  %293 = icmp eq i32 %292, 92, !dbg !1108
  br i1 %293, label %300, label %294, !dbg !1109

; <label>:294:                                    ; preds = %288
  %295 = load i8*, i8** %15, align 8, !dbg !1110
  %296 = getelementptr inbounds i8, i8* %295, i64 1, !dbg !1110
  %297 = load i8, i8* %296, align 1, !dbg !1110
  %298 = sext i8 %297 to i32, !dbg !1112
  %299 = icmp eq i32 %298, 94, !dbg !1113
  br label %300, !dbg !1114

; <label>:300:                                    ; preds = %294, %288, %282, %276, %270, %264, %258, %252, %246, %240, %227
  %301 = phi i1 [ true, %288 ], [ true, %282 ], [ true, %276 ], [ true, %270 ], [ true, %264 ], [ true, %258 ], [ true, %252 ], [ true, %246 ], [ true, %240 ], [ true, %227 ], [ %299, %294 ]
  br i1 %301, label %302, label %305, !dbg !1115

; <label>:302:                                    ; preds = %300
  %303 = load i8*, i8** %15, align 8, !dbg !1117
  %304 = getelementptr inbounds i8, i8* %303, i32 1, !dbg !1117
  store i8* %304, i8** %15, align 8, !dbg !1117
  br label %227, !dbg !1118, !llvm.loop !1120

; <label>:305:                                    ; preds = %300
  %306 = load i8*, i8** %15, align 8, !dbg !1121
  %307 = getelementptr inbounds i8, i8* %306, i64 1, !dbg !1121
  %308 = load i8, i8* %307, align 1, !dbg !1121
  store i8 %308, i8* %14, align 1, !dbg !1122
  %309 = load i8*, i8** %15, align 8, !dbg !1123
  %310 = getelementptr inbounds i8, i8* %309, i64 1, !dbg !1123
  store i8 0, i8* %310, align 1, !dbg !1124
  %311 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %4, align 8, !dbg !1125
  %312 = bitcast %struct._WI_ITEM_REC* %311 to i8*, !dbg !1125
  %313 = call i8* @module_check_cast_module(i8* %312, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0)), !dbg !1126
  %314 = bitcast i8* %313 to %struct._CHANNEL_REC*, !dbg !1127
  %315 = load i8*, i8** %11, align 8, !dbg !1128
  %316 = call %struct._NICK_REC* @nicklist_find(%struct._CHANNEL_REC* %314, i8* %315), !dbg !1129
  %317 = icmp ne %struct._NICK_REC* %316, null, !dbg !1130
  %318 = zext i1 %317 to i32, !dbg !1130
  store i32 %318, i32* %13, align 4, !dbg !1131
  %319 = load i8, i8* %14, align 1, !dbg !1132
  %320 = load i8*, i8** %15, align 8, !dbg !1133
  %321 = getelementptr inbounds i8, i8* %320, i64 1, !dbg !1133
  store i8 %319, i8* %321, align 1, !dbg !1134
  %322 = load i32, i32* %13, align 4, !dbg !1135
  %323 = icmp ne i32 %322, 0, !dbg !1135
  br i1 %323, label %324, label %325, !dbg !1137

; <label>:324:                                    ; preds = %305
  br label %403, !dbg !1138

; <label>:325:                                    ; preds = %305
  br label %326, !dbg !1140

; <label>:326:                                    ; preds = %325, %204, %203
  %327 = call i32 @settings_get_bool(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0)), !dbg !1141
  %328 = icmp ne i32 %327, 0, !dbg !1141
  br i1 %328, label %364, label %329, !dbg !1143

; <label>:329:                                    ; preds = %326
  call void @llvm.dbg.declare(metadata i8** %16, metadata !1144, metadata !851), !dbg !1146
  %330 = load i8*, i8** %11, align 8, !dbg !1147
  %331 = getelementptr inbounds i8, i8* %330, i64 1, !dbg !1149
  store i8* %331, i8** %16, align 8, !dbg !1150
  br label %332, !dbg !1151

; <label>:332:                                    ; preds = %355, %329
  %333 = load i8*, i8** %16, align 8, !dbg !1152
  %334 = load i8*, i8** %12, align 8, !dbg !1155
  %335 = icmp ne i8* %333, %334, !dbg !1156
  br i1 %335, label %336, label %358, !dbg !1157

; <label>:336:                                    ; preds = %332
  %337 = load i8*, i8** %16, align 8, !dbg !1158
  %338 = load i8, i8* %337, align 1, !dbg !1161
  %339 = zext i8 %338 to i32, !dbg !1162
  %340 = icmp sge i32 %339, 128, !dbg !1163
  br i1 %340, label %354, label %341, !dbg !1164

; <label>:341:                                    ; preds = %336
  %342 = load i8*, i8** %16, align 8, !dbg !1165
  %343 = load i8, i8* %342, align 1, !dbg !1167
  %344 = zext i8 %343 to i32, !dbg !1168
  %345 = sext i32 %344 to i64, !dbg !1169
  %346 = call i16** @__ctype_b_loc() #1, !dbg !1170
  %347 = load i16*, i16** %346, align 8, !dbg !1171
  %348 = getelementptr inbounds i16, i16* %347, i64 %345, !dbg !1169
  %349 = load i16, i16* %348, align 2, !dbg !1169
  %350 = zext i16 %349 to i32, !dbg !1169
  %351 = and i32 %350, 8, !dbg !1172
  %352 = icmp ne i32 %351, 0, !dbg !1172
  br i1 %352, label %354, label %353, !dbg !1168

; <label>:353:                                    ; preds = %341
  br label %358, !dbg !1173

; <label>:354:                                    ; preds = %341, %336
  br label %355, !dbg !1174

; <label>:355:                                    ; preds = %354
  %356 = load i8*, i8** %16, align 8, !dbg !1175
  %357 = getelementptr inbounds i8, i8* %356, i32 1, !dbg !1175
  store i8* %357, i8** %16, align 8, !dbg !1175
  br label %332, !dbg !1177, !llvm.loop !1178

; <label>:358:                                    ; preds = %353, %332
  %359 = load i8*, i8** %16, align 8, !dbg !1180
  %360 = load i8*, i8** %12, align 8, !dbg !1182
  %361 = icmp ne i8* %359, %360, !dbg !1183
  br i1 %361, label %362, label %363, !dbg !1184

; <label>:362:                                    ; preds = %358
  br label %403, !dbg !1185

; <label>:363:                                    ; preds = %358
  br label %364, !dbg !1187

; <label>:364:                                    ; preds = %363, %326
  %365 = call i32 @settings_get_bool(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0)), !dbg !1188
  %366 = icmp ne i32 %365, 0, !dbg !1188
  br i1 %366, label %367, label %380, !dbg !1190

; <label>:367:                                    ; preds = %364
  %368 = load i8, i8* %10, align 1, !dbg !1191
  %369 = load i8*, i8** %12, align 8, !dbg !1193
  store i8 %368, i8* %369, align 1, !dbg !1194
  %370 = load i8*, i8** %11, align 8, !dbg !1195
  store i8 %368, i8* %370, align 1, !dbg !1196
  %371 = load i8*, i8** %12, align 8, !dbg !1197
  %372 = load i8*, i8** %11, align 8, !dbg !1198
  %373 = ptrtoint i8* %371 to i64, !dbg !1199
  %374 = ptrtoint i8* %372 to i64, !dbg !1199
  %375 = sub i64 %373, %374, !dbg !1199
  %376 = load i32, i32* %8, align 4, !dbg !1200
  %377 = sext i32 %376 to i64, !dbg !1200
  %378 = add nsw i64 %377, %375, !dbg !1200
  %379 = trunc i64 %378 to i32, !dbg !1200
  store i32 %379, i32* %8, align 4, !dbg !1200
  br label %402, !dbg !1201

; <label>:380:                                    ; preds = %364
  %381 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !1202
  %382 = load i32, i32* %8, align 4, !dbg !1204
  %383 = sext i32 %382 to i64, !dbg !1204
  %384 = load i8, i8* %10, align 1, !dbg !1205
  %385 = call %struct._GString* @g_string_insert_c(%struct._GString* %381, i64 %383, i8 signext %384), !dbg !1206
  %386 = load i8*, i8** %12, align 8, !dbg !1207
  %387 = load i8*, i8** %11, align 8, !dbg !1208
  %388 = ptrtoint i8* %386 to i64, !dbg !1209
  %389 = ptrtoint i8* %387 to i64, !dbg !1209
  %390 = sub i64 %388, %389, !dbg !1209
  %391 = add nsw i64 %390, 2, !dbg !1210
  %392 = load i32, i32* %8, align 4, !dbg !1211
  %393 = sext i32 %392 to i64, !dbg !1211
  %394 = add nsw i64 %393, %391, !dbg !1211
  %395 = trunc i64 %394 to i32, !dbg !1211
  store i32 %395, i32* %8, align 4, !dbg !1211
  %396 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !1212
  %397 = load i32, i32* %8, align 4, !dbg !1213
  %398 = add nsw i32 %397, 1, !dbg !1213
  store i32 %398, i32* %8, align 4, !dbg !1213
  %399 = sext i32 %397 to i64, !dbg !1214
  %400 = load i8, i8* %10, align 1, !dbg !1215
  %401 = call %struct._GString* @g_string_insert_c(%struct._GString* %396, i64 %399, i8 signext %400), !dbg !1216
  br label %402

; <label>:402:                                    ; preds = %380, %367
  br label %403, !dbg !1217

; <label>:403:                                    ; preds = %402, %362, %324, %224, %196, %101, %92, %61
  %404 = load i32, i32* %8, align 4, !dbg !1218
  %405 = add nsw i32 %404, 1, !dbg !1218
  store i32 %405, i32* %8, align 4, !dbg !1218
  br label %27, !dbg !1220, !llvm.loop !1221

; <label>:406:                                    ; preds = %27
  %407 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !1223
  %408 = getelementptr inbounds %struct._GString, %struct._GString* %407, i32 0, i32 0, !dbg !1224
  %409 = load i8*, i8** %408, align 8, !dbg !1224
  store i8* %409, i8** %7, align 8, !dbg !1225
  %410 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !1226
  %411 = call i8* @g_string_free(%struct._GString* %410, i32 0), !dbg !1227
  %412 = load i8*, i8** %7, align 8, !dbg !1228
  store i8* %412, i8** %3, align 8, !dbg !1229
  br label %413, !dbg !1229

; <label>:413:                                    ; preds = %406, %21
  %414 = load i8*, i8** %3, align 8, !dbg !1230
  ret i8* %414, !dbg !1230
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare i32 @settings_get_bool(i8*) #2

declare %struct._GString* @g_string_new(i8*) #2

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #3

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

declare i8* @module_check_cast_module(i8*, i32, i8*, i8*) #2

declare %struct._NICK_REC* @nicklist_find(%struct._CHANNEL_REC*, i8*) #2

declare %struct._GString* @g_string_insert_c(%struct._GString*, i64, i8 signext) #2

declare i8* @g_string_free(%struct._GString*, i32) #2

; Function Attrs: nounwind uwtable
define i8* @channel_get_nickmode(%struct._CHANNEL_REC*, i8*) #0 !dbg !1231 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._CHANNEL_REC*, align 8
  %5 = alloca i8*, align 8
  store %struct._CHANNEL_REC* %0, %struct._CHANNEL_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %4, metadata !1234, metadata !851), !dbg !1235
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1236, metadata !851), !dbg !1237
  br label %6, !dbg !1238, !llvm.loop !1239

; <label>:6:                                      ; preds = %2
  %7 = load i8*, i8** %5, align 8, !dbg !1240
  %8 = icmp ne i8* %7, null, !dbg !1244
  br i1 %8, label %9, label %10, !dbg !1240

; <label>:9:                                      ; preds = %6
  br label %11, !dbg !1245

; <label>:10:                                     ; preds = %6
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.channel_get_nickmode, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0)), !dbg !1248
  store i8* null, i8** %3, align 8, !dbg !1251
  br label %23, !dbg !1251

; <label>:11:                                     ; preds = %9
  br label %12, !dbg !1252

; <label>:12:                                     ; preds = %11
  %13 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %4, align 8, !dbg !1254
  %14 = icmp eq %struct._CHANNEL_REC* %13, null, !dbg !1255
  br i1 %14, label %15, label %16, !dbg !1254

; <label>:15:                                     ; preds = %12
  br label %20, !dbg !1256

; <label>:16:                                     ; preds = %12
  %17 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %4, align 8, !dbg !1258
  %18 = load i8*, i8** %5, align 8, !dbg !1259
  %19 = call %struct._NICK_REC* @nicklist_find(%struct._CHANNEL_REC* %17, i8* %18), !dbg !1260
  br label %20, !dbg !1261

; <label>:20:                                     ; preds = %16, %15
  %21 = phi %struct._NICK_REC* [ null, %15 ], [ %19, %16 ], !dbg !1263
  %22 = call i8* @channel_get_nickmode_rec(%struct._NICK_REC* %21), !dbg !1265
  store i8* %22, i8** %3, align 8, !dbg !1266
  br label %23, !dbg !1266

; <label>:23:                                     ; preds = %20, %10
  %24 = load i8*, i8** %3, align 8, !dbg !1267
  ret i8* %24, !dbg !1267
}

; Function Attrs: nounwind uwtable
define internal i8* @channel_get_nickmode_rec(%struct._NICK_REC*) #0 !dbg !1268 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._NICK_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct._NICK_REC* %0, %struct._NICK_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %3, metadata !1271, metadata !851), !dbg !1272
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1273, metadata !851), !dbg !1274
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1275, metadata !851), !dbg !1276
  %6 = call i32 @settings_get_bool(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0)), !dbg !1277
  %7 = icmp ne i32 %6, 0, !dbg !1277
  br i1 %7, label %10, label %8, !dbg !1279

; <label>:8:                                      ; preds = %1
  %9 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.34, i32 0, i32 0)), !dbg !1280
  store i8* %9, i8** %2, align 8, !dbg !1281
  br label %38, !dbg !1281

; <label>:10:                                     ; preds = %1
  %11 = call i32 @settings_get_bool(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0)), !dbg !1282
  %12 = icmp ne i32 %11, 0, !dbg !1282
  %13 = select i1 %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.34, i32 0, i32 0), !dbg !1282
  store i8* %13, i8** %4, align 8, !dbg !1283
  %14 = load %struct._NICK_REC*, %struct._NICK_REC** %3, align 8, !dbg !1284
  %15 = icmp eq %struct._NICK_REC* %14, null, !dbg !1286
  br i1 %15, label %23, label %16, !dbg !1287

; <label>:16:                                     ; preds = %10
  %17 = load %struct._NICK_REC*, %struct._NICK_REC** %3, align 8, !dbg !1288
  %18 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %17, i32 0, i32 8, !dbg !1290
  %19 = getelementptr inbounds [8 x i8], [8 x i8]* %18, i64 0, i64 0, !dbg !1288
  %20 = load i8, i8* %19, align 1, !dbg !1288
  %21 = sext i8 %20 to i32, !dbg !1288
  %22 = icmp eq i32 %21, 0, !dbg !1291
  br i1 %22, label %23, label %26, !dbg !1292

; <label>:23:                                     ; preds = %16, %10
  %24 = load i8*, i8** %4, align 8, !dbg !1293
  %25 = call noalias i8* @g_strdup(i8* %24), !dbg !1294
  store i8* %25, i8** %5, align 8, !dbg !1295
  br label %36, !dbg !1296

; <label>:26:                                     ; preds = %16
  %27 = call noalias i8* @g_malloc(i64 2), !dbg !1297
  store i8* %27, i8** %5, align 8, !dbg !1299
  %28 = load %struct._NICK_REC*, %struct._NICK_REC** %3, align 8, !dbg !1300
  %29 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %28, i32 0, i32 8, !dbg !1301
  %30 = getelementptr inbounds [8 x i8], [8 x i8]* %29, i64 0, i64 0, !dbg !1300
  %31 = load i8, i8* %30, align 1, !dbg !1300
  %32 = load i8*, i8** %5, align 8, !dbg !1302
  %33 = getelementptr inbounds i8, i8* %32, i64 0, !dbg !1302
  store i8 %31, i8* %33, align 1, !dbg !1303
  %34 = load i8*, i8** %5, align 8, !dbg !1304
  %35 = getelementptr inbounds i8, i8* %34, i64 1, !dbg !1304
  store i8 0, i8* %35, align 1, !dbg !1305
  br label %36

; <label>:36:                                     ; preds = %26, %23
  %37 = load i8*, i8** %5, align 8, !dbg !1306
  store i8* %37, i8** %2, align 8, !dbg !1307
  br label %38, !dbg !1307

; <label>:38:                                     ; preds = %36, %8
  %39 = load i8*, i8** %2, align 8, !dbg !1308
  ret i8* %39, !dbg !1308
}

; Function Attrs: nounwind uwtable
define void @fe_messages_init() #0 !dbg !1309 {
  %1 = call %struct._GHashTable* @g_hash_table_new(i32 (i8*)* @g_direct_hash, i32 (i8*, i8*)* @g_direct_equal), !dbg !1310
  store %struct._GHashTable* %1, %struct._GHashTable** @printnicks, align 8, !dbg !1311
  call void @settings_add_bool_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0), i32 1), !dbg !1312
  call void @settings_add_bool_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i32 0, i32 0), i32 0), !dbg !1313
  call void @settings_add_bool_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i32 1), !dbg !1314
  call void @settings_add_bool_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 0), !dbg !1315
  call void @settings_add_bool_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), i32 0), !dbg !1316
  call void @settings_add_bool_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i32 0), !dbg !1317
  call void @settings_add_bool_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i32 1), !dbg !1318
  call void @settings_add_bool_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), i32 1), !dbg !1319
  call void @settings_add_bool_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i32 0, i32 0), i32 0), !dbg !1320
  call void @settings_add_bool_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i32 0), !dbg !1321
  call void @settings_add_bool_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0), i32 0), !dbg !1322
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i32 100, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*, i8*, %struct._NICK_REC*)* @sig_message_public to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1323
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i32 100, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*, i8*)* @sig_message_private to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1324
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i32 100, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*)* @sig_message_own_public to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1325
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i32 100, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*)* @sig_message_own_private to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1326
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i32 100, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*)* @sig_message_join to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1327
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i32 100, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*, i8*)* @sig_message_part to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1328
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i32 100, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*)* @sig_message_quit to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1329
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i32 100, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*, i8*, i8*)* @sig_message_kick to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1330
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i32 100, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*)* @sig_message_nick to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1331
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i32 100, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*)* @sig_message_own_nick to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1332
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i32 100, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*)* @sig_message_invite to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1333
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i32 100, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*, i8*)* @sig_message_topic to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1334
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._CHANNEL_REC*, %struct._NICK_REC*)* @sig_nicklist_new to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1335
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._CHANNEL_REC*, %struct._NICK_REC*)* @sig_nicklist_remove to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1336
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._CHANNEL_REC*, %struct._NICK_REC*)* @sig_nicklist_changed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1337
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.32, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._CHANNEL_REC*, %struct._NICK_REC*)* @sig_nicklist_new to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1338
  call void @signal_add_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._CHANNEL_REC*)* @sig_channel_joined to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1339
  ret void, !dbg !1340
}

declare %struct._GHashTable* @g_hash_table_new(i32 (i8*)*, i32 (i8*, i8*)*) #2

; Function Attrs: nounwind readnone
declare i32 @g_direct_hash(i8*) #3

; Function Attrs: nounwind readnone
declare i32 @g_direct_equal(i8*, i8*) #3

declare void @settings_add_bool_module(i8*, i8*, i8*, i32) #2

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @sig_message_public(%struct._SERVER_REC*, i8*, i8*, i8*, i8*, %struct._NICK_REC*) #0 !dbg !1341 {
  %7 = alloca %struct._SERVER_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct._NICK_REC*, align 8
  %13 = alloca %struct._CHANNEL_REC*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct._HILIGHT_REC*, align 8
  %22 = alloca %struct._TEXT_DEST_REC, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %7, metadata !1344, metadata !851), !dbg !1345
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1346, metadata !851), !dbg !1347
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1348, metadata !851), !dbg !1349
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1350, metadata !851), !dbg !1351
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1352, metadata !851), !dbg !1353
  store %struct._NICK_REC* %5, %struct._NICK_REC** %12, align 8
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %12, metadata !1354, metadata !851), !dbg !1355
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %13, metadata !1356, metadata !851), !dbg !1357
  call void @llvm.dbg.declare(metadata i8** %14, metadata !1358, metadata !851), !dbg !1359
  call void @llvm.dbg.declare(metadata i32* %15, metadata !1360, metadata !851), !dbg !1361
  call void @llvm.dbg.declare(metadata i32* %16, metadata !1362, metadata !851), !dbg !1363
  call void @llvm.dbg.declare(metadata i32* %17, metadata !1364, metadata !851), !dbg !1365
  call void @llvm.dbg.declare(metadata i8** %18, metadata !1366, metadata !851), !dbg !1367
  call void @llvm.dbg.declare(metadata i8** %19, metadata !1368, metadata !851), !dbg !1369
  call void @llvm.dbg.declare(metadata i8** %20, metadata !1370, metadata !851), !dbg !1371
  store i8* null, i8** %20, align 8, !dbg !1371
  call void @llvm.dbg.declare(metadata %struct._HILIGHT_REC** %21, metadata !1372, metadata !851), !dbg !1399
  call void @llvm.dbg.declare(metadata %struct._TEXT_DEST_REC* %22, metadata !1400, metadata !851), !dbg !1414
  %23 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !1415
  %24 = load i8*, i8** %11, align 8, !dbg !1416
  %25 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %23, i8* %24), !dbg !1417
  store %struct._CHANNEL_REC* %25, %struct._CHANNEL_REC** %13, align 8, !dbg !1418
  %26 = load %struct._NICK_REC*, %struct._NICK_REC** %12, align 8, !dbg !1419
  %27 = icmp eq %struct._NICK_REC* %26, null, !dbg !1421
  br i1 %27, label %28, label %35, !dbg !1422

; <label>:28:                                     ; preds = %6
  %29 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %13, align 8, !dbg !1423
  %30 = icmp ne %struct._CHANNEL_REC* %29, null, !dbg !1425
  br i1 %30, label %31, label %35, !dbg !1426

; <label>:31:                                     ; preds = %28
  %32 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %13, align 8, !dbg !1427
  %33 = load i8*, i8** %9, align 8, !dbg !1428
  %34 = call %struct._NICK_REC* @nicklist_find(%struct._CHANNEL_REC* %32, i8* %33), !dbg !1429
  store %struct._NICK_REC* %34, %struct._NICK_REC** %12, align 8, !dbg !1430
  br label %35, !dbg !1431

; <label>:35:                                     ; preds = %31, %28, %6
  %36 = call i32 @settings_get_bool(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0)), !dbg !1432
  %37 = icmp ne i32 %36, 0, !dbg !1432
  br i1 %37, label %39, label %38, !dbg !1433

; <label>:38:                                     ; preds = %35
  br label %58, !dbg !1434

; <label>:39:                                     ; preds = %35
  %40 = call i32 @settings_get_bool(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i32 0, i32 0)), !dbg !1436
  %41 = icmp ne i32 %40, 0, !dbg !1436
  br i1 %41, label %49, label %42, !dbg !1437

; <label>:42:                                     ; preds = %39
  %43 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %13, align 8, !dbg !1438
  %44 = load i8*, i8** %8, align 8, !dbg !1439
  %45 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !1440
  %46 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %45, i32 0, i32 7, !dbg !1441
  %47 = load i8*, i8** %46, align 8, !dbg !1441
  %48 = call i32 @nick_match_msg(%struct._CHANNEL_REC* %43, i8* %44, i8* %47), !dbg !1442
  br label %56, !dbg !1443

; <label>:49:                                     ; preds = %39
  %50 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %13, align 8, !dbg !1444
  %51 = load i8*, i8** %8, align 8, !dbg !1445
  %52 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !1446
  %53 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %52, i32 0, i32 7, !dbg !1447
  %54 = load i8*, i8** %53, align 8, !dbg !1447
  %55 = call i32 @nick_match_msg_everywhere(%struct._CHANNEL_REC* %50, i8* %51, i8* %54), !dbg !1448
  br label %56, !dbg !1449

; <label>:56:                                     ; preds = %49, %42
  %57 = phi i32 [ %48, %42 ], [ %55, %49 ], !dbg !1451
  br label %58, !dbg !1453

; <label>:58:                                     ; preds = %56, %38
  %59 = phi i32 [ 0, %38 ], [ %57, %56 ], !dbg !1454
  store i32 %59, i32* %15, align 4, !dbg !1455
  %60 = load i32, i32* %15, align 4, !dbg !1456
  %61 = icmp ne i32 %60, 0, !dbg !1456
  br i1 %61, label %62, label %63, !dbg !1456

; <label>:62:                                     ; preds = %58
  br label %70, !dbg !1457

; <label>:63:                                     ; preds = %58
  %64 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !1458
  %65 = load i8*, i8** %11, align 8, !dbg !1459
  %66 = load i8*, i8** %9, align 8, !dbg !1460
  %67 = load i8*, i8** %10, align 8, !dbg !1461
  %68 = load i8*, i8** %8, align 8, !dbg !1462
  %69 = call %struct._HILIGHT_REC* @hilight_match_nick(%struct._SERVER_REC* %64, i8* %65, i8* %66, i8* %67, i32 4, i8* %68), !dbg !1463
  br label %70, !dbg !1464

; <label>:70:                                     ; preds = %63, %62
  %71 = phi %struct._HILIGHT_REC* [ null, %62 ], [ %69, %63 ], !dbg !1465
  store %struct._HILIGHT_REC* %71, %struct._HILIGHT_REC** %21, align 8, !dbg !1466
  %72 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %21, align 8, !dbg !1467
  %73 = icmp eq %struct._HILIGHT_REC* %72, null, !dbg !1468
  br i1 %73, label %74, label %75, !dbg !1469

; <label>:74:                                     ; preds = %70
  br label %78, !dbg !1470

; <label>:75:                                     ; preds = %70
  %76 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %21, align 8, !dbg !1471
  %77 = call i8* @hilight_get_color(%struct._HILIGHT_REC* %76), !dbg !1472
  br label %78, !dbg !1473

; <label>:78:                                     ; preds = %75, %74
  %79 = phi i8* [ null, %74 ], [ %77, %75 ], !dbg !1474
  store i8* %79, i8** %19, align 8, !dbg !1475
  %80 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %13, align 8, !dbg !1476
  %81 = icmp eq %struct._CHANNEL_REC* %80, null, !dbg !1477
  br i1 %81, label %88, label %82, !dbg !1478

; <label>:82:                                     ; preds = %78
  %83 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %13, align 8, !dbg !1479
  %84 = bitcast %struct._CHANNEL_REC* %83 to %struct._WI_ITEM_REC*, !dbg !1480
  %85 = call i32 @window_item_is_active(%struct._WI_ITEM_REC* %84), !dbg !1481
  %86 = icmp ne i32 %85, 0, !dbg !1482
  %87 = xor i1 %86, true, !dbg !1482
  br label %88, !dbg !1483

; <label>:88:                                     ; preds = %82, %78
  %89 = phi i1 [ true, %78 ], [ %87, %82 ]
  %90 = zext i1 %89 to i32, !dbg !1484
  store i32 %90, i32* %16, align 4, !dbg !1485
  %91 = load i32, i32* %16, align 4, !dbg !1486
  %92 = icmp ne i32 %91, 0, !dbg !1486
  br i1 %92, label %108, label %93, !dbg !1488

; <label>:93:                                     ; preds = %88
  %94 = call i32 @settings_get_bool(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i32 0, i32 0)), !dbg !1489
  %95 = icmp ne i32 %94, 0, !dbg !1489
  br i1 %95, label %96, label %108, !dbg !1491

; <label>:96:                                     ; preds = %93
  %97 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %13, align 8, !dbg !1492
  %98 = bitcast %struct._CHANNEL_REC* %97 to %struct._WI_ITEM_REC*, !dbg !1493
  %99 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %98, i32 0, i32 3, !dbg !1493
  %100 = load i8*, i8** %99, align 8, !dbg !1493
  %101 = bitcast i8* %100 to %struct._WINDOW_REC*, !dbg !1494
  %102 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %101, i32 0, i32 4, !dbg !1495
  %103 = load %struct._GSList*, %struct._GSList** %102, align 8, !dbg !1495
  %104 = getelementptr inbounds %struct._GSList, %struct._GSList* %103, i32 0, i32 1, !dbg !1496
  %105 = load %struct._GSList*, %struct._GSList** %104, align 8, !dbg !1496
  %106 = icmp ne %struct._GSList* %105, null, !dbg !1497
  br i1 %106, label %107, label %108, !dbg !1498

; <label>:107:                                    ; preds = %96
  store i32 1, i32* %16, align 4, !dbg !1499
  br label %108, !dbg !1500

; <label>:108:                                    ; preds = %107, %96, %93, %88
  store i32 4, i32* %17, align 4, !dbg !1501
  %109 = load i32, i32* %15, align 4, !dbg !1502
  %110 = icmp ne i32 %109, 0, !dbg !1502
  br i1 %110, label %111, label %114, !dbg !1504

; <label>:111:                                    ; preds = %108
  %112 = load i32, i32* %17, align 4, !dbg !1505
  %113 = or i32 %112, 2097152, !dbg !1505
  store i32 %113, i32* %17, align 4, !dbg !1505
  br label %114, !dbg !1506

; <label>:114:                                    ; preds = %111, %108
  %115 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !1507
  %116 = load i8*, i8** %9, align 8, !dbg !1509
  %117 = load i8*, i8** %10, align 8, !dbg !1510
  %118 = load i8*, i8** %11, align 8, !dbg !1511
  %119 = load i8*, i8** %8, align 8, !dbg !1512
  %120 = load i32, i32* %17, align 4, !dbg !1513
  %121 = or i32 %120, 33554432, !dbg !1514
  %122 = call i32 @ignore_check(%struct._SERVER_REC* %115, i8* %116, i8* %117, i8* %118, i8* %119, i32 %121), !dbg !1515
  %123 = icmp ne i32 %122, 0, !dbg !1515
  br i1 %123, label %124, label %127, !dbg !1516

; <label>:124:                                    ; preds = %114
  %125 = load i32, i32* %17, align 4, !dbg !1517
  %126 = or i32 %125, 33554432, !dbg !1517
  store i32 %126, i32* %17, align 4, !dbg !1517
  br label %127, !dbg !1518

; <label>:127:                                    ; preds = %124, %114
  %128 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !1519
  %129 = load i8*, i8** %9, align 8, !dbg !1521
  %130 = load i8*, i8** %10, align 8, !dbg !1522
  %131 = load i8*, i8** %11, align 8, !dbg !1523
  %132 = load i8*, i8** %8, align 8, !dbg !1524
  %133 = load i32, i32* %17, align 4, !dbg !1525
  %134 = or i32 %133, 268435456, !dbg !1526
  %135 = call i32 @ignore_check(%struct._SERVER_REC* %128, i8* %129, i8* %130, i8* %131, i8* %132, i32 %134), !dbg !1527
  %136 = icmp ne i32 %135, 0, !dbg !1527
  br i1 %136, label %137, label %140, !dbg !1528

; <label>:137:                                    ; preds = %127
  %138 = load i32, i32* %17, align 4, !dbg !1529
  %139 = or i32 %138, 268435456, !dbg !1529
  store i32 %139, i32* %17, align 4, !dbg !1529
  br label %140, !dbg !1530

; <label>:140:                                    ; preds = %137, %127
  %141 = call i32 @settings_get_bool(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0)), !dbg !1531
  %142 = icmp ne i32 %141, 0, !dbg !1531
  br i1 %142, label %143, label %148, !dbg !1533

; <label>:143:                                    ; preds = %140
  %144 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %13, align 8, !dbg !1534
  %145 = bitcast %struct._CHANNEL_REC* %144 to %struct._WI_ITEM_REC*, !dbg !1535
  %146 = load i8*, i8** %8, align 8, !dbg !1536
  %147 = call i8* @expand_emphasis(%struct._WI_ITEM_REC* %145, i8* %146), !dbg !1537
  store i8* %147, i8** %20, align 8, !dbg !1538
  store i8* %147, i8** %8, align 8, !dbg !1539
  br label %148, !dbg !1540

; <label>:148:                                    ; preds = %143, %140
  %149 = load %struct._NICK_REC*, %struct._NICK_REC** %12, align 8, !dbg !1541
  %150 = call i8* @channel_get_nickmode_rec(%struct._NICK_REC* %149), !dbg !1542
  store i8* %150, i8** %18, align 8, !dbg !1543
  %151 = load %struct._NICK_REC*, %struct._NICK_REC** %12, align 8, !dbg !1544
  %152 = icmp eq %struct._NICK_REC* %151, null, !dbg !1545
  br i1 %152, label %153, label %155, !dbg !1544

; <label>:153:                                    ; preds = %148
  %154 = load i8*, i8** %9, align 8, !dbg !1546
  br label %160, !dbg !1547

; <label>:155:                                    ; preds = %148
  %156 = load %struct._GHashTable*, %struct._GHashTable** @printnicks, align 8, !dbg !1548
  %157 = load %struct._NICK_REC*, %struct._NICK_REC** %12, align 8, !dbg !1549
  %158 = bitcast %struct._NICK_REC* %157 to i8*, !dbg !1549
  %159 = call i8* @g_hash_table_lookup(%struct._GHashTable* %156, i8* %158), !dbg !1550
  br label %160, !dbg !1551

; <label>:160:                                    ; preds = %155, %153
  %161 = phi i8* [ %154, %153 ], [ %159, %155 ], !dbg !1552
  store i8* %161, i8** %14, align 8, !dbg !1553
  %162 = load i8*, i8** %14, align 8, !dbg !1554
  %163 = icmp eq i8* %162, null, !dbg !1556
  br i1 %163, label %164, label %166, !dbg !1557

; <label>:164:                                    ; preds = %160
  %165 = load i8*, i8** %9, align 8, !dbg !1558
  store i8* %165, i8** %14, align 8, !dbg !1559
  br label %166, !dbg !1560

; <label>:166:                                    ; preds = %164, %160
  %167 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !1561
  %168 = bitcast %struct._SERVER_REC* %167 to i8*, !dbg !1561
  %169 = load i8*, i8** %11, align 8, !dbg !1562
  %170 = load i32, i32* %17, align 4, !dbg !1563
  call void @format_create_dest(%struct._TEXT_DEST_REC* %22, i8* %168, i8* %169, i32 %170, %struct._WINDOW_REC* null), !dbg !1564
  %171 = load i8*, i8** %10, align 8, !dbg !1565
  %172 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %22, i32 0, i32 5, !dbg !1566
  store i8* %171, i8** %172, align 8, !dbg !1567
  %173 = load i8*, i8** %9, align 8, !dbg !1568
  %174 = getelementptr inbounds %struct._TEXT_DEST_REC, %struct._TEXT_DEST_REC* %22, i32 0, i32 4, !dbg !1569
  store i8* %173, i8** %174, align 8, !dbg !1570
  %175 = load i8*, i8** %19, align 8, !dbg !1571
  %176 = icmp ne i8* %175, null, !dbg !1573
  br i1 %176, label %177, label %193, !dbg !1574

; <label>:177:                                    ; preds = %166
  %178 = load %struct._HILIGHT_REC*, %struct._HILIGHT_REC** %21, align 8, !dbg !1575
  call void @hilight_update_text_dest(%struct._TEXT_DEST_REC* %22, %struct._HILIGHT_REC* %178), !dbg !1577
  %179 = load i32, i32* %16, align 4, !dbg !1578
  %180 = icmp ne i32 %179, 0, !dbg !1578
  br i1 %180, label %186, label %181, !dbg !1580

; <label>:181:                                    ; preds = %177
  %182 = load i8*, i8** %19, align 8, !dbg !1581
  %183 = load i8*, i8** %14, align 8, !dbg !1582
  %184 = load i8*, i8** %8, align 8, !dbg !1583
  %185 = load i8*, i8** %18, align 8, !dbg !1584
  call void (i8*, %struct._TEXT_DEST_REC*, i32, ...) @printformat_module_dest(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), %struct._TEXT_DEST_REC* %22, i32 99, i8* %182, i8* %183, i8* %184, i8* %185), !dbg !1585
  br label %192, !dbg !1585

; <label>:186:                                    ; preds = %177
  %187 = load i8*, i8** %19, align 8, !dbg !1586
  %188 = load i8*, i8** %14, align 8, !dbg !1587
  %189 = load i8*, i8** %11, align 8, !dbg !1588
  %190 = load i8*, i8** %8, align 8, !dbg !1589
  %191 = load i8*, i8** %18, align 8, !dbg !1590
  call void (i8*, %struct._TEXT_DEST_REC*, i32, ...) @printformat_module_dest(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), %struct._TEXT_DEST_REC* %22, i32 100, i8* %187, i8* %188, i8* %189, i8* %190, i8* %191), !dbg !1591
  br label %192

; <label>:192:                                    ; preds = %186, %181
  br label %212, !dbg !1592

; <label>:193:                                    ; preds = %166
  %194 = load i32, i32* %16, align 4, !dbg !1593
  %195 = icmp ne i32 %194, 0, !dbg !1593
  br i1 %195, label %203, label %196, !dbg !1596

; <label>:196:                                    ; preds = %193
  %197 = load i32, i32* %15, align 4, !dbg !1597
  %198 = icmp ne i32 %197, 0, !dbg !1597
  %199 = select i1 %198, i32 97, i32 101, !dbg !1597
  %200 = load i8*, i8** %14, align 8, !dbg !1598
  %201 = load i8*, i8** %8, align 8, !dbg !1599
  %202 = load i8*, i8** %18, align 8, !dbg !1600
  call void (i8*, %struct._TEXT_DEST_REC*, i32, ...) @printformat_module_dest(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), %struct._TEXT_DEST_REC* %22, i32 %199, i8* %200, i8* %201, i8* %202), !dbg !1601
  br label %211, !dbg !1601

; <label>:203:                                    ; preds = %193
  %204 = load i32, i32* %15, align 4, !dbg !1602
  %205 = icmp ne i32 %204, 0, !dbg !1602
  %206 = select i1 %205, i32 98, i32 102, !dbg !1602
  %207 = load i8*, i8** %14, align 8, !dbg !1603
  %208 = load i8*, i8** %11, align 8, !dbg !1604
  %209 = load i8*, i8** %8, align 8, !dbg !1605
  %210 = load i8*, i8** %18, align 8, !dbg !1606
  call void (i8*, %struct._TEXT_DEST_REC*, i32, ...) @printformat_module_dest(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), %struct._TEXT_DEST_REC* %22, i32 %206, i8* %207, i8* %208, i8* %209, i8* %210), !dbg !1607
  br label %211

; <label>:211:                                    ; preds = %203, %196
  br label %212

; <label>:212:                                    ; preds = %211, %192
  %213 = load i8*, i8** %18, align 8, !dbg !1608
  call void @g_free(i8* %213), !dbg !1609
  %214 = load i8*, i8** %20, align 8, !dbg !1610
  call void @g_free(i8* %214), !dbg !1611
  %215 = load i8*, i8** %19, align 8, !dbg !1612
  call void @g_free(i8* %215), !dbg !1613
  ret void, !dbg !1614
}

; Function Attrs: nounwind uwtable
define internal void @sig_message_private(%struct._SERVER_REC*, i8*, i8*, i8*, i8*) #0 !dbg !1615 {
  %6 = alloca %struct._SERVER_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct._QUERY_REC*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %6, metadata !1618, metadata !851), !dbg !1619
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1620, metadata !851), !dbg !1621
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1622, metadata !851), !dbg !1623
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1624, metadata !851), !dbg !1625
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1626, metadata !851), !dbg !1627
  call void @llvm.dbg.declare(metadata %struct._QUERY_REC** %11, metadata !1628, metadata !851), !dbg !1629
  call void @llvm.dbg.declare(metadata i8** %12, metadata !1630, metadata !851), !dbg !1631
  store i8* null, i8** %12, align 8, !dbg !1631
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1632, metadata !851), !dbg !1633
  store i32 2, i32* %13, align 4, !dbg !1633
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1634, metadata !851), !dbg !1635
  %15 = load i8*, i8** %8, align 8, !dbg !1636
  %16 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !1637
  %17 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %16, i32 0, i32 7, !dbg !1638
  %18 = load i8*, i8** %17, align 8, !dbg !1638
  %19 = call i32 @g_strcmp0(i8* %15, i8* %18), !dbg !1639
  %20 = icmp ne i32 %19, 0, !dbg !1640
  %21 = xor i1 %20, true, !dbg !1640
  %22 = zext i1 %21 to i32, !dbg !1640
  store i32 %22, i32* %14, align 4, !dbg !1635
  %23 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !1641
  %24 = load i32, i32* %14, align 4, !dbg !1642
  %25 = icmp ne i32 %24, 0, !dbg !1642
  br i1 %25, label %26, label %28, !dbg !1642

; <label>:26:                                     ; preds = %5
  %27 = load i8*, i8** %10, align 8, !dbg !1643
  br label %30, !dbg !1645

; <label>:28:                                     ; preds = %5
  %29 = load i8*, i8** %8, align 8, !dbg !1646
  br label %30, !dbg !1648

; <label>:30:                                     ; preds = %28, %26
  %31 = phi i8* [ %27, %26 ], [ %29, %28 ], !dbg !1649
  %32 = call %struct._QUERY_REC* @query_find(%struct._SERVER_REC* %23, i8* %31), !dbg !1651
  store %struct._QUERY_REC* %32, %struct._QUERY_REC** %11, align 8, !dbg !1652
  %33 = call i32 @settings_get_bool(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0)), !dbg !1653
  %34 = icmp ne i32 %33, 0, !dbg !1653
  br i1 %34, label %35, label %40, !dbg !1655

; <label>:35:                                     ; preds = %30
  %36 = load %struct._QUERY_REC*, %struct._QUERY_REC** %11, align 8, !dbg !1656
  %37 = bitcast %struct._QUERY_REC* %36 to %struct._WI_ITEM_REC*, !dbg !1657
  %38 = load i8*, i8** %7, align 8, !dbg !1658
  %39 = call i8* @expand_emphasis(%struct._WI_ITEM_REC* %37, i8* %38), !dbg !1659
  store i8* %39, i8** %12, align 8, !dbg !1660
  store i8* %39, i8** %7, align 8, !dbg !1661
  br label %40, !dbg !1662

; <label>:40:                                     ; preds = %35, %30
  %41 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !1663
  %42 = load i8*, i8** %8, align 8, !dbg !1665
  %43 = load i8*, i8** %9, align 8, !dbg !1666
  %44 = load i8*, i8** %7, align 8, !dbg !1667
  %45 = load i32, i32* %13, align 4, !dbg !1668
  %46 = or i32 %45, 33554432, !dbg !1669
  %47 = call i32 @ignore_check(%struct._SERVER_REC* %41, i8* %42, i8* %43, i8* null, i8* %44, i32 %46), !dbg !1670
  %48 = icmp ne i32 %47, 0, !dbg !1670
  br i1 %48, label %49, label %52, !dbg !1671

; <label>:49:                                     ; preds = %40
  %50 = load i32, i32* %13, align 4, !dbg !1672
  %51 = or i32 %50, 33554432, !dbg !1672
  store i32 %51, i32* %13, align 4, !dbg !1672
  br label %52, !dbg !1673

; <label>:52:                                     ; preds = %49, %40
  %53 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !1674
  %54 = load i8*, i8** %8, align 8, !dbg !1676
  %55 = load i8*, i8** %9, align 8, !dbg !1677
  %56 = load i8*, i8** %7, align 8, !dbg !1678
  %57 = load i32, i32* %13, align 4, !dbg !1679
  %58 = or i32 %57, 268435456, !dbg !1680
  %59 = call i32 @ignore_check(%struct._SERVER_REC* %53, i8* %54, i8* %55, i8* null, i8* %56, i32 %58), !dbg !1681
  %60 = icmp ne i32 %59, 0, !dbg !1681
  br i1 %60, label %61, label %64, !dbg !1682

; <label>:61:                                     ; preds = %52
  %62 = load i32, i32* %13, align 4, !dbg !1683
  %63 = or i32 %62, 268435456, !dbg !1683
  store i32 %63, i32* %13, align 4, !dbg !1683
  br label %64, !dbg !1684

; <label>:64:                                     ; preds = %61, %52
  %65 = load i32, i32* %14, align 4, !dbg !1685
  %66 = icmp ne i32 %65, 0, !dbg !1685
  br i1 %66, label %67, label %80, !dbg !1687

; <label>:67:                                     ; preds = %64
  %68 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !1688
  %69 = bitcast %struct._SERVER_REC* %68 to i8*, !dbg !1688
  %70 = load i8*, i8** %10, align 8, !dbg !1690
  %71 = load i32, i32* %13, align 4, !dbg !1691
  %72 = load %struct._QUERY_REC*, %struct._QUERY_REC** %11, align 8, !dbg !1692
  %73 = icmp eq %struct._QUERY_REC* %72, null, !dbg !1693
  %74 = select i1 %73, i32 95, i32 96, !dbg !1692
  %75 = load i8*, i8** %10, align 8, !dbg !1694
  %76 = load i8*, i8** %7, align 8, !dbg !1695
  %77 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !1696
  %78 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %77, i32 0, i32 7, !dbg !1697
  %79 = load i8*, i8** %78, align 8, !dbg !1697
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* %69, i8* %70, i32 %71, i32 %74, i8* %75, i8* %76, i8* %79), !dbg !1698
  br label %91, !dbg !1699

; <label>:80:                                     ; preds = %64
  %81 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !1700
  %82 = bitcast %struct._SERVER_REC* %81 to i8*, !dbg !1700
  %83 = load i8*, i8** %8, align 8, !dbg !1702
  %84 = load i32, i32* %13, align 4, !dbg !1703
  %85 = load %struct._QUERY_REC*, %struct._QUERY_REC** %11, align 8, !dbg !1704
  %86 = icmp eq %struct._QUERY_REC* %85, null, !dbg !1705
  %87 = select i1 %86, i32 103, i32 104, !dbg !1704
  %88 = load i8*, i8** %8, align 8, !dbg !1706
  %89 = load i8*, i8** %9, align 8, !dbg !1707
  %90 = load i8*, i8** %7, align 8, !dbg !1708
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* %82, i8* %83, i32 %84, i32 %87, i8* %88, i8* %89, i8* %90), !dbg !1709
  br label %91

; <label>:91:                                     ; preds = %80, %67
  %92 = load i8*, i8** %12, align 8, !dbg !1710
  call void @g_free(i8* %92), !dbg !1711
  ret void, !dbg !1712
}

; Function Attrs: nounwind uwtable
define internal void @sig_message_own_public(%struct._SERVER_REC*, i8*, i8*) #0 !dbg !1713 {
  %4 = alloca %struct._SERVER_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._WINDOW_REC*, align 8
  %8 = alloca %struct._CHANNEL_REC*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !1716, metadata !851), !dbg !1717
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1718, metadata !851), !dbg !1719
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1720, metadata !851), !dbg !1721
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %7, metadata !1722, metadata !851), !dbg !1723
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %8, metadata !1724, metadata !851), !dbg !1725
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1726, metadata !851), !dbg !1727
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1728, metadata !851), !dbg !1729
  store i8* null, i8** %10, align 8, !dbg !1729
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1730, metadata !851), !dbg !1731
  %12 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1732
  %13 = load i8*, i8** %6, align 8, !dbg !1733
  %14 = call %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC* %12, i8* %13), !dbg !1734
  store %struct._CHANNEL_REC* %14, %struct._CHANNEL_REC** %8, align 8, !dbg !1735
  %15 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %8, align 8, !dbg !1736
  %16 = icmp ne %struct._CHANNEL_REC* %15, null, !dbg !1738
  br i1 %16, label %17, label %21, !dbg !1739

; <label>:17:                                     ; preds = %3
  %18 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %8, align 8, !dbg !1740
  %19 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %18, i32 0, i32 5, !dbg !1741
  %20 = load i8*, i8** %19, align 8, !dbg !1741
  store i8* %20, i8** %6, align 8, !dbg !1742
  br label %21, !dbg !1743

; <label>:21:                                     ; preds = %17, %3
  %22 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %8, align 8, !dbg !1744
  %23 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1745
  %24 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %23, i32 0, i32 7, !dbg !1746
  %25 = load i8*, i8** %24, align 8, !dbg !1746
  %26 = call i8* @channel_get_nickmode(%struct._CHANNEL_REC* %22, i8* %25), !dbg !1747
  store i8* %26, i8** %9, align 8, !dbg !1748
  %27 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %8, align 8, !dbg !1749
  %28 = icmp eq %struct._CHANNEL_REC* %27, null, !dbg !1750
  br i1 %28, label %29, label %30, !dbg !1749

; <label>:29:                                     ; preds = %21
  br label %36, !dbg !1751

; <label>:30:                                     ; preds = %21
  %31 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %8, align 8, !dbg !1753
  %32 = bitcast %struct._CHANNEL_REC* %31 to %struct._WI_ITEM_REC*, !dbg !1754
  %33 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %32, i32 0, i32 3, !dbg !1754
  %34 = load i8*, i8** %33, align 8, !dbg !1754
  %35 = bitcast i8* %34 to %struct._WINDOW_REC*, !dbg !1755
  br label %36, !dbg !1756

; <label>:36:                                     ; preds = %30, %29
  %37 = phi %struct._WINDOW_REC* [ null, %29 ], [ %35, %30 ], !dbg !1758
  store %struct._WINDOW_REC* %37, %struct._WINDOW_REC** %7, align 8, !dbg !1760
  %38 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %7, align 8, !dbg !1761
  %39 = icmp eq %struct._WINDOW_REC* %38, null, !dbg !1762
  br i1 %39, label %47, label %40, !dbg !1763

; <label>:40:                                     ; preds = %36
  %41 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %7, align 8, !dbg !1764
  %42 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %41, i32 0, i32 5, !dbg !1765
  %43 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %42, align 8, !dbg !1765
  %44 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %8, align 8, !dbg !1766
  %45 = bitcast %struct._CHANNEL_REC* %44 to %struct._WI_ITEM_REC*, !dbg !1767
  %46 = icmp ne %struct._WI_ITEM_REC* %43, %45, !dbg !1768
  br label %47, !dbg !1769

; <label>:47:                                     ; preds = %40, %36
  %48 = phi i1 [ true, %36 ], [ %46, %40 ]
  %49 = zext i1 %48 to i32, !dbg !1770
  store i32 %49, i32* %11, align 4, !dbg !1771
  %50 = load i32, i32* %11, align 4, !dbg !1772
  %51 = icmp ne i32 %50, 0, !dbg !1772
  br i1 %51, label %65, label %52, !dbg !1774

; <label>:52:                                     ; preds = %47
  %53 = call i32 @settings_get_bool(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i32 0, i32 0)), !dbg !1775
  %54 = icmp ne i32 %53, 0, !dbg !1775
  br i1 %54, label %55, label %65, !dbg !1777

; <label>:55:                                     ; preds = %52
  %56 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %7, align 8, !dbg !1778
  %57 = icmp ne %struct._WINDOW_REC* %56, null, !dbg !1779
  br i1 %57, label %58, label %65, !dbg !1780

; <label>:58:                                     ; preds = %55
  %59 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %7, align 8, !dbg !1781
  %60 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %59, i32 0, i32 4, !dbg !1782
  %61 = load %struct._GSList*, %struct._GSList** %60, align 8, !dbg !1782
  %62 = call i32 @g_slist_length(%struct._GSList* %61), !dbg !1783
  %63 = icmp ugt i32 %62, 1, !dbg !1784
  br i1 %63, label %64, label %65, !dbg !1785

; <label>:64:                                     ; preds = %58
  store i32 1, i32* %11, align 4, !dbg !1786
  br label %65, !dbg !1787

; <label>:65:                                     ; preds = %64, %58, %55, %52, %47
  %66 = call i32 @settings_get_bool(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0)), !dbg !1788
  %67 = icmp ne i32 %66, 0, !dbg !1788
  br i1 %67, label %68, label %73, !dbg !1790

; <label>:68:                                     ; preds = %65
  %69 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %8, align 8, !dbg !1791
  %70 = bitcast %struct._CHANNEL_REC* %69 to %struct._WI_ITEM_REC*, !dbg !1792
  %71 = load i8*, i8** %5, align 8, !dbg !1793
  %72 = call i8* @expand_emphasis(%struct._WI_ITEM_REC* %70, i8* %71), !dbg !1794
  store i8* %72, i8** %10, align 8, !dbg !1795
  store i8* %72, i8** %5, align 8, !dbg !1796
  br label %73, !dbg !1797

; <label>:73:                                     ; preds = %68, %65
  %74 = load i32, i32* %11, align 4, !dbg !1798
  %75 = icmp ne i32 %74, 0, !dbg !1798
  br i1 %75, label %85, label %76, !dbg !1800

; <label>:76:                                     ; preds = %73
  %77 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1801
  %78 = bitcast %struct._SERVER_REC* %77 to i8*, !dbg !1801
  %79 = load i8*, i8** %6, align 8, !dbg !1803
  %80 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1804
  %81 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %80, i32 0, i32 7, !dbg !1805
  %82 = load i8*, i8** %81, align 8, !dbg !1805
  %83 = load i8*, i8** %5, align 8, !dbg !1806
  %84 = load i8*, i8** %9, align 8, !dbg !1807
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* %78, i8* %79, i32 50331652, i32 93, i8* %82, i8* %83, i8* %84), !dbg !1808
  br label %95, !dbg !1809

; <label>:85:                                     ; preds = %73
  %86 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1810
  %87 = bitcast %struct._SERVER_REC* %86 to i8*, !dbg !1810
  %88 = load i8*, i8** %6, align 8, !dbg !1812
  %89 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1813
  %90 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %89, i32 0, i32 7, !dbg !1814
  %91 = load i8*, i8** %90, align 8, !dbg !1814
  %92 = load i8*, i8** %6, align 8, !dbg !1815
  %93 = load i8*, i8** %5, align 8, !dbg !1816
  %94 = load i8*, i8** %9, align 8, !dbg !1817
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* %87, i8* %88, i32 50331652, i32 94, i8* %91, i8* %92, i8* %93, i8* %94), !dbg !1818
  br label %95

; <label>:95:                                     ; preds = %85, %76
  %96 = load i8*, i8** %9, align 8, !dbg !1819
  call void @g_free(i8* %96), !dbg !1820
  %97 = load i8*, i8** %10, align 8, !dbg !1821
  call void @g_free(i8* %97), !dbg !1822
  ret void, !dbg !1823
}

; Function Attrs: nounwind uwtable
define internal void @sig_message_own_private(%struct._SERVER_REC*, i8*, i8*, i8*) #0 !dbg !1824 {
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._QUERY_REC*, align 8
  %10 = alloca i8*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !1827, metadata !851), !dbg !1828
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1829, metadata !851), !dbg !1830
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1831, metadata !851), !dbg !1832
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1833, metadata !851), !dbg !1834
  call void @llvm.dbg.declare(metadata %struct._QUERY_REC** %9, metadata !1835, metadata !851), !dbg !1836
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1837, metadata !851), !dbg !1838
  store i8* null, i8** %10, align 8, !dbg !1838
  br label %11, !dbg !1839, !llvm.loop !1840

; <label>:11:                                     ; preds = %4
  %12 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1841
  %13 = icmp ne %struct._SERVER_REC* %12, null, !dbg !1845
  br i1 %13, label %14, label %15, !dbg !1841

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !1846

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.sig_message_own_private, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i32 0, i32 0)), !dbg !1849
  br label %69, !dbg !1852

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !1853

; <label>:17:                                     ; preds = %16
  br label %18, !dbg !1855, !llvm.loop !1856

; <label>:18:                                     ; preds = %17
  %19 = load i8*, i8** %6, align 8, !dbg !1857
  %20 = icmp ne i8* %19, null, !dbg !1861
  br i1 %20, label %21, label %22, !dbg !1857

; <label>:21:                                     ; preds = %18
  br label %23, !dbg !1862

; <label>:22:                                     ; preds = %18
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.sig_message_own_private, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i32 0, i32 0)), !dbg !1865
  br label %69, !dbg !1868

; <label>:23:                                     ; preds = %21
  br label %24, !dbg !1869

; <label>:24:                                     ; preds = %23
  %25 = load i8*, i8** %7, align 8, !dbg !1871
  %26 = icmp eq i8* %25, null, !dbg !1873
  br i1 %26, label %27, label %45, !dbg !1874

; <label>:27:                                     ; preds = %24
  br label %28, !dbg !1875, !llvm.loop !1877

; <label>:28:                                     ; preds = %27
  %29 = load i8*, i8** %8, align 8, !dbg !1878
  %30 = call i32 @g_strcmp0(i8* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0)), !dbg !1882
  %31 = icmp eq i32 %30, 0, !dbg !1883
  br i1 %31, label %36, label %32, !dbg !1884

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %8, align 8, !dbg !1885
  %34 = call i32 @g_strcmp0(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i32 0, i32 0)), !dbg !1887
  %35 = icmp eq i32 %34, 0, !dbg !1888
  br i1 %35, label %36, label %37, !dbg !1889

; <label>:36:                                     ; preds = %32, %28
  br label %38, !dbg !1890

; <label>:37:                                     ; preds = %32
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.sig_message_own_private, i32 0, i32 0), i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.40, i32 0, i32 0)), !dbg !1893
  br label %69, !dbg !1896

; <label>:38:                                     ; preds = %36
  br label %39, !dbg !1897

; <label>:39:                                     ; preds = %38
  %40 = load i8*, i8** %8, align 8, !dbg !1899
  %41 = load i8, i8* %40, align 1, !dbg !1900
  %42 = sext i8 %41 to i32, !dbg !1900
  %43 = icmp eq i32 %42, 44, !dbg !1901
  %44 = select i1 %43, i32 105, i32 106, !dbg !1900
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* null, i32 262144, i32 %44), !dbg !1902
  call void @signal_stop(), !dbg !1903
  br label %69, !dbg !1904

; <label>:45:                                     ; preds = %24
  %46 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1905
  %47 = load i8*, i8** %7, align 8, !dbg !1906
  %48 = call %struct._QUERY_REC* @privmsg_get_query(%struct._SERVER_REC* %46, i8* %47, i32 1, i32 2), !dbg !1907
  store %struct._QUERY_REC* %48, %struct._QUERY_REC** %9, align 8, !dbg !1908
  %49 = call i32 @settings_get_bool(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0)), !dbg !1909
  %50 = icmp ne i32 %49, 0, !dbg !1909
  br i1 %50, label %51, label %56, !dbg !1911

; <label>:51:                                     ; preds = %45
  %52 = load %struct._QUERY_REC*, %struct._QUERY_REC** %9, align 8, !dbg !1912
  %53 = bitcast %struct._QUERY_REC* %52 to %struct._WI_ITEM_REC*, !dbg !1913
  %54 = load i8*, i8** %6, align 8, !dbg !1914
  %55 = call i8* @expand_emphasis(%struct._WI_ITEM_REC* %53, i8* %54), !dbg !1915
  store i8* %55, i8** %10, align 8, !dbg !1916
  store i8* %55, i8** %6, align 8, !dbg !1917
  br label %56, !dbg !1918

; <label>:56:                                     ; preds = %51, %45
  %57 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1919
  %58 = bitcast %struct._SERVER_REC* %57 to i8*, !dbg !1919
  %59 = load i8*, i8** %7, align 8, !dbg !1920
  %60 = load %struct._QUERY_REC*, %struct._QUERY_REC** %9, align 8, !dbg !1921
  %61 = icmp eq %struct._QUERY_REC* %60, null, !dbg !1922
  %62 = select i1 %61, i32 95, i32 96, !dbg !1921
  %63 = load i8*, i8** %7, align 8, !dbg !1923
  %64 = load i8*, i8** %6, align 8, !dbg !1924
  %65 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1925
  %66 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %65, i32 0, i32 7, !dbg !1926
  %67 = load i8*, i8** %66, align 8, !dbg !1926
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* %58, i8* %59, i32 50331650, i32 %62, i8* %63, i8* %64, i8* %67), !dbg !1927
  %68 = load i8*, i8** %10, align 8, !dbg !1928
  call void @g_free(i8* %68), !dbg !1929
  br label %69, !dbg !1930

; <label>:69:                                     ; preds = %56, %39, %37, %22, %15
  ret void, !dbg !1931
}

; Function Attrs: nounwind uwtable
define internal void @sig_message_join(%struct._SERVER_REC*, i8*, i8*, i8*) #0 !dbg !1933 {
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !1934, metadata !851), !dbg !1935
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1936, metadata !851), !dbg !1937
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1938, metadata !851), !dbg !1939
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1940, metadata !851), !dbg !1941
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1942, metadata !851), !dbg !1943
  store i32 128, i32* %9, align 4, !dbg !1943
  %10 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1944
  %11 = load i8*, i8** %7, align 8, !dbg !1946
  %12 = load i8*, i8** %8, align 8, !dbg !1947
  %13 = load i8*, i8** %6, align 8, !dbg !1948
  %14 = load i32, i32* %9, align 4, !dbg !1949
  %15 = or i32 %14, 33554432, !dbg !1950
  %16 = call i32 @ignore_check(%struct._SERVER_REC* %10, i8* %11, i8* %12, i8* %13, i8* null, i32 %15), !dbg !1951
  %17 = icmp ne i32 %16, 0, !dbg !1951
  br i1 %17, label %18, label %21, !dbg !1952

; <label>:18:                                     ; preds = %4
  %19 = load i32, i32* %9, align 4, !dbg !1953
  %20 = or i32 %19, 33554432, !dbg !1953
  store i32 %20, i32* %9, align 4, !dbg !1953
  br label %21, !dbg !1954

; <label>:21:                                     ; preds = %18, %4
  %22 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1955
  %23 = load i8*, i8** %7, align 8, !dbg !1957
  %24 = load i8*, i8** %8, align 8, !dbg !1958
  %25 = load i8*, i8** %6, align 8, !dbg !1959
  %26 = load i32, i32* %9, align 4, !dbg !1960
  %27 = or i32 %26, 268435456, !dbg !1961
  %28 = call i32 @ignore_check(%struct._SERVER_REC* %22, i8* %23, i8* %24, i8* %25, i8* null, i32 %27), !dbg !1962
  %29 = icmp ne i32 %28, 0, !dbg !1962
  br i1 %29, label %30, label %33, !dbg !1963

; <label>:30:                                     ; preds = %21
  %31 = load i32, i32* %9, align 4, !dbg !1964
  %32 = or i32 %31, 268435456, !dbg !1964
  store i32 %32, i32* %9, align 4, !dbg !1964
  br label %33, !dbg !1965

; <label>:33:                                     ; preds = %30, %21
  %34 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !1966
  %35 = bitcast %struct._SERVER_REC* %34 to i8*, !dbg !1966
  %36 = load i8*, i8** %6, align 8, !dbg !1967
  %37 = load i32, i32* %9, align 4, !dbg !1968
  %38 = load i8*, i8** %7, align 8, !dbg !1969
  %39 = load i8*, i8** %8, align 8, !dbg !1970
  %40 = load i8*, i8** %6, align 8, !dbg !1971
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* %35, i8* %36, i32 %37, i32 63, i8* %38, i8* %39, i8* %40), !dbg !1972
  ret void, !dbg !1973
}

; Function Attrs: nounwind uwtable
define internal void @sig_message_part(%struct._SERVER_REC*, i8*, i8*, i8*, i8*) #0 !dbg !1974 {
  %6 = alloca %struct._SERVER_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %6, metadata !1975, metadata !851), !dbg !1976
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1977, metadata !851), !dbg !1978
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1979, metadata !851), !dbg !1980
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1981, metadata !851), !dbg !1982
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1983, metadata !851), !dbg !1984
  call void @llvm.dbg.declare(metadata i32* %11, metadata !1985, metadata !851), !dbg !1986
  store i32 256, i32* %11, align 4, !dbg !1986
  %12 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !1987
  %13 = load i8*, i8** %8, align 8, !dbg !1989
  %14 = load i8*, i8** %9, align 8, !dbg !1990
  %15 = load i8*, i8** %7, align 8, !dbg !1991
  %16 = load i32, i32* %11, align 4, !dbg !1992
  %17 = or i32 %16, 33554432, !dbg !1993
  %18 = call i32 @ignore_check(%struct._SERVER_REC* %12, i8* %13, i8* %14, i8* %15, i8* null, i32 %17), !dbg !1994
  %19 = icmp ne i32 %18, 0, !dbg !1994
  br i1 %19, label %20, label %23, !dbg !1995

; <label>:20:                                     ; preds = %5
  %21 = load i32, i32* %11, align 4, !dbg !1996
  %22 = or i32 %21, 33554432, !dbg !1996
  store i32 %22, i32* %11, align 4, !dbg !1996
  br label %23, !dbg !1997

; <label>:23:                                     ; preds = %20, %5
  %24 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !1998
  %25 = load i8*, i8** %8, align 8, !dbg !2000
  %26 = load i8*, i8** %9, align 8, !dbg !2001
  %27 = load i8*, i8** %7, align 8, !dbg !2002
  %28 = load i32, i32* %11, align 4, !dbg !2003
  %29 = or i32 %28, 268435456, !dbg !2004
  %30 = call i32 @ignore_check(%struct._SERVER_REC* %24, i8* %25, i8* %26, i8* %27, i8* null, i32 %29), !dbg !2005
  %31 = icmp ne i32 %30, 0, !dbg !2005
  br i1 %31, label %32, label %35, !dbg !2006

; <label>:32:                                     ; preds = %23
  %33 = load i32, i32* %11, align 4, !dbg !2007
  %34 = or i32 %33, 268435456, !dbg !2007
  store i32 %34, i32* %11, align 4, !dbg !2007
  br label %35, !dbg !2008

; <label>:35:                                     ; preds = %32, %23
  %36 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !2009
  %37 = bitcast %struct._SERVER_REC* %36 to i8*, !dbg !2009
  %38 = load i8*, i8** %7, align 8, !dbg !2010
  %39 = load i32, i32* %11, align 4, !dbg !2011
  %40 = load i8*, i8** %8, align 8, !dbg !2012
  %41 = load i8*, i8** %9, align 8, !dbg !2013
  %42 = load i8*, i8** %7, align 8, !dbg !2014
  %43 = load i8*, i8** %10, align 8, !dbg !2015
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* %37, i8* %38, i32 %39, i32 64, i8* %40, i8* %41, i8* %42, i8* %43), !dbg !2016
  ret void, !dbg !2017
}

; Function Attrs: nounwind uwtable
define internal void @sig_message_quit(%struct._SERVER_REC*, i8*, i8*, i8*) #0 !dbg !2018 {
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._WINDOW_REC*, align 8
  %10 = alloca %struct._GString*, align 8
  %11 = alloca %struct._GSList*, align 8
  %12 = alloca %struct._GSList*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct._CHANNEL_REC*, align 8
  %18 = alloca %struct._QUERY_REC*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !2019, metadata !851), !dbg !2020
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2021, metadata !851), !dbg !2022
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2023, metadata !851), !dbg !2024
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2025, metadata !851), !dbg !2026
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %9, metadata !2027, metadata !851), !dbg !2028
  call void @llvm.dbg.declare(metadata %struct._GString** %10, metadata !2029, metadata !851), !dbg !2030
  call void @llvm.dbg.declare(metadata %struct._GSList** %11, metadata !2031, metadata !851), !dbg !2032
  call void @llvm.dbg.declare(metadata %struct._GSList** %12, metadata !2033, metadata !851), !dbg !2034
  call void @llvm.dbg.declare(metadata i8** %13, metadata !2035, metadata !851), !dbg !2036
  call void @llvm.dbg.declare(metadata i32* %14, metadata !2037, metadata !851), !dbg !2038
  call void @llvm.dbg.declare(metadata i32* %15, metadata !2039, metadata !851), !dbg !2040
  call void @llvm.dbg.declare(metadata i32* %16, metadata !2041, metadata !851), !dbg !2042
  store i32 512, i32* %16, align 4, !dbg !2042
  %19 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !2043
  %20 = load i8*, i8** %6, align 8, !dbg !2045
  %21 = load i8*, i8** %7, align 8, !dbg !2046
  %22 = load i8*, i8** %8, align 8, !dbg !2047
  %23 = call i32 @ignore_check(%struct._SERVER_REC* %19, i8* %20, i8* %21, i8* null, i8* %22, i32 512), !dbg !2048
  %24 = icmp ne i32 %23, 0, !dbg !2048
  br i1 %24, label %25, label %26, !dbg !2049

; <label>:25:                                     ; preds = %4
  br label %219, !dbg !2050

; <label>:26:                                     ; preds = %4
  %27 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !2051
  %28 = load i8*, i8** %6, align 8, !dbg !2053
  %29 = load i8*, i8** %7, align 8, !dbg !2054
  %30 = load i8*, i8** %8, align 8, !dbg !2055
  %31 = load i32, i32* %16, align 4, !dbg !2056
  %32 = or i32 %31, 33554432, !dbg !2057
  %33 = call i32 @ignore_check(%struct._SERVER_REC* %27, i8* %28, i8* %29, i8* null, i8* %30, i32 %32), !dbg !2058
  %34 = icmp ne i32 %33, 0, !dbg !2058
  br i1 %34, label %35, label %38, !dbg !2059

; <label>:35:                                     ; preds = %26
  %36 = load i32, i32* %16, align 4, !dbg !2060
  %37 = or i32 %36, 33554432, !dbg !2060
  store i32 %37, i32* %16, align 4, !dbg !2060
  br label %38, !dbg !2061

; <label>:38:                                     ; preds = %35, %26
  %39 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !2062
  %40 = load i8*, i8** %6, align 8, !dbg !2064
  %41 = load i8*, i8** %7, align 8, !dbg !2065
  %42 = load i8*, i8** %8, align 8, !dbg !2066
  %43 = load i32, i32* %16, align 4, !dbg !2067
  %44 = or i32 %43, 268435456, !dbg !2068
  %45 = call i32 @ignore_check(%struct._SERVER_REC* %39, i8* %40, i8* %41, i8* null, i8* %42, i32 %44), !dbg !2069
  %46 = icmp ne i32 %45, 0, !dbg !2069
  br i1 %46, label %47, label %50, !dbg !2070

; <label>:47:                                     ; preds = %38
  %48 = load i32, i32* %16, align 4, !dbg !2071
  %49 = or i32 %48, 268435456, !dbg !2071
  store i32 %49, i32* %16, align 4, !dbg !2071
  br label %50, !dbg !2072

; <label>:50:                                     ; preds = %47, %38
  store i8* null, i8** %13, align 8, !dbg !2073
  %51 = call i32 @settings_get_bool(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0)), !dbg !2074
  store i32 %51, i32* %14, align 4, !dbg !2075
  store i32 0, i32* %15, align 4, !dbg !2076
  store %struct._GSList* null, %struct._GSList** %12, align 8, !dbg !2077
  %52 = call %struct._GString* @g_string_new(i8* null), !dbg !2078
  store %struct._GString* %52, %struct._GString** %10, align 8, !dbg !2079
  %53 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !2080
  %54 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %53, i32 0, i32 23, !dbg !2082
  %55 = load %struct._GSList*, %struct._GSList** %54, align 8, !dbg !2082
  store %struct._GSList* %55, %struct._GSList** %11, align 8, !dbg !2083
  br label %56, !dbg !2084

; <label>:56:                                     ; preds = %162, %50
  %57 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !2085
  %58 = icmp ne %struct._GSList* %57, null, !dbg !2088
  br i1 %58, label %59, label %166, !dbg !2089

; <label>:59:                                     ; preds = %56
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %17, metadata !2090, metadata !851), !dbg !2092
  store i32 512, i32* %16, align 4, !dbg !2093
  %60 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !2094
  %61 = getelementptr inbounds %struct._GSList, %struct._GSList* %60, i32 0, i32 0, !dbg !2095
  %62 = load i8*, i8** %61, align 8, !dbg !2095
  %63 = bitcast i8* %62 to %struct._CHANNEL_REC*, !dbg !2094
  store %struct._CHANNEL_REC* %63, %struct._CHANNEL_REC** %17, align 8, !dbg !2096
  %64 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %17, align 8, !dbg !2097
  %65 = load i8*, i8** %6, align 8, !dbg !2099
  %66 = call %struct._NICK_REC* @nicklist_find(%struct._CHANNEL_REC* %64, i8* %65), !dbg !2100
  %67 = icmp ne %struct._NICK_REC* %66, null, !dbg !2100
  br i1 %67, label %69, label %68, !dbg !2101

; <label>:68:                                     ; preds = %59
  br label %162, !dbg !2102

; <label>:69:                                     ; preds = %59
  %70 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !2103
  %71 = load i8*, i8** %6, align 8, !dbg !2105
  %72 = load i8*, i8** %7, align 8, !dbg !2106
  %73 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %17, align 8, !dbg !2107
  %74 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %73, i32 0, i32 5, !dbg !2108
  %75 = load i8*, i8** %74, align 8, !dbg !2108
  %76 = load i8*, i8** %8, align 8, !dbg !2109
  %77 = call i32 @ignore_check(%struct._SERVER_REC* %70, i8* %71, i8* %72, i8* %75, i8* %76, i32 512), !dbg !2110
  %78 = icmp ne i32 %77, 0, !dbg !2110
  br i1 %78, label %79, label %82, !dbg !2111

; <label>:79:                                     ; preds = %69
  %80 = load i32, i32* %15, align 4, !dbg !2112
  %81 = add nsw i32 %80, 1, !dbg !2112
  store i32 %81, i32* %15, align 4, !dbg !2112
  br label %162, !dbg !2114

; <label>:82:                                     ; preds = %69
  %83 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !2115
  %84 = load i8*, i8** %6, align 8, !dbg !2117
  %85 = load i8*, i8** %7, align 8, !dbg !2118
  %86 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %17, align 8, !dbg !2119
  %87 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %86, i32 0, i32 5, !dbg !2120
  %88 = load i8*, i8** %87, align 8, !dbg !2120
  %89 = load i8*, i8** %8, align 8, !dbg !2121
  %90 = call i32 @ignore_check(%struct._SERVER_REC* %83, i8* %84, i8* %85, i8* %88, i8* %89, i32 33554432), !dbg !2122
  %91 = icmp ne i32 %90, 0, !dbg !2122
  br i1 %91, label %92, label %95, !dbg !2123

; <label>:92:                                     ; preds = %82
  %93 = load i32, i32* %16, align 4, !dbg !2124
  %94 = or i32 %93, 33554432, !dbg !2124
  store i32 %94, i32* %16, align 4, !dbg !2124
  br label %95, !dbg !2125

; <label>:95:                                     ; preds = %92, %82
  %96 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !2126
  %97 = load i8*, i8** %6, align 8, !dbg !2128
  %98 = load i8*, i8** %7, align 8, !dbg !2129
  %99 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %17, align 8, !dbg !2130
  %100 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %99, i32 0, i32 5, !dbg !2131
  %101 = load i8*, i8** %100, align 8, !dbg !2131
  %102 = load i8*, i8** %8, align 8, !dbg !2132
  %103 = call i32 @ignore_check(%struct._SERVER_REC* %96, i8* %97, i8* %98, i8* %101, i8* %102, i32 268435456), !dbg !2133
  %104 = icmp ne i32 %103, 0, !dbg !2133
  br i1 %104, label %105, label %108, !dbg !2134

; <label>:105:                                    ; preds = %95
  %106 = load i32, i32* %16, align 4, !dbg !2135
  %107 = or i32 %106, 268435456, !dbg !2135
  store i32 %107, i32* %16, align 4, !dbg !2135
  br label %108, !dbg !2136

; <label>:108:                                    ; preds = %105, %95
  %109 = load i8*, i8** %13, align 8, !dbg !2137
  %110 = icmp eq i8* %109, null, !dbg !2139
  br i1 %110, label %118, label %111, !dbg !2140

; <label>:111:                                    ; preds = %108
  %112 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** @active_win, align 8, !dbg !2141
  %113 = getelementptr inbounds %struct._WINDOW_REC, %struct._WINDOW_REC* %112, i32 0, i32 5, !dbg !2142
  %114 = load %struct._WI_ITEM_REC*, %struct._WI_ITEM_REC** %113, align 8, !dbg !2142
  %115 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %17, align 8, !dbg !2143
  %116 = bitcast %struct._CHANNEL_REC* %115 to %struct._WI_ITEM_REC*, !dbg !2144
  %117 = icmp eq %struct._WI_ITEM_REC* %114, %116, !dbg !2145
  br i1 %117, label %118, label %122, !dbg !2146

; <label>:118:                                    ; preds = %111, %108
  %119 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %17, align 8, !dbg !2148
  %120 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %119, i32 0, i32 5, !dbg !2149
  %121 = load i8*, i8** %120, align 8, !dbg !2149
  store i8* %121, i8** %13, align 8, !dbg !2150
  br label %122, !dbg !2151

; <label>:122:                                    ; preds = %118, %111
  %123 = load i32, i32* %14, align 4, !dbg !2152
  %124 = icmp ne i32 %123, 0, !dbg !2152
  br i1 %124, label %125, label %130, !dbg !2154

; <label>:125:                                    ; preds = %122
  %126 = load %struct._GString*, %struct._GString** %10, align 8, !dbg !2155
  %127 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %17, align 8, !dbg !2156
  %128 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %127, i32 0, i32 5, !dbg !2157
  %129 = load i8*, i8** %128, align 8, !dbg !2157
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %126, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i32 0, i32 0), i8* %129), !dbg !2158
  br label %159, !dbg !2158

; <label>:130:                                    ; preds = %122
  %131 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %17, align 8, !dbg !2159
  %132 = bitcast %struct._CHANNEL_REC* %131 to %struct._WI_ITEM_REC*, !dbg !2161
  %133 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %132, i32 0, i32 3, !dbg !2161
  %134 = load i8*, i8** %133, align 8, !dbg !2161
  %135 = bitcast i8* %134 to %struct._WINDOW_REC*, !dbg !2162
  store %struct._WINDOW_REC* %135, %struct._WINDOW_REC** %9, align 8, !dbg !2163
  %136 = load %struct._GSList*, %struct._GSList** %12, align 8, !dbg !2164
  %137 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %9, align 8, !dbg !2166
  %138 = bitcast %struct._WINDOW_REC* %137 to i8*, !dbg !2166
  %139 = call %struct._GSList* @g_slist_find(%struct._GSList* %136, i8* %138), !dbg !2167
  %140 = icmp eq %struct._GSList* %139, null, !dbg !2168
  br i1 %140, label %141, label %158, !dbg !2169

; <label>:141:                                    ; preds = %130
  %142 = load %struct._GSList*, %struct._GSList** %12, align 8, !dbg !2170
  %143 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %9, align 8, !dbg !2172
  %144 = bitcast %struct._WINDOW_REC* %143 to i8*, !dbg !2172
  %145 = call %struct._GSList* @g_slist_append(%struct._GSList* %142, i8* %144), !dbg !2173
  store %struct._GSList* %145, %struct._GSList** %12, align 8, !dbg !2174
  %146 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !2175
  %147 = bitcast %struct._SERVER_REC* %146 to i8*, !dbg !2175
  %148 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %17, align 8, !dbg !2176
  %149 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %148, i32 0, i32 5, !dbg !2177
  %150 = load i8*, i8** %149, align 8, !dbg !2177
  %151 = load i32, i32* %16, align 4, !dbg !2178
  %152 = load i8*, i8** %6, align 8, !dbg !2179
  %153 = load i8*, i8** %7, align 8, !dbg !2180
  %154 = load i8*, i8** %8, align 8, !dbg !2181
  %155 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %17, align 8, !dbg !2182
  %156 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %155, i32 0, i32 5, !dbg !2183
  %157 = load i8*, i8** %156, align 8, !dbg !2183
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* %147, i8* %150, i32 %151, i32 66, i8* %152, i8* %153, i8* %154, i8* %157), !dbg !2184
  br label %158, !dbg !2185

; <label>:158:                                    ; preds = %141, %130
  br label %159

; <label>:159:                                    ; preds = %158, %125
  %160 = load i32, i32* %15, align 4, !dbg !2186
  %161 = add nsw i32 %160, 1, !dbg !2186
  store i32 %161, i32* %15, align 4, !dbg !2186
  br label %162, !dbg !2187

; <label>:162:                                    ; preds = %159, %79, %68
  %163 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !2188
  %164 = getelementptr inbounds %struct._GSList, %struct._GSList* %163, i32 0, i32 1, !dbg !2190
  %165 = load %struct._GSList*, %struct._GSList** %164, align 8, !dbg !2190
  store %struct._GSList* %165, %struct._GSList** %11, align 8, !dbg !2191
  br label %56, !dbg !2192, !llvm.loop !2193

; <label>:166:                                    ; preds = %56
  %167 = load %struct._GSList*, %struct._GSList** %12, align 8, !dbg !2195
  call void @g_slist_free(%struct._GSList* %167), !dbg !2196
  %168 = load i32, i32* %14, align 4, !dbg !2197
  %169 = icmp ne i32 %168, 0, !dbg !2197
  br i1 %169, label %185, label %170, !dbg !2199

; <label>:170:                                    ; preds = %166
  call void @llvm.dbg.declare(metadata %struct._QUERY_REC** %18, metadata !2200, metadata !851), !dbg !2202
  %171 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !2203
  %172 = load i8*, i8** %6, align 8, !dbg !2204
  %173 = call %struct._QUERY_REC* @query_find(%struct._SERVER_REC* %171, i8* %172), !dbg !2205
  store %struct._QUERY_REC* %173, %struct._QUERY_REC** %18, align 8, !dbg !2202
  %174 = load %struct._QUERY_REC*, %struct._QUERY_REC** %18, align 8, !dbg !2206
  %175 = icmp ne %struct._QUERY_REC* %174, null, !dbg !2208
  br i1 %175, label %176, label %184, !dbg !2209

; <label>:176:                                    ; preds = %170
  %177 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !2210
  %178 = bitcast %struct._SERVER_REC* %177 to i8*, !dbg !2210
  %179 = load i8*, i8** %6, align 8, !dbg !2212
  %180 = load i32, i32* %16, align 4, !dbg !2213
  %181 = load i8*, i8** %6, align 8, !dbg !2214
  %182 = load i8*, i8** %7, align 8, !dbg !2215
  %183 = load i8*, i8** %8, align 8, !dbg !2216
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* %178, i8* %179, i32 %180, i32 66, i8* %181, i8* %182, i8* %183, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.34, i32 0, i32 0)), !dbg !2217
  br label %184, !dbg !2218

; <label>:184:                                    ; preds = %176, %170
  br label %185, !dbg !2219

; <label>:185:                                    ; preds = %184, %166
  %186 = load i32, i32* %14, align 4, !dbg !2220
  %187 = icmp ne i32 %186, 0, !dbg !2220
  br i1 %187, label %191, label %188, !dbg !2222

; <label>:188:                                    ; preds = %185
  %189 = load i32, i32* %15, align 4, !dbg !2223
  %190 = icmp eq i32 %189, 0, !dbg !2225
  br i1 %190, label %191, label %216, !dbg !2226

; <label>:191:                                    ; preds = %188, %185
  %192 = load %struct._GString*, %struct._GString** %10, align 8, !dbg !2227
  %193 = getelementptr inbounds %struct._GString, %struct._GString* %192, i32 0, i32 1, !dbg !2230
  %194 = load i64, i64* %193, align 8, !dbg !2230
  %195 = icmp ugt i64 %194, 0, !dbg !2231
  br i1 %195, label %196, label %203, !dbg !2232

; <label>:196:                                    ; preds = %191
  %197 = load %struct._GString*, %struct._GString** %10, align 8, !dbg !2233
  %198 = load %struct._GString*, %struct._GString** %10, align 8, !dbg !2234
  %199 = getelementptr inbounds %struct._GString, %struct._GString* %198, i32 0, i32 1, !dbg !2235
  %200 = load i64, i64* %199, align 8, !dbg !2235
  %201 = sub i64 %200, 1, !dbg !2236
  %202 = call %struct._GString* @g_string_truncate(%struct._GString* %197, i64 %201), !dbg !2237
  br label %203, !dbg !2237

; <label>:203:                                    ; preds = %196, %191
  %204 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !2238
  %205 = bitcast %struct._SERVER_REC* %204 to i8*, !dbg !2238
  %206 = load i8*, i8** %13, align 8, !dbg !2239
  %207 = load i32, i32* %15, align 4, !dbg !2240
  %208 = icmp sle i32 %207, 1, !dbg !2241
  %209 = select i1 %208, i32 66, i32 67, !dbg !2240
  %210 = load i8*, i8** %6, align 8, !dbg !2242
  %211 = load i8*, i8** %7, align 8, !dbg !2243
  %212 = load i8*, i8** %8, align 8, !dbg !2244
  %213 = load %struct._GString*, %struct._GString** %10, align 8, !dbg !2245
  %214 = getelementptr inbounds %struct._GString, %struct._GString* %213, i32 0, i32 0, !dbg !2246
  %215 = load i8*, i8** %214, align 8, !dbg !2246
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* %205, i8* %206, i32 512, i32 %209, i8* %210, i8* %211, i8* %212, i8* %215), !dbg !2247
  br label %216, !dbg !2248

; <label>:216:                                    ; preds = %203, %188
  %217 = load %struct._GString*, %struct._GString** %10, align 8, !dbg !2249
  %218 = call i8* @g_string_free(%struct._GString* %217, i32 1), !dbg !2250
  br label %219, !dbg !2251

; <label>:219:                                    ; preds = %216, %25
  ret void, !dbg !2252
}

; Function Attrs: nounwind uwtable
define internal void @sig_message_kick(%struct._SERVER_REC*, i8*, i8*, i8*, i8*, i8*) #0 !dbg !2254 {
  %7 = alloca %struct._SERVER_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %7, metadata !2257, metadata !851), !dbg !2258
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2259, metadata !851), !dbg !2260
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2261, metadata !851), !dbg !2262
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2263, metadata !851), !dbg !2264
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2265, metadata !851), !dbg !2266
  store i8* %5, i8** %12, align 8
  call void @llvm.dbg.declare(metadata i8** %12, metadata !2267, metadata !851), !dbg !2268
  call void @llvm.dbg.declare(metadata i32* %13, metadata !2269, metadata !851), !dbg !2270
  store i32 1024, i32* %13, align 4, !dbg !2270
  %14 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !2271
  %15 = load i8*, i8** %10, align 8, !dbg !2273
  %16 = load i8*, i8** %11, align 8, !dbg !2274
  %17 = load i8*, i8** %8, align 8, !dbg !2275
  %18 = load i8*, i8** %12, align 8, !dbg !2276
  %19 = load i32, i32* %13, align 4, !dbg !2277
  %20 = or i32 %19, 33554432, !dbg !2278
  %21 = call i32 @ignore_check(%struct._SERVER_REC* %14, i8* %15, i8* %16, i8* %17, i8* %18, i32 %20), !dbg !2279
  %22 = icmp ne i32 %21, 0, !dbg !2279
  br i1 %22, label %23, label %26, !dbg !2280

; <label>:23:                                     ; preds = %6
  %24 = load i32, i32* %13, align 4, !dbg !2281
  %25 = or i32 %24, 33554432, !dbg !2281
  store i32 %25, i32* %13, align 4, !dbg !2281
  br label %26, !dbg !2282

; <label>:26:                                     ; preds = %23, %6
  %27 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !2283
  %28 = load i8*, i8** %10, align 8, !dbg !2285
  %29 = load i8*, i8** %11, align 8, !dbg !2286
  %30 = load i8*, i8** %8, align 8, !dbg !2287
  %31 = load i8*, i8** %12, align 8, !dbg !2288
  %32 = load i32, i32* %13, align 4, !dbg !2289
  %33 = or i32 %32, 268435456, !dbg !2290
  %34 = call i32 @ignore_check(%struct._SERVER_REC* %27, i8* %28, i8* %29, i8* %30, i8* %31, i32 %33), !dbg !2291
  %35 = icmp ne i32 %34, 0, !dbg !2291
  br i1 %35, label %36, label %39, !dbg !2292

; <label>:36:                                     ; preds = %26
  %37 = load i32, i32* %13, align 4, !dbg !2293
  %38 = or i32 %37, 268435456, !dbg !2293
  store i32 %38, i32* %13, align 4, !dbg !2293
  br label %39, !dbg !2294

; <label>:39:                                     ; preds = %36, %26
  %40 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !2295
  %41 = bitcast %struct._SERVER_REC* %40 to i8*, !dbg !2295
  %42 = load i8*, i8** %8, align 8, !dbg !2296
  %43 = load i32, i32* %13, align 4, !dbg !2297
  %44 = load i8*, i8** %9, align 8, !dbg !2298
  %45 = load i8*, i8** %8, align 8, !dbg !2299
  %46 = load i8*, i8** %10, align 8, !dbg !2300
  %47 = load i8*, i8** %12, align 8, !dbg !2301
  %48 = load i8*, i8** %11, align 8, !dbg !2302
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* %41, i8* %42, i32 %43, i32 65, i8* %44, i8* %45, i8* %46, i8* %47, i8* %48), !dbg !2303
  ret void, !dbg !2304
}

; Function Attrs: nounwind uwtable
define internal void @sig_message_nick(%struct._SERVER_REC*, i8*, i8*, i8*) #0 !dbg !2305 {
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !2306, metadata !851), !dbg !2307
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2308, metadata !851), !dbg !2309
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2310, metadata !851), !dbg !2311
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2312, metadata !851), !dbg !2313
  %9 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !2314
  %10 = load i8*, i8** %6, align 8, !dbg !2315
  %11 = load i8*, i8** %7, align 8, !dbg !2316
  %12 = load i8*, i8** %8, align 8, !dbg !2317
  call void @print_nick_change(%struct._SERVER_REC* %9, i8* %10, i8* %11, i8* %12, i32 0), !dbg !2318
  ret void, !dbg !2319
}

; Function Attrs: nounwind uwtable
define internal void @sig_message_own_nick(%struct._SERVER_REC*, i8*, i8*, i8*) #0 !dbg !2320 {
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !2321, metadata !851), !dbg !2322
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2323, metadata !851), !dbg !2324
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2325, metadata !851), !dbg !2326
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2327, metadata !851), !dbg !2328
  %9 = call i32 @settings_get_bool(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0)), !dbg !2329
  %10 = icmp ne i32 %9, 0, !dbg !2329
  br i1 %10, label %16, label %11, !dbg !2331

; <label>:11:                                     ; preds = %4
  %12 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !2332
  %13 = load i8*, i8** %6, align 8, !dbg !2333
  %14 = load i8*, i8** %7, align 8, !dbg !2334
  %15 = load i8*, i8** %8, align 8, !dbg !2335
  call void @print_nick_change(%struct._SERVER_REC* %12, i8* %13, i8* %14, i8* %15, i32 1), !dbg !2336
  br label %22, !dbg !2336

; <label>:16:                                     ; preds = %4
  %17 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !2337
  %18 = bitcast %struct._SERVER_REC* %17 to i8*, !dbg !2337
  %19 = load i8*, i8** %7, align 8, !dbg !2339
  %20 = load i8*, i8** %6, align 8, !dbg !2340
  %21 = load i8*, i8** %8, align 8, !dbg !2341
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* %18, i8* null, i32 32768, i32 72, i8* %19, i8* %20, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.34, i32 0, i32 0), i8* %21), !dbg !2342
  br label %22

; <label>:22:                                     ; preds = %16, %11
  ret void, !dbg !2343
}

; Function Attrs: nounwind uwtable
define internal void @sig_message_invite(%struct._SERVER_REC*, i8*, i8*, i8*) #0 !dbg !2344 {
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !2345, metadata !851), !dbg !2346
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2347, metadata !851), !dbg !2348
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2349, metadata !851), !dbg !2350
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2351, metadata !851), !dbg !2352
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2353, metadata !851), !dbg !2354
  %10 = load i8*, i8** %6, align 8, !dbg !2355
  %11 = call i8* @show_lowascii(i8* %10), !dbg !2356
  store i8* %11, i8** %9, align 8, !dbg !2357
  %12 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !2358
  %13 = bitcast %struct._SERVER_REC* %12 to i8*, !dbg !2358
  %14 = load i8*, i8** %7, align 8, !dbg !2359
  %15 = load i8*, i8** %9, align 8, !dbg !2358
  %16 = load i8*, i8** %8, align 8, !dbg !2360
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* %13, i8* null, i32 16384, i32 68, i8* %14, i8* %15, i8* %16), !dbg !2361
  %17 = load i8*, i8** %9, align 8, !dbg !2362
  call void @g_free(i8* %17), !dbg !2363
  ret void, !dbg !2364
}

; Function Attrs: nounwind uwtable
define internal void @sig_message_topic(%struct._SERVER_REC*, i8*, i8*, i8*, i8*) #0 !dbg !2365 {
  %6 = alloca %struct._SERVER_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %6, metadata !2366, metadata !851), !dbg !2367
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2368, metadata !851), !dbg !2369
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2370, metadata !851), !dbg !2371
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2372, metadata !851), !dbg !2373
  store i8* %4, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2374, metadata !851), !dbg !2375
  call void @llvm.dbg.declare(metadata i32* %11, metadata !2376, metadata !851), !dbg !2377
  store i32 4096, i32* %11, align 4, !dbg !2377
  %12 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !2378
  %13 = load i8*, i8** %9, align 8, !dbg !2380
  %14 = load i8*, i8** %10, align 8, !dbg !2381
  %15 = load i8*, i8** %7, align 8, !dbg !2382
  %16 = load i8*, i8** %8, align 8, !dbg !2383
  %17 = load i32, i32* %11, align 4, !dbg !2384
  %18 = or i32 %17, 33554432, !dbg !2385
  %19 = call i32 @ignore_check(%struct._SERVER_REC* %12, i8* %13, i8* %14, i8* %15, i8* %16, i32 %18), !dbg !2386
  %20 = icmp ne i32 %19, 0, !dbg !2386
  br i1 %20, label %21, label %24, !dbg !2387

; <label>:21:                                     ; preds = %5
  %22 = load i32, i32* %11, align 4, !dbg !2388
  %23 = or i32 %22, 33554432, !dbg !2388
  store i32 %23, i32* %11, align 4, !dbg !2388
  br label %24, !dbg !2389

; <label>:24:                                     ; preds = %21, %5
  %25 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !2390
  %26 = load i8*, i8** %9, align 8, !dbg !2392
  %27 = load i8*, i8** %10, align 8, !dbg !2393
  %28 = load i8*, i8** %7, align 8, !dbg !2394
  %29 = load i8*, i8** %8, align 8, !dbg !2395
  %30 = load i32, i32* %11, align 4, !dbg !2396
  %31 = or i32 %30, 268435456, !dbg !2397
  %32 = call i32 @ignore_check(%struct._SERVER_REC* %25, i8* %26, i8* %27, i8* %28, i8* %29, i32 %31), !dbg !2398
  %33 = icmp ne i32 %32, 0, !dbg !2398
  br i1 %33, label %34, label %37, !dbg !2399

; <label>:34:                                     ; preds = %24
  %35 = load i32, i32* %11, align 4, !dbg !2400
  %36 = or i32 %35, 268435456, !dbg !2400
  store i32 %36, i32* %11, align 4, !dbg !2400
  br label %37, !dbg !2401

; <label>:37:                                     ; preds = %34, %24
  %38 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !2402
  %39 = bitcast %struct._SERVER_REC* %38 to i8*, !dbg !2402
  %40 = load i8*, i8** %7, align 8, !dbg !2403
  %41 = load i32, i32* %11, align 4, !dbg !2404
  %42 = load i8*, i8** %8, align 8, !dbg !2405
  %43 = load i8, i8* %42, align 1, !dbg !2406
  %44 = sext i8 %43 to i32, !dbg !2406
  %45 = icmp ne i32 %44, 0, !dbg !2407
  %46 = select i1 %45, i32 70, i32 71, !dbg !2406
  %47 = load i8*, i8** %9, align 8, !dbg !2408
  %48 = load i8*, i8** %7, align 8, !dbg !2409
  %49 = load i8*, i8** %8, align 8, !dbg !2410
  %50 = load i8*, i8** %10, align 8, !dbg !2411
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* %39, i8* %40, i32 %41, i32 %46, i8* %47, i8* %48, i8* %49, i8* %50), !dbg !2412
  ret void, !dbg !2413
}

; Function Attrs: nounwind uwtable
define internal void @sig_nicklist_new(%struct._CHANNEL_REC*, %struct._NICK_REC*) #0 !dbg !2414 {
  %3 = alloca %struct._CHANNEL_REC*, align 8
  %4 = alloca %struct._NICK_REC*, align 8
  %5 = alloca %struct._NICK_REC*, align 8
  %6 = alloca %struct._GString*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct._CHANNEL_REC* %0, %struct._CHANNEL_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %3, metadata !2417, metadata !851), !dbg !2418
  store %struct._NICK_REC* %1, %struct._NICK_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %4, metadata !2419, metadata !851), !dbg !2420
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %5, metadata !2421, metadata !851), !dbg !2422
  call void @llvm.dbg.declare(metadata %struct._GString** %6, metadata !2423, metadata !851), !dbg !2424
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2425, metadata !851), !dbg !2426
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2427, metadata !851), !dbg !2428
  call void @llvm.dbg.declare(metadata i32* %9, metadata !2429, metadata !851), !dbg !2430
  %10 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !2431
  %11 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %10, i32 0, i32 15, !dbg !2432
  %12 = load %struct._GHashTable*, %struct._GHashTable** %11, align 8, !dbg !2432
  %13 = load %struct._NICK_REC*, %struct._NICK_REC** %4, align 8, !dbg !2433
  %14 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %13, i32 0, i32 3, !dbg !2434
  %15 = load i8*, i8** %14, align 8, !dbg !2434
  %16 = call i8* @g_hash_table_lookup(%struct._GHashTable* %12, i8* %15), !dbg !2435
  %17 = bitcast i8* %16 to %struct._NICK_REC*, !dbg !2435
  store %struct._NICK_REC* %17, %struct._NICK_REC** %5, align 8, !dbg !2436
  %18 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !2437
  %19 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %18, i32 0, i32 10, !dbg !2439
  %20 = load %struct._NICK_REC*, %struct._NICK_REC** %19, align 8, !dbg !2439
  %21 = icmp eq %struct._NICK_REC* %20, null, !dbg !2440
  br i1 %21, label %22, label %23, !dbg !2441

; <label>:22:                                     ; preds = %2
  br label %114, !dbg !2442

; <label>:23:                                     ; preds = %2
  %24 = load %struct._NICK_REC*, %struct._NICK_REC** %4, align 8, !dbg !2443
  %25 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !2445
  %26 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %25, i32 0, i32 16, !dbg !2446
  %27 = load %struct._NICK_REC*, %struct._NICK_REC** %26, align 8, !dbg !2446
  %28 = icmp eq %struct._NICK_REC* %24, %27, !dbg !2447
  br i1 %28, label %29, label %38, !dbg !2448

; <label>:29:                                     ; preds = %23
  %30 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !2449
  %31 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %30, i32 0, i32 10, !dbg !2451
  %32 = load %struct._NICK_REC*, %struct._NICK_REC** %31, align 8, !dbg !2451
  %33 = call %struct._NICK_REC* @printnick_find_original(%struct._NICK_REC* %32), !dbg !2452
  store %struct._NICK_REC* %33, %struct._NICK_REC** %4, align 8, !dbg !2453
  %34 = load %struct._NICK_REC*, %struct._NICK_REC** %4, align 8, !dbg !2454
  %35 = icmp eq %struct._NICK_REC* %34, null, !dbg !2456
  br i1 %35, label %36, label %37, !dbg !2457

; <label>:36:                                     ; preds = %29
  br label %114, !dbg !2458

; <label>:37:                                     ; preds = %29
  br label %38, !dbg !2459

; <label>:38:                                     ; preds = %37, %23
  %39 = load %struct._NICK_REC*, %struct._NICK_REC** %4, align 8, !dbg !2460
  %40 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %39, i32 0, i32 4, !dbg !2462
  %41 = load i8*, i8** %40, align 8, !dbg !2462
  %42 = icmp eq i8* %41, null, !dbg !2463
  br i1 %42, label %43, label %44, !dbg !2464

; <label>:43:                                     ; preds = %38
  br label %114, !dbg !2465

; <label>:44:                                     ; preds = %38
  %45 = load %struct._NICK_REC*, %struct._NICK_REC** %4, align 8, !dbg !2466
  %46 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %45, i32 0, i32 4, !dbg !2467
  %47 = load i8*, i8** %46, align 8, !dbg !2467
  %48 = call i8* @strchr(i8* %47, i32 64) #5, !dbg !2468
  store i8* %48, i8** %8, align 8, !dbg !2469
  %49 = load i8*, i8** %8, align 8, !dbg !2470
  %50 = icmp eq i8* %49, null, !dbg !2472
  br i1 %50, label %51, label %55, !dbg !2473

; <label>:51:                                     ; preds = %44
  %52 = load %struct._NICK_REC*, %struct._NICK_REC** %4, align 8, !dbg !2474
  %53 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %52, i32 0, i32 4, !dbg !2476
  %54 = load i8*, i8** %53, align 8, !dbg !2476
  store i8* %54, i8** %8, align 8, !dbg !2477
  br label %58, !dbg !2478

; <label>:55:                                     ; preds = %44
  %56 = load i8*, i8** %8, align 8, !dbg !2479
  %57 = getelementptr inbounds i8, i8* %56, i32 1, !dbg !2479
  store i8* %57, i8** %8, align 8, !dbg !2479
  br label %58

; <label>:58:                                     ; preds = %55, %51
  %59 = load %struct._NICK_REC*, %struct._NICK_REC** %4, align 8, !dbg !2481
  %60 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %59, i32 0, i32 3, !dbg !2482
  %61 = load i8*, i8** %60, align 8, !dbg !2482
  %62 = load i8*, i8** %8, align 8, !dbg !2483
  %63 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i8* %61, i8* %62), !dbg !2484
  store i8* %63, i8** %7, align 8, !dbg !2485
  %64 = load i8*, i8** %7, align 8, !dbg !2486
  %65 = load %struct._NICK_REC*, %struct._NICK_REC** %4, align 8, !dbg !2487
  %66 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %65, i32 0, i32 3, !dbg !2488
  %67 = load i8*, i8** %66, align 8, !dbg !2488
  %68 = call i64 @strlen(i8* %67) #5, !dbg !2489
  %69 = getelementptr inbounds i8, i8* %64, i64 %68, !dbg !2490
  %70 = call i8* @strchr(i8* %69, i32 46) #5, !dbg !2491
  store i8* %70, i8** %8, align 8, !dbg !2493
  %71 = load i8*, i8** %8, align 8, !dbg !2494
  %72 = icmp ne i8* %71, null, !dbg !2496
  br i1 %72, label %73, label %75, !dbg !2497

; <label>:73:                                     ; preds = %58
  %74 = load i8*, i8** %8, align 8, !dbg !2498
  store i8 0, i8* %74, align 1, !dbg !2500
  br label %75, !dbg !2501

; <label>:75:                                     ; preds = %73, %58
  %76 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !2502
  %77 = load %struct._NICK_REC*, %struct._NICK_REC** %4, align 8, !dbg !2504
  %78 = load i8*, i8** %7, align 8, !dbg !2505
  %79 = call i32 @printnick_exists(%struct._NICK_REC* %76, %struct._NICK_REC* %77, i8* %78), !dbg !2506
  %80 = icmp ne i32 %79, 0, !dbg !2506
  br i1 %80, label %87, label %81, !dbg !2507

; <label>:81:                                     ; preds = %75
  %82 = load %struct._GHashTable*, %struct._GHashTable** @printnicks, align 8, !dbg !2508
  %83 = load %struct._NICK_REC*, %struct._NICK_REC** %4, align 8, !dbg !2510
  %84 = bitcast %struct._NICK_REC* %83 to i8*, !dbg !2510
  %85 = load i8*, i8** %7, align 8, !dbg !2511
  %86 = call i32 @g_hash_table_insert(%struct._GHashTable* %82, i8* %84, i8* %85), !dbg !2512
  br label %114, !dbg !2513

; <label>:87:                                     ; preds = %75
  %88 = call %struct._GString* @g_string_new(i8* null), !dbg !2514
  store %struct._GString* %88, %struct._GString** %6, align 8, !dbg !2515
  store i32 2, i32* %9, align 4, !dbg !2516
  br label %89, !dbg !2517, !llvm.loop !2518

; <label>:89:                                     ; preds = %95, %87
  %90 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !2519
  %91 = load i8*, i8** %7, align 8, !dbg !2521
  %92 = load i32, i32* %9, align 4, !dbg !2522
  call void (%struct._GString*, i8*, ...) @g_string_printf(%struct._GString* %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), i8* %91, i32 %92), !dbg !2523
  %93 = load i32, i32* %9, align 4, !dbg !2524
  %94 = add nsw i32 %93, 1, !dbg !2524
  store i32 %94, i32* %9, align 4, !dbg !2524
  br label %95, !dbg !2525

; <label>:95:                                     ; preds = %89
  %96 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !2526
  %97 = load %struct._NICK_REC*, %struct._NICK_REC** %4, align 8, !dbg !2527
  %98 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !2528
  %99 = getelementptr inbounds %struct._GString, %struct._GString* %98, i32 0, i32 0, !dbg !2529
  %100 = load i8*, i8** %99, align 8, !dbg !2529
  %101 = call i32 @printnick_exists(%struct._NICK_REC* %96, %struct._NICK_REC* %97, i8* %100), !dbg !2530
  %102 = icmp ne i32 %101, 0, !dbg !2531
  br i1 %102, label %89, label %103, !dbg !2531, !llvm.loop !2518

; <label>:103:                                    ; preds = %95
  %104 = load %struct._GHashTable*, %struct._GHashTable** @printnicks, align 8, !dbg !2532
  %105 = load %struct._NICK_REC*, %struct._NICK_REC** %4, align 8, !dbg !2533
  %106 = bitcast %struct._NICK_REC* %105 to i8*, !dbg !2533
  %107 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !2534
  %108 = getelementptr inbounds %struct._GString, %struct._GString* %107, i32 0, i32 0, !dbg !2535
  %109 = load i8*, i8** %108, align 8, !dbg !2535
  %110 = call i32 @g_hash_table_insert(%struct._GHashTable* %104, i8* %106, i8* %109), !dbg !2536
  %111 = load %struct._GString*, %struct._GString** %6, align 8, !dbg !2537
  %112 = call i8* @g_string_free(%struct._GString* %111, i32 0), !dbg !2538
  %113 = load i8*, i8** %7, align 8, !dbg !2539
  call void @g_free(i8* %113), !dbg !2540
  br label %114, !dbg !2541

; <label>:114:                                    ; preds = %103, %81, %43, %36, %22
  ret void, !dbg !2542
}

; Function Attrs: nounwind uwtable
define internal void @sig_nicklist_remove(%struct._CHANNEL_REC*, %struct._NICK_REC*) #0 !dbg !2543 {
  %3 = alloca %struct._CHANNEL_REC*, align 8
  %4 = alloca %struct._NICK_REC*, align 8
  %5 = alloca i8*, align 8
  store %struct._CHANNEL_REC* %0, %struct._CHANNEL_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %3, metadata !2544, metadata !851), !dbg !2545
  store %struct._NICK_REC* %1, %struct._NICK_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %4, metadata !2546, metadata !851), !dbg !2547
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2548, metadata !851), !dbg !2549
  %6 = load %struct._GHashTable*, %struct._GHashTable** @printnicks, align 8, !dbg !2550
  %7 = load %struct._NICK_REC*, %struct._NICK_REC** %4, align 8, !dbg !2551
  %8 = bitcast %struct._NICK_REC* %7 to i8*, !dbg !2551
  %9 = call i8* @g_hash_table_lookup(%struct._GHashTable* %6, i8* %8), !dbg !2552
  store i8* %9, i8** %5, align 8, !dbg !2553
  %10 = load i8*, i8** %5, align 8, !dbg !2554
  %11 = icmp ne i8* %10, null, !dbg !2556
  br i1 %11, label %12, label %18, !dbg !2557

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %5, align 8, !dbg !2558
  call void @g_free(i8* %13), !dbg !2560
  %14 = load %struct._GHashTable*, %struct._GHashTable** @printnicks, align 8, !dbg !2561
  %15 = load %struct._NICK_REC*, %struct._NICK_REC** %4, align 8, !dbg !2562
  %16 = bitcast %struct._NICK_REC* %15 to i8*, !dbg !2562
  %17 = call i32 @g_hash_table_remove(%struct._GHashTable* %14, i8* %16), !dbg !2563
  br label %18, !dbg !2564

; <label>:18:                                     ; preds = %12, %2
  ret void, !dbg !2565
}

; Function Attrs: nounwind uwtable
define internal void @sig_nicklist_changed(%struct._CHANNEL_REC*, %struct._NICK_REC*) #0 !dbg !2566 {
  %3 = alloca %struct._CHANNEL_REC*, align 8
  %4 = alloca %struct._NICK_REC*, align 8
  store %struct._CHANNEL_REC* %0, %struct._CHANNEL_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %3, metadata !2567, metadata !851), !dbg !2568
  store %struct._NICK_REC* %1, %struct._NICK_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %4, metadata !2569, metadata !851), !dbg !2570
  %5 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !2571
  %6 = load %struct._NICK_REC*, %struct._NICK_REC** %4, align 8, !dbg !2572
  call void @sig_nicklist_remove(%struct._CHANNEL_REC* %5, %struct._NICK_REC* %6), !dbg !2573
  %7 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %3, align 8, !dbg !2574
  %8 = load %struct._NICK_REC*, %struct._NICK_REC** %4, align 8, !dbg !2575
  call void @sig_nicklist_new(%struct._CHANNEL_REC* %7, %struct._NICK_REC* %8), !dbg !2576
  ret void, !dbg !2577
}

; Function Attrs: nounwind uwtable
define internal void @sig_channel_joined(%struct._CHANNEL_REC*) #0 !dbg !2578 {
  %2 = alloca %struct._CHANNEL_REC*, align 8
  %3 = alloca %struct._NICK_REC*, align 8
  %4 = alloca i8*, align 8
  store %struct._CHANNEL_REC* %0, %struct._CHANNEL_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %2, metadata !2581, metadata !851), !dbg !2582
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %3, metadata !2583, metadata !851), !dbg !2584
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2585, metadata !851), !dbg !2586
  %5 = load %struct._GHashTable*, %struct._GHashTable** @printnicks, align 8, !dbg !2587
  %6 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !2588
  %7 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %6, i32 0, i32 16, !dbg !2589
  %8 = load %struct._NICK_REC*, %struct._NICK_REC** %7, align 8, !dbg !2589
  %9 = bitcast %struct._NICK_REC* %8 to i8*, !dbg !2588
  %10 = call i8* @g_hash_table_lookup(%struct._GHashTable* %5, i8* %9), !dbg !2590
  store i8* %10, i8** %4, align 8, !dbg !2591
  %11 = load i8*, i8** %4, align 8, !dbg !2592
  %12 = icmp eq i8* %11, null, !dbg !2594
  br i1 %12, label %13, label %14, !dbg !2595

; <label>:13:                                     ; preds = %1
  br label %43, !dbg !2596

; <label>:14:                                     ; preds = %1
  %15 = load i8*, i8** %4, align 8, !dbg !2597
  call void @g_free(i8* %15), !dbg !2598
  %16 = load %struct._GHashTable*, %struct._GHashTable** @printnicks, align 8, !dbg !2599
  %17 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !2600
  %18 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %17, i32 0, i32 16, !dbg !2601
  %19 = load %struct._NICK_REC*, %struct._NICK_REC** %18, align 8, !dbg !2601
  %20 = bitcast %struct._NICK_REC* %19 to i8*, !dbg !2600
  %21 = call i32 @g_hash_table_remove(%struct._GHashTable* %16, i8* %20), !dbg !2602
  %22 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !2603
  %23 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %22, i32 0, i32 16, !dbg !2604
  %24 = load %struct._NICK_REC*, %struct._NICK_REC** %23, align 8, !dbg !2604
  %25 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %24, i32 0, i32 10, !dbg !2605
  %26 = load %struct._NICK_REC*, %struct._NICK_REC** %25, align 8, !dbg !2605
  store %struct._NICK_REC* %26, %struct._NICK_REC** %3, align 8, !dbg !2606
  br label %27, !dbg !2607

; <label>:27:                                     ; preds = %39, %14
  %28 = load %struct._NICK_REC*, %struct._NICK_REC** %3, align 8, !dbg !2608
  %29 = icmp ne %struct._NICK_REC* %28, null, !dbg !2610
  br i1 %29, label %30, label %43, !dbg !2611

; <label>:30:                                     ; preds = %27
  %31 = load %struct._GHashTable*, %struct._GHashTable** @printnicks, align 8, !dbg !2612
  %32 = load %struct._NICK_REC*, %struct._NICK_REC** %3, align 8, !dbg !2615
  %33 = bitcast %struct._NICK_REC* %32 to i8*, !dbg !2615
  %34 = call i8* @g_hash_table_lookup(%struct._GHashTable* %31, i8* %33), !dbg !2616
  %35 = icmp eq i8* %34, null, !dbg !2617
  br i1 %35, label %36, label %39, !dbg !2618

; <label>:36:                                     ; preds = %30
  %37 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %2, align 8, !dbg !2619
  %38 = load %struct._NICK_REC*, %struct._NICK_REC** %3, align 8, !dbg !2621
  call void @sig_nicklist_new(%struct._CHANNEL_REC* %37, %struct._NICK_REC* %38), !dbg !2622
  br label %43, !dbg !2623

; <label>:39:                                     ; preds = %30
  %40 = load %struct._NICK_REC*, %struct._NICK_REC** %3, align 8, !dbg !2624
  %41 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %40, i32 0, i32 10, !dbg !2625
  %42 = load %struct._NICK_REC*, %struct._NICK_REC** %41, align 8, !dbg !2625
  store %struct._NICK_REC* %42, %struct._NICK_REC** %3, align 8, !dbg !2626
  br label %27, !dbg !2627, !llvm.loop !2629

; <label>:43:                                     ; preds = %13, %36, %27
  ret void, !dbg !2630
}

; Function Attrs: nounwind uwtable
define void @fe_messages_deinit() #0 !dbg !2631 {
  %1 = load %struct._GHashTable*, %struct._GHashTable** @printnicks, align 8, !dbg !2632
  call void @g_hash_table_foreach(%struct._GHashTable* %1, void (i8*, i8*, i8*)* bitcast (void (i8*, i8*)* @g_hash_free_value to void (i8*, i8*, i8*)*), i8* null), !dbg !2633
  %2 = load %struct._GHashTable*, %struct._GHashTable** @printnicks, align 8, !dbg !2634
  call void @g_hash_table_destroy(%struct._GHashTable* %2), !dbg !2635
  call void @signal_remove_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*, i8*, %struct._NICK_REC*)* @sig_message_public to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2636
  call void @signal_remove_full(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*, i8*)* @sig_message_private to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2637
  call void @signal_remove_full(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*)* @sig_message_own_public to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2638
  call void @signal_remove_full(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*)* @sig_message_own_private to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2639
  call void @signal_remove_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*)* @sig_message_join to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2640
  call void @signal_remove_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*, i8*)* @sig_message_part to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2641
  call void @signal_remove_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*)* @sig_message_quit to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2642
  call void @signal_remove_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*, i8*, i8*)* @sig_message_kick to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2643
  call void @signal_remove_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*)* @sig_message_nick to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2644
  call void @signal_remove_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*)* @sig_message_own_nick to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2645
  call void @signal_remove_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*)* @sig_message_invite to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2646
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._SERVER_REC*, i8*, i8*, i8*, i8*)* @sig_message_topic to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2647
  call void @signal_remove_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._CHANNEL_REC*, %struct._NICK_REC*)* @sig_nicklist_new to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2648
  call void @signal_remove_full(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._CHANNEL_REC*, %struct._NICK_REC*)* @sig_nicklist_remove to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2649
  call void @signal_remove_full(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._CHANNEL_REC*, %struct._NICK_REC*)* @sig_nicklist_changed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2650
  call void @signal_remove_full(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.32, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._CHANNEL_REC*, %struct._NICK_REC*)* @sig_nicklist_new to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2651
  call void @signal_remove_full(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._CHANNEL_REC*)* @sig_channel_joined to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !2652
  ret void, !dbg !2653
}

declare void @g_hash_table_foreach(%struct._GHashTable*, void (i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @g_hash_free_value(i8*, i8*) #0 !dbg !2654 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2657, metadata !851), !dbg !2658
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !2659, metadata !851), !dbg !2660
  %5 = load i8*, i8** %4, align 8, !dbg !2661
  call void @g_free(i8* %5), !dbg !2662
  ret void, !dbg !2663
}

declare void @g_hash_table_destroy(%struct._GHashTable*) #2

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare noalias i8* @g_strdup(i8*) #2

declare noalias i8* @g_malloc(i64) #2

declare %struct._CHANNEL_REC* @channel_find(%struct._SERVER_REC*, i8*) #2

declare i32 @nick_match_msg(%struct._CHANNEL_REC*, i8*, i8*) #2

declare i32 @nick_match_msg_everywhere(%struct._CHANNEL_REC*, i8*, i8*) #2

declare %struct._HILIGHT_REC* @hilight_match_nick(%struct._SERVER_REC*, i8*, i8*, i8*, i32, i8*) #2

declare i8* @hilight_get_color(%struct._HILIGHT_REC*) #2

declare i32 @window_item_is_active(%struct._WI_ITEM_REC*) #2

declare i32 @ignore_check(%struct._SERVER_REC*, i8*, i8*, i8*, i8*, i32) #2

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #2

declare void @format_create_dest(%struct._TEXT_DEST_REC*, i8*, i8*, i32, %struct._WINDOW_REC*) #2

declare void @hilight_update_text_dest(%struct._TEXT_DEST_REC*, %struct._HILIGHT_REC*) #2

declare void @printformat_module_dest(i8*, %struct._TEXT_DEST_REC*, i32, ...) #2

declare void @g_free(i8*) #2

declare i32 @g_strcmp0(i8*, i8*) #2

declare %struct._QUERY_REC* @query_find(%struct._SERVER_REC*, i8*) #2

declare void @printformat_module(i8*, i8*, i8*, i32, i32, ...) #2

declare i32 @g_slist_length(%struct._GSList*) #2

declare void @signal_stop() #2

declare %struct._QUERY_REC* @privmsg_get_query(%struct._SERVER_REC*, i8*, i32, i32) #2

declare void @g_string_append_printf(%struct._GString*, i8*, ...) #2

declare %struct._GSList* @g_slist_find(%struct._GSList*, i8*) #2

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #2

declare void @g_slist_free(%struct._GSList*) #2

declare %struct._GString* @g_string_truncate(%struct._GString*, i64) #2

; Function Attrs: nounwind uwtable
define internal void @print_nick_change(%struct._SERVER_REC*, i8*, i8*, i8*, i32) #0 !dbg !2664 {
  %6 = alloca %struct._SERVER_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct._GSList*, align 8
  %12 = alloca %struct._GSList*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct._CHANNEL_REC*, align 8
  %15 = alloca %struct._WINDOW_REC*, align 8
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %6, metadata !2667, metadata !851), !dbg !2668
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2669, metadata !851), !dbg !2670
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2671, metadata !851), !dbg !2672
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2673, metadata !851), !dbg !2674
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2675, metadata !851), !dbg !2676
  call void @llvm.dbg.declare(metadata %struct._GSList** %11, metadata !2677, metadata !851), !dbg !2678
  call void @llvm.dbg.declare(metadata %struct._GSList** %12, metadata !2679, metadata !851), !dbg !2680
  call void @llvm.dbg.declare(metadata i32* %13, metadata !2681, metadata !851), !dbg !2682
  store i32 0, i32* %13, align 4, !dbg !2683
  store %struct._GSList* null, %struct._GSList** %12, align 8, !dbg !2684
  %16 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !2685
  %17 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %16, i32 0, i32 23, !dbg !2687
  %18 = load %struct._GSList*, %struct._GSList** %17, align 8, !dbg !2687
  store %struct._GSList* %18, %struct._GSList** %11, align 8, !dbg !2688
  br label %19, !dbg !2689

; <label>:19:                                     ; preds = %56, %5
  %20 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !2690
  %21 = icmp ne %struct._GSList* %20, null, !dbg !2693
  br i1 %21, label %22, label %60, !dbg !2694

; <label>:22:                                     ; preds = %19
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_REC** %14, metadata !2695, metadata !851), !dbg !2697
  %23 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !2698
  %24 = getelementptr inbounds %struct._GSList, %struct._GSList* %23, i32 0, i32 0, !dbg !2699
  %25 = load i8*, i8** %24, align 8, !dbg !2699
  %26 = bitcast i8* %25 to %struct._CHANNEL_REC*, !dbg !2698
  store %struct._CHANNEL_REC* %26, %struct._CHANNEL_REC** %14, align 8, !dbg !2697
  call void @llvm.dbg.declare(metadata %struct._WINDOW_REC** %15, metadata !2700, metadata !851), !dbg !2701
  %27 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %14, align 8, !dbg !2702
  %28 = bitcast %struct._CHANNEL_REC* %27 to %struct._WI_ITEM_REC*, !dbg !2703
  %29 = getelementptr inbounds %struct._WI_ITEM_REC, %struct._WI_ITEM_REC* %28, i32 0, i32 3, !dbg !2703
  %30 = load i8*, i8** %29, align 8, !dbg !2703
  %31 = bitcast i8* %30 to %struct._WINDOW_REC*, !dbg !2704
  store %struct._WINDOW_REC* %31, %struct._WINDOW_REC** %15, align 8, !dbg !2701
  %32 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %14, align 8, !dbg !2705
  %33 = load i8*, i8** %7, align 8, !dbg !2707
  %34 = call %struct._NICK_REC* @nicklist_find(%struct._CHANNEL_REC* %32, i8* %33), !dbg !2708
  %35 = icmp eq %struct._NICK_REC* %34, null, !dbg !2709
  br i1 %35, label %42, label %36, !dbg !2710

; <label>:36:                                     ; preds = %22
  %37 = load %struct._GSList*, %struct._GSList** %12, align 8, !dbg !2711
  %38 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %15, align 8, !dbg !2712
  %39 = bitcast %struct._WINDOW_REC* %38 to i8*, !dbg !2712
  %40 = call %struct._GSList* @g_slist_find(%struct._GSList* %37, i8* %39), !dbg !2713
  %41 = icmp ne %struct._GSList* %40, null, !dbg !2714
  br i1 %41, label %42, label %43, !dbg !2715

; <label>:42:                                     ; preds = %36, %22
  br label %56, !dbg !2717

; <label>:43:                                     ; preds = %36
  %44 = load %struct._GSList*, %struct._GSList** %12, align 8, !dbg !2718
  %45 = load %struct._WINDOW_REC*, %struct._WINDOW_REC** %15, align 8, !dbg !2719
  %46 = bitcast %struct._WINDOW_REC* %45 to i8*, !dbg !2719
  %47 = call %struct._GSList* @g_slist_append(%struct._GSList* %44, i8* %46), !dbg !2720
  store %struct._GSList* %47, %struct._GSList** %12, align 8, !dbg !2721
  %48 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !2722
  %49 = load %struct._CHANNEL_REC*, %struct._CHANNEL_REC** %14, align 8, !dbg !2723
  %50 = getelementptr inbounds %struct._CHANNEL_REC, %struct._CHANNEL_REC* %49, i32 0, i32 5, !dbg !2724
  %51 = load i8*, i8** %50, align 8, !dbg !2724
  %52 = load i8*, i8** %7, align 8, !dbg !2725
  %53 = load i8*, i8** %8, align 8, !dbg !2726
  %54 = load i8*, i8** %9, align 8, !dbg !2727
  %55 = load i32, i32* %10, align 4, !dbg !2728
  call void @print_nick_change_channel(%struct._SERVER_REC* %48, i8* %51, i8* %52, i8* %53, i8* %54, i32 %55), !dbg !2729
  store i32 1, i32* %13, align 4, !dbg !2730
  br label %56, !dbg !2731

; <label>:56:                                     ; preds = %43, %42
  %57 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !2732
  %58 = getelementptr inbounds %struct._GSList, %struct._GSList* %57, i32 0, i32 1, !dbg !2734
  %59 = load %struct._GSList*, %struct._GSList** %58, align 8, !dbg !2734
  store %struct._GSList* %59, %struct._GSList** %11, align 8, !dbg !2735
  br label %19, !dbg !2736, !llvm.loop !2737

; <label>:60:                                     ; preds = %19
  %61 = load %struct._GSList*, %struct._GSList** %12, align 8, !dbg !2739
  call void @g_slist_free(%struct._GSList* %61), !dbg !2740
  %62 = load i32, i32* %13, align 4, !dbg !2741
  %63 = icmp ne i32 %62, 0, !dbg !2741
  br i1 %63, label %73, label %64, !dbg !2743

; <label>:64:                                     ; preds = %60
  %65 = load i32, i32* %10, align 4, !dbg !2744
  %66 = icmp ne i32 %65, 0, !dbg !2744
  br i1 %66, label %67, label %73, !dbg !2746

; <label>:67:                                     ; preds = %64
  %68 = load %struct._SERVER_REC*, %struct._SERVER_REC** %6, align 8, !dbg !2747
  %69 = bitcast %struct._SERVER_REC* %68 to i8*, !dbg !2747
  %70 = load i8*, i8** %8, align 8, !dbg !2749
  %71 = load i8*, i8** %7, align 8, !dbg !2750
  %72 = load i8*, i8** %9, align 8, !dbg !2751
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* %69, i8* null, i32 32768, i32 72, i8* %70, i8* %71, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.34, i32 0, i32 0), i8* %72), !dbg !2752
  br label %73, !dbg !2753

; <label>:73:                                     ; preds = %67, %64, %60
  ret void, !dbg !2754
}

; Function Attrs: nounwind uwtable
define internal void @print_nick_change_channel(%struct._SERVER_REC*, i8*, i8*, i8*, i8*, i32) #0 !dbg !2755 {
  %7 = alloca %struct._SERVER_REC*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct._SERVER_REC* %0, %struct._SERVER_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %7, metadata !2758, metadata !851), !dbg !2759
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2760, metadata !851), !dbg !2761
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2762, metadata !851), !dbg !2763
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2764, metadata !851), !dbg !2765
  store i8* %4, i8** %11, align 8
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2766, metadata !851), !dbg !2767
  store i32 %5, i32* %12, align 4
  call void @llvm.dbg.declare(metadata i32* %12, metadata !2768, metadata !851), !dbg !2769
  call void @llvm.dbg.declare(metadata i32* %13, metadata !2770, metadata !851), !dbg !2771
  %14 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !2772
  %15 = load i8*, i8** %10, align 8, !dbg !2774
  %16 = load i8*, i8** %11, align 8, !dbg !2775
  %17 = load i8*, i8** %8, align 8, !dbg !2776
  %18 = load i8*, i8** %9, align 8, !dbg !2777
  %19 = call i32 @ignore_check(%struct._SERVER_REC* %14, i8* %15, i8* %16, i8* %17, i8* %18, i32 32768), !dbg !2778
  %20 = icmp ne i32 %19, 0, !dbg !2778
  br i1 %20, label %21, label %22, !dbg !2779

; <label>:21:                                     ; preds = %6
  br label %74, !dbg !2780

; <label>:22:                                     ; preds = %6
  store i32 32768, i32* %13, align 4, !dbg !2781
  %23 = load i32, i32* %12, align 4, !dbg !2782
  %24 = icmp ne i32 %23, 0, !dbg !2782
  br i1 %24, label %25, label %28, !dbg !2784

; <label>:25:                                     ; preds = %22
  %26 = load i32, i32* %13, align 4, !dbg !2785
  %27 = or i32 %26, 33554432, !dbg !2785
  store i32 %27, i32* %13, align 4, !dbg !2785
  br label %28, !dbg !2787

; <label>:28:                                     ; preds = %25, %22
  %29 = load i32, i32* %13, align 4, !dbg !2788
  %30 = and i32 %29, 33554432, !dbg !2790
  %31 = icmp ne i32 %30, 0, !dbg !2790
  br i1 %31, label %45, label %32, !dbg !2791

; <label>:32:                                     ; preds = %28
  %33 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !2792
  %34 = load i8*, i8** %10, align 8, !dbg !2794
  %35 = load i8*, i8** %11, align 8, !dbg !2795
  %36 = load i8*, i8** %8, align 8, !dbg !2796
  %37 = load i8*, i8** %9, align 8, !dbg !2797
  %38 = load i32, i32* %13, align 4, !dbg !2798
  %39 = or i32 %38, 33554432, !dbg !2799
  %40 = call i32 @ignore_check(%struct._SERVER_REC* %33, i8* %34, i8* %35, i8* %36, i8* %37, i32 %39), !dbg !2800
  %41 = icmp ne i32 %40, 0, !dbg !2800
  br i1 %41, label %42, label %45, !dbg !2801

; <label>:42:                                     ; preds = %32
  %43 = load i32, i32* %13, align 4, !dbg !2802
  %44 = or i32 %43, 33554432, !dbg !2802
  store i32 %44, i32* %13, align 4, !dbg !2802
  br label %45, !dbg !2803

; <label>:45:                                     ; preds = %42, %32, %28
  %46 = load i32, i32* %13, align 4, !dbg !2804
  %47 = and i32 %46, 268435456, !dbg !2806
  %48 = icmp ne i32 %47, 0, !dbg !2806
  br i1 %48, label %62, label %49, !dbg !2807

; <label>:49:                                     ; preds = %45
  %50 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !2808
  %51 = load i8*, i8** %10, align 8, !dbg !2810
  %52 = load i8*, i8** %11, align 8, !dbg !2811
  %53 = load i8*, i8** %8, align 8, !dbg !2812
  %54 = load i8*, i8** %9, align 8, !dbg !2813
  %55 = load i32, i32* %13, align 4, !dbg !2814
  %56 = or i32 %55, 268435456, !dbg !2815
  %57 = call i32 @ignore_check(%struct._SERVER_REC* %50, i8* %51, i8* %52, i8* %53, i8* %54, i32 %56), !dbg !2816
  %58 = icmp ne i32 %57, 0, !dbg !2816
  br i1 %58, label %59, label %62, !dbg !2817

; <label>:59:                                     ; preds = %49
  %60 = load i32, i32* %13, align 4, !dbg !2818
  %61 = or i32 %60, 268435456, !dbg !2818
  store i32 %61, i32* %13, align 4, !dbg !2818
  br label %62, !dbg !2819

; <label>:62:                                     ; preds = %59, %49, %45
  %63 = load %struct._SERVER_REC*, %struct._SERVER_REC** %7, align 8, !dbg !2820
  %64 = bitcast %struct._SERVER_REC* %63 to i8*, !dbg !2820
  %65 = load i8*, i8** %8, align 8, !dbg !2821
  %66 = load i32, i32* %13, align 4, !dbg !2822
  %67 = load i32, i32* %12, align 4, !dbg !2823
  %68 = icmp ne i32 %67, 0, !dbg !2823
  %69 = select i1 %68, i32 72, i32 73, !dbg !2823
  %70 = load i8*, i8** %10, align 8, !dbg !2824
  %71 = load i8*, i8** %9, align 8, !dbg !2825
  %72 = load i8*, i8** %8, align 8, !dbg !2826
  %73 = load i8*, i8** %11, align 8, !dbg !2827
  call void (i8*, i8*, i8*, i32, i32, ...) @printformat_module(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* %64, i8* %65, i32 %66, i32 %69, i8* %70, i8* %71, i8* %72, i8* %73), !dbg !2828
  br label %74, !dbg !2829

; <label>:74:                                     ; preds = %62, %21
  ret void, !dbg !2830
}

declare i8* @show_lowascii(i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct._NICK_REC* @printnick_find_original(%struct._NICK_REC*) #0 !dbg !2832 {
  %2 = alloca %struct._NICK_REC*, align 8
  %3 = alloca %struct._NICK_REC*, align 8
  store %struct._NICK_REC* %0, %struct._NICK_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %3, metadata !2835, metadata !851), !dbg !2836
  br label %4, !dbg !2837

; <label>:4:                                      ; preds = %15, %1
  %5 = load %struct._NICK_REC*, %struct._NICK_REC** %3, align 8, !dbg !2838
  %6 = icmp ne %struct._NICK_REC* %5, null, !dbg !2840
  br i1 %6, label %7, label %19, !dbg !2841

; <label>:7:                                      ; preds = %4
  %8 = load %struct._GHashTable*, %struct._GHashTable** @printnicks, align 8, !dbg !2842
  %9 = load %struct._NICK_REC*, %struct._NICK_REC** %3, align 8, !dbg !2845
  %10 = bitcast %struct._NICK_REC* %9 to i8*, !dbg !2845
  %11 = call i8* @g_hash_table_lookup(%struct._GHashTable* %8, i8* %10), !dbg !2846
  %12 = icmp eq i8* %11, null, !dbg !2847
  br i1 %12, label %13, label %15, !dbg !2848

; <label>:13:                                     ; preds = %7
  %14 = load %struct._NICK_REC*, %struct._NICK_REC** %3, align 8, !dbg !2849
  store %struct._NICK_REC* %14, %struct._NICK_REC** %2, align 8, !dbg !2850
  br label %20, !dbg !2850

; <label>:15:                                     ; preds = %7
  %16 = load %struct._NICK_REC*, %struct._NICK_REC** %3, align 8, !dbg !2851
  %17 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %16, i32 0, i32 10, !dbg !2852
  %18 = load %struct._NICK_REC*, %struct._NICK_REC** %17, align 8, !dbg !2852
  store %struct._NICK_REC* %18, %struct._NICK_REC** %3, align 8, !dbg !2853
  br label %4, !dbg !2854, !llvm.loop !2856

; <label>:19:                                     ; preds = %4
  store %struct._NICK_REC* null, %struct._NICK_REC** %2, align 8, !dbg !2857
  br label %20, !dbg !2857

; <label>:20:                                     ; preds = %19, %13
  %21 = load %struct._NICK_REC*, %struct._NICK_REC** %2, align 8, !dbg !2858
  ret %struct._NICK_REC* %21, !dbg !2858
}

declare noalias i8* @g_strdup_printf(i8*, ...) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind uwtable
define internal i32 @printnick_exists(%struct._NICK_REC*, %struct._NICK_REC*, i8*) #0 !dbg !2859 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._NICK_REC*, align 8
  %6 = alloca %struct._NICK_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct._NICK_REC* %0, %struct._NICK_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %5, metadata !2862, metadata !851), !dbg !2863
  store %struct._NICK_REC* %1, %struct._NICK_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._NICK_REC** %6, metadata !2864, metadata !851), !dbg !2865
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2866, metadata !851), !dbg !2867
  call void @llvm.dbg.declare(metadata i8** %8, metadata !2868, metadata !851), !dbg !2869
  br label %9, !dbg !2870

; <label>:9:                                      ; preds = %30, %3
  %10 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !2871
  %11 = icmp ne %struct._NICK_REC* %10, null, !dbg !2873
  br i1 %11, label %12, label %34, !dbg !2874

; <label>:12:                                     ; preds = %9
  %13 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !2875
  %14 = load %struct._NICK_REC*, %struct._NICK_REC** %6, align 8, !dbg !2878
  %15 = icmp ne %struct._NICK_REC* %13, %14, !dbg !2879
  br i1 %15, label %16, label %30, !dbg !2880

; <label>:16:                                     ; preds = %12
  %17 = load %struct._GHashTable*, %struct._GHashTable** @printnicks, align 8, !dbg !2881
  %18 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !2883
  %19 = bitcast %struct._NICK_REC* %18 to i8*, !dbg !2883
  %20 = call i8* @g_hash_table_lookup(%struct._GHashTable* %17, i8* %19), !dbg !2884
  store i8* %20, i8** %8, align 8, !dbg !2885
  %21 = load i8*, i8** %8, align 8, !dbg !2886
  %22 = icmp ne i8* %21, null, !dbg !2888
  br i1 %22, label %23, label %29, !dbg !2889

; <label>:23:                                     ; preds = %16
  %24 = load i8*, i8** %8, align 8, !dbg !2890
  %25 = load i8*, i8** %7, align 8, !dbg !2892
  %26 = call i32 @g_strcmp0(i8* %24, i8* %25), !dbg !2893
  %27 = icmp eq i32 %26, 0, !dbg !2894
  br i1 %27, label %28, label %29, !dbg !2895

; <label>:28:                                     ; preds = %23
  store i32 1, i32* %4, align 4, !dbg !2896
  br label %35, !dbg !2896

; <label>:29:                                     ; preds = %23, %16
  br label %30, !dbg !2897

; <label>:30:                                     ; preds = %29, %12
  %31 = load %struct._NICK_REC*, %struct._NICK_REC** %5, align 8, !dbg !2898
  %32 = getelementptr inbounds %struct._NICK_REC, %struct._NICK_REC* %31, i32 0, i32 10, !dbg !2899
  %33 = load %struct._NICK_REC*, %struct._NICK_REC** %32, align 8, !dbg !2899
  store %struct._NICK_REC* %33, %struct._NICK_REC** %5, align 8, !dbg !2900
  br label %9, !dbg !2901, !llvm.loop !2903

; <label>:34:                                     ; preds = %9
  store i32 0, i32* %4, align 4, !dbg !2904
  br label %35, !dbg !2904

; <label>:35:                                     ; preds = %34, %28
  %36 = load i32, i32* %4, align 4, !dbg !2905
  ret i32 %36, !dbg !2905
}

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #2

declare void @g_string_printf(%struct._GString*, i8*, ...) #2

declare i32 @g_hash_table_remove(%struct._GHashTable*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!843, !844}
!llvm.ident = !{!845}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !323, globals: !840)
!1 = !DIFile(filename: "line234-fe-messages.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !10, !15, !24, !35, !50, !81}
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
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !36, line: 46, size: 32, align: 32, elements: !37)
!36 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/lichi/Desktop/irssi/task1")
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49}
!38 = !DIEnumerator(name: "_ISupper", value: 256)
!39 = !DIEnumerator(name: "_ISlower", value: 512)
!40 = !DIEnumerator(name: "_ISalpha", value: 1024)
!41 = !DIEnumerator(name: "_ISdigit", value: 2048)
!42 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!43 = !DIEnumerator(name: "_ISspace", value: 8192)
!44 = !DIEnumerator(name: "_ISprint", value: 16384)
!45 = !DIEnumerator(name: "_ISgraph", value: 32768)
!46 = !DIEnumerator(name: "_ISblank", value: 1)
!47 = !DIEnumerator(name: "_IScntrl", value: 2)
!48 = !DIEnumerator(name: "_ISpunct", value: 4)
!49 = !DIEnumerator(name: "_ISalnum", value: 8)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !51, line: 10, size: 32, align: 32, elements: !52)
!51 = !DIFile(filename: "../../../src/core/levels.h", directory: "/home/lichi/Desktop/irssi/task1")
!52 = !{!53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80}
!53 = !DIEnumerator(name: "MSGLEVEL_CRAP", value: 1)
!54 = !DIEnumerator(name: "MSGLEVEL_MSGS", value: 2)
!55 = !DIEnumerator(name: "MSGLEVEL_PUBLIC", value: 4)
!56 = !DIEnumerator(name: "MSGLEVEL_NOTICES", value: 8)
!57 = !DIEnumerator(name: "MSGLEVEL_SNOTES", value: 16)
!58 = !DIEnumerator(name: "MSGLEVEL_CTCPS", value: 32)
!59 = !DIEnumerator(name: "MSGLEVEL_ACTIONS", value: 64)
!60 = !DIEnumerator(name: "MSGLEVEL_JOINS", value: 128)
!61 = !DIEnumerator(name: "MSGLEVEL_PARTS", value: 256)
!62 = !DIEnumerator(name: "MSGLEVEL_QUITS", value: 512)
!63 = !DIEnumerator(name: "MSGLEVEL_KICKS", value: 1024)
!64 = !DIEnumerator(name: "MSGLEVEL_MODES", value: 2048)
!65 = !DIEnumerator(name: "MSGLEVEL_TOPICS", value: 4096)
!66 = !DIEnumerator(name: "MSGLEVEL_WALLOPS", value: 8192)
!67 = !DIEnumerator(name: "MSGLEVEL_INVITES", value: 16384)
!68 = !DIEnumerator(name: "MSGLEVEL_NICKS", value: 32768)
!69 = !DIEnumerator(name: "MSGLEVEL_DCC", value: 65536)
!70 = !DIEnumerator(name: "MSGLEVEL_DCCMSGS", value: 131072)
!71 = !DIEnumerator(name: "MSGLEVEL_CLIENTNOTICE", value: 262144)
!72 = !DIEnumerator(name: "MSGLEVEL_CLIENTCRAP", value: 524288)
!73 = !DIEnumerator(name: "MSGLEVEL_CLIENTERROR", value: 1048576)
!74 = !DIEnumerator(name: "MSGLEVEL_HILIGHT", value: 2097152)
!75 = !DIEnumerator(name: "MSGLEVEL_ALL", value: 4194303)
!76 = !DIEnumerator(name: "MSGLEVEL_NOHILIGHT", value: 16777216)
!77 = !DIEnumerator(name: "MSGLEVEL_NO_ACT", value: 33554432)
!78 = !DIEnumerator(name: "MSGLEVEL_NEVER", value: 67108864)
!79 = !DIEnumerator(name: "MSGLEVEL_LASTLOG", value: 134217728)
!80 = !DIEnumerator(name: "MSGLEVEL_HIDDEN", value: 268435456)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !82, line: 3, size: 32, align: 32, elements: !83)
!82 = !DIFile(filename: "module-formats.h", directory: "/home/lichi/Desktop/irssi/task1")
!83 = !{!84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322}
!84 = !DIEnumerator(name: "TXT_MODULE_NAME", value: 0)
!85 = !DIEnumerator(name: "TXT_FILL_1", value: 1)
!86 = !DIEnumerator(name: "TXT_LINE_START", value: 2)
!87 = !DIEnumerator(name: "TXT_LINE_START_IRSSI", value: 3)
!88 = !DIEnumerator(name: "TXT_TIMESTAMP", value: 4)
!89 = !DIEnumerator(name: "TXT_SERVERTAG", value: 5)
!90 = !DIEnumerator(name: "TXT_DAYCHANGE", value: 6)
!91 = !DIEnumerator(name: "TXT_TALKING_WITH", value: 7)
!92 = !DIEnumerator(name: "TXT_REFNUM_TOO_LOW", value: 8)
!93 = !DIEnumerator(name: "TXT_ERROR_SERVER_STICKY", value: 9)
!94 = !DIEnumerator(name: "TXT_SET_SERVER_STICKY", value: 10)
!95 = !DIEnumerator(name: "TXT_UNSET_SERVER_STICKY", value: 11)
!96 = !DIEnumerator(name: "TXT_WINDOW_NAME_NOT_UNIQUE", value: 12)
!97 = !DIEnumerator(name: "TXT_WINDOW_LEVEL", value: 13)
!98 = !DIEnumerator(name: "TXT_WINDOW_SET_IMMORTAL", value: 14)
!99 = !DIEnumerator(name: "TXT_WINDOW_UNSET_IMMORTAL", value: 15)
!100 = !DIEnumerator(name: "TXT_WINDOW_IMMORTAL_ERROR", value: 16)
!101 = !DIEnumerator(name: "TXT_WINDOWLIST_HEADER", value: 17)
!102 = !DIEnumerator(name: "TXT_WINDOWLIST_LINE", value: 18)
!103 = !DIEnumerator(name: "TXT_WINDOWLIST_FOOTER", value: 19)
!104 = !DIEnumerator(name: "TXT_WINDOWS_LAYOUT_SAVED", value: 20)
!105 = !DIEnumerator(name: "TXT_WINDOWS_LAYOUT_RESET", value: 21)
!106 = !DIEnumerator(name: "TXT_WINDOW_INFO_HEADER", value: 22)
!107 = !DIEnumerator(name: "TXT_WINDOW_INFO_FOOTER", value: 23)
!108 = !DIEnumerator(name: "TXT_WINDOW_INFO_REFNUM", value: 24)
!109 = !DIEnumerator(name: "TXT_WINDOW_INFO_REFNUM_STICKY", value: 25)
!110 = !DIEnumerator(name: "TXT_WINDOW_INFO_NAME", value: 26)
!111 = !DIEnumerator(name: "TXT_WINDOW_INFO_HISTORY", value: 27)
!112 = !DIEnumerator(name: "TXT_WINDOW_INFO_IMMORTAL", value: 28)
!113 = !DIEnumerator(name: "TXT_WINDOW_INFO_SIZE", value: 29)
!114 = !DIEnumerator(name: "TXT_WINDOW_INFO_LEVEL", value: 30)
!115 = !DIEnumerator(name: "TXT_WINDOW_INFO_SERVER", value: 31)
!116 = !DIEnumerator(name: "TXT_WINDOW_INFO_SERVER_STICKY", value: 32)
!117 = !DIEnumerator(name: "TXT_WINDOW_INFO_THEME", value: 33)
!118 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEMS_HEADER", value: 34)
!119 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEM", value: 35)
!120 = !DIEnumerator(name: "TXT_WINDOW_INFO_BOUND_ITEMS_FOOTER", value: 36)
!121 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEMS_HEADER", value: 37)
!122 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEM", value: 38)
!123 = !DIEnumerator(name: "TXT_WINDOW_INFO_ITEMS_FOOTER", value: 39)
!124 = !DIEnumerator(name: "TXT_FILL_2", value: 40)
!125 = !DIEnumerator(name: "TXT_LOOKING_UP", value: 41)
!126 = !DIEnumerator(name: "TXT_CONNECTING", value: 42)
!127 = !DIEnumerator(name: "TXT_RECONNECTING", value: 43)
!128 = !DIEnumerator(name: "TXT_CONNECTION_ESTABLISHED", value: 44)
!129 = !DIEnumerator(name: "TXT_CANT_CONNECT", value: 45)
!130 = !DIEnumerator(name: "TXT_CONNECTION_LOST", value: 46)
!131 = !DIEnumerator(name: "TXT_LAG_DISCONNECTED", value: 47)
!132 = !DIEnumerator(name: "TXT_DISCONNECTED", value: 48)
!133 = !DIEnumerator(name: "TXT_SERVER_QUIT", value: 49)
!134 = !DIEnumerator(name: "TXT_SERVER_CHANGED", value: 50)
!135 = !DIEnumerator(name: "TXT_UNKNOWN_SERVER_TAG", value: 51)
!136 = !DIEnumerator(name: "TXT_NO_CONNECTED_SERVERS", value: 52)
!137 = !DIEnumerator(name: "TXT_SERVER_LIST", value: 53)
!138 = !DIEnumerator(name: "TXT_SERVER_LOOKUP_LIST", value: 54)
!139 = !DIEnumerator(name: "TXT_SERVER_RECONNECT_LIST", value: 55)
!140 = !DIEnumerator(name: "TXT_RECONNECT_REMOVED", value: 56)
!141 = !DIEnumerator(name: "TXT_RECONNECT_NOT_FOUND", value: 57)
!142 = !DIEnumerator(name: "TXT_SETUPSERVER_ADDED", value: 58)
!143 = !DIEnumerator(name: "TXT_SETUPSERVER_REMOVED", value: 59)
!144 = !DIEnumerator(name: "TXT_SETUPSERVER_NOT_FOUND", value: 60)
!145 = !DIEnumerator(name: "TXT_YOUR_NICK", value: 61)
!146 = !DIEnumerator(name: "TXT_FILL_3", value: 62)
!147 = !DIEnumerator(name: "TXT_JOIN", value: 63)
!148 = !DIEnumerator(name: "TXT_PART", value: 64)
!149 = !DIEnumerator(name: "TXT_KICK", value: 65)
!150 = !DIEnumerator(name: "TXT_QUIT", value: 66)
!151 = !DIEnumerator(name: "TXT_QUIT_ONCE", value: 67)
!152 = !DIEnumerator(name: "TXT_INVITE", value: 68)
!153 = !DIEnumerator(name: "TXT_NOT_INVITED", value: 69)
!154 = !DIEnumerator(name: "TXT_NEW_TOPIC", value: 70)
!155 = !DIEnumerator(name: "TXT_TOPIC_UNSET", value: 71)
!156 = !DIEnumerator(name: "TXT_YOUR_NICK_CHANGED", value: 72)
!157 = !DIEnumerator(name: "TXT_NICK_CHANGED", value: 73)
!158 = !DIEnumerator(name: "TXT_TALKING_IN", value: 74)
!159 = !DIEnumerator(name: "TXT_NOT_IN_CHANNELS", value: 75)
!160 = !DIEnumerator(name: "TXT_CURRENT_CHANNEL", value: 76)
!161 = !DIEnumerator(name: "TXT_NAMES", value: 77)
!162 = !DIEnumerator(name: "TXT_NAMES_PREFIX", value: 78)
!163 = !DIEnumerator(name: "TXT_NAMES_NICK_OP", value: 79)
!164 = !DIEnumerator(name: "TXT_NAMES_NICK_HALFOP", value: 80)
!165 = !DIEnumerator(name: "TXT_NAMES_NICK_VOICE", value: 81)
!166 = !DIEnumerator(name: "TXT_NAMES_NICK", value: 82)
!167 = !DIEnumerator(name: "TXT_ENDOFNAMES", value: 83)
!168 = !DIEnumerator(name: "TXT_CHANLIST_HEADER", value: 84)
!169 = !DIEnumerator(name: "TXT_CHANLIST_LINE", value: 85)
!170 = !DIEnumerator(name: "TXT_CHANSETUP_NOT_FOUND", value: 86)
!171 = !DIEnumerator(name: "TXT_CHANSETUP_ADDED", value: 87)
!172 = !DIEnumerator(name: "TXT_CHANSETUP_REMOVED", value: 88)
!173 = !DIEnumerator(name: "TXT_CHANSETUP_HEADER", value: 89)
!174 = !DIEnumerator(name: "TXT_CHANSETUP_LINE", value: 90)
!175 = !DIEnumerator(name: "TXT_CHANSETUP_FOOTER", value: 91)
!176 = !DIEnumerator(name: "TXT_FILL_4", value: 92)
!177 = !DIEnumerator(name: "TXT_OWN_MSG", value: 93)
!178 = !DIEnumerator(name: "TXT_OWN_MSG_CHANNEL", value: 94)
!179 = !DIEnumerator(name: "TXT_OWN_MSG_PRIVATE", value: 95)
!180 = !DIEnumerator(name: "TXT_OWN_MSG_PRIVATE_QUERY", value: 96)
!181 = !DIEnumerator(name: "TXT_PUBMSG_ME", value: 97)
!182 = !DIEnumerator(name: "TXT_PUBMSG_ME_CHANNEL", value: 98)
!183 = !DIEnumerator(name: "TXT_PUBMSG_HILIGHT", value: 99)
!184 = !DIEnumerator(name: "TXT_PUBMSG_HILIGHT_CHANNEL", value: 100)
!185 = !DIEnumerator(name: "TXT_PUBMSG", value: 101)
!186 = !DIEnumerator(name: "TXT_PUBMSG_CHANNEL", value: 102)
!187 = !DIEnumerator(name: "TXT_MSG_PRIVATE", value: 103)
!188 = !DIEnumerator(name: "TXT_MSG_PRIVATE_QUERY", value: 104)
!189 = !DIEnumerator(name: "TXT_NO_MSGS_GOT", value: 105)
!190 = !DIEnumerator(name: "TXT_NO_MSGS_SENT", value: 106)
!191 = !DIEnumerator(name: "TXT_FILL_5", value: 107)
!192 = !DIEnumerator(name: "TXT_QUERY_START", value: 108)
!193 = !DIEnumerator(name: "TXT_QUERY_STOP", value: 109)
!194 = !DIEnumerator(name: "TXT_NO_QUERY", value: 110)
!195 = !DIEnumerator(name: "TXT_QUERY_SERVER_CHANGED", value: 111)
!196 = !DIEnumerator(name: "TXT_FILL_6", value: 112)
!197 = !DIEnumerator(name: "TXT_HILIGHT_HEADER", value: 113)
!198 = !DIEnumerator(name: "TXT_HILIGHT_LINE", value: 114)
!199 = !DIEnumerator(name: "TXT_HILIGHT_FOOTER", value: 115)
!200 = !DIEnumerator(name: "TXT_HILIGHT_NOT_FOUND", value: 116)
!201 = !DIEnumerator(name: "TXT_HILIGHT_REMOVED", value: 117)
!202 = !DIEnumerator(name: "TXT_FILL_7", value: 118)
!203 = !DIEnumerator(name: "TXT_ALIAS_ADDED", value: 119)
!204 = !DIEnumerator(name: "TXT_ALIAS_REMOVED", value: 120)
!205 = !DIEnumerator(name: "TXT_ALIAS_NOT_FOUND", value: 121)
!206 = !DIEnumerator(name: "TXT_ALIASLIST_HEADER", value: 122)
!207 = !DIEnumerator(name: "TXT_ALIASLIST_LINE", value: 123)
!208 = !DIEnumerator(name: "TXT_ALIASLIST_FOOTER", value: 124)
!209 = !DIEnumerator(name: "TXT_FILL_8", value: 125)
!210 = !DIEnumerator(name: "TXT_LOG_OPENED", value: 126)
!211 = !DIEnumerator(name: "TXT_LOG_CLOSED", value: 127)
!212 = !DIEnumerator(name: "TXT_LOG_CREATE_FAILED", value: 128)
!213 = !DIEnumerator(name: "TXT_LOG_LOCKED", value: 129)
!214 = !DIEnumerator(name: "TXT_LOG_NOT_OPEN", value: 130)
!215 = !DIEnumerator(name: "TXT_LOG_STARTED", value: 131)
!216 = !DIEnumerator(name: "TXT_LOG_STOPPED", value: 132)
!217 = !DIEnumerator(name: "TXT_LOG_LIST_HEADER", value: 133)
!218 = !DIEnumerator(name: "TXT_LOG_LIST", value: 134)
!219 = !DIEnumerator(name: "TXT_LOG_LIST_FOOTER", value: 135)
!220 = !DIEnumerator(name: "TXT_WINDOWLOG_FILE", value: 136)
!221 = !DIEnumerator(name: "TXT_WINDOWLOG_FILE_LOGGING", value: 137)
!222 = !DIEnumerator(name: "TXT_LOG_NO_AWAY_MSGS", value: 138)
!223 = !DIEnumerator(name: "TXT_LOG_AWAY_MSGS", value: 139)
!224 = !DIEnumerator(name: "TXT_FILL_9", value: 140)
!225 = !DIEnumerator(name: "TXT_MODULE_HEADER", value: 141)
!226 = !DIEnumerator(name: "TXT_MODULE_LINE", value: 142)
!227 = !DIEnumerator(name: "TXT_MODULE_FOOTER", value: 143)
!228 = !DIEnumerator(name: "TXT_MODULE_ALREADY_LOADED", value: 144)
!229 = !DIEnumerator(name: "TXT_MODULE_NOT_LOADED", value: 145)
!230 = !DIEnumerator(name: "TXT_MODULE_LOAD_ERROR", value: 146)
!231 = !DIEnumerator(name: "TXT_MODULE_VERSION_MISMATCH", value: 147)
!232 = !DIEnumerator(name: "TXT_MODULE_INVALID", value: 148)
!233 = !DIEnumerator(name: "TXT_MODULE_LOADED", value: 149)
!234 = !DIEnumerator(name: "TXT_MODULE_UNLOADED", value: 150)
!235 = !DIEnumerator(name: "TXT_FILL_10", value: 151)
!236 = !DIEnumerator(name: "TXT_COMMAND_UNKNOWN", value: 152)
!237 = !DIEnumerator(name: "TXT_COMMAND_AMBIGUOUS", value: 153)
!238 = !DIEnumerator(name: "TXT_OPTION_UNKNOWN", value: 154)
!239 = !DIEnumerator(name: "TXT_OPTION_AMBIGUOUS", value: 155)
!240 = !DIEnumerator(name: "TXT_OPTION_MISSING_ARG", value: 156)
!241 = !DIEnumerator(name: "TXT_NOT_ENOUGH_PARAMS", value: 157)
!242 = !DIEnumerator(name: "TXT_NOT_CONNECTED", value: 158)
!243 = !DIEnumerator(name: "TXT_NOT_JOINED", value: 159)
!244 = !DIEnumerator(name: "TXT_CHAN_NOT_FOUND", value: 160)
!245 = !DIEnumerator(name: "TXT_CHAN_NOT_SYNCED", value: 161)
!246 = !DIEnumerator(name: "TXT_ILLEGAL_PROTO", value: 162)
!247 = !DIEnumerator(name: "TXT_NOT_GOOD_IDEA", value: 163)
!248 = !DIEnumerator(name: "TXT_INVALID_NUMBER", value: 164)
!249 = !DIEnumerator(name: "TXT_INVALID_TIME", value: 165)
!250 = !DIEnumerator(name: "TXT_INVALID_LEVEL", value: 166)
!251 = !DIEnumerator(name: "TXT_INVALID_SIZE", value: 167)
!252 = !DIEnumerator(name: "TXT_INVALID_CHARSET", value: 168)
!253 = !DIEnumerator(name: "TXT_INVALID_CHOICE", value: 169)
!254 = !DIEnumerator(name: "TXT_EVAL_MAX_RECURSE", value: 170)
!255 = !DIEnumerator(name: "TXT_PROGRAM_NOT_FOUND", value: 171)
!256 = !DIEnumerator(name: "TXT_NO_SERVER_DEFINED", value: 172)
!257 = !DIEnumerator(name: "TXT_FILL_11", value: 173)
!258 = !DIEnumerator(name: "TXT_THEME_SAVED", value: 174)
!259 = !DIEnumerator(name: "TXT_THEME_SAVE_FAILED", value: 175)
!260 = !DIEnumerator(name: "TXT_THEME_NOT_FOUND", value: 176)
!261 = !DIEnumerator(name: "TXT_THEME_CHANGED", value: 177)
!262 = !DIEnumerator(name: "TXT_WINDOW_THEME", value: 178)
!263 = !DIEnumerator(name: "TXT_WINDOW_THEME_DEFAULT", value: 179)
!264 = !DIEnumerator(name: "TXT_WINDOW_THEME_CHANGED", value: 180)
!265 = !DIEnumerator(name: "TXT_WINDOW_THEME_REMOVED", value: 181)
!266 = !DIEnumerator(name: "TXT_FORMAT_TITLE", value: 182)
!267 = !DIEnumerator(name: "TXT_FORMAT_SUBTITLE", value: 183)
!268 = !DIEnumerator(name: "TXT_FORMAT_ITEM", value: 184)
!269 = !DIEnumerator(name: "TXT_FILL_12", value: 185)
!270 = !DIEnumerator(name: "TXT_IGNORED", value: 186)
!271 = !DIEnumerator(name: "TXT_IGNORED_OPTIONS", value: 187)
!272 = !DIEnumerator(name: "TXT_UNIGNORED", value: 188)
!273 = !DIEnumerator(name: "TXT_IGNORE_NOT_FOUND", value: 189)
!274 = !DIEnumerator(name: "TXT_IGNORE_NO_IGNORES", value: 190)
!275 = !DIEnumerator(name: "TXT_IGNORE_HEADER", value: 191)
!276 = !DIEnumerator(name: "TXT_IGNORE_LINE", value: 192)
!277 = !DIEnumerator(name: "TXT_IGNORE_FOOTER", value: 193)
!278 = !DIEnumerator(name: "TXT_FILL_13", value: 194)
!279 = !DIEnumerator(name: "TXT_NOT_CHANNEL_OR_QUERY", value: 195)
!280 = !DIEnumerator(name: "TXT_CONVERSION_ADDED", value: 196)
!281 = !DIEnumerator(name: "TXT_CONVERSION_REMOVED", value: 197)
!282 = !DIEnumerator(name: "TXT_CONVERSION_NOT_FOUND", value: 198)
!283 = !DIEnumerator(name: "TXT_CONVERSION_NO_TRANSLITS", value: 199)
!284 = !DIEnumerator(name: "TXT_RECODE_HEADER", value: 200)
!285 = !DIEnumerator(name: "TXT_RECODE_LINE", value: 201)
!286 = !DIEnumerator(name: "TXT_FILL_14", value: 202)
!287 = !DIEnumerator(name: "TXT_UNKNOWN_CHAT_PROTOCOL", value: 203)
!288 = !DIEnumerator(name: "TXT_UNKNOWN_CHATNET", value: 204)
!289 = !DIEnumerator(name: "TXT_NOT_TOGGLE", value: 205)
!290 = !DIEnumerator(name: "TXT_PERL_ERROR", value: 206)
!291 = !DIEnumerator(name: "TXT_BIND_HEADER", value: 207)
!292 = !DIEnumerator(name: "TXT_BIND_LIST", value: 208)
!293 = !DIEnumerator(name: "TXT_BIND_COMMAND_LIST", value: 209)
!294 = !DIEnumerator(name: "TXT_BIND_FOOTER", value: 210)
!295 = !DIEnumerator(name: "TXT_BIND_UNKNOWN_ID", value: 211)
!296 = !DIEnumerator(name: "TXT_CONFIG_SAVED", value: 212)
!297 = !DIEnumerator(name: "TXT_CONFIG_RELOADED", value: 213)
!298 = !DIEnumerator(name: "TXT_CONFIG_MODIFIED", value: 214)
!299 = !DIEnumerator(name: "TXT_GLIB_ERROR", value: 215)
!300 = !DIEnumerator(name: "TXT_OVERWRITE_CONFIG", value: 216)
!301 = !DIEnumerator(name: "TXT_SET_TITLE", value: 217)
!302 = !DIEnumerator(name: "TXT_SET_ITEM", value: 218)
!303 = !DIEnumerator(name: "TXT_SET_UNKNOWN", value: 219)
!304 = !DIEnumerator(name: "TXT_SET_NOT_BOOLEAN", value: 220)
!305 = !DIEnumerator(name: "TXT_NO_COMPLETIONS", value: 221)
!306 = !DIEnumerator(name: "TXT_COMPLETION_REMOVED", value: 222)
!307 = !DIEnumerator(name: "TXT_COMPLETION_HEADER", value: 223)
!308 = !DIEnumerator(name: "TXT_COMPLETION_LINE", value: 224)
!309 = !DIEnumerator(name: "TXT_COMPLETION_FOOTER", value: 225)
!310 = !DIEnumerator(name: "TXT_CAPSICUM_ENABLED", value: 226)
!311 = !DIEnumerator(name: "TXT_CAPSICUM_DISABLED", value: 227)
!312 = !DIEnumerator(name: "TXT_CAPSICUM_FAILED", value: 228)
!313 = !DIEnumerator(name: "TLS_FILL_15", value: 229)
!314 = !DIEnumerator(name: "TXT_TLS_EPHEMERAL_KEY", value: 230)
!315 = !DIEnumerator(name: "TXT_TLS_EPHEMERAL_KEY_UNAVAILBLE", value: 231)
!316 = !DIEnumerator(name: "TXT_TLS_PUBKEY", value: 232)
!317 = !DIEnumerator(name: "TXT_TLS_CERT_HEADER", value: 233)
!318 = !DIEnumerator(name: "TXT_TLS_CERT_SUBJECT", value: 234)
!319 = !DIEnumerator(name: "TXT_TLS_CERT_ISSUER", value: 235)
!320 = !DIEnumerator(name: "TXT_TLS_PUBKEY_FINGERPRINT", value: 236)
!321 = !DIEnumerator(name: "TXT_TLS_CERT_FINGERPRINT", value: 237)
!322 = !DIEnumerator(name: "TXT_TLS_PROTOCOL_VERSION", value: 238)
!323 = !{!324, !325, !329, !331, !332, !333, !334, !774, !781, !785, !790, !687, !794}
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64, align: 64)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !327, line: 46, baseType: !328)
!327 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!328 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64, align: 64)
!330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !328)
!331 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!332 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!333 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64, align: 64)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !336, line: 109, baseType: !337)
!336 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !338, line: 15, size: 1408, align: 64, elements: !339)
!338 = !DIFile(filename: "../../../src/core/channels.h", directory: "/home/lichi/Desktop/irssi/task1")
!339 = !{!340, !342, !343, !348, !349, !719, !720, !721, !722, !723, !724, !725, !726, !728, !729, !730, !731, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !337, file: !341, line: 3, baseType: !332, size: 32, align: 32)
!341 = !DIFile(filename: "../../../src/core/window-item-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!342 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !337, file: !341, line: 4, baseType: !332, size: 32, align: 32, offset: 32)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !337, file: !341, line: 5, baseType: !344, size: 64, align: 64, offset: 64)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64, align: 64)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !346, line: 37, baseType: !347)
!346 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!347 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !346, line: 37, flags: DIFlagFwdDecl)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !337, file: !341, line: 7, baseType: !324, size: 64, align: 64, offset: 128)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !337, file: !341, line: 8, baseType: !350, size: 64, align: 64, offset: 192)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64, align: 64)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !336, line: 107, baseType: !352)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !353, line: 30, size: 2240, align: 64, elements: !354)
!353 = !DIFile(filename: "../../../src/core/servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!354 = !{!355, !357, !358, !359, !588, !593, !594, !595, !596, !597, !598, !599, !600, !601, !605, !606, !610, !611, !612, !616, !617, !618, !619, !620, !621, !622, !623, !624, !631, !632, !633, !634, !635, !639, !643, !647, !651, !655, !660, !664, !714, !718}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !352, file: !356, line: 3, baseType: !332, size: 32, align: 32)
!356 = !DIFile(filename: "../../../src/core/server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!357 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !352, file: !356, line: 4, baseType: !332, size: 32, align: 32, offset: 32)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !352, file: !356, line: 6, baseType: !332, size: 32, align: 32, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !352, file: !356, line: 8, baseType: !360, size: 64, align: 64, offset: 128)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64, align: 64)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !336, line: 113, baseType: !362)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !353, line: 25, size: 1920, align: 64, elements: !363)
!363 = !{!364, !366, !367, !368, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !362, file: !365, line: 3, baseType: !332, size: 32, align: 32)
!365 = !DIFile(filename: "../../../src/core/server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!366 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !362, file: !365, line: 4, baseType: !332, size: 32, align: 32, offset: 32)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !362, file: !365, line: 6, baseType: !332, size: 32, align: 32, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !362, file: !365, line: 9, baseType: !369, size: 64, align: 64, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64, align: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !362, file: !365, line: 10, baseType: !332, size: 32, align: 32, offset: 192)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !362, file: !365, line: 11, baseType: !369, size: 64, align: 64, offset: 256)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !362, file: !365, line: 11, baseType: !369, size: 64, align: 64, offset: 320)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !362, file: !365, line: 11, baseType: !369, size: 64, align: 64, offset: 384)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !362, file: !365, line: 13, baseType: !333, size: 16, align: 16, offset: 448)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !362, file: !365, line: 14, baseType: !369, size: 64, align: 64, offset: 512)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !362, file: !365, line: 15, baseType: !369, size: 64, align: 64, offset: 576)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !362, file: !365, line: 16, baseType: !332, size: 32, align: 32, offset: 640)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !362, file: !365, line: 17, baseType: !369, size: 64, align: 64, offset: 704)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !362, file: !365, line: 19, baseType: !380, size: 64, align: 64, offset: 768)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64, align: 64)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !336, line: 99, baseType: !382)
!382 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !336, line: 99, flags: DIFlagFwdDecl)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !362, file: !365, line: 19, baseType: !380, size: 64, align: 64, offset: 832)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !362, file: !365, line: 21, baseType: !369, size: 64, align: 64, offset: 896)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !362, file: !365, line: 22, baseType: !369, size: 64, align: 64, offset: 960)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !362, file: !365, line: 23, baseType: !369, size: 64, align: 64, offset: 1024)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !362, file: !365, line: 24, baseType: !369, size: 64, align: 64, offset: 1088)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !362, file: !365, line: 26, baseType: !369, size: 64, align: 64, offset: 1152)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !362, file: !365, line: 27, baseType: !369, size: 64, align: 64, offset: 1216)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !362, file: !365, line: 28, baseType: !369, size: 64, align: 64, offset: 1280)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !362, file: !365, line: 29, baseType: !369, size: 64, align: 64, offset: 1344)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !362, file: !365, line: 30, baseType: !369, size: 64, align: 64, offset: 1408)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !362, file: !365, line: 31, baseType: !369, size: 64, align: 64, offset: 1472)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !362, file: !365, line: 32, baseType: !369, size: 64, align: 64, offset: 1536)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !362, file: !365, line: 33, baseType: !369, size: 64, align: 64, offset: 1600)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !362, file: !365, line: 35, baseType: !397, size: 64, align: 64, offset: 1664)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64, align: 64)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !4, line: 41, baseType: !399)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !4, line: 97, size: 896, align: 64, elements: !400)
!400 = !{!401, !403, !545, !546, !551, !552, !553, !554, !555, !564, !565, !566, !570, !571, !572, !573, !574, !575, !576, !577}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !399, file: !4, line: 100, baseType: !402, size: 32, align: 32)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !327, line: 49, baseType: !332)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !399, file: !4, line: 101, baseType: !404, size: 64, align: 64, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64, align: 64)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !4, line: 42, baseType: !406)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !4, line: 131, size: 512, align: 64, elements: !407)
!407 = !{!408, !430, !436, !443, !447, !532, !536, !541}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !406, file: !4, line: 133, baseType: !409, size: 64, align: 64)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64, align: 64)
!410 = !DISubroutineType(types: !411)
!411 = !{!412, !397, !325, !413, !416, !417}
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !4, line: 75, baseType: !3)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !414, line: 66, baseType: !415)
!414 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!415 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64, align: 64)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64, align: 64)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64, align: 64)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !420, line: 42, baseType: !421)
!420 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !420, line: 44, size: 128, align: 64, elements: !422)
!422 = !{!423, !428, !429}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !421, file: !420, line: 46, baseType: !424, size: 32, align: 32)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !425, line: 36, baseType: !426)
!425 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !414, line: 45, baseType: !427)
!427 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !421, file: !420, line: 47, baseType: !402, size: 32, align: 32, offset: 32)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !421, file: !420, line: 48, baseType: !325, size: 64, align: 64, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !406, file: !4, line: 138, baseType: !431, size: 64, align: 64, offset: 64)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64, align: 64)
!432 = !DISubroutineType(types: !433)
!433 = !{!412, !397, !434, !413, !416, !417}
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64, align: 64)
!435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !326)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !406, file: !4, line: 143, baseType: !437, size: 64, align: 64, offset: 128)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64, align: 64)
!438 = !DISubroutineType(types: !439)
!439 = !{!412, !397, !440, !442, !417}
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !414, line: 51, baseType: !441)
!441 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !4, line: 82, baseType: !10)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !406, file: !4, line: 147, baseType: !444, size: 64, align: 64, offset: 192)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64, align: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{!412, !397, !417}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !406, file: !4, line: 149, baseType: !448, size: 64, align: 64, offset: 256)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64, align: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{!451, !397, !531}
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64, align: 64)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !16, line: 64, baseType: !453)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !16, line: 171, size: 768, align: 64, elements: !454)
!454 = !{!455, !457, !478, !507, !509, !513, !514, !515, !516, !524, !525, !526, !527}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !453, file: !16, line: 174, baseType: !456, size: 64, align: 64)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !327, line: 77, baseType: !324)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !453, file: !16, line: 175, baseType: !458, size: 64, align: 64, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64, align: 64)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !16, line: 77, baseType: !460)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !16, line: 196, size: 192, align: 64, elements: !461)
!461 = !{!462, !466, !467}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !460, file: !16, line: 198, baseType: !463, size: 64, align: 64)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64, align: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{null, !456}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !460, file: !16, line: 199, baseType: !463, size: 64, align: 64, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !460, file: !16, line: 200, baseType: !468, size: 64, align: 64, offset: 128)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64, align: 64)
!469 = !DISubroutineType(types: !470)
!470 = !{null, !456, !451, !471, !477}
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64, align: 64)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !16, line: 155, baseType: !473)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64, align: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{!476, !456}
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !327, line: 50, baseType: !402)
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64, align: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !453, file: !16, line: 177, baseType: !479, size: 64, align: 64, offset: 128)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64, align: 64)
!480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !481)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !16, line: 130, baseType: !482)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !16, line: 214, size: 384, align: 64, elements: !483)
!483 = !{!484, !489, !493, !497, !501, !502}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !482, file: !16, line: 216, baseType: !485, size: 64, align: 64)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64, align: 64)
!486 = !DISubroutineType(types: !487)
!487 = !{!476, !451, !488}
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64, align: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !482, file: !16, line: 218, baseType: !490, size: 64, align: 64, offset: 64)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64, align: 64)
!491 = !DISubroutineType(types: !492)
!492 = !{!476, !451}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !482, file: !16, line: 219, baseType: !494, size: 64, align: 64, offset: 128)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64, align: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{!476, !451, !472, !456}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !482, file: !16, line: 222, baseType: !498, size: 64, align: 64, offset: 192)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64, align: 64)
!499 = !DISubroutineType(types: !500)
!500 = !{null, !451}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !482, file: !16, line: 226, baseType: !472, size: 64, align: 64, offset: 256)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !482, file: !16, line: 227, baseType: !503, size: 64, align: 64, offset: 320)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !16, line: 212, baseType: !504)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64, align: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{null}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !453, file: !16, line: 178, baseType: !508, size: 32, align: 32, offset: 192)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !327, line: 55, baseType: !427)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !453, file: !16, line: 180, baseType: !510, size: 64, align: 64, offset: 256)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64, align: 64)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !16, line: 48, baseType: !512)
!512 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !16, line: 48, flags: DIFlagFwdDecl)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !453, file: !16, line: 182, baseType: !402, size: 32, align: 32, offset: 320)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !453, file: !16, line: 183, baseType: !508, size: 32, align: 32, offset: 352)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !453, file: !16, line: 184, baseType: !508, size: 32, align: 32, offset: 384)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !453, file: !16, line: 186, baseType: !517, size: 64, align: 64, offset: 448)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64, align: 64)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !519, line: 37, baseType: !520)
!519 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !519, line: 39, size: 128, align: 64, elements: !521)
!521 = !{!522, !523}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !520, file: !519, line: 41, baseType: !456, size: 64, align: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !520, file: !519, line: 42, baseType: !517, size: 64, align: 64, offset: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !453, file: !16, line: 188, baseType: !451, size: 64, align: 64, offset: 512)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !453, file: !16, line: 189, baseType: !451, size: 64, align: 64, offset: 576)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !453, file: !16, line: 191, baseType: !369, size: 64, align: 64, offset: 640)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !453, file: !16, line: 193, baseType: !528, size: 64, align: 64, offset: 704)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64, align: 64)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !16, line: 65, baseType: !530)
!530 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !16, line: 65, flags: DIFlagFwdDecl)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !16, line: 39, baseType: !15)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !406, file: !4, line: 151, baseType: !533, size: 64, align: 64, offset: 320)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64, align: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{null, !397}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !406, file: !4, line: 152, baseType: !537, size: 64, align: 64, offset: 384)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64, align: 64)
!538 = !DISubroutineType(types: !539)
!539 = !{!412, !397, !540, !417}
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !4, line: 95, baseType: !24)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !406, file: !4, line: 155, baseType: !542, size: 64, align: 64, offset: 448)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64, align: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{!540, !397}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !399, file: !4, line: 103, baseType: !325, size: 64, align: 64, offset: 128)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !399, file: !4, line: 104, baseType: !547, size: 64, align: 64, offset: 192)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !548, line: 77, baseType: !549)
!548 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64, align: 64)
!550 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !548, line: 77, flags: DIFlagFwdDecl)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !399, file: !4, line: 105, baseType: !547, size: 64, align: 64, offset: 256)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !399, file: !4, line: 106, baseType: !325, size: 64, align: 64, offset: 320)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !399, file: !4, line: 107, baseType: !508, size: 32, align: 32, offset: 384)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !399, file: !4, line: 109, baseType: !413, size: 64, align: 64, offset: 448)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !399, file: !4, line: 110, baseType: !556, size: 64, align: 64, offset: 512)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64, align: 64)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !558, line: 39, baseType: !559)
!558 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !558, line: 41, size: 192, align: 64, elements: !560)
!560 = !{!561, !562, !563}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !559, file: !558, line: 43, baseType: !325, size: 64, align: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !559, file: !558, line: 44, baseType: !413, size: 64, align: 64, offset: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !559, file: !558, line: 45, baseType: !413, size: 64, align: 64, offset: 128)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !399, file: !4, line: 111, baseType: !556, size: 64, align: 64, offset: 576)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !399, file: !4, line: 112, baseType: !556, size: 64, align: 64, offset: 640)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !399, file: !4, line: 113, baseType: !567, size: 48, align: 8, offset: 704)
!567 = !DICompositeType(tag: DW_TAG_array_type, baseType: !326, size: 48, align: 8, elements: !568)
!568 = !{!569}
!569 = !DISubrange(count: 6)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !399, file: !4, line: 117, baseType: !508, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !399, file: !4, line: 118, baseType: !508, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !399, file: !4, line: 119, baseType: !508, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !399, file: !4, line: 120, baseType: !508, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !399, file: !4, line: 121, baseType: !508, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !399, file: !4, line: 122, baseType: !508, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !399, file: !4, line: 124, baseType: !456, size: 64, align: 64, offset: 768)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !399, file: !4, line: 125, baseType: !456, size: 64, align: 64, offset: 832)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !362, file: !365, line: 38, baseType: !427, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !362, file: !365, line: 39, baseType: !427, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !362, file: !365, line: 40, baseType: !427, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !362, file: !365, line: 41, baseType: !427, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !362, file: !365, line: 42, baseType: !427, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !362, file: !365, line: 43, baseType: !427, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !362, file: !365, line: 44, baseType: !427, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !362, file: !365, line: 45, baseType: !427, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !362, file: !365, line: 46, baseType: !369, size: 64, align: 64, offset: 1792)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !362, file: !365, line: 47, baseType: !369, size: 64, align: 64, offset: 1856)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !352, file: !356, line: 9, baseType: !589, size: 64, align: 64, offset: 192)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !590, line: 75, baseType: !591)
!590 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !592, line: 139, baseType: !441)
!592 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!593 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !352, file: !356, line: 10, baseType: !589, size: 64, align: 64, offset: 256)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !352, file: !356, line: 12, baseType: !369, size: 64, align: 64, offset: 320)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !352, file: !356, line: 13, baseType: !369, size: 64, align: 64, offset: 384)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !352, file: !356, line: 15, baseType: !427, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !352, file: !356, line: 16, baseType: !427, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !352, file: !356, line: 17, baseType: !427, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !352, file: !356, line: 18, baseType: !427, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !352, file: !356, line: 19, baseType: !427, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !352, file: !356, line: 21, baseType: !602, size: 64, align: 64, offset: 512)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64, align: 64)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !336, line: 102, baseType: !604)
!604 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !336, line: 102, flags: DIFlagFwdDecl)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !352, file: !356, line: 22, baseType: !332, size: 32, align: 32, offset: 576)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !352, file: !356, line: 25, baseType: !607, size: 128, align: 64, offset: 640)
!607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 128, align: 64, elements: !608)
!608 = !{!609}
!609 = !DISubrange(count: 2)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !352, file: !356, line: 26, baseType: !332, size: 32, align: 32, offset: 768)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !352, file: !356, line: 27, baseType: !332, size: 32, align: 32, offset: 800)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !352, file: !356, line: 29, baseType: !613, size: 64, align: 64, offset: 832)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64, align: 64)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !336, line: 103, baseType: !615)
!615 = !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !336, line: 103, flags: DIFlagFwdDecl)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !352, file: !356, line: 30, baseType: !344, size: 64, align: 64, offset: 896)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !352, file: !356, line: 32, baseType: !369, size: 64, align: 64, offset: 960)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !352, file: !356, line: 33, baseType: !369, size: 64, align: 64, offset: 1024)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !352, file: !356, line: 34, baseType: !369, size: 64, align: 64, offset: 1088)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !352, file: !356, line: 35, baseType: !427, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !352, file: !356, line: 36, baseType: !427, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !352, file: !356, line: 37, baseType: !427, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !352, file: !356, line: 38, baseType: !427, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !352, file: !356, line: 40, baseType: !625, size: 128, align: 64, offset: 1216)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !327, line: 504, baseType: !626)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !327, line: 506, size: 128, align: 64, elements: !627)
!627 = !{!628, !630}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !626, file: !327, line: 508, baseType: !629, size: 64, align: 64)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !327, line: 48, baseType: !441)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !626, file: !327, line: 509, baseType: !629, size: 64, align: 64, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !352, file: !356, line: 41, baseType: !589, size: 64, align: 64, offset: 1344)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !352, file: !356, line: 42, baseType: !332, size: 32, align: 32, offset: 1408)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !352, file: !356, line: 44, baseType: !517, size: 64, align: 64, offset: 1472)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !352, file: !356, line: 45, baseType: !517, size: 64, align: 64, offset: 1536)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !352, file: !356, line: 53, baseType: !636, size: 64, align: 64, offset: 1600)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64, align: 64)
!637 = !DISubroutineType(types: !638)
!638 = !{null, !350, !329, !332}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !352, file: !356, line: 55, baseType: !640, size: 64, align: 64, offset: 1664)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64, align: 64)
!641 = !DISubroutineType(types: !642)
!642 = !{!332, !350, !328}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !352, file: !356, line: 57, baseType: !644, size: 64, align: 64, offset: 1728)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64, align: 64)
!645 = !DISubroutineType(types: !646)
!646 = !{!332, !350, !329}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !352, file: !356, line: 60, baseType: !648, size: 64, align: 64, offset: 1792)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64, align: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{!329, !350}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !352, file: !356, line: 62, baseType: !652, size: 64, align: 64, offset: 1856)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64, align: 64)
!653 = !DISubroutineType(types: !654)
!654 = !{null, !350, !329, !329, !332}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !352, file: !356, line: 65, baseType: !656, size: 64, align: 64, offset: 1920)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64, align: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{!659, !350, !329, !329}
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64, align: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !352, file: !356, line: 69, baseType: !661, size: 64, align: 64, offset: 1984)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64, align: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{!334, !350, !329}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !352, file: !356, line: 70, baseType: !665, size: 64, align: 64, offset: 2048)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64, align: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{!668, !350, !329}
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64, align: 64)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !336, line: 110, baseType: !670)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !671, line: 15, size: 960, align: 64, elements: !672)
!671 = !DIFile(filename: "../../../src/core/queries.h", directory: "/home/lichi/Desktop/irssi/task1")
!672 = !{!673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !707, !708, !710, !711, !712, !713}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !670, file: !341, line: 3, baseType: !332, size: 32, align: 32)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !670, file: !341, line: 4, baseType: !332, size: 32, align: 32, offset: 32)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !670, file: !341, line: 5, baseType: !344, size: 64, align: 64, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !670, file: !341, line: 7, baseType: !324, size: 64, align: 64, offset: 128)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !670, file: !341, line: 8, baseType: !350, size: 64, align: 64, offset: 192)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !670, file: !341, line: 9, baseType: !369, size: 64, align: 64, offset: 256)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !670, file: !341, line: 10, baseType: !369, size: 64, align: 64, offset: 320)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !670, file: !341, line: 11, baseType: !589, size: 64, align: 64, offset: 384)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !670, file: !341, line: 12, baseType: !332, size: 32, align: 32, offset: 448)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !670, file: !341, line: 13, baseType: !369, size: 64, align: 64, offset: 512)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !670, file: !341, line: 15, baseType: !684, size: 64, align: 64, offset: 576)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64, align: 64)
!685 = !DISubroutineType(types: !686)
!686 = !{null, !687}
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64, align: 64)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "WI_ITEM_REC", file: !336, line: 108, baseType: !689)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WI_ITEM_REC", file: !690, line: 5, size: 704, align: 64, elements: !691)
!690 = !DIFile(filename: "../../../src/core/window-item-def.h", directory: "/home/lichi/Desktop/irssi/task1")
!691 = !{!692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !689, file: !341, line: 3, baseType: !332, size: 32, align: 32)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !689, file: !341, line: 4, baseType: !332, size: 32, align: 32, offset: 32)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !689, file: !341, line: 5, baseType: !344, size: 64, align: 64, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !689, file: !341, line: 7, baseType: !324, size: 64, align: 64, offset: 128)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !689, file: !341, line: 8, baseType: !350, size: 64, align: 64, offset: 192)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !689, file: !341, line: 9, baseType: !369, size: 64, align: 64, offset: 256)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !689, file: !341, line: 10, baseType: !369, size: 64, align: 64, offset: 320)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !689, file: !341, line: 11, baseType: !589, size: 64, align: 64, offset: 384)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !689, file: !341, line: 12, baseType: !332, size: 32, align: 32, offset: 448)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !689, file: !341, line: 13, baseType: !369, size: 64, align: 64, offset: 512)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !689, file: !341, line: 15, baseType: !684, size: 64, align: 64, offset: 576)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !689, file: !341, line: 17, baseType: !704, size: 64, align: 64, offset: 640)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64, align: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{!329, !687}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !670, file: !341, line: 17, baseType: !704, size: 64, align: 64, offset: 640)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !670, file: !709, line: 5, baseType: !369, size: 64, align: 64, offset: 704)
!709 = !DIFile(filename: "../../../src/core/query-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!710 = !DIDerivedType(tag: DW_TAG_member, name: "server_tag", scope: !670, file: !709, line: 6, baseType: !369, size: 64, align: 64, offset: 768)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "last_unread_msg", scope: !670, file: !709, line: 7, baseType: !589, size: 64, align: 64, offset: 832)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "unwanted", scope: !670, file: !709, line: 9, baseType: !427, size: 1, align: 32, offset: 896, flags: DIFlagBitField, extraData: i64 896)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !670, file: !709, line: 11, baseType: !427, size: 1, align: 32, offset: 897, flags: DIFlagBitField, extraData: i64 896)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !352, file: !356, line: 71, baseType: !715, size: 64, align: 64, offset: 2112)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64, align: 64)
!716 = !DISubroutineType(types: !717)
!717 = !{!332, !329, !329}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !352, file: !356, line: 73, baseType: !715, size: 64, align: 64, offset: 2176)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "visible_name", scope: !337, file: !341, line: 9, baseType: !369, size: 64, align: 64, offset: 256)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !337, file: !341, line: 10, baseType: !369, size: 64, align: 64, offset: 320)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "createtime", scope: !337, file: !341, line: 11, baseType: !589, size: 64, align: 64, offset: 384)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !337, file: !341, line: 12, baseType: !332, size: 32, align: 32, offset: 448)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !337, file: !341, line: 13, baseType: !369, size: 64, align: 64, offset: 512)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !337, file: !341, line: 15, baseType: !684, size: 64, align: 64, offset: 576)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "get_target", scope: !337, file: !341, line: 17, baseType: !704, size: 64, align: 64, offset: 640)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "topic", scope: !337, file: !727, line: 5, baseType: !369, size: 64, align: 64, offset: 704)
!727 = !DIFile(filename: "../../../src/core/channel-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!728 = !DIDerivedType(tag: DW_TAG_member, name: "topic_by", scope: !337, file: !727, line: 6, baseType: !369, size: 64, align: 64, offset: 768)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "topic_time", scope: !337, file: !727, line: 7, baseType: !589, size: 64, align: 64, offset: 832)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "nicks", scope: !337, file: !727, line: 9, baseType: !344, size: 64, align: 64, offset: 896)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "ownnick", scope: !337, file: !727, line: 10, baseType: !732, size: 64, align: 64, offset: 960)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64, align: 64)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "NICK_REC", file: !336, line: 111, baseType: !734)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_NICK_REC", file: !735, line: 13, size: 576, align: 64, elements: !736)
!735 = !DIFile(filename: "../../../src/core/nicklist.h", directory: "/home/lichi/Desktop/irssi/task1")
!736 = !{!737, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !755, !756}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !734, file: !738, line: 3, baseType: !332, size: 32, align: 32)
!738 = !DIFile(filename: "../../../src/core/nick-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!739 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !734, file: !738, line: 4, baseType: !332, size: 32, align: 32, offset: 32)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "last_check", scope: !734, file: !738, line: 6, baseType: !589, size: 64, align: 64, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !734, file: !738, line: 8, baseType: !369, size: 64, align: 64, offset: 128)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !734, file: !738, line: 9, baseType: !369, size: 64, align: 64, offset: 192)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !734, file: !738, line: 10, baseType: !369, size: 64, align: 64, offset: 256)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "hops", scope: !734, file: !738, line: 11, baseType: !332, size: 32, align: 32, offset: 320)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "gone", scope: !734, file: !738, line: 14, baseType: !427, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "serverop", scope: !734, file: !738, line: 15, baseType: !427, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "send_massjoin", scope: !734, file: !738, line: 18, baseType: !427, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !734, file: !738, line: 19, baseType: !427, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "halfop", scope: !734, file: !738, line: 20, baseType: !427, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "voice", scope: !734, file: !738, line: 21, baseType: !427, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "prefixes", scope: !734, file: !738, line: 22, baseType: !752, size: 64, align: 8, offset: 360)
!752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !328, size: 64, align: 8, elements: !753)
!753 = !{!754}
!754 = !DISubrange(count: 8)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !734, file: !738, line: 26, baseType: !324, size: 64, align: 64, offset: 448)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !734, file: !738, line: 28, baseType: !732, size: 64, align: 64, offset: 512)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "no_modes", scope: !337, file: !727, line: 12, baseType: !427, size: 1, align: 32, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !337, file: !727, line: 13, baseType: !369, size: 64, align: 64, offset: 1088)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !337, file: !727, line: 14, baseType: !332, size: 32, align: 32, offset: 1152)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !337, file: !727, line: 15, baseType: !369, size: 64, align: 64, offset: 1216)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "chanop", scope: !337, file: !727, line: 17, baseType: !427, size: 1, align: 32, offset: 1280, flags: DIFlagBitField, extraData: i64 1280)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "names_got", scope: !337, file: !727, line: 18, baseType: !427, size: 1, align: 32, offset: 1281, flags: DIFlagBitField, extraData: i64 1280)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "wholist", scope: !337, file: !727, line: 19, baseType: !427, size: 1, align: 32, offset: 1282, flags: DIFlagBitField, extraData: i64 1280)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "synced", scope: !337, file: !727, line: 20, baseType: !427, size: 1, align: 32, offset: 1283, flags: DIFlagBitField, extraData: i64 1280)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "joined", scope: !337, file: !727, line: 22, baseType: !427, size: 1, align: 32, offset: 1284, flags: DIFlagBitField, extraData: i64 1280)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !337, file: !727, line: 23, baseType: !427, size: 1, align: 32, offset: 1285, flags: DIFlagBitField, extraData: i64 1280)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "kicked", scope: !337, file: !727, line: 24, baseType: !427, size: 1, align: 32, offset: 1286, flags: DIFlagBitField, extraData: i64 1280)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "session_rejoin", scope: !337, file: !727, line: 25, baseType: !427, size: 1, align: 32, offset: 1287, flags: DIFlagBitField, extraData: i64 1280)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !337, file: !727, line: 26, baseType: !427, size: 1, align: 32, offset: 1288, flags: DIFlagBitField, extraData: i64 1280)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "get_join_data", scope: !337, file: !727, line: 31, baseType: !771, size: 64, align: 64, offset: 1344)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64, align: 64)
!772 = !DISubroutineType(types: !773)
!773 = !{!369, !334}
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashFunc", file: !327, line: 90, baseType: !775)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64, align: 64)
!776 = !DISubroutineType(types: !777)
!777 = !{!508, !778}
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "gconstpointer", file: !327, line: 78, baseType: !779)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64, align: 64)
!780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCompareFunc", file: !327, line: 80, baseType: !782)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64, align: 64)
!783 = !DISubroutineType(types: !784)
!784 = !{!402, !778, !778}
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !786, line: 9, baseType: !787)
!786 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64, align: 64)
!788 = !DISubroutineType(types: !789)
!789 = !{null, !779, !779, !779, !779, !779, !779}
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHFunc", file: !327, line: 91, baseType: !791)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64, align: 64)
!792 = !DISubroutineType(types: !793)
!793 = !{null, !456, !456, !456}
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64, align: 64)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "WINDOW_REC", file: !336, line: 117, baseType: !796)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_WINDOW_REC", file: !797, line: 28, size: 1280, align: 64, elements: !798)
!797 = !DIFile(filename: "fe-windows.h", directory: "/home/lichi/Desktop/irssi/task1")
!798 = !{!799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811, !812, !813, !832, !833, !834, !835, !836, !837, !838, !839}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "refnum", scope: !796, file: !797, line: 29, baseType: !332, size: 32, align: 32)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !796, file: !797, line: 30, baseType: !369, size: 64, align: 64, offset: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !796, file: !797, line: 32, baseType: !332, size: 32, align: 32, offset: 128)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !796, file: !797, line: 32, baseType: !332, size: 32, align: 32, offset: 160)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !796, file: !797, line: 34, baseType: !517, size: 64, align: 64, offset: 192)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !796, file: !797, line: 35, baseType: !687, size: 64, align: 64, offset: 256)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "active_server", scope: !796, file: !797, line: 36, baseType: !350, size: 64, align: 64, offset: 320)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "connect_server", scope: !796, file: !797, line: 37, baseType: !350, size: 64, align: 64, offset: 384)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !796, file: !797, line: 38, baseType: !369, size: 64, align: 64, offset: 448)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !796, file: !797, line: 40, baseType: !332, size: 32, align: 32, offset: 512)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "bound_items", scope: !796, file: !797, line: 41, baseType: !517, size: 64, align: 64, offset: 576)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "immortal", scope: !796, file: !797, line: 43, baseType: !427, size: 1, align: 32, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "sticky_refnum", scope: !796, file: !797, line: 44, baseType: !427, size: 1, align: 32, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "destroying", scope: !796, file: !797, line: 45, baseType: !427, size: 1, align: 32, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "history", scope: !796, file: !797, line: 48, baseType: !814, size: 64, align: 64, offset: 704)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64, align: 64)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "HISTORY_REC", file: !816, line: 14, baseType: !817)
!816 = !DIFile(filename: "command-history.h", directory: "/home/lichi/Desktop/irssi/task1")
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !816, line: 6, size: 256, align: 64, elements: !818)
!818 = !{!819, !820, !829, !830, !831}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !817, file: !816, line: 7, baseType: !369, size: 64, align: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !817, file: !816, line: 9, baseType: !821, size: 64, align: 64, offset: 64)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64, align: 64)
!822 = !DIDerivedType(tag: DW_TAG_typedef, name: "GList", file: !823, line: 37, baseType: !824)
!823 = !DIFile(filename: "/usr/include/glib-2.0/glib/glist.h", directory: "/home/lichi/Desktop/irssi/task1")
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GList", file: !823, line: 39, size: 192, align: 64, elements: !825)
!825 = !{!826, !827, !828}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !824, file: !823, line: 41, baseType: !456, size: 64, align: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !824, file: !823, line: 42, baseType: !821, size: 64, align: 64, offset: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !824, file: !823, line: 43, baseType: !821, size: 64, align: 64, offset: 128)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "lines", scope: !817, file: !816, line: 10, baseType: !332, size: 32, align: 32, offset: 128)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !817, file: !816, line: 12, baseType: !332, size: 32, align: 32, offset: 160)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "redo", scope: !817, file: !816, line: 13, baseType: !332, size: 1, align: 32, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "history_name", scope: !796, file: !797, line: 49, baseType: !369, size: 64, align: 64, offset: 768)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "data_level", scope: !796, file: !797, line: 51, baseType: !332, size: 32, align: 32, offset: 832)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !796, file: !797, line: 52, baseType: !369, size: 64, align: 64, offset: 896)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "last_timestamp", scope: !796, file: !797, line: 54, baseType: !589, size: 64, align: 64, offset: 960)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "last_line", scope: !796, file: !797, line: 55, baseType: !589, size: 64, align: 64, offset: 1024)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "theme_name", scope: !796, file: !797, line: 57, baseType: !369, size: 64, align: 64, offset: 1088)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "theme", scope: !796, file: !797, line: 58, baseType: !324, size: 64, align: 64, offset: 1152)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "gui_data", scope: !796, file: !797, line: 60, baseType: !324, size: 64, align: 64, offset: 1216)
!840 = !{!841}
!841 = distinct !DIGlobalVariable(name: "printnicks", scope: !0, file: !842, line: 46, type: !344, isLocal: false, isDefinition: true, variable: %struct._GHashTable** @printnicks)
!842 = !DIFile(filename: "fe-messages.c", directory: "/home/lichi/Desktop/irssi/task1")
!843 = !{i32 2, !"Dwarf Version", i32 4}
!844 = !{i32 2, !"Debug Info Version", i32 3}
!845 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!846 = distinct !DISubprogram(name: "expand_emphasis", scope: !842, file: !842, line: 50, type: !847, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !849)
!847 = !DISubroutineType(types: !848)
!848 = !{!369, !687, !329}
!849 = !{}
!850 = !DILocalVariable(name: "item", arg: 1, scope: !846, file: !842, line: 50, type: !687)
!851 = !DIExpression()
!852 = !DILocation(line: 50, column: 36, scope: !846)
!853 = !DILocalVariable(name: "text", arg: 2, scope: !846, file: !842, line: 50, type: !329)
!854 = !DILocation(line: 50, column: 54, scope: !846)
!855 = !DILocalVariable(name: "str", scope: !846, file: !842, line: 52, type: !556)
!856 = !DILocation(line: 52, column: 11, scope: !846)
!857 = !DILocalVariable(name: "ret", scope: !846, file: !842, line: 53, type: !369)
!858 = !DILocation(line: 53, column: 8, scope: !846)
!859 = !DILocalVariable(name: "pos", scope: !846, file: !842, line: 54, type: !332)
!860 = !DILocation(line: 54, column: 6, scope: !846)
!861 = !DILocalVariable(name: "emphasis_italics", scope: !846, file: !842, line: 55, type: !332)
!862 = !DILocation(line: 55, column: 6, scope: !846)
!863 = !DILocation(line: 57, column: 9, scope: !846)
!864 = distinct !{!864, !863}
!865 = !DILocation(line: 57, column: 17, scope: !866)
!866 = !DILexicalBlockFile(scope: !867, file: !842, discriminator: 1)
!867 = distinct !DILexicalBlock(scope: !868, file: !842, line: 57, column: 17)
!868 = distinct !DILexicalBlock(scope: !846, file: !842, line: 57, column: 11)
!869 = !DILocation(line: 57, column: 22, scope: !866)
!870 = !DILocation(line: 57, column: 12, scope: !871)
!871 = !DILexicalBlockFile(scope: !872, file: !842, discriminator: 2)
!872 = distinct !DILexicalBlock(scope: !867, file: !842, line: 57, column: 10)
!873 = !DILocation(line: 57, column: 21, scope: !874)
!874 = !DILexicalBlockFile(scope: !875, file: !842, discriminator: 3)
!875 = distinct !DILexicalBlock(scope: !867, file: !842, line: 57, column: 19)
!876 = !DILocation(line: 57, column: 106, scope: !874)
!877 = !DILocation(line: 57, column: 14, scope: !878)
!878 = !DILexicalBlockFile(scope: !868, file: !842, discriminator: 4)
!879 = !DILocation(line: 59, column: 21, scope: !846)
!880 = !DILocation(line: 59, column: 19, scope: !846)
!881 = !DILocation(line: 61, column: 21, scope: !846)
!882 = !DILocation(line: 61, column: 8, scope: !846)
!883 = !DILocation(line: 61, column: 6, scope: !846)
!884 = !DILocation(line: 63, column: 11, scope: !885)
!885 = distinct !DILexicalBlock(scope: !846, file: !842, line: 63, column: 2)
!886 = !DILocation(line: 63, column: 7, scope: !885)
!887 = !DILocation(line: 63, column: 16, scope: !888)
!888 = !DILexicalBlockFile(scope: !889, file: !842, discriminator: 1)
!889 = distinct !DILexicalBlock(scope: !885, file: !842, line: 63, column: 2)
!890 = !DILocation(line: 63, column: 22, scope: !888)
!891 = !DILocation(line: 63, column: 27, scope: !888)
!892 = !DILocation(line: 63, column: 20, scope: !888)
!893 = !DILocation(line: 63, column: 2, scope: !888)
!894 = !DILocalVariable(name: "type", scope: !895, file: !842, line: 64, type: !328)
!895 = distinct !DILexicalBlock(scope: !889, file: !842, line: 63, column: 39)
!896 = !DILocation(line: 64, column: 8, scope: !895)
!897 = !DILocalVariable(name: "bgn", scope: !895, file: !842, line: 64, type: !369)
!898 = !DILocation(line: 64, column: 15, scope: !895)
!899 = !DILocalVariable(name: "end", scope: !895, file: !842, line: 64, type: !369)
!900 = !DILocation(line: 64, column: 21, scope: !895)
!901 = !DILocation(line: 66, column: 9, scope: !895)
!902 = !DILocation(line: 66, column: 14, scope: !895)
!903 = !DILocation(line: 66, column: 20, scope: !895)
!904 = !DILocation(line: 66, column: 18, scope: !895)
!905 = !DILocation(line: 66, column: 7, scope: !895)
!906 = !DILocation(line: 68, column: 8, scope: !907)
!907 = distinct !DILexicalBlock(scope: !895, file: !842, line: 68, column: 7)
!908 = !DILocation(line: 68, column: 7, scope: !907)
!909 = !DILocation(line: 68, column: 12, scope: !907)
!910 = !DILocation(line: 68, column: 7, scope: !895)
!911 = !DILocation(line: 69, column: 9, scope: !907)
!912 = !DILocation(line: 69, column: 4, scope: !907)
!913 = !DILocation(line: 70, column: 13, scope: !914)
!914 = distinct !DILexicalBlock(scope: !907, file: !842, line: 70, column: 12)
!915 = !DILocation(line: 70, column: 12, scope: !914)
!916 = !DILocation(line: 70, column: 17, scope: !914)
!917 = !DILocation(line: 70, column: 24, scope: !914)
!918 = !DILocation(line: 70, column: 27, scope: !919)
!919 = !DILexicalBlockFile(scope: !914, file: !842, discriminator: 1)
!920 = !DILocation(line: 70, column: 12, scope: !919)
!921 = !DILocation(line: 71, column: 9, scope: !914)
!922 = !DILocation(line: 71, column: 4, scope: !914)
!923 = !DILocation(line: 72, column: 13, scope: !924)
!924 = distinct !DILexicalBlock(scope: !914, file: !842, line: 72, column: 12)
!925 = !DILocation(line: 72, column: 12, scope: !924)
!926 = !DILocation(line: 72, column: 17, scope: !924)
!927 = !DILocation(line: 72, column: 12, scope: !914)
!928 = !DILocation(line: 73, column: 9, scope: !924)
!929 = !DILocation(line: 73, column: 4, scope: !924)
!930 = !DILocation(line: 75, column: 4, scope: !924)
!931 = !DILocation(line: 79, column: 8, scope: !932)
!932 = distinct !DILexicalBlock(scope: !895, file: !842, line: 79, column: 7)
!933 = !DILocation(line: 79, column: 12, scope: !932)
!934 = !DILocation(line: 79, column: 16, scope: !932)
!935 = !DILocation(line: 79, column: 19, scope: !936)
!936 = !DILexicalBlockFile(scope: !932, file: !842, discriminator: 1)
!937 = !DILocation(line: 79, column: 27, scope: !936)
!938 = !DILocation(line: 79, column: 35, scope: !936)
!939 = !DILocation(line: 79, column: 57, scope: !940)
!940 = !DILexicalBlockFile(scope: !932, file: !842, discriminator: 2)
!941 = !DILocation(line: 79, column: 40, scope: !940)
!942 = !DILocation(line: 79, column: 65, scope: !940)
!943 = !DILocation(line: 79, column: 72, scope: !940)
!944 = !DILocation(line: 79, column: 61, scope: !945)
!945 = !DILexicalBlockFile(scope: !932, file: !842, discriminator: 3)
!946 = !DILocation(line: 79, column: 38, scope: !945)
!947 = !DILocation(line: 79, column: 39, scope: !945)
!948 = !DILocation(line: 79, column: 41, scope: !945)
!949 = !DILocation(line: 79, column: 40, scope: !945)
!950 = !DILocation(line: 79, column: 42, scope: !945)
!951 = !DILocation(line: 79, column: 7, scope: !945)
!952 = !DILocation(line: 80, column: 4, scope: !932)
!953 = !DILocation(line: 81, column: 21, scope: !954)
!954 = distinct !DILexicalBlock(scope: !895, file: !842, line: 81, column: 7)
!955 = !DILocation(line: 81, column: 24, scope: !954)
!956 = !DILocation(line: 81, column: 29, scope: !954)
!957 = !DILocation(line: 81, column: 28, scope: !954)
!958 = !DILocation(line: 81, column: 14, scope: !954)
!959 = !DILocation(line: 81, column: 12, scope: !954)
!960 = !DILocation(line: 81, column: 35, scope: !954)
!961 = !DILocation(line: 81, column: 7, scope: !895)
!962 = !DILocation(line: 82, column: 4, scope: !954)
!963 = !DILocation(line: 83, column: 26, scope: !964)
!964 = distinct !DILexicalBlock(scope: !895, file: !842, line: 83, column: 7)
!965 = !DILocation(line: 83, column: 9, scope: !964)
!966 = !DILocation(line: 83, column: 35, scope: !964)
!967 = !DILocation(line: 83, column: 42, scope: !964)
!968 = !DILocation(line: 83, column: 30, scope: !969)
!969 = !DILexicalBlockFile(scope: !964, file: !842, discriminator: 1)
!970 = !DILocation(line: 83, column: 7, scope: !969)
!971 = !DILocation(line: 83, column: 8, scope: !969)
!972 = !DILocation(line: 83, column: 10, scope: !969)
!973 = !DILocation(line: 83, column: 9, scope: !969)
!974 = !DILocation(line: 83, column: 11, scope: !969)
!975 = !DILocation(line: 83, column: 30, scope: !976)
!976 = !DILexicalBlockFile(scope: !964, file: !842, discriminator: 2)
!977 = !DILocation(line: 83, column: 13, scope: !976)
!978 = !DILocation(line: 83, column: 38, scope: !976)
!979 = !DILocation(line: 83, column: 45, scope: !976)
!980 = !DILocation(line: 83, column: 54, scope: !981)
!981 = !DILexicalBlockFile(scope: !964, file: !842, discriminator: 3)
!982 = !DILocation(line: 83, column: 31, scope: !981)
!983 = !DILocation(line: 83, column: 32, scope: !981)
!984 = !DILocation(line: 83, column: 34, scope: !981)
!985 = !DILocation(line: 83, column: 33, scope: !981)
!986 = !DILocation(line: 83, column: 35, scope: !981)
!987 = !DILocation(line: 84, column: 7, scope: !964)
!988 = !DILocation(line: 84, column: 17, scope: !964)
!989 = !DILocation(line: 84, column: 14, scope: !964)
!990 = !DILocation(line: 84, column: 22, scope: !964)
!991 = !DILocation(line: 84, column: 25, scope: !969)
!992 = !DILocation(line: 84, column: 32, scope: !969)
!993 = !DILocation(line: 84, column: 39, scope: !969)
!994 = !DILocation(line: 84, column: 42, scope: !976)
!995 = !DILocation(line: 84, column: 49, scope: !976)
!996 = !DILocation(line: 84, column: 56, scope: !976)
!997 = !DILocation(line: 87, column: 8, scope: !964)
!998 = !DILocation(line: 87, column: 13, scope: !964)
!999 = !DILocation(line: 87, column: 19, scope: !964)
!1000 = !DILocation(line: 87, column: 44, scope: !969)
!1001 = !DILocation(line: 87, column: 21, scope: !969)
!1002 = !DILocation(line: 87, column: 22, scope: !969)
!1003 = !DILocation(line: 87, column: 24, scope: !969)
!1004 = !DILocation(line: 87, column: 23, scope: !969)
!1005 = !DILocation(line: 87, column: 25, scope: !969)
!1006 = !DILocation(line: 87, column: 39, scope: !969)
!1007 = !DILocation(line: 87, column: 60, scope: !976)
!1008 = !DILocation(line: 87, column: 43, scope: !976)
!1009 = !DILocation(line: 87, column: 68, scope: !976)
!1010 = !DILocation(line: 87, column: 75, scope: !976)
!1011 = !DILocation(line: 87, column: 65, scope: !981)
!1012 = !DILocation(line: 87, column: 42, scope: !981)
!1013 = !DILocation(line: 87, column: 43, scope: !981)
!1014 = !DILocation(line: 87, column: 45, scope: !981)
!1015 = !DILocation(line: 87, column: 44, scope: !981)
!1016 = !DILocation(line: 87, column: 46, scope: !981)
!1017 = !DILocation(line: 83, column: 7, scope: !1018)
!1018 = !DILexicalBlockFile(scope: !895, file: !842, discriminator: 4)
!1019 = !DILocation(line: 88, column: 4, scope: !964)
!1020 = !DILocation(line: 90, column: 50, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !895, file: !842, line: 90, column: 7)
!1022 = !DILocation(line: 90, column: 25, scope: !1021)
!1023 = !DILocation(line: 90, column: 9, scope: !1021)
!1024 = !DILocation(line: 90, column: 7, scope: !895)
!1025 = !DILocation(line: 90, column: 8, scope: !1026)
!1026 = !DILexicalBlockFile(scope: !1021, file: !842, discriminator: 1)
!1027 = !DILocation(line: 90, column: 7, scope: !1028)
!1028 = !DILexicalBlockFile(scope: !895, file: !842, discriminator: 2)
!1029 = !DILocalVariable(name: "found", scope: !1030, file: !842, line: 93, type: !332)
!1030 = distinct !DILexicalBlock(scope: !1021, file: !842, line: 90, column: 57)
!1031 = !DILocation(line: 93, column: 8, scope: !1030)
!1032 = !DILocalVariable(name: "c", scope: !1030, file: !842, line: 94, type: !328)
!1033 = !DILocation(line: 94, column: 30, scope: !1030)
!1034 = !DILocalVariable(name: "end2", scope: !1030, file: !842, line: 95, type: !369)
!1035 = !DILocation(line: 95, column: 10, scope: !1030)
!1036 = !DILocation(line: 98, column: 8, scope: !1030)
!1037 = !DILocation(line: 98, column: 6, scope: !1030)
!1038 = !DILocation(line: 99, column: 25, scope: !1030)
!1039 = !DILocation(line: 99, column: 32, scope: !1030)
!1040 = !DILocation(line: 100, column: 89, scope: !1030)
!1041 = !DILocation(line: 100, column: 64, scope: !1030)
!1042 = !DILocation(line: 100, column: 48, scope: !1030)
!1043 = !DILocation(line: 100, column: 81, scope: !1030)
!1044 = !DILocation(line: 100, column: 33, scope: !1045)
!1045 = !DILexicalBlockFile(scope: !1030, file: !842, discriminator: 1)
!1046 = !DILocation(line: 100, column: 86, scope: !1030)
!1047 = !DILocation(line: 100, column: 31, scope: !1030)
!1048 = !DILocation(line: 101, column: 13, scope: !1030)
!1049 = !DILocation(line: 101, column: 4, scope: !1030)
!1050 = !DILocation(line: 101, column: 11, scope: !1030)
!1051 = !DILocation(line: 102, column: 8, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1030, file: !842, line: 102, column: 8)
!1053 = !DILocation(line: 102, column: 8, scope: !1030)
!1054 = !DILocation(line: 102, column: 15, scope: !1055)
!1055 = !DILexicalBlockFile(scope: !1052, file: !842, discriminator: 1)
!1056 = !DILocation(line: 106, column: 11, scope: !1030)
!1057 = !DILocation(line: 106, column: 9, scope: !1030)
!1058 = !DILocation(line: 107, column: 4, scope: !1030)
!1059 = !DILocation(line: 107, column: 33, scope: !1045)
!1060 = !DILocation(line: 107, column: 10, scope: !1045)
!1061 = !DILocation(line: 107, column: 11, scope: !1045)
!1062 = !DILocation(line: 107, column: 13, scope: !1045)
!1063 = !DILocation(line: 107, column: 12, scope: !1045)
!1064 = !DILocation(line: 107, column: 14, scope: !1045)
!1065 = !DILocation(line: 107, column: 14, scope: !1066)
!1066 = !DILexicalBlockFile(scope: !1030, file: !842, discriminator: 2)
!1067 = !DILocation(line: 107, column: 13, scope: !1066)
!1068 = !DILocation(line: 107, column: 23, scope: !1066)
!1069 = !DILocation(line: 107, column: 30, scope: !1066)
!1070 = !DILocation(line: 107, column: 34, scope: !1071)
!1071 = !DILexicalBlockFile(scope: !1030, file: !842, discriminator: 3)
!1072 = !DILocation(line: 107, column: 33, scope: !1071)
!1073 = !DILocation(line: 107, column: 43, scope: !1071)
!1074 = !DILocation(line: 107, column: 50, scope: !1071)
!1075 = !DILocation(line: 107, column: 54, scope: !1076)
!1076 = !DILexicalBlockFile(scope: !1030, file: !842, discriminator: 4)
!1077 = !DILocation(line: 107, column: 53, scope: !1076)
!1078 = !DILocation(line: 107, column: 63, scope: !1076)
!1079 = !DILocation(line: 107, column: 70, scope: !1076)
!1080 = !DILocation(line: 107, column: 74, scope: !1081)
!1081 = !DILexicalBlockFile(scope: !1030, file: !842, discriminator: 5)
!1082 = !DILocation(line: 107, column: 73, scope: !1081)
!1083 = !DILocation(line: 107, column: 83, scope: !1081)
!1084 = !DILocation(line: 107, column: 90, scope: !1081)
!1085 = !DILocation(line: 107, column: 94, scope: !1086)
!1086 = !DILexicalBlockFile(scope: !1030, file: !842, discriminator: 6)
!1087 = !DILocation(line: 107, column: 93, scope: !1086)
!1088 = !DILocation(line: 107, column: 103, scope: !1086)
!1089 = !DILocation(line: 107, column: 110, scope: !1086)
!1090 = !DILocation(line: 107, column: 114, scope: !1091)
!1091 = !DILexicalBlockFile(scope: !1030, file: !842, discriminator: 7)
!1092 = !DILocation(line: 107, column: 113, scope: !1091)
!1093 = !DILocation(line: 107, column: 123, scope: !1091)
!1094 = !DILocation(line: 107, column: 130, scope: !1091)
!1095 = !DILocation(line: 107, column: 134, scope: !1096)
!1096 = !DILexicalBlockFile(scope: !1030, file: !842, discriminator: 8)
!1097 = !DILocation(line: 107, column: 133, scope: !1096)
!1098 = !DILocation(line: 107, column: 143, scope: !1096)
!1099 = !DILocation(line: 107, column: 150, scope: !1096)
!1100 = !DILocation(line: 107, column: 154, scope: !1101)
!1101 = !DILexicalBlockFile(scope: !1030, file: !842, discriminator: 9)
!1102 = !DILocation(line: 107, column: 153, scope: !1101)
!1103 = !DILocation(line: 107, column: 163, scope: !1101)
!1104 = !DILocation(line: 107, column: 170, scope: !1101)
!1105 = !DILocation(line: 107, column: 174, scope: !1106)
!1106 = !DILexicalBlockFile(scope: !1030, file: !842, discriminator: 10)
!1107 = !DILocation(line: 107, column: 173, scope: !1106)
!1108 = !DILocation(line: 107, column: 183, scope: !1106)
!1109 = !DILocation(line: 107, column: 191, scope: !1106)
!1110 = !DILocation(line: 107, column: 195, scope: !1111)
!1111 = !DILexicalBlockFile(scope: !1030, file: !842, discriminator: 11)
!1112 = !DILocation(line: 107, column: 194, scope: !1111)
!1113 = !DILocation(line: 107, column: 204, scope: !1111)
!1114 = !DILocation(line: 107, column: 191, scope: !1111)
!1115 = !DILocation(line: 107, column: 4, scope: !1116)
!1116 = !DILexicalBlockFile(scope: !1030, file: !842, discriminator: 12)
!1117 = !DILocation(line: 108, column: 9, scope: !1030)
!1118 = !DILocation(line: 107, column: 4, scope: !1119)
!1119 = !DILexicalBlockFile(scope: !1030, file: !842, discriminator: 13)
!1120 = distinct !{!1120, !1058}
!1121 = !DILocation(line: 109, column: 8, scope: !1030)
!1122 = !DILocation(line: 109, column: 6, scope: !1030)
!1123 = !DILocation(line: 110, column: 4, scope: !1030)
!1124 = !DILocation(line: 110, column: 12, scope: !1030)
!1125 = !DILocation(line: 111, column: 68, scope: !1030)
!1126 = !DILocation(line: 111, column: 43, scope: !1030)
!1127 = !DILocation(line: 111, column: 27, scope: !1030)
!1128 = !DILocation(line: 111, column: 60, scope: !1030)
!1129 = !DILocation(line: 111, column: 12, scope: !1045)
!1130 = !DILocation(line: 111, column: 65, scope: !1030)
!1131 = !DILocation(line: 111, column: 10, scope: !1030)
!1132 = !DILocation(line: 112, column: 14, scope: !1030)
!1133 = !DILocation(line: 112, column: 4, scope: !1030)
!1134 = !DILocation(line: 112, column: 12, scope: !1030)
!1135 = !DILocation(line: 113, column: 8, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1030, file: !842, line: 113, column: 8)
!1137 = !DILocation(line: 113, column: 8, scope: !1030)
!1138 = !DILocation(line: 113, column: 15, scope: !1139)
!1139 = !DILexicalBlockFile(scope: !1136, file: !842, discriminator: 1)
!1140 = !DILocation(line: 114, column: 3, scope: !1030)
!1141 = !DILocation(line: 117, column: 8, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !895, file: !842, line: 117, column: 7)
!1143 = !DILocation(line: 117, column: 7, scope: !895)
!1144 = !DILocalVariable(name: "c", scope: !1145, file: !842, line: 118, type: !369)
!1145 = distinct !DILexicalBlock(scope: !1142, file: !842, line: 117, column: 49)
!1146 = !DILocation(line: 118, column: 10, scope: !1145)
!1147 = !DILocation(line: 119, column: 13, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1145, file: !842, line: 119, column: 4)
!1149 = !DILocation(line: 119, column: 16, scope: !1148)
!1150 = !DILocation(line: 119, column: 11, scope: !1148)
!1151 = !DILocation(line: 119, column: 9, scope: !1148)
!1152 = !DILocation(line: 119, column: 20, scope: !1153)
!1153 = !DILexicalBlockFile(scope: !1154, file: !842, discriminator: 1)
!1154 = distinct !DILexicalBlock(scope: !1148, file: !842, line: 119, column: 4)
!1155 = !DILocation(line: 119, column: 25, scope: !1153)
!1156 = !DILocation(line: 119, column: 22, scope: !1153)
!1157 = !DILocation(line: 119, column: 4, scope: !1153)
!1158 = !DILocation(line: 120, column: 29, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1160, file: !842, line: 120, column: 9)
!1160 = distinct !DILexicalBlock(scope: !1154, file: !842, line: 119, column: 35)
!1161 = !DILocation(line: 120, column: 28, scope: !1159)
!1162 = !DILocation(line: 120, column: 11, scope: !1159)
!1163 = !DILocation(line: 120, column: 32, scope: !1159)
!1164 = !DILocation(line: 120, column: 39, scope: !1159)
!1165 = !DILocation(line: 120, column: 33, scope: !1166)
!1166 = !DILexicalBlockFile(scope: !1159, file: !842, discriminator: 1)
!1167 = !DILocation(line: 120, column: 32, scope: !1166)
!1168 = !DILocation(line: 120, column: 9, scope: !1166)
!1169 = !DILocation(line: 120, column: 10, scope: !1166)
!1170 = !DILocation(line: 120, column: 12, scope: !1166)
!1171 = !DILocation(line: 120, column: 11, scope: !1166)
!1172 = !DILocation(line: 120, column: 13, scope: !1166)
!1173 = !DILocation(line: 121, column: 6, scope: !1159)
!1174 = !DILocation(line: 122, column: 4, scope: !1160)
!1175 = !DILocation(line: 119, column: 31, scope: !1176)
!1176 = !DILexicalBlockFile(scope: !1154, file: !842, discriminator: 2)
!1177 = !DILocation(line: 119, column: 4, scope: !1176)
!1178 = distinct !{!1178, !1179}
!1179 = !DILocation(line: 119, column: 4, scope: !1145)
!1180 = !DILocation(line: 123, column: 8, scope: !1181)
!1181 = distinct !DILexicalBlock(scope: !1145, file: !842, line: 123, column: 8)
!1182 = !DILocation(line: 123, column: 13, scope: !1181)
!1183 = !DILocation(line: 123, column: 10, scope: !1181)
!1184 = !DILocation(line: 123, column: 8, scope: !1145)
!1185 = !DILocation(line: 123, column: 18, scope: !1186)
!1186 = !DILexicalBlockFile(scope: !1181, file: !842, discriminator: 1)
!1187 = !DILocation(line: 124, column: 3, scope: !1145)
!1188 = !DILocation(line: 126, column: 7, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !895, file: !842, line: 126, column: 7)
!1190 = !DILocation(line: 126, column: 7, scope: !895)
!1191 = !DILocation(line: 127, column: 18, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1189, file: !842, line: 126, column: 46)
!1193 = !DILocation(line: 127, column: 12, scope: !1192)
!1194 = !DILocation(line: 127, column: 16, scope: !1192)
!1195 = !DILocation(line: 127, column: 5, scope: !1192)
!1196 = !DILocation(line: 127, column: 9, scope: !1192)
!1197 = !DILocation(line: 128, column: 33, scope: !1192)
!1198 = !DILocation(line: 128, column: 37, scope: !1192)
!1199 = !DILocation(line: 128, column: 36, scope: !1192)
!1200 = !DILocation(line: 128, column: 29, scope: !1192)
!1201 = !DILocation(line: 129, column: 3, scope: !1192)
!1202 = !DILocation(line: 130, column: 22, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1189, file: !842, line: 129, column: 10)
!1204 = !DILocation(line: 130, column: 27, scope: !1203)
!1205 = !DILocation(line: 130, column: 32, scope: !1203)
!1206 = !DILocation(line: 130, column: 4, scope: !1203)
!1207 = !DILocation(line: 131, column: 33, scope: !1203)
!1208 = !DILocation(line: 131, column: 39, scope: !1203)
!1209 = !DILocation(line: 131, column: 37, scope: !1203)
!1210 = !DILocation(line: 131, column: 44, scope: !1203)
!1211 = !DILocation(line: 131, column: 29, scope: !1203)
!1212 = !DILocation(line: 132, column: 22, scope: !1203)
!1213 = !DILocation(line: 132, column: 30, scope: !1203)
!1214 = !DILocation(line: 132, column: 27, scope: !1203)
!1215 = !DILocation(line: 132, column: 34, scope: !1203)
!1216 = !DILocation(line: 132, column: 4, scope: !1203)
!1217 = !DILocation(line: 134, column: 2, scope: !895)
!1218 = !DILocation(line: 63, column: 35, scope: !1219)
!1219 = !DILexicalBlockFile(scope: !889, file: !842, discriminator: 2)
!1220 = !DILocation(line: 63, column: 2, scope: !1219)
!1221 = distinct !{!1221, !1222}
!1222 = !DILocation(line: 63, column: 2, scope: !846)
!1223 = !DILocation(line: 136, column: 8, scope: !846)
!1224 = !DILocation(line: 136, column: 13, scope: !846)
!1225 = !DILocation(line: 136, column: 6, scope: !846)
!1226 = !DILocation(line: 137, column: 16, scope: !846)
!1227 = !DILocation(line: 137, column: 2, scope: !846)
!1228 = !DILocation(line: 138, column: 9, scope: !846)
!1229 = !DILocation(line: 138, column: 2, scope: !846)
!1230 = !DILocation(line: 139, column: 1, scope: !846)
!1231 = distinct !DISubprogram(name: "channel_get_nickmode", scope: !842, file: !842, line: 161, type: !1232, isLocal: false, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !849)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!369, !334, !329}
!1234 = !DILocalVariable(name: "channel", arg: 1, scope: !1231, file: !842, line: 161, type: !334)
!1235 = !DILocation(line: 161, column: 41, scope: !1231)
!1236 = !DILocalVariable(name: "nick", arg: 2, scope: !1231, file: !842, line: 161, type: !329)
!1237 = !DILocation(line: 161, column: 62, scope: !1231)
!1238 = !DILocation(line: 163, column: 2, scope: !1231)
!1239 = distinct !{!1239, !1238}
!1240 = !DILocation(line: 163, column: 10, scope: !1241)
!1241 = !DILexicalBlockFile(scope: !1242, file: !842, discriminator: 1)
!1242 = distinct !DILexicalBlock(scope: !1243, file: !842, line: 163, column: 10)
!1243 = distinct !DILexicalBlock(scope: !1231, file: !842, line: 163, column: 4)
!1244 = !DILocation(line: 163, column: 15, scope: !1241)
!1245 = !DILocation(line: 163, column: 5, scope: !1246)
!1246 = !DILexicalBlockFile(scope: !1247, file: !842, discriminator: 2)
!1247 = distinct !DILexicalBlock(scope: !1242, file: !842, line: 163, column: 3)
!1248 = !DILocation(line: 163, column: 14, scope: !1249)
!1249 = !DILexicalBlockFile(scope: !1250, file: !842, discriminator: 3)
!1250 = distinct !DILexicalBlock(scope: !1242, file: !842, line: 163, column: 12)
!1251 = !DILocation(line: 163, column: 99, scope: !1249)
!1252 = !DILocation(line: 163, column: 7, scope: !1253)
!1253 = !DILexicalBlockFile(scope: !1243, file: !842, discriminator: 4)
!1254 = !DILocation(line: 165, column: 41, scope: !1231)
!1255 = !DILocation(line: 165, column: 49, scope: !1231)
!1256 = !DILocation(line: 165, column: 41, scope: !1257)
!1257 = !DILexicalBlockFile(scope: !1231, file: !842, discriminator: 1)
!1258 = !DILocation(line: 166, column: 20, scope: !1231)
!1259 = !DILocation(line: 166, column: 29, scope: !1231)
!1260 = !DILocation(line: 166, column: 6, scope: !1231)
!1261 = !DILocation(line: 165, column: 41, scope: !1262)
!1262 = !DILexicalBlockFile(scope: !1231, file: !842, discriminator: 2)
!1263 = !DILocation(line: 165, column: 41, scope: !1264)
!1264 = !DILexicalBlockFile(scope: !1231, file: !842, discriminator: 3)
!1265 = !DILocation(line: 165, column: 16, scope: !1264)
!1266 = !DILocation(line: 165, column: 9, scope: !1264)
!1267 = !DILocation(line: 167, column: 1, scope: !1231)
!1268 = distinct !DISubprogram(name: "channel_get_nickmode_rec", scope: !842, file: !842, line: 141, type: !1269, isLocal: true, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !849)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{!369, !732}
!1271 = !DILocalVariable(name: "nickrec", arg: 1, scope: !1268, file: !842, line: 141, type: !732)
!1272 = !DILocation(line: 141, column: 49, scope: !1268)
!1273 = !DILocalVariable(name: "emptystr", scope: !1268, file: !842, line: 143, type: !369)
!1274 = !DILocation(line: 143, column: 15, scope: !1268)
!1275 = !DILocalVariable(name: "nickmode", scope: !1268, file: !842, line: 144, type: !369)
!1276 = !DILocation(line: 144, column: 8, scope: !1268)
!1277 = !DILocation(line: 146, column: 7, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1268, file: !842, line: 146, column: 6)
!1279 = !DILocation(line: 146, column: 6, scope: !1268)
!1280 = !DILocation(line: 147, column: 24, scope: !1278)
!1281 = !DILocation(line: 147, column: 17, scope: !1278)
!1282 = !DILocation(line: 149, column: 20, scope: !1268)
!1283 = !DILocation(line: 149, column: 18, scope: !1268)
!1284 = !DILocation(line: 151, column: 6, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1268, file: !842, line: 151, column: 6)
!1286 = !DILocation(line: 151, column: 14, scope: !1285)
!1287 = !DILocation(line: 151, column: 21, scope: !1285)
!1288 = !DILocation(line: 151, column: 24, scope: !1289)
!1289 = !DILexicalBlockFile(scope: !1285, file: !842, discriminator: 1)
!1290 = !DILocation(line: 151, column: 33, scope: !1289)
!1291 = !DILocation(line: 151, column: 45, scope: !1289)
!1292 = !DILocation(line: 151, column: 6, scope: !1289)
!1293 = !DILocation(line: 152, column: 23, scope: !1285)
!1294 = !DILocation(line: 152, column: 14, scope: !1285)
!1295 = !DILocation(line: 152, column: 12, scope: !1285)
!1296 = !DILocation(line: 152, column: 3, scope: !1285)
!1297 = !DILocation(line: 154, column: 14, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1285, file: !842, line: 153, column: 7)
!1299 = !DILocation(line: 154, column: 12, scope: !1298)
!1300 = !DILocation(line: 155, column: 17, scope: !1298)
!1301 = !DILocation(line: 155, column: 26, scope: !1298)
!1302 = !DILocation(line: 155, column: 3, scope: !1298)
!1303 = !DILocation(line: 155, column: 15, scope: !1298)
!1304 = !DILocation(line: 156, column: 3, scope: !1298)
!1305 = !DILocation(line: 156, column: 15, scope: !1298)
!1306 = !DILocation(line: 158, column: 9, scope: !1268)
!1307 = !DILocation(line: 158, column: 2, scope: !1268)
!1308 = !DILocation(line: 159, column: 1, scope: !1268)
!1309 = distinct !DISubprogram(name: "fe_messages_init", scope: !842, file: !842, line: 723, type: !505, isLocal: false, isDefinition: true, scopeLine: 724, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !849)
!1310 = !DILocation(line: 725, column: 15, scope: !1309)
!1311 = !DILocation(line: 725, column: 13, scope: !1309)
!1312 = !DILocation(line: 728, column: 2, scope: !1309)
!1313 = !DILocation(line: 729, column: 2, scope: !1309)
!1314 = !DILocation(line: 730, column: 2, scope: !1309)
!1315 = !DILocation(line: 731, column: 2, scope: !1309)
!1316 = !DILocation(line: 732, column: 2, scope: !1309)
!1317 = !DILocation(line: 733, column: 2, scope: !1309)
!1318 = !DILocation(line: 734, column: 2, scope: !1309)
!1319 = !DILocation(line: 735, column: 2, scope: !1309)
!1320 = !DILocation(line: 736, column: 2, scope: !1309)
!1321 = !DILocation(line: 737, column: 2, scope: !1309)
!1322 = !DILocation(line: 738, column: 2, scope: !1309)
!1323 = !DILocation(line: 740, column: 2, scope: !1309)
!1324 = !DILocation(line: 741, column: 2, scope: !1309)
!1325 = !DILocation(line: 742, column: 2, scope: !1309)
!1326 = !DILocation(line: 743, column: 2, scope: !1309)
!1327 = !DILocation(line: 744, column: 2, scope: !1309)
!1328 = !DILocation(line: 745, column: 2, scope: !1309)
!1329 = !DILocation(line: 746, column: 2, scope: !1309)
!1330 = !DILocation(line: 747, column: 2, scope: !1309)
!1331 = !DILocation(line: 748, column: 2, scope: !1309)
!1332 = !DILocation(line: 749, column: 2, scope: !1309)
!1333 = !DILocation(line: 750, column: 2, scope: !1309)
!1334 = !DILocation(line: 751, column: 2, scope: !1309)
!1335 = !DILocation(line: 753, column: 2, scope: !1309)
!1336 = !DILocation(line: 754, column: 2, scope: !1309)
!1337 = !DILocation(line: 755, column: 2, scope: !1309)
!1338 = !DILocation(line: 756, column: 2, scope: !1309)
!1339 = !DILocation(line: 757, column: 2, scope: !1309)
!1340 = !DILocation(line: 758, column: 1, scope: !1309)
!1341 = distinct !DISubprogram(name: "sig_message_public", scope: !842, file: !842, line: 169, type: !1342, isLocal: true, isDefinition: true, scopeLine: 172, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !849)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{null, !350, !329, !329, !329, !329, !732}
!1344 = !DILocalVariable(name: "server", arg: 1, scope: !1341, file: !842, line: 169, type: !350)
!1345 = !DILocation(line: 169, column: 44, scope: !1341)
!1346 = !DILocalVariable(name: "msg", arg: 2, scope: !1341, file: !842, line: 169, type: !329)
!1347 = !DILocation(line: 169, column: 64, scope: !1341)
!1348 = !DILocalVariable(name: "nick", arg: 3, scope: !1341, file: !842, line: 170, type: !329)
!1349 = !DILocation(line: 170, column: 23, scope: !1341)
!1350 = !DILocalVariable(name: "address", arg: 4, scope: !1341, file: !842, line: 170, type: !329)
!1351 = !DILocation(line: 170, column: 41, scope: !1341)
!1352 = !DILocalVariable(name: "target", arg: 5, scope: !1341, file: !842, line: 171, type: !329)
!1353 = !DILocation(line: 171, column: 23, scope: !1341)
!1354 = !DILocalVariable(name: "nickrec", arg: 6, scope: !1341, file: !842, line: 171, type: !732)
!1355 = !DILocation(line: 171, column: 41, scope: !1341)
!1356 = !DILocalVariable(name: "chanrec", scope: !1341, file: !842, line: 173, type: !334)
!1357 = !DILocation(line: 173, column: 15, scope: !1341)
!1358 = !DILocalVariable(name: "printnick", scope: !1341, file: !842, line: 174, type: !329)
!1359 = !DILocation(line: 174, column: 14, scope: !1341)
!1360 = !DILocalVariable(name: "for_me", scope: !1341, file: !842, line: 175, type: !332)
!1361 = !DILocation(line: 175, column: 6, scope: !1341)
!1362 = !DILocalVariable(name: "print_channel", scope: !1341, file: !842, line: 175, type: !332)
!1363 = !DILocation(line: 175, column: 14, scope: !1341)
!1364 = !DILocalVariable(name: "level", scope: !1341, file: !842, line: 175, type: !332)
!1365 = !DILocation(line: 175, column: 29, scope: !1341)
!1366 = !DILocalVariable(name: "nickmode", scope: !1341, file: !842, line: 176, type: !369)
!1367 = !DILocation(line: 176, column: 8, scope: !1341)
!1368 = !DILocalVariable(name: "color", scope: !1341, file: !842, line: 176, type: !369)
!1369 = !DILocation(line: 176, column: 19, scope: !1341)
!1370 = !DILocalVariable(name: "freemsg", scope: !1341, file: !842, line: 176, type: !369)
!1371 = !DILocation(line: 176, column: 27, scope: !1341)
!1372 = !DILocalVariable(name: "hilight", scope: !1341, file: !842, line: 177, type: !1373)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64, align: 64)
!1374 = !DIDerivedType(tag: DW_TAG_typedef, name: "HILIGHT_REC", file: !1375, line: 48, baseType: !1376)
!1375 = !DIFile(filename: "formats.h", directory: "/home/lichi/Desktop/irssi/task1")
!1376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_HILIGHT_REC", file: !1377, line: 7, size: 512, align: 64, elements: !1378)
!1377 = !DIFile(filename: "hilight-text.h", directory: "/home/lichi/Desktop/irssi/task1")
!1378 = !{!1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1398}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !1376, file: !1377, line: 8, baseType: !369, size: 64, align: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !1376, file: !1377, line: 10, baseType: !659, size: 64, align: 64, offset: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1376, file: !1377, line: 11, baseType: !332, size: 32, align: 32, offset: 128)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "color", scope: !1376, file: !1377, line: 12, baseType: !369, size: 64, align: 64, offset: 192)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "act_color", scope: !1376, file: !1377, line: 14, baseType: !369, size: 64, align: 64, offset: 256)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1376, file: !1377, line: 15, baseType: !332, size: 32, align: 32, offset: 320)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !1376, file: !1377, line: 17, baseType: !427, size: 1, align: 32, offset: 352, flags: DIFlagBitField, extraData: i64 352)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !1376, file: !1377, line: 18, baseType: !427, size: 1, align: 32, offset: 353, flags: DIFlagBitField, extraData: i64 352)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "nickmask", scope: !1376, file: !1377, line: 20, baseType: !427, size: 1, align: 32, offset: 354, flags: DIFlagBitField, extraData: i64 352)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "fullword", scope: !1376, file: !1377, line: 21, baseType: !427, size: 1, align: 32, offset: 355, flags: DIFlagBitField, extraData: i64 352)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "regexp", scope: !1376, file: !1377, line: 22, baseType: !427, size: 1, align: 32, offset: 356, flags: DIFlagBitField, extraData: i64 352)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "case_sensitive", scope: !1376, file: !1377, line: 23, baseType: !427, size: 1, align: 32, offset: 357, flags: DIFlagBitField, extraData: i64 352)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "preg", scope: !1376, file: !1377, line: 24, baseType: !1392, size: 64, align: 64, offset: 384)
!1392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1393, size: 64, align: 64)
!1393 = !DIDerivedType(tag: DW_TAG_typedef, name: "Regex", file: !1394, line: 9, baseType: !1395)
!1394 = !DIFile(filename: "../../../src/core/iregex.h", directory: "/home/lichi/Desktop/irssi/task1")
!1395 = !DIDerivedType(tag: DW_TAG_typedef, name: "GRegex", file: !1396, line: 414, baseType: !1397)
!1396 = !DIFile(filename: "/usr/include/glib-2.0/glib/gregex.h", directory: "/home/lichi/Desktop/irssi/task1")
!1397 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GRegex", file: !1396, line: 414, flags: DIFlagFwdDecl)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !1376, file: !1377, line: 25, baseType: !369, size: 64, align: 64, offset: 448)
!1399 = !DILocation(line: 177, column: 15, scope: !1341)
!1400 = !DILocalVariable(name: "dest", scope: !1341, file: !842, line: 178, type: !1401)
!1401 = !DIDerivedType(tag: DW_TAG_typedef, name: "TEXT_DEST_REC", file: !1375, line: 62, baseType: !1402)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_TEXT_DEST_REC", file: !1375, line: 50, size: 576, align: 64, elements: !1403)
!1403 = !{!1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "window", scope: !1402, file: !1375, line: 51, baseType: !794, size: 64, align: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !1402, file: !1375, line: 52, baseType: !350, size: 64, align: 64, offset: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "server_tag", scope: !1402, file: !1375, line: 53, baseType: !329, size: 64, align: 64, offset: 128)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1402, file: !1375, line: 54, baseType: !329, size: 64, align: 64, offset: 192)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !1402, file: !1375, line: 55, baseType: !329, size: 64, align: 64, offset: 256)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1402, file: !1375, line: 56, baseType: !329, size: 64, align: 64, offset: 320)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1402, file: !1375, line: 57, baseType: !332, size: 32, align: 32, offset: 384)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_priority", scope: !1402, file: !1375, line: 59, baseType: !332, size: 32, align: 32, offset: 416)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "hilight_color", scope: !1402, file: !1375, line: 60, baseType: !369, size: 64, align: 64, offset: 448)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1402, file: !1375, line: 61, baseType: !332, size: 32, align: 32, offset: 512)
!1414 = !DILocation(line: 178, column: 16, scope: !1341)
!1415 = !DILocation(line: 182, column: 25, scope: !1341)
!1416 = !DILocation(line: 182, column: 33, scope: !1341)
!1417 = !DILocation(line: 182, column: 12, scope: !1341)
!1418 = !DILocation(line: 182, column: 10, scope: !1341)
!1419 = !DILocation(line: 183, column: 6, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1341, file: !842, line: 183, column: 6)
!1421 = !DILocation(line: 183, column: 14, scope: !1420)
!1422 = !DILocation(line: 183, column: 21, scope: !1420)
!1423 = !DILocation(line: 183, column: 24, scope: !1424)
!1424 = !DILexicalBlockFile(scope: !1420, file: !842, discriminator: 1)
!1425 = !DILocation(line: 183, column: 32, scope: !1424)
!1426 = !DILocation(line: 183, column: 6, scope: !1424)
!1427 = !DILocation(line: 184, column: 41, scope: !1420)
!1428 = !DILocation(line: 184, column: 50, scope: !1420)
!1429 = !DILocation(line: 184, column: 27, scope: !1420)
!1430 = !DILocation(line: 184, column: 25, scope: !1420)
!1431 = !DILocation(line: 184, column: 17, scope: !1420)
!1432 = !DILocation(line: 186, column: 12, scope: !1341)
!1433 = !DILocation(line: 186, column: 11, scope: !1341)
!1434 = !DILocation(line: 186, column: 11, scope: !1435)
!1435 = !DILexicalBlockFile(scope: !1341, file: !842, discriminator: 1)
!1436 = !DILocation(line: 187, column: 4, scope: !1341)
!1437 = !DILocation(line: 187, column: 3, scope: !1341)
!1438 = !DILocation(line: 188, column: 18, scope: !1341)
!1439 = !DILocation(line: 188, column: 27, scope: !1341)
!1440 = !DILocation(line: 188, column: 32, scope: !1341)
!1441 = !DILocation(line: 188, column: 40, scope: !1341)
!1442 = !DILocation(line: 188, column: 3, scope: !1341)
!1443 = !DILocation(line: 187, column: 3, scope: !1435)
!1444 = !DILocation(line: 189, column: 29, scope: !1341)
!1445 = !DILocation(line: 189, column: 38, scope: !1341)
!1446 = !DILocation(line: 189, column: 43, scope: !1341)
!1447 = !DILocation(line: 189, column: 51, scope: !1341)
!1448 = !DILocation(line: 189, column: 3, scope: !1341)
!1449 = !DILocation(line: 187, column: 3, scope: !1450)
!1450 = !DILexicalBlockFile(scope: !1341, file: !842, discriminator: 2)
!1451 = !DILocation(line: 187, column: 3, scope: !1452)
!1452 = !DILexicalBlockFile(scope: !1341, file: !842, discriminator: 3)
!1453 = !DILocation(line: 186, column: 11, scope: !1450)
!1454 = !DILocation(line: 186, column: 11, scope: !1452)
!1455 = !DILocation(line: 186, column: 9, scope: !1452)
!1456 = !DILocation(line: 190, column: 12, scope: !1341)
!1457 = !DILocation(line: 190, column: 12, scope: !1435)
!1458 = !DILocation(line: 191, column: 22, scope: !1341)
!1459 = !DILocation(line: 191, column: 30, scope: !1341)
!1460 = !DILocation(line: 191, column: 38, scope: !1341)
!1461 = !DILocation(line: 191, column: 44, scope: !1341)
!1462 = !DILocation(line: 191, column: 70, scope: !1341)
!1463 = !DILocation(line: 191, column: 3, scope: !1341)
!1464 = !DILocation(line: 190, column: 12, scope: !1450)
!1465 = !DILocation(line: 190, column: 12, scope: !1452)
!1466 = !DILocation(line: 190, column: 10, scope: !1452)
!1467 = !DILocation(line: 192, column: 11, scope: !1341)
!1468 = !DILocation(line: 192, column: 19, scope: !1341)
!1469 = !DILocation(line: 192, column: 10, scope: !1341)
!1470 = !DILocation(line: 192, column: 10, scope: !1435)
!1471 = !DILocation(line: 192, column: 54, scope: !1450)
!1472 = !DILocation(line: 192, column: 36, scope: !1450)
!1473 = !DILocation(line: 192, column: 10, scope: !1450)
!1474 = !DILocation(line: 192, column: 10, scope: !1452)
!1475 = !DILocation(line: 192, column: 8, scope: !1452)
!1476 = !DILocation(line: 194, column: 18, scope: !1341)
!1477 = !DILocation(line: 194, column: 26, scope: !1341)
!1478 = !DILocation(line: 194, column: 33, scope: !1341)
!1479 = !DILocation(line: 195, column: 42, scope: !1341)
!1480 = !DILocation(line: 195, column: 26, scope: !1341)
!1481 = !DILocation(line: 195, column: 4, scope: !1341)
!1482 = !DILocation(line: 195, column: 3, scope: !1341)
!1483 = !DILocation(line: 194, column: 33, scope: !1435)
!1484 = !DILocation(line: 194, column: 33, scope: !1450)
!1485 = !DILocation(line: 194, column: 16, scope: !1450)
!1486 = !DILocation(line: 196, column: 7, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1341, file: !842, line: 196, column: 6)
!1488 = !DILocation(line: 196, column: 21, scope: !1487)
!1489 = !DILocation(line: 196, column: 24, scope: !1490)
!1490 = !DILexicalBlockFile(scope: !1487, file: !842, discriminator: 1)
!1491 = !DILocation(line: 196, column: 66, scope: !1490)
!1492 = !DILocation(line: 197, column: 56, scope: !1487)
!1493 = !DILocation(line: 197, column: 67, scope: !1487)
!1494 = !DILocation(line: 197, column: 7, scope: !1487)
!1495 = !DILocation(line: 197, column: 76, scope: !1487)
!1496 = !DILocation(line: 197, column: 83, scope: !1487)
!1497 = !DILocation(line: 197, column: 88, scope: !1487)
!1498 = !DILocation(line: 196, column: 6, scope: !1450)
!1499 = !DILocation(line: 198, column: 17, scope: !1487)
!1500 = !DILocation(line: 198, column: 3, scope: !1487)
!1501 = !DILocation(line: 200, column: 8, scope: !1341)
!1502 = !DILocation(line: 201, column: 6, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1341, file: !842, line: 201, column: 6)
!1504 = !DILocation(line: 201, column: 6, scope: !1341)
!1505 = !DILocation(line: 202, column: 9, scope: !1503)
!1506 = !DILocation(line: 202, column: 3, scope: !1503)
!1507 = !DILocation(line: 204, column: 19, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1341, file: !842, line: 204, column: 6)
!1509 = !DILocation(line: 204, column: 27, scope: !1508)
!1510 = !DILocation(line: 204, column: 33, scope: !1508)
!1511 = !DILocation(line: 204, column: 42, scope: !1508)
!1512 = !DILocation(line: 204, column: 50, scope: !1508)
!1513 = !DILocation(line: 204, column: 55, scope: !1508)
!1514 = !DILocation(line: 204, column: 61, scope: !1508)
!1515 = !DILocation(line: 204, column: 6, scope: !1508)
!1516 = !DILocation(line: 204, column: 6, scope: !1341)
!1517 = !DILocation(line: 205, column: 9, scope: !1508)
!1518 = !DILocation(line: 205, column: 3, scope: !1508)
!1519 = !DILocation(line: 207, column: 19, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1341, file: !842, line: 207, column: 6)
!1521 = !DILocation(line: 207, column: 27, scope: !1520)
!1522 = !DILocation(line: 207, column: 33, scope: !1520)
!1523 = !DILocation(line: 207, column: 42, scope: !1520)
!1524 = !DILocation(line: 207, column: 50, scope: !1520)
!1525 = !DILocation(line: 207, column: 55, scope: !1520)
!1526 = !DILocation(line: 207, column: 61, scope: !1520)
!1527 = !DILocation(line: 207, column: 6, scope: !1520)
!1528 = !DILocation(line: 207, column: 6, scope: !1341)
!1529 = !DILocation(line: 208, column: 9, scope: !1520)
!1530 = !DILocation(line: 208, column: 3, scope: !1520)
!1531 = !DILocation(line: 210, column: 6, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1341, file: !842, line: 210, column: 6)
!1533 = !DILocation(line: 210, column: 6, scope: !1341)
!1534 = !DILocation(line: 211, column: 51, scope: !1532)
!1535 = !DILocation(line: 211, column: 35, scope: !1532)
!1536 = !DILocation(line: 211, column: 60, scope: !1532)
!1537 = !DILocation(line: 211, column: 19, scope: !1532)
!1538 = !DILocation(line: 211, column: 17, scope: !1532)
!1539 = !DILocation(line: 211, column: 7, scope: !1532)
!1540 = !DILocation(line: 211, column: 3, scope: !1532)
!1541 = !DILocation(line: 215, column: 38, scope: !1341)
!1542 = !DILocation(line: 215, column: 13, scope: !1341)
!1543 = !DILocation(line: 215, column: 11, scope: !1341)
!1544 = !DILocation(line: 216, column: 14, scope: !1341)
!1545 = !DILocation(line: 216, column: 22, scope: !1341)
!1546 = !DILocation(line: 216, column: 31, scope: !1435)
!1547 = !DILocation(line: 216, column: 14, scope: !1435)
!1548 = !DILocation(line: 217, column: 23, scope: !1341)
!1549 = !DILocation(line: 217, column: 35, scope: !1341)
!1550 = !DILocation(line: 217, column: 3, scope: !1341)
!1551 = !DILocation(line: 216, column: 14, scope: !1450)
!1552 = !DILocation(line: 216, column: 14, scope: !1452)
!1553 = !DILocation(line: 216, column: 12, scope: !1452)
!1554 = !DILocation(line: 218, column: 6, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1341, file: !842, line: 218, column: 6)
!1556 = !DILocation(line: 218, column: 16, scope: !1555)
!1557 = !DILocation(line: 218, column: 6, scope: !1341)
!1558 = !DILocation(line: 219, column: 15, scope: !1555)
!1559 = !DILocation(line: 219, column: 13, scope: !1555)
!1560 = !DILocation(line: 219, column: 3, scope: !1555)
!1561 = !DILocation(line: 221, column: 28, scope: !1341)
!1562 = !DILocation(line: 221, column: 36, scope: !1341)
!1563 = !DILocation(line: 221, column: 44, scope: !1341)
!1564 = !DILocation(line: 221, column: 2, scope: !1341)
!1565 = !DILocation(line: 222, column: 17, scope: !1341)
!1566 = !DILocation(line: 222, column: 7, scope: !1341)
!1567 = !DILocation(line: 222, column: 15, scope: !1341)
!1568 = !DILocation(line: 223, column: 14, scope: !1341)
!1569 = !DILocation(line: 223, column: 7, scope: !1341)
!1570 = !DILocation(line: 223, column: 12, scope: !1341)
!1571 = !DILocation(line: 224, column: 6, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1341, file: !842, line: 224, column: 6)
!1573 = !DILocation(line: 224, column: 12, scope: !1572)
!1574 = !DILocation(line: 224, column: 6, scope: !1341)
!1575 = !DILocation(line: 226, column: 34, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1572, file: !842, line: 224, column: 20)
!1577 = !DILocation(line: 226, column: 3, scope: !1576)
!1578 = !DILocation(line: 227, column: 8, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1576, file: !842, line: 227, column: 7)
!1580 = !DILocation(line: 227, column: 7, scope: !1576)
!1581 = !DILocation(line: 228, column: 73, scope: !1579)
!1582 = !DILocation(line: 228, column: 80, scope: !1579)
!1583 = !DILocation(line: 228, column: 91, scope: !1579)
!1584 = !DILocation(line: 228, column: 96, scope: !1579)
!1585 = !DILocation(line: 228, column: 4, scope: !1579)
!1586 = !DILocation(line: 231, column: 81, scope: !1579)
!1587 = !DILocation(line: 231, column: 88, scope: !1579)
!1588 = !DILocation(line: 231, column: 99, scope: !1579)
!1589 = !DILocation(line: 231, column: 107, scope: !1579)
!1590 = !DILocation(line: 231, column: 112, scope: !1579)
!1591 = !DILocation(line: 231, column: 4, scope: !1579)
!1592 = !DILocation(line: 234, column: 2, scope: !1576)
!1593 = !DILocation(line: 235, column: 8, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !842, line: 235, column: 7)
!1595 = distinct !DILexicalBlock(scope: !1572, file: !842, line: 234, column: 9)
!1596 = !DILocation(line: 235, column: 7, scope: !1595)
!1597 = !DILocation(line: 236, column: 53, scope: !1594)
!1598 = !DILocation(line: 236, column: 90, scope: !1594)
!1599 = !DILocation(line: 236, column: 101, scope: !1594)
!1600 = !DILocation(line: 236, column: 106, scope: !1594)
!1601 = !DILocation(line: 236, column: 4, scope: !1594)
!1602 = !DILocation(line: 240, column: 53, scope: !1594)
!1603 = !DILocation(line: 240, column: 106, scope: !1594)
!1604 = !DILocation(line: 240, column: 117, scope: !1594)
!1605 = !DILocation(line: 240, column: 125, scope: !1594)
!1606 = !DILocation(line: 240, column: 130, scope: !1594)
!1607 = !DILocation(line: 240, column: 4, scope: !1594)
!1608 = !DILocation(line: 246, column: 9, scope: !1341)
!1609 = !DILocation(line: 246, column: 2, scope: !1341)
!1610 = !DILocation(line: 247, column: 9, scope: !1341)
!1611 = !DILocation(line: 247, column: 2, scope: !1341)
!1612 = !DILocation(line: 248, column: 9, scope: !1341)
!1613 = !DILocation(line: 248, column: 2, scope: !1341)
!1614 = !DILocation(line: 249, column: 1, scope: !1341)
!1615 = distinct !DISubprogram(name: "sig_message_private", scope: !842, file: !842, line: 251, type: !1616, isLocal: true, isDefinition: true, scopeLine: 253, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !849)
!1616 = !DISubroutineType(types: !1617)
!1617 = !{null, !350, !329, !329, !329, !329}
!1618 = !DILocalVariable(name: "server", arg: 1, scope: !1615, file: !842, line: 251, type: !350)
!1619 = !DILocation(line: 251, column: 45, scope: !1615)
!1620 = !DILocalVariable(name: "msg", arg: 2, scope: !1615, file: !842, line: 251, type: !329)
!1621 = !DILocation(line: 251, column: 65, scope: !1615)
!1622 = !DILocalVariable(name: "nick", arg: 3, scope: !1615, file: !842, line: 252, type: !329)
!1623 = !DILocation(line: 252, column: 17, scope: !1615)
!1624 = !DILocalVariable(name: "address", arg: 4, scope: !1615, file: !842, line: 252, type: !329)
!1625 = !DILocation(line: 252, column: 35, scope: !1615)
!1626 = !DILocalVariable(name: "target", arg: 5, scope: !1615, file: !842, line: 252, type: !329)
!1627 = !DILocation(line: 252, column: 56, scope: !1615)
!1628 = !DILocalVariable(name: "query", scope: !1615, file: !842, line: 254, type: !668)
!1629 = !DILocation(line: 254, column: 13, scope: !1615)
!1630 = !DILocalVariable(name: "freemsg", scope: !1615, file: !842, line: 255, type: !369)
!1631 = !DILocation(line: 255, column: 15, scope: !1615)
!1632 = !DILocalVariable(name: "level", scope: !1615, file: !842, line: 256, type: !332)
!1633 = !DILocation(line: 256, column: 6, scope: !1615)
!1634 = !DILocalVariable(name: "own", scope: !1615, file: !842, line: 259, type: !332)
!1635 = !DILocation(line: 259, column: 6, scope: !1615)
!1636 = !DILocation(line: 259, column: 24, scope: !1615)
!1637 = !DILocation(line: 259, column: 30, scope: !1615)
!1638 = !DILocation(line: 259, column: 38, scope: !1615)
!1639 = !DILocation(line: 259, column: 14, scope: !1615)
!1640 = !DILocation(line: 259, column: 13, scope: !1615)
!1641 = !DILocation(line: 261, column: 21, scope: !1615)
!1642 = !DILocation(line: 261, column: 29, scope: !1615)
!1643 = !DILocation(line: 261, column: 35, scope: !1644)
!1644 = !DILexicalBlockFile(scope: !1615, file: !842, discriminator: 1)
!1645 = !DILocation(line: 261, column: 29, scope: !1644)
!1646 = !DILocation(line: 261, column: 44, scope: !1647)
!1647 = !DILexicalBlockFile(scope: !1615, file: !842, discriminator: 2)
!1648 = !DILocation(line: 261, column: 29, scope: !1647)
!1649 = !DILocation(line: 261, column: 29, scope: !1650)
!1650 = !DILexicalBlockFile(scope: !1615, file: !842, discriminator: 3)
!1651 = !DILocation(line: 261, column: 10, scope: !1650)
!1652 = !DILocation(line: 261, column: 8, scope: !1650)
!1653 = !DILocation(line: 263, column: 6, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1615, file: !842, line: 263, column: 6)
!1655 = !DILocation(line: 263, column: 6, scope: !1615)
!1656 = !DILocation(line: 264, column: 51, scope: !1654)
!1657 = !DILocation(line: 264, column: 35, scope: !1654)
!1658 = !DILocation(line: 264, column: 58, scope: !1654)
!1659 = !DILocation(line: 264, column: 19, scope: !1654)
!1660 = !DILocation(line: 264, column: 17, scope: !1654)
!1661 = !DILocation(line: 264, column: 7, scope: !1654)
!1662 = !DILocation(line: 264, column: 3, scope: !1654)
!1663 = !DILocation(line: 266, column: 19, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1615, file: !842, line: 266, column: 6)
!1665 = !DILocation(line: 266, column: 27, scope: !1664)
!1666 = !DILocation(line: 266, column: 33, scope: !1664)
!1667 = !DILocation(line: 266, column: 47, scope: !1664)
!1668 = !DILocation(line: 266, column: 52, scope: !1664)
!1669 = !DILocation(line: 266, column: 58, scope: !1664)
!1670 = !DILocation(line: 266, column: 6, scope: !1664)
!1671 = !DILocation(line: 266, column: 6, scope: !1615)
!1672 = !DILocation(line: 267, column: 9, scope: !1664)
!1673 = !DILocation(line: 267, column: 3, scope: !1664)
!1674 = !DILocation(line: 269, column: 19, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1615, file: !842, line: 269, column: 6)
!1676 = !DILocation(line: 269, column: 27, scope: !1675)
!1677 = !DILocation(line: 269, column: 33, scope: !1675)
!1678 = !DILocation(line: 269, column: 47, scope: !1675)
!1679 = !DILocation(line: 269, column: 52, scope: !1675)
!1680 = !DILocation(line: 269, column: 58, scope: !1675)
!1681 = !DILocation(line: 269, column: 6, scope: !1675)
!1682 = !DILocation(line: 269, column: 6, scope: !1615)
!1683 = !DILocation(line: 270, column: 9, scope: !1675)
!1684 = !DILocation(line: 270, column: 3, scope: !1675)
!1685 = !DILocation(line: 272, column: 6, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1615, file: !842, line: 272, column: 6)
!1687 = !DILocation(line: 272, column: 6, scope: !1615)
!1688 = !DILocation(line: 273, column: 40, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1686, file: !842, line: 272, column: 11)
!1690 = !DILocation(line: 273, column: 48, scope: !1689)
!1691 = !DILocation(line: 273, column: 56, scope: !1689)
!1692 = !DILocation(line: 273, column: 63, scope: !1689)
!1693 = !DILocation(line: 273, column: 69, scope: !1689)
!1694 = !DILocation(line: 273, column: 53, scope: !1689)
!1695 = !DILocation(line: 273, column: 61, scope: !1689)
!1696 = !DILocation(line: 273, column: 66, scope: !1689)
!1697 = !DILocation(line: 273, column: 74, scope: !1689)
!1698 = !DILocation(line: 273, column: 3, scope: !1689)
!1699 = !DILocation(line: 276, column: 2, scope: !1689)
!1700 = !DILocation(line: 277, column: 40, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1686, file: !842, line: 276, column: 9)
!1702 = !DILocation(line: 277, column: 48, scope: !1701)
!1703 = !DILocation(line: 277, column: 54, scope: !1701)
!1704 = !DILocation(line: 277, column: 61, scope: !1701)
!1705 = !DILocation(line: 277, column: 67, scope: !1701)
!1706 = !DILocation(line: 277, column: 45, scope: !1701)
!1707 = !DILocation(line: 277, column: 51, scope: !1701)
!1708 = !DILocation(line: 277, column: 60, scope: !1701)
!1709 = !DILocation(line: 277, column: 3, scope: !1701)
!1710 = !DILocation(line: 282, column: 9, scope: !1615)
!1711 = !DILocation(line: 282, column: 2, scope: !1615)
!1712 = !DILocation(line: 283, column: 1, scope: !1615)
!1713 = distinct !DISubprogram(name: "sig_message_own_public", scope: !842, file: !842, line: 285, type: !1714, isLocal: true, isDefinition: true, scopeLine: 287, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !849)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{null, !350, !329, !329}
!1716 = !DILocalVariable(name: "server", arg: 1, scope: !1713, file: !842, line: 285, type: !350)
!1717 = !DILocation(line: 285, column: 48, scope: !1713)
!1718 = !DILocalVariable(name: "msg", arg: 2, scope: !1713, file: !842, line: 285, type: !329)
!1719 = !DILocation(line: 285, column: 68, scope: !1713)
!1720 = !DILocalVariable(name: "target", arg: 3, scope: !1713, file: !842, line: 286, type: !329)
!1721 = !DILocation(line: 286, column: 20, scope: !1713)
!1722 = !DILocalVariable(name: "window", scope: !1713, file: !842, line: 288, type: !794)
!1723 = !DILocation(line: 288, column: 14, scope: !1713)
!1724 = !DILocalVariable(name: "channel", scope: !1713, file: !842, line: 289, type: !334)
!1725 = !DILocation(line: 289, column: 15, scope: !1713)
!1726 = !DILocalVariable(name: "nickmode", scope: !1713, file: !842, line: 290, type: !369)
!1727 = !DILocation(line: 290, column: 8, scope: !1713)
!1728 = !DILocalVariable(name: "freemsg", scope: !1713, file: !842, line: 291, type: !369)
!1729 = !DILocation(line: 291, column: 15, scope: !1713)
!1730 = !DILocalVariable(name: "print_channel", scope: !1713, file: !842, line: 292, type: !332)
!1731 = !DILocation(line: 292, column: 6, scope: !1713)
!1732 = !DILocation(line: 293, column: 25, scope: !1713)
!1733 = !DILocation(line: 293, column: 33, scope: !1713)
!1734 = !DILocation(line: 293, column: 12, scope: !1713)
!1735 = !DILocation(line: 293, column: 10, scope: !1713)
!1736 = !DILocation(line: 294, column: 6, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1713, file: !842, line: 294, column: 6)
!1738 = !DILocation(line: 294, column: 14, scope: !1737)
!1739 = !DILocation(line: 294, column: 6, scope: !1713)
!1740 = !DILocation(line: 295, column: 12, scope: !1737)
!1741 = !DILocation(line: 295, column: 21, scope: !1737)
!1742 = !DILocation(line: 295, column: 10, scope: !1737)
!1743 = !DILocation(line: 295, column: 3, scope: !1737)
!1744 = !DILocation(line: 297, column: 34, scope: !1713)
!1745 = !DILocation(line: 297, column: 43, scope: !1713)
!1746 = !DILocation(line: 297, column: 51, scope: !1713)
!1747 = !DILocation(line: 297, column: 13, scope: !1713)
!1748 = !DILocation(line: 297, column: 11, scope: !1713)
!1749 = !DILocation(line: 299, column: 11, scope: !1713)
!1750 = !DILocation(line: 299, column: 19, scope: !1713)
!1751 = !DILocation(line: 299, column: 11, scope: !1752)
!1752 = !DILexicalBlockFile(scope: !1713, file: !842, discriminator: 1)
!1753 = !DILocation(line: 300, column: 53, scope: !1713)
!1754 = !DILocation(line: 300, column: 64, scope: !1713)
!1755 = !DILocation(line: 300, column: 4, scope: !1713)
!1756 = !DILocation(line: 299, column: 11, scope: !1757)
!1757 = !DILexicalBlockFile(scope: !1713, file: !842, discriminator: 2)
!1758 = !DILocation(line: 299, column: 11, scope: !1759)
!1759 = !DILexicalBlockFile(scope: !1713, file: !842, discriminator: 3)
!1760 = !DILocation(line: 299, column: 9, scope: !1759)
!1761 = !DILocation(line: 302, column: 18, scope: !1713)
!1762 = !DILocation(line: 302, column: 25, scope: !1713)
!1763 = !DILocation(line: 302, column: 32, scope: !1713)
!1764 = !DILocation(line: 303, column: 3, scope: !1713)
!1765 = !DILocation(line: 303, column: 11, scope: !1713)
!1766 = !DILocation(line: 303, column: 37, scope: !1713)
!1767 = !DILocation(line: 303, column: 21, scope: !1713)
!1768 = !DILocation(line: 303, column: 18, scope: !1713)
!1769 = !DILocation(line: 302, column: 32, scope: !1752)
!1770 = !DILocation(line: 302, column: 32, scope: !1757)
!1771 = !DILocation(line: 302, column: 16, scope: !1757)
!1772 = !DILocation(line: 305, column: 7, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1713, file: !842, line: 305, column: 6)
!1774 = !DILocation(line: 305, column: 21, scope: !1773)
!1775 = !DILocation(line: 305, column: 24, scope: !1776)
!1776 = !DILexicalBlockFile(scope: !1773, file: !842, discriminator: 1)
!1777 = !DILocation(line: 305, column: 66, scope: !1776)
!1778 = !DILocation(line: 306, column: 6, scope: !1773)
!1779 = !DILocation(line: 306, column: 13, scope: !1773)
!1780 = !DILocation(line: 306, column: 20, scope: !1773)
!1781 = !DILocation(line: 306, column: 38, scope: !1776)
!1782 = !DILocation(line: 306, column: 46, scope: !1776)
!1783 = !DILocation(line: 306, column: 23, scope: !1776)
!1784 = !DILocation(line: 306, column: 53, scope: !1776)
!1785 = !DILocation(line: 305, column: 6, scope: !1757)
!1786 = !DILocation(line: 307, column: 17, scope: !1773)
!1787 = !DILocation(line: 307, column: 3, scope: !1773)
!1788 = !DILocation(line: 309, column: 6, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1713, file: !842, line: 309, column: 6)
!1790 = !DILocation(line: 309, column: 6, scope: !1713)
!1791 = !DILocation(line: 310, column: 51, scope: !1789)
!1792 = !DILocation(line: 310, column: 35, scope: !1789)
!1793 = !DILocation(line: 310, column: 60, scope: !1789)
!1794 = !DILocation(line: 310, column: 19, scope: !1789)
!1795 = !DILocation(line: 310, column: 17, scope: !1789)
!1796 = !DILocation(line: 310, column: 7, scope: !1789)
!1797 = !DILocation(line: 310, column: 3, scope: !1789)
!1798 = !DILocation(line: 312, column: 7, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1713, file: !842, line: 312, column: 6)
!1800 = !DILocation(line: 312, column: 6, scope: !1713)
!1801 = !DILocation(line: 313, column: 40, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1799, file: !842, line: 312, column: 22)
!1803 = !DILocation(line: 313, column: 48, scope: !1802)
!1804 = !DILocation(line: 313, column: 125, scope: !1802)
!1805 = !DILocation(line: 313, column: 133, scope: !1802)
!1806 = !DILocation(line: 313, column: 139, scope: !1802)
!1807 = !DILocation(line: 313, column: 144, scope: !1802)
!1808 = !DILocation(line: 313, column: 3, scope: !1802)
!1809 = !DILocation(line: 315, column: 2, scope: !1802)
!1810 = !DILocation(line: 316, column: 40, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1799, file: !842, line: 315, column: 9)
!1812 = !DILocation(line: 316, column: 48, scope: !1811)
!1813 = !DILocation(line: 316, column: 133, scope: !1811)
!1814 = !DILocation(line: 316, column: 141, scope: !1811)
!1815 = !DILocation(line: 316, column: 147, scope: !1811)
!1816 = !DILocation(line: 316, column: 155, scope: !1811)
!1817 = !DILocation(line: 316, column: 160, scope: !1811)
!1818 = !DILocation(line: 316, column: 3, scope: !1811)
!1819 = !DILocation(line: 320, column: 9, scope: !1713)
!1820 = !DILocation(line: 320, column: 2, scope: !1713)
!1821 = !DILocation(line: 321, column: 9, scope: !1713)
!1822 = !DILocation(line: 321, column: 2, scope: !1713)
!1823 = !DILocation(line: 322, column: 1, scope: !1713)
!1824 = distinct !DISubprogram(name: "sig_message_own_private", scope: !842, file: !842, line: 324, type: !1825, isLocal: true, isDefinition: true, scopeLine: 326, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !849)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{null, !350, !329, !329, !329}
!1827 = !DILocalVariable(name: "server", arg: 1, scope: !1824, file: !842, line: 324, type: !350)
!1828 = !DILocation(line: 324, column: 49, scope: !1824)
!1829 = !DILocalVariable(name: "msg", arg: 2, scope: !1824, file: !842, line: 324, type: !329)
!1830 = !DILocation(line: 324, column: 69, scope: !1824)
!1831 = !DILocalVariable(name: "target", arg: 3, scope: !1824, file: !842, line: 325, type: !329)
!1832 = !DILocation(line: 325, column: 21, scope: !1824)
!1833 = !DILocalVariable(name: "origtarget", arg: 4, scope: !1824, file: !842, line: 325, type: !329)
!1834 = !DILocation(line: 325, column: 41, scope: !1824)
!1835 = !DILocalVariable(name: "query", scope: !1824, file: !842, line: 327, type: !668)
!1836 = !DILocation(line: 327, column: 13, scope: !1824)
!1837 = !DILocalVariable(name: "freemsg", scope: !1824, file: !842, line: 328, type: !369)
!1838 = !DILocation(line: 328, column: 15, scope: !1824)
!1839 = !DILocation(line: 330, column: 2, scope: !1824)
!1840 = distinct !{!1840, !1839}
!1841 = !DILocation(line: 330, column: 10, scope: !1842)
!1842 = !DILexicalBlockFile(scope: !1843, file: !842, discriminator: 1)
!1843 = distinct !DILexicalBlock(scope: !1844, file: !842, line: 330, column: 10)
!1844 = distinct !DILexicalBlock(scope: !1824, file: !842, line: 330, column: 4)
!1845 = !DILocation(line: 330, column: 17, scope: !1842)
!1846 = !DILocation(line: 330, column: 5, scope: !1847)
!1847 = !DILexicalBlockFile(scope: !1848, file: !842, discriminator: 2)
!1848 = distinct !DILexicalBlock(scope: !1843, file: !842, line: 330, column: 3)
!1849 = !DILocation(line: 330, column: 14, scope: !1850)
!1850 = !DILexicalBlockFile(scope: !1851, file: !842, discriminator: 3)
!1851 = distinct !DILexicalBlock(scope: !1843, file: !842, line: 330, column: 12)
!1852 = !DILocation(line: 330, column: 101, scope: !1850)
!1853 = !DILocation(line: 330, column: 112, scope: !1854)
!1854 = !DILexicalBlockFile(scope: !1844, file: !842, discriminator: 4)
!1855 = !DILocation(line: 331, column: 2, scope: !1824)
!1856 = distinct !{!1856, !1855}
!1857 = !DILocation(line: 331, column: 10, scope: !1858)
!1858 = !DILexicalBlockFile(scope: !1859, file: !842, discriminator: 1)
!1859 = distinct !DILexicalBlock(scope: !1860, file: !842, line: 331, column: 10)
!1860 = distinct !DILexicalBlock(scope: !1824, file: !842, line: 331, column: 4)
!1861 = !DILocation(line: 331, column: 14, scope: !1858)
!1862 = !DILocation(line: 331, column: 5, scope: !1863)
!1863 = !DILexicalBlockFile(scope: !1864, file: !842, discriminator: 2)
!1864 = distinct !DILexicalBlock(scope: !1859, file: !842, line: 331, column: 3)
!1865 = !DILocation(line: 331, column: 14, scope: !1866)
!1866 = !DILexicalBlockFile(scope: !1867, file: !842, discriminator: 3)
!1867 = distinct !DILexicalBlock(scope: !1859, file: !842, line: 331, column: 12)
!1868 = !DILocation(line: 331, column: 98, scope: !1866)
!1869 = !DILocation(line: 331, column: 109, scope: !1870)
!1870 = !DILexicalBlockFile(scope: !1860, file: !842, discriminator: 4)
!1871 = !DILocation(line: 332, column: 6, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1824, file: !842, line: 332, column: 6)
!1873 = !DILocation(line: 332, column: 13, scope: !1872)
!1874 = !DILocation(line: 332, column: 6, scope: !1824)
!1875 = !DILocation(line: 336, column: 3, scope: !1876)
!1876 = distinct !DILexicalBlock(scope: !1872, file: !842, line: 332, column: 21)
!1877 = distinct !{!1877, !1875}
!1878 = !DILocation(line: 336, column: 21, scope: !1879)
!1879 = !DILexicalBlockFile(scope: !1880, file: !842, discriminator: 1)
!1880 = distinct !DILexicalBlock(scope: !1881, file: !842, line: 336, column: 11)
!1881 = distinct !DILexicalBlock(scope: !1876, file: !842, line: 336, column: 5)
!1882 = !DILocation(line: 336, column: 11, scope: !1879)
!1883 = !DILocation(line: 336, column: 38, scope: !1879)
!1884 = !DILocation(line: 336, column: 43, scope: !1879)
!1885 = !DILocation(line: 336, column: 56, scope: !1886)
!1886 = !DILexicalBlockFile(scope: !1880, file: !842, discriminator: 2)
!1887 = !DILocation(line: 336, column: 46, scope: !1886)
!1888 = !DILocation(line: 336, column: 73, scope: !1886)
!1889 = !DILocation(line: 336, column: 11, scope: !1886)
!1890 = !DILocation(line: 336, column: 81, scope: !1891)
!1891 = !DILexicalBlockFile(scope: !1892, file: !842, discriminator: 3)
!1892 = distinct !DILexicalBlock(scope: !1880, file: !842, line: 336, column: 79)
!1893 = !DILocation(line: 336, column: 90, scope: !1894)
!1894 = !DILexicalBlockFile(scope: !1895, file: !842, discriminator: 4)
!1895 = distinct !DILexicalBlock(scope: !1880, file: !842, line: 336, column: 88)
!1896 = !DILocation(line: 336, column: 233, scope: !1894)
!1897 = !DILocation(line: 336, column: 244, scope: !1898)
!1898 = !DILexicalBlockFile(scope: !1881, file: !842, discriminator: 5)
!1899 = !DILocation(line: 339, column: 28, scope: !1876)
!1900 = !DILocation(line: 339, column: 27, scope: !1876)
!1901 = !DILocation(line: 339, column: 39, scope: !1876)
!1902 = !DILocation(line: 339, column: 3, scope: !1876)
!1903 = !DILocation(line: 342, column: 3, scope: !1876)
!1904 = !DILocation(line: 343, column: 3, scope: !1876)
!1905 = !DILocation(line: 346, column: 28, scope: !1824)
!1906 = !DILocation(line: 346, column: 36, scope: !1824)
!1907 = !DILocation(line: 346, column: 10, scope: !1824)
!1908 = !DILocation(line: 346, column: 8, scope: !1824)
!1909 = !DILocation(line: 348, column: 6, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1824, file: !842, line: 348, column: 6)
!1911 = !DILocation(line: 348, column: 6, scope: !1824)
!1912 = !DILocation(line: 349, column: 51, scope: !1910)
!1913 = !DILocation(line: 349, column: 35, scope: !1910)
!1914 = !DILocation(line: 349, column: 58, scope: !1910)
!1915 = !DILocation(line: 349, column: 19, scope: !1910)
!1916 = !DILocation(line: 349, column: 17, scope: !1910)
!1917 = !DILocation(line: 349, column: 7, scope: !1910)
!1918 = !DILocation(line: 349, column: 3, scope: !1910)
!1919 = !DILocation(line: 351, column: 39, scope: !1824)
!1920 = !DILocation(line: 351, column: 47, scope: !1824)
!1921 = !DILocation(line: 351, column: 109, scope: !1824)
!1922 = !DILocation(line: 351, column: 115, scope: !1824)
!1923 = !DILocation(line: 351, column: 52, scope: !1824)
!1924 = !DILocation(line: 351, column: 60, scope: !1824)
!1925 = !DILocation(line: 351, column: 65, scope: !1824)
!1926 = !DILocation(line: 351, column: 73, scope: !1824)
!1927 = !DILocation(line: 351, column: 2, scope: !1824)
!1928 = !DILocation(line: 356, column: 9, scope: !1824)
!1929 = !DILocation(line: 356, column: 2, scope: !1824)
!1930 = !DILocation(line: 357, column: 1, scope: !1824)
!1931 = !DILocation(line: 357, column: 1, scope: !1932)
!1932 = !DILexicalBlockFile(scope: !1824, file: !842, discriminator: 1)
!1933 = distinct !DISubprogram(name: "sig_message_join", scope: !842, file: !842, line: 359, type: !1825, isLocal: true, isDefinition: true, scopeLine: 361, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !849)
!1934 = !DILocalVariable(name: "server", arg: 1, scope: !1933, file: !842, line: 359, type: !350)
!1935 = !DILocation(line: 359, column: 42, scope: !1933)
!1936 = !DILocalVariable(name: "channel", arg: 2, scope: !1933, file: !842, line: 359, type: !329)
!1937 = !DILocation(line: 359, column: 62, scope: !1933)
!1938 = !DILocalVariable(name: "nick", arg: 3, scope: !1933, file: !842, line: 360, type: !329)
!1939 = !DILocation(line: 360, column: 21, scope: !1933)
!1940 = !DILocalVariable(name: "address", arg: 4, scope: !1933, file: !842, line: 360, type: !329)
!1941 = !DILocation(line: 360, column: 39, scope: !1933)
!1942 = !DILocalVariable(name: "level", scope: !1933, file: !842, line: 362, type: !332)
!1943 = !DILocation(line: 362, column: 6, scope: !1933)
!1944 = !DILocation(line: 364, column: 19, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1933, file: !842, line: 364, column: 6)
!1946 = !DILocation(line: 364, column: 27, scope: !1945)
!1947 = !DILocation(line: 364, column: 33, scope: !1945)
!1948 = !DILocation(line: 364, column: 42, scope: !1945)
!1949 = !DILocation(line: 364, column: 56, scope: !1945)
!1950 = !DILocation(line: 364, column: 62, scope: !1945)
!1951 = !DILocation(line: 364, column: 6, scope: !1945)
!1952 = !DILocation(line: 364, column: 6, scope: !1933)
!1953 = !DILocation(line: 365, column: 9, scope: !1945)
!1954 = !DILocation(line: 365, column: 3, scope: !1945)
!1955 = !DILocation(line: 367, column: 19, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1933, file: !842, line: 367, column: 6)
!1957 = !DILocation(line: 367, column: 27, scope: !1956)
!1958 = !DILocation(line: 367, column: 33, scope: !1956)
!1959 = !DILocation(line: 367, column: 42, scope: !1956)
!1960 = !DILocation(line: 367, column: 56, scope: !1956)
!1961 = !DILocation(line: 367, column: 62, scope: !1956)
!1962 = !DILocation(line: 367, column: 6, scope: !1956)
!1963 = !DILocation(line: 367, column: 6, scope: !1933)
!1964 = !DILocation(line: 368, column: 9, scope: !1956)
!1965 = !DILocation(line: 368, column: 3, scope: !1956)
!1966 = !DILocation(line: 370, column: 39, scope: !1933)
!1967 = !DILocation(line: 370, column: 47, scope: !1933)
!1968 = !DILocation(line: 370, column: 56, scope: !1933)
!1969 = !DILocation(line: 370, column: 73, scope: !1933)
!1970 = !DILocation(line: 370, column: 79, scope: !1933)
!1971 = !DILocation(line: 370, column: 88, scope: !1933)
!1972 = !DILocation(line: 370, column: 2, scope: !1933)
!1973 = !DILocation(line: 372, column: 1, scope: !1933)
!1974 = distinct !DISubprogram(name: "sig_message_part", scope: !842, file: !842, line: 374, type: !1616, isLocal: true, isDefinition: true, scopeLine: 377, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !849)
!1975 = !DILocalVariable(name: "server", arg: 1, scope: !1974, file: !842, line: 374, type: !350)
!1976 = !DILocation(line: 374, column: 42, scope: !1974)
!1977 = !DILocalVariable(name: "channel", arg: 2, scope: !1974, file: !842, line: 374, type: !329)
!1978 = !DILocation(line: 374, column: 62, scope: !1974)
!1979 = !DILocalVariable(name: "nick", arg: 3, scope: !1974, file: !842, line: 375, type: !329)
!1980 = !DILocation(line: 375, column: 21, scope: !1974)
!1981 = !DILocalVariable(name: "address", arg: 4, scope: !1974, file: !842, line: 375, type: !329)
!1982 = !DILocation(line: 375, column: 39, scope: !1974)
!1983 = !DILocalVariable(name: "reason", arg: 5, scope: !1974, file: !842, line: 376, type: !329)
!1984 = !DILocation(line: 376, column: 21, scope: !1974)
!1985 = !DILocalVariable(name: "level", scope: !1974, file: !842, line: 378, type: !332)
!1986 = !DILocation(line: 378, column: 6, scope: !1974)
!1987 = !DILocation(line: 380, column: 19, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1974, file: !842, line: 380, column: 6)
!1989 = !DILocation(line: 380, column: 27, scope: !1988)
!1990 = !DILocation(line: 380, column: 33, scope: !1988)
!1991 = !DILocation(line: 380, column: 42, scope: !1988)
!1992 = !DILocation(line: 380, column: 56, scope: !1988)
!1993 = !DILocation(line: 380, column: 62, scope: !1988)
!1994 = !DILocation(line: 380, column: 6, scope: !1988)
!1995 = !DILocation(line: 380, column: 6, scope: !1974)
!1996 = !DILocation(line: 381, column: 9, scope: !1988)
!1997 = !DILocation(line: 381, column: 3, scope: !1988)
!1998 = !DILocation(line: 383, column: 19, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1974, file: !842, line: 383, column: 6)
!2000 = !DILocation(line: 383, column: 27, scope: !1999)
!2001 = !DILocation(line: 383, column: 33, scope: !1999)
!2002 = !DILocation(line: 383, column: 42, scope: !1999)
!2003 = !DILocation(line: 383, column: 56, scope: !1999)
!2004 = !DILocation(line: 383, column: 62, scope: !1999)
!2005 = !DILocation(line: 383, column: 6, scope: !1999)
!2006 = !DILocation(line: 383, column: 6, scope: !1974)
!2007 = !DILocation(line: 384, column: 9, scope: !1999)
!2008 = !DILocation(line: 384, column: 3, scope: !1999)
!2009 = !DILocation(line: 386, column: 39, scope: !1974)
!2010 = !DILocation(line: 386, column: 47, scope: !1974)
!2011 = !DILocation(line: 386, column: 56, scope: !1974)
!2012 = !DILocation(line: 386, column: 73, scope: !1974)
!2013 = !DILocation(line: 386, column: 79, scope: !1974)
!2014 = !DILocation(line: 386, column: 88, scope: !1974)
!2015 = !DILocation(line: 386, column: 97, scope: !1974)
!2016 = !DILocation(line: 386, column: 2, scope: !1974)
!2017 = !DILocation(line: 388, column: 1, scope: !1974)
!2018 = distinct !DISubprogram(name: "sig_message_quit", scope: !842, file: !842, line: 390, type: !1825, isLocal: true, isDefinition: true, scopeLine: 392, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !849)
!2019 = !DILocalVariable(name: "server", arg: 1, scope: !2018, file: !842, line: 390, type: !350)
!2020 = !DILocation(line: 390, column: 42, scope: !2018)
!2021 = !DILocalVariable(name: "nick", arg: 2, scope: !2018, file: !842, line: 390, type: !329)
!2022 = !DILocation(line: 390, column: 62, scope: !2018)
!2023 = !DILocalVariable(name: "address", arg: 3, scope: !2018, file: !842, line: 391, type: !329)
!2024 = !DILocation(line: 391, column: 21, scope: !2018)
!2025 = !DILocalVariable(name: "reason", arg: 4, scope: !2018, file: !842, line: 391, type: !329)
!2026 = !DILocation(line: 391, column: 42, scope: !2018)
!2027 = !DILocalVariable(name: "window", scope: !2018, file: !842, line: 393, type: !794)
!2028 = !DILocation(line: 393, column: 14, scope: !2018)
!2029 = !DILocalVariable(name: "chans", scope: !2018, file: !842, line: 394, type: !556)
!2030 = !DILocation(line: 394, column: 11, scope: !2018)
!2031 = !DILocalVariable(name: "tmp", scope: !2018, file: !842, line: 395, type: !517)
!2032 = !DILocation(line: 395, column: 10, scope: !2018)
!2033 = !DILocalVariable(name: "windows", scope: !2018, file: !842, line: 395, type: !517)
!2034 = !DILocation(line: 395, column: 16, scope: !2018)
!2035 = !DILocalVariable(name: "print_channel", scope: !2018, file: !842, line: 396, type: !369)
!2036 = !DILocation(line: 396, column: 8, scope: !2018)
!2037 = !DILocalVariable(name: "once", scope: !2018, file: !842, line: 397, type: !332)
!2038 = !DILocation(line: 397, column: 6, scope: !2018)
!2039 = !DILocalVariable(name: "count", scope: !2018, file: !842, line: 397, type: !332)
!2040 = !DILocation(line: 397, column: 12, scope: !2018)
!2041 = !DILocalVariable(name: "level", scope: !2018, file: !842, line: 397, type: !332)
!2042 = !DILocation(line: 397, column: 19, scope: !2018)
!2043 = !DILocation(line: 399, column: 19, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2018, file: !842, line: 399, column: 6)
!2045 = !DILocation(line: 399, column: 27, scope: !2044)
!2046 = !DILocation(line: 399, column: 33, scope: !2044)
!2047 = !DILocation(line: 399, column: 47, scope: !2044)
!2048 = !DILocation(line: 399, column: 6, scope: !2044)
!2049 = !DILocation(line: 399, column: 6, scope: !2018)
!2050 = !DILocation(line: 400, column: 3, scope: !2044)
!2051 = !DILocation(line: 402, column: 19, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2018, file: !842, line: 402, column: 6)
!2053 = !DILocation(line: 402, column: 27, scope: !2052)
!2054 = !DILocation(line: 402, column: 33, scope: !2052)
!2055 = !DILocation(line: 402, column: 47, scope: !2052)
!2056 = !DILocation(line: 402, column: 55, scope: !2052)
!2057 = !DILocation(line: 402, column: 61, scope: !2052)
!2058 = !DILocation(line: 402, column: 6, scope: !2052)
!2059 = !DILocation(line: 402, column: 6, scope: !2018)
!2060 = !DILocation(line: 403, column: 9, scope: !2052)
!2061 = !DILocation(line: 403, column: 3, scope: !2052)
!2062 = !DILocation(line: 405, column: 19, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2018, file: !842, line: 405, column: 6)
!2064 = !DILocation(line: 405, column: 27, scope: !2063)
!2065 = !DILocation(line: 405, column: 33, scope: !2063)
!2066 = !DILocation(line: 405, column: 47, scope: !2063)
!2067 = !DILocation(line: 405, column: 55, scope: !2063)
!2068 = !DILocation(line: 405, column: 61, scope: !2063)
!2069 = !DILocation(line: 405, column: 6, scope: !2063)
!2070 = !DILocation(line: 405, column: 6, scope: !2018)
!2071 = !DILocation(line: 406, column: 9, scope: !2063)
!2072 = !DILocation(line: 406, column: 3, scope: !2063)
!2073 = !DILocation(line: 408, column: 16, scope: !2018)
!2074 = !DILocation(line: 409, column: 9, scope: !2018)
!2075 = !DILocation(line: 409, column: 7, scope: !2018)
!2076 = !DILocation(line: 411, column: 8, scope: !2018)
!2077 = !DILocation(line: 411, column: 21, scope: !2018)
!2078 = !DILocation(line: 412, column: 10, scope: !2018)
!2079 = !DILocation(line: 412, column: 8, scope: !2018)
!2080 = !DILocation(line: 413, column: 13, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2018, file: !842, line: 413, column: 2)
!2082 = !DILocation(line: 413, column: 21, scope: !2081)
!2083 = !DILocation(line: 413, column: 11, scope: !2081)
!2084 = !DILocation(line: 413, column: 7, scope: !2081)
!2085 = !DILocation(line: 413, column: 31, scope: !2086)
!2086 = !DILexicalBlockFile(scope: !2087, file: !842, discriminator: 1)
!2087 = distinct !DILexicalBlock(scope: !2081, file: !842, line: 413, column: 2)
!2088 = !DILocation(line: 413, column: 35, scope: !2086)
!2089 = !DILocation(line: 413, column: 2, scope: !2086)
!2090 = !DILocalVariable(name: "rec", scope: !2091, file: !842, line: 414, type: !334)
!2091 = distinct !DILexicalBlock(scope: !2087, file: !842, line: 413, column: 60)
!2092 = !DILocation(line: 414, column: 16, scope: !2091)
!2093 = !DILocation(line: 415, column: 9, scope: !2091)
!2094 = !DILocation(line: 416, column: 9, scope: !2091)
!2095 = !DILocation(line: 416, column: 14, scope: !2091)
!2096 = !DILocation(line: 416, column: 7, scope: !2091)
!2097 = !DILocation(line: 418, column: 22, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2091, file: !842, line: 418, column: 7)
!2099 = !DILocation(line: 418, column: 27, scope: !2098)
!2100 = !DILocation(line: 418, column: 8, scope: !2098)
!2101 = !DILocation(line: 418, column: 7, scope: !2091)
!2102 = !DILocation(line: 419, column: 4, scope: !2098)
!2103 = !DILocation(line: 421, column: 20, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2091, file: !842, line: 421, column: 7)
!2105 = !DILocation(line: 421, column: 28, scope: !2104)
!2106 = !DILocation(line: 421, column: 34, scope: !2104)
!2107 = !DILocation(line: 421, column: 43, scope: !2104)
!2108 = !DILocation(line: 421, column: 48, scope: !2104)
!2109 = !DILocation(line: 422, column: 6, scope: !2104)
!2110 = !DILocation(line: 421, column: 7, scope: !2104)
!2111 = !DILocation(line: 421, column: 7, scope: !2091)
!2112 = !DILocation(line: 423, column: 9, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2104, file: !842, line: 422, column: 31)
!2114 = !DILocation(line: 424, column: 4, scope: !2113)
!2115 = !DILocation(line: 427, column: 20, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2091, file: !842, line: 427, column: 7)
!2117 = !DILocation(line: 427, column: 28, scope: !2116)
!2118 = !DILocation(line: 427, column: 34, scope: !2116)
!2119 = !DILocation(line: 427, column: 43, scope: !2116)
!2120 = !DILocation(line: 427, column: 48, scope: !2116)
!2121 = !DILocation(line: 427, column: 62, scope: !2116)
!2122 = !DILocation(line: 427, column: 7, scope: !2116)
!2123 = !DILocation(line: 427, column: 7, scope: !2091)
!2124 = !DILocation(line: 428, column: 10, scope: !2116)
!2125 = !DILocation(line: 428, column: 4, scope: !2116)
!2126 = !DILocation(line: 430, column: 20, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2091, file: !842, line: 430, column: 7)
!2128 = !DILocation(line: 430, column: 28, scope: !2127)
!2129 = !DILocation(line: 430, column: 34, scope: !2127)
!2130 = !DILocation(line: 430, column: 43, scope: !2127)
!2131 = !DILocation(line: 430, column: 48, scope: !2127)
!2132 = !DILocation(line: 430, column: 62, scope: !2127)
!2133 = !DILocation(line: 430, column: 7, scope: !2127)
!2134 = !DILocation(line: 430, column: 7, scope: !2091)
!2135 = !DILocation(line: 431, column: 10, scope: !2127)
!2136 = !DILocation(line: 431, column: 4, scope: !2127)
!2137 = !DILocation(line: 433, column: 7, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2091, file: !842, line: 433, column: 7)
!2139 = !DILocation(line: 433, column: 21, scope: !2138)
!2140 = !DILocation(line: 433, column: 28, scope: !2138)
!2141 = !DILocation(line: 434, column: 7, scope: !2138)
!2142 = !DILocation(line: 434, column: 19, scope: !2138)
!2143 = !DILocation(line: 434, column: 45, scope: !2138)
!2144 = !DILocation(line: 434, column: 29, scope: !2138)
!2145 = !DILocation(line: 434, column: 26, scope: !2138)
!2146 = !DILocation(line: 433, column: 7, scope: !2147)
!2147 = !DILexicalBlockFile(scope: !2091, file: !842, discriminator: 1)
!2148 = !DILocation(line: 435, column: 20, scope: !2138)
!2149 = !DILocation(line: 435, column: 25, scope: !2138)
!2150 = !DILocation(line: 435, column: 18, scope: !2138)
!2151 = !DILocation(line: 435, column: 4, scope: !2138)
!2152 = !DILocation(line: 437, column: 7, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2091, file: !842, line: 437, column: 7)
!2154 = !DILocation(line: 437, column: 7, scope: !2091)
!2155 = !DILocation(line: 438, column: 27, scope: !2153)
!2156 = !DILocation(line: 438, column: 41, scope: !2153)
!2157 = !DILocation(line: 438, column: 46, scope: !2153)
!2158 = !DILocation(line: 438, column: 4, scope: !2153)
!2159 = !DILocation(line: 440, column: 63, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2153, file: !842, line: 439, column: 8)
!2161 = !DILocation(line: 440, column: 70, scope: !2160)
!2162 = !DILocation(line: 440, column: 14, scope: !2160)
!2163 = !DILocation(line: 440, column: 11, scope: !2160)
!2164 = !DILocation(line: 441, column: 21, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2160, file: !842, line: 441, column: 8)
!2166 = !DILocation(line: 441, column: 30, scope: !2165)
!2167 = !DILocation(line: 441, column: 8, scope: !2165)
!2168 = !DILocation(line: 441, column: 38, scope: !2165)
!2169 = !DILocation(line: 441, column: 8, scope: !2160)
!2170 = !DILocation(line: 442, column: 30, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2165, file: !842, line: 441, column: 46)
!2172 = !DILocation(line: 442, column: 39, scope: !2171)
!2173 = !DILocation(line: 442, column: 15, scope: !2171)
!2174 = !DILocation(line: 442, column: 13, scope: !2171)
!2175 = !DILocation(line: 443, column: 42, scope: !2171)
!2176 = !DILocation(line: 443, column: 50, scope: !2171)
!2177 = !DILocation(line: 443, column: 55, scope: !2171)
!2178 = !DILocation(line: 443, column: 69, scope: !2171)
!2179 = !DILocation(line: 443, column: 86, scope: !2171)
!2180 = !DILocation(line: 443, column: 92, scope: !2171)
!2181 = !DILocation(line: 443, column: 101, scope: !2171)
!2182 = !DILocation(line: 443, column: 109, scope: !2171)
!2183 = !DILocation(line: 443, column: 114, scope: !2171)
!2184 = !DILocation(line: 443, column: 5, scope: !2171)
!2185 = !DILocation(line: 447, column: 4, scope: !2171)
!2186 = !DILocation(line: 449, column: 8, scope: !2091)
!2187 = !DILocation(line: 450, column: 2, scope: !2091)
!2188 = !DILocation(line: 413, column: 49, scope: !2189)
!2189 = !DILexicalBlockFile(scope: !2087, file: !842, discriminator: 2)
!2190 = !DILocation(line: 413, column: 54, scope: !2189)
!2191 = !DILocation(line: 413, column: 47, scope: !2189)
!2192 = !DILocation(line: 413, column: 2, scope: !2189)
!2193 = distinct !{!2193, !2194}
!2194 = !DILocation(line: 413, column: 2, scope: !2018)
!2195 = !DILocation(line: 451, column: 15, scope: !2018)
!2196 = !DILocation(line: 451, column: 2, scope: !2018)
!2197 = !DILocation(line: 453, column: 7, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2018, file: !842, line: 453, column: 6)
!2199 = !DILocation(line: 453, column: 6, scope: !2018)
!2200 = !DILocalVariable(name: "query", scope: !2201, file: !842, line: 456, type: !668)
!2201 = distinct !DILexicalBlock(scope: !2198, file: !842, line: 453, column: 13)
!2202 = !DILocation(line: 456, column: 14, scope: !2201)
!2203 = !DILocation(line: 456, column: 33, scope: !2201)
!2204 = !DILocation(line: 456, column: 41, scope: !2201)
!2205 = !DILocation(line: 456, column: 22, scope: !2201)
!2206 = !DILocation(line: 457, column: 7, scope: !2207)
!2207 = distinct !DILexicalBlock(scope: !2201, file: !842, line: 457, column: 7)
!2208 = !DILocation(line: 457, column: 13, scope: !2207)
!2209 = !DILocation(line: 457, column: 7, scope: !2201)
!2210 = !DILocation(line: 458, column: 41, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2207, file: !842, line: 457, column: 21)
!2212 = !DILocation(line: 458, column: 49, scope: !2211)
!2213 = !DILocation(line: 458, column: 55, scope: !2211)
!2214 = !DILocation(line: 458, column: 72, scope: !2211)
!2215 = !DILocation(line: 458, column: 78, scope: !2211)
!2216 = !DILocation(line: 458, column: 87, scope: !2211)
!2217 = !DILocation(line: 458, column: 4, scope: !2211)
!2218 = !DILocation(line: 460, column: 3, scope: !2211)
!2219 = !DILocation(line: 461, column: 2, scope: !2201)
!2220 = !DILocation(line: 463, column: 6, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2018, file: !842, line: 463, column: 6)
!2222 = !DILocation(line: 463, column: 11, scope: !2221)
!2223 = !DILocation(line: 463, column: 14, scope: !2224)
!2224 = !DILexicalBlockFile(scope: !2221, file: !842, discriminator: 1)
!2225 = !DILocation(line: 463, column: 20, scope: !2224)
!2226 = !DILocation(line: 463, column: 6, scope: !2224)
!2227 = !DILocation(line: 464, column: 7, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2229, file: !842, line: 464, column: 7)
!2229 = distinct !DILexicalBlock(scope: !2221, file: !842, line: 463, column: 26)
!2230 = !DILocation(line: 464, column: 14, scope: !2228)
!2231 = !DILocation(line: 464, column: 18, scope: !2228)
!2232 = !DILocation(line: 464, column: 7, scope: !2229)
!2233 = !DILocation(line: 465, column: 22, scope: !2228)
!2234 = !DILocation(line: 465, column: 29, scope: !2228)
!2235 = !DILocation(line: 465, column: 36, scope: !2228)
!2236 = !DILocation(line: 465, column: 39, scope: !2228)
!2237 = !DILocation(line: 465, column: 4, scope: !2228)
!2238 = !DILocation(line: 466, column: 40, scope: !2229)
!2239 = !DILocation(line: 466, column: 48, scope: !2229)
!2240 = !DILocation(line: 466, column: 79, scope: !2229)
!2241 = !DILocation(line: 466, column: 85, scope: !2229)
!2242 = !DILocation(line: 466, column: 118, scope: !2229)
!2243 = !DILocation(line: 466, column: 124, scope: !2229)
!2244 = !DILocation(line: 466, column: 133, scope: !2229)
!2245 = !DILocation(line: 466, column: 141, scope: !2229)
!2246 = !DILocation(line: 466, column: 148, scope: !2229)
!2247 = !DILocation(line: 466, column: 3, scope: !2229)
!2248 = !DILocation(line: 469, column: 2, scope: !2229)
!2249 = !DILocation(line: 470, column: 16, scope: !2018)
!2250 = !DILocation(line: 470, column: 2, scope: !2018)
!2251 = !DILocation(line: 471, column: 1, scope: !2018)
!2252 = !DILocation(line: 471, column: 1, scope: !2253)
!2253 = !DILexicalBlockFile(scope: !2018, file: !842, discriminator: 1)
!2254 = distinct !DISubprogram(name: "sig_message_kick", scope: !842, file: !842, line: 473, type: !2255, isLocal: true, isDefinition: true, scopeLine: 476, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !849)
!2255 = !DISubroutineType(types: !2256)
!2256 = !{null, !350, !329, !329, !329, !329, !329}
!2257 = !DILocalVariable(name: "server", arg: 1, scope: !2254, file: !842, line: 473, type: !350)
!2258 = !DILocation(line: 473, column: 42, scope: !2254)
!2259 = !DILocalVariable(name: "channel", arg: 2, scope: !2254, file: !842, line: 473, type: !329)
!2260 = !DILocation(line: 473, column: 62, scope: !2254)
!2261 = !DILocalVariable(name: "nick", arg: 3, scope: !2254, file: !842, line: 474, type: !329)
!2262 = !DILocation(line: 474, column: 21, scope: !2254)
!2263 = !DILocalVariable(name: "kicker", arg: 4, scope: !2254, file: !842, line: 474, type: !329)
!2264 = !DILocation(line: 474, column: 39, scope: !2254)
!2265 = !DILocalVariable(name: "address", arg: 5, scope: !2254, file: !842, line: 475, type: !329)
!2266 = !DILocation(line: 475, column: 21, scope: !2254)
!2267 = !DILocalVariable(name: "reason", arg: 6, scope: !2254, file: !842, line: 475, type: !329)
!2268 = !DILocation(line: 475, column: 42, scope: !2254)
!2269 = !DILocalVariable(name: "level", scope: !2254, file: !842, line: 477, type: !332)
!2270 = !DILocation(line: 477, column: 6, scope: !2254)
!2271 = !DILocation(line: 479, column: 19, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2254, file: !842, line: 479, column: 6)
!2273 = !DILocation(line: 479, column: 27, scope: !2272)
!2274 = !DILocation(line: 479, column: 35, scope: !2272)
!2275 = !DILocation(line: 479, column: 44, scope: !2272)
!2276 = !DILocation(line: 479, column: 53, scope: !2272)
!2277 = !DILocation(line: 479, column: 61, scope: !2272)
!2278 = !DILocation(line: 479, column: 67, scope: !2272)
!2279 = !DILocation(line: 479, column: 6, scope: !2272)
!2280 = !DILocation(line: 479, column: 6, scope: !2254)
!2281 = !DILocation(line: 480, column: 9, scope: !2272)
!2282 = !DILocation(line: 480, column: 3, scope: !2272)
!2283 = !DILocation(line: 482, column: 19, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2254, file: !842, line: 482, column: 6)
!2285 = !DILocation(line: 482, column: 27, scope: !2284)
!2286 = !DILocation(line: 482, column: 35, scope: !2284)
!2287 = !DILocation(line: 482, column: 44, scope: !2284)
!2288 = !DILocation(line: 482, column: 53, scope: !2284)
!2289 = !DILocation(line: 482, column: 61, scope: !2284)
!2290 = !DILocation(line: 482, column: 67, scope: !2284)
!2291 = !DILocation(line: 482, column: 6, scope: !2284)
!2292 = !DILocation(line: 482, column: 6, scope: !2254)
!2293 = !DILocation(line: 483, column: 9, scope: !2284)
!2294 = !DILocation(line: 483, column: 3, scope: !2284)
!2295 = !DILocation(line: 485, column: 39, scope: !2254)
!2296 = !DILocation(line: 485, column: 47, scope: !2254)
!2297 = !DILocation(line: 485, column: 56, scope: !2254)
!2298 = !DILocation(line: 485, column: 73, scope: !2254)
!2299 = !DILocation(line: 485, column: 79, scope: !2254)
!2300 = !DILocation(line: 485, column: 88, scope: !2254)
!2301 = !DILocation(line: 485, column: 96, scope: !2254)
!2302 = !DILocation(line: 485, column: 104, scope: !2254)
!2303 = !DILocation(line: 485, column: 2, scope: !2254)
!2304 = !DILocation(line: 487, column: 1, scope: !2254)
!2305 = distinct !DISubprogram(name: "sig_message_nick", scope: !842, file: !842, line: 550, type: !1825, isLocal: true, isDefinition: true, scopeLine: 552, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !849)
!2306 = !DILocalVariable(name: "server", arg: 1, scope: !2305, file: !842, line: 550, type: !350)
!2307 = !DILocation(line: 550, column: 42, scope: !2305)
!2308 = !DILocalVariable(name: "newnick", arg: 2, scope: !2305, file: !842, line: 550, type: !329)
!2309 = !DILocation(line: 550, column: 62, scope: !2305)
!2310 = !DILocalVariable(name: "oldnick", arg: 3, scope: !2305, file: !842, line: 551, type: !329)
!2311 = !DILocation(line: 551, column: 21, scope: !2305)
!2312 = !DILocalVariable(name: "address", arg: 4, scope: !2305, file: !842, line: 551, type: !329)
!2313 = !DILocation(line: 551, column: 42, scope: !2305)
!2314 = !DILocation(line: 553, column: 20, scope: !2305)
!2315 = !DILocation(line: 553, column: 28, scope: !2305)
!2316 = !DILocation(line: 553, column: 37, scope: !2305)
!2317 = !DILocation(line: 553, column: 46, scope: !2305)
!2318 = !DILocation(line: 553, column: 2, scope: !2305)
!2319 = !DILocation(line: 554, column: 1, scope: !2305)
!2320 = distinct !DISubprogram(name: "sig_message_own_nick", scope: !842, file: !842, line: 556, type: !1825, isLocal: true, isDefinition: true, scopeLine: 558, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !849)
!2321 = !DILocalVariable(name: "server", arg: 1, scope: !2320, file: !842, line: 556, type: !350)
!2322 = !DILocation(line: 556, column: 46, scope: !2320)
!2323 = !DILocalVariable(name: "newnick", arg: 2, scope: !2320, file: !842, line: 556, type: !329)
!2324 = !DILocation(line: 556, column: 66, scope: !2320)
!2325 = !DILocalVariable(name: "oldnick", arg: 3, scope: !2320, file: !842, line: 557, type: !329)
!2326 = !DILocation(line: 557, column: 18, scope: !2320)
!2327 = !DILocalVariable(name: "address", arg: 4, scope: !2320, file: !842, line: 557, type: !329)
!2328 = !DILocation(line: 557, column: 39, scope: !2320)
!2329 = !DILocation(line: 559, column: 14, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2320, file: !842, line: 559, column: 13)
!2331 = !DILocation(line: 559, column: 13, scope: !2320)
!2332 = !DILocation(line: 560, column: 21, scope: !2330)
!2333 = !DILocation(line: 560, column: 29, scope: !2330)
!2334 = !DILocation(line: 560, column: 38, scope: !2330)
!2335 = !DILocation(line: 560, column: 47, scope: !2330)
!2336 = !DILocation(line: 560, column: 3, scope: !2330)
!2337 = !DILocation(line: 562, column: 40, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2330, file: !842, line: 561, column: 7)
!2339 = !DILocation(line: 562, column: 43, scope: !2338)
!2340 = !DILocation(line: 562, column: 52, scope: !2338)
!2341 = !DILocation(line: 562, column: 65, scope: !2338)
!2342 = !DILocation(line: 562, column: 3, scope: !2338)
!2343 = !DILocation(line: 566, column: 1, scope: !2320)
!2344 = distinct !DISubprogram(name: "sig_message_invite", scope: !842, file: !842, line: 568, type: !1825, isLocal: true, isDefinition: true, scopeLine: 570, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !849)
!2345 = !DILocalVariable(name: "server", arg: 1, scope: !2344, file: !842, line: 568, type: !350)
!2346 = !DILocation(line: 568, column: 44, scope: !2344)
!2347 = !DILocalVariable(name: "channel", arg: 2, scope: !2344, file: !842, line: 568, type: !329)
!2348 = !DILocation(line: 568, column: 64, scope: !2344)
!2349 = !DILocalVariable(name: "nick", arg: 3, scope: !2344, file: !842, line: 569, type: !329)
!2350 = !DILocation(line: 569, column: 23, scope: !2344)
!2351 = !DILocalVariable(name: "address", arg: 4, scope: !2344, file: !842, line: 569, type: !329)
!2352 = !DILocation(line: 569, column: 41, scope: !2344)
!2353 = !DILocalVariable(name: "str", scope: !2344, file: !842, line: 571, type: !369)
!2354 = !DILocation(line: 571, column: 8, scope: !2344)
!2355 = !DILocation(line: 573, column: 22, scope: !2344)
!2356 = !DILocation(line: 573, column: 8, scope: !2344)
!2357 = !DILocation(line: 573, column: 6, scope: !2344)
!2358 = !DILocation(line: 574, column: 39, scope: !2344)
!2359 = !DILocation(line: 574, column: 33, scope: !2344)
!2360 = !DILocation(line: 574, column: 44, scope: !2344)
!2361 = !DILocation(line: 574, column: 2, scope: !2344)
!2362 = !DILocation(line: 576, column: 9, scope: !2344)
!2363 = !DILocation(line: 576, column: 2, scope: !2344)
!2364 = !DILocation(line: 577, column: 1, scope: !2344)
!2365 = distinct !DISubprogram(name: "sig_message_topic", scope: !842, file: !842, line: 579, type: !1616, isLocal: true, isDefinition: true, scopeLine: 582, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !849)
!2366 = !DILocalVariable(name: "server", arg: 1, scope: !2365, file: !842, line: 579, type: !350)
!2367 = !DILocation(line: 579, column: 43, scope: !2365)
!2368 = !DILocalVariable(name: "channel", arg: 2, scope: !2365, file: !842, line: 579, type: !329)
!2369 = !DILocation(line: 579, column: 63, scope: !2365)
!2370 = !DILocalVariable(name: "topic", arg: 3, scope: !2365, file: !842, line: 580, type: !329)
!2371 = !DILocation(line: 580, column: 22, scope: !2365)
!2372 = !DILocalVariable(name: "nick", arg: 4, scope: !2365, file: !842, line: 581, type: !329)
!2373 = !DILocation(line: 581, column: 22, scope: !2365)
!2374 = !DILocalVariable(name: "address", arg: 5, scope: !2365, file: !842, line: 581, type: !329)
!2375 = !DILocation(line: 581, column: 40, scope: !2365)
!2376 = !DILocalVariable(name: "level", scope: !2365, file: !842, line: 583, type: !332)
!2377 = !DILocation(line: 583, column: 6, scope: !2365)
!2378 = !DILocation(line: 585, column: 19, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2365, file: !842, line: 585, column: 6)
!2380 = !DILocation(line: 585, column: 27, scope: !2379)
!2381 = !DILocation(line: 585, column: 33, scope: !2379)
!2382 = !DILocation(line: 585, column: 42, scope: !2379)
!2383 = !DILocation(line: 585, column: 51, scope: !2379)
!2384 = !DILocation(line: 585, column: 58, scope: !2379)
!2385 = !DILocation(line: 585, column: 64, scope: !2379)
!2386 = !DILocation(line: 585, column: 6, scope: !2379)
!2387 = !DILocation(line: 585, column: 6, scope: !2365)
!2388 = !DILocation(line: 586, column: 9, scope: !2379)
!2389 = !DILocation(line: 586, column: 3, scope: !2379)
!2390 = !DILocation(line: 588, column: 19, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2365, file: !842, line: 588, column: 6)
!2392 = !DILocation(line: 588, column: 27, scope: !2391)
!2393 = !DILocation(line: 588, column: 33, scope: !2391)
!2394 = !DILocation(line: 588, column: 42, scope: !2391)
!2395 = !DILocation(line: 588, column: 51, scope: !2391)
!2396 = !DILocation(line: 588, column: 58, scope: !2391)
!2397 = !DILocation(line: 588, column: 64, scope: !2391)
!2398 = !DILocation(line: 588, column: 6, scope: !2391)
!2399 = !DILocation(line: 588, column: 6, scope: !2365)
!2400 = !DILocation(line: 589, column: 9, scope: !2391)
!2401 = !DILocation(line: 589, column: 3, scope: !2391)
!2402 = !DILocation(line: 591, column: 39, scope: !2365)
!2403 = !DILocation(line: 591, column: 47, scope: !2365)
!2404 = !DILocation(line: 591, column: 56, scope: !2365)
!2405 = !DILocation(line: 591, column: 64, scope: !2365)
!2406 = !DILocation(line: 591, column: 63, scope: !2365)
!2407 = !DILocation(line: 591, column: 70, scope: !2365)
!2408 = !DILocation(line: 591, column: 113, scope: !2365)
!2409 = !DILocation(line: 591, column: 119, scope: !2365)
!2410 = !DILocation(line: 591, column: 128, scope: !2365)
!2411 = !DILocation(line: 591, column: 135, scope: !2365)
!2412 = !DILocation(line: 591, column: 2, scope: !2365)
!2413 = !DILocation(line: 594, column: 1, scope: !2365)
!2414 = distinct !DISubprogram(name: "sig_nicklist_new", scope: !842, file: !842, line: 626, type: !2415, isLocal: true, isDefinition: true, scopeLine: 627, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !849)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{null, !334, !732}
!2417 = !DILocalVariable(name: "channel", arg: 1, scope: !2414, file: !842, line: 626, type: !334)
!2418 = !DILocation(line: 626, column: 43, scope: !2414)
!2419 = !DILocalVariable(name: "nick", arg: 2, scope: !2414, file: !842, line: 626, type: !732)
!2420 = !DILocation(line: 626, column: 62, scope: !2414)
!2421 = !DILocalVariable(name: "firstnick", scope: !2414, file: !842, line: 628, type: !732)
!2422 = !DILocation(line: 628, column: 12, scope: !2414)
!2423 = !DILocalVariable(name: "newnick", scope: !2414, file: !842, line: 629, type: !556)
!2424 = !DILocation(line: 629, column: 11, scope: !2414)
!2425 = !DILocalVariable(name: "nickhost", scope: !2414, file: !842, line: 630, type: !369)
!2426 = !DILocation(line: 630, column: 8, scope: !2414)
!2427 = !DILocalVariable(name: "p", scope: !2414, file: !842, line: 630, type: !369)
!2428 = !DILocation(line: 630, column: 19, scope: !2414)
!2429 = !DILocalVariable(name: "n", scope: !2414, file: !842, line: 631, type: !332)
!2430 = !DILocation(line: 631, column: 6, scope: !2414)
!2431 = !DILocation(line: 633, column: 34, scope: !2414)
!2432 = !DILocation(line: 633, column: 43, scope: !2414)
!2433 = !DILocation(line: 633, column: 50, scope: !2414)
!2434 = !DILocation(line: 633, column: 56, scope: !2414)
!2435 = !DILocation(line: 633, column: 14, scope: !2414)
!2436 = !DILocation(line: 633, column: 12, scope: !2414)
!2437 = !DILocation(line: 634, column: 6, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2414, file: !842, line: 634, column: 6)
!2439 = !DILocation(line: 634, column: 17, scope: !2438)
!2440 = !DILocation(line: 634, column: 22, scope: !2438)
!2441 = !DILocation(line: 634, column: 6, scope: !2414)
!2442 = !DILocation(line: 635, column: 3, scope: !2438)
!2443 = !DILocation(line: 637, column: 6, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2414, file: !842, line: 637, column: 6)
!2445 = !DILocation(line: 637, column: 14, scope: !2444)
!2446 = !DILocation(line: 637, column: 23, scope: !2444)
!2447 = !DILocation(line: 637, column: 11, scope: !2444)
!2448 = !DILocation(line: 637, column: 6, scope: !2414)
!2449 = !DILocation(line: 640, column: 34, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2444, file: !842, line: 637, column: 32)
!2451 = !DILocation(line: 640, column: 45, scope: !2450)
!2452 = !DILocation(line: 640, column: 10, scope: !2450)
!2453 = !DILocation(line: 640, column: 8, scope: !2450)
!2454 = !DILocation(line: 641, column: 7, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2450, file: !842, line: 641, column: 7)
!2456 = !DILocation(line: 641, column: 12, scope: !2455)
!2457 = !DILocation(line: 641, column: 7, scope: !2450)
!2458 = !DILocation(line: 642, column: 25, scope: !2455)
!2459 = !DILocation(line: 643, column: 2, scope: !2450)
!2460 = !DILocation(line: 645, column: 6, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2414, file: !842, line: 645, column: 6)
!2462 = !DILocation(line: 645, column: 12, scope: !2461)
!2463 = !DILocation(line: 645, column: 17, scope: !2461)
!2464 = !DILocation(line: 645, column: 6, scope: !2414)
!2465 = !DILocation(line: 646, column: 17, scope: !2461)
!2466 = !DILocation(line: 649, column: 13, scope: !2414)
!2467 = !DILocation(line: 649, column: 19, scope: !2414)
!2468 = !DILocation(line: 649, column: 6, scope: !2414)
!2469 = !DILocation(line: 649, column: 4, scope: !2414)
!2470 = !DILocation(line: 650, column: 6, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2414, file: !842, line: 650, column: 6)
!2472 = !DILocation(line: 650, column: 8, scope: !2471)
!2473 = !DILocation(line: 650, column: 6, scope: !2414)
!2474 = !DILocation(line: 650, column: 20, scope: !2475)
!2475 = !DILexicalBlockFile(scope: !2471, file: !842, discriminator: 1)
!2476 = !DILocation(line: 650, column: 26, scope: !2475)
!2477 = !DILocation(line: 650, column: 18, scope: !2475)
!2478 = !DILocation(line: 650, column: 16, scope: !2475)
!2479 = !DILocation(line: 650, column: 38, scope: !2480)
!2480 = !DILexicalBlockFile(scope: !2471, file: !842, discriminator: 2)
!2481 = !DILocation(line: 652, column: 38, scope: !2414)
!2482 = !DILocation(line: 652, column: 44, scope: !2414)
!2483 = !DILocation(line: 652, column: 50, scope: !2414)
!2484 = !DILocation(line: 652, column: 13, scope: !2414)
!2485 = !DILocation(line: 652, column: 11, scope: !2414)
!2486 = !DILocation(line: 653, column: 13, scope: !2414)
!2487 = !DILocation(line: 653, column: 29, scope: !2414)
!2488 = !DILocation(line: 653, column: 35, scope: !2414)
!2489 = !DILocation(line: 653, column: 22, scope: !2414)
!2490 = !DILocation(line: 653, column: 21, scope: !2414)
!2491 = !DILocation(line: 653, column: 6, scope: !2492)
!2492 = !DILexicalBlockFile(scope: !2414, file: !842, discriminator: 1)
!2493 = !DILocation(line: 653, column: 4, scope: !2414)
!2494 = !DILocation(line: 654, column: 6, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2414, file: !842, line: 654, column: 6)
!2496 = !DILocation(line: 654, column: 8, scope: !2495)
!2497 = !DILocation(line: 654, column: 6, scope: !2414)
!2498 = !DILocation(line: 654, column: 17, scope: !2499)
!2499 = !DILexicalBlockFile(scope: !2495, file: !842, discriminator: 1)
!2500 = !DILocation(line: 654, column: 19, scope: !2499)
!2501 = !DILocation(line: 654, column: 16, scope: !2499)
!2502 = !DILocation(line: 656, column: 24, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2414, file: !842, line: 656, column: 6)
!2504 = !DILocation(line: 656, column: 35, scope: !2503)
!2505 = !DILocation(line: 656, column: 41, scope: !2503)
!2506 = !DILocation(line: 656, column: 7, scope: !2503)
!2507 = !DILocation(line: 656, column: 6, scope: !2414)
!2508 = !DILocation(line: 658, column: 23, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2503, file: !842, line: 656, column: 52)
!2510 = !DILocation(line: 658, column: 35, scope: !2509)
!2511 = !DILocation(line: 658, column: 41, scope: !2509)
!2512 = !DILocation(line: 658, column: 3, scope: !2509)
!2513 = !DILocation(line: 659, column: 17, scope: !2509)
!2514 = !DILocation(line: 662, column: 12, scope: !2414)
!2515 = !DILocation(line: 662, column: 10, scope: !2414)
!2516 = !DILocation(line: 663, column: 11, scope: !2414)
!2517 = !DILocation(line: 664, column: 2, scope: !2414)
!2518 = distinct !{!2518, !2517}
!2519 = !DILocation(line: 665, column: 19, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2414, file: !842, line: 664, column: 5)
!2521 = !DILocation(line: 665, column: 36, scope: !2520)
!2522 = !DILocation(line: 665, column: 46, scope: !2520)
!2523 = !DILocation(line: 665, column: 3, scope: !2520)
!2524 = !DILocation(line: 666, column: 18, scope: !2520)
!2525 = !DILocation(line: 667, column: 2, scope: !2520)
!2526 = !DILocation(line: 667, column: 28, scope: !2492)
!2527 = !DILocation(line: 667, column: 39, scope: !2492)
!2528 = !DILocation(line: 667, column: 45, scope: !2492)
!2529 = !DILocation(line: 667, column: 54, scope: !2492)
!2530 = !DILocation(line: 667, column: 11, scope: !2492)
!2531 = !DILocation(line: 667, column: 2, scope: !2492)
!2532 = !DILocation(line: 669, column: 22, scope: !2414)
!2533 = !DILocation(line: 669, column: 34, scope: !2414)
!2534 = !DILocation(line: 669, column: 40, scope: !2414)
!2535 = !DILocation(line: 669, column: 49, scope: !2414)
!2536 = !DILocation(line: 669, column: 2, scope: !2414)
!2537 = !DILocation(line: 670, column: 16, scope: !2414)
!2538 = !DILocation(line: 670, column: 2, scope: !2414)
!2539 = !DILocation(line: 671, column: 16, scope: !2414)
!2540 = !DILocation(line: 671, column: 9, scope: !2414)
!2541 = !DILocation(line: 672, column: 1, scope: !2414)
!2542 = !DILocation(line: 672, column: 1, scope: !2492)
!2543 = distinct !DISubprogram(name: "sig_nicklist_remove", scope: !842, file: !842, line: 674, type: !2415, isLocal: true, isDefinition: true, scopeLine: 675, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !849)
!2544 = !DILocalVariable(name: "channel", arg: 1, scope: !2543, file: !842, line: 674, type: !334)
!2545 = !DILocation(line: 674, column: 46, scope: !2543)
!2546 = !DILocalVariable(name: "nick", arg: 2, scope: !2543, file: !842, line: 674, type: !732)
!2547 = !DILocation(line: 674, column: 65, scope: !2543)
!2548 = !DILocalVariable(name: "nickname", scope: !2543, file: !842, line: 676, type: !369)
!2549 = !DILocation(line: 676, column: 8, scope: !2543)
!2550 = !DILocation(line: 678, column: 33, scope: !2543)
!2551 = !DILocation(line: 678, column: 45, scope: !2543)
!2552 = !DILocation(line: 678, column: 13, scope: !2543)
!2553 = !DILocation(line: 678, column: 11, scope: !2543)
!2554 = !DILocation(line: 679, column: 6, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2543, file: !842, line: 679, column: 6)
!2556 = !DILocation(line: 679, column: 15, scope: !2555)
!2557 = !DILocation(line: 679, column: 6, scope: !2543)
!2558 = !DILocation(line: 680, column: 24, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2555, file: !842, line: 679, column: 23)
!2560 = !DILocation(line: 680, column: 17, scope: !2559)
!2561 = !DILocation(line: 681, column: 23, scope: !2559)
!2562 = !DILocation(line: 681, column: 35, scope: !2559)
!2563 = !DILocation(line: 681, column: 3, scope: !2559)
!2564 = !DILocation(line: 682, column: 2, scope: !2559)
!2565 = !DILocation(line: 683, column: 1, scope: !2543)
!2566 = distinct !DISubprogram(name: "sig_nicklist_changed", scope: !842, file: !842, line: 685, type: !2415, isLocal: true, isDefinition: true, scopeLine: 686, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !849)
!2567 = !DILocalVariable(name: "channel", arg: 1, scope: !2566, file: !842, line: 685, type: !334)
!2568 = !DILocation(line: 685, column: 47, scope: !2566)
!2569 = !DILocalVariable(name: "nick", arg: 2, scope: !2566, file: !842, line: 685, type: !732)
!2570 = !DILocation(line: 685, column: 66, scope: !2566)
!2571 = !DILocation(line: 687, column: 29, scope: !2566)
!2572 = !DILocation(line: 687, column: 38, scope: !2566)
!2573 = !DILocation(line: 687, column: 9, scope: !2566)
!2574 = !DILocation(line: 688, column: 26, scope: !2566)
!2575 = !DILocation(line: 688, column: 35, scope: !2566)
!2576 = !DILocation(line: 688, column: 9, scope: !2566)
!2577 = !DILocation(line: 689, column: 1, scope: !2566)
!2578 = distinct !DISubprogram(name: "sig_channel_joined", scope: !842, file: !842, line: 691, type: !2579, isLocal: true, isDefinition: true, scopeLine: 692, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !849)
!2579 = !DISubroutineType(types: !2580)
!2580 = !{null, !334}
!2581 = !DILocalVariable(name: "channel", arg: 1, scope: !2578, file: !842, line: 691, type: !334)
!2582 = !DILocation(line: 691, column: 45, scope: !2578)
!2583 = !DILocalVariable(name: "nick", scope: !2578, file: !842, line: 693, type: !732)
!2584 = !DILocation(line: 693, column: 19, scope: !2578)
!2585 = !DILocalVariable(name: "nickname", scope: !2578, file: !842, line: 694, type: !369)
!2586 = !DILocation(line: 694, column: 8, scope: !2578)
!2587 = !DILocation(line: 700, column: 40, scope: !2578)
!2588 = !DILocation(line: 700, column: 52, scope: !2578)
!2589 = !DILocation(line: 700, column: 61, scope: !2578)
!2590 = !DILocation(line: 700, column: 20, scope: !2578)
!2591 = !DILocation(line: 700, column: 18, scope: !2578)
!2592 = !DILocation(line: 701, column: 6, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !2578, file: !842, line: 701, column: 6)
!2594 = !DILocation(line: 701, column: 15, scope: !2593)
!2595 = !DILocation(line: 701, column: 6, scope: !2578)
!2596 = !DILocation(line: 702, column: 3, scope: !2593)
!2597 = !DILocation(line: 704, column: 16, scope: !2578)
!2598 = !DILocation(line: 704, column: 9, scope: !2578)
!2599 = !DILocation(line: 705, column: 22, scope: !2578)
!2600 = !DILocation(line: 705, column: 34, scope: !2578)
!2601 = !DILocation(line: 705, column: 43, scope: !2578)
!2602 = !DILocation(line: 705, column: 2, scope: !2578)
!2603 = !DILocation(line: 708, column: 16, scope: !2578)
!2604 = !DILocation(line: 708, column: 25, scope: !2578)
!2605 = !DILocation(line: 708, column: 34, scope: !2578)
!2606 = !DILocation(line: 708, column: 14, scope: !2578)
!2607 = !DILocation(line: 709, column: 2, scope: !2578)
!2608 = !DILocation(line: 709, column: 9, scope: !2609)
!2609 = !DILexicalBlockFile(scope: !2578, file: !842, discriminator: 1)
!2610 = !DILocation(line: 709, column: 14, scope: !2609)
!2611 = !DILocation(line: 709, column: 2, scope: !2609)
!2612 = !DILocation(line: 710, column: 27, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2614, file: !842, line: 710, column: 7)
!2614 = distinct !DILexicalBlock(scope: !2578, file: !842, line: 709, column: 22)
!2615 = !DILocation(line: 710, column: 39, scope: !2613)
!2616 = !DILocation(line: 710, column: 7, scope: !2613)
!2617 = !DILocation(line: 710, column: 45, scope: !2613)
!2618 = !DILocation(line: 710, column: 7, scope: !2614)
!2619 = !DILocation(line: 711, column: 21, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2613, file: !842, line: 710, column: 53)
!2621 = !DILocation(line: 711, column: 30, scope: !2620)
!2622 = !DILocation(line: 711, column: 4, scope: !2620)
!2623 = !DILocation(line: 712, column: 25, scope: !2620)
!2624 = !DILocation(line: 714, column: 24, scope: !2614)
!2625 = !DILocation(line: 714, column: 30, scope: !2614)
!2626 = !DILocation(line: 714, column: 22, scope: !2614)
!2627 = !DILocation(line: 709, column: 2, scope: !2628)
!2628 = !DILexicalBlockFile(scope: !2578, file: !842, discriminator: 2)
!2629 = distinct !{!2629, !2607}
!2630 = !DILocation(line: 716, column: 1, scope: !2578)
!2631 = distinct !DISubprogram(name: "fe_messages_deinit", scope: !842, file: !842, line: 760, type: !505, isLocal: false, isDefinition: true, scopeLine: 761, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !849)
!2632 = !DILocation(line: 762, column: 30, scope: !2631)
!2633 = !DILocation(line: 762, column: 9, scope: !2631)
!2634 = !DILocation(line: 763, column: 23, scope: !2631)
!2635 = !DILocation(line: 763, column: 2, scope: !2631)
!2636 = !DILocation(line: 765, column: 2, scope: !2631)
!2637 = !DILocation(line: 766, column: 2, scope: !2631)
!2638 = !DILocation(line: 767, column: 2, scope: !2631)
!2639 = !DILocation(line: 768, column: 2, scope: !2631)
!2640 = !DILocation(line: 769, column: 2, scope: !2631)
!2641 = !DILocation(line: 770, column: 2, scope: !2631)
!2642 = !DILocation(line: 771, column: 2, scope: !2631)
!2643 = !DILocation(line: 772, column: 2, scope: !2631)
!2644 = !DILocation(line: 773, column: 2, scope: !2631)
!2645 = !DILocation(line: 774, column: 2, scope: !2631)
!2646 = !DILocation(line: 775, column: 2, scope: !2631)
!2647 = !DILocation(line: 776, column: 2, scope: !2631)
!2648 = !DILocation(line: 778, column: 2, scope: !2631)
!2649 = !DILocation(line: 779, column: 2, scope: !2631)
!2650 = !DILocation(line: 780, column: 2, scope: !2631)
!2651 = !DILocation(line: 781, column: 2, scope: !2631)
!2652 = !DILocation(line: 782, column: 2, scope: !2631)
!2653 = !DILocation(line: 783, column: 1, scope: !2631)
!2654 = distinct !DISubprogram(name: "g_hash_free_value", scope: !842, file: !842, line: 718, type: !2655, isLocal: true, isDefinition: true, scopeLine: 719, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !849)
!2655 = !DISubroutineType(types: !2656)
!2656 = !{null, !324, !324}
!2657 = !DILocalVariable(name: "key", arg: 1, scope: !2654, file: !842, line: 718, type: !324)
!2658 = !DILocation(line: 718, column: 37, scope: !2654)
!2659 = !DILocalVariable(name: "value", arg: 2, scope: !2654, file: !842, line: 718, type: !324)
!2660 = !DILocation(line: 718, column: 48, scope: !2654)
!2661 = !DILocation(line: 720, column: 16, scope: !2654)
!2662 = !DILocation(line: 720, column: 9, scope: !2654)
!2663 = !DILocation(line: 721, column: 1, scope: !2654)
!2664 = distinct !DISubprogram(name: "print_nick_change", scope: !842, file: !842, line: 514, type: !2665, isLocal: true, isDefinition: true, scopeLine: 517, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !849)
!2665 = !DISubroutineType(types: !2666)
!2666 = !{null, !350, !329, !329, !329, !332}
!2667 = !DILocalVariable(name: "server", arg: 1, scope: !2664, file: !842, line: 514, type: !350)
!2668 = !DILocation(line: 514, column: 43, scope: !2664)
!2669 = !DILocalVariable(name: "newnick", arg: 2, scope: !2664, file: !842, line: 514, type: !329)
!2670 = !DILocation(line: 514, column: 63, scope: !2664)
!2671 = !DILocalVariable(name: "oldnick", arg: 3, scope: !2664, file: !842, line: 515, type: !329)
!2672 = !DILocation(line: 515, column: 22, scope: !2664)
!2673 = !DILocalVariable(name: "address", arg: 4, scope: !2664, file: !842, line: 515, type: !329)
!2674 = !DILocation(line: 515, column: 43, scope: !2664)
!2675 = !DILocalVariable(name: "ownnick", arg: 5, scope: !2664, file: !842, line: 516, type: !332)
!2676 = !DILocation(line: 516, column: 14, scope: !2664)
!2677 = !DILocalVariable(name: "tmp", scope: !2664, file: !842, line: 518, type: !517)
!2678 = !DILocation(line: 518, column: 10, scope: !2664)
!2679 = !DILocalVariable(name: "windows", scope: !2664, file: !842, line: 518, type: !517)
!2680 = !DILocation(line: 518, column: 16, scope: !2664)
!2681 = !DILocalVariable(name: "msgprint", scope: !2664, file: !842, line: 519, type: !332)
!2682 = !DILocation(line: 519, column: 6, scope: !2664)
!2683 = !DILocation(line: 521, column: 11, scope: !2664)
!2684 = !DILocation(line: 525, column: 10, scope: !2664)
!2685 = !DILocation(line: 526, column: 13, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2664, file: !842, line: 526, column: 2)
!2687 = !DILocation(line: 526, column: 21, scope: !2686)
!2688 = !DILocation(line: 526, column: 11, scope: !2686)
!2689 = !DILocation(line: 526, column: 7, scope: !2686)
!2690 = !DILocation(line: 526, column: 31, scope: !2691)
!2691 = !DILexicalBlockFile(scope: !2692, file: !842, discriminator: 1)
!2692 = distinct !DILexicalBlock(scope: !2686, file: !842, line: 526, column: 2)
!2693 = !DILocation(line: 526, column: 35, scope: !2691)
!2694 = !DILocation(line: 526, column: 2, scope: !2691)
!2695 = !DILocalVariable(name: "channel", scope: !2696, file: !842, line: 527, type: !334)
!2696 = distinct !DILexicalBlock(scope: !2692, file: !842, line: 526, column: 60)
!2697 = !DILocation(line: 527, column: 16, scope: !2696)
!2698 = !DILocation(line: 527, column: 26, scope: !2696)
!2699 = !DILocation(line: 527, column: 31, scope: !2696)
!2700 = !DILocalVariable(name: "window", scope: !2696, file: !842, line: 528, type: !794)
!2701 = !DILocation(line: 528, column: 15, scope: !2696)
!2702 = !DILocation(line: 529, column: 54, scope: !2696)
!2703 = !DILocation(line: 529, column: 65, scope: !2696)
!2704 = !DILocation(line: 529, column: 5, scope: !2696)
!2705 = !DILocation(line: 531, column: 21, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2696, file: !842, line: 531, column: 7)
!2707 = !DILocation(line: 531, column: 30, scope: !2706)
!2708 = !DILocation(line: 531, column: 7, scope: !2706)
!2709 = !DILocation(line: 531, column: 39, scope: !2706)
!2710 = !DILocation(line: 531, column: 46, scope: !2706)
!2711 = !DILocation(line: 532, column: 20, scope: !2706)
!2712 = !DILocation(line: 532, column: 29, scope: !2706)
!2713 = !DILocation(line: 532, column: 7, scope: !2706)
!2714 = !DILocation(line: 532, column: 37, scope: !2706)
!2715 = !DILocation(line: 531, column: 7, scope: !2716)
!2716 = !DILexicalBlockFile(scope: !2696, file: !842, discriminator: 1)
!2717 = !DILocation(line: 533, column: 4, scope: !2706)
!2718 = !DILocation(line: 535, column: 28, scope: !2696)
!2719 = !DILocation(line: 535, column: 37, scope: !2696)
!2720 = !DILocation(line: 535, column: 13, scope: !2696)
!2721 = !DILocation(line: 535, column: 11, scope: !2696)
!2722 = !DILocation(line: 536, column: 29, scope: !2696)
!2723 = !DILocation(line: 536, column: 37, scope: !2696)
!2724 = !DILocation(line: 536, column: 46, scope: !2696)
!2725 = !DILocation(line: 537, column: 8, scope: !2696)
!2726 = !DILocation(line: 537, column: 17, scope: !2696)
!2727 = !DILocation(line: 537, column: 26, scope: !2696)
!2728 = !DILocation(line: 537, column: 35, scope: !2696)
!2729 = !DILocation(line: 536, column: 3, scope: !2696)
!2730 = !DILocation(line: 538, column: 12, scope: !2696)
!2731 = !DILocation(line: 539, column: 2, scope: !2696)
!2732 = !DILocation(line: 526, column: 49, scope: !2733)
!2733 = !DILexicalBlockFile(scope: !2692, file: !842, discriminator: 2)
!2734 = !DILocation(line: 526, column: 54, scope: !2733)
!2735 = !DILocation(line: 526, column: 47, scope: !2733)
!2736 = !DILocation(line: 526, column: 2, scope: !2733)
!2737 = distinct !{!2737, !2738}
!2738 = !DILocation(line: 526, column: 2, scope: !2664)
!2739 = !DILocation(line: 541, column: 15, scope: !2664)
!2740 = !DILocation(line: 541, column: 2, scope: !2664)
!2741 = !DILocation(line: 543, column: 7, scope: !2742)
!2742 = distinct !DILexicalBlock(scope: !2664, file: !842, line: 543, column: 6)
!2743 = !DILocation(line: 543, column: 16, scope: !2742)
!2744 = !DILocation(line: 543, column: 19, scope: !2745)
!2745 = !DILexicalBlockFile(scope: !2742, file: !842, discriminator: 1)
!2746 = !DILocation(line: 543, column: 6, scope: !2745)
!2747 = !DILocation(line: 544, column: 40, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2742, file: !842, line: 543, column: 28)
!2749 = !DILocation(line: 544, column: 43, scope: !2748)
!2750 = !DILocation(line: 544, column: 52, scope: !2748)
!2751 = !DILocation(line: 544, column: 65, scope: !2748)
!2752 = !DILocation(line: 544, column: 3, scope: !2748)
!2753 = !DILocation(line: 547, column: 2, scope: !2748)
!2754 = !DILocation(line: 548, column: 1, scope: !2664)
!2755 = distinct !DISubprogram(name: "print_nick_change_channel", scope: !842, file: !842, line: 489, type: !2756, isLocal: true, isDefinition: true, scopeLine: 493, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !849)
!2756 = !DISubroutineType(types: !2757)
!2757 = !{null, !350, !329, !329, !329, !329, !332}
!2758 = !DILocalVariable(name: "server", arg: 1, scope: !2755, file: !842, line: 489, type: !350)
!2759 = !DILocation(line: 489, column: 51, scope: !2755)
!2760 = !DILocalVariable(name: "channel", arg: 2, scope: !2755, file: !842, line: 489, type: !329)
!2761 = !DILocation(line: 489, column: 71, scope: !2755)
!2762 = !DILocalVariable(name: "newnick", arg: 3, scope: !2755, file: !842, line: 490, type: !329)
!2763 = !DILocation(line: 490, column: 23, scope: !2755)
!2764 = !DILocalVariable(name: "oldnick", arg: 4, scope: !2755, file: !842, line: 490, type: !329)
!2765 = !DILocation(line: 490, column: 44, scope: !2755)
!2766 = !DILocalVariable(name: "address", arg: 5, scope: !2755, file: !842, line: 491, type: !329)
!2767 = !DILocation(line: 491, column: 23, scope: !2755)
!2768 = !DILocalVariable(name: "ownnick", arg: 6, scope: !2755, file: !842, line: 492, type: !332)
!2769 = !DILocation(line: 492, column: 15, scope: !2755)
!2770 = !DILocalVariable(name: "level", scope: !2755, file: !842, line: 494, type: !332)
!2771 = !DILocation(line: 494, column: 6, scope: !2755)
!2772 = !DILocation(line: 496, column: 19, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2755, file: !842, line: 496, column: 6)
!2774 = !DILocation(line: 496, column: 27, scope: !2773)
!2775 = !DILocation(line: 496, column: 36, scope: !2773)
!2776 = !DILocation(line: 497, column: 5, scope: !2773)
!2777 = !DILocation(line: 497, column: 14, scope: !2773)
!2778 = !DILocation(line: 496, column: 6, scope: !2773)
!2779 = !DILocation(line: 496, column: 6, scope: !2755)
!2780 = !DILocation(line: 498, column: 3, scope: !2773)
!2781 = !DILocation(line: 500, column: 8, scope: !2755)
!2782 = !DILocation(line: 501, column: 13, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2755, file: !842, line: 501, column: 13)
!2784 = !DILocation(line: 501, column: 13, scope: !2755)
!2785 = !DILocation(line: 501, column: 28, scope: !2786)
!2786 = !DILexicalBlockFile(scope: !2783, file: !842, discriminator: 1)
!2787 = !DILocation(line: 501, column: 22, scope: !2786)
!2788 = !DILocation(line: 503, column: 8, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2755, file: !842, line: 503, column: 6)
!2790 = !DILocation(line: 503, column: 14, scope: !2789)
!2791 = !DILocation(line: 503, column: 33, scope: !2789)
!2792 = !DILocation(line: 503, column: 49, scope: !2793)
!2793 = !DILexicalBlockFile(scope: !2789, file: !842, discriminator: 1)
!2794 = !DILocation(line: 503, column: 57, scope: !2793)
!2795 = !DILocation(line: 503, column: 66, scope: !2793)
!2796 = !DILocation(line: 503, column: 75, scope: !2793)
!2797 = !DILocation(line: 503, column: 84, scope: !2793)
!2798 = !DILocation(line: 503, column: 93, scope: !2793)
!2799 = !DILocation(line: 503, column: 99, scope: !2793)
!2800 = !DILocation(line: 503, column: 36, scope: !2793)
!2801 = !DILocation(line: 503, column: 6, scope: !2793)
!2802 = !DILocation(line: 504, column: 9, scope: !2789)
!2803 = !DILocation(line: 504, column: 3, scope: !2789)
!2804 = !DILocation(line: 506, column: 8, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2755, file: !842, line: 506, column: 6)
!2806 = !DILocation(line: 506, column: 14, scope: !2805)
!2807 = !DILocation(line: 506, column: 33, scope: !2805)
!2808 = !DILocation(line: 506, column: 49, scope: !2809)
!2809 = !DILexicalBlockFile(scope: !2805, file: !842, discriminator: 1)
!2810 = !DILocation(line: 506, column: 57, scope: !2809)
!2811 = !DILocation(line: 506, column: 66, scope: !2809)
!2812 = !DILocation(line: 506, column: 75, scope: !2809)
!2813 = !DILocation(line: 506, column: 84, scope: !2809)
!2814 = !DILocation(line: 506, column: 93, scope: !2809)
!2815 = !DILocation(line: 506, column: 99, scope: !2809)
!2816 = !DILocation(line: 506, column: 36, scope: !2809)
!2817 = !DILocation(line: 506, column: 6, scope: !2809)
!2818 = !DILocation(line: 507, column: 9, scope: !2805)
!2819 = !DILocation(line: 507, column: 3, scope: !2805)
!2820 = !DILocation(line: 509, column: 39, scope: !2755)
!2821 = !DILocation(line: 509, column: 47, scope: !2755)
!2822 = !DILocation(line: 509, column: 56, scope: !2755)
!2823 = !DILocation(line: 509, column: 63, scope: !2755)
!2824 = !DILocation(line: 509, column: 115, scope: !2755)
!2825 = !DILocation(line: 509, column: 124, scope: !2755)
!2826 = !DILocation(line: 509, column: 133, scope: !2755)
!2827 = !DILocation(line: 509, column: 142, scope: !2755)
!2828 = !DILocation(line: 509, column: 2, scope: !2755)
!2829 = !DILocation(line: 512, column: 1, scope: !2755)
!2830 = !DILocation(line: 512, column: 1, scope: !2831)
!2831 = !DILexicalBlockFile(scope: !2755, file: !842, discriminator: 1)
!2832 = distinct !DISubprogram(name: "printnick_find_original", scope: !842, file: !842, line: 614, type: !2833, isLocal: true, isDefinition: true, scopeLine: 615, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !849)
!2833 = !DISubroutineType(types: !2834)
!2834 = !{!732, !732}
!2835 = !DILocalVariable(name: "nick", arg: 1, scope: !2832, file: !842, line: 614, type: !732)
!2836 = !DILocation(line: 614, column: 52, scope: !2832)
!2837 = !DILocation(line: 616, column: 2, scope: !2832)
!2838 = !DILocation(line: 616, column: 9, scope: !2839)
!2839 = !DILexicalBlockFile(scope: !2832, file: !842, discriminator: 1)
!2840 = !DILocation(line: 616, column: 14, scope: !2839)
!2841 = !DILocation(line: 616, column: 2, scope: !2839)
!2842 = !DILocation(line: 617, column: 27, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2844, file: !842, line: 617, column: 7)
!2844 = distinct !DILexicalBlock(scope: !2832, file: !842, line: 616, column: 22)
!2845 = !DILocation(line: 617, column: 39, scope: !2843)
!2846 = !DILocation(line: 617, column: 7, scope: !2843)
!2847 = !DILocation(line: 617, column: 45, scope: !2843)
!2848 = !DILocation(line: 617, column: 7, scope: !2844)
!2849 = !DILocation(line: 618, column: 32, scope: !2843)
!2850 = !DILocation(line: 618, column: 25, scope: !2843)
!2851 = !DILocation(line: 620, column: 10, scope: !2844)
!2852 = !DILocation(line: 620, column: 16, scope: !2844)
!2853 = !DILocation(line: 620, column: 8, scope: !2844)
!2854 = !DILocation(line: 616, column: 2, scope: !2855)
!2855 = !DILexicalBlockFile(scope: !2832, file: !842, discriminator: 2)
!2856 = distinct !{!2856, !2837}
!2857 = !DILocation(line: 623, column: 2, scope: !2832)
!2858 = !DILocation(line: 624, column: 1, scope: !2832)
!2859 = distinct !DISubprogram(name: "printnick_exists", scope: !842, file: !842, line: 596, type: !2860, isLocal: true, isDefinition: true, scopeLine: 598, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !849)
!2860 = !DISubroutineType(types: !2861)
!2861 = !{!332, !732, !732, !329}
!2862 = !DILocalVariable(name: "first", arg: 1, scope: !2859, file: !842, line: 596, type: !732)
!2863 = !DILocation(line: 596, column: 39, scope: !2859)
!2864 = !DILocalVariable(name: "ignore", arg: 2, scope: !2859, file: !842, line: 596, type: !732)
!2865 = !DILocation(line: 596, column: 56, scope: !2859)
!2866 = !DILocalVariable(name: "nick", arg: 3, scope: !2859, file: !842, line: 597, type: !329)
!2867 = !DILocation(line: 597, column: 20, scope: !2859)
!2868 = !DILocalVariable(name: "printnick", scope: !2859, file: !842, line: 599, type: !369)
!2869 = !DILocation(line: 599, column: 8, scope: !2859)
!2870 = !DILocation(line: 601, column: 2, scope: !2859)
!2871 = !DILocation(line: 601, column: 9, scope: !2872)
!2872 = !DILexicalBlockFile(scope: !2859, file: !842, discriminator: 1)
!2873 = !DILocation(line: 601, column: 15, scope: !2872)
!2874 = !DILocation(line: 601, column: 2, scope: !2872)
!2875 = !DILocation(line: 602, column: 7, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2877, file: !842, line: 602, column: 7)
!2877 = distinct !DILexicalBlock(scope: !2859, file: !842, line: 601, column: 23)
!2878 = !DILocation(line: 602, column: 16, scope: !2876)
!2879 = !DILocation(line: 602, column: 13, scope: !2876)
!2880 = !DILocation(line: 602, column: 7, scope: !2877)
!2881 = !DILocation(line: 603, column: 36, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2876, file: !842, line: 602, column: 24)
!2883 = !DILocation(line: 603, column: 48, scope: !2882)
!2884 = !DILocation(line: 603, column: 16, scope: !2882)
!2885 = !DILocation(line: 603, column: 14, scope: !2882)
!2886 = !DILocation(line: 604, column: 8, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2882, file: !842, line: 604, column: 8)
!2888 = !DILocation(line: 604, column: 18, scope: !2887)
!2889 = !DILocation(line: 604, column: 25, scope: !2887)
!2890 = !DILocation(line: 604, column: 38, scope: !2891)
!2891 = !DILexicalBlockFile(scope: !2887, file: !842, discriminator: 1)
!2892 = !DILocation(line: 604, column: 49, scope: !2891)
!2893 = !DILocation(line: 604, column: 28, scope: !2891)
!2894 = !DILocation(line: 604, column: 55, scope: !2891)
!2895 = !DILocation(line: 604, column: 8, scope: !2891)
!2896 = !DILocation(line: 605, column: 5, scope: !2887)
!2897 = !DILocation(line: 606, column: 3, scope: !2882)
!2898 = !DILocation(line: 608, column: 11, scope: !2877)
!2899 = !DILocation(line: 608, column: 18, scope: !2877)
!2900 = !DILocation(line: 608, column: 9, scope: !2877)
!2901 = !DILocation(line: 601, column: 2, scope: !2902)
!2902 = !DILexicalBlockFile(scope: !2859, file: !842, discriminator: 2)
!2903 = distinct !{!2903, !2870}
!2904 = !DILocation(line: 611, column: 9, scope: !2859)
!2905 = !DILocation(line: 612, column: 1, scope: !2859)
