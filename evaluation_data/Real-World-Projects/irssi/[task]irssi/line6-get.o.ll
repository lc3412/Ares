; ModuleID = './line6-get.o.i'
source_filename = "./line6-get.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._CONFIG_NODE = type { i32, i8*, i8* }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._CONFIG_REC = type { i8*, i32, i32, i8*, %struct._CONFIG_NODE*, %struct._GHashTable*, %struct._GHashTable*, %struct._GScanner*, %struct._GIOChannel*, i32, i32 }
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
%struct._GSourcePrivate = type opaque
%struct._GIConv = type opaque
%struct._GString = type { i8*, i64, i64 }

@__func__.config_node_find = private unnamed_addr constant [17 x i8] c"config_node_find\00", align 1
@.str = private unnamed_addr constant [13 x i8] c"node != NULL\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"key != NULL\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"is_node_list(node)\00", align 1
@__func__.config_node_section_index = private unnamed_addr constant [26 x i8] c"config_node_section_index\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"parent != NULL\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"is_node_list(parent)\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"Expected %s node at `..%s/%s' was of scalar type. Corrupt config?\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"block\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"section\00", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"new_type == -1 || new_type == node->type\00", align 1
@__func__.config_node_traverse = private unnamed_addr constant [21 x i8] c"config_node_traverse\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"rec != NULL\00", align 1
@.str.11 = private unnamed_addr constant [57 x i8] c"Expected %s node at `%s' was of %s type. Corrupt config?\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.13 = private unnamed_addr constant [61 x i8] c"Expected %s node at `%s' was of scalar type. Corrupt config?\00", align 1
@.str.14 = private unnamed_addr constant [59 x i8] c"Attempt to use non-list node `%s' as list. Corrupt config?\00", align 1
@__func__.config_get_str = private unnamed_addr constant [15 x i8] c"config_get_str\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__func__.config_node_get_list = private unnamed_addr constant [21 x i8] c"config_node_get_list\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c" \00", align 1
@__func__.config_node_nth = private unnamed_addr constant [16 x i8] c"config_node_nth\00", align 1
@__func__.config_node_index = private unnamed_addr constant [18 x i8] c"config_node_index\00", align 1

; Function Attrs: nounwind uwtable
define %struct._CONFIG_NODE* @config_node_find(%struct._CONFIG_NODE*, i8*) #0 !dbg !103 {
  %3 = alloca %struct._CONFIG_NODE*, align 8
  %4 = alloca %struct._CONFIG_NODE*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca %struct._CONFIG_NODE*, align 8
  store %struct._CONFIG_NODE* %0, %struct._CONFIG_NODE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %4, metadata !108, metadata !109), !dbg !110
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !111, metadata !109), !dbg !112
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !113, metadata !109), !dbg !122
  br label %8, !dbg !123, !llvm.loop !124

; <label>:8:                                      ; preds = %2
  %9 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !125
  %10 = icmp ne %struct._CONFIG_NODE* %9, null, !dbg !129
  br i1 %10, label %11, label %12, !dbg !125

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !130

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.config_node_find, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)), !dbg !133
  store %struct._CONFIG_NODE* null, %struct._CONFIG_NODE** %3, align 8, !dbg !136
  br label %67, !dbg !136

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !137

; <label>:14:                                     ; preds = %13
  br label %15, !dbg !139, !llvm.loop !140

; <label>:15:                                     ; preds = %14
  %16 = load i8*, i8** %5, align 8, !dbg !141
  %17 = icmp ne i8* %16, null, !dbg !145
  br i1 %17, label %18, label %19, !dbg !141

; <label>:18:                                     ; preds = %15
  br label %20, !dbg !146

; <label>:19:                                     ; preds = %15
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.config_node_find, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0)), !dbg !149
  store %struct._CONFIG_NODE* null, %struct._CONFIG_NODE** %3, align 8, !dbg !152
  br label %67, !dbg !152

; <label>:20:                                     ; preds = %18
  br label %21, !dbg !153

; <label>:21:                                     ; preds = %20
  br label %22, !dbg !155, !llvm.loop !156

; <label>:22:                                     ; preds = %21
  %23 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !157
  %24 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %23, i32 0, i32 0, !dbg !161
  %25 = load i32, i32* %24, align 8, !dbg !161
  %26 = icmp eq i32 %25, 2, !dbg !162
  br i1 %26, label %32, label %27, !dbg !163

; <label>:27:                                     ; preds = %22
  %28 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !164
  %29 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %28, i32 0, i32 0, !dbg !166
  %30 = load i32, i32* %29, align 8, !dbg !166
  %31 = icmp eq i32 %30, 3, !dbg !167
  br i1 %31, label %32, label %33, !dbg !168

; <label>:32:                                     ; preds = %27, %22
  br label %34, !dbg !169

; <label>:33:                                     ; preds = %27
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.config_node_find, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0)), !dbg !172
  store %struct._CONFIG_NODE* null, %struct._CONFIG_NODE** %3, align 8, !dbg !175
  br label %67, !dbg !175

; <label>:34:                                     ; preds = %32
  br label %35, !dbg !176

; <label>:35:                                     ; preds = %34
  %36 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !178
  %37 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %36, i32 0, i32 2, !dbg !180
  %38 = load i8*, i8** %37, align 8, !dbg !180
  %39 = bitcast i8* %38 to %struct._GSList*, !dbg !178
  store %struct._GSList* %39, %struct._GSList** %6, align 8, !dbg !181
  br label %40, !dbg !182

; <label>:40:                                     ; preds = %62, %35
  %41 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !183
  %42 = icmp ne %struct._GSList* %41, null, !dbg !186
  br i1 %42, label %43, label %66, !dbg !187

; <label>:43:                                     ; preds = %40
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %7, metadata !188, metadata !109), !dbg !190
  %44 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !191
  %45 = getelementptr inbounds %struct._GSList, %struct._GSList* %44, i32 0, i32 0, !dbg !192
  %46 = load i8*, i8** %45, align 8, !dbg !192
  %47 = bitcast i8* %46 to %struct._CONFIG_NODE*, !dbg !191
  store %struct._CONFIG_NODE* %47, %struct._CONFIG_NODE** %7, align 8, !dbg !190
  %48 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !193
  %49 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %48, i32 0, i32 1, !dbg !195
  %50 = load i8*, i8** %49, align 8, !dbg !195
  %51 = icmp ne i8* %50, null, !dbg !196
  br i1 %51, label %52, label %61, !dbg !197

; <label>:52:                                     ; preds = %43
  %53 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !198
  %54 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %53, i32 0, i32 1, !dbg !200
  %55 = load i8*, i8** %54, align 8, !dbg !200
  %56 = load i8*, i8** %5, align 8, !dbg !201
  %57 = call i32 @g_ascii_strcasecmp(i8* %55, i8* %56), !dbg !202
  %58 = icmp eq i32 %57, 0, !dbg !203
  br i1 %58, label %59, label %61, !dbg !204

; <label>:59:                                     ; preds = %52
  %60 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !205
  store %struct._CONFIG_NODE* %60, %struct._CONFIG_NODE** %3, align 8, !dbg !206
  br label %67, !dbg !206

; <label>:61:                                     ; preds = %52, %43
  br label %62, !dbg !207

; <label>:62:                                     ; preds = %61
  %63 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !208
  %64 = getelementptr inbounds %struct._GSList, %struct._GSList* %63, i32 0, i32 1, !dbg !210
  %65 = load %struct._GSList*, %struct._GSList** %64, align 8, !dbg !210
  store %struct._GSList* %65, %struct._GSList** %6, align 8, !dbg !211
  br label %40, !dbg !212, !llvm.loop !213

; <label>:66:                                     ; preds = %40
  store %struct._CONFIG_NODE* null, %struct._CONFIG_NODE** %3, align 8, !dbg !215
  br label %67, !dbg !215

; <label>:67:                                     ; preds = %66, %59, %33, %19, %12
  %68 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !216
  ret %struct._CONFIG_NODE* %68, !dbg !216
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare i32 @g_ascii_strcasecmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i32) #0 !dbg !217 {
  %5 = alloca %struct._CONFIG_REC*, align 8
  %6 = alloca %struct._CONFIG_NODE*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct._CONFIG_REC* %0, %struct._CONFIG_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %5, metadata !497, metadata !109), !dbg !498
  store %struct._CONFIG_NODE* %1, %struct._CONFIG_NODE** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %6, metadata !499, metadata !109), !dbg !500
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !501, metadata !109), !dbg !502
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !503, metadata !109), !dbg !504
  %9 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !505
  %10 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !506
  %11 = load i8*, i8** %7, align 8, !dbg !507
  %12 = load i32, i32* %8, align 4, !dbg !508
  %13 = call %struct._CONFIG_NODE* @config_node_section_index(%struct._CONFIG_REC* %9, %struct._CONFIG_NODE* %10, i8* %11, i32 -1, i32 %12), !dbg !509
  ret %struct._CONFIG_NODE* %13, !dbg !510
}

; Function Attrs: nounwind uwtable
define %struct._CONFIG_NODE* @config_node_section_index(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i32, i32) #0 !dbg !511 {
  %6 = alloca %struct._CONFIG_NODE*, align 8
  %7 = alloca %struct._CONFIG_REC*, align 8
  %8 = alloca %struct._CONFIG_NODE*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct._CONFIG_NODE*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct._CONFIG_REC* %0, %struct._CONFIG_REC** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %7, metadata !514, metadata !109), !dbg !515
  store %struct._CONFIG_NODE* %1, %struct._CONFIG_NODE** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %8, metadata !516, metadata !109), !dbg !517
  store i8* %2, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !518, metadata !109), !dbg !519
  store i32 %3, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !520, metadata !109), !dbg !521
  store i32 %4, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !522, metadata !109), !dbg !523
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %12, metadata !524, metadata !109), !dbg !525
  call void @llvm.dbg.declare(metadata i32* %13, metadata !526, metadata !109), !dbg !527
  br label %15, !dbg !528, !llvm.loop !529

; <label>:15:                                     ; preds = %5
  %16 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !530
  %17 = icmp ne %struct._CONFIG_NODE* %16, null, !dbg !534
  br i1 %17, label %18, label %19, !dbg !530

; <label>:18:                                     ; preds = %15
  br label %20, !dbg !535

; <label>:19:                                     ; preds = %15
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.config_node_section_index, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0)), !dbg !538
  store %struct._CONFIG_NODE* null, %struct._CONFIG_NODE** %6, align 8, !dbg !541
  br label %203, !dbg !541

; <label>:20:                                     ; preds = %18
  br label %21, !dbg !542

; <label>:21:                                     ; preds = %20
  br label %22, !dbg !544, !llvm.loop !545

; <label>:22:                                     ; preds = %21
  %23 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !546
  %24 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %23, i32 0, i32 0, !dbg !550
  %25 = load i32, i32* %24, align 8, !dbg !550
  %26 = icmp eq i32 %25, 2, !dbg !551
  br i1 %26, label %32, label %27, !dbg !552

; <label>:27:                                     ; preds = %22
  %28 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !553
  %29 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %28, i32 0, i32 0, !dbg !555
  %30 = load i32, i32* %29, align 8, !dbg !555
  %31 = icmp eq i32 %30, 3, !dbg !556
  br i1 %31, label %32, label %33, !dbg !557

; <label>:32:                                     ; preds = %27, %22
  br label %34, !dbg !558

; <label>:33:                                     ; preds = %27
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.config_node_section_index, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0)), !dbg !561
  store %struct._CONFIG_NODE* null, %struct._CONFIG_NODE** %6, align 8, !dbg !564
  br label %203, !dbg !564

; <label>:34:                                     ; preds = %32
  br label %35, !dbg !565

; <label>:35:                                     ; preds = %34
  %36 = load i8*, i8** %9, align 8, !dbg !567
  %37 = icmp eq i8* %36, null, !dbg !568
  br i1 %37, label %38, label %39, !dbg !567

; <label>:38:                                     ; preds = %35
  br label %43, !dbg !569

; <label>:39:                                     ; preds = %35
  %40 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !571
  %41 = load i8*, i8** %9, align 8, !dbg !573
  %42 = call %struct._CONFIG_NODE* @config_node_find(%struct._CONFIG_NODE* %40, i8* %41), !dbg !574
  br label %43, !dbg !575

; <label>:43:                                     ; preds = %39, %38
  %44 = phi %struct._CONFIG_NODE* [ null, %38 ], [ %42, %39 ], !dbg !576
  store %struct._CONFIG_NODE* %44, %struct._CONFIG_NODE** %12, align 8, !dbg !578
  %45 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %12, align 8, !dbg !579
  %46 = icmp ne %struct._CONFIG_NODE* %45, null, !dbg !581
  br i1 %46, label %47, label %158, !dbg !582

; <label>:47:                                     ; preds = %43
  %48 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !583
  %49 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %48, i32 0, i32 2, !dbg !585
  %50 = load i8*, i8** %49, align 8, !dbg !585
  %51 = bitcast i8* %50 to %struct._GSList*, !dbg !583
  %52 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %12, align 8, !dbg !586
  %53 = bitcast %struct._CONFIG_NODE* %52 to i8*, !dbg !586
  %54 = call i32 @g_slist_index(%struct._GSList* %51, i8* %53), !dbg !587
  store i32 %54, i32* %13, align 4, !dbg !588
  %55 = load i32, i32* %10, align 4, !dbg !589
  %56 = icmp sge i32 %55, 0, !dbg !591
  br i1 %56, label %57, label %91, !dbg !592

; <label>:57:                                     ; preds = %47
  %58 = load i32, i32* %13, align 4, !dbg !593
  %59 = load i32, i32* %10, align 4, !dbg !595
  %60 = icmp ne i32 %58, %59, !dbg !596
  br i1 %60, label %61, label %91, !dbg !597

; <label>:61:                                     ; preds = %57
  %62 = load i32, i32* %13, align 4, !dbg !598
  %63 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !599
  %64 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %63, i32 0, i32 2, !dbg !600
  %65 = load i8*, i8** %64, align 8, !dbg !600
  %66 = bitcast i8* %65 to %struct._GSList*, !dbg !599
  %67 = call i32 @g_slist_length(%struct._GSList* %66), !dbg !601
  %68 = icmp ule i32 %62, %67, !dbg !602
  br i1 %68, label %69, label %91, !dbg !603

; <label>:69:                                     ; preds = %61
  %70 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !605
  %71 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %70, i32 0, i32 2, !dbg !607
  %72 = load i8*, i8** %71, align 8, !dbg !607
  %73 = bitcast i8* %72 to %struct._GSList*, !dbg !605
  %74 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %12, align 8, !dbg !608
  %75 = bitcast %struct._CONFIG_NODE* %74 to i8*, !dbg !608
  %76 = call %struct._GSList* @g_slist_remove(%struct._GSList* %73, i8* %75), !dbg !609
  %77 = bitcast %struct._GSList* %76 to i8*, !dbg !609
  %78 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !610
  %79 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %78, i32 0, i32 2, !dbg !611
  store i8* %77, i8** %79, align 8, !dbg !612
  %80 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !613
  %81 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %80, i32 0, i32 2, !dbg !614
  %82 = load i8*, i8** %81, align 8, !dbg !614
  %83 = bitcast i8* %82 to %struct._GSList*, !dbg !613
  %84 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %12, align 8, !dbg !615
  %85 = bitcast %struct._CONFIG_NODE* %84 to i8*, !dbg !615
  %86 = load i32, i32* %10, align 4, !dbg !616
  %87 = call %struct._GSList* @g_slist_insert(%struct._GSList* %83, i8* %85, i32 %86), !dbg !617
  %88 = bitcast %struct._GSList* %87 to i8*, !dbg !617
  %89 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !618
  %90 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %89, i32 0, i32 2, !dbg !619
  store i8* %88, i8** %90, align 8, !dbg !620
  br label %91, !dbg !621

; <label>:91:                                     ; preds = %69, %61, %57, %47
  %92 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %12, align 8, !dbg !622
  %93 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %92, i32 0, i32 0, !dbg !624
  %94 = load i32, i32* %93, align 8, !dbg !624
  %95 = icmp eq i32 %94, 2, !dbg !625
  br i1 %95, label %142, label %96, !dbg !626

; <label>:96:                                     ; preds = %91
  %97 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %12, align 8, !dbg !627
  %98 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %97, i32 0, i32 0, !dbg !629
  %99 = load i32, i32* %98, align 8, !dbg !629
  %100 = icmp eq i32 %99, 3, !dbg !630
  br i1 %100, label %142, label %101, !dbg !631

; <label>:101:                                    ; preds = %96
  call void @llvm.dbg.declare(metadata i32* %14, metadata !632, metadata !109), !dbg !634
  store i32 0, i32* %14, align 4, !dbg !634
  %102 = load i32, i32* %11, align 4, !dbg !635
  %103 = icmp ne i32 %102, -1, !dbg !637
  br i1 %103, label %104, label %108, !dbg !638

; <label>:104:                                    ; preds = %101
  %105 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %7, align 8, !dbg !639
  %106 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !641
  %107 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %12, align 8, !dbg !642
  call void @config_node_remove(%struct._CONFIG_REC* %105, %struct._CONFIG_NODE* %106, %struct._CONFIG_NODE* %107), !dbg !643
  store %struct._CONFIG_NODE* null, %struct._CONFIG_NODE** %12, align 8, !dbg !644
  store i32 1, i32* %14, align 4, !dbg !645
  br label %124, !dbg !646

; <label>:108:                                    ; preds = %101
  %109 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %7, align 8, !dbg !647
  %110 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %109, i32 0, i32 6, !dbg !650
  %111 = load %struct._GHashTable*, %struct._GHashTable** %110, align 8, !dbg !650
  %112 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %12, align 8, !dbg !651
  %113 = bitcast %struct._CONFIG_NODE* %112 to i8*, !dbg !651
  %114 = call i32 @g_hash_table_lookup_extended(%struct._GHashTable* %111, i8* %113, i8** null, i8** null), !dbg !652
  %115 = icmp ne i32 %114, 0, !dbg !652
  br i1 %115, label %123, label %116, !dbg !653

; <label>:116:                                    ; preds = %108
  %117 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %7, align 8, !dbg !654
  %118 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %117, i32 0, i32 6, !dbg !656
  %119 = load %struct._GHashTable*, %struct._GHashTable** %118, align 8, !dbg !656
  %120 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %12, align 8, !dbg !657
  %121 = bitcast %struct._CONFIG_NODE* %120 to i8*, !dbg !657
  %122 = call i32 @g_hash_table_insert(%struct._GHashTable* %119, i8* %121, i8* null), !dbg !658
  store i32 1, i32* %14, align 4, !dbg !659
  br label %123, !dbg !660

; <label>:123:                                    ; preds = %116, %108
  br label %124

; <label>:124:                                    ; preds = %123, %104
  %125 = load i32, i32* %14, align 4, !dbg !661
  %126 = icmp ne i32 %125, 0, !dbg !661
  br i1 %126, label %127, label %141, !dbg !663

; <label>:127:                                    ; preds = %124
  %128 = load i32, i32* %11, align 4, !dbg !664
  %129 = icmp eq i32 %128, 3, !dbg !665
  br i1 %129, label %130, label %131, !dbg !664

; <label>:130:                                    ; preds = %127
  br label %135, !dbg !666

; <label>:131:                                    ; preds = %127
  %132 = load i32, i32* %11, align 4, !dbg !668
  %133 = icmp eq i32 %132, 2, !dbg !670
  %134 = select i1 %133, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), !dbg !668
  br label %135, !dbg !671

; <label>:135:                                    ; preds = %131, %130
  %136 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), %130 ], [ %134, %131 ], !dbg !672
  %137 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !674
  %138 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %137, i32 0, i32 1, !dbg !675
  %139 = load i8*, i8** %138, align 8, !dbg !675
  %140 = load i8*, i8** %9, align 8, !dbg !676
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 8, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i32 0, i32 0), i8* %136, i8* %139, i8* %140), !dbg !677
  br label %141, !dbg !677

; <label>:141:                                    ; preds = %135, %124
  br label %157, !dbg !678

; <label>:142:                                    ; preds = %96, %91
  br label %143, !dbg !679, !llvm.loop !681

; <label>:143:                                    ; preds = %142
  %144 = load i32, i32* %11, align 4, !dbg !682
  %145 = icmp eq i32 %144, -1, !dbg !686
  br i1 %145, label %152, label %146, !dbg !687

; <label>:146:                                    ; preds = %143
  %147 = load i32, i32* %11, align 4, !dbg !688
  %148 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %12, align 8, !dbg !690
  %149 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %148, i32 0, i32 0, !dbg !691
  %150 = load i32, i32* %149, align 8, !dbg !691
  %151 = icmp eq i32 %147, %150, !dbg !692
  br i1 %151, label %152, label %153, !dbg !693

; <label>:152:                                    ; preds = %146, %143
  br label %154, !dbg !694

; <label>:153:                                    ; preds = %146
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.config_node_section_index, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i32 0, i32 0)), !dbg !697
  store %struct._CONFIG_NODE* null, %struct._CONFIG_NODE** %6, align 8, !dbg !700
  br label %203, !dbg !700

; <label>:154:                                    ; preds = %152
  br label %155, !dbg !701

; <label>:155:                                    ; preds = %154
  %156 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %12, align 8, !dbg !703
  store %struct._CONFIG_NODE* %156, %struct._CONFIG_NODE** %6, align 8, !dbg !704
  br label %203, !dbg !704

; <label>:157:                                    ; preds = %141
  br label %158, !dbg !705

; <label>:158:                                    ; preds = %157, %43
  %159 = load i32, i32* %11, align 4, !dbg !706
  %160 = icmp eq i32 %159, -1, !dbg !708
  br i1 %160, label %161, label %162, !dbg !709

; <label>:161:                                    ; preds = %158
  store %struct._CONFIG_NODE* null, %struct._CONFIG_NODE** %6, align 8, !dbg !710
  br label %203, !dbg !710

; <label>:162:                                    ; preds = %158
  %163 = call noalias i8* @g_malloc0_n(i64 1, i64 24), !dbg !711
  %164 = bitcast i8* %163 to %struct._CONFIG_NODE*, !dbg !712
  store %struct._CONFIG_NODE* %164, %struct._CONFIG_NODE** %12, align 8, !dbg !713
  %165 = load i32, i32* %10, align 4, !dbg !714
  %166 = icmp slt i32 %165, 0, !dbg !715
  br i1 %166, label %167, label %175, !dbg !714

; <label>:167:                                    ; preds = %162
  %168 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !716
  %169 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %168, i32 0, i32 2, !dbg !717
  %170 = load i8*, i8** %169, align 8, !dbg !717
  %171 = bitcast i8* %170 to %struct._GSList*, !dbg !716
  %172 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %12, align 8, !dbg !718
  %173 = bitcast %struct._CONFIG_NODE* %172 to i8*, !dbg !718
  %174 = call %struct._GSList* @g_slist_append(%struct._GSList* %171, i8* %173), !dbg !719
  br label %184, !dbg !720

; <label>:175:                                    ; preds = %162
  %176 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !721
  %177 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %176, i32 0, i32 2, !dbg !722
  %178 = load i8*, i8** %177, align 8, !dbg !722
  %179 = bitcast i8* %178 to %struct._GSList*, !dbg !721
  %180 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %12, align 8, !dbg !723
  %181 = bitcast %struct._CONFIG_NODE* %180 to i8*, !dbg !723
  %182 = load i32, i32* %10, align 4, !dbg !724
  %183 = call %struct._GSList* @g_slist_insert(%struct._GSList* %179, i8* %181, i32 %182), !dbg !725
  br label %184, !dbg !726

; <label>:184:                                    ; preds = %175, %167
  %185 = phi %struct._GSList* [ %174, %167 ], [ %183, %175 ], !dbg !727
  %186 = bitcast %struct._GSList* %185 to i8*, !dbg !727
  %187 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !728
  %188 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %187, i32 0, i32 2, !dbg !729
  store i8* %186, i8** %188, align 8, !dbg !730
  %189 = load i32, i32* %11, align 4, !dbg !731
  %190 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %12, align 8, !dbg !732
  %191 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %190, i32 0, i32 0, !dbg !733
  store i32 %189, i32* %191, align 8, !dbg !734
  %192 = load i8*, i8** %9, align 8, !dbg !735
  %193 = icmp eq i8* %192, null, !dbg !736
  br i1 %193, label %194, label %195, !dbg !735

; <label>:194:                                    ; preds = %184
  br label %198, !dbg !737

; <label>:195:                                    ; preds = %184
  %196 = load i8*, i8** %9, align 8, !dbg !738
  %197 = call noalias i8* @g_strdup(i8* %196), !dbg !739
  br label %198, !dbg !740

; <label>:198:                                    ; preds = %195, %194
  %199 = phi i8* [ null, %194 ], [ %197, %195 ], !dbg !741
  %200 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %12, align 8, !dbg !742
  %201 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %200, i32 0, i32 1, !dbg !743
  store i8* %199, i8** %201, align 8, !dbg !744
  %202 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %12, align 8, !dbg !745
  store %struct._CONFIG_NODE* %202, %struct._CONFIG_NODE** %6, align 8, !dbg !746
  br label %203, !dbg !746

; <label>:203:                                    ; preds = %198, %161, %155, %153, %33, %19
  %204 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !747
  ret %struct._CONFIG_NODE* %204, !dbg !747
}

declare i32 @g_slist_index(%struct._GSList*, i8*) #2

declare i32 @g_slist_length(%struct._GSList*) #2

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #2

declare %struct._GSList* @g_slist_insert(%struct._GSList*, i8*, i32) #2

declare void @config_node_remove(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, %struct._CONFIG_NODE*) #2

declare i32 @g_hash_table_lookup_extended(%struct._GHashTable*, i8*, i8**, i8**) #2

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #2

declare void @g_log(i8*, i32, i8*, ...) #2

declare noalias i8* @g_malloc0_n(i64, i64) #2

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #2

declare noalias i8* @g_strdup(i8*) #2

; Function Attrs: nounwind uwtable
define %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC*, i8*, i32) #0 !dbg !748 {
  %4 = alloca %struct._CONFIG_NODE*, align 8
  %5 = alloca %struct._CONFIG_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._CONFIG_NODE*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct._CONFIG_NODE*, align 8
  store %struct._CONFIG_REC* %0, %struct._CONFIG_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %5, metadata !751, metadata !109), !dbg !752
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !753, metadata !109), !dbg !754
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !755, metadata !109), !dbg !756
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %8, metadata !757, metadata !109), !dbg !758
  call void @llvm.dbg.declare(metadata i8*** %9, metadata !759, metadata !109), !dbg !761
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !762, metadata !109), !dbg !763
  call void @llvm.dbg.declare(metadata i8** %11, metadata !764, metadata !109), !dbg !765
  call void @llvm.dbg.declare(metadata i32* %12, metadata !766, metadata !109), !dbg !767
  call void @llvm.dbg.declare(metadata i32* %13, metadata !768, metadata !109), !dbg !769
  br label %16, !dbg !770, !llvm.loop !771

; <label>:16:                                     ; preds = %3
  %17 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !772
  %18 = icmp ne %struct._CONFIG_REC* %17, null, !dbg !776
  br i1 %18, label %19, label %20, !dbg !772

; <label>:19:                                     ; preds = %16
  br label %21, !dbg !777

; <label>:20:                                     ; preds = %16
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.config_node_traverse, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0)), !dbg !780
  store %struct._CONFIG_NODE* null, %struct._CONFIG_NODE** %4, align 8, !dbg !783
  br label %180, !dbg !783

; <label>:21:                                     ; preds = %19
  br label %22, !dbg !784

; <label>:22:                                     ; preds = %21
  %23 = load i8*, i8** %6, align 8, !dbg !786
  %24 = icmp eq i8* %23, null, !dbg !788
  br i1 %24, label %30, label %25, !dbg !789

; <label>:25:                                     ; preds = %22
  %26 = load i8*, i8** %6, align 8, !dbg !790
  %27 = load i8, i8* %26, align 1, !dbg !792
  %28 = sext i8 %27 to i32, !dbg !792
  %29 = icmp eq i32 %28, 0, !dbg !793
  br i1 %29, label %30, label %34, !dbg !794

; <label>:30:                                     ; preds = %25, %22
  %31 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !795
  %32 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %31, i32 0, i32 4, !dbg !796
  %33 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %32, align 8, !dbg !796
  store %struct._CONFIG_NODE* %33, %struct._CONFIG_NODE** %4, align 8, !dbg !797
  br label %180, !dbg !797

; <label>:34:                                     ; preds = %25
  %35 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !798
  %36 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %35, i32 0, i32 5, !dbg !799
  %37 = load %struct._GHashTable*, %struct._GHashTable** %36, align 8, !dbg !799
  %38 = load i8*, i8** %6, align 8, !dbg !800
  %39 = call i8* @g_hash_table_lookup(%struct._GHashTable* %37, i8* %38), !dbg !801
  %40 = bitcast i8* %39 to %struct._CONFIG_NODE*, !dbg !801
  store %struct._CONFIG_NODE* %40, %struct._CONFIG_NODE** %8, align 8, !dbg !802
  %41 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !803
  %42 = icmp ne %struct._CONFIG_NODE* %41, null, !dbg !805
  br i1 %42, label %43, label %83, !dbg !806

; <label>:43:                                     ; preds = %34
  %44 = load i32, i32* %7, align 4, !dbg !807
  %45 = icmp ne i32 %44, 0, !dbg !807
  br i1 %45, label %46, label %81, !dbg !810

; <label>:46:                                     ; preds = %43
  call void @llvm.dbg.declare(metadata i8** %14, metadata !811, metadata !109), !dbg !813
  %47 = load i8*, i8** %6, align 8, !dbg !814
  %48 = call i8* @strrchr(i8* %47, i32 47) #4, !dbg !815
  store i8* %48, i8** %14, align 8, !dbg !813
  %49 = load i8*, i8** %14, align 8, !dbg !816
  %50 = icmp eq i8* %49, null, !dbg !818
  br i1 %50, label %51, label %53, !dbg !819

; <label>:51:                                     ; preds = %46
  %52 = load i8*, i8** %6, align 8, !dbg !820
  store i8* %52, i8** %14, align 8, !dbg !822
  br label %56, !dbg !823

; <label>:53:                                     ; preds = %46
  %54 = load i8*, i8** %14, align 8, !dbg !824
  %55 = getelementptr inbounds i8, i8* %54, i32 1, !dbg !824
  store i8* %55, i8** %14, align 8, !dbg !824
  br label %56

; <label>:56:                                     ; preds = %53, %51
  %57 = load i8*, i8** %14, align 8, !dbg !825
  %58 = load i8, i8* %57, align 1, !dbg !826
  %59 = sext i8 %58 to i32, !dbg !826
  %60 = icmp eq i32 %59, 40, !dbg !827
  %61 = select i1 %60, i32 3, i32 2, !dbg !826
  store i32 %61, i32* %13, align 4, !dbg !828
  %62 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !829
  %63 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %62, i32 0, i32 0, !dbg !831
  %64 = load i32, i32* %63, align 8, !dbg !831
  %65 = load i32, i32* %13, align 4, !dbg !832
  %66 = icmp ne i32 %64, %65, !dbg !833
  br i1 %66, label %67, label %80, !dbg !834

; <label>:67:                                     ; preds = %56
  %68 = load i32, i32* %13, align 4, !dbg !835
  %69 = icmp eq i32 %68, 3, !dbg !837
  %70 = select i1 %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), !dbg !835
  %71 = load i8*, i8** %6, align 8, !dbg !838
  %72 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !839
  %73 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %72, i32 0, i32 0, !dbg !840
  %74 = load i32, i32* %73, align 8, !dbg !840
  %75 = icmp eq i32 %74, 3, !dbg !841
  %76 = select i1 %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), !dbg !839
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 8, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.11, i32 0, i32 0), i8* %70, i8* %71, i8* %76), !dbg !842
  %77 = load i32, i32* %13, align 4, !dbg !843
  %78 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !844
  %79 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %78, i32 0, i32 0, !dbg !845
  store i32 %77, i32* %79, align 8, !dbg !846
  br label %80, !dbg !847

; <label>:80:                                     ; preds = %67, %56
  br label %81, !dbg !848

; <label>:81:                                     ; preds = %80, %43
  %82 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !849
  store %struct._CONFIG_NODE* %82, %struct._CONFIG_NODE** %4, align 8, !dbg !850
  br label %180, !dbg !850

; <label>:83:                                     ; preds = %34
  store i32 -1, i32* %13, align 4, !dbg !851
  %84 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !852
  %85 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %84, i32 0, i32 4, !dbg !853
  %86 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %85, align 8, !dbg !853
  store %struct._CONFIG_NODE* %86, %struct._CONFIG_NODE** %8, align 8, !dbg !854
  %87 = load i8*, i8** %6, align 8, !dbg !855
  %88 = call noalias i8** @g_strsplit(i8* %87, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), i32 -1), !dbg !856
  store i8** %88, i8*** %9, align 8, !dbg !857
  %89 = load i8**, i8*** %9, align 8, !dbg !858
  store i8** %89, i8*** %10, align 8, !dbg !860
  br label %90, !dbg !861

; <label>:90:                                     ; preds = %146, %83
  %91 = load i8**, i8*** %10, align 8, !dbg !862
  %92 = load i8*, i8** %91, align 8, !dbg !865
  %93 = icmp ne i8* %92, null, !dbg !866
  br i1 %93, label %94, label %149, !dbg !867

; <label>:94:                                     ; preds = %90
  %95 = load i8**, i8*** %10, align 8, !dbg !868
  %96 = load i8*, i8** %95, align 8, !dbg !870
  %97 = load i8, i8* %96, align 1, !dbg !871
  %98 = sext i8 %97 to i32, !dbg !871
  %99 = icmp eq i32 %98, 40, !dbg !872
  %100 = zext i1 %99 to i32, !dbg !872
  store i32 %100, i32* %12, align 4, !dbg !873
  %101 = load i32, i32* %7, align 4, !dbg !874
  %102 = icmp ne i32 %101, 0, !dbg !874
  br i1 %102, label %103, label %131, !dbg !876

; <label>:103:                                    ; preds = %94
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %15, metadata !877, metadata !109), !dbg !879
  %104 = load i32, i32* %12, align 4, !dbg !880
  %105 = icmp ne i32 %104, 0, !dbg !880
  %106 = select i1 %105, i32 3, i32 2, !dbg !880
  store i32 %106, i32* %13, align 4, !dbg !881
  %107 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !882
  %108 = load i8**, i8*** %10, align 8, !dbg !883
  %109 = load i8*, i8** %108, align 8, !dbg !884
  %110 = load i32, i32* %12, align 4, !dbg !885
  %111 = sext i32 %110 to i64, !dbg !886
  %112 = getelementptr inbounds i8, i8* %109, i64 %111, !dbg !886
  %113 = call %struct._CONFIG_NODE* @config_node_find(%struct._CONFIG_NODE* %107, i8* %112), !dbg !887
  store %struct._CONFIG_NODE* %113, %struct._CONFIG_NODE** %15, align 8, !dbg !888
  %114 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %15, align 8, !dbg !889
  %115 = icmp ne %struct._CONFIG_NODE* %114, null, !dbg !891
  br i1 %115, label %116, label %130, !dbg !892

; <label>:116:                                    ; preds = %103
  %117 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %15, align 8, !dbg !893
  %118 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %117, i32 0, i32 0, !dbg !895
  %119 = load i32, i32* %118, align 8, !dbg !895
  %120 = load i32, i32* %13, align 4, !dbg !896
  %121 = icmp ne i32 %119, %120, !dbg !897
  br i1 %121, label %122, label %130, !dbg !898

; <label>:122:                                    ; preds = %116
  %123 = load i32, i32* %12, align 4, !dbg !899
  %124 = icmp ne i32 %123, 0, !dbg !899
  %125 = select i1 %124, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), !dbg !899
  %126 = load i8*, i8** %6, align 8, !dbg !901
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 8, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.13, i32 0, i32 0), i8* %125, i8* %126), !dbg !902
  %127 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !903
  %128 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !904
  %129 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %15, align 8, !dbg !905
  call void @config_node_remove(%struct._CONFIG_REC* %127, %struct._CONFIG_NODE* %128, %struct._CONFIG_NODE* %129), !dbg !906
  br label %130, !dbg !907

; <label>:130:                                    ; preds = %122, %116, %103
  br label %131, !dbg !908

; <label>:131:                                    ; preds = %130, %94
  %132 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !909
  %133 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !910
  %134 = load i8**, i8*** %10, align 8, !dbg !911
  %135 = load i8*, i8** %134, align 8, !dbg !912
  %136 = load i32, i32* %12, align 4, !dbg !913
  %137 = sext i32 %136 to i64, !dbg !914
  %138 = getelementptr inbounds i8, i8* %135, i64 %137, !dbg !914
  %139 = load i32, i32* %13, align 4, !dbg !915
  %140 = call %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC* %132, %struct._CONFIG_NODE* %133, i8* %138, i32 %139), !dbg !916
  store %struct._CONFIG_NODE* %140, %struct._CONFIG_NODE** %8, align 8, !dbg !917
  %141 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !918
  %142 = icmp eq %struct._CONFIG_NODE* %141, null, !dbg !920
  br i1 %142, label %143, label %145, !dbg !921

; <label>:143:                                    ; preds = %131
  %144 = load i8**, i8*** %9, align 8, !dbg !922
  call void @g_strfreev(i8** %144), !dbg !924
  store %struct._CONFIG_NODE* null, %struct._CONFIG_NODE** %4, align 8, !dbg !925
  br label %180, !dbg !925

; <label>:145:                                    ; preds = %131
  br label %146, !dbg !926

; <label>:146:                                    ; preds = %145
  %147 = load i8**, i8*** %10, align 8, !dbg !927
  %148 = getelementptr inbounds i8*, i8** %147, i32 1, !dbg !927
  store i8** %148, i8*** %10, align 8, !dbg !927
  br label %90, !dbg !929, !llvm.loop !930

; <label>:149:                                    ; preds = %90
  %150 = load i8**, i8*** %9, align 8, !dbg !932
  call void @g_strfreev(i8** %150), !dbg !933
  %151 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !934
  %152 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %151, i32 0, i32 0, !dbg !936
  %153 = load i32, i32* %152, align 8, !dbg !936
  %154 = icmp eq i32 %153, 2, !dbg !937
  br i1 %154, label %162, label %155, !dbg !938

; <label>:155:                                    ; preds = %149
  %156 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !939
  %157 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %156, i32 0, i32 0, !dbg !941
  %158 = load i32, i32* %157, align 8, !dbg !941
  %159 = icmp eq i32 %158, 3, !dbg !942
  br i1 %159, label %162, label %160, !dbg !943

; <label>:160:                                    ; preds = %155
  %161 = load i8*, i8** %6, align 8, !dbg !944
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 8, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.14, i32 0, i32 0), i8* %161), !dbg !946
  store %struct._CONFIG_NODE* null, %struct._CONFIG_NODE** %4, align 8, !dbg !947
  br label %180, !dbg !947

; <label>:162:                                    ; preds = %155, %149
  %163 = load i8*, i8** %6, align 8, !dbg !948
  %164 = call noalias i8* @g_strdup(i8* %163), !dbg !949
  store i8* %164, i8** %11, align 8, !dbg !950
  %165 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !951
  %166 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %165, i32 0, i32 5, !dbg !952
  %167 = load %struct._GHashTable*, %struct._GHashTable** %166, align 8, !dbg !952
  %168 = load i8*, i8** %11, align 8, !dbg !953
  %169 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !954
  %170 = bitcast %struct._CONFIG_NODE* %169 to i8*, !dbg !954
  %171 = call i32 @g_hash_table_insert(%struct._GHashTable* %167, i8* %168, i8* %170), !dbg !955
  %172 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %5, align 8, !dbg !956
  %173 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %172, i32 0, i32 6, !dbg !957
  %174 = load %struct._GHashTable*, %struct._GHashTable** %173, align 8, !dbg !957
  %175 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !958
  %176 = bitcast %struct._CONFIG_NODE* %175 to i8*, !dbg !958
  %177 = load i8*, i8** %11, align 8, !dbg !959
  %178 = call i32 @g_hash_table_insert(%struct._GHashTable* %174, i8* %176, i8* %177), !dbg !960
  %179 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !961
  store %struct._CONFIG_NODE* %179, %struct._CONFIG_NODE** %4, align 8, !dbg !962
  br label %180, !dbg !962

; <label>:180:                                    ; preds = %162, %160, %143, %81, %30, %20
  %181 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !963
  ret %struct._CONFIG_NODE* %181, !dbg !963
}

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #2

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #3

declare noalias i8** @g_strsplit(i8*, i8*, i32) #2

declare void @g_strfreev(i8**) #2

; Function Attrs: nounwind uwtable
define i8* @config_get_str(%struct._CONFIG_REC*, i8*, i8*, i8*) #0 !dbg !964 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct._CONFIG_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct._CONFIG_NODE*, align 8
  %11 = alloca %struct._CONFIG_NODE*, align 8
  %12 = alloca i8*, align 8
  store %struct._CONFIG_REC* %0, %struct._CONFIG_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %6, metadata !967, metadata !109), !dbg !968
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !969, metadata !109), !dbg !970
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !971, metadata !109), !dbg !972
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !973, metadata !109), !dbg !974
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %10, metadata !975, metadata !109), !dbg !976
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %11, metadata !977, metadata !109), !dbg !978
  call void @llvm.dbg.declare(metadata i8** %12, metadata !979, metadata !109), !dbg !980
  br label %13, !dbg !981, !llvm.loop !982

; <label>:13:                                     ; preds = %4
  %14 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %6, align 8, !dbg !983
  %15 = icmp ne %struct._CONFIG_REC* %14, null, !dbg !987
  br i1 %15, label %16, label %17, !dbg !983

; <label>:16:                                     ; preds = %13
  br label %19, !dbg !988

; <label>:17:                                     ; preds = %13
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.config_get_str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0)), !dbg !991
  %18 = load i8*, i8** %9, align 8, !dbg !994
  store i8* %18, i8** %5, align 8, !dbg !995
  br label %102, !dbg !995

; <label>:19:                                     ; preds = %16
  br label %20, !dbg !996

; <label>:20:                                     ; preds = %19
  br label %21, !dbg !998, !llvm.loop !999

; <label>:21:                                     ; preds = %20
  %22 = load i8*, i8** %8, align 8, !dbg !1000
  %23 = icmp ne i8* %22, null, !dbg !1004
  br i1 %23, label %24, label %25, !dbg !1000

; <label>:24:                                     ; preds = %21
  br label %27, !dbg !1005

; <label>:25:                                     ; preds = %21
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.config_get_str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0)), !dbg !1008
  %26 = load i8*, i8** %9, align 8, !dbg !1011
  store i8* %26, i8** %5, align 8, !dbg !1012
  br label %102, !dbg !1012

; <label>:27:                                     ; preds = %24
  br label %28, !dbg !1013

; <label>:28:                                     ; preds = %27
  %29 = load i8*, i8** %7, align 8, !dbg !1015
  %30 = icmp eq i8* %29, null, !dbg !1016
  br i1 %30, label %31, label %32, !dbg !1015

; <label>:31:                                     ; preds = %28
  br label %34, !dbg !1017

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %7, align 8, !dbg !1019
  br label %34, !dbg !1021

; <label>:34:                                     ; preds = %32, %31
  %35 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0), %31 ], [ %33, %32 ], !dbg !1022
  %36 = load i8*, i8** %8, align 8, !dbg !1024
  %37 = call noalias i8* (i8*, ...) @g_strconcat(i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), i8* %36, i8* null), !dbg !1025
  store i8* %37, i8** %12, align 8, !dbg !1026
  %38 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %6, align 8, !dbg !1027
  %39 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %38, i32 0, i32 5, !dbg !1028
  %40 = load %struct._GHashTable*, %struct._GHashTable** %39, align 8, !dbg !1028
  %41 = load i8*, i8** %12, align 8, !dbg !1029
  %42 = call i8* @g_hash_table_lookup(%struct._GHashTable* %40, i8* %41), !dbg !1030
  %43 = bitcast i8* %42 to %struct._CONFIG_NODE*, !dbg !1030
  store %struct._CONFIG_NODE* %43, %struct._CONFIG_NODE** %11, align 8, !dbg !1031
  %44 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %11, align 8, !dbg !1032
  %45 = icmp ne %struct._CONFIG_NODE* %44, null, !dbg !1034
  br i1 %45, label %46, label %48, !dbg !1035

; <label>:46:                                     ; preds = %34
  %47 = load i8*, i8** %12, align 8, !dbg !1036
  call void @g_free(i8* %47), !dbg !1037
  br label %81, !dbg !1037

; <label>:48:                                     ; preds = %34
  %49 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %6, align 8, !dbg !1038
  %50 = load i8*, i8** %7, align 8, !dbg !1040
  %51 = call %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC* %49, i8* %50, i32 0), !dbg !1041
  store %struct._CONFIG_NODE* %51, %struct._CONFIG_NODE** %10, align 8, !dbg !1042
  %52 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %10, align 8, !dbg !1043
  %53 = icmp eq %struct._CONFIG_NODE* %52, null, !dbg !1044
  br i1 %53, label %54, label %55, !dbg !1043

; <label>:54:                                     ; preds = %48
  br label %59, !dbg !1045

; <label>:55:                                     ; preds = %48
  %56 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %10, align 8, !dbg !1047
  %57 = load i8*, i8** %8, align 8, !dbg !1048
  %58 = call %struct._CONFIG_NODE* @config_node_find(%struct._CONFIG_NODE* %56, i8* %57), !dbg !1049
  br label %59, !dbg !1050

; <label>:59:                                     ; preds = %55, %54
  %60 = phi %struct._CONFIG_NODE* [ null, %54 ], [ %58, %55 ], !dbg !1052
  store %struct._CONFIG_NODE* %60, %struct._CONFIG_NODE** %11, align 8, !dbg !1054
  %61 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %11, align 8, !dbg !1055
  %62 = icmp eq %struct._CONFIG_NODE* %61, null, !dbg !1057
  br i1 %62, label %63, label %65, !dbg !1058

; <label>:63:                                     ; preds = %59
  %64 = load i8*, i8** %12, align 8, !dbg !1059
  call void @g_free(i8* %64), !dbg !1060
  br label %80, !dbg !1060

; <label>:65:                                     ; preds = %59
  %66 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %6, align 8, !dbg !1061
  %67 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %66, i32 0, i32 5, !dbg !1063
  %68 = load %struct._GHashTable*, %struct._GHashTable** %67, align 8, !dbg !1063
  %69 = load i8*, i8** %12, align 8, !dbg !1064
  %70 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %11, align 8, !dbg !1065
  %71 = bitcast %struct._CONFIG_NODE* %70 to i8*, !dbg !1065
  %72 = call i32 @g_hash_table_insert(%struct._GHashTable* %68, i8* %69, i8* %71), !dbg !1066
  %73 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %6, align 8, !dbg !1067
  %74 = getelementptr inbounds %struct._CONFIG_REC, %struct._CONFIG_REC* %73, i32 0, i32 6, !dbg !1068
  %75 = load %struct._GHashTable*, %struct._GHashTable** %74, align 8, !dbg !1068
  %76 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %11, align 8, !dbg !1069
  %77 = bitcast %struct._CONFIG_NODE* %76 to i8*, !dbg !1069
  %78 = load i8*, i8** %12, align 8, !dbg !1070
  %79 = call i32 @g_hash_table_insert(%struct._GHashTable* %75, i8* %77, i8* %78), !dbg !1071
  br label %80

; <label>:80:                                     ; preds = %65, %63
  br label %81

; <label>:81:                                     ; preds = %80, %46
  %82 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %11, align 8, !dbg !1072
  %83 = icmp eq %struct._CONFIG_NODE* %82, null, !dbg !1073
  br i1 %83, label %94, label %84, !dbg !1074

; <label>:84:                                     ; preds = %81
  %85 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %11, align 8, !dbg !1075
  %86 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %85, i32 0, i32 0, !dbg !1076
  %87 = load i32, i32* %86, align 8, !dbg !1076
  %88 = icmp eq i32 %87, 0, !dbg !1077
  br i1 %88, label %96, label %89, !dbg !1078

; <label>:89:                                     ; preds = %84
  %90 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %11, align 8, !dbg !1079
  %91 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %90, i32 0, i32 0, !dbg !1080
  %92 = load i32, i32* %91, align 8, !dbg !1080
  %93 = icmp eq i32 %92, 1, !dbg !1081
  br i1 %93, label %96, label %94, !dbg !1082

; <label>:94:                                     ; preds = %89, %81
  %95 = load i8*, i8** %9, align 8, !dbg !1083
  br label %100, !dbg !1084

; <label>:96:                                     ; preds = %89, %84
  %97 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %11, align 8, !dbg !1085
  %98 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %97, i32 0, i32 2, !dbg !1087
  %99 = load i8*, i8** %98, align 8, !dbg !1087
  br label %100, !dbg !1088

; <label>:100:                                    ; preds = %96, %94
  %101 = phi i8* [ %95, %94 ], [ %99, %96 ], !dbg !1089
  store i8* %101, i8** %5, align 8, !dbg !1091
  br label %102, !dbg !1091

; <label>:102:                                    ; preds = %100, %25, %17
  %103 = load i8*, i8** %5, align 8, !dbg !1092
  ret i8* %103, !dbg !1092
}

declare noalias i8* @g_strconcat(i8*, ...) #2

declare void @g_free(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @config_get_int(%struct._CONFIG_REC*, i8*, i8*, i32) #0 !dbg !1093 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._CONFIG_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct._CONFIG_REC* %0, %struct._CONFIG_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %6, metadata !1096, metadata !109), !dbg !1097
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1098, metadata !109), !dbg !1099
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1100, metadata !109), !dbg !1101
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1102, metadata !109), !dbg !1103
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1104, metadata !109), !dbg !1105
  %11 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %6, align 8, !dbg !1106
  %12 = load i8*, i8** %7, align 8, !dbg !1107
  %13 = load i8*, i8** %8, align 8, !dbg !1108
  %14 = call i8* @config_get_str(%struct._CONFIG_REC* %11, i8* %12, i8* %13, i8* null), !dbg !1109
  store i8* %14, i8** %10, align 8, !dbg !1110
  %15 = load i8*, i8** %10, align 8, !dbg !1111
  %16 = icmp eq i8* %15, null, !dbg !1113
  br i1 %16, label %17, label %19, !dbg !1114

; <label>:17:                                     ; preds = %4
  %18 = load i32, i32* %9, align 4, !dbg !1115
  store i32 %18, i32* %5, align 4, !dbg !1117
  br label %22, !dbg !1117

; <label>:19:                                     ; preds = %4
  %20 = load i8*, i8** %10, align 8, !dbg !1118
  %21 = call i32 @atoi(i8* %20) #4, !dbg !1119
  store i32 %21, i32* %5, align 4, !dbg !1120
  br label %22, !dbg !1120

; <label>:22:                                     ; preds = %19, %17
  %23 = load i32, i32* %5, align 4, !dbg !1121
  ret i32 %23, !dbg !1121
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

; Function Attrs: nounwind uwtable
define i32 @config_get_bool(%struct._CONFIG_REC*, i8*, i8*, i32) #0 !dbg !1122 {
  %5 = alloca i32, align 4
  %6 = alloca %struct._CONFIG_REC*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct._CONFIG_REC* %0, %struct._CONFIG_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_REC** %6, metadata !1123, metadata !109), !dbg !1124
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1125, metadata !109), !dbg !1126
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1127, metadata !109), !dbg !1128
  store i32 %3, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !1129, metadata !109), !dbg !1130
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1131, metadata !109), !dbg !1132
  %11 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** %6, align 8, !dbg !1133
  %12 = load i8*, i8** %7, align 8, !dbg !1134
  %13 = load i8*, i8** %8, align 8, !dbg !1135
  %14 = call i8* @config_get_str(%struct._CONFIG_REC* %11, i8* %12, i8* %13, i8* null), !dbg !1136
  store i8* %14, i8** %10, align 8, !dbg !1137
  %15 = load i8*, i8** %10, align 8, !dbg !1138
  %16 = icmp eq i8* %15, null, !dbg !1140
  br i1 %16, label %17, label %19, !dbg !1141

; <label>:17:                                     ; preds = %4
  %18 = load i32, i32* %9, align 4, !dbg !1142
  store i32 %18, i32* %5, align 4, !dbg !1144
  br label %34, !dbg !1144

; <label>:19:                                     ; preds = %4
  %20 = load i8*, i8** %10, align 8, !dbg !1145
  %21 = load i8, i8* %20, align 1, !dbg !1146
  %22 = zext i8 %21 to i32, !dbg !1147
  %23 = call i32 @toupper(i32 %22) #4, !dbg !1148
  %24 = icmp eq i32 %23, 84, !dbg !1149
  br i1 %24, label %31, label %25, !dbg !1150

; <label>:25:                                     ; preds = %19
  %26 = load i8*, i8** %10, align 8, !dbg !1151
  %27 = load i8, i8* %26, align 1, !dbg !1153
  %28 = zext i8 %27 to i32, !dbg !1154
  %29 = call i32 @toupper(i32 %28) #4, !dbg !1155
  %30 = icmp eq i32 %29, 89, !dbg !1156
  br label %31, !dbg !1157

; <label>:31:                                     ; preds = %25, %19
  %32 = phi i1 [ true, %19 ], [ %30, %25 ]
  %33 = zext i1 %32 to i32, !dbg !1158
  store i32 %33, i32* %5, align 4, !dbg !1160
  br label %34, !dbg !1160

; <label>:34:                                     ; preds = %31, %17
  %35 = load i32, i32* %5, align 4, !dbg !1161
  ret i32 %35, !dbg !1161
}

; Function Attrs: nounwind readonly
declare i32 @toupper(i32) #3

; Function Attrs: nounwind uwtable
define i8* @config_node_get_str(%struct._CONFIG_NODE*, i8*, i8*) #0 !dbg !1162 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._CONFIG_NODE*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct._CONFIG_NODE*, align 8
  store %struct._CONFIG_NODE* %0, %struct._CONFIG_NODE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %5, metadata !1165, metadata !109), !dbg !1166
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1167, metadata !109), !dbg !1168
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1169, metadata !109), !dbg !1170
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %8, metadata !1171, metadata !109), !dbg !1172
  %9 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %5, align 8, !dbg !1173
  %10 = icmp eq %struct._CONFIG_NODE* %9, null, !dbg !1175
  br i1 %10, label %11, label %13, !dbg !1176

; <label>:11:                                     ; preds = %3
  %12 = load i8*, i8** %7, align 8, !dbg !1177
  store i8* %12, i8** %4, align 8, !dbg !1179
  br label %37, !dbg !1179

; <label>:13:                                     ; preds = %3
  %14 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %5, align 8, !dbg !1180
  %15 = load i8*, i8** %6, align 8, !dbg !1181
  %16 = call %struct._CONFIG_NODE* @config_node_find(%struct._CONFIG_NODE* %14, i8* %15), !dbg !1182
  store %struct._CONFIG_NODE* %16, %struct._CONFIG_NODE** %8, align 8, !dbg !1183
  %17 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !1184
  %18 = icmp ne %struct._CONFIG_NODE* %17, null, !dbg !1185
  br i1 %18, label %19, label %33, !dbg !1186

; <label>:19:                                     ; preds = %13
  %20 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !1187
  %21 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %20, i32 0, i32 0, !dbg !1189
  %22 = load i32, i32* %21, align 8, !dbg !1189
  %23 = icmp eq i32 %22, 0, !dbg !1190
  br i1 %23, label %29, label %24, !dbg !1191

; <label>:24:                                     ; preds = %19
  %25 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !1192
  %26 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %25, i32 0, i32 0, !dbg !1194
  %27 = load i32, i32* %26, align 8, !dbg !1194
  %28 = icmp eq i32 %27, 1, !dbg !1195
  br i1 %28, label %29, label %33, !dbg !1196

; <label>:29:                                     ; preds = %24, %19
  %30 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %8, align 8, !dbg !1197
  %31 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %30, i32 0, i32 2, !dbg !1198
  %32 = load i8*, i8** %31, align 8, !dbg !1198
  br label %35, !dbg !1199

; <label>:33:                                     ; preds = %24, %13
  %34 = load i8*, i8** %7, align 8, !dbg !1201
  br label %35, !dbg !1202

; <label>:35:                                     ; preds = %33, %29
  %36 = phi i8* [ %32, %29 ], [ %34, %33 ], !dbg !1204
  store i8* %36, i8** %4, align 8, !dbg !1206
  br label %37, !dbg !1206

; <label>:37:                                     ; preds = %35, %11
  %38 = load i8*, i8** %4, align 8, !dbg !1207
  ret i8* %38, !dbg !1207
}

; Function Attrs: nounwind uwtable
define i32 @config_node_get_int(%struct._CONFIG_NODE*, i8*, i32) #0 !dbg !1208 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._CONFIG_NODE*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct._CONFIG_NODE* %0, %struct._CONFIG_NODE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %5, metadata !1211, metadata !109), !dbg !1212
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1213, metadata !109), !dbg !1214
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1215, metadata !109), !dbg !1216
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1217, metadata !109), !dbg !1218
  %9 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %5, align 8, !dbg !1219
  %10 = load i8*, i8** %6, align 8, !dbg !1220
  %11 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %9, i8* %10, i8* null), !dbg !1221
  store i8* %11, i8** %8, align 8, !dbg !1222
  %12 = load i8*, i8** %8, align 8, !dbg !1223
  %13 = icmp eq i8* %12, null, !dbg !1225
  br i1 %13, label %14, label %16, !dbg !1226

; <label>:14:                                     ; preds = %3
  %15 = load i32, i32* %7, align 4, !dbg !1227
  store i32 %15, i32* %4, align 4, !dbg !1229
  br label %19, !dbg !1229

; <label>:16:                                     ; preds = %3
  %17 = load i8*, i8** %8, align 8, !dbg !1230
  %18 = call i32 @atoi(i8* %17) #4, !dbg !1231
  store i32 %18, i32* %4, align 4, !dbg !1232
  br label %19, !dbg !1232

; <label>:19:                                     ; preds = %16, %14
  %20 = load i32, i32* %4, align 4, !dbg !1233
  ret i32 %20, !dbg !1233
}

; Function Attrs: nounwind uwtable
define i32 @config_node_get_bool(%struct._CONFIG_NODE*, i8*, i32) #0 !dbg !1234 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._CONFIG_NODE*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct._CONFIG_NODE* %0, %struct._CONFIG_NODE** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %5, metadata !1235, metadata !109), !dbg !1236
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !1237, metadata !109), !dbg !1238
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1239, metadata !109), !dbg !1240
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1241, metadata !109), !dbg !1242
  %9 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %5, align 8, !dbg !1243
  %10 = load i8*, i8** %6, align 8, !dbg !1244
  %11 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %9, i8* %10, i8* null), !dbg !1245
  store i8* %11, i8** %8, align 8, !dbg !1246
  %12 = load i8*, i8** %8, align 8, !dbg !1247
  %13 = icmp eq i8* %12, null, !dbg !1249
  br i1 %13, label %14, label %16, !dbg !1250

; <label>:14:                                     ; preds = %3
  %15 = load i32, i32* %7, align 4, !dbg !1251
  store i32 %15, i32* %4, align 4, !dbg !1253
  br label %46, !dbg !1253

; <label>:16:                                     ; preds = %3
  %17 = load i8*, i8** %8, align 8, !dbg !1254
  %18 = load i8, i8* %17, align 1, !dbg !1255
  %19 = zext i8 %18 to i32, !dbg !1256
  %20 = call i32 @toupper(i32 %19) #4, !dbg !1257
  %21 = icmp eq i32 %20, 84, !dbg !1258
  br i1 %21, label %43, label %22, !dbg !1259

; <label>:22:                                     ; preds = %16
  %23 = load i8*, i8** %8, align 8, !dbg !1260
  %24 = load i8, i8* %23, align 1, !dbg !1262
  %25 = zext i8 %24 to i32, !dbg !1263
  %26 = call i32 @toupper(i32 %25) #4, !dbg !1264
  %27 = icmp eq i32 %26, 89, !dbg !1265
  br i1 %27, label %43, label %28, !dbg !1266

; <label>:28:                                     ; preds = %22
  %29 = load i8*, i8** %8, align 8, !dbg !1267
  %30 = load i8, i8* %29, align 1, !dbg !1268
  %31 = zext i8 %30 to i32, !dbg !1269
  %32 = call i32 @toupper(i32 %31) #4, !dbg !1270
  %33 = icmp eq i32 %32, 79, !dbg !1271
  br i1 %33, label %34, label %41, !dbg !1272

; <label>:34:                                     ; preds = %28
  %35 = load i8*, i8** %8, align 8, !dbg !1273
  %36 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !1273
  %37 = load i8, i8* %36, align 1, !dbg !1273
  %38 = zext i8 %37 to i32, !dbg !1274
  %39 = call i32 @toupper(i32 %38) #4, !dbg !1275
  %40 = icmp eq i32 %39, 78, !dbg !1276
  br label %41

; <label>:41:                                     ; preds = %34, %28
  %42 = phi i1 [ false, %28 ], [ %40, %34 ]
  br label %43, !dbg !1277

; <label>:43:                                     ; preds = %41, %22, %16
  %44 = phi i1 [ true, %22 ], [ true, %16 ], [ %42, %41 ]
  %45 = zext i1 %44 to i32, !dbg !1279
  store i32 %45, i32* %4, align 4, !dbg !1281
  br label %46, !dbg !1281

; <label>:46:                                     ; preds = %43, %14
  %47 = load i32, i32* %4, align 4, !dbg !1282
  ret i32 %47, !dbg !1282
}

; Function Attrs: nounwind uwtable
define i8** @config_node_get_list(%struct._CONFIG_NODE*) #0 !dbg !1283 {
  %2 = alloca i8**, align 8
  %3 = alloca %struct._CONFIG_NODE*, align 8
  %4 = alloca %struct._GString*, align 8
  %5 = alloca %struct._GSList*, align 8
  %6 = alloca i8**, align 8
  store %struct._CONFIG_NODE* %0, %struct._CONFIG_NODE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %3, metadata !1286, metadata !109), !dbg !1287
  call void @llvm.dbg.declare(metadata %struct._GString** %4, metadata !1288, metadata !109), !dbg !1289
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !1290, metadata !109), !dbg !1291
  call void @llvm.dbg.declare(metadata i8*** %6, metadata !1292, metadata !109), !dbg !1293
  br label %7, !dbg !1294, !llvm.loop !1295

; <label>:7:                                      ; preds = %1
  %8 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1296
  %9 = icmp ne %struct._CONFIG_NODE* %8, null, !dbg !1300
  br i1 %9, label %10, label %11, !dbg !1296

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !1301

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.config_node_get_list, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)), !dbg !1304
  store i8** null, i8*** %2, align 8, !dbg !1307
  br label %76, !dbg !1307

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !1308

; <label>:13:                                     ; preds = %12
  br label %14, !dbg !1310, !llvm.loop !1311

; <label>:14:                                     ; preds = %13
  %15 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1312
  %16 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %15, i32 0, i32 0, !dbg !1316
  %17 = load i32, i32* %16, align 8, !dbg !1316
  %18 = icmp eq i32 %17, 2, !dbg !1317
  br i1 %18, label %24, label %19, !dbg !1318

; <label>:19:                                     ; preds = %14
  %20 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1319
  %21 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %20, i32 0, i32 0, !dbg !1321
  %22 = load i32, i32* %21, align 8, !dbg !1321
  %23 = icmp eq i32 %22, 3, !dbg !1322
  br i1 %23, label %24, label %25, !dbg !1323

; <label>:24:                                     ; preds = %19, %14
  br label %26, !dbg !1324

; <label>:25:                                     ; preds = %19
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.config_node_get_list, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0)), !dbg !1327
  store i8** null, i8*** %2, align 8, !dbg !1330
  br label %76, !dbg !1330

; <label>:26:                                     ; preds = %24
  br label %27, !dbg !1331

; <label>:27:                                     ; preds = %26
  %28 = call %struct._GString* @g_string_new(i8* null), !dbg !1333
  store %struct._GString* %28, %struct._GString** %4, align 8, !dbg !1334
  %29 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1335
  %30 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %29, i32 0, i32 2, !dbg !1337
  %31 = load i8*, i8** %30, align 8, !dbg !1337
  %32 = bitcast i8* %31 to %struct._GSList*, !dbg !1335
  store %struct._GSList* %32, %struct._GSList** %5, align 8, !dbg !1338
  br label %33, !dbg !1339

; <label>:33:                                     ; preds = %51, %27
  %34 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1340
  %35 = icmp ne %struct._GSList* %34, null, !dbg !1343
  br i1 %35, label %36, label %55, !dbg !1344

; <label>:36:                                     ; preds = %33
  %37 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1345
  %38 = getelementptr inbounds %struct._GSList, %struct._GSList* %37, i32 0, i32 0, !dbg !1347
  %39 = load i8*, i8** %38, align 8, !dbg !1347
  %40 = bitcast i8* %39 to %struct._CONFIG_NODE*, !dbg !1345
  store %struct._CONFIG_NODE* %40, %struct._CONFIG_NODE** %3, align 8, !dbg !1348
  %41 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1349
  %42 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %41, i32 0, i32 0, !dbg !1351
  %43 = load i32, i32* %42, align 8, !dbg !1351
  %44 = icmp eq i32 %43, 1, !dbg !1352
  br i1 %44, label %45, label %50, !dbg !1353

; <label>:45:                                     ; preds = %36
  %46 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !1354
  %47 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1355
  %48 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %47, i32 0, i32 2, !dbg !1356
  %49 = load i8*, i8** %48, align 8, !dbg !1356
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i8* %49), !dbg !1357
  br label %50, !dbg !1357

; <label>:50:                                     ; preds = %45, %36
  br label %51, !dbg !1358

; <label>:51:                                     ; preds = %50
  %52 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1359
  %53 = getelementptr inbounds %struct._GSList, %struct._GSList* %52, i32 0, i32 1, !dbg !1361
  %54 = load %struct._GSList*, %struct._GSList** %53, align 8, !dbg !1361
  store %struct._GSList* %54, %struct._GSList** %5, align 8, !dbg !1362
  br label %33, !dbg !1363, !llvm.loop !1364

; <label>:55:                                     ; preds = %33
  %56 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !1366
  %57 = getelementptr inbounds %struct._GString, %struct._GString* %56, i32 0, i32 1, !dbg !1368
  %58 = load i64, i64* %57, align 8, !dbg !1368
  %59 = icmp eq i64 %58, 0, !dbg !1369
  br i1 %59, label %60, label %61, !dbg !1370

; <label>:60:                                     ; preds = %55
  store i8** null, i8*** %6, align 8, !dbg !1371
  br label %72, !dbg !1372

; <label>:61:                                     ; preds = %55
  %62 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !1373
  %63 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !1375
  %64 = getelementptr inbounds %struct._GString, %struct._GString* %63, i32 0, i32 1, !dbg !1376
  %65 = load i64, i64* %64, align 8, !dbg !1376
  %66 = sub i64 %65, 1, !dbg !1377
  %67 = call %struct._GString* @g_string_truncate(%struct._GString* %62, i64 %66), !dbg !1378
  %68 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !1379
  %69 = getelementptr inbounds %struct._GString, %struct._GString* %68, i32 0, i32 0, !dbg !1380
  %70 = load i8*, i8** %69, align 8, !dbg !1380
  %71 = call noalias i8** @g_strsplit(i8* %70, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), i32 -1), !dbg !1381
  store i8** %71, i8*** %6, align 8, !dbg !1382
  br label %72

; <label>:72:                                     ; preds = %61, %60
  %73 = load %struct._GString*, %struct._GString** %4, align 8, !dbg !1383
  %74 = call i8* @g_string_free(%struct._GString* %73, i32 1), !dbg !1384
  %75 = load i8**, i8*** %6, align 8, !dbg !1385
  store i8** %75, i8*** %2, align 8, !dbg !1386
  br label %76, !dbg !1386

; <label>:76:                                     ; preds = %72, %25, %11
  %77 = load i8**, i8*** %2, align 8, !dbg !1387
  ret i8** %77, !dbg !1387
}

declare %struct._GString* @g_string_new(i8*) #2

declare void @g_string_append_printf(%struct._GString*, i8*, ...) #2

declare %struct._GString* @g_string_truncate(%struct._GString*, i64) #2

declare i8* @g_string_free(%struct._GString*, i32) #2

; Function Attrs: nounwind uwtable
define %struct._CONFIG_NODE* @config_node_nth(%struct._CONFIG_NODE*, i32) #0 !dbg !1388 {
  %3 = alloca %struct._CONFIG_NODE*, align 8
  %4 = alloca %struct._CONFIG_NODE*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca %struct._CONFIG_NODE*, align 8
  store %struct._CONFIG_NODE* %0, %struct._CONFIG_NODE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %4, metadata !1391, metadata !109), !dbg !1392
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !1393, metadata !109), !dbg !1394
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !1395, metadata !109), !dbg !1396
  br label %8, !dbg !1397, !llvm.loop !1398

; <label>:8:                                      ; preds = %2
  %9 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1399
  %10 = icmp ne %struct._CONFIG_NODE* %9, null, !dbg !1403
  br i1 %10, label %11, label %12, !dbg !1399

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !1404

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.config_node_nth, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0)), !dbg !1407
  store %struct._CONFIG_NODE* null, %struct._CONFIG_NODE** %3, align 8, !dbg !1410
  br label %59, !dbg !1410

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !1411

; <label>:14:                                     ; preds = %13
  br label %15, !dbg !1413, !llvm.loop !1414

; <label>:15:                                     ; preds = %14
  %16 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1415
  %17 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %16, i32 0, i32 0, !dbg !1419
  %18 = load i32, i32* %17, align 8, !dbg !1419
  %19 = icmp eq i32 %18, 2, !dbg !1420
  br i1 %19, label %25, label %20, !dbg !1421

; <label>:20:                                     ; preds = %15
  %21 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1422
  %22 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %21, i32 0, i32 0, !dbg !1424
  %23 = load i32, i32* %22, align 8, !dbg !1424
  %24 = icmp eq i32 %23, 3, !dbg !1425
  br i1 %24, label %25, label %26, !dbg !1426

; <label>:25:                                     ; preds = %20, %15
  br label %27, !dbg !1427

; <label>:26:                                     ; preds = %20
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.config_node_nth, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i32 0, i32 0)), !dbg !1430
  store %struct._CONFIG_NODE* null, %struct._CONFIG_NODE** %3, align 8, !dbg !1433
  br label %59, !dbg !1433

; <label>:27:                                     ; preds = %25
  br label %28, !dbg !1434

; <label>:28:                                     ; preds = %27
  %29 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1436
  %30 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %29, i32 0, i32 2, !dbg !1438
  %31 = load i8*, i8** %30, align 8, !dbg !1438
  %32 = bitcast i8* %31 to %struct._GSList*, !dbg !1436
  store %struct._GSList* %32, %struct._GSList** %6, align 8, !dbg !1439
  br label %33, !dbg !1440

; <label>:33:                                     ; preds = %54, %28
  %34 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1441
  %35 = icmp ne %struct._GSList* %34, null, !dbg !1444
  br i1 %35, label %36, label %58, !dbg !1445

; <label>:36:                                     ; preds = %33
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %7, metadata !1446, metadata !109), !dbg !1448
  %37 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1449
  %38 = getelementptr inbounds %struct._GSList, %struct._GSList* %37, i32 0, i32 0, !dbg !1450
  %39 = load i8*, i8** %38, align 8, !dbg !1450
  %40 = bitcast i8* %39 to %struct._CONFIG_NODE*, !dbg !1449
  store %struct._CONFIG_NODE* %40, %struct._CONFIG_NODE** %7, align 8, !dbg !1448
  %41 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !1451
  %42 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %41, i32 0, i32 0, !dbg !1453
  %43 = load i32, i32* %42, align 8, !dbg !1453
  %44 = icmp ne i32 %43, 4, !dbg !1454
  br i1 %44, label %45, label %53, !dbg !1455

; <label>:45:                                     ; preds = %36
  %46 = load i32, i32* %5, align 4, !dbg !1456
  %47 = icmp eq i32 %46, 0, !dbg !1459
  br i1 %47, label %48, label %50, !dbg !1460

; <label>:48:                                     ; preds = %45
  %49 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %7, align 8, !dbg !1461
  store %struct._CONFIG_NODE* %49, %struct._CONFIG_NODE** %3, align 8, !dbg !1462
  br label %59, !dbg !1462

; <label>:50:                                     ; preds = %45
  %51 = load i32, i32* %5, align 4, !dbg !1463
  %52 = add nsw i32 %51, -1, !dbg !1463
  store i32 %52, i32* %5, align 4, !dbg !1463
  br label %53, !dbg !1464

; <label>:53:                                     ; preds = %50, %36
  br label %54, !dbg !1465

; <label>:54:                                     ; preds = %53
  %55 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1466
  %56 = getelementptr inbounds %struct._GSList, %struct._GSList* %55, i32 0, i32 1, !dbg !1468
  %57 = load %struct._GSList*, %struct._GSList** %56, align 8, !dbg !1468
  store %struct._GSList* %57, %struct._GSList** %6, align 8, !dbg !1469
  br label %33, !dbg !1470, !llvm.loop !1471

; <label>:58:                                     ; preds = %33
  store %struct._CONFIG_NODE* null, %struct._CONFIG_NODE** %3, align 8, !dbg !1473
  br label %59, !dbg !1473

; <label>:59:                                     ; preds = %58, %48, %26, %12
  %60 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1474
  ret %struct._CONFIG_NODE* %60, !dbg !1474
}

; Function Attrs: nounwind uwtable
define i32 @config_node_index(%struct._CONFIG_NODE*, i8*) #0 !dbg !1475 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._CONFIG_NODE*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._CONFIG_NODE*, align 8
  %7 = alloca %struct._GSList*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct._CONFIG_NODE*, align 8
  store %struct._CONFIG_NODE* %0, %struct._CONFIG_NODE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %4, metadata !1478, metadata !109), !dbg !1479
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1480, metadata !109), !dbg !1481
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %6, metadata !1482, metadata !109), !dbg !1483
  call void @llvm.dbg.declare(metadata %struct._GSList** %7, metadata !1484, metadata !109), !dbg !1485
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1486, metadata !109), !dbg !1487
  br label %10, !dbg !1488, !llvm.loop !1489

; <label>:10:                                     ; preds = %2
  %11 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1490
  %12 = icmp ne %struct._CONFIG_NODE* %11, null, !dbg !1494
  br i1 %12, label %13, label %14, !dbg !1490

; <label>:13:                                     ; preds = %10
  br label %15, !dbg !1495

; <label>:14:                                     ; preds = %10
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.config_node_index, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0)), !dbg !1498
  store i32 -1, i32* %3, align 4, !dbg !1501
  br label %62, !dbg !1501

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !1502

; <label>:16:                                     ; preds = %15
  br label %17, !dbg !1504, !llvm.loop !1505

; <label>:17:                                     ; preds = %16
  %18 = load i8*, i8** %5, align 8, !dbg !1506
  %19 = icmp ne i8* %18, null, !dbg !1510
  br i1 %19, label %20, label %21, !dbg !1506

; <label>:20:                                     ; preds = %17
  br label %22, !dbg !1511

; <label>:21:                                     ; preds = %17
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.config_node_index, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0)), !dbg !1514
  store i32 -1, i32* %3, align 4, !dbg !1517
  br label %62, !dbg !1517

; <label>:22:                                     ; preds = %20
  br label %23, !dbg !1518

; <label>:23:                                     ; preds = %22
  %24 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1520
  %25 = load i8*, i8** %5, align 8, !dbg !1521
  %26 = call %struct._CONFIG_NODE* @config_node_find(%struct._CONFIG_NODE* %24, i8* %25), !dbg !1522
  store %struct._CONFIG_NODE* %26, %struct._CONFIG_NODE** %6, align 8, !dbg !1523
  %27 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1524
  %28 = icmp eq %struct._CONFIG_NODE* %27, null, !dbg !1526
  br i1 %28, label %29, label %30, !dbg !1527

; <label>:29:                                     ; preds = %23
  store i32 -1, i32* %3, align 4, !dbg !1528
  br label %62, !dbg !1528

; <label>:30:                                     ; preds = %23
  store i32 0, i32* %8, align 4, !dbg !1529
  %31 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1530
  %32 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %31, i32 0, i32 2, !dbg !1532
  %33 = load i8*, i8** %32, align 8, !dbg !1532
  %34 = bitcast i8* %33 to %struct._GSList*, !dbg !1530
  store %struct._GSList* %34, %struct._GSList** %7, align 8, !dbg !1533
  br label %35, !dbg !1534

; <label>:35:                                     ; preds = %57, %30
  %36 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1535
  %37 = icmp ne %struct._GSList* %36, null, !dbg !1538
  br i1 %37, label %38, label %61, !dbg !1539

; <label>:38:                                     ; preds = %35
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %9, metadata !1540, metadata !109), !dbg !1542
  %39 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1543
  %40 = getelementptr inbounds %struct._GSList, %struct._GSList* %39, i32 0, i32 0, !dbg !1544
  %41 = load i8*, i8** %40, align 8, !dbg !1544
  %42 = bitcast i8* %41 to %struct._CONFIG_NODE*, !dbg !1543
  store %struct._CONFIG_NODE* %42, %struct._CONFIG_NODE** %9, align 8, !dbg !1542
  %43 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %9, align 8, !dbg !1545
  %44 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1547
  %45 = icmp eq %struct._CONFIG_NODE* %43, %44, !dbg !1548
  br i1 %45, label %46, label %48, !dbg !1549

; <label>:46:                                     ; preds = %38
  %47 = load i32, i32* %8, align 4, !dbg !1550
  store i32 %47, i32* %3, align 4, !dbg !1551
  br label %62, !dbg !1551

; <label>:48:                                     ; preds = %38
  %49 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %9, align 8, !dbg !1552
  %50 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %49, i32 0, i32 0, !dbg !1554
  %51 = load i32, i32* %50, align 8, !dbg !1554
  %52 = icmp ne i32 %51, 4, !dbg !1555
  br i1 %52, label %53, label %56, !dbg !1556

; <label>:53:                                     ; preds = %48
  %54 = load i32, i32* %8, align 4, !dbg !1557
  %55 = add nsw i32 %54, 1, !dbg !1557
  store i32 %55, i32* %8, align 4, !dbg !1557
  br label %56, !dbg !1558

; <label>:56:                                     ; preds = %53, %48
  br label %57, !dbg !1559

; <label>:57:                                     ; preds = %56
  %58 = load %struct._GSList*, %struct._GSList** %7, align 8, !dbg !1560
  %59 = getelementptr inbounds %struct._GSList, %struct._GSList* %58, i32 0, i32 1, !dbg !1562
  %60 = load %struct._GSList*, %struct._GSList** %59, align 8, !dbg !1562
  store %struct._GSList* %60, %struct._GSList** %7, align 8, !dbg !1563
  br label %35, !dbg !1564, !llvm.loop !1565

; <label>:61:                                     ; preds = %35
  store i32 -1, i32* %3, align 4, !dbg !1567
  br label %62, !dbg !1567

; <label>:62:                                     ; preds = %61, %46, %29, %21, %14
  %63 = load i32, i32* %3, align 4, !dbg !1568
  ret i32 %63, !dbg !1568
}

; Function Attrs: nounwind uwtable
define %struct._GSList* @config_node_first(%struct._GSList*) #0 !dbg !1569 {
  %2 = alloca %struct._GSList*, align 8
  %3 = alloca %struct._CONFIG_NODE*, align 8
  store %struct._GSList* %0, %struct._GSList** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %2, metadata !1572, metadata !109), !dbg !1573
  br label %4, !dbg !1574

; <label>:4:                                      ; preds = %17, %1
  %5 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !1575
  %6 = icmp ne %struct._GSList* %5, null, !dbg !1577
  br i1 %6, label %7, label %21, !dbg !1578

; <label>:7:                                      ; preds = %4
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %3, metadata !1579, metadata !109), !dbg !1581
  %8 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !1582
  %9 = getelementptr inbounds %struct._GSList, %struct._GSList* %8, i32 0, i32 0, !dbg !1583
  %10 = load i8*, i8** %9, align 8, !dbg !1583
  %11 = bitcast i8* %10 to %struct._CONFIG_NODE*, !dbg !1582
  store %struct._CONFIG_NODE* %11, %struct._CONFIG_NODE** %3, align 8, !dbg !1581
  %12 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1584
  %13 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %12, i32 0, i32 0, !dbg !1586
  %14 = load i32, i32* %13, align 8, !dbg !1586
  %15 = icmp ne i32 %14, 4, !dbg !1587
  br i1 %15, label %16, label %17, !dbg !1588

; <label>:16:                                     ; preds = %7
  br label %21, !dbg !1589

; <label>:17:                                     ; preds = %7
  %18 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !1590
  %19 = getelementptr inbounds %struct._GSList, %struct._GSList* %18, i32 0, i32 1, !dbg !1591
  %20 = load %struct._GSList*, %struct._GSList** %19, align 8, !dbg !1591
  store %struct._GSList* %20, %struct._GSList** %2, align 8, !dbg !1592
  br label %4, !dbg !1593, !llvm.loop !1595

; <label>:21:                                     ; preds = %16, %4
  %22 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !1596
  ret %struct._GSList* %22, !dbg !1597
}

; Function Attrs: nounwind uwtable
define %struct._GSList* @config_node_next(%struct._GSList*) #0 !dbg !1598 {
  %2 = alloca %struct._GSList*, align 8
  store %struct._GSList* %0, %struct._GSList** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %2, metadata !1599, metadata !109), !dbg !1600
  %3 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !1601
  %4 = getelementptr inbounds %struct._GSList, %struct._GSList* %3, i32 0, i32 1, !dbg !1602
  %5 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1602
  store %struct._GSList* %5, %struct._GSList** %2, align 8, !dbg !1603
  %6 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !1604
  %7 = call %struct._GSList* @config_node_first(%struct._GSList* %6), !dbg !1605
  ret %struct._GSList* %7, !dbg !1606
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!100, !101}
!llvm.ident = !{!102}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !82)
!1 = !DIFile(filename: "line6-get.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !11, !38, !45, !50, !59, !70}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 4, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "iconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!5 = !{!6, !7, !8, !9, !10}
!6 = !DIEnumerator(name: "NODE_TYPE_KEY", value: 0)
!7 = !DIEnumerator(name: "NODE_TYPE_VALUE", value: 1)
!8 = !DIEnumerator(name: "NODE_TYPE_BLOCK", value: 2)
!9 = !DIEnumerator(name: "NODE_TYPE_LIST", value: 3)
!10 = !DIEnumerator(name: "NODE_TYPE_COMMENT", value: 4)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 75, size: 32, align: 32, elements: !13)
!12 = !DIFile(filename: "/usr/include/glib-2.0/glib/gscanner.h", directory: "/home/lichi/Desktop/irssi/task1")
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37}
!14 = !DIEnumerator(name: "G_TOKEN_EOF", value: 0)
!15 = !DIEnumerator(name: "G_TOKEN_LEFT_PAREN", value: 40)
!16 = !DIEnumerator(name: "G_TOKEN_RIGHT_PAREN", value: 41)
!17 = !DIEnumerator(name: "G_TOKEN_LEFT_CURLY", value: 123)
!18 = !DIEnumerator(name: "G_TOKEN_RIGHT_CURLY", value: 125)
!19 = !DIEnumerator(name: "G_TOKEN_LEFT_BRACE", value: 91)
!20 = !DIEnumerator(name: "G_TOKEN_RIGHT_BRACE", value: 93)
!21 = !DIEnumerator(name: "G_TOKEN_EQUAL_SIGN", value: 61)
!22 = !DIEnumerator(name: "G_TOKEN_COMMA", value: 44)
!23 = !DIEnumerator(name: "G_TOKEN_NONE", value: 256)
!24 = !DIEnumerator(name: "G_TOKEN_ERROR", value: 257)
!25 = !DIEnumerator(name: "G_TOKEN_CHAR", value: 258)
!26 = !DIEnumerator(name: "G_TOKEN_BINARY", value: 259)
!27 = !DIEnumerator(name: "G_TOKEN_OCTAL", value: 260)
!28 = !DIEnumerator(name: "G_TOKEN_INT", value: 261)
!29 = !DIEnumerator(name: "G_TOKEN_HEX", value: 262)
!30 = !DIEnumerator(name: "G_TOKEN_FLOAT", value: 263)
!31 = !DIEnumerator(name: "G_TOKEN_STRING", value: 264)
!32 = !DIEnumerator(name: "G_TOKEN_SYMBOL", value: 265)
!33 = !DIEnumerator(name: "G_TOKEN_IDENTIFIER", value: 266)
!34 = !DIEnumerator(name: "G_TOKEN_IDENTIFIER_NULL", value: 267)
!35 = !DIEnumerator(name: "G_TOKEN_COMMENT_SINGLE", value: 268)
!36 = !DIEnumerator(name: "G_TOKEN_COMMENT_MULTI", value: 269)
!37 = !DIEnumerator(name: "G_TOKEN_LAST", value: 270)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !39, line: 69, size: 32, align: 32, elements: !40)
!39 = !DIFile(filename: "/usr/include/glib-2.0/glib/giochannel.h", directory: "/home/lichi/Desktop/irssi/task1")
!40 = !{!41, !42, !43, !44}
!41 = !DIEnumerator(name: "G_IO_STATUS_ERROR", value: 0)
!42 = !DIEnumerator(name: "G_IO_STATUS_NORMAL", value: 1)
!43 = !DIEnumerator(name: "G_IO_STATUS_EOF", value: 2)
!44 = !DIEnumerator(name: "G_IO_STATUS_AGAIN", value: 3)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !39, line: 77, size: 32, align: 32, elements: !46)
!46 = !{!47, !48, !49}
!47 = !DIEnumerator(name: "G_SEEK_CUR", value: 0)
!48 = !DIEnumerator(name: "G_SEEK_SET", value: 1)
!49 = !DIEnumerator(name: "G_SEEK_END", value: 2)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !51, line: 31, size: 32, align: 32, elements: !52)
!51 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/irssi/task1")
!52 = !{!53, !54, !55, !56, !57, !58}
!53 = !DIEnumerator(name: "G_IO_IN", value: 1)
!54 = !DIEnumerator(name: "G_IO_OUT", value: 4)
!55 = !DIEnumerator(name: "G_IO_PRI", value: 2)
!56 = !DIEnumerator(name: "G_IO_ERR", value: 8)
!57 = !DIEnumerator(name: "G_IO_HUP", value: 16)
!58 = !DIEnumerator(name: "G_IO_NVAL", value: 32)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !39, line: 84, size: 32, align: 32, elements: !60)
!60 = !{!61, !62, !63, !64, !65, !66, !67, !68, !69}
!61 = !DIEnumerator(name: "G_IO_FLAG_APPEND", value: 1)
!62 = !DIEnumerator(name: "G_IO_FLAG_NONBLOCK", value: 2)
!63 = !DIEnumerator(name: "G_IO_FLAG_IS_READABLE", value: 4)
!64 = !DIEnumerator(name: "G_IO_FLAG_IS_WRITABLE", value: 8)
!65 = !DIEnumerator(name: "G_IO_FLAG_IS_WRITEABLE", value: 8)
!66 = !DIEnumerator(name: "G_IO_FLAG_IS_SEEKABLE", value: 16)
!67 = !DIEnumerator(name: "G_IO_FLAG_MASK", value: 31)
!68 = !DIEnumerator(name: "G_IO_FLAG_GET_MASK", value: 31)
!69 = !DIEnumerator(name: "G_IO_FLAG_SET_MASK", value: 3)
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !71, line: 51, size: 32, align: 32, elements: !72)
!71 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/irssi/task1")
!72 = !{!73, !74, !75, !76, !77, !78, !79, !80, !81}
!73 = !DIEnumerator(name: "G_LOG_FLAG_RECURSION", value: 1)
!74 = !DIEnumerator(name: "G_LOG_FLAG_FATAL", value: 2)
!75 = !DIEnumerator(name: "G_LOG_LEVEL_ERROR", value: 4)
!76 = !DIEnumerator(name: "G_LOG_LEVEL_CRITICAL", value: 8)
!77 = !DIEnumerator(name: "G_LOG_LEVEL_WARNING", value: 16)
!78 = !DIEnumerator(name: "G_LOG_LEVEL_MESSAGE", value: 32)
!79 = !DIEnumerator(name: "G_LOG_LEVEL_INFO", value: 64)
!80 = !DIEnumerator(name: "G_LOG_LEVEL_DEBUG", value: 128)
!81 = !DIEnumerator(name: "G_LOG_LEVEL_MASK", value: -4)
!82 = !{!83, !84, !88, !90, !97, !95, !99}
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !86, line: 46, baseType: !87)
!86 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!87 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64, align: 64)
!89 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "CONFIG_NODE", file: !4, line: 17, baseType: !92)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CONFIG_NODE", file: !4, line: 20, size: 192, align: 64, elements: !93)
!93 = !{!94, !96, !98}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !92, file: !4, line: 21, baseType: !95, size: 32, align: 32)
!95 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !92, file: !4, line: 22, baseType: !97, size: 64, align: 64, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64, align: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !92, file: !4, line: 23, baseType: !83, size: 64, align: 64, offset: 128)
!99 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!100 = !{i32 2, !"Dwarf Version", i32 4}
!101 = !{i32 2, !"Debug Info Version", i32 3}
!102 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!103 = distinct !DISubprogram(name: "config_node_find", scope: !104, file: !104, line: 23, type: !105, isLocal: false, isDefinition: true, scopeLine: 24, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !107)
!104 = !DIFile(filename: "get.c", directory: "/home/lichi/Desktop/irssi/task1")
!105 = !DISubroutineType(types: !106)
!106 = !{!90, !90, !88}
!107 = !{}
!108 = !DILocalVariable(name: "node", arg: 1, scope: !103, file: !104, line: 23, type: !90)
!109 = !DIExpression()
!110 = !DILocation(line: 23, column: 44, scope: !103)
!111 = !DILocalVariable(name: "key", arg: 2, scope: !103, file: !104, line: 23, type: !88)
!112 = !DILocation(line: 23, column: 62, scope: !103)
!113 = !DILocalVariable(name: "tmp", scope: !103, file: !104, line: 25, type: !114)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64, align: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !116, line: 37, baseType: !117)
!116 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !116, line: 39, size: 128, align: 64, elements: !118)
!118 = !{!119, !121}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !117, file: !116, line: 41, baseType: !120, size: 64, align: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !86, line: 77, baseType: !83)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !117, file: !116, line: 42, baseType: !114, size: 64, align: 64, offset: 64)
!122 = !DILocation(line: 25, column: 10, scope: !103)
!123 = !DILocation(line: 27, column: 2, scope: !103)
!124 = distinct !{!124, !123}
!125 = !DILocation(line: 27, column: 10, scope: !126)
!126 = !DILexicalBlockFile(scope: !127, file: !104, discriminator: 1)
!127 = distinct !DILexicalBlock(scope: !128, file: !104, line: 27, column: 10)
!128 = distinct !DILexicalBlock(scope: !103, file: !104, line: 27, column: 4)
!129 = !DILocation(line: 27, column: 15, scope: !126)
!130 = !DILocation(line: 27, column: 5, scope: !131)
!131 = !DILexicalBlockFile(scope: !132, file: !104, discriminator: 2)
!132 = distinct !DILexicalBlock(scope: !127, file: !104, line: 27, column: 3)
!133 = !DILocation(line: 27, column: 14, scope: !134)
!134 = !DILexicalBlockFile(scope: !135, file: !104, discriminator: 3)
!135 = distinct !DILexicalBlock(scope: !127, file: !104, line: 27, column: 12)
!136 = !DILocation(line: 27, column: 99, scope: !134)
!137 = !DILocation(line: 27, column: 7, scope: !138)
!138 = !DILexicalBlockFile(scope: !128, file: !104, discriminator: 4)
!139 = !DILocation(line: 28, column: 2, scope: !103)
!140 = distinct !{!140, !139}
!141 = !DILocation(line: 28, column: 10, scope: !142)
!142 = !DILexicalBlockFile(scope: !143, file: !104, discriminator: 1)
!143 = distinct !DILexicalBlock(scope: !144, file: !104, line: 28, column: 10)
!144 = distinct !DILexicalBlock(scope: !103, file: !104, line: 28, column: 4)
!145 = !DILocation(line: 28, column: 14, scope: !142)
!146 = !DILocation(line: 28, column: 5, scope: !147)
!147 = !DILexicalBlockFile(scope: !148, file: !104, discriminator: 2)
!148 = distinct !DILexicalBlock(scope: !143, file: !104, line: 28, column: 3)
!149 = !DILocation(line: 28, column: 14, scope: !150)
!150 = !DILexicalBlockFile(scope: !151, file: !104, discriminator: 3)
!151 = distinct !DILexicalBlock(scope: !143, file: !104, line: 28, column: 12)
!152 = !DILocation(line: 28, column: 98, scope: !150)
!153 = !DILocation(line: 28, column: 7, scope: !154)
!154 = !DILexicalBlockFile(scope: !144, file: !104, discriminator: 4)
!155 = !DILocation(line: 29, column: 2, scope: !103)
!156 = distinct !{!156, !155}
!157 = !DILocation(line: 29, column: 12, scope: !158)
!158 = !DILexicalBlockFile(scope: !159, file: !104, discriminator: 1)
!159 = distinct !DILexicalBlock(scope: !160, file: !104, line: 29, column: 10)
!160 = distinct !DILexicalBlock(scope: !103, file: !104, line: 29, column: 4)
!161 = !DILocation(line: 29, column: 19, scope: !158)
!162 = !DILocation(line: 29, column: 24, scope: !158)
!163 = !DILocation(line: 29, column: 43, scope: !158)
!164 = !DILocation(line: 29, column: 47, scope: !165)
!165 = !DILexicalBlockFile(scope: !159, file: !104, discriminator: 2)
!166 = !DILocation(line: 29, column: 54, scope: !165)
!167 = !DILocation(line: 29, column: 59, scope: !165)
!168 = !DILocation(line: 29, column: 10, scope: !165)
!169 = !DILocation(line: 29, column: 81, scope: !170)
!170 = !DILexicalBlockFile(scope: !171, file: !104, discriminator: 3)
!171 = distinct !DILexicalBlock(scope: !159, file: !104, line: 29, column: 79)
!172 = !DILocation(line: 29, column: 90, scope: !173)
!173 = !DILexicalBlockFile(scope: !174, file: !104, discriminator: 4)
!174 = distinct !DILexicalBlock(scope: !159, file: !104, line: 29, column: 88)
!175 = !DILocation(line: 29, column: 181, scope: !173)
!176 = !DILocation(line: 29, column: 7, scope: !177)
!177 = !DILexicalBlockFile(scope: !160, file: !104, discriminator: 5)
!178 = !DILocation(line: 31, column: 13, scope: !179)
!179 = distinct !DILexicalBlock(scope: !103, file: !104, line: 31, column: 2)
!180 = !DILocation(line: 31, column: 19, scope: !179)
!181 = !DILocation(line: 31, column: 11, scope: !179)
!182 = !DILocation(line: 31, column: 7, scope: !179)
!183 = !DILocation(line: 31, column: 26, scope: !184)
!184 = !DILexicalBlockFile(scope: !185, file: !104, discriminator: 1)
!185 = distinct !DILexicalBlock(scope: !179, file: !104, line: 31, column: 2)
!186 = !DILocation(line: 31, column: 30, scope: !184)
!187 = !DILocation(line: 31, column: 2, scope: !184)
!188 = !DILocalVariable(name: "node", scope: !189, file: !104, line: 32, type: !90)
!189 = distinct !DILexicalBlock(scope: !185, file: !104, line: 31, column: 55)
!190 = !DILocation(line: 32, column: 16, scope: !189)
!191 = !DILocation(line: 32, column: 23, scope: !189)
!192 = !DILocation(line: 32, column: 28, scope: !189)
!193 = !DILocation(line: 34, column: 7, scope: !194)
!194 = distinct !DILexicalBlock(scope: !189, file: !104, line: 34, column: 7)
!195 = !DILocation(line: 34, column: 13, scope: !194)
!196 = !DILocation(line: 34, column: 17, scope: !194)
!197 = !DILocation(line: 34, column: 24, scope: !194)
!198 = !DILocation(line: 34, column: 46, scope: !199)
!199 = !DILexicalBlockFile(scope: !194, file: !104, discriminator: 1)
!200 = !DILocation(line: 34, column: 52, scope: !199)
!201 = !DILocation(line: 34, column: 57, scope: !199)
!202 = !DILocation(line: 34, column: 27, scope: !199)
!203 = !DILocation(line: 34, column: 62, scope: !199)
!204 = !DILocation(line: 34, column: 7, scope: !199)
!205 = !DILocation(line: 35, column: 11, scope: !194)
!206 = !DILocation(line: 35, column: 4, scope: !194)
!207 = !DILocation(line: 36, column: 2, scope: !189)
!208 = !DILocation(line: 31, column: 44, scope: !209)
!209 = !DILexicalBlockFile(scope: !185, file: !104, discriminator: 2)
!210 = !DILocation(line: 31, column: 49, scope: !209)
!211 = !DILocation(line: 31, column: 42, scope: !209)
!212 = !DILocation(line: 31, column: 2, scope: !209)
!213 = distinct !{!213, !214}
!214 = !DILocation(line: 31, column: 2, scope: !103)
!215 = !DILocation(line: 38, column: 2, scope: !103)
!216 = !DILocation(line: 39, column: 1, scope: !103)
!217 = distinct !DISubprogram(name: "config_node_section", scope: !104, file: !104, line: 41, type: !218, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !107)
!218 = !DISubroutineType(types: !219)
!219 = !{!90, !220, !90, !88, !95}
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64, align: 64)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "CONFIG_REC", file: !4, line: 18, baseType: !222)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CONFIG_REC", file: !4, line: 49, size: 576, align: 64, elements: !223)
!223 = !{!224, !225, !226, !227, !228, !229, !234, !235, !329, !495, !496}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "fname", scope: !222, file: !4, line: 50, baseType: !97, size: 64, align: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "create_mode", scope: !222, file: !4, line: 51, baseType: !95, size: 32, align: 32, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "modifycounter", scope: !222, file: !4, line: 52, baseType: !95, size: 32, align: 32, offset: 96)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "last_error", scope: !222, file: !4, line: 54, baseType: !97, size: 64, align: 64, offset: 128)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "mainnode", scope: !222, file: !4, line: 55, baseType: !90, size: 64, align: 64, offset: 192)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !222, file: !4, line: 56, baseType: !230, size: 64, align: 64, offset: 256)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64, align: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !232, line: 37, baseType: !233)
!232 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!233 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !232, line: 37, flags: DIFlagFwdDecl)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "cache_nodes", scope: !222, file: !4, line: 57, baseType: !230, size: 64, align: 64, offset: 320)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "scanner", scope: !222, file: !4, line: 59, baseType: !236, size: 64, align: 64, offset: 384)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64, align: 64)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "GScanner", file: !12, line: 37, baseType: !238)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GScanner", file: !12, line: 169, size: 1152, align: 64, elements: !239)
!239 = !{!240, !241, !244, !245, !248, !253, !285, !287, !310, !311, !312, !313, !314, !315, !316, !317, !319, !320, !321, !322, !323}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "user_data", scope: !238, file: !12, line: 172, baseType: !120, size: 64, align: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "max_parse_errors", scope: !238, file: !12, line: 173, baseType: !242, size: 32, align: 32, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !86, line: 55, baseType: !243)
!243 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "parse_errors", scope: !238, file: !12, line: 176, baseType: !242, size: 32, align: 32, offset: 96)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "input_name", scope: !238, file: !12, line: 179, baseType: !246, size: 64, align: 64, offset: 128)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64, align: 64)
!247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "qdata", scope: !238, file: !12, line: 182, baseType: !249, size: 64, align: 64, offset: 192)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64, align: 64)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "GData", file: !251, line: 36, baseType: !252)
!251 = !DIFile(filename: "/usr/include/glib-2.0/glib/gdataset.h", directory: "/home/lichi/Desktop/irssi/task1")
!252 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GData", file: !251, line: 36, flags: DIFlagFwdDecl)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !238, file: !12, line: 185, baseType: !254, size: 64, align: 64, offset: 256)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64, align: 64)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "GScannerConfig", file: !12, line: 38, baseType: !256)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GScannerConfig", file: !12, line: 127, size: 320, align: 64, elements: !257)
!257 = !{!258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "cset_skip_characters", scope: !256, file: !12, line: 131, baseType: !84, size: 64, align: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "cset_identifier_first", scope: !256, file: !12, line: 132, baseType: !84, size: 64, align: 64, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "cset_identifier_nth", scope: !256, file: !12, line: 133, baseType: !84, size: 64, align: 64, offset: 128)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "cpair_comment_single", scope: !256, file: !12, line: 134, baseType: !84, size: 64, align: 64, offset: 192)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "case_sensitive", scope: !256, file: !12, line: 138, baseType: !242, size: 1, align: 32, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "skip_comment_multi", scope: !256, file: !12, line: 143, baseType: !242, size: 1, align: 32, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "skip_comment_single", scope: !256, file: !12, line: 144, baseType: !242, size: 1, align: 32, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "scan_comment_multi", scope: !256, file: !12, line: 145, baseType: !242, size: 1, align: 32, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "scan_identifier", scope: !256, file: !12, line: 146, baseType: !242, size: 1, align: 32, offset: 260, flags: DIFlagBitField, extraData: i64 256)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "scan_identifier_1char", scope: !256, file: !12, line: 147, baseType: !242, size: 1, align: 32, offset: 261, flags: DIFlagBitField, extraData: i64 256)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "scan_identifier_NULL", scope: !256, file: !12, line: 148, baseType: !242, size: 1, align: 32, offset: 262, flags: DIFlagBitField, extraData: i64 256)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "scan_symbols", scope: !256, file: !12, line: 149, baseType: !242, size: 1, align: 32, offset: 263, flags: DIFlagBitField, extraData: i64 256)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "scan_binary", scope: !256, file: !12, line: 150, baseType: !242, size: 1, align: 32, offset: 264, flags: DIFlagBitField, extraData: i64 256)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "scan_octal", scope: !256, file: !12, line: 151, baseType: !242, size: 1, align: 32, offset: 265, flags: DIFlagBitField, extraData: i64 256)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "scan_float", scope: !256, file: !12, line: 152, baseType: !242, size: 1, align: 32, offset: 266, flags: DIFlagBitField, extraData: i64 256)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "scan_hex", scope: !256, file: !12, line: 153, baseType: !242, size: 1, align: 32, offset: 267, flags: DIFlagBitField, extraData: i64 256)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "scan_hex_dollar", scope: !256, file: !12, line: 154, baseType: !242, size: 1, align: 32, offset: 268, flags: DIFlagBitField, extraData: i64 256)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "scan_string_sq", scope: !256, file: !12, line: 155, baseType: !242, size: 1, align: 32, offset: 269, flags: DIFlagBitField, extraData: i64 256)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "scan_string_dq", scope: !256, file: !12, line: 156, baseType: !242, size: 1, align: 32, offset: 270, flags: DIFlagBitField, extraData: i64 256)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "numbers_2_int", scope: !256, file: !12, line: 157, baseType: !242, size: 1, align: 32, offset: 271, flags: DIFlagBitField, extraData: i64 256)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "int_2_float", scope: !256, file: !12, line: 158, baseType: !242, size: 1, align: 32, offset: 272, flags: DIFlagBitField, extraData: i64 256)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "identifier_2_string", scope: !256, file: !12, line: 159, baseType: !242, size: 1, align: 32, offset: 273, flags: DIFlagBitField, extraData: i64 256)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "char_2_token", scope: !256, file: !12, line: 160, baseType: !242, size: 1, align: 32, offset: 274, flags: DIFlagBitField, extraData: i64 256)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_2_token", scope: !256, file: !12, line: 161, baseType: !242, size: 1, align: 32, offset: 275, flags: DIFlagBitField, extraData: i64 256)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "scope_0_fallback", scope: !256, file: !12, line: 162, baseType: !242, size: 1, align: 32, offset: 276, flags: DIFlagBitField, extraData: i64 256)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "store_int64", scope: !256, file: !12, line: 163, baseType: !242, size: 1, align: 32, offset: 277, flags: DIFlagBitField, extraData: i64 256)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "padding_dummy", scope: !256, file: !12, line: 166, baseType: !242, size: 32, align: 32, offset: 288)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !238, file: !12, line: 188, baseType: !286, size: 32, align: 32, offset: 320)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTokenType", file: !12, line: 109, baseType: !11)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !238, file: !12, line: 189, baseType: !288, size: 64, align: 64, offset: 384)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTokenValue", file: !12, line: 39, baseType: !289)
!289 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_GTokenValue", file: !12, line: 111, size: 64, align: 64, elements: !290)
!290 = !{!291, !292, !293, !296, !297, !298, !301, !304, !305, !306, !307, !309}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "v_symbol", scope: !289, file: !12, line: 113, baseType: !120, size: 64, align: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "v_identifier", scope: !289, file: !12, line: 114, baseType: !84, size: 64, align: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "v_binary", scope: !289, file: !12, line: 115, baseType: !294, size: 64, align: 64)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "gulong", file: !86, line: 54, baseType: !295)
!295 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "v_octal", scope: !289, file: !12, line: 116, baseType: !294, size: 64, align: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "v_int", scope: !289, file: !12, line: 117, baseType: !294, size: 64, align: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "v_int64", scope: !289, file: !12, line: 118, baseType: !299, size: 64, align: 64)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint64", file: !300, line: 52, baseType: !295)
!300 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!301 = !DIDerivedType(tag: DW_TAG_member, name: "v_float", scope: !289, file: !12, line: 119, baseType: !302, size: 64, align: 64)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "gdouble", file: !86, line: 58, baseType: !303)
!303 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "v_hex", scope: !289, file: !12, line: 120, baseType: !294, size: 64, align: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "v_string", scope: !289, file: !12, line: 121, baseType: !84, size: 64, align: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "v_comment", scope: !289, file: !12, line: 122, baseType: !84, size: 64, align: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "v_char", scope: !289, file: !12, line: 123, baseType: !308, size: 8, align: 8)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "guchar", file: !86, line: 52, baseType: !99)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "v_error", scope: !289, file: !12, line: 124, baseType: !242, size: 32, align: 32)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !238, file: !12, line: 190, baseType: !242, size: 32, align: 32, offset: 448)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "position", scope: !238, file: !12, line: 191, baseType: !242, size: 32, align: 32, offset: 480)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "next_token", scope: !238, file: !12, line: 194, baseType: !286, size: 32, align: 32, offset: 512)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "next_value", scope: !238, file: !12, line: 195, baseType: !288, size: 64, align: 64, offset: 576)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "next_line", scope: !238, file: !12, line: 196, baseType: !242, size: 32, align: 32, offset: 640)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "next_position", scope: !238, file: !12, line: 197, baseType: !242, size: 32, align: 32, offset: 672)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "symbol_table", scope: !238, file: !12, line: 201, baseType: !230, size: 64, align: 64, offset: 704)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "input_fd", scope: !238, file: !12, line: 202, baseType: !318, size: 32, align: 32, offset: 768)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !86, line: 49, baseType: !95)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !238, file: !12, line: 203, baseType: !246, size: 64, align: 64, offset: 832)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "text_end", scope: !238, file: !12, line: 204, baseType: !246, size: 64, align: 64, offset: 896)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !238, file: !12, line: 205, baseType: !84, size: 64, align: 64, offset: 960)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "scope_id", scope: !238, file: !12, line: 206, baseType: !242, size: 32, align: 32, offset: 1024)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "msg_handler", scope: !238, file: !12, line: 210, baseType: !324, size: 64, align: 64, offset: 1088)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "GScannerMsgFunc", file: !12, line: 41, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64, align: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{null, !236, !84, !328}
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !86, line: 50, baseType: !318)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !222, file: !4, line: 62, baseType: !330, size: 64, align: 64, offset: 448)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64, align: 64)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !39, line: 41, baseType: !332)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !39, line: 97, size: 896, align: 64, elements: !333)
!333 = !{!334, !335, !462, !463, !468, !469, !470, !471, !472, !481, !482, !483, !487, !488, !489, !490, !491, !492, !493, !494}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !332, file: !39, line: 100, baseType: !318, size: 32, align: 32)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !332, file: !39, line: 101, baseType: !336, size: 64, align: 64, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64, align: 64)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !39, line: 42, baseType: !338)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !39, line: 131, size: 512, align: 64, elements: !339)
!339 = !{!340, !359, !363, !370, !374, !449, !453, !458}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !338, file: !39, line: 133, baseType: !341, size: 64, align: 64)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64, align: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{!344, !330, !84, !345, !346, !347}
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !39, line: 75, baseType: !38)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !300, line: 66, baseType: !295)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64, align: 64)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64, align: 64)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64, align: 64)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !350, line: 42, baseType: !351)
!350 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !350, line: 44, size: 128, align: 64, elements: !352)
!352 = !{!353, !357, !358}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !351, file: !350, line: 46, baseType: !354, size: 32, align: 32)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !355, line: 36, baseType: !356)
!355 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !300, line: 45, baseType: !243)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !351, file: !350, line: 47, baseType: !318, size: 32, align: 32, offset: 32)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !351, file: !350, line: 48, baseType: !84, size: 64, align: 64, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !338, file: !39, line: 138, baseType: !360, size: 64, align: 64, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64, align: 64)
!361 = !DISubroutineType(types: !362)
!362 = !{!344, !330, !246, !345, !346, !347}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !338, file: !39, line: 143, baseType: !364, size: 64, align: 64, offset: 128)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64, align: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{!344, !330, !367, !369, !347}
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !300, line: 51, baseType: !368)
!368 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !39, line: 82, baseType: !45)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !338, file: !39, line: 147, baseType: !371, size: 64, align: 64, offset: 192)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64, align: 64)
!372 = !DISubroutineType(types: !373)
!373 = !{!344, !330, !347}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !338, file: !39, line: 149, baseType: !375, size: 64, align: 64, offset: 256)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64, align: 64)
!376 = !DISubroutineType(types: !377)
!377 = !{!378, !330, !448}
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64, align: 64)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !51, line: 64, baseType: !380)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !51, line: 171, size: 768, align: 64, elements: !381)
!381 = !{!382, !383, !403, !432, !433, !437, !438, !439, !440, !441, !442, !443, !444}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !380, file: !51, line: 174, baseType: !120, size: 64, align: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !380, file: !51, line: 175, baseType: !384, size: 64, align: 64, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64, align: 64)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !51, line: 77, baseType: !386)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !51, line: 196, size: 192, align: 64, elements: !387)
!387 = !{!388, !392, !393}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !386, file: !51, line: 198, baseType: !389, size: 64, align: 64)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64, align: 64)
!390 = !DISubroutineType(types: !391)
!391 = !{null, !120}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !386, file: !51, line: 199, baseType: !389, size: 64, align: 64, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !386, file: !51, line: 200, baseType: !394, size: 64, align: 64, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64, align: 64)
!395 = !DISubroutineType(types: !396)
!396 = !{null, !120, !378, !397, !402}
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64, align: 64)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !51, line: 155, baseType: !399)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64, align: 64)
!400 = !DISubroutineType(types: !401)
!401 = !{!328, !120}
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !380, file: !51, line: 177, baseType: !404, size: 64, align: 64, offset: 128)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64, align: 64)
!405 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !406)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !51, line: 130, baseType: !407)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !51, line: 214, size: 384, align: 64, elements: !408)
!408 = !{!409, !414, !418, !422, !426, !427}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !407, file: !51, line: 216, baseType: !410, size: 64, align: 64)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64, align: 64)
!411 = !DISubroutineType(types: !412)
!412 = !{!328, !378, !413}
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64, align: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !407, file: !51, line: 218, baseType: !415, size: 64, align: 64, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64, align: 64)
!416 = !DISubroutineType(types: !417)
!417 = !{!328, !378}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !407, file: !51, line: 219, baseType: !419, size: 64, align: 64, offset: 128)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64, align: 64)
!420 = !DISubroutineType(types: !421)
!421 = !{!328, !378, !398, !120}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !407, file: !51, line: 222, baseType: !423, size: 64, align: 64, offset: 192)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64, align: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{null, !378}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !407, file: !51, line: 226, baseType: !398, size: 64, align: 64, offset: 256)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !407, file: !51, line: 227, baseType: !428, size: 64, align: 64, offset: 320)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !51, line: 212, baseType: !429)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64, align: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{null}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !380, file: !51, line: 178, baseType: !242, size: 32, align: 32, offset: 192)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !380, file: !51, line: 180, baseType: !434, size: 64, align: 64, offset: 256)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64, align: 64)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !51, line: 48, baseType: !436)
!436 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !51, line: 48, flags: DIFlagFwdDecl)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !380, file: !51, line: 182, baseType: !318, size: 32, align: 32, offset: 320)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !380, file: !51, line: 183, baseType: !242, size: 32, align: 32, offset: 352)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !380, file: !51, line: 184, baseType: !242, size: 32, align: 32, offset: 384)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !380, file: !51, line: 186, baseType: !114, size: 64, align: 64, offset: 448)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !380, file: !51, line: 188, baseType: !378, size: 64, align: 64, offset: 512)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !380, file: !51, line: 189, baseType: !378, size: 64, align: 64, offset: 576)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !380, file: !51, line: 191, baseType: !97, size: 64, align: 64, offset: 640)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !380, file: !51, line: 193, baseType: !445, size: 64, align: 64, offset: 704)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64, align: 64)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !51, line: 65, baseType: !447)
!447 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !51, line: 65, flags: DIFlagFwdDecl)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !51, line: 39, baseType: !50)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !338, file: !39, line: 151, baseType: !450, size: 64, align: 64, offset: 320)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64, align: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{null, !330}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !338, file: !39, line: 152, baseType: !454, size: 64, align: 64, offset: 384)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64, align: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{!344, !330, !457, !347}
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !39, line: 95, baseType: !59)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !338, file: !39, line: 155, baseType: !459, size: 64, align: 64, offset: 448)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64, align: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{!457, !330}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !332, file: !39, line: 103, baseType: !84, size: 64, align: 64, offset: 128)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !332, file: !39, line: 104, baseType: !464, size: 64, align: 64, offset: 192)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !465, line: 77, baseType: !466)
!465 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64, align: 64)
!467 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !465, line: 77, flags: DIFlagFwdDecl)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !332, file: !39, line: 105, baseType: !464, size: 64, align: 64, offset: 256)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !332, file: !39, line: 106, baseType: !84, size: 64, align: 64, offset: 320)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !332, file: !39, line: 107, baseType: !242, size: 32, align: 32, offset: 384)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !332, file: !39, line: 109, baseType: !345, size: 64, align: 64, offset: 448)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !332, file: !39, line: 110, baseType: !473, size: 64, align: 64, offset: 512)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64, align: 64)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !475, line: 39, baseType: !476)
!475 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !475, line: 41, size: 192, align: 64, elements: !477)
!477 = !{!478, !479, !480}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !476, file: !475, line: 43, baseType: !84, size: 64, align: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !476, file: !475, line: 44, baseType: !345, size: 64, align: 64, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !476, file: !475, line: 45, baseType: !345, size: 64, align: 64, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !332, file: !39, line: 111, baseType: !473, size: 64, align: 64, offset: 576)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !332, file: !39, line: 112, baseType: !473, size: 64, align: 64, offset: 640)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !332, file: !39, line: 113, baseType: !484, size: 48, align: 8, offset: 704)
!484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 48, align: 8, elements: !485)
!485 = !{!486}
!486 = !DISubrange(count: 6)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !332, file: !39, line: 117, baseType: !242, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !332, file: !39, line: 118, baseType: !242, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !332, file: !39, line: 119, baseType: !242, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !332, file: !39, line: 120, baseType: !242, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !332, file: !39, line: 121, baseType: !242, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !332, file: !39, line: 122, baseType: !242, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !332, file: !39, line: 124, baseType: !120, size: 64, align: 64, offset: 768)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !332, file: !39, line: 125, baseType: !120, size: 64, align: 64, offset: 832)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_indent_level", scope: !222, file: !4, line: 63, baseType: !95, size: 32, align: 32, offset: 512)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "tmp_last_lf", scope: !222, file: !4, line: 64, baseType: !95, size: 32, align: 32, offset: 544)
!497 = !DILocalVariable(name: "rec", arg: 1, scope: !217, file: !104, line: 41, type: !220)
!498 = !DILocation(line: 41, column: 46, scope: !217)
!499 = !DILocalVariable(name: "parent", arg: 2, scope: !217, file: !104, line: 41, type: !90)
!500 = !DILocation(line: 41, column: 64, scope: !217)
!501 = !DILocalVariable(name: "key", arg: 3, scope: !217, file: !104, line: 41, type: !88)
!502 = !DILocation(line: 41, column: 84, scope: !217)
!503 = !DILocalVariable(name: "new_type", arg: 4, scope: !217, file: !104, line: 41, type: !95)
!504 = !DILocation(line: 41, column: 93, scope: !217)
!505 = !DILocation(line: 43, column: 35, scope: !217)
!506 = !DILocation(line: 43, column: 40, scope: !217)
!507 = !DILocation(line: 43, column: 48, scope: !217)
!508 = !DILocation(line: 43, column: 57, scope: !217)
!509 = !DILocation(line: 43, column: 9, scope: !217)
!510 = !DILocation(line: 43, column: 2, scope: !217)
!511 = distinct !DISubprogram(name: "config_node_section_index", scope: !104, file: !104, line: 46, type: !512, isLocal: false, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !107)
!512 = !DISubroutineType(types: !513)
!513 = !{!90, !220, !90, !88, !95, !95}
!514 = !DILocalVariable(name: "rec", arg: 1, scope: !511, file: !104, line: 46, type: !220)
!515 = !DILocation(line: 46, column: 52, scope: !511)
!516 = !DILocalVariable(name: "parent", arg: 2, scope: !511, file: !104, line: 46, type: !90)
!517 = !DILocation(line: 46, column: 70, scope: !511)
!518 = !DILocalVariable(name: "key", arg: 3, scope: !511, file: !104, line: 46, type: !88)
!519 = !DILocation(line: 46, column: 90, scope: !511)
!520 = !DILocalVariable(name: "index", arg: 4, scope: !511, file: !104, line: 47, type: !95)
!521 = !DILocation(line: 47, column: 16, scope: !511)
!522 = !DILocalVariable(name: "new_type", arg: 5, scope: !511, file: !104, line: 47, type: !95)
!523 = !DILocation(line: 47, column: 27, scope: !511)
!524 = !DILocalVariable(name: "node", scope: !511, file: !104, line: 49, type: !90)
!525 = !DILocation(line: 49, column: 15, scope: !511)
!526 = !DILocalVariable(name: "nindex", scope: !511, file: !104, line: 50, type: !95)
!527 = !DILocation(line: 50, column: 13, scope: !511)
!528 = !DILocation(line: 52, column: 2, scope: !511)
!529 = distinct !{!529, !528}
!530 = !DILocation(line: 52, column: 10, scope: !531)
!531 = !DILexicalBlockFile(scope: !532, file: !104, discriminator: 1)
!532 = distinct !DILexicalBlock(scope: !533, file: !104, line: 52, column: 10)
!533 = distinct !DILexicalBlock(scope: !511, file: !104, line: 52, column: 4)
!534 = !DILocation(line: 52, column: 17, scope: !531)
!535 = !DILocation(line: 52, column: 5, scope: !536)
!536 = !DILexicalBlockFile(scope: !537, file: !104, discriminator: 2)
!537 = distinct !DILexicalBlock(scope: !532, file: !104, line: 52, column: 3)
!538 = !DILocation(line: 52, column: 14, scope: !539)
!539 = !DILexicalBlockFile(scope: !540, file: !104, discriminator: 3)
!540 = distinct !DILexicalBlock(scope: !532, file: !104, line: 52, column: 12)
!541 = !DILocation(line: 52, column: 101, scope: !539)
!542 = !DILocation(line: 52, column: 7, scope: !543)
!543 = !DILexicalBlockFile(scope: !533, file: !104, discriminator: 4)
!544 = !DILocation(line: 53, column: 2, scope: !511)
!545 = distinct !{!545, !544}
!546 = !DILocation(line: 53, column: 12, scope: !547)
!547 = !DILexicalBlockFile(scope: !548, file: !104, discriminator: 1)
!548 = distinct !DILexicalBlock(scope: !549, file: !104, line: 53, column: 10)
!549 = distinct !DILexicalBlock(scope: !511, file: !104, line: 53, column: 4)
!550 = !DILocation(line: 53, column: 21, scope: !547)
!551 = !DILocation(line: 53, column: 26, scope: !547)
!552 = !DILocation(line: 53, column: 45, scope: !547)
!553 = !DILocation(line: 53, column: 49, scope: !554)
!554 = !DILexicalBlockFile(scope: !548, file: !104, discriminator: 2)
!555 = !DILocation(line: 53, column: 58, scope: !554)
!556 = !DILocation(line: 53, column: 63, scope: !554)
!557 = !DILocation(line: 53, column: 10, scope: !554)
!558 = !DILocation(line: 53, column: 85, scope: !559)
!559 = !DILexicalBlockFile(scope: !560, file: !104, discriminator: 3)
!560 = distinct !DILexicalBlock(scope: !548, file: !104, line: 53, column: 83)
!561 = !DILocation(line: 53, column: 94, scope: !562)
!562 = !DILexicalBlockFile(scope: !563, file: !104, discriminator: 4)
!563 = distinct !DILexicalBlock(scope: !548, file: !104, line: 53, column: 92)
!564 = !DILocation(line: 53, column: 187, scope: !562)
!565 = !DILocation(line: 53, column: 7, scope: !566)
!566 = !DILexicalBlockFile(scope: !549, file: !104, discriminator: 5)
!567 = !DILocation(line: 55, column: 9, scope: !511)
!568 = !DILocation(line: 55, column: 13, scope: !511)
!569 = !DILocation(line: 55, column: 9, scope: !570)
!570 = !DILexicalBlockFile(scope: !511, file: !104, discriminator: 1)
!571 = !DILocation(line: 55, column: 46, scope: !572)
!572 = !DILexicalBlockFile(scope: !511, file: !104, discriminator: 2)
!573 = !DILocation(line: 55, column: 54, scope: !572)
!574 = !DILocation(line: 55, column: 29, scope: !572)
!575 = !DILocation(line: 55, column: 9, scope: !572)
!576 = !DILocation(line: 55, column: 9, scope: !577)
!577 = !DILexicalBlockFile(scope: !511, file: !104, discriminator: 3)
!578 = !DILocation(line: 55, column: 7, scope: !577)
!579 = !DILocation(line: 56, column: 6, scope: !580)
!580 = distinct !DILexicalBlock(scope: !511, file: !104, line: 56, column: 6)
!581 = !DILocation(line: 56, column: 11, scope: !580)
!582 = !DILocation(line: 56, column: 6, scope: !511)
!583 = !DILocation(line: 57, column: 26, scope: !584)
!584 = distinct !DILexicalBlock(scope: !580, file: !104, line: 56, column: 19)
!585 = !DILocation(line: 57, column: 34, scope: !584)
!586 = !DILocation(line: 57, column: 41, scope: !584)
!587 = !DILocation(line: 57, column: 12, scope: !584)
!588 = !DILocation(line: 57, column: 10, scope: !584)
!589 = !DILocation(line: 58, column: 7, scope: !590)
!590 = distinct !DILexicalBlock(scope: !584, file: !104, line: 58, column: 7)
!591 = !DILocation(line: 58, column: 13, scope: !590)
!592 = !DILocation(line: 58, column: 18, scope: !590)
!593 = !DILocation(line: 58, column: 21, scope: !594)
!594 = !DILexicalBlockFile(scope: !590, file: !104, discriminator: 1)
!595 = !DILocation(line: 58, column: 31, scope: !594)
!596 = !DILocation(line: 58, column: 28, scope: !594)
!597 = !DILocation(line: 58, column: 37, scope: !594)
!598 = !DILocation(line: 59, column: 7, scope: !590)
!599 = !DILocation(line: 59, column: 32, scope: !590)
!600 = !DILocation(line: 59, column: 40, scope: !590)
!601 = !DILocation(line: 59, column: 17, scope: !590)
!602 = !DILocation(line: 59, column: 14, scope: !590)
!603 = !DILocation(line: 58, column: 7, scope: !604)
!604 = !DILexicalBlockFile(scope: !584, file: !104, discriminator: 2)
!605 = !DILocation(line: 61, column: 35, scope: !606)
!606 = distinct !DILexicalBlock(scope: !590, file: !104, line: 59, column: 48)
!607 = !DILocation(line: 61, column: 43, scope: !606)
!608 = !DILocation(line: 61, column: 50, scope: !606)
!609 = !DILocation(line: 61, column: 20, scope: !606)
!610 = !DILocation(line: 61, column: 4, scope: !606)
!611 = !DILocation(line: 61, column: 12, scope: !606)
!612 = !DILocation(line: 61, column: 18, scope: !606)
!613 = !DILocation(line: 62, column: 35, scope: !606)
!614 = !DILocation(line: 62, column: 43, scope: !606)
!615 = !DILocation(line: 62, column: 50, scope: !606)
!616 = !DILocation(line: 62, column: 56, scope: !606)
!617 = !DILocation(line: 62, column: 20, scope: !606)
!618 = !DILocation(line: 62, column: 4, scope: !606)
!619 = !DILocation(line: 62, column: 12, scope: !606)
!620 = !DILocation(line: 62, column: 18, scope: !606)
!621 = !DILocation(line: 63, column: 3, scope: !606)
!622 = !DILocation(line: 64, column: 10, scope: !623)
!623 = distinct !DILexicalBlock(scope: !584, file: !104, line: 64, column: 7)
!624 = !DILocation(line: 64, column: 17, scope: !623)
!625 = !DILocation(line: 64, column: 22, scope: !623)
!626 = !DILocation(line: 64, column: 41, scope: !623)
!627 = !DILocation(line: 64, column: 45, scope: !628)
!628 = !DILexicalBlockFile(scope: !623, file: !104, discriminator: 1)
!629 = !DILocation(line: 64, column: 52, scope: !628)
!630 = !DILocation(line: 64, column: 57, scope: !628)
!631 = !DILocation(line: 64, column: 7, scope: !628)
!632 = !DILocalVariable(name: "show_error", scope: !633, file: !104, line: 65, type: !95)
!633 = distinct !DILexicalBlock(scope: !623, file: !104, line: 64, column: 77)
!634 = !DILocation(line: 65, column: 8, scope: !633)
!635 = !DILocation(line: 67, column: 8, scope: !636)
!636 = distinct !DILexicalBlock(scope: !633, file: !104, line: 67, column: 8)
!637 = !DILocation(line: 67, column: 17, scope: !636)
!638 = !DILocation(line: 67, column: 8, scope: !633)
!639 = !DILocation(line: 68, column: 24, scope: !640)
!640 = distinct !DILexicalBlock(scope: !636, file: !104, line: 67, column: 24)
!641 = !DILocation(line: 68, column: 29, scope: !640)
!642 = !DILocation(line: 68, column: 37, scope: !640)
!643 = !DILocation(line: 68, column: 5, scope: !640)
!644 = !DILocation(line: 69, column: 10, scope: !640)
!645 = !DILocation(line: 70, column: 16, scope: !640)
!646 = !DILocation(line: 71, column: 4, scope: !640)
!647 = !DILocation(line: 71, column: 45, scope: !648)
!648 = !DILexicalBlockFile(scope: !649, file: !104, discriminator: 1)
!649 = distinct !DILexicalBlock(scope: !636, file: !104, line: 71, column: 15)
!650 = !DILocation(line: 71, column: 50, scope: !648)
!651 = !DILocation(line: 71, column: 63, scope: !648)
!652 = !DILocation(line: 71, column: 16, scope: !648)
!653 = !DILocation(line: 71, column: 15, scope: !648)
!654 = !DILocation(line: 72, column: 25, scope: !655)
!655 = distinct !DILexicalBlock(scope: !649, file: !104, line: 71, column: 81)
!656 = !DILocation(line: 72, column: 30, scope: !655)
!657 = !DILocation(line: 72, column: 43, scope: !655)
!658 = !DILocation(line: 72, column: 5, scope: !655)
!659 = !DILocation(line: 73, column: 16, scope: !655)
!660 = !DILocation(line: 74, column: 4, scope: !655)
!661 = !DILocation(line: 75, column: 8, scope: !662)
!662 = distinct !DILexicalBlock(scope: !633, file: !104, line: 75, column: 8)
!663 = !DILocation(line: 75, column: 8, scope: !633)
!664 = !DILocation(line: 76, column: 117, scope: !662)
!665 = !DILocation(line: 76, column: 126, scope: !662)
!666 = !DILocation(line: 76, column: 117, scope: !667)
!667 = !DILexicalBlockFile(scope: !662, file: !104, discriminator: 1)
!668 = !DILocation(line: 76, column: 155, scope: !669)
!669 = !DILexicalBlockFile(scope: !662, file: !104, discriminator: 2)
!670 = !DILocation(line: 76, column: 164, scope: !669)
!671 = !DILocation(line: 76, column: 117, scope: !669)
!672 = !DILocation(line: 76, column: 117, scope: !673)
!673 = !DILexicalBlockFile(scope: !662, file: !104, discriminator: 3)
!674 = !DILocation(line: 76, column: 206, scope: !673)
!675 = !DILocation(line: 76, column: 214, scope: !673)
!676 = !DILocation(line: 76, column: 219, scope: !673)
!677 = !DILocation(line: 76, column: 5, scope: !673)
!678 = !DILocation(line: 79, column: 3, scope: !633)
!679 = !DILocation(line: 80, column: 4, scope: !680)
!680 = distinct !DILexicalBlock(scope: !623, file: !104, line: 79, column: 10)
!681 = distinct !{!681, !679}
!682 = !DILocation(line: 80, column: 12, scope: !683)
!683 = !DILexicalBlockFile(scope: !684, file: !104, discriminator: 1)
!684 = distinct !DILexicalBlock(scope: !685, file: !104, line: 80, column: 12)
!685 = distinct !DILexicalBlock(scope: !680, file: !104, line: 80, column: 6)
!686 = !DILocation(line: 80, column: 21, scope: !683)
!687 = !DILocation(line: 80, column: 27, scope: !683)
!688 = !DILocation(line: 80, column: 30, scope: !689)
!689 = !DILexicalBlockFile(scope: !684, file: !104, discriminator: 2)
!690 = !DILocation(line: 80, column: 42, scope: !689)
!691 = !DILocation(line: 80, column: 48, scope: !689)
!692 = !DILocation(line: 80, column: 39, scope: !689)
!693 = !DILocation(line: 80, column: 12, scope: !689)
!694 = !DILocation(line: 80, column: 56, scope: !695)
!695 = !DILexicalBlockFile(scope: !696, file: !104, discriminator: 3)
!696 = distinct !DILexicalBlock(scope: !684, file: !104, line: 80, column: 54)
!697 = !DILocation(line: 80, column: 65, scope: !698)
!698 = !DILexicalBlockFile(scope: !699, file: !104, discriminator: 4)
!699 = distinct !DILexicalBlock(scope: !684, file: !104, line: 80, column: 63)
!700 = !DILocation(line: 80, column: 178, scope: !698)
!701 = !DILocation(line: 80, column: 9, scope: !702)
!702 = !DILexicalBlockFile(scope: !685, file: !104, discriminator: 5)
!703 = !DILocation(line: 81, column: 11, scope: !680)
!704 = !DILocation(line: 81, column: 4, scope: !680)
!705 = !DILocation(line: 83, column: 2, scope: !584)
!706 = !DILocation(line: 85, column: 6, scope: !707)
!707 = distinct !DILexicalBlock(scope: !511, file: !104, line: 85, column: 6)
!708 = !DILocation(line: 85, column: 15, scope: !707)
!709 = !DILocation(line: 85, column: 6, scope: !511)
!710 = !DILocation(line: 86, column: 3, scope: !707)
!711 = !DILocation(line: 88, column: 26, scope: !511)
!712 = !DILocation(line: 88, column: 10, scope: !511)
!713 = !DILocation(line: 88, column: 7, scope: !511)
!714 = !DILocation(line: 89, column: 18, scope: !511)
!715 = !DILocation(line: 89, column: 24, scope: !511)
!716 = !DILocation(line: 89, column: 45, scope: !570)
!717 = !DILocation(line: 89, column: 53, scope: !570)
!718 = !DILocation(line: 89, column: 60, scope: !570)
!719 = !DILocation(line: 89, column: 30, scope: !570)
!720 = !DILocation(line: 89, column: 18, scope: !570)
!721 = !DILocation(line: 90, column: 18, scope: !511)
!722 = !DILocation(line: 90, column: 26, scope: !511)
!723 = !DILocation(line: 90, column: 33, scope: !511)
!724 = !DILocation(line: 90, column: 39, scope: !511)
!725 = !DILocation(line: 90, column: 3, scope: !511)
!726 = !DILocation(line: 89, column: 18, scope: !572)
!727 = !DILocation(line: 89, column: 18, scope: !577)
!728 = !DILocation(line: 89, column: 2, scope: !577)
!729 = !DILocation(line: 89, column: 10, scope: !577)
!730 = !DILocation(line: 89, column: 16, scope: !577)
!731 = !DILocation(line: 92, column: 15, scope: !511)
!732 = !DILocation(line: 92, column: 2, scope: !511)
!733 = !DILocation(line: 92, column: 8, scope: !511)
!734 = !DILocation(line: 92, column: 13, scope: !511)
!735 = !DILocation(line: 93, column: 14, scope: !511)
!736 = !DILocation(line: 93, column: 18, scope: !511)
!737 = !DILocation(line: 93, column: 14, scope: !570)
!738 = !DILocation(line: 93, column: 43, scope: !572)
!739 = !DILocation(line: 93, column: 34, scope: !572)
!740 = !DILocation(line: 93, column: 14, scope: !572)
!741 = !DILocation(line: 93, column: 14, scope: !577)
!742 = !DILocation(line: 93, column: 2, scope: !577)
!743 = !DILocation(line: 93, column: 8, scope: !577)
!744 = !DILocation(line: 93, column: 12, scope: !577)
!745 = !DILocation(line: 95, column: 9, scope: !511)
!746 = !DILocation(line: 95, column: 2, scope: !511)
!747 = !DILocation(line: 96, column: 1, scope: !511)
!748 = distinct !DISubprogram(name: "config_node_traverse", scope: !104, file: !104, line: 98, type: !749, isLocal: false, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !107)
!749 = !DISubroutineType(types: !750)
!750 = !{!90, !220, !88, !95}
!751 = !DILocalVariable(name: "rec", arg: 1, scope: !748, file: !104, line: 98, type: !220)
!752 = !DILocation(line: 98, column: 47, scope: !748)
!753 = !DILocalVariable(name: "section", arg: 2, scope: !748, file: !104, line: 98, type: !88)
!754 = !DILocation(line: 98, column: 64, scope: !748)
!755 = !DILocalVariable(name: "create", arg: 3, scope: !748, file: !104, line: 98, type: !95)
!756 = !DILocation(line: 98, column: 77, scope: !748)
!757 = !DILocalVariable(name: "node", scope: !748, file: !104, line: 100, type: !90)
!758 = !DILocation(line: 100, column: 15, scope: !748)
!759 = !DILocalVariable(name: "list", scope: !748, file: !104, line: 101, type: !760)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64, align: 64)
!761 = !DILocation(line: 101, column: 9, scope: !748)
!762 = !DILocalVariable(name: "tmp", scope: !748, file: !104, line: 101, type: !760)
!763 = !DILocation(line: 101, column: 17, scope: !748)
!764 = !DILocalVariable(name: "str", scope: !748, file: !104, line: 101, type: !97)
!765 = !DILocation(line: 101, column: 23, scope: !748)
!766 = !DILocalVariable(name: "is_list", scope: !748, file: !104, line: 102, type: !95)
!767 = !DILocation(line: 102, column: 6, scope: !748)
!768 = !DILocalVariable(name: "new_type", scope: !748, file: !104, line: 102, type: !95)
!769 = !DILocation(line: 102, column: 15, scope: !748)
!770 = !DILocation(line: 104, column: 2, scope: !748)
!771 = distinct !{!771, !770}
!772 = !DILocation(line: 104, column: 10, scope: !773)
!773 = !DILexicalBlockFile(scope: !774, file: !104, discriminator: 1)
!774 = distinct !DILexicalBlock(scope: !775, file: !104, line: 104, column: 10)
!775 = distinct !DILexicalBlock(scope: !748, file: !104, line: 104, column: 4)
!776 = !DILocation(line: 104, column: 14, scope: !773)
!777 = !DILocation(line: 104, column: 5, scope: !778)
!778 = !DILexicalBlockFile(scope: !779, file: !104, discriminator: 2)
!779 = distinct !DILexicalBlock(scope: !774, file: !104, line: 104, column: 3)
!780 = !DILocation(line: 104, column: 14, scope: !781)
!781 = !DILexicalBlockFile(scope: !782, file: !104, discriminator: 3)
!782 = distinct !DILexicalBlock(scope: !774, file: !104, line: 104, column: 12)
!783 = !DILocation(line: 104, column: 98, scope: !781)
!784 = !DILocation(line: 104, column: 7, scope: !785)
!785 = !DILexicalBlockFile(scope: !775, file: !104, discriminator: 4)
!786 = !DILocation(line: 106, column: 6, scope: !787)
!787 = distinct !DILexicalBlock(scope: !748, file: !104, line: 106, column: 6)
!788 = !DILocation(line: 106, column: 14, scope: !787)
!789 = !DILocation(line: 106, column: 21, scope: !787)
!790 = !DILocation(line: 106, column: 25, scope: !791)
!791 = !DILexicalBlockFile(scope: !787, file: !104, discriminator: 1)
!792 = !DILocation(line: 106, column: 24, scope: !791)
!793 = !DILocation(line: 106, column: 33, scope: !791)
!794 = !DILocation(line: 106, column: 6, scope: !791)
!795 = !DILocation(line: 107, column: 10, scope: !787)
!796 = !DILocation(line: 107, column: 15, scope: !787)
!797 = !DILocation(line: 107, column: 3, scope: !787)
!798 = !DILocation(line: 110, column: 29, scope: !748)
!799 = !DILocation(line: 110, column: 34, scope: !748)
!800 = !DILocation(line: 110, column: 41, scope: !748)
!801 = !DILocation(line: 110, column: 9, scope: !748)
!802 = !DILocation(line: 110, column: 7, scope: !748)
!803 = !DILocation(line: 111, column: 6, scope: !804)
!804 = distinct !DILexicalBlock(scope: !748, file: !104, line: 111, column: 6)
!805 = !DILocation(line: 111, column: 11, scope: !804)
!806 = !DILocation(line: 111, column: 6, scope: !748)
!807 = !DILocation(line: 112, column: 7, scope: !808)
!808 = distinct !DILexicalBlock(scope: !809, file: !104, line: 112, column: 7)
!809 = distinct !DILexicalBlock(scope: !804, file: !104, line: 111, column: 19)
!810 = !DILocation(line: 112, column: 7, scope: !809)
!811 = !DILocalVariable(name: "path", scope: !812, file: !104, line: 113, type: !88)
!812 = distinct !DILexicalBlock(scope: !808, file: !104, line: 112, column: 15)
!813 = !DILocation(line: 113, column: 16, scope: !812)
!814 = !DILocation(line: 113, column: 31, scope: !812)
!815 = !DILocation(line: 113, column: 23, scope: !812)
!816 = !DILocation(line: 114, column: 8, scope: !817)
!817 = distinct !DILexicalBlock(scope: !812, file: !104, line: 114, column: 8)
!818 = !DILocation(line: 114, column: 13, scope: !817)
!819 = !DILocation(line: 114, column: 8, scope: !812)
!820 = !DILocation(line: 114, column: 28, scope: !821)
!821 = !DILexicalBlockFile(scope: !817, file: !104, discriminator: 1)
!822 = !DILocation(line: 114, column: 26, scope: !821)
!823 = !DILocation(line: 114, column: 21, scope: !821)
!824 = !DILocation(line: 115, column: 13, scope: !817)
!825 = !DILocation(line: 116, column: 16, scope: !812)
!826 = !DILocation(line: 116, column: 15, scope: !812)
!827 = !DILocation(line: 116, column: 21, scope: !812)
!828 = !DILocation(line: 116, column: 13, scope: !812)
!829 = !DILocation(line: 117, column: 8, scope: !830)
!830 = distinct !DILexicalBlock(scope: !812, file: !104, line: 117, column: 8)
!831 = !DILocation(line: 117, column: 14, scope: !830)
!832 = !DILocation(line: 117, column: 22, scope: !830)
!833 = !DILocation(line: 117, column: 19, scope: !830)
!834 = !DILocation(line: 117, column: 8, scope: !812)
!835 = !DILocation(line: 118, column: 108, scope: !836)
!836 = distinct !DILexicalBlock(scope: !830, file: !104, line: 117, column: 32)
!837 = !DILocation(line: 118, column: 117, scope: !836)
!838 = !DILocation(line: 118, column: 155, scope: !836)
!839 = !DILocation(line: 118, column: 164, scope: !836)
!840 = !DILocation(line: 118, column: 170, scope: !836)
!841 = !DILocation(line: 118, column: 175, scope: !836)
!842 = !DILocation(line: 118, column: 5, scope: !836)
!843 = !DILocation(line: 121, column: 18, scope: !836)
!844 = !DILocation(line: 121, column: 5, scope: !836)
!845 = !DILocation(line: 121, column: 11, scope: !836)
!846 = !DILocation(line: 121, column: 16, scope: !836)
!847 = !DILocation(line: 122, column: 4, scope: !836)
!848 = !DILocation(line: 123, column: 3, scope: !812)
!849 = !DILocation(line: 124, column: 10, scope: !809)
!850 = !DILocation(line: 124, column: 3, scope: !809)
!851 = !DILocation(line: 127, column: 18, scope: !748)
!852 = !DILocation(line: 129, column: 9, scope: !748)
!853 = !DILocation(line: 129, column: 14, scope: !748)
!854 = !DILocation(line: 129, column: 7, scope: !748)
!855 = !DILocation(line: 130, column: 20, scope: !748)
!856 = !DILocation(line: 130, column: 9, scope: !748)
!857 = !DILocation(line: 130, column: 7, scope: !748)
!858 = !DILocation(line: 131, column: 13, scope: !859)
!859 = distinct !DILexicalBlock(scope: !748, file: !104, line: 131, column: 2)
!860 = !DILocation(line: 131, column: 11, scope: !859)
!861 = !DILocation(line: 131, column: 7, scope: !859)
!862 = !DILocation(line: 131, column: 20, scope: !863)
!863 = !DILexicalBlockFile(scope: !864, file: !104, discriminator: 1)
!864 = distinct !DILexicalBlock(scope: !859, file: !104, line: 131, column: 2)
!865 = !DILocation(line: 131, column: 19, scope: !863)
!866 = !DILocation(line: 131, column: 24, scope: !863)
!867 = !DILocation(line: 131, column: 2, scope: !863)
!868 = !DILocation(line: 132, column: 15, scope: !869)
!869 = distinct !DILexicalBlock(scope: !864, file: !104, line: 131, column: 39)
!870 = !DILocation(line: 132, column: 14, scope: !869)
!871 = !DILocation(line: 132, column: 13, scope: !869)
!872 = !DILocation(line: 132, column: 19, scope: !869)
!873 = !DILocation(line: 132, column: 11, scope: !869)
!874 = !DILocation(line: 133, column: 7, scope: !875)
!875 = distinct !DILexicalBlock(scope: !869, file: !104, line: 133, column: 7)
!876 = !DILocation(line: 133, column: 7, scope: !869)
!877 = !DILocalVariable(name: "tmpnode", scope: !878, file: !104, line: 134, type: !90)
!878 = distinct !DILexicalBlock(scope: !875, file: !104, line: 133, column: 15)
!879 = !DILocation(line: 134, column: 17, scope: !878)
!880 = !DILocation(line: 136, column: 15, scope: !878)
!881 = !DILocation(line: 136, column: 13, scope: !878)
!882 = !DILocation(line: 137, column: 31, scope: !878)
!883 = !DILocation(line: 137, column: 38, scope: !878)
!884 = !DILocation(line: 137, column: 37, scope: !878)
!885 = !DILocation(line: 137, column: 44, scope: !878)
!886 = !DILocation(line: 137, column: 42, scope: !878)
!887 = !DILocation(line: 137, column: 14, scope: !878)
!888 = !DILocation(line: 137, column: 12, scope: !878)
!889 = !DILocation(line: 138, column: 8, scope: !890)
!890 = distinct !DILexicalBlock(scope: !878, file: !104, line: 138, column: 8)
!891 = !DILocation(line: 138, column: 16, scope: !890)
!892 = !DILocation(line: 138, column: 23, scope: !890)
!893 = !DILocation(line: 138, column: 26, scope: !894)
!894 = !DILexicalBlockFile(scope: !890, file: !104, discriminator: 1)
!895 = !DILocation(line: 138, column: 35, scope: !894)
!896 = !DILocation(line: 138, column: 43, scope: !894)
!897 = !DILocation(line: 138, column: 40, scope: !894)
!898 = !DILocation(line: 138, column: 8, scope: !894)
!899 = !DILocation(line: 139, column: 112, scope: !900)
!900 = distinct !DILexicalBlock(scope: !890, file: !104, line: 138, column: 53)
!901 = !DILocation(line: 139, column: 140, scope: !900)
!902 = !DILocation(line: 139, column: 5, scope: !900)
!903 = !DILocation(line: 140, column: 24, scope: !900)
!904 = !DILocation(line: 140, column: 29, scope: !900)
!905 = !DILocation(line: 140, column: 35, scope: !900)
!906 = !DILocation(line: 140, column: 5, scope: !900)
!907 = !DILocation(line: 141, column: 4, scope: !900)
!908 = !DILocation(line: 142, column: 3, scope: !878)
!909 = !DILocation(line: 144, column: 30, scope: !869)
!910 = !DILocation(line: 144, column: 35, scope: !869)
!911 = !DILocation(line: 144, column: 42, scope: !869)
!912 = !DILocation(line: 144, column: 41, scope: !869)
!913 = !DILocation(line: 144, column: 48, scope: !869)
!914 = !DILocation(line: 144, column: 46, scope: !869)
!915 = !DILocation(line: 144, column: 57, scope: !869)
!916 = !DILocation(line: 144, column: 10, scope: !869)
!917 = !DILocation(line: 144, column: 8, scope: !869)
!918 = !DILocation(line: 145, column: 7, scope: !919)
!919 = distinct !DILexicalBlock(scope: !869, file: !104, line: 145, column: 7)
!920 = !DILocation(line: 145, column: 12, scope: !919)
!921 = !DILocation(line: 145, column: 7, scope: !869)
!922 = !DILocation(line: 146, column: 15, scope: !923)
!923 = distinct !DILexicalBlock(scope: !919, file: !104, line: 145, column: 20)
!924 = !DILocation(line: 146, column: 4, scope: !923)
!925 = !DILocation(line: 147, column: 4, scope: !923)
!926 = !DILocation(line: 149, column: 2, scope: !869)
!927 = !DILocation(line: 131, column: 35, scope: !928)
!928 = !DILexicalBlockFile(scope: !864, file: !104, discriminator: 2)
!929 = !DILocation(line: 131, column: 2, scope: !928)
!930 = distinct !{!930, !931}
!931 = !DILocation(line: 131, column: 2, scope: !748)
!932 = !DILocation(line: 150, column: 13, scope: !748)
!933 = !DILocation(line: 150, column: 2, scope: !748)
!934 = !DILocation(line: 152, column: 9, scope: !935)
!935 = distinct !DILexicalBlock(scope: !748, file: !104, line: 152, column: 6)
!936 = !DILocation(line: 152, column: 16, scope: !935)
!937 = !DILocation(line: 152, column: 21, scope: !935)
!938 = !DILocation(line: 152, column: 40, scope: !935)
!939 = !DILocation(line: 152, column: 44, scope: !940)
!940 = !DILexicalBlockFile(scope: !935, file: !104, discriminator: 1)
!941 = !DILocation(line: 152, column: 51, scope: !940)
!942 = !DILocation(line: 152, column: 56, scope: !940)
!943 = !DILocation(line: 152, column: 6, scope: !940)
!944 = !DILocation(line: 154, column: 108, scope: !945)
!945 = distinct !DILexicalBlock(scope: !935, file: !104, line: 152, column: 76)
!946 = !DILocation(line: 154, column: 3, scope: !945)
!947 = !DILocation(line: 155, column: 3, scope: !945)
!948 = !DILocation(line: 159, column: 24, scope: !748)
!949 = !DILocation(line: 159, column: 15, scope: !748)
!950 = !DILocation(line: 159, column: 13, scope: !748)
!951 = !DILocation(line: 160, column: 22, scope: !748)
!952 = !DILocation(line: 160, column: 27, scope: !748)
!953 = !DILocation(line: 160, column: 34, scope: !748)
!954 = !DILocation(line: 160, column: 39, scope: !748)
!955 = !DILocation(line: 160, column: 2, scope: !748)
!956 = !DILocation(line: 161, column: 22, scope: !748)
!957 = !DILocation(line: 161, column: 27, scope: !748)
!958 = !DILocation(line: 161, column: 40, scope: !748)
!959 = !DILocation(line: 161, column: 46, scope: !748)
!960 = !DILocation(line: 161, column: 2, scope: !748)
!961 = !DILocation(line: 162, column: 9, scope: !748)
!962 = !DILocation(line: 162, column: 2, scope: !748)
!963 = !DILocation(line: 163, column: 1, scope: !748)
!964 = distinct !DISubprogram(name: "config_get_str", scope: !104, file: !104, line: 165, type: !965, isLocal: false, isDefinition: true, scopeLine: 166, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !107)
!965 = !DISubroutineType(types: !966)
!966 = !{!97, !220, !88, !88, !88}
!967 = !DILocalVariable(name: "rec", arg: 1, scope: !964, file: !104, line: 165, type: !220)
!968 = !DILocation(line: 165, column: 34, scope: !964)
!969 = !DILocalVariable(name: "section", arg: 2, scope: !964, file: !104, line: 165, type: !88)
!970 = !DILocation(line: 165, column: 51, scope: !964)
!971 = !DILocalVariable(name: "key", arg: 3, scope: !964, file: !104, line: 165, type: !88)
!972 = !DILocation(line: 165, column: 72, scope: !964)
!973 = !DILocalVariable(name: "def", arg: 4, scope: !964, file: !104, line: 165, type: !88)
!974 = !DILocation(line: 165, column: 89, scope: !964)
!975 = !DILocalVariable(name: "parent", scope: !964, file: !104, line: 167, type: !90)
!976 = !DILocation(line: 167, column: 15, scope: !964)
!977 = !DILocalVariable(name: "node", scope: !964, file: !104, line: 167, type: !90)
!978 = !DILocation(line: 167, column: 24, scope: !964)
!979 = !DILocalVariable(name: "path", scope: !964, file: !104, line: 168, type: !97)
!980 = !DILocation(line: 168, column: 8, scope: !964)
!981 = !DILocation(line: 170, column: 2, scope: !964)
!982 = distinct !{!982, !981}
!983 = !DILocation(line: 170, column: 10, scope: !984)
!984 = !DILexicalBlockFile(scope: !985, file: !104, discriminator: 1)
!985 = distinct !DILexicalBlock(scope: !986, file: !104, line: 170, column: 10)
!986 = distinct !DILexicalBlock(scope: !964, file: !104, line: 170, column: 4)
!987 = !DILocation(line: 170, column: 14, scope: !984)
!988 = !DILocation(line: 170, column: 5, scope: !989)
!989 = !DILexicalBlockFile(scope: !990, file: !104, discriminator: 2)
!990 = distinct !DILexicalBlock(scope: !985, file: !104, line: 170, column: 3)
!991 = !DILocation(line: 170, column: 14, scope: !992)
!992 = !DILexicalBlockFile(scope: !993, file: !104, discriminator: 3)
!993 = distinct !DILexicalBlock(scope: !985, file: !104, line: 170, column: 12)
!994 = !DILocation(line: 170, column: 115, scope: !992)
!995 = !DILocation(line: 170, column: 98, scope: !992)
!996 = !DILocation(line: 170, column: 124, scope: !997)
!997 = !DILexicalBlockFile(scope: !986, file: !104, discriminator: 4)
!998 = !DILocation(line: 171, column: 2, scope: !964)
!999 = distinct !{!999, !998}
!1000 = !DILocation(line: 171, column: 10, scope: !1001)
!1001 = !DILexicalBlockFile(scope: !1002, file: !104, discriminator: 1)
!1002 = distinct !DILexicalBlock(scope: !1003, file: !104, line: 171, column: 10)
!1003 = distinct !DILexicalBlock(scope: !964, file: !104, line: 171, column: 4)
!1004 = !DILocation(line: 171, column: 14, scope: !1001)
!1005 = !DILocation(line: 171, column: 5, scope: !1006)
!1006 = !DILexicalBlockFile(scope: !1007, file: !104, discriminator: 2)
!1007 = distinct !DILexicalBlock(scope: !1002, file: !104, line: 171, column: 3)
!1008 = !DILocation(line: 171, column: 14, scope: !1009)
!1009 = !DILexicalBlockFile(scope: !1010, file: !104, discriminator: 3)
!1010 = distinct !DILexicalBlock(scope: !1002, file: !104, line: 171, column: 12)
!1011 = !DILocation(line: 171, column: 115, scope: !1009)
!1012 = !DILocation(line: 171, column: 98, scope: !1009)
!1013 = !DILocation(line: 171, column: 124, scope: !1014)
!1014 = !DILexicalBlockFile(scope: !1003, file: !104, discriminator: 4)
!1015 = !DILocation(line: 174, column: 21, scope: !964)
!1016 = !DILocation(line: 174, column: 29, scope: !964)
!1017 = !DILocation(line: 174, column: 21, scope: !1018)
!1018 = !DILexicalBlockFile(scope: !964, file: !104, discriminator: 1)
!1019 = !DILocation(line: 174, column: 43, scope: !1020)
!1020 = !DILexicalBlockFile(scope: !964, file: !104, discriminator: 2)
!1021 = !DILocation(line: 174, column: 21, scope: !1020)
!1022 = !DILocation(line: 174, column: 21, scope: !1023)
!1023 = !DILexicalBlockFile(scope: !964, file: !104, discriminator: 3)
!1024 = !DILocation(line: 174, column: 57, scope: !1023)
!1025 = !DILocation(line: 174, column: 9, scope: !1023)
!1026 = !DILocation(line: 174, column: 7, scope: !1023)
!1027 = !DILocation(line: 175, column: 29, scope: !964)
!1028 = !DILocation(line: 175, column: 34, scope: !964)
!1029 = !DILocation(line: 175, column: 41, scope: !964)
!1030 = !DILocation(line: 175, column: 9, scope: !964)
!1031 = !DILocation(line: 175, column: 7, scope: !964)
!1032 = !DILocation(line: 177, column: 6, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !964, file: !104, line: 177, column: 6)
!1034 = !DILocation(line: 177, column: 11, scope: !1033)
!1035 = !DILocation(line: 177, column: 6, scope: !964)
!1036 = !DILocation(line: 178, column: 10, scope: !1033)
!1037 = !DILocation(line: 178, column: 3, scope: !1033)
!1038 = !DILocation(line: 180, column: 33, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1033, file: !104, line: 179, column: 7)
!1040 = !DILocation(line: 180, column: 38, scope: !1039)
!1041 = !DILocation(line: 180, column: 12, scope: !1039)
!1042 = !DILocation(line: 180, column: 10, scope: !1039)
!1043 = !DILocation(line: 181, column: 10, scope: !1039)
!1044 = !DILocation(line: 181, column: 17, scope: !1039)
!1045 = !DILocation(line: 181, column: 10, scope: !1046)
!1046 = !DILexicalBlockFile(scope: !1039, file: !104, discriminator: 1)
!1047 = !DILocation(line: 182, column: 21, scope: !1039)
!1048 = !DILocation(line: 182, column: 29, scope: !1039)
!1049 = !DILocation(line: 182, column: 4, scope: !1039)
!1050 = !DILocation(line: 181, column: 10, scope: !1051)
!1051 = !DILexicalBlockFile(scope: !1039, file: !104, discriminator: 2)
!1052 = !DILocation(line: 181, column: 10, scope: !1053)
!1053 = !DILexicalBlockFile(scope: !1039, file: !104, discriminator: 3)
!1054 = !DILocation(line: 181, column: 8, scope: !1053)
!1055 = !DILocation(line: 185, column: 7, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1039, file: !104, line: 185, column: 7)
!1057 = !DILocation(line: 185, column: 12, scope: !1056)
!1058 = !DILocation(line: 185, column: 7, scope: !1039)
!1059 = !DILocation(line: 186, column: 11, scope: !1056)
!1060 = !DILocation(line: 186, column: 4, scope: !1056)
!1061 = !DILocation(line: 188, column: 24, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1056, file: !104, line: 187, column: 8)
!1063 = !DILocation(line: 188, column: 29, scope: !1062)
!1064 = !DILocation(line: 188, column: 36, scope: !1062)
!1065 = !DILocation(line: 188, column: 42, scope: !1062)
!1066 = !DILocation(line: 188, column: 4, scope: !1062)
!1067 = !DILocation(line: 189, column: 24, scope: !1062)
!1068 = !DILocation(line: 189, column: 29, scope: !1062)
!1069 = !DILocation(line: 189, column: 42, scope: !1062)
!1070 = !DILocation(line: 189, column: 48, scope: !1062)
!1071 = !DILocation(line: 189, column: 4, scope: !1062)
!1072 = !DILocation(line: 193, column: 10, scope: !964)
!1073 = !DILocation(line: 193, column: 15, scope: !964)
!1074 = !DILocation(line: 193, column: 22, scope: !964)
!1075 = !DILocation(line: 193, column: 28, scope: !1018)
!1076 = !DILocation(line: 193, column: 35, scope: !1018)
!1077 = !DILocation(line: 193, column: 40, scope: !1018)
!1078 = !DILocation(line: 193, column: 57, scope: !1018)
!1079 = !DILocation(line: 193, column: 61, scope: !1020)
!1080 = !DILocation(line: 193, column: 68, scope: !1020)
!1081 = !DILocation(line: 193, column: 73, scope: !1020)
!1082 = !DILocation(line: 193, column: 9, scope: !1020)
!1083 = !DILocation(line: 193, column: 105, scope: !1023)
!1084 = !DILocation(line: 193, column: 9, scope: !1023)
!1085 = !DILocation(line: 193, column: 111, scope: !1086)
!1086 = !DILexicalBlockFile(scope: !964, file: !104, discriminator: 4)
!1087 = !DILocation(line: 193, column: 117, scope: !1086)
!1088 = !DILocation(line: 193, column: 9, scope: !1086)
!1089 = !DILocation(line: 193, column: 9, scope: !1090)
!1090 = !DILexicalBlockFile(scope: !964, file: !104, discriminator: 5)
!1091 = !DILocation(line: 193, column: 2, scope: !1090)
!1092 = !DILocation(line: 194, column: 1, scope: !964)
!1093 = distinct !DISubprogram(name: "config_get_int", scope: !104, file: !104, line: 196, type: !1094, isLocal: false, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !107)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!95, !220, !88, !88, !95}
!1096 = !DILocalVariable(name: "rec", arg: 1, scope: !1093, file: !104, line: 196, type: !220)
!1097 = !DILocation(line: 196, column: 32, scope: !1093)
!1098 = !DILocalVariable(name: "section", arg: 2, scope: !1093, file: !104, line: 196, type: !88)
!1099 = !DILocation(line: 196, column: 49, scope: !1093)
!1100 = !DILocalVariable(name: "key", arg: 3, scope: !1093, file: !104, line: 196, type: !88)
!1101 = !DILocation(line: 196, column: 70, scope: !1093)
!1102 = !DILocalVariable(name: "def", arg: 4, scope: !1093, file: !104, line: 196, type: !95)
!1103 = !DILocation(line: 196, column: 79, scope: !1093)
!1104 = !DILocalVariable(name: "str", scope: !1093, file: !104, line: 198, type: !97)
!1105 = !DILocation(line: 198, column: 8, scope: !1093)
!1106 = !DILocation(line: 200, column: 23, scope: !1093)
!1107 = !DILocation(line: 200, column: 28, scope: !1093)
!1108 = !DILocation(line: 200, column: 37, scope: !1093)
!1109 = !DILocation(line: 200, column: 8, scope: !1093)
!1110 = !DILocation(line: 200, column: 6, scope: !1093)
!1111 = !DILocation(line: 201, column: 6, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1093, file: !104, line: 201, column: 6)
!1113 = !DILocation(line: 201, column: 10, scope: !1112)
!1114 = !DILocation(line: 201, column: 6, scope: !1093)
!1115 = !DILocation(line: 201, column: 25, scope: !1116)
!1116 = !DILexicalBlockFile(scope: !1112, file: !104, discriminator: 1)
!1117 = !DILocation(line: 201, column: 18, scope: !1116)
!1118 = !DILocation(line: 203, column: 21, scope: !1093)
!1119 = !DILocation(line: 203, column: 16, scope: !1093)
!1120 = !DILocation(line: 203, column: 9, scope: !1093)
!1121 = !DILocation(line: 204, column: 1, scope: !1093)
!1122 = distinct !DISubprogram(name: "config_get_bool", scope: !104, file: !104, line: 206, type: !1094, isLocal: false, isDefinition: true, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !107)
!1123 = !DILocalVariable(name: "rec", arg: 1, scope: !1122, file: !104, line: 206, type: !220)
!1124 = !DILocation(line: 206, column: 33, scope: !1122)
!1125 = !DILocalVariable(name: "section", arg: 2, scope: !1122, file: !104, line: 206, type: !88)
!1126 = !DILocation(line: 206, column: 50, scope: !1122)
!1127 = !DILocalVariable(name: "key", arg: 3, scope: !1122, file: !104, line: 206, type: !88)
!1128 = !DILocation(line: 206, column: 71, scope: !1122)
!1129 = !DILocalVariable(name: "def", arg: 4, scope: !1122, file: !104, line: 206, type: !95)
!1130 = !DILocation(line: 206, column: 80, scope: !1122)
!1131 = !DILocalVariable(name: "str", scope: !1122, file: !104, line: 208, type: !97)
!1132 = !DILocation(line: 208, column: 8, scope: !1122)
!1133 = !DILocation(line: 210, column: 23, scope: !1122)
!1134 = !DILocation(line: 210, column: 28, scope: !1122)
!1135 = !DILocation(line: 210, column: 37, scope: !1122)
!1136 = !DILocation(line: 210, column: 8, scope: !1122)
!1137 = !DILocation(line: 210, column: 6, scope: !1122)
!1138 = !DILocation(line: 211, column: 6, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1122, file: !104, line: 211, column: 6)
!1140 = !DILocation(line: 211, column: 10, scope: !1139)
!1141 = !DILocation(line: 211, column: 6, scope: !1122)
!1142 = !DILocation(line: 211, column: 25, scope: !1143)
!1143 = !DILexicalBlockFile(scope: !1139, file: !104, discriminator: 1)
!1144 = !DILocation(line: 211, column: 18, scope: !1143)
!1145 = !DILocation(line: 213, column: 48, scope: !1122)
!1146 = !DILocation(line: 213, column: 47, scope: !1122)
!1147 = !DILocation(line: 213, column: 24, scope: !1122)
!1148 = !DILocation(line: 213, column: 16, scope: !1122)
!1149 = !DILocation(line: 213, column: 54, scope: !1122)
!1150 = !DILocation(line: 213, column: 61, scope: !1122)
!1151 = !DILocation(line: 213, column: 96, scope: !1152)
!1152 = !DILexicalBlockFile(scope: !1122, file: !104, discriminator: 1)
!1153 = !DILocation(line: 213, column: 95, scope: !1152)
!1154 = !DILocation(line: 213, column: 72, scope: !1152)
!1155 = !DILocation(line: 213, column: 64, scope: !1152)
!1156 = !DILocation(line: 213, column: 102, scope: !1152)
!1157 = !DILocation(line: 213, column: 61, scope: !1152)
!1158 = !DILocation(line: 213, column: 61, scope: !1159)
!1159 = !DILexicalBlockFile(scope: !1122, file: !104, discriminator: 2)
!1160 = !DILocation(line: 213, column: 9, scope: !1159)
!1161 = !DILocation(line: 214, column: 1, scope: !1122)
!1162 = distinct !DISubprogram(name: "config_node_get_str", scope: !104, file: !104, line: 216, type: !1163, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !107)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!97, !90, !88, !88}
!1165 = !DILocalVariable(name: "parent", arg: 1, scope: !1162, file: !104, line: 216, type: !90)
!1166 = !DILocation(line: 216, column: 40, scope: !1162)
!1167 = !DILocalVariable(name: "key", arg: 2, scope: !1162, file: !104, line: 216, type: !88)
!1168 = !DILocation(line: 216, column: 60, scope: !1162)
!1169 = !DILocalVariable(name: "def", arg: 3, scope: !1162, file: !104, line: 216, type: !88)
!1170 = !DILocation(line: 216, column: 77, scope: !1162)
!1171 = !DILocalVariable(name: "node", scope: !1162, file: !104, line: 218, type: !90)
!1172 = !DILocation(line: 218, column: 15, scope: !1162)
!1173 = !DILocation(line: 220, column: 13, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1162, file: !104, line: 220, column: 13)
!1175 = !DILocation(line: 220, column: 20, scope: !1174)
!1176 = !DILocation(line: 220, column: 13, scope: !1162)
!1177 = !DILocation(line: 220, column: 44, scope: !1178)
!1178 = !DILexicalBlockFile(scope: !1174, file: !104, discriminator: 1)
!1179 = !DILocation(line: 220, column: 28, scope: !1178)
!1180 = !DILocation(line: 222, column: 26, scope: !1162)
!1181 = !DILocation(line: 222, column: 34, scope: !1162)
!1182 = !DILocation(line: 222, column: 9, scope: !1162)
!1183 = !DILocation(line: 222, column: 7, scope: !1162)
!1184 = !DILocation(line: 223, column: 20, scope: !1162)
!1185 = !DILocation(line: 223, column: 25, scope: !1162)
!1186 = !DILocation(line: 223, column: 32, scope: !1162)
!1187 = !DILocation(line: 223, column: 37, scope: !1188)
!1188 = !DILexicalBlockFile(scope: !1162, file: !104, discriminator: 1)
!1189 = !DILocation(line: 223, column: 44, scope: !1188)
!1190 = !DILocation(line: 223, column: 49, scope: !1188)
!1191 = !DILocation(line: 223, column: 66, scope: !1188)
!1192 = !DILocation(line: 223, column: 70, scope: !1193)
!1193 = !DILexicalBlockFile(scope: !1162, file: !104, discriminator: 2)
!1194 = !DILocation(line: 223, column: 77, scope: !1193)
!1195 = !DILocation(line: 223, column: 82, scope: !1193)
!1196 = !DILocation(line: 223, column: 19, scope: !1193)
!1197 = !DILocation(line: 224, column: 5, scope: !1162)
!1198 = !DILocation(line: 224, column: 11, scope: !1162)
!1199 = !DILocation(line: 223, column: 19, scope: !1200)
!1200 = !DILexicalBlockFile(scope: !1162, file: !104, discriminator: 3)
!1201 = !DILocation(line: 224, column: 19, scope: !1188)
!1202 = !DILocation(line: 223, column: 19, scope: !1203)
!1203 = !DILexicalBlockFile(scope: !1162, file: !104, discriminator: 4)
!1204 = !DILocation(line: 223, column: 19, scope: !1205)
!1205 = !DILexicalBlockFile(scope: !1162, file: !104, discriminator: 5)
!1206 = !DILocation(line: 223, column: 2, scope: !1205)
!1207 = !DILocation(line: 225, column: 1, scope: !1162)
!1208 = distinct !DISubprogram(name: "config_node_get_int", scope: !104, file: !104, line: 227, type: !1209, isLocal: false, isDefinition: true, scopeLine: 228, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !107)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!95, !90, !88, !95}
!1211 = !DILocalVariable(name: "parent", arg: 1, scope: !1208, file: !104, line: 227, type: !90)
!1212 = !DILocation(line: 227, column: 38, scope: !1208)
!1213 = !DILocalVariable(name: "key", arg: 2, scope: !1208, file: !104, line: 227, type: !88)
!1214 = !DILocation(line: 227, column: 58, scope: !1208)
!1215 = !DILocalVariable(name: "def", arg: 3, scope: !1208, file: !104, line: 227, type: !95)
!1216 = !DILocation(line: 227, column: 67, scope: !1208)
!1217 = !DILocalVariable(name: "str", scope: !1208, file: !104, line: 229, type: !97)
!1218 = !DILocation(line: 229, column: 8, scope: !1208)
!1219 = !DILocation(line: 231, column: 28, scope: !1208)
!1220 = !DILocation(line: 231, column: 36, scope: !1208)
!1221 = !DILocation(line: 231, column: 8, scope: !1208)
!1222 = !DILocation(line: 231, column: 6, scope: !1208)
!1223 = !DILocation(line: 232, column: 6, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1208, file: !104, line: 232, column: 6)
!1225 = !DILocation(line: 232, column: 10, scope: !1224)
!1226 = !DILocation(line: 232, column: 6, scope: !1208)
!1227 = !DILocation(line: 232, column: 25, scope: !1228)
!1228 = !DILexicalBlockFile(scope: !1224, file: !104, discriminator: 1)
!1229 = !DILocation(line: 232, column: 18, scope: !1228)
!1230 = !DILocation(line: 234, column: 14, scope: !1208)
!1231 = !DILocation(line: 234, column: 9, scope: !1208)
!1232 = !DILocation(line: 234, column: 2, scope: !1208)
!1233 = !DILocation(line: 235, column: 1, scope: !1208)
!1234 = distinct !DISubprogram(name: "config_node_get_bool", scope: !104, file: !104, line: 237, type: !1209, isLocal: false, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !107)
!1235 = !DILocalVariable(name: "parent", arg: 1, scope: !1234, file: !104, line: 237, type: !90)
!1236 = !DILocation(line: 237, column: 39, scope: !1234)
!1237 = !DILocalVariable(name: "key", arg: 2, scope: !1234, file: !104, line: 237, type: !88)
!1238 = !DILocation(line: 237, column: 59, scope: !1234)
!1239 = !DILocalVariable(name: "def", arg: 3, scope: !1234, file: !104, line: 237, type: !95)
!1240 = !DILocation(line: 237, column: 68, scope: !1234)
!1241 = !DILocalVariable(name: "str", scope: !1234, file: !104, line: 239, type: !97)
!1242 = !DILocation(line: 239, column: 8, scope: !1234)
!1243 = !DILocation(line: 241, column: 28, scope: !1234)
!1244 = !DILocation(line: 241, column: 36, scope: !1234)
!1245 = !DILocation(line: 241, column: 8, scope: !1234)
!1246 = !DILocation(line: 241, column: 6, scope: !1234)
!1247 = !DILocation(line: 242, column: 6, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1234, file: !104, line: 242, column: 6)
!1249 = !DILocation(line: 242, column: 10, scope: !1248)
!1250 = !DILocation(line: 242, column: 6, scope: !1234)
!1251 = !DILocation(line: 242, column: 25, scope: !1252)
!1252 = !DILexicalBlockFile(scope: !1248, file: !104, discriminator: 1)
!1253 = !DILocation(line: 242, column: 18, scope: !1252)
!1254 = !DILocation(line: 244, column: 41, scope: !1234)
!1255 = !DILocation(line: 244, column: 40, scope: !1234)
!1256 = !DILocation(line: 244, column: 17, scope: !1234)
!1257 = !DILocation(line: 244, column: 9, scope: !1234)
!1258 = !DILocation(line: 244, column: 47, scope: !1234)
!1259 = !DILocation(line: 244, column: 54, scope: !1234)
!1260 = !DILocation(line: 244, column: 89, scope: !1261)
!1261 = !DILexicalBlockFile(scope: !1234, file: !104, discriminator: 1)
!1262 = !DILocation(line: 244, column: 88, scope: !1261)
!1263 = !DILocation(line: 244, column: 65, scope: !1261)
!1264 = !DILocation(line: 244, column: 57, scope: !1261)
!1265 = !DILocation(line: 244, column: 95, scope: !1261)
!1266 = !DILocation(line: 244, column: 102, scope: !1261)
!1267 = !DILocation(line: 245, column: 36, scope: !1234)
!1268 = !DILocation(line: 245, column: 35, scope: !1234)
!1269 = !DILocation(line: 245, column: 12, scope: !1234)
!1270 = !DILocation(line: 245, column: 4, scope: !1234)
!1271 = !DILocation(line: 245, column: 42, scope: !1234)
!1272 = !DILocation(line: 245, column: 49, scope: !1234)
!1273 = !DILocation(line: 245, column: 83, scope: !1261)
!1274 = !DILocation(line: 245, column: 60, scope: !1261)
!1275 = !DILocation(line: 245, column: 52, scope: !1261)
!1276 = !DILocation(line: 245, column: 92, scope: !1261)
!1277 = !DILocation(line: 244, column: 102, scope: !1278)
!1278 = !DILexicalBlockFile(scope: !1234, file: !104, discriminator: 2)
!1279 = !DILocation(line: 244, column: 102, scope: !1280)
!1280 = !DILexicalBlockFile(scope: !1234, file: !104, discriminator: 3)
!1281 = !DILocation(line: 244, column: 2, scope: !1280)
!1282 = !DILocation(line: 246, column: 1, scope: !1234)
!1283 = distinct !DISubprogram(name: "config_node_get_list", scope: !104, file: !104, line: 248, type: !1284, isLocal: false, isDefinition: true, scopeLine: 249, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !107)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!760, !90}
!1286 = !DILocalVariable(name: "node", arg: 1, scope: !1283, file: !104, line: 248, type: !90)
!1287 = !DILocation(line: 248, column: 42, scope: !1283)
!1288 = !DILocalVariable(name: "values", scope: !1283, file: !104, line: 250, type: !473)
!1289 = !DILocation(line: 250, column: 11, scope: !1283)
!1290 = !DILocalVariable(name: "tmp", scope: !1283, file: !104, line: 251, type: !114)
!1291 = !DILocation(line: 251, column: 10, scope: !1283)
!1292 = !DILocalVariable(name: "ret", scope: !1283, file: !104, line: 252, type: !760)
!1293 = !DILocation(line: 252, column: 9, scope: !1283)
!1294 = !DILocation(line: 254, column: 2, scope: !1283)
!1295 = distinct !{!1295, !1294}
!1296 = !DILocation(line: 254, column: 10, scope: !1297)
!1297 = !DILexicalBlockFile(scope: !1298, file: !104, discriminator: 1)
!1298 = distinct !DILexicalBlock(scope: !1299, file: !104, line: 254, column: 10)
!1299 = distinct !DILexicalBlock(scope: !1283, file: !104, line: 254, column: 4)
!1300 = !DILocation(line: 254, column: 15, scope: !1297)
!1301 = !DILocation(line: 254, column: 5, scope: !1302)
!1302 = !DILexicalBlockFile(scope: !1303, file: !104, discriminator: 2)
!1303 = distinct !DILexicalBlock(scope: !1298, file: !104, line: 254, column: 3)
!1304 = !DILocation(line: 254, column: 14, scope: !1305)
!1305 = !DILexicalBlockFile(scope: !1306, file: !104, discriminator: 3)
!1306 = distinct !DILexicalBlock(scope: !1298, file: !104, line: 254, column: 12)
!1307 = !DILocation(line: 254, column: 99, scope: !1305)
!1308 = !DILocation(line: 254, column: 7, scope: !1309)
!1309 = !DILexicalBlockFile(scope: !1299, file: !104, discriminator: 4)
!1310 = !DILocation(line: 255, column: 2, scope: !1283)
!1311 = distinct !{!1311, !1310}
!1312 = !DILocation(line: 255, column: 12, scope: !1313)
!1313 = !DILexicalBlockFile(scope: !1314, file: !104, discriminator: 1)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !104, line: 255, column: 10)
!1315 = distinct !DILexicalBlock(scope: !1283, file: !104, line: 255, column: 4)
!1316 = !DILocation(line: 255, column: 19, scope: !1313)
!1317 = !DILocation(line: 255, column: 24, scope: !1313)
!1318 = !DILocation(line: 255, column: 43, scope: !1313)
!1319 = !DILocation(line: 255, column: 47, scope: !1320)
!1320 = !DILexicalBlockFile(scope: !1314, file: !104, discriminator: 2)
!1321 = !DILocation(line: 255, column: 54, scope: !1320)
!1322 = !DILocation(line: 255, column: 59, scope: !1320)
!1323 = !DILocation(line: 255, column: 10, scope: !1320)
!1324 = !DILocation(line: 255, column: 81, scope: !1325)
!1325 = !DILexicalBlockFile(scope: !1326, file: !104, discriminator: 3)
!1326 = distinct !DILexicalBlock(scope: !1314, file: !104, line: 255, column: 79)
!1327 = !DILocation(line: 255, column: 90, scope: !1328)
!1328 = !DILexicalBlockFile(scope: !1329, file: !104, discriminator: 4)
!1329 = distinct !DILexicalBlock(scope: !1314, file: !104, line: 255, column: 88)
!1330 = !DILocation(line: 255, column: 181, scope: !1328)
!1331 = !DILocation(line: 255, column: 7, scope: !1332)
!1332 = !DILexicalBlockFile(scope: !1315, file: !104, discriminator: 5)
!1333 = !DILocation(line: 258, column: 11, scope: !1283)
!1334 = !DILocation(line: 258, column: 9, scope: !1283)
!1335 = !DILocation(line: 259, column: 13, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1283, file: !104, line: 259, column: 2)
!1337 = !DILocation(line: 259, column: 19, scope: !1336)
!1338 = !DILocation(line: 259, column: 11, scope: !1336)
!1339 = !DILocation(line: 259, column: 7, scope: !1336)
!1340 = !DILocation(line: 259, column: 26, scope: !1341)
!1341 = !DILexicalBlockFile(scope: !1342, file: !104, discriminator: 1)
!1342 = distinct !DILexicalBlock(scope: !1336, file: !104, line: 259, column: 2)
!1343 = !DILocation(line: 259, column: 30, scope: !1341)
!1344 = !DILocation(line: 259, column: 2, scope: !1341)
!1345 = !DILocation(line: 260, column: 10, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1342, file: !104, line: 259, column: 55)
!1347 = !DILocation(line: 260, column: 15, scope: !1346)
!1348 = !DILocation(line: 260, column: 8, scope: !1346)
!1349 = !DILocation(line: 262, column: 7, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1346, file: !104, line: 262, column: 7)
!1351 = !DILocation(line: 262, column: 13, scope: !1350)
!1352 = !DILocation(line: 262, column: 18, scope: !1350)
!1353 = !DILocation(line: 262, column: 7, scope: !1346)
!1354 = !DILocation(line: 263, column: 27, scope: !1350)
!1355 = !DILocation(line: 263, column: 51, scope: !1350)
!1356 = !DILocation(line: 263, column: 57, scope: !1350)
!1357 = !DILocation(line: 263, column: 4, scope: !1350)
!1358 = !DILocation(line: 264, column: 2, scope: !1346)
!1359 = !DILocation(line: 259, column: 44, scope: !1360)
!1360 = !DILexicalBlockFile(scope: !1342, file: !104, discriminator: 2)
!1361 = !DILocation(line: 259, column: 49, scope: !1360)
!1362 = !DILocation(line: 259, column: 42, scope: !1360)
!1363 = !DILocation(line: 259, column: 2, scope: !1360)
!1364 = distinct !{!1364, !1365}
!1365 = !DILocation(line: 259, column: 2, scope: !1283)
!1366 = !DILocation(line: 267, column: 6, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1283, file: !104, line: 267, column: 6)
!1368 = !DILocation(line: 267, column: 14, scope: !1367)
!1369 = !DILocation(line: 267, column: 18, scope: !1367)
!1370 = !DILocation(line: 267, column: 6, scope: !1283)
!1371 = !DILocation(line: 268, column: 7, scope: !1367)
!1372 = !DILocation(line: 268, column: 3, scope: !1367)
!1373 = !DILocation(line: 270, column: 21, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1367, file: !104, line: 269, column: 7)
!1375 = !DILocation(line: 270, column: 29, scope: !1374)
!1376 = !DILocation(line: 270, column: 37, scope: !1374)
!1377 = !DILocation(line: 270, column: 40, scope: !1374)
!1378 = !DILocation(line: 270, column: 3, scope: !1374)
!1379 = !DILocation(line: 271, column: 34, scope: !1374)
!1380 = !DILocation(line: 271, column: 42, scope: !1374)
!1381 = !DILocation(line: 271, column: 23, scope: !1374)
!1382 = !DILocation(line: 271, column: 21, scope: !1374)
!1383 = !DILocation(line: 274, column: 16, scope: !1283)
!1384 = !DILocation(line: 274, column: 2, scope: !1283)
!1385 = !DILocation(line: 275, column: 16, scope: !1283)
!1386 = !DILocation(line: 275, column: 9, scope: !1283)
!1387 = !DILocation(line: 276, column: 1, scope: !1283)
!1388 = distinct !DISubprogram(name: "config_node_nth", scope: !104, file: !104, line: 278, type: !1389, isLocal: false, isDefinition: true, scopeLine: 279, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !107)
!1389 = !DISubroutineType(types: !1390)
!1390 = !{!90, !90, !95}
!1391 = !DILocalVariable(name: "node", arg: 1, scope: !1388, file: !104, line: 278, type: !90)
!1392 = !DILocation(line: 278, column: 43, scope: !1388)
!1393 = !DILocalVariable(name: "index", arg: 2, scope: !1388, file: !104, line: 278, type: !95)
!1394 = !DILocation(line: 278, column: 53, scope: !1388)
!1395 = !DILocalVariable(name: "tmp", scope: !1388, file: !104, line: 280, type: !114)
!1396 = !DILocation(line: 280, column: 10, scope: !1388)
!1397 = !DILocation(line: 282, column: 2, scope: !1388)
!1398 = distinct !{!1398, !1397}
!1399 = !DILocation(line: 282, column: 10, scope: !1400)
!1400 = !DILexicalBlockFile(scope: !1401, file: !104, discriminator: 1)
!1401 = distinct !DILexicalBlock(scope: !1402, file: !104, line: 282, column: 10)
!1402 = distinct !DILexicalBlock(scope: !1388, file: !104, line: 282, column: 4)
!1403 = !DILocation(line: 282, column: 15, scope: !1400)
!1404 = !DILocation(line: 282, column: 5, scope: !1405)
!1405 = !DILexicalBlockFile(scope: !1406, file: !104, discriminator: 2)
!1406 = distinct !DILexicalBlock(scope: !1401, file: !104, line: 282, column: 3)
!1407 = !DILocation(line: 282, column: 14, scope: !1408)
!1408 = !DILexicalBlockFile(scope: !1409, file: !104, discriminator: 3)
!1409 = distinct !DILexicalBlock(scope: !1401, file: !104, line: 282, column: 12)
!1410 = !DILocation(line: 282, column: 99, scope: !1408)
!1411 = !DILocation(line: 282, column: 7, scope: !1412)
!1412 = !DILexicalBlockFile(scope: !1402, file: !104, discriminator: 4)
!1413 = !DILocation(line: 283, column: 2, scope: !1388)
!1414 = distinct !{!1414, !1413}
!1415 = !DILocation(line: 283, column: 12, scope: !1416)
!1416 = !DILexicalBlockFile(scope: !1417, file: !104, discriminator: 1)
!1417 = distinct !DILexicalBlock(scope: !1418, file: !104, line: 283, column: 10)
!1418 = distinct !DILexicalBlock(scope: !1388, file: !104, line: 283, column: 4)
!1419 = !DILocation(line: 283, column: 19, scope: !1416)
!1420 = !DILocation(line: 283, column: 24, scope: !1416)
!1421 = !DILocation(line: 283, column: 43, scope: !1416)
!1422 = !DILocation(line: 283, column: 47, scope: !1423)
!1423 = !DILexicalBlockFile(scope: !1417, file: !104, discriminator: 2)
!1424 = !DILocation(line: 283, column: 54, scope: !1423)
!1425 = !DILocation(line: 283, column: 59, scope: !1423)
!1426 = !DILocation(line: 283, column: 10, scope: !1423)
!1427 = !DILocation(line: 283, column: 81, scope: !1428)
!1428 = !DILexicalBlockFile(scope: !1429, file: !104, discriminator: 3)
!1429 = distinct !DILexicalBlock(scope: !1417, file: !104, line: 283, column: 79)
!1430 = !DILocation(line: 283, column: 90, scope: !1431)
!1431 = !DILexicalBlockFile(scope: !1432, file: !104, discriminator: 4)
!1432 = distinct !DILexicalBlock(scope: !1417, file: !104, line: 283, column: 88)
!1433 = !DILocation(line: 283, column: 181, scope: !1431)
!1434 = !DILocation(line: 283, column: 7, scope: !1435)
!1435 = !DILexicalBlockFile(scope: !1418, file: !104, discriminator: 5)
!1436 = !DILocation(line: 285, column: 13, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1388, file: !104, line: 285, column: 2)
!1438 = !DILocation(line: 285, column: 19, scope: !1437)
!1439 = !DILocation(line: 285, column: 11, scope: !1437)
!1440 = !DILocation(line: 285, column: 7, scope: !1437)
!1441 = !DILocation(line: 285, column: 26, scope: !1442)
!1442 = !DILexicalBlockFile(scope: !1443, file: !104, discriminator: 1)
!1443 = distinct !DILexicalBlock(scope: !1437, file: !104, line: 285, column: 2)
!1444 = !DILocation(line: 285, column: 30, scope: !1442)
!1445 = !DILocation(line: 285, column: 2, scope: !1442)
!1446 = !DILocalVariable(name: "node", scope: !1447, file: !104, line: 286, type: !90)
!1447 = distinct !DILexicalBlock(scope: !1443, file: !104, line: 285, column: 55)
!1448 = !DILocation(line: 286, column: 16, scope: !1447)
!1449 = !DILocation(line: 286, column: 23, scope: !1447)
!1450 = !DILocation(line: 286, column: 28, scope: !1447)
!1451 = !DILocation(line: 288, column: 7, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1447, file: !104, line: 288, column: 7)
!1453 = !DILocation(line: 288, column: 13, scope: !1452)
!1454 = !DILocation(line: 288, column: 18, scope: !1452)
!1455 = !DILocation(line: 288, column: 7, scope: !1447)
!1456 = !DILocation(line: 289, column: 8, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1458, file: !104, line: 289, column: 8)
!1458 = distinct !DILexicalBlock(scope: !1452, file: !104, line: 288, column: 40)
!1459 = !DILocation(line: 289, column: 14, scope: !1457)
!1460 = !DILocation(line: 289, column: 8, scope: !1458)
!1461 = !DILocation(line: 290, column: 12, scope: !1457)
!1462 = !DILocation(line: 290, column: 5, scope: !1457)
!1463 = !DILocation(line: 291, column: 9, scope: !1458)
!1464 = !DILocation(line: 292, column: 3, scope: !1458)
!1465 = !DILocation(line: 293, column: 2, scope: !1447)
!1466 = !DILocation(line: 285, column: 44, scope: !1467)
!1467 = !DILexicalBlockFile(scope: !1443, file: !104, discriminator: 2)
!1468 = !DILocation(line: 285, column: 49, scope: !1467)
!1469 = !DILocation(line: 285, column: 42, scope: !1467)
!1470 = !DILocation(line: 285, column: 2, scope: !1467)
!1471 = distinct !{!1471, !1472}
!1472 = !DILocation(line: 285, column: 2, scope: !1388)
!1473 = !DILocation(line: 295, column: 2, scope: !1388)
!1474 = !DILocation(line: 296, column: 1, scope: !1388)
!1475 = distinct !DISubprogram(name: "config_node_index", scope: !104, file: !104, line: 298, type: !1476, isLocal: false, isDefinition: true, scopeLine: 299, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !107)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!95, !90, !88}
!1478 = !DILocalVariable(name: "parent", arg: 1, scope: !1475, file: !104, line: 298, type: !90)
!1479 = !DILocation(line: 298, column: 36, scope: !1475)
!1480 = !DILocalVariable(name: "key", arg: 2, scope: !1475, file: !104, line: 298, type: !88)
!1481 = !DILocation(line: 298, column: 56, scope: !1475)
!1482 = !DILocalVariable(name: "node", scope: !1475, file: !104, line: 300, type: !90)
!1483 = !DILocation(line: 300, column: 15, scope: !1475)
!1484 = !DILocalVariable(name: "tmp", scope: !1475, file: !104, line: 301, type: !114)
!1485 = !DILocation(line: 301, column: 10, scope: !1475)
!1486 = !DILocalVariable(name: "index", scope: !1475, file: !104, line: 302, type: !95)
!1487 = !DILocation(line: 302, column: 6, scope: !1475)
!1488 = !DILocation(line: 304, column: 2, scope: !1475)
!1489 = distinct !{!1489, !1488}
!1490 = !DILocation(line: 304, column: 10, scope: !1491)
!1491 = !DILexicalBlockFile(scope: !1492, file: !104, discriminator: 1)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !104, line: 304, column: 10)
!1493 = distinct !DILexicalBlock(scope: !1475, file: !104, line: 304, column: 4)
!1494 = !DILocation(line: 304, column: 17, scope: !1491)
!1495 = !DILocation(line: 304, column: 5, scope: !1496)
!1496 = !DILexicalBlockFile(scope: !1497, file: !104, discriminator: 2)
!1497 = distinct !DILexicalBlock(scope: !1492, file: !104, line: 304, column: 3)
!1498 = !DILocation(line: 304, column: 14, scope: !1499)
!1499 = !DILexicalBlockFile(scope: !1500, file: !104, discriminator: 3)
!1500 = distinct !DILexicalBlock(scope: !1492, file: !104, line: 304, column: 12)
!1501 = !DILocation(line: 304, column: 101, scope: !1499)
!1502 = !DILocation(line: 304, column: 117, scope: !1503)
!1503 = !DILexicalBlockFile(scope: !1493, file: !104, discriminator: 4)
!1504 = !DILocation(line: 305, column: 2, scope: !1475)
!1505 = distinct !{!1505, !1504}
!1506 = !DILocation(line: 305, column: 10, scope: !1507)
!1507 = !DILexicalBlockFile(scope: !1508, file: !104, discriminator: 1)
!1508 = distinct !DILexicalBlock(scope: !1509, file: !104, line: 305, column: 10)
!1509 = distinct !DILexicalBlock(scope: !1475, file: !104, line: 305, column: 4)
!1510 = !DILocation(line: 305, column: 14, scope: !1507)
!1511 = !DILocation(line: 305, column: 5, scope: !1512)
!1512 = !DILexicalBlockFile(scope: !1513, file: !104, discriminator: 2)
!1513 = distinct !DILexicalBlock(scope: !1508, file: !104, line: 305, column: 3)
!1514 = !DILocation(line: 305, column: 14, scope: !1515)
!1515 = !DILexicalBlockFile(scope: !1516, file: !104, discriminator: 3)
!1516 = distinct !DILexicalBlock(scope: !1508, file: !104, line: 305, column: 12)
!1517 = !DILocation(line: 305, column: 98, scope: !1515)
!1518 = !DILocation(line: 305, column: 114, scope: !1519)
!1519 = !DILexicalBlockFile(scope: !1509, file: !104, discriminator: 4)
!1520 = !DILocation(line: 307, column: 26, scope: !1475)
!1521 = !DILocation(line: 307, column: 34, scope: !1475)
!1522 = !DILocation(line: 307, column: 9, scope: !1475)
!1523 = !DILocation(line: 307, column: 7, scope: !1475)
!1524 = !DILocation(line: 308, column: 6, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1475, file: !104, line: 308, column: 6)
!1526 = !DILocation(line: 308, column: 11, scope: !1525)
!1527 = !DILocation(line: 308, column: 6, scope: !1475)
!1528 = !DILocation(line: 309, column: 3, scope: !1525)
!1529 = !DILocation(line: 311, column: 8, scope: !1475)
!1530 = !DILocation(line: 312, column: 13, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1475, file: !104, line: 312, column: 2)
!1532 = !DILocation(line: 312, column: 21, scope: !1531)
!1533 = !DILocation(line: 312, column: 11, scope: !1531)
!1534 = !DILocation(line: 312, column: 7, scope: !1531)
!1535 = !DILocation(line: 312, column: 28, scope: !1536)
!1536 = !DILexicalBlockFile(scope: !1537, file: !104, discriminator: 1)
!1537 = distinct !DILexicalBlock(scope: !1531, file: !104, line: 312, column: 2)
!1538 = !DILocation(line: 312, column: 32, scope: !1536)
!1539 = !DILocation(line: 312, column: 2, scope: !1536)
!1540 = !DILocalVariable(name: "tmpnode", scope: !1541, file: !104, line: 313, type: !90)
!1541 = distinct !DILexicalBlock(scope: !1537, file: !104, line: 312, column: 57)
!1542 = !DILocation(line: 313, column: 16, scope: !1541)
!1543 = !DILocation(line: 313, column: 26, scope: !1541)
!1544 = !DILocation(line: 313, column: 31, scope: !1541)
!1545 = !DILocation(line: 315, column: 7, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1541, file: !104, line: 315, column: 7)
!1547 = !DILocation(line: 315, column: 18, scope: !1546)
!1548 = !DILocation(line: 315, column: 15, scope: !1546)
!1549 = !DILocation(line: 315, column: 7, scope: !1541)
!1550 = !DILocation(line: 316, column: 11, scope: !1546)
!1551 = !DILocation(line: 316, column: 4, scope: !1546)
!1552 = !DILocation(line: 318, column: 7, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1541, file: !104, line: 318, column: 7)
!1554 = !DILocation(line: 318, column: 16, scope: !1553)
!1555 = !DILocation(line: 318, column: 21, scope: !1553)
!1556 = !DILocation(line: 318, column: 7, scope: !1541)
!1557 = !DILocation(line: 319, column: 9, scope: !1553)
!1558 = !DILocation(line: 319, column: 4, scope: !1553)
!1559 = !DILocation(line: 320, column: 2, scope: !1541)
!1560 = !DILocation(line: 312, column: 46, scope: !1561)
!1561 = !DILexicalBlockFile(scope: !1537, file: !104, discriminator: 2)
!1562 = !DILocation(line: 312, column: 51, scope: !1561)
!1563 = !DILocation(line: 312, column: 44, scope: !1561)
!1564 = !DILocation(line: 312, column: 2, scope: !1561)
!1565 = distinct !{!1565, !1566}
!1566 = !DILocation(line: 312, column: 2, scope: !1475)
!1567 = !DILocation(line: 322, column: 9, scope: !1475)
!1568 = !DILocation(line: 323, column: 1, scope: !1475)
!1569 = distinct !DISubprogram(name: "config_node_first", scope: !104, file: !104, line: 325, type: !1570, isLocal: false, isDefinition: true, scopeLine: 326, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !107)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{!114, !114}
!1572 = !DILocalVariable(name: "list", arg: 1, scope: !1569, file: !104, line: 325, type: !114)
!1573 = !DILocation(line: 325, column: 35, scope: !1569)
!1574 = !DILocation(line: 327, column: 2, scope: !1569)
!1575 = !DILocation(line: 327, column: 9, scope: !1576)
!1576 = !DILexicalBlockFile(scope: !1569, file: !104, discriminator: 1)
!1577 = !DILocation(line: 327, column: 14, scope: !1576)
!1578 = !DILocation(line: 327, column: 2, scope: !1576)
!1579 = !DILocalVariable(name: "node", scope: !1580, file: !104, line: 328, type: !90)
!1580 = distinct !DILexicalBlock(scope: !1569, file: !104, line: 327, column: 22)
!1581 = !DILocation(line: 328, column: 16, scope: !1580)
!1582 = !DILocation(line: 328, column: 23, scope: !1580)
!1583 = !DILocation(line: 328, column: 29, scope: !1580)
!1584 = !DILocation(line: 330, column: 7, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1580, file: !104, line: 330, column: 7)
!1586 = !DILocation(line: 330, column: 13, scope: !1585)
!1587 = !DILocation(line: 330, column: 18, scope: !1585)
!1588 = !DILocation(line: 330, column: 7, scope: !1580)
!1589 = !DILocation(line: 331, column: 25, scope: !1585)
!1590 = !DILocation(line: 332, column: 10, scope: !1580)
!1591 = !DILocation(line: 332, column: 16, scope: !1580)
!1592 = !DILocation(line: 332, column: 8, scope: !1580)
!1593 = !DILocation(line: 327, column: 2, scope: !1594)
!1594 = !DILexicalBlockFile(scope: !1569, file: !104, discriminator: 2)
!1595 = distinct !{!1595, !1574}
!1596 = !DILocation(line: 334, column: 9, scope: !1569)
!1597 = !DILocation(line: 334, column: 2, scope: !1569)
!1598 = distinct !DISubprogram(name: "config_node_next", scope: !104, file: !104, line: 337, type: !1570, isLocal: false, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !107)
!1599 = !DILocalVariable(name: "list", arg: 1, scope: !1598, file: !104, line: 337, type: !114)
!1600 = !DILocation(line: 337, column: 34, scope: !1598)
!1601 = !DILocation(line: 339, column: 9, scope: !1598)
!1602 = !DILocation(line: 339, column: 15, scope: !1598)
!1603 = !DILocation(line: 339, column: 7, scope: !1598)
!1604 = !DILocation(line: 340, column: 34, scope: !1598)
!1605 = !DILocation(line: 340, column: 16, scope: !1598)
!1606 = !DILocation(line: 340, column: 9, scope: !1598)
