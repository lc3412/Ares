; ModuleID = './line21-channels-setup.o.i'
source_filename = "./line21-channels-setup.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._GSList = type { i8*, %struct._GSList* }
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
%struct._GSourcePrivate = type opaque
%struct._GIConv = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct._CHANNEL_SETUP_REC = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8, %struct._GHashTable* }
%struct._CHATNET_REC = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IPADDR*, %struct._IPADDR* }
%struct._IPADDR = type opaque
%struct._CHAT_PROTOCOL_REC = type { i32, i8, i8*, i8*, i8*, %struct._CHATNET_REC* ()*, %struct._SERVER_SETUP_REC* ()*, %struct._CHANNEL_SETUP_REC* ()*, %struct._SERVER_CONNECT_REC* ()*, void (%struct._SERVER_CONNECT_REC*)*, %struct._SERVER_REC* (%struct._SERVER_CONNECT_REC*)*, void (%struct._SERVER_REC*)*, %struct._CHANNEL_REC* (%struct._SERVER_REC*, i8*, i8*, i32)*, %struct._QUERY_REC* (i8*, i8*, i32)* }
%struct._SERVER_SETUP_REC = type { i32, i32, i8*, i16, i8*, i32, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IPADDR*, %struct._IPADDR*, i64, i8, %struct._GHashTable* }
%struct._SERVER_CONNECT_REC = type opaque
%struct._SERVER_REC = type opaque
%struct._CHANNEL_REC = type opaque
%struct._QUERY_REC = type opaque

@.str = private unnamed_addr constant [14 x i8] c"CHANNEL SETUP\00", align 1
@setupchannels = common global %struct._GSList* null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"channel setup created\00", align 1
@__func__.channel_setup_remove_chatnet = private unnamed_addr constant [29 x i8] c"channel_setup_remove_chatnet\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"chatnet != NULL\00", align 1
@__func__.channel_setup_find = private unnamed_addr constant [19 x i8] c"channel_setup_find\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"channel != NULL\00", align 1
@source_host_ok = external global i32, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"setup reread\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"irssi init read settings\00", align 1
@mainconfig = external global %struct._CONFIG_REC*, align 8
@.str.7 = private unnamed_addr constant [10 x i8] c"(channels\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"chatnet\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"autojoin\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"botmasks\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"autosendcmd\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"channels\00", align 1
@__func__.channel_setup_destroy = private unnamed_addr constant [22 x i8] c"channel_setup_destroy\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"channel setup destroyed\00", align 1
@__func__.channel_setup_read = private unnamed_addr constant [19 x i8] c"channel_setup_read\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"node != NULL\00", align 1

; Function Attrs: nounwind uwtable
define void @channel_setup_create(%struct._CHANNEL_SETUP_REC*) #0 !dbg !47 {
  %2 = alloca %struct._CHANNEL_SETUP_REC*, align 8
  store %struct._CHANNEL_SETUP_REC* %0, %struct._CHANNEL_SETUP_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_SETUP_REC** %2, metadata !73, metadata !74), !dbg !75
  %3 = call i32 @module_get_uniq_id(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0), !dbg !76
  %4 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %2, align 8, !dbg !77
  %5 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %4, i32 0, i32 0, !dbg !78
  store i32 %3, i32* %5, align 8, !dbg !79
  %6 = load %struct._GSList*, %struct._GSList** @setupchannels, align 8, !dbg !80
  %7 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %2, align 8, !dbg !82
  %8 = bitcast %struct._CHANNEL_SETUP_REC* %7 to i8*, !dbg !82
  %9 = call %struct._GSList* @g_slist_find(%struct._GSList* %6, i8* %8), !dbg !83
  %10 = icmp eq %struct._GSList* %9, null, !dbg !84
  br i1 %10, label %11, label %16, !dbg !85

; <label>:11:                                     ; preds = %1
  %12 = load %struct._GSList*, %struct._GSList** @setupchannels, align 8, !dbg !86
  %13 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %2, align 8, !dbg !87
  %14 = bitcast %struct._CHANNEL_SETUP_REC* %13 to i8*, !dbg !87
  %15 = call %struct._GSList* @g_slist_append(%struct._GSList* %12, i8* %14), !dbg !88
  store %struct._GSList* %15, %struct._GSList** @setupchannels, align 8, !dbg !89
  br label %16, !dbg !90

; <label>:16:                                     ; preds = %11, %1
  %17 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %2, align 8, !dbg !91
  call void @channel_setup_save(%struct._CHANNEL_SETUP_REC* %17), !dbg !92
  %18 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %2, align 8, !dbg !93
  %19 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 1, %struct._CHANNEL_SETUP_REC* %18), !dbg !94
  ret void, !dbg !95
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @module_get_uniq_id(i8*, i32) #2

declare %struct._GSList* @g_slist_find(%struct._GSList*, i8*) #2

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @channel_setup_save(%struct._CHANNEL_SETUP_REC*) #0 !dbg !96 {
  %2 = alloca %struct._CHANNEL_SETUP_REC*, align 8
  %3 = alloca %struct._CONFIG_NODE*, align 8
  %4 = alloca %struct._CONFIG_NODE*, align 8
  %5 = alloca %struct._GSList*, align 8
  store %struct._CHANNEL_SETUP_REC* %0, %struct._CHANNEL_SETUP_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_SETUP_REC** %2, metadata !97, metadata !74), !dbg !98
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %3, metadata !99, metadata !74), !dbg !107
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %4, metadata !108, metadata !74), !dbg !109
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !110, metadata !74), !dbg !111
  %6 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !112
  %7 = call %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i32 1), !dbg !113
  store %struct._CONFIG_NODE* %7, %struct._CONFIG_NODE** %3, align 8, !dbg !114
  %8 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !115
  %9 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %8, i32 0, i32 2, !dbg !116
  %10 = load i8*, i8** %9, align 8, !dbg !116
  %11 = bitcast i8* %10 to %struct._GSList*, !dbg !115
  %12 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %2, align 8, !dbg !117
  %13 = bitcast %struct._CHANNEL_SETUP_REC* %12 to i8*, !dbg !117
  %14 = call %struct._GSList* @g_slist_find_custom(%struct._GSList* %11, i8* %13, i32 (i8*, i8*)* bitcast (i32 (%struct._CONFIG_NODE*, %struct._CHANNEL_SETUP_REC*)* @compare_channel_setup to i32 (i8*, i8*)*)), !dbg !118
  store %struct._GSList* %14, %struct._GSList** %5, align 8, !dbg !119
  %15 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !120
  %16 = icmp ne %struct._GSList* %15, null, !dbg !122
  br i1 %16, label %17, label %22, !dbg !123

; <label>:17:                                     ; preds = %1
  %18 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !124
  %19 = getelementptr inbounds %struct._GSList, %struct._GSList* %18, i32 0, i32 0, !dbg !125
  %20 = load i8*, i8** %19, align 8, !dbg !125
  %21 = bitcast i8* %20 to %struct._CONFIG_NODE*, !dbg !124
  store %struct._CONFIG_NODE* %21, %struct._CONFIG_NODE** %4, align 8, !dbg !126
  br label %26, !dbg !127

; <label>:22:                                     ; preds = %1
  %23 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !128
  %24 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !129
  %25 = call %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC* %23, %struct._CONFIG_NODE* %24, i8* null, i32 2), !dbg !130
  store %struct._CONFIG_NODE* %25, %struct._CONFIG_NODE** %4, align 8, !dbg !131
  br label %26

; <label>:26:                                     ; preds = %22, %17
  %27 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !132
  %28 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !133
  call void @config_node_clear(%struct._CONFIG_REC* %27, %struct._CONFIG_NODE* %28), !dbg !134
  %29 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !135
  %30 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !136
  %31 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %2, align 8, !dbg !137
  %32 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %31, i32 0, i32 2, !dbg !138
  %33 = load i8*, i8** %32, align 8, !dbg !138
  call void @config_node_set_str(%struct._CONFIG_REC* %29, %struct._CONFIG_NODE* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* %33), !dbg !139
  %34 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !140
  %35 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !141
  %36 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %2, align 8, !dbg !142
  %37 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %36, i32 0, i32 3, !dbg !143
  %38 = load i8*, i8** %37, align 8, !dbg !143
  call void @config_node_set_str(%struct._CONFIG_REC* %34, %struct._CONFIG_NODE* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* %38), !dbg !144
  %39 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %2, align 8, !dbg !145
  %40 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %39, i32 0, i32 7, !dbg !147
  %41 = load i8, i8* %40, align 8, !dbg !147
  %42 = and i8 %41, 1, !dbg !147
  %43 = zext i8 %42 to i32, !dbg !147
  %44 = icmp ne i32 %43, 0, !dbg !145
  br i1 %44, label %45, label %48, !dbg !148

; <label>:45:                                     ; preds = %26
  %46 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !149
  %47 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !150
  call void @config_node_set_bool(%struct._CONFIG_REC* %46, %struct._CONFIG_NODE* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 1), !dbg !151
  br label %48, !dbg !151

; <label>:48:                                     ; preds = %45, %26
  %49 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !152
  %50 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !153
  %51 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %2, align 8, !dbg !154
  %52 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %51, i32 0, i32 4, !dbg !155
  %53 = load i8*, i8** %52, align 8, !dbg !155
  call void @config_node_set_str(%struct._CONFIG_REC* %49, %struct._CONFIG_NODE* %50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8* %53), !dbg !156
  %54 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !157
  %55 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !158
  %56 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %2, align 8, !dbg !159
  %57 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %56, i32 0, i32 5, !dbg !160
  %58 = load i8*, i8** %57, align 8, !dbg !160
  call void @config_node_set_str(%struct._CONFIG_REC* %54, %struct._CONFIG_NODE* %55, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i8* %58), !dbg !161
  %59 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !162
  %60 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !163
  %61 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %2, align 8, !dbg !164
  %62 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %61, i32 0, i32 6, !dbg !165
  %63 = load i8*, i8** %62, align 8, !dbg !165
  call void @config_node_set_str(%struct._CONFIG_REC* %59, %struct._CONFIG_NODE* %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i8* %63), !dbg !166
  ret void, !dbg !167
}

declare i32 @signal_emit(i8*, i32, ...) #2

; Function Attrs: nounwind uwtable
define void @channel_setup_remove_chatnet(i8*) #0 !dbg !168 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct._CHANNEL_SETUP_REC*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !171, metadata !74), !dbg !172
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !173, metadata !74), !dbg !174
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !175, metadata !74), !dbg !176
  br label %6, !dbg !177, !llvm.loop !178

; <label>:6:                                      ; preds = %1
  %7 = load i8*, i8** %2, align 8, !dbg !179
  %8 = icmp ne i8* %7, null, !dbg !183
  br i1 %8, label %9, label %10, !dbg !179

; <label>:9:                                      ; preds = %6
  br label %11, !dbg !184

; <label>:10:                                     ; preds = %6
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.channel_setup_remove_chatnet, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0)), !dbg !187
  br label %36, !dbg !190

; <label>:11:                                     ; preds = %9
  br label %12, !dbg !191

; <label>:12:                                     ; preds = %11
  %13 = load %struct._GSList*, %struct._GSList** @setupchannels, align 8, !dbg !193
  store %struct._GSList* %13, %struct._GSList** %3, align 8, !dbg !195
  br label %14, !dbg !196

; <label>:14:                                     ; preds = %34, %12
  %15 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !197
  %16 = icmp ne %struct._GSList* %15, null, !dbg !200
  br i1 %16, label %17, label %36, !dbg !201

; <label>:17:                                     ; preds = %14
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_SETUP_REC** %5, metadata !202, metadata !74), !dbg !204
  %18 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !205
  %19 = getelementptr inbounds %struct._GSList, %struct._GSList* %18, i32 0, i32 0, !dbg !206
  %20 = load i8*, i8** %19, align 8, !dbg !206
  %21 = bitcast i8* %20 to %struct._CHANNEL_SETUP_REC*, !dbg !205
  store %struct._CHANNEL_SETUP_REC* %21, %struct._CHANNEL_SETUP_REC** %5, align 8, !dbg !204
  %22 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !207
  %23 = getelementptr inbounds %struct._GSList, %struct._GSList* %22, i32 0, i32 1, !dbg !208
  %24 = load %struct._GSList*, %struct._GSList** %23, align 8, !dbg !208
  store %struct._GSList* %24, %struct._GSList** %4, align 8, !dbg !209
  %25 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %5, align 8, !dbg !210
  %26 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %25, i32 0, i32 3, !dbg !212
  %27 = load i8*, i8** %26, align 8, !dbg !212
  %28 = load i8*, i8** %2, align 8, !dbg !213
  %29 = call i32 @g_ascii_strcasecmp(i8* %27, i8* %28), !dbg !214
  %30 = icmp eq i32 %29, 0, !dbg !215
  br i1 %30, label %31, label %33, !dbg !216

; <label>:31:                                     ; preds = %17
  %32 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %5, align 8, !dbg !217
  call void @channel_setup_remove(%struct._CHANNEL_SETUP_REC* %32), !dbg !218
  br label %33, !dbg !218

; <label>:33:                                     ; preds = %31, %17
  br label %34, !dbg !219

; <label>:34:                                     ; preds = %33
  %35 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !220
  store %struct._GSList* %35, %struct._GSList** %3, align 8, !dbg !222
  br label %14, !dbg !223, !llvm.loop !224

; <label>:36:                                     ; preds = %10, %14
  ret void, !dbg !226
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare i32 @g_ascii_strcasecmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @channel_setup_remove(%struct._CHANNEL_SETUP_REC*) #0 !dbg !227 {
  %2 = alloca %struct._CHANNEL_SETUP_REC*, align 8
  store %struct._CHANNEL_SETUP_REC* %0, %struct._CHANNEL_SETUP_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_SETUP_REC** %2, metadata !228, metadata !74), !dbg !229
  %3 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %2, align 8, !dbg !230
  call void @channel_config_remove(%struct._CHANNEL_SETUP_REC* %3), !dbg !231
  %4 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %2, align 8, !dbg !232
  call void @channel_setup_destroy(%struct._CHANNEL_SETUP_REC* %4), !dbg !233
  ret void, !dbg !234
}

; Function Attrs: nounwind uwtable
define internal void @channel_config_remove(%struct._CHANNEL_SETUP_REC*) #0 !dbg !235 {
  %2 = alloca %struct._CHANNEL_SETUP_REC*, align 8
  %3 = alloca %struct._CONFIG_NODE*, align 8
  %4 = alloca %struct._GSList*, align 8
  store %struct._CHANNEL_SETUP_REC* %0, %struct._CHANNEL_SETUP_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_SETUP_REC** %2, metadata !236, metadata !74), !dbg !237
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %3, metadata !238, metadata !74), !dbg !239
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !240, metadata !74), !dbg !241
  %5 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !242
  %6 = call %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i32 0), !dbg !243
  store %struct._CONFIG_NODE* %6, %struct._CONFIG_NODE** %3, align 8, !dbg !244
  %7 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !245
  %8 = icmp eq %struct._CONFIG_NODE* %7, null, !dbg !247
  br i1 %8, label %9, label %10, !dbg !248

; <label>:9:                                      ; preds = %1
  br label %27, !dbg !249

; <label>:10:                                     ; preds = %1
  %11 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !250
  %12 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %11, i32 0, i32 2, !dbg !251
  %13 = load i8*, i8** %12, align 8, !dbg !251
  %14 = bitcast i8* %13 to %struct._GSList*, !dbg !250
  %15 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %2, align 8, !dbg !252
  %16 = bitcast %struct._CHANNEL_SETUP_REC* %15 to i8*, !dbg !252
  %17 = call %struct._GSList* @g_slist_find_custom(%struct._GSList* %14, i8* %16, i32 (i8*, i8*)* bitcast (i32 (%struct._CONFIG_NODE*, %struct._CHANNEL_SETUP_REC*)* @compare_channel_setup to i32 (i8*, i8*)*)), !dbg !253
  store %struct._GSList* %17, %struct._GSList** %4, align 8, !dbg !254
  %18 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !255
  %19 = icmp ne %struct._GSList* %18, null, !dbg !257
  br i1 %19, label %20, label %27, !dbg !258

; <label>:20:                                     ; preds = %10
  %21 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !259
  %22 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !260
  %23 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !261
  %24 = getelementptr inbounds %struct._GSList, %struct._GSList* %23, i32 0, i32 0, !dbg !262
  %25 = load i8*, i8** %24, align 8, !dbg !262
  %26 = bitcast i8* %25 to %struct._CONFIG_NODE*, !dbg !261
  call void @config_node_remove(%struct._CONFIG_REC* %21, %struct._CONFIG_NODE* %22, %struct._CONFIG_NODE* %26), !dbg !263
  br label %27, !dbg !263

; <label>:27:                                     ; preds = %9, %20, %10
  ret void, !dbg !264
}

; Function Attrs: nounwind uwtable
define internal void @channel_setup_destroy(%struct._CHANNEL_SETUP_REC*) #0 !dbg !265 {
  %2 = alloca %struct._CHANNEL_SETUP_REC*, align 8
  store %struct._CHANNEL_SETUP_REC* %0, %struct._CHANNEL_SETUP_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_SETUP_REC** %2, metadata !266, metadata !74), !dbg !267
  br label %3, !dbg !268, !llvm.loop !269

; <label>:3:                                      ; preds = %1
  %4 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %2, align 8, !dbg !270
  %5 = icmp ne %struct._CHANNEL_SETUP_REC* %4, null, !dbg !274
  br i1 %5, label %6, label %7, !dbg !270

; <label>:6:                                      ; preds = %3
  br label %8, !dbg !275

; <label>:7:                                      ; preds = %3
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.channel_setup_destroy, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0)), !dbg !278
  br label %33, !dbg !281

; <label>:8:                                      ; preds = %6
  br label %9, !dbg !282

; <label>:9:                                      ; preds = %8
  %10 = load %struct._GSList*, %struct._GSList** @setupchannels, align 8, !dbg !284
  %11 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %2, align 8, !dbg !285
  %12 = bitcast %struct._CHANNEL_SETUP_REC* %11 to i8*, !dbg !285
  %13 = call %struct._GSList* @g_slist_remove(%struct._GSList* %10, i8* %12), !dbg !286
  store %struct._GSList* %13, %struct._GSList** @setupchannels, align 8, !dbg !287
  %14 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %2, align 8, !dbg !288
  %15 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct._CHANNEL_SETUP_REC* %14), !dbg !289
  %16 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %2, align 8, !dbg !290
  %17 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %16, i32 0, i32 3, !dbg !291
  %18 = load i8*, i8** %17, align 8, !dbg !291
  call void @g_free(i8* %18), !dbg !292
  %19 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %2, align 8, !dbg !293
  %20 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %19, i32 0, i32 4, !dbg !294
  %21 = load i8*, i8** %20, align 8, !dbg !294
  call void @g_free(i8* %21), !dbg !295
  %22 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %2, align 8, !dbg !296
  %23 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %22, i32 0, i32 5, !dbg !297
  %24 = load i8*, i8** %23, align 8, !dbg !297
  call void @g_free(i8* %24), !dbg !298
  %25 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %2, align 8, !dbg !299
  %26 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %25, i32 0, i32 6, !dbg !300
  %27 = load i8*, i8** %26, align 8, !dbg !300
  call void @g_free(i8* %27), !dbg !301
  %28 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %2, align 8, !dbg !302
  %29 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %28, i32 0, i32 2, !dbg !303
  %30 = load i8*, i8** %29, align 8, !dbg !303
  call void @g_free(i8* %30), !dbg !304
  %31 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %2, align 8, !dbg !305
  %32 = bitcast %struct._CHANNEL_SETUP_REC* %31 to i8*, !dbg !305
  call void @g_free(i8* %32), !dbg !306
  br label %33, !dbg !307

; <label>:33:                                     ; preds = %9, %7
  ret void, !dbg !308
}

; Function Attrs: nounwind uwtable
define %struct._CHANNEL_SETUP_REC* @channel_setup_find(i8*, i8*) #0 !dbg !310 {
  %3 = alloca %struct._CHANNEL_SETUP_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca %struct._CHANNEL_SETUP_REC*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !313, metadata !74), !dbg !314
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !315, metadata !74), !dbg !316
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !317, metadata !74), !dbg !318
  br label %8, !dbg !319, !llvm.loop !320

; <label>:8:                                      ; preds = %2
  %9 = load i8*, i8** %4, align 8, !dbg !321
  %10 = icmp ne i8* %9, null, !dbg !325
  br i1 %10, label %11, label %12, !dbg !321

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !326

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.channel_setup_find, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0)), !dbg !329
  store %struct._CHANNEL_SETUP_REC* null, %struct._CHANNEL_SETUP_REC** %3, align 8, !dbg !332
  br label %61, !dbg !332

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !333

; <label>:14:                                     ; preds = %13
  %15 = load %struct._GSList*, %struct._GSList** @setupchannels, align 8, !dbg !335
  store %struct._GSList* %15, %struct._GSList** %6, align 8, !dbg !337
  br label %16, !dbg !338

; <label>:16:                                     ; preds = %56, %14
  %17 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !339
  %18 = icmp ne %struct._GSList* %17, null, !dbg !342
  br i1 %18, label %19, label %60, !dbg !343

; <label>:19:                                     ; preds = %16
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_SETUP_REC** %7, metadata !344, metadata !74), !dbg !346
  %20 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !347
  %21 = getelementptr inbounds %struct._GSList, %struct._GSList* %20, i32 0, i32 0, !dbg !348
  %22 = load i8*, i8** %21, align 8, !dbg !348
  %23 = bitcast i8* %22 to %struct._CHANNEL_SETUP_REC*, !dbg !347
  store %struct._CHANNEL_SETUP_REC* %23, %struct._CHANNEL_SETUP_REC** %7, align 8, !dbg !346
  %24 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %7, align 8, !dbg !349
  %25 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %24, i32 0, i32 2, !dbg !351
  %26 = load i8*, i8** %25, align 8, !dbg !351
  %27 = load i8*, i8** %4, align 8, !dbg !352
  %28 = call i32 @g_ascii_strcasecmp(i8* %26, i8* %27), !dbg !353
  %29 = icmp eq i32 %28, 0, !dbg !354
  br i1 %29, label %30, label %55, !dbg !355

; <label>:30:                                     ; preds = %19
  %31 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %7, align 8, !dbg !356
  %32 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %31, i32 0, i32 3, !dbg !357
  %33 = load i8*, i8** %32, align 8, !dbg !357
  %34 = icmp eq i8* %33, null, !dbg !358
  br i1 %34, label %53, label %35, !dbg !359

; <label>:35:                                     ; preds = %30
  %36 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %7, align 8, !dbg !360
  %37 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %36, i32 0, i32 3, !dbg !362
  %38 = load i8*, i8** %37, align 8, !dbg !362
  %39 = getelementptr inbounds i8, i8* %38, i64 0, !dbg !363
  %40 = load i8, i8* %39, align 1, !dbg !363
  %41 = sext i8 %40 to i32, !dbg !363
  %42 = icmp eq i32 %41, 0, !dbg !364
  br i1 %42, label %53, label %43, !dbg !365

; <label>:43:                                     ; preds = %35
  %44 = load i8*, i8** %5, align 8, !dbg !366
  %45 = icmp ne i8* %44, null, !dbg !368
  br i1 %45, label %46, label %55, !dbg !369

; <label>:46:                                     ; preds = %43
  %47 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %7, align 8, !dbg !370
  %48 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %47, i32 0, i32 3, !dbg !372
  %49 = load i8*, i8** %48, align 8, !dbg !372
  %50 = load i8*, i8** %5, align 8, !dbg !373
  %51 = call i32 @g_ascii_strcasecmp(i8* %49, i8* %50), !dbg !374
  %52 = icmp eq i32 %51, 0, !dbg !375
  br i1 %52, label %53, label %55, !dbg !376

; <label>:53:                                     ; preds = %46, %35, %30
  %54 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %7, align 8, !dbg !378
  store %struct._CHANNEL_SETUP_REC* %54, %struct._CHANNEL_SETUP_REC** %3, align 8, !dbg !379
  br label %61, !dbg !379

; <label>:55:                                     ; preds = %46, %43, %19
  br label %56, !dbg !380

; <label>:56:                                     ; preds = %55
  %57 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !381
  %58 = getelementptr inbounds %struct._GSList, %struct._GSList* %57, i32 0, i32 1, !dbg !383
  %59 = load %struct._GSList*, %struct._GSList** %58, align 8, !dbg !383
  store %struct._GSList* %59, %struct._GSList** %6, align 8, !dbg !384
  br label %16, !dbg !385, !llvm.loop !386

; <label>:60:                                     ; preds = %16
  store %struct._CHANNEL_SETUP_REC* null, %struct._CHANNEL_SETUP_REC** %3, align 8, !dbg !388
  br label %61, !dbg !388

; <label>:61:                                     ; preds = %60, %53, %12
  %62 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %3, align 8, !dbg !389
  ret %struct._CHANNEL_SETUP_REC* %62, !dbg !389
}

; Function Attrs: nounwind uwtable
define void @channels_setup_init() #0 !dbg !390 {
  store %struct._GSList* null, %struct._GSList** @setupchannels, align 8, !dbg !393
  store i32 0, i32* @source_host_ok, align 4, !dbg !394
  call void @signal_add_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @channels_read_config to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !395
  call void @signal_add_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @channels_read_config to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !396
  ret void, !dbg !397
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @channels_read_config() #0 !dbg !398 {
  %1 = alloca %struct._CONFIG_NODE*, align 8
  %2 = alloca %struct._GSList*, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %1, metadata !399, metadata !74), !dbg !400
  call void @llvm.dbg.declare(metadata %struct._GSList** %2, metadata !401, metadata !74), !dbg !402
  br label %3, !dbg !403

; <label>:3:                                      ; preds = %6, %0
  %4 = load %struct._GSList*, %struct._GSList** @setupchannels, align 8, !dbg !404
  %5 = icmp ne %struct._GSList* %4, null, !dbg !406
  br i1 %5, label %6, label %11, !dbg !407

; <label>:6:                                      ; preds = %3
  %7 = load %struct._GSList*, %struct._GSList** @setupchannels, align 8, !dbg !408
  %8 = getelementptr inbounds %struct._GSList, %struct._GSList* %7, i32 0, i32 0, !dbg !409
  %9 = load i8*, i8** %8, align 8, !dbg !409
  %10 = bitcast i8* %9 to %struct._CHANNEL_SETUP_REC*, !dbg !408
  call void @channel_setup_destroy(%struct._CHANNEL_SETUP_REC* %10), !dbg !410
  br label %3, !dbg !411, !llvm.loop !413

; <label>:11:                                     ; preds = %3
  %12 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !414
  %13 = call %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC* %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i32 0), !dbg !415
  store %struct._CONFIG_NODE* %13, %struct._CONFIG_NODE** %1, align 8, !dbg !416
  %14 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %1, align 8, !dbg !417
  %15 = icmp ne %struct._CONFIG_NODE* %14, null, !dbg !419
  br i1 %15, label %16, label %35, !dbg !420

; <label>:16:                                     ; preds = %11
  %17 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %1, align 8, !dbg !421
  %18 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %17, i32 0, i32 2, !dbg !423
  %19 = load i8*, i8** %18, align 8, !dbg !423
  %20 = bitcast i8* %19 to %struct._GSList*, !dbg !421
  %21 = call %struct._GSList* @config_node_first(%struct._GSList* %20), !dbg !424
  store %struct._GSList* %21, %struct._GSList** %2, align 8, !dbg !425
  br label %22, !dbg !426

; <label>:22:                                     ; preds = %31, %16
  %23 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !427
  %24 = icmp ne %struct._GSList* %23, null, !dbg !431
  br i1 %24, label %25, label %34, !dbg !432

; <label>:25:                                     ; preds = %22
  %26 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !433
  %27 = getelementptr inbounds %struct._GSList, %struct._GSList* %26, i32 0, i32 0, !dbg !434
  %28 = load i8*, i8** %27, align 8, !dbg !434
  %29 = bitcast i8* %28 to %struct._CONFIG_NODE*, !dbg !433
  %30 = call %struct._CHANNEL_SETUP_REC* @channel_setup_read(%struct._CONFIG_NODE* %29), !dbg !435
  br label %31, !dbg !435

; <label>:31:                                     ; preds = %25
  %32 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !436
  %33 = call %struct._GSList* @config_node_next(%struct._GSList* %32), !dbg !438
  store %struct._GSList* %33, %struct._GSList** %2, align 8, !dbg !439
  br label %22, !dbg !440, !llvm.loop !441

; <label>:34:                                     ; preds = %22
  br label %35, !dbg !442

; <label>:35:                                     ; preds = %34, %11
  ret void, !dbg !443
}

; Function Attrs: nounwind uwtable
define void @channels_setup_deinit() #0 !dbg !444 {
  br label %1, !dbg !445

; <label>:1:                                      ; preds = %4, %0
  %2 = load %struct._GSList*, %struct._GSList** @setupchannels, align 8, !dbg !446
  %3 = icmp ne %struct._GSList* %2, null, !dbg !448
  br i1 %3, label %4, label %9, !dbg !449

; <label>:4:                                      ; preds = %1
  %5 = load %struct._GSList*, %struct._GSList** @setupchannels, align 8, !dbg !450
  %6 = getelementptr inbounds %struct._GSList, %struct._GSList* %5, i32 0, i32 0, !dbg !451
  %7 = load i8*, i8** %6, align 8, !dbg !451
  %8 = bitcast i8* %7 to %struct._CHANNEL_SETUP_REC*, !dbg !450
  call void @channel_setup_destroy(%struct._CHANNEL_SETUP_REC* %8), !dbg !452
  br label %1, !dbg !453, !llvm.loop !455

; <label>:9:                                      ; preds = %1
  call void @signal_remove_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @channels_read_config to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !456
  call void @signal_remove_full(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @channels_read_config to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !457
  ret void, !dbg !458
}

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC*, i8*, i32) #2

declare %struct._GSList* @g_slist_find_custom(%struct._GSList*, i8*, i32 (i8*, i8*)*) #2

; Function Attrs: nounwind uwtable
define internal i32 @compare_channel_setup(%struct._CONFIG_NODE*, %struct._CHANNEL_SETUP_REC*) #0 !dbg !459 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._CONFIG_NODE*, align 8
  %5 = alloca %struct._CHANNEL_SETUP_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct._CONFIG_NODE* %0, %struct._CONFIG_NODE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %4, metadata !462, metadata !74), !dbg !463
  store %struct._CHANNEL_SETUP_REC* %1, %struct._CHANNEL_SETUP_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_SETUP_REC** %5, metadata !464, metadata !74), !dbg !465
  call void @llvm.dbg.declare(metadata i8** %6, metadata !466, metadata !74), !dbg !467
  call void @llvm.dbg.declare(metadata i8** %7, metadata !468, metadata !74), !dbg !469
  %8 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !470
  %9 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* null), !dbg !471
  store i8* %9, i8** %6, align 8, !dbg !472
  %10 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !473
  %11 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* null), !dbg !474
  store i8* %11, i8** %7, align 8, !dbg !475
  %12 = load i8*, i8** %6, align 8, !dbg !476
  %13 = icmp eq i8* %12, null, !dbg !478
  br i1 %13, label %17, label %14, !dbg !479

; <label>:14:                                     ; preds = %2
  %15 = load i8*, i8** %7, align 8, !dbg !480
  %16 = icmp eq i8* %15, null, !dbg !482
  br i1 %16, label %17, label %18, !dbg !483

; <label>:17:                                     ; preds = %14, %2
  store i32 0, i32* %3, align 4, !dbg !484
  br label %34, !dbg !484

; <label>:18:                                     ; preds = %14
  %19 = load i8*, i8** %6, align 8, !dbg !486
  %20 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %5, align 8, !dbg !488
  %21 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %20, i32 0, i32 2, !dbg !489
  %22 = load i8*, i8** %21, align 8, !dbg !489
  %23 = call i32 @g_ascii_strcasecmp(i8* %19, i8* %22), !dbg !490
  %24 = icmp ne i32 %23, 0, !dbg !491
  br i1 %24, label %32, label %25, !dbg !492

; <label>:25:                                     ; preds = %18
  %26 = load i8*, i8** %7, align 8, !dbg !493
  %27 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %5, align 8, !dbg !494
  %28 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %27, i32 0, i32 3, !dbg !495
  %29 = load i8*, i8** %28, align 8, !dbg !495
  %30 = call i32 @g_ascii_strcasecmp(i8* %26, i8* %29), !dbg !496
  %31 = icmp ne i32 %30, 0, !dbg !497
  br i1 %31, label %32, label %33, !dbg !498

; <label>:32:                                     ; preds = %25, %18
  store i32 1, i32* %3, align 4, !dbg !500
  br label %34, !dbg !500

; <label>:33:                                     ; preds = %25
  store i32 0, i32* %3, align 4, !dbg !502
  br label %34, !dbg !502

; <label>:34:                                     ; preds = %33, %32, %17
  %35 = load i32, i32* %3, align 4, !dbg !503
  ret i32 %35, !dbg !503
}

declare %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i32) #2

declare void @config_node_clear(%struct._CONFIG_REC*, %struct._CONFIG_NODE*) #2

declare void @config_node_set_str(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i8*) #2

declare void @config_node_set_bool(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i32) #2

declare i8* @config_node_get_str(%struct._CONFIG_NODE*, i8*, i8*) #2

declare void @config_node_remove(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, %struct._CONFIG_NODE*) #2

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #2

declare void @g_free(i8*) #2

declare %struct._GSList* @config_node_first(%struct._GSList*) #2

; Function Attrs: nounwind uwtable
define internal %struct._CHANNEL_SETUP_REC* @channel_setup_read(%struct._CONFIG_NODE*) #0 !dbg !504 {
  %2 = alloca %struct._CHANNEL_SETUP_REC*, align 8
  %3 = alloca %struct._CONFIG_NODE*, align 8
  %4 = alloca %struct._CHANNEL_SETUP_REC*, align 8
  %5 = alloca %struct._CHATNET_REC*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct._CONFIG_NODE* %0, %struct._CONFIG_NODE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %3, metadata !507, metadata !74), !dbg !508
  call void @llvm.dbg.declare(metadata %struct._CHANNEL_SETUP_REC** %4, metadata !509, metadata !74), !dbg !510
  call void @llvm.dbg.declare(metadata %struct._CHATNET_REC** %5, metadata !511, metadata !74), !dbg !531
  call void @llvm.dbg.declare(metadata i8** %6, metadata !532, metadata !74), !dbg !533
  call void @llvm.dbg.declare(metadata i8** %7, metadata !534, metadata !74), !dbg !535
  br label %8, !dbg !536, !llvm.loop !537

; <label>:8:                                      ; preds = %1
  %9 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !538
  %10 = icmp ne %struct._CONFIG_NODE* %9, null, !dbg !542
  br i1 %10, label %11, label %12, !dbg !538

; <label>:11:                                     ; preds = %8
  br label %13, !dbg !543

; <label>:12:                                     ; preds = %8
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.channel_setup_read, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0)), !dbg !546
  store %struct._CHANNEL_SETUP_REC* null, %struct._CHANNEL_SETUP_REC** %2, align 8, !dbg !549
  br label %116, !dbg !549

; <label>:13:                                     ; preds = %11
  br label %14, !dbg !550

; <label>:14:                                     ; preds = %13
  %15 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !552
  %16 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i8* null), !dbg !553
  store i8* %16, i8** %6, align 8, !dbg !554
  %17 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !555
  %18 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8* null), !dbg !556
  store i8* %18, i8** %7, align 8, !dbg !557
  %19 = load i8*, i8** %7, align 8, !dbg !558
  %20 = icmp eq i8* %19, null, !dbg !559
  br i1 %20, label %21, label %22, !dbg !558

; <label>:21:                                     ; preds = %14
  br label %25, !dbg !560

; <label>:22:                                     ; preds = %14
  %23 = load i8*, i8** %7, align 8, !dbg !562
  %24 = call %struct._CHATNET_REC* @chatnet_find(i8* %23), !dbg !564
  br label %25, !dbg !565

; <label>:25:                                     ; preds = %22, %21
  %26 = phi %struct._CHATNET_REC* [ null, %21 ], [ %24, %22 ], !dbg !566
  store %struct._CHATNET_REC* %26, %struct._CHATNET_REC** %5, align 8, !dbg !568
  %27 = load i8*, i8** %6, align 8, !dbg !569
  %28 = icmp eq i8* %27, null, !dbg !571
  br i1 %28, label %32, label %29, !dbg !572

; <label>:29:                                     ; preds = %25
  %30 = load %struct._CHATNET_REC*, %struct._CHATNET_REC** %5, align 8, !dbg !573
  %31 = icmp eq %struct._CHATNET_REC* %30, null, !dbg !575
  br i1 %31, label %32, label %33, !dbg !576

; <label>:32:                                     ; preds = %29, %25
  store %struct._CHANNEL_SETUP_REC* null, %struct._CHANNEL_SETUP_REC** %2, align 8, !dbg !577
  br label %116, !dbg !577

; <label>:33:                                     ; preds = %29
  %34 = load %struct._CHATNET_REC*, %struct._CHATNET_REC** %5, align 8, !dbg !579
  %35 = icmp eq %struct._CHATNET_REC* %34, null, !dbg !580
  br i1 %35, label %36, label %38, !dbg !581

; <label>:36:                                     ; preds = %33
  %37 = call %struct._CHAT_PROTOCOL_REC* @chat_protocol_get_default(), !dbg !582
  br label %43, !dbg !582

; <label>:38:                                     ; preds = %33
  %39 = load %struct._CHATNET_REC*, %struct._CHATNET_REC** %5, align 8, !dbg !583
  %40 = getelementptr inbounds %struct._CHATNET_REC, %struct._CHATNET_REC* %39, i32 0, i32 1, !dbg !584
  %41 = load i32, i32* %40, align 4, !dbg !584
  %42 = call %struct._CHAT_PROTOCOL_REC* @chat_protocol_find_id(i32 %41), !dbg !585
  br label %43, !dbg !586

; <label>:43:                                     ; preds = %38, %36
  %44 = phi %struct._CHAT_PROTOCOL_REC* [ %37, %36 ], [ %42, %38 ], !dbg !587
  %45 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %44, i32 0, i32 7, !dbg !588
  %46 = load %struct._CHANNEL_SETUP_REC* ()*, %struct._CHANNEL_SETUP_REC* ()** %45, align 8, !dbg !588
  %47 = call %struct._CHANNEL_SETUP_REC* %46(), !dbg !589
  store %struct._CHANNEL_SETUP_REC* %47, %struct._CHANNEL_SETUP_REC** %4, align 8, !dbg !590
  %48 = call i32 @module_get_uniq_id(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 0), !dbg !591
  %49 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %4, align 8, !dbg !592
  %50 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %49, i32 0, i32 0, !dbg !593
  store i32 %48, i32* %50, align 8, !dbg !594
  %51 = load %struct._CHATNET_REC*, %struct._CHATNET_REC** %5, align 8, !dbg !595
  %52 = icmp eq %struct._CHATNET_REC* %51, null, !dbg !596
  br i1 %52, label %53, label %55, !dbg !597

; <label>:53:                                     ; preds = %43
  %54 = call %struct._CHAT_PROTOCOL_REC* @chat_protocol_get_default(), !dbg !598
  br label %60, !dbg !598

; <label>:55:                                     ; preds = %43
  %56 = load %struct._CHATNET_REC*, %struct._CHATNET_REC** %5, align 8, !dbg !599
  %57 = getelementptr inbounds %struct._CHATNET_REC, %struct._CHATNET_REC* %56, i32 0, i32 1, !dbg !600
  %58 = load i32, i32* %57, align 4, !dbg !600
  %59 = call %struct._CHAT_PROTOCOL_REC* @chat_protocol_find_id(i32 %58), !dbg !601
  br label %60, !dbg !602

; <label>:60:                                     ; preds = %55, %53
  %61 = phi %struct._CHAT_PROTOCOL_REC* [ %54, %53 ], [ %59, %55 ], !dbg !603
  %62 = getelementptr inbounds %struct._CHAT_PROTOCOL_REC, %struct._CHAT_PROTOCOL_REC* %61, i32 0, i32 0, !dbg !604
  %63 = load i32, i32* %62, align 8, !dbg !604
  %64 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %4, align 8, !dbg !605
  %65 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %64, i32 0, i32 1, !dbg !606
  store i32 %63, i32* %65, align 4, !dbg !607
  %66 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !608
  %67 = call i32 @config_node_get_bool(%struct._CONFIG_NODE* %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 0), !dbg !609
  %68 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %4, align 8, !dbg !610
  %69 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %68, i32 0, i32 7, !dbg !611
  %70 = trunc i32 %67 to i8, !dbg !612
  %71 = load i8, i8* %69, align 8, !dbg !612
  %72 = and i8 %70, 1, !dbg !612
  %73 = and i8 %71, -2, !dbg !612
  %74 = or i8 %73, %72, !dbg !612
  store i8 %74, i8* %69, align 8, !dbg !612
  %75 = zext i8 %72 to i32, !dbg !612
  %76 = load i8*, i8** %6, align 8, !dbg !613
  %77 = call noalias i8* @g_strdup(i8* %76), !dbg !614
  %78 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %4, align 8, !dbg !615
  %79 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %78, i32 0, i32 2, !dbg !616
  store i8* %77, i8** %79, align 8, !dbg !617
  %80 = load %struct._CHATNET_REC*, %struct._CHATNET_REC** %5, align 8, !dbg !618
  %81 = icmp ne %struct._CHATNET_REC* %80, null, !dbg !619
  br i1 %81, label %82, label %86, !dbg !618

; <label>:82:                                     ; preds = %60
  %83 = load %struct._CHATNET_REC*, %struct._CHATNET_REC** %5, align 8, !dbg !620
  %84 = getelementptr inbounds %struct._CHATNET_REC, %struct._CHATNET_REC* %83, i32 0, i32 2, !dbg !621
  %85 = load i8*, i8** %84, align 8, !dbg !621
  br label %88, !dbg !622

; <label>:86:                                     ; preds = %60
  %87 = load i8*, i8** %7, align 8, !dbg !623
  br label %88, !dbg !624

; <label>:88:                                     ; preds = %86, %82
  %89 = phi i8* [ %85, %82 ], [ %87, %86 ], !dbg !625
  %90 = call noalias i8* @g_strdup(i8* %89), !dbg !626
  %91 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %4, align 8, !dbg !627
  %92 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %91, i32 0, i32 3, !dbg !628
  store i8* %90, i8** %92, align 8, !dbg !629
  %93 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !630
  %94 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %93, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8* null), !dbg !631
  %95 = call noalias i8* @g_strdup(i8* %94), !dbg !632
  %96 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %4, align 8, !dbg !633
  %97 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %96, i32 0, i32 4, !dbg !634
  store i8* %95, i8** %97, align 8, !dbg !635
  %98 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !636
  %99 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %98, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i8* null), !dbg !637
  %100 = call noalias i8* @g_strdup(i8* %99), !dbg !638
  %101 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %4, align 8, !dbg !639
  %102 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %101, i32 0, i32 5, !dbg !640
  store i8* %100, i8** %102, align 8, !dbg !641
  %103 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !642
  %104 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %103, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i8* null), !dbg !643
  %105 = call noalias i8* @g_strdup(i8* %104), !dbg !644
  %106 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %4, align 8, !dbg !645
  %107 = getelementptr inbounds %struct._CHANNEL_SETUP_REC, %struct._CHANNEL_SETUP_REC* %106, i32 0, i32 6, !dbg !646
  store i8* %105, i8** %107, align 8, !dbg !647
  %108 = load %struct._GSList*, %struct._GSList** @setupchannels, align 8, !dbg !648
  %109 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %4, align 8, !dbg !649
  %110 = bitcast %struct._CHANNEL_SETUP_REC* %109 to i8*, !dbg !649
  %111 = call %struct._GSList* @g_slist_append(%struct._GSList* %108, i8* %110), !dbg !650
  store %struct._GSList* %111, %struct._GSList** @setupchannels, align 8, !dbg !651
  %112 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %4, align 8, !dbg !652
  %113 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !653
  %114 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 2, %struct._CHANNEL_SETUP_REC* %112, %struct._CONFIG_NODE* %113), !dbg !654
  %115 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %4, align 8, !dbg !655
  store %struct._CHANNEL_SETUP_REC* %115, %struct._CHANNEL_SETUP_REC** %2, align 8, !dbg !656
  br label %116, !dbg !656

; <label>:116:                                    ; preds = %88, %32, %12
  %117 = load %struct._CHANNEL_SETUP_REC*, %struct._CHANNEL_SETUP_REC** %2, align 8, !dbg !657
  ret %struct._CHANNEL_SETUP_REC* %117, !dbg !657
}

declare %struct._GSList* @config_node_next(%struct._GSList*) #2

declare %struct._CHATNET_REC* @chatnet_find(i8*) #2

declare %struct._CHAT_PROTOCOL_REC* @chat_protocol_get_default() #2

declare %struct._CHAT_PROTOCOL_REC* @chat_protocol_find_id(i32) #2

declare i32 @config_node_get_bool(%struct._CONFIG_NODE*, i8*, i32) #2

declare noalias i8* @g_strdup(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!44, !45}
!llvm.ident = !{!46}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !11, globals: !33)
!1 = !DIFile(filename: "line21-channels-setup.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 4, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../src/lib-config/iconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!5 = !{!6, !7, !8, !9, !10}
!6 = !DIEnumerator(name: "NODE_TYPE_KEY", value: 0)
!7 = !DIEnumerator(name: "NODE_TYPE_VALUE", value: 1)
!8 = !DIEnumerator(name: "NODE_TYPE_BLOCK", value: 2)
!9 = !DIEnumerator(name: "NODE_TYPE_LIST", value: 3)
!10 = !DIEnumerator(name: "NODE_TYPE_COMMENT", value: 4)
!11 = !{!12, !13, !17, !19, !26}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !15, line: 46, baseType: !16)
!15 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!16 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !20, line: 9, baseType: !21)
!20 = !DIFile(filename: "signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!22 = !DISubroutineType(types: !23)
!23 = !{null, !24, !24, !24, !24, !24, !24}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "GCompareFunc", file: !15, line: 80, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!28 = !DISubroutineType(types: !29)
!29 = !{!30, !32, !32}
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !15, line: 49, baseType: !31)
!31 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "gconstpointer", file: !15, line: 78, baseType: !24)
!33 = !{!34}
!34 = distinct !DIGlobalVariable(name: "setupchannels", scope: !0, file: !35, line: 31, type: !36, isLocal: false, isDefinition: true, variable: %struct._GSList** @setupchannels)
!35 = !DIFile(filename: "channels-setup.c", directory: "/home/lichi/Desktop/irssi/task1")
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !38, line: 37, baseType: !39)
!38 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !38, line: 39, size: 128, align: 64, elements: !40)
!40 = !{!41, !43}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !39, file: !38, line: 41, baseType: !42, size: 64, align: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !15, line: 77, baseType: !12)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !39, file: !38, line: 42, baseType: !36, size: 64, align: 64, offset: 64)
!44 = !{i32 2, !"Dwarf Version", i32 4}
!45 = !{i32 2, !"Debug Info Version", i32 3}
!46 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!47 = distinct !DISubprogram(name: "channel_setup_create", scope: !35, file: !35, line: 79, type: !48, isLocal: false, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !72)
!48 = !DISubroutineType(types: !49)
!49 = !{null, !50}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_SETUP_REC", file: !52, line: 115, baseType: !53)
!52 = !DIFile(filename: "../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_SETUP_REC", file: !54, line: 12, size: 512, align: 64, elements: !55)
!54 = !DIFile(filename: "channels-setup.h", directory: "/home/lichi/Desktop/irssi/task1")
!55 = !{!56, !58, !59, !61, !62, !63, !64, !65, !67}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !53, file: !57, line: 1, baseType: !31, size: 32, align: 32)
!57 = !DIFile(filename: "channel-setup-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!58 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !53, file: !57, line: 2, baseType: !31, size: 32, align: 32, offset: 32)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !53, file: !57, line: 4, baseType: !60, size: 64, align: 64, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !53, file: !57, line: 5, baseType: !60, size: 64, align: 64, offset: 128)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !53, file: !57, line: 6, baseType: !60, size: 64, align: 64, offset: 192)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "botmasks", scope: !53, file: !57, line: 8, baseType: !60, size: 64, align: 64, offset: 256)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "autosendcmd", scope: !53, file: !57, line: 9, baseType: !60, size: 64, align: 64, offset: 320)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "autojoin", scope: !53, file: !57, line: 11, baseType: !66, size: 1, align: 32, offset: 384, flags: DIFlagBitField, extraData: i64 384)
!66 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !53, file: !57, line: 12, baseType: !68, size: 64, align: 64, offset: 448)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !70, line: 37, baseType: !71)
!70 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!71 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !70, line: 37, flags: DIFlagFwdDecl)
!72 = !{}
!73 = !DILocalVariable(name: "channel", arg: 1, scope: !47, file: !35, line: 79, type: !50)
!74 = !DIExpression()
!75 = !DILocation(line: 79, column: 46, scope: !47)
!76 = !DILocation(line: 81, column: 18, scope: !47)
!77 = !DILocation(line: 81, column: 2, scope: !47)
!78 = !DILocation(line: 81, column: 11, scope: !47)
!79 = !DILocation(line: 81, column: 16, scope: !47)
!80 = !DILocation(line: 83, column: 19, scope: !81)
!81 = distinct !DILexicalBlock(scope: !47, file: !35, line: 83, column: 6)
!82 = !DILocation(line: 83, column: 34, scope: !81)
!83 = !DILocation(line: 83, column: 6, scope: !81)
!84 = !DILocation(line: 83, column: 43, scope: !81)
!85 = !DILocation(line: 83, column: 6, scope: !47)
!86 = !DILocation(line: 84, column: 34, scope: !81)
!87 = !DILocation(line: 84, column: 49, scope: !81)
!88 = !DILocation(line: 84, column: 19, scope: !81)
!89 = !DILocation(line: 84, column: 17, scope: !81)
!90 = !DILocation(line: 84, column: 3, scope: !81)
!91 = !DILocation(line: 85, column: 21, scope: !47)
!92 = !DILocation(line: 85, column: 2, scope: !47)
!93 = !DILocation(line: 87, column: 42, scope: !47)
!94 = !DILocation(line: 87, column: 2, scope: !47)
!95 = !DILocation(line: 88, column: 1, scope: !47)
!96 = distinct !DISubprogram(name: "channel_setup_save", scope: !35, file: !35, line: 52, type: !48, isLocal: true, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !72)
!97 = !DILocalVariable(name: "channel", arg: 1, scope: !96, file: !35, line: 52, type: !50)
!98 = !DILocation(line: 52, column: 51, scope: !96)
!99 = !DILocalVariable(name: "parent_node", scope: !96, file: !35, line: 54, type: !100)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64, align: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "CONFIG_NODE", file: !4, line: 17, baseType: !102)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CONFIG_NODE", file: !4, line: 20, size: 192, align: 64, elements: !103)
!103 = !{!104, !105, !106}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !102, file: !4, line: 21, baseType: !31, size: 32, align: 32)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !102, file: !4, line: 22, baseType: !60, size: 64, align: 64, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !102, file: !4, line: 23, baseType: !12, size: 64, align: 64, offset: 128)
!107 = !DILocation(line: 54, column: 15, scope: !96)
!108 = !DILocalVariable(name: "node", scope: !96, file: !35, line: 54, type: !100)
!109 = !DILocation(line: 54, column: 29, scope: !96)
!110 = !DILocalVariable(name: "config_node", scope: !96, file: !35, line: 55, type: !36)
!111 = !DILocation(line: 55, column: 10, scope: !96)
!112 = !DILocation(line: 57, column: 37, scope: !96)
!113 = !DILocation(line: 57, column: 16, scope: !96)
!114 = !DILocation(line: 57, column: 14, scope: !96)
!115 = !DILocation(line: 60, column: 36, scope: !96)
!116 = !DILocation(line: 60, column: 49, scope: !96)
!117 = !DILocation(line: 60, column: 56, scope: !96)
!118 = !DILocation(line: 60, column: 16, scope: !96)
!119 = !DILocation(line: 60, column: 14, scope: !96)
!120 = !DILocation(line: 62, column: 6, scope: !121)
!121 = distinct !DILexicalBlock(scope: !96, file: !35, line: 62, column: 6)
!122 = !DILocation(line: 62, column: 18, scope: !121)
!123 = !DILocation(line: 62, column: 6, scope: !96)
!124 = !DILocation(line: 64, column: 10, scope: !121)
!125 = !DILocation(line: 64, column: 23, scope: !121)
!126 = !DILocation(line: 64, column: 8, scope: !121)
!127 = !DILocation(line: 64, column: 3, scope: !121)
!128 = !DILocation(line: 67, column: 30, scope: !121)
!129 = !DILocation(line: 67, column: 42, scope: !121)
!130 = !DILocation(line: 67, column: 10, scope: !121)
!131 = !DILocation(line: 67, column: 8, scope: !121)
!132 = !DILocation(line: 69, column: 27, scope: !96)
!133 = !DILocation(line: 69, column: 39, scope: !96)
!134 = !DILocation(line: 69, column: 9, scope: !96)
!135 = !DILocation(line: 70, column: 22, scope: !96)
!136 = !DILocation(line: 70, column: 34, scope: !96)
!137 = !DILocation(line: 70, column: 48, scope: !96)
!138 = !DILocation(line: 70, column: 57, scope: !96)
!139 = !DILocation(line: 70, column: 2, scope: !96)
!140 = !DILocation(line: 71, column: 22, scope: !96)
!141 = !DILocation(line: 71, column: 34, scope: !96)
!142 = !DILocation(line: 71, column: 51, scope: !96)
!143 = !DILocation(line: 71, column: 60, scope: !96)
!144 = !DILocation(line: 71, column: 2, scope: !96)
!145 = !DILocation(line: 72, column: 6, scope: !146)
!146 = distinct !DILexicalBlock(scope: !96, file: !35, line: 72, column: 6)
!147 = !DILocation(line: 72, column: 15, scope: !146)
!148 = !DILocation(line: 72, column: 6, scope: !96)
!149 = !DILocation(line: 73, column: 24, scope: !146)
!150 = !DILocation(line: 73, column: 36, scope: !146)
!151 = !DILocation(line: 73, column: 3, scope: !146)
!152 = !DILocation(line: 74, column: 22, scope: !96)
!153 = !DILocation(line: 74, column: 34, scope: !96)
!154 = !DILocation(line: 74, column: 52, scope: !96)
!155 = !DILocation(line: 74, column: 61, scope: !96)
!156 = !DILocation(line: 74, column: 2, scope: !96)
!157 = !DILocation(line: 75, column: 22, scope: !96)
!158 = !DILocation(line: 75, column: 34, scope: !96)
!159 = !DILocation(line: 75, column: 52, scope: !96)
!160 = !DILocation(line: 75, column: 61, scope: !96)
!161 = !DILocation(line: 75, column: 2, scope: !96)
!162 = !DILocation(line: 76, column: 22, scope: !96)
!163 = !DILocation(line: 76, column: 34, scope: !96)
!164 = !DILocation(line: 76, column: 55, scope: !96)
!165 = !DILocation(line: 76, column: 64, scope: !96)
!166 = !DILocation(line: 76, column: 2, scope: !96)
!167 = !DILocation(line: 77, column: 1, scope: !96)
!168 = distinct !DISubprogram(name: "channel_setup_remove_chatnet", scope: !35, file: !35, line: 124, type: !169, isLocal: false, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !72)
!169 = !DISubroutineType(types: !170)
!170 = !{null, !17}
!171 = !DILocalVariable(name: "chatnet", arg: 1, scope: !168, file: !35, line: 124, type: !17)
!172 = !DILocation(line: 124, column: 47, scope: !168)
!173 = !DILocalVariable(name: "tmp", scope: !168, file: !35, line: 126, type: !36)
!174 = !DILocation(line: 126, column: 10, scope: !168)
!175 = !DILocalVariable(name: "next", scope: !168, file: !35, line: 126, type: !36)
!176 = !DILocation(line: 126, column: 16, scope: !168)
!177 = !DILocation(line: 128, column: 2, scope: !168)
!178 = distinct !{!178, !177}
!179 = !DILocation(line: 128, column: 10, scope: !180)
!180 = !DILexicalBlockFile(scope: !181, file: !35, discriminator: 1)
!181 = distinct !DILexicalBlock(scope: !182, file: !35, line: 128, column: 10)
!182 = distinct !DILexicalBlock(scope: !168, file: !35, line: 128, column: 4)
!183 = !DILocation(line: 128, column: 18, scope: !180)
!184 = !DILocation(line: 128, column: 5, scope: !185)
!185 = !DILexicalBlockFile(scope: !186, file: !35, discriminator: 2)
!186 = distinct !DILexicalBlock(scope: !181, file: !35, line: 128, column: 3)
!187 = !DILocation(line: 128, column: 14, scope: !188)
!188 = !DILexicalBlockFile(scope: !189, file: !35, discriminator: 3)
!189 = distinct !DILexicalBlock(scope: !181, file: !35, line: 128, column: 12)
!190 = !DILocation(line: 128, column: 102, scope: !188)
!191 = !DILocation(line: 128, column: 113, scope: !192)
!192 = !DILexicalBlockFile(scope: !182, file: !35, discriminator: 4)
!193 = !DILocation(line: 130, column: 13, scope: !194)
!194 = distinct !DILexicalBlock(scope: !168, file: !35, line: 130, column: 2)
!195 = !DILocation(line: 130, column: 11, scope: !194)
!196 = !DILocation(line: 130, column: 7, scope: !194)
!197 = !DILocation(line: 130, column: 28, scope: !198)
!198 = !DILexicalBlockFile(scope: !199, file: !35, discriminator: 1)
!199 = distinct !DILexicalBlock(scope: !194, file: !35, line: 130, column: 2)
!200 = !DILocation(line: 130, column: 32, scope: !198)
!201 = !DILocation(line: 130, column: 2, scope: !198)
!202 = !DILocalVariable(name: "rec", scope: !203, file: !35, line: 131, type: !50)
!203 = distinct !DILexicalBlock(scope: !199, file: !35, line: 130, column: 52)
!204 = !DILocation(line: 131, column: 22, scope: !203)
!205 = !DILocation(line: 131, column: 28, scope: !203)
!206 = !DILocation(line: 131, column: 33, scope: !203)
!207 = !DILocation(line: 133, column: 10, scope: !203)
!208 = !DILocation(line: 133, column: 15, scope: !203)
!209 = !DILocation(line: 133, column: 8, scope: !203)
!210 = !DILocation(line: 134, column: 26, scope: !211)
!211 = distinct !DILexicalBlock(scope: !203, file: !35, line: 134, column: 7)
!212 = !DILocation(line: 134, column: 31, scope: !211)
!213 = !DILocation(line: 134, column: 40, scope: !211)
!214 = !DILocation(line: 134, column: 7, scope: !211)
!215 = !DILocation(line: 134, column: 49, scope: !211)
!216 = !DILocation(line: 134, column: 7, scope: !203)
!217 = !DILocation(line: 135, column: 25, scope: !211)
!218 = !DILocation(line: 135, column: 4, scope: !211)
!219 = !DILocation(line: 136, column: 2, scope: !203)
!220 = !DILocation(line: 130, column: 46, scope: !221)
!221 = !DILexicalBlockFile(scope: !199, file: !35, discriminator: 2)
!222 = !DILocation(line: 130, column: 44, scope: !221)
!223 = !DILocation(line: 130, column: 2, scope: !221)
!224 = distinct !{!224, !225}
!225 = !DILocation(line: 130, column: 2, scope: !168)
!226 = !DILocation(line: 137, column: 1, scope: !168)
!227 = distinct !DISubprogram(name: "channel_setup_remove", scope: !35, file: !35, line: 139, type: !48, isLocal: false, isDefinition: true, scopeLine: 140, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !72)
!228 = !DILocalVariable(name: "channel", arg: 1, scope: !227, file: !35, line: 139, type: !50)
!229 = !DILocation(line: 139, column: 46, scope: !227)
!230 = !DILocation(line: 141, column: 31, scope: !227)
!231 = !DILocation(line: 141, column: 9, scope: !227)
!232 = !DILocation(line: 142, column: 31, scope: !227)
!233 = !DILocation(line: 142, column: 9, scope: !227)
!234 = !DILocation(line: 143, column: 1, scope: !227)
!235 = distinct !DISubprogram(name: "channel_config_remove", scope: !35, file: !35, line: 90, type: !48, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !72)
!236 = !DILocalVariable(name: "channel", arg: 1, scope: !235, file: !35, line: 90, type: !50)
!237 = !DILocation(line: 90, column: 54, scope: !235)
!238 = !DILocalVariable(name: "parent_node", scope: !235, file: !35, line: 92, type: !100)
!239 = !DILocation(line: 92, column: 15, scope: !235)
!240 = !DILocalVariable(name: "config_node", scope: !235, file: !35, line: 93, type: !36)
!241 = !DILocation(line: 93, column: 10, scope: !235)
!242 = !DILocation(line: 95, column: 37, scope: !235)
!243 = !DILocation(line: 95, column: 16, scope: !235)
!244 = !DILocation(line: 95, column: 14, scope: !235)
!245 = !DILocation(line: 97, column: 6, scope: !246)
!246 = distinct !DILexicalBlock(scope: !235, file: !35, line: 97, column: 6)
!247 = !DILocation(line: 97, column: 18, scope: !246)
!248 = !DILocation(line: 97, column: 6, scope: !235)
!249 = !DILocation(line: 98, column: 3, scope: !246)
!250 = !DILocation(line: 101, column: 36, scope: !235)
!251 = !DILocation(line: 101, column: 49, scope: !235)
!252 = !DILocation(line: 101, column: 56, scope: !235)
!253 = !DILocation(line: 101, column: 16, scope: !235)
!254 = !DILocation(line: 101, column: 14, scope: !235)
!255 = !DILocation(line: 104, column: 6, scope: !256)
!256 = distinct !DILexicalBlock(scope: !235, file: !35, line: 104, column: 6)
!257 = !DILocation(line: 104, column: 18, scope: !256)
!258 = !DILocation(line: 104, column: 6, scope: !235)
!259 = !DILocation(line: 106, column: 22, scope: !256)
!260 = !DILocation(line: 106, column: 34, scope: !256)
!261 = !DILocation(line: 106, column: 47, scope: !256)
!262 = !DILocation(line: 106, column: 60, scope: !256)
!263 = !DILocation(line: 106, column: 3, scope: !256)
!264 = !DILocation(line: 107, column: 1, scope: !235)
!265 = distinct !DISubprogram(name: "channel_setup_destroy", scope: !35, file: !35, line: 109, type: !48, isLocal: true, isDefinition: true, scopeLine: 110, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !72)
!266 = !DILocalVariable(name: "channel", arg: 1, scope: !265, file: !35, line: 109, type: !50)
!267 = !DILocation(line: 109, column: 54, scope: !265)
!268 = !DILocation(line: 111, column: 2, scope: !265)
!269 = distinct !{!269, !268}
!270 = !DILocation(line: 111, column: 10, scope: !271)
!271 = !DILexicalBlockFile(scope: !272, file: !35, discriminator: 1)
!272 = distinct !DILexicalBlock(scope: !273, file: !35, line: 111, column: 10)
!273 = distinct !DILexicalBlock(scope: !265, file: !35, line: 111, column: 4)
!274 = !DILocation(line: 111, column: 18, scope: !271)
!275 = !DILocation(line: 111, column: 5, scope: !276)
!276 = !DILexicalBlockFile(scope: !277, file: !35, discriminator: 2)
!277 = distinct !DILexicalBlock(scope: !272, file: !35, line: 111, column: 3)
!278 = !DILocation(line: 111, column: 14, scope: !279)
!279 = !DILexicalBlockFile(scope: !280, file: !35, discriminator: 3)
!280 = distinct !DILexicalBlock(scope: !272, file: !35, line: 111, column: 12)
!281 = !DILocation(line: 111, column: 102, scope: !279)
!282 = !DILocation(line: 111, column: 113, scope: !283)
!283 = !DILexicalBlockFile(scope: !273, file: !35, discriminator: 4)
!284 = !DILocation(line: 113, column: 33, scope: !265)
!285 = !DILocation(line: 113, column: 48, scope: !265)
!286 = !DILocation(line: 113, column: 18, scope: !265)
!287 = !DILocation(line: 113, column: 16, scope: !265)
!288 = !DILocation(line: 114, column: 44, scope: !265)
!289 = !DILocation(line: 114, column: 2, scope: !265)
!290 = !DILocation(line: 116, column: 9, scope: !265)
!291 = !DILocation(line: 116, column: 18, scope: !265)
!292 = !DILocation(line: 116, column: 2, scope: !265)
!293 = !DILocation(line: 117, column: 9, scope: !265)
!294 = !DILocation(line: 117, column: 18, scope: !265)
!295 = !DILocation(line: 117, column: 2, scope: !265)
!296 = !DILocation(line: 118, column: 9, scope: !265)
!297 = !DILocation(line: 118, column: 18, scope: !265)
!298 = !DILocation(line: 118, column: 2, scope: !265)
!299 = !DILocation(line: 119, column: 9, scope: !265)
!300 = !DILocation(line: 119, column: 18, scope: !265)
!301 = !DILocation(line: 119, column: 2, scope: !265)
!302 = !DILocation(line: 120, column: 9, scope: !265)
!303 = !DILocation(line: 120, column: 18, scope: !265)
!304 = !DILocation(line: 120, column: 2, scope: !265)
!305 = !DILocation(line: 121, column: 9, scope: !265)
!306 = !DILocation(line: 121, column: 2, scope: !265)
!307 = !DILocation(line: 122, column: 1, scope: !265)
!308 = !DILocation(line: 122, column: 1, scope: !309)
!309 = !DILexicalBlockFile(scope: !265, file: !35, discriminator: 1)
!310 = distinct !DISubprogram(name: "channel_setup_find", scope: !35, file: !35, line: 145, type: !311, isLocal: false, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !72)
!311 = !DISubroutineType(types: !312)
!312 = !{!50, !17, !17}
!313 = !DILocalVariable(name: "channel", arg: 1, scope: !310, file: !35, line: 145, type: !17)
!314 = !DILocation(line: 145, column: 51, scope: !310)
!315 = !DILocalVariable(name: "chatnet", arg: 2, scope: !310, file: !35, line: 146, type: !17)
!316 = !DILocation(line: 146, column: 23, scope: !310)
!317 = !DILocalVariable(name: "tmp", scope: !310, file: !35, line: 148, type: !36)
!318 = !DILocation(line: 148, column: 10, scope: !310)
!319 = !DILocation(line: 150, column: 2, scope: !310)
!320 = distinct !{!320, !319}
!321 = !DILocation(line: 150, column: 10, scope: !322)
!322 = !DILexicalBlockFile(scope: !323, file: !35, discriminator: 1)
!323 = distinct !DILexicalBlock(scope: !324, file: !35, line: 150, column: 10)
!324 = distinct !DILexicalBlock(scope: !310, file: !35, line: 150, column: 4)
!325 = !DILocation(line: 150, column: 18, scope: !322)
!326 = !DILocation(line: 150, column: 5, scope: !327)
!327 = !DILexicalBlockFile(scope: !328, file: !35, discriminator: 2)
!328 = distinct !DILexicalBlock(scope: !323, file: !35, line: 150, column: 3)
!329 = !DILocation(line: 150, column: 14, scope: !330)
!330 = !DILexicalBlockFile(scope: !331, file: !35, discriminator: 3)
!331 = distinct !DILexicalBlock(scope: !323, file: !35, line: 150, column: 12)
!332 = !DILocation(line: 150, column: 102, scope: !330)
!333 = !DILocation(line: 150, column: 7, scope: !334)
!334 = !DILexicalBlockFile(scope: !324, file: !35, discriminator: 4)
!335 = !DILocation(line: 152, column: 13, scope: !336)
!336 = distinct !DILexicalBlock(scope: !310, file: !35, line: 152, column: 2)
!337 = !DILocation(line: 152, column: 11, scope: !336)
!338 = !DILocation(line: 152, column: 7, scope: !336)
!339 = !DILocation(line: 152, column: 28, scope: !340)
!340 = !DILexicalBlockFile(scope: !341, file: !35, discriminator: 1)
!341 = distinct !DILexicalBlock(scope: !336, file: !35, line: 152, column: 2)
!342 = !DILocation(line: 152, column: 32, scope: !340)
!343 = !DILocation(line: 152, column: 2, scope: !340)
!344 = !DILocalVariable(name: "rec", scope: !345, file: !35, line: 153, type: !50)
!345 = distinct !DILexicalBlock(scope: !341, file: !35, line: 152, column: 57)
!346 = !DILocation(line: 153, column: 22, scope: !345)
!347 = !DILocation(line: 153, column: 28, scope: !345)
!348 = !DILocation(line: 153, column: 33, scope: !345)
!349 = !DILocation(line: 155, column: 26, scope: !350)
!350 = distinct !DILexicalBlock(scope: !345, file: !35, line: 155, column: 7)
!351 = !DILocation(line: 155, column: 31, scope: !350)
!352 = !DILocation(line: 155, column: 37, scope: !350)
!353 = !DILocation(line: 155, column: 7, scope: !350)
!354 = !DILocation(line: 155, column: 46, scope: !350)
!355 = !DILocation(line: 155, column: 51, scope: !350)
!356 = !DILocation(line: 156, column: 9, scope: !350)
!357 = !DILocation(line: 156, column: 14, scope: !350)
!358 = !DILocation(line: 156, column: 23, scope: !350)
!359 = !DILocation(line: 156, column: 6, scope: !350)
!360 = !DILocation(line: 156, column: 10, scope: !361)
!361 = !DILexicalBlockFile(scope: !350, file: !35, discriminator: 1)
!362 = !DILocation(line: 156, column: 15, scope: !361)
!363 = !DILocation(line: 156, column: 9, scope: !361)
!364 = !DILocation(line: 156, column: 27, scope: !361)
!365 = !DILocation(line: 156, column: 35, scope: !361)
!366 = !DILocation(line: 156, column: 40, scope: !367)
!367 = !DILexicalBlockFile(scope: !350, file: !35, discriminator: 2)
!368 = !DILocation(line: 156, column: 49, scope: !367)
!369 = !DILocation(line: 156, column: 6, scope: !367)
!370 = !DILocation(line: 156, column: 28, scope: !371)
!371 = !DILexicalBlockFile(scope: !350, file: !35, discriminator: 3)
!372 = !DILocation(line: 156, column: 33, scope: !371)
!373 = !DILocation(line: 156, column: 42, scope: !371)
!374 = !DILocation(line: 156, column: 9, scope: !371)
!375 = !DILocation(line: 156, column: 51, scope: !371)
!376 = !DILocation(line: 155, column: 7, scope: !377)
!377 = !DILexicalBlockFile(scope: !345, file: !35, discriminator: 1)
!378 = !DILocation(line: 157, column: 11, scope: !350)
!379 = !DILocation(line: 157, column: 4, scope: !350)
!380 = !DILocation(line: 158, column: 2, scope: !345)
!381 = !DILocation(line: 152, column: 46, scope: !382)
!382 = !DILexicalBlockFile(scope: !341, file: !35, discriminator: 2)
!383 = !DILocation(line: 152, column: 51, scope: !382)
!384 = !DILocation(line: 152, column: 44, scope: !382)
!385 = !DILocation(line: 152, column: 2, scope: !382)
!386 = distinct !{!386, !387}
!387 = !DILocation(line: 152, column: 2, scope: !310)
!388 = !DILocation(line: 160, column: 2, scope: !310)
!389 = !DILocation(line: 161, column: 1, scope: !310)
!390 = distinct !DISubprogram(name: "channels_setup_init", scope: !35, file: !35, line: 212, type: !391, isLocal: false, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !72)
!391 = !DISubroutineType(types: !392)
!392 = !{null}
!393 = !DILocation(line: 214, column: 23, scope: !390)
!394 = !DILocation(line: 215, column: 17, scope: !390)
!395 = !DILocation(line: 217, column: 9, scope: !390)
!396 = !DILocation(line: 218, column: 9, scope: !390)
!397 = !DILocation(line: 219, column: 1, scope: !390)
!398 = distinct !DISubprogram(name: "channels_read_config", scope: !35, file: !35, line: 195, type: !391, isLocal: true, isDefinition: true, scopeLine: 196, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !72)
!399 = !DILocalVariable(name: "node", scope: !398, file: !35, line: 197, type: !100)
!400 = !DILocation(line: 197, column: 15, scope: !398)
!401 = !DILocalVariable(name: "tmp", scope: !398, file: !35, line: 198, type: !36)
!402 = !DILocation(line: 198, column: 10, scope: !398)
!403 = !DILocation(line: 200, column: 2, scope: !398)
!404 = !DILocation(line: 200, column: 9, scope: !405)
!405 = !DILexicalBlockFile(scope: !398, file: !35, discriminator: 1)
!406 = !DILocation(line: 200, column: 23, scope: !405)
!407 = !DILocation(line: 200, column: 2, scope: !405)
!408 = !DILocation(line: 201, column: 25, scope: !398)
!409 = !DILocation(line: 201, column: 40, scope: !398)
!410 = !DILocation(line: 201, column: 3, scope: !398)
!411 = !DILocation(line: 200, column: 2, scope: !412)
!412 = !DILexicalBlockFile(scope: !398, file: !35, discriminator: 2)
!413 = distinct !{!413, !403}
!414 = !DILocation(line: 204, column: 30, scope: !398)
!415 = !DILocation(line: 204, column: 9, scope: !398)
!416 = !DILocation(line: 204, column: 7, scope: !398)
!417 = !DILocation(line: 205, column: 6, scope: !418)
!418 = distinct !DILexicalBlock(scope: !398, file: !35, line: 205, column: 6)
!419 = !DILocation(line: 205, column: 11, scope: !418)
!420 = !DILocation(line: 205, column: 6, scope: !398)
!421 = !DILocation(line: 206, column: 27, scope: !422)
!422 = distinct !DILexicalBlock(scope: !418, file: !35, line: 205, column: 19)
!423 = !DILocation(line: 206, column: 33, scope: !422)
!424 = !DILocation(line: 206, column: 9, scope: !422)
!425 = !DILocation(line: 206, column: 7, scope: !422)
!426 = !DILocation(line: 207, column: 3, scope: !422)
!427 = !DILocation(line: 207, column: 10, scope: !428)
!428 = !DILexicalBlockFile(scope: !429, file: !35, discriminator: 1)
!429 = distinct !DILexicalBlock(scope: !430, file: !35, line: 207, column: 3)
!430 = distinct !DILexicalBlock(scope: !422, file: !35, line: 207, column: 3)
!431 = !DILocation(line: 207, column: 14, scope: !428)
!432 = !DILocation(line: 207, column: 3, scope: !428)
!433 = !DILocation(line: 208, column: 23, scope: !429)
!434 = !DILocation(line: 208, column: 28, scope: !429)
!435 = !DILocation(line: 208, column: 4, scope: !429)
!436 = !DILocation(line: 207, column: 45, scope: !437)
!437 = !DILexicalBlockFile(scope: !429, file: !35, discriminator: 2)
!438 = !DILocation(line: 207, column: 28, scope: !437)
!439 = !DILocation(line: 207, column: 26, scope: !437)
!440 = !DILocation(line: 207, column: 3, scope: !437)
!441 = distinct !{!441, !426}
!442 = !DILocation(line: 209, column: 2, scope: !422)
!443 = !DILocation(line: 210, column: 1, scope: !398)
!444 = distinct !DISubprogram(name: "channels_setup_deinit", scope: !35, file: !35, line: 221, type: !391, isLocal: false, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !72)
!445 = !DILocation(line: 223, column: 2, scope: !444)
!446 = !DILocation(line: 223, column: 9, scope: !447)
!447 = !DILexicalBlockFile(scope: !444, file: !35, discriminator: 1)
!448 = !DILocation(line: 223, column: 23, scope: !447)
!449 = !DILocation(line: 223, column: 2, scope: !447)
!450 = !DILocation(line: 224, column: 25, scope: !444)
!451 = !DILocation(line: 224, column: 40, scope: !444)
!452 = !DILocation(line: 224, column: 3, scope: !444)
!453 = !DILocation(line: 223, column: 2, scope: !454)
!454 = !DILexicalBlockFile(scope: !444, file: !35, discriminator: 2)
!455 = distinct !{!455, !445}
!456 = !DILocation(line: 226, column: 9, scope: !444)
!457 = !DILocation(line: 227, column: 9, scope: !444)
!458 = !DILocation(line: 228, column: 1, scope: !444)
!459 = distinct !DISubprogram(name: "compare_channel_setup", scope: !35, file: !35, line: 33, type: !460, isLocal: true, isDefinition: true, scopeLine: 34, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !72)
!460 = !DISubroutineType(types: !461)
!461 = !{!31, !100, !50}
!462 = !DILocalVariable(name: "node", arg: 1, scope: !459, file: !35, line: 33, type: !100)
!463 = !DILocation(line: 33, column: 48, scope: !459)
!464 = !DILocalVariable(name: "channel", arg: 2, scope: !459, file: !35, line: 33, type: !50)
!465 = !DILocation(line: 33, column: 73, scope: !459)
!466 = !DILocalVariable(name: "name", scope: !459, file: !35, line: 35, type: !60)
!467 = !DILocation(line: 35, column: 8, scope: !459)
!468 = !DILocalVariable(name: "chatnet", scope: !459, file: !35, line: 35, type: !60)
!469 = !DILocation(line: 35, column: 15, scope: !459)
!470 = !DILocation(line: 37, column: 29, scope: !459)
!471 = !DILocation(line: 37, column: 9, scope: !459)
!472 = !DILocation(line: 37, column: 7, scope: !459)
!473 = !DILocation(line: 38, column: 32, scope: !459)
!474 = !DILocation(line: 38, column: 12, scope: !459)
!475 = !DILocation(line: 38, column: 10, scope: !459)
!476 = !DILocation(line: 40, column: 6, scope: !477)
!477 = distinct !DILexicalBlock(scope: !459, file: !35, line: 40, column: 6)
!478 = !DILocation(line: 40, column: 11, scope: !477)
!479 = !DILocation(line: 40, column: 18, scope: !477)
!480 = !DILocation(line: 40, column: 21, scope: !481)
!481 = !DILexicalBlockFile(scope: !477, file: !35, discriminator: 1)
!482 = !DILocation(line: 40, column: 29, scope: !481)
!483 = !DILocation(line: 40, column: 6, scope: !481)
!484 = !DILocation(line: 41, column: 3, scope: !485)
!485 = distinct !DILexicalBlock(scope: !477, file: !35, line: 40, column: 38)
!486 = !DILocation(line: 44, column: 25, scope: !487)
!487 = distinct !DILexicalBlock(scope: !459, file: !35, line: 44, column: 6)
!488 = !DILocation(line: 44, column: 31, scope: !487)
!489 = !DILocation(line: 44, column: 40, scope: !487)
!490 = !DILocation(line: 44, column: 6, scope: !487)
!491 = !DILocation(line: 44, column: 46, scope: !487)
!492 = !DILocation(line: 44, column: 51, scope: !487)
!493 = !DILocation(line: 45, column: 25, scope: !487)
!494 = !DILocation(line: 45, column: 34, scope: !487)
!495 = !DILocation(line: 45, column: 43, scope: !487)
!496 = !DILocation(line: 45, column: 6, scope: !487)
!497 = !DILocation(line: 45, column: 52, scope: !487)
!498 = !DILocation(line: 44, column: 6, scope: !499)
!499 = !DILexicalBlockFile(scope: !459, file: !35, discriminator: 1)
!500 = !DILocation(line: 46, column: 3, scope: !501)
!501 = distinct !DILexicalBlock(scope: !487, file: !35, line: 45, column: 58)
!502 = !DILocation(line: 49, column: 2, scope: !459)
!503 = !DILocation(line: 50, column: 1, scope: !459)
!504 = distinct !DISubprogram(name: "channel_setup_read", scope: !35, file: !35, line: 163, type: !505, isLocal: true, isDefinition: true, scopeLine: 164, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !72)
!505 = !DISubroutineType(types: !506)
!506 = !{!50, !100}
!507 = !DILocalVariable(name: "node", arg: 1, scope: !504, file: !35, line: 163, type: !100)
!508 = !DILocation(line: 163, column: 59, scope: !504)
!509 = !DILocalVariable(name: "rec", scope: !504, file: !35, line: 165, type: !50)
!510 = !DILocation(line: 165, column: 21, scope: !504)
!511 = !DILocalVariable(name: "chatnetrec", scope: !504, file: !35, line: 166, type: !512)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64, align: 64)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHATNET_REC", file: !52, line: 106, baseType: !514)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHATNET_REC", file: !515, line: 13, size: 576, align: 64, elements: !516)
!515 = !DIFile(filename: "chatnets.h", directory: "/home/lichi/Desktop/irssi/task1")
!516 = !{!517, !519, !520, !521, !522, !523, !524, !525, !526, !530}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !514, file: !518, line: 1, baseType: !31, size: 32, align: 32)
!518 = !DIFile(filename: "chatnet-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!519 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !514, file: !518, line: 2, baseType: !31, size: 32, align: 32, offset: 32)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !514, file: !518, line: 4, baseType: !60, size: 64, align: 64, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !514, file: !518, line: 6, baseType: !60, size: 64, align: 64, offset: 128)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !514, file: !518, line: 7, baseType: !60, size: 64, align: 64, offset: 192)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !514, file: !518, line: 8, baseType: !60, size: 64, align: 64, offset: 256)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "own_host", scope: !514, file: !518, line: 10, baseType: !60, size: 64, align: 64, offset: 320)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "autosendcmd", scope: !514, file: !518, line: 11, baseType: !60, size: 64, align: 64, offset: 384)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !514, file: !518, line: 12, baseType: !527, size: 64, align: 64, offset: 448)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64, align: 64)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !52, line: 99, baseType: !529)
!529 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !52, line: 99, flags: DIFlagFwdDecl)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !514, file: !518, line: 12, baseType: !527, size: 64, align: 64, offset: 512)
!531 = !DILocation(line: 166, column: 22, scope: !504)
!532 = !DILocalVariable(name: "channel", scope: !504, file: !35, line: 167, type: !60)
!533 = !DILocation(line: 167, column: 8, scope: !504)
!534 = !DILocalVariable(name: "chatnet", scope: !504, file: !35, line: 167, type: !60)
!535 = !DILocation(line: 167, column: 18, scope: !504)
!536 = !DILocation(line: 169, column: 2, scope: !504)
!537 = distinct !{!537, !536}
!538 = !DILocation(line: 169, column: 10, scope: !539)
!539 = !DILexicalBlockFile(scope: !540, file: !35, discriminator: 1)
!540 = distinct !DILexicalBlock(scope: !541, file: !35, line: 169, column: 10)
!541 = distinct !DILexicalBlock(scope: !504, file: !35, line: 169, column: 4)
!542 = !DILocation(line: 169, column: 15, scope: !539)
!543 = !DILocation(line: 169, column: 5, scope: !544)
!544 = !DILexicalBlockFile(scope: !545, file: !35, discriminator: 2)
!545 = distinct !DILexicalBlock(scope: !540, file: !35, line: 169, column: 3)
!546 = !DILocation(line: 169, column: 14, scope: !547)
!547 = !DILexicalBlockFile(scope: !548, file: !35, discriminator: 3)
!548 = distinct !DILexicalBlock(scope: !540, file: !35, line: 169, column: 12)
!549 = !DILocation(line: 169, column: 99, scope: !547)
!550 = !DILocation(line: 169, column: 7, scope: !551)
!551 = !DILexicalBlockFile(scope: !541, file: !35, discriminator: 4)
!552 = !DILocation(line: 171, column: 32, scope: !504)
!553 = !DILocation(line: 171, column: 12, scope: !504)
!554 = !DILocation(line: 171, column: 10, scope: !504)
!555 = !DILocation(line: 172, column: 39, scope: !504)
!556 = !DILocation(line: 172, column: 19, scope: !504)
!557 = !DILocation(line: 172, column: 17, scope: !504)
!558 = !DILocation(line: 174, column: 15, scope: !504)
!559 = !DILocation(line: 174, column: 23, scope: !504)
!560 = !DILocation(line: 174, column: 15, scope: !561)
!561 = !DILexicalBlockFile(scope: !504, file: !35, discriminator: 1)
!562 = !DILocation(line: 174, column: 52, scope: !563)
!563 = !DILexicalBlockFile(scope: !504, file: !35, discriminator: 2)
!564 = !DILocation(line: 174, column: 39, scope: !563)
!565 = !DILocation(line: 174, column: 15, scope: !563)
!566 = !DILocation(line: 174, column: 15, scope: !567)
!567 = !DILexicalBlockFile(scope: !504, file: !35, discriminator: 3)
!568 = !DILocation(line: 174, column: 13, scope: !567)
!569 = !DILocation(line: 175, column: 6, scope: !570)
!570 = distinct !DILexicalBlock(scope: !504, file: !35, line: 175, column: 6)
!571 = !DILocation(line: 175, column: 14, scope: !570)
!572 = !DILocation(line: 175, column: 21, scope: !570)
!573 = !DILocation(line: 175, column: 24, scope: !574)
!574 = !DILexicalBlockFile(scope: !570, file: !35, discriminator: 1)
!575 = !DILocation(line: 175, column: 35, scope: !574)
!576 = !DILocation(line: 175, column: 6, scope: !574)
!577 = !DILocation(line: 177, column: 3, scope: !578)
!578 = distinct !DILexicalBlock(scope: !570, file: !35, line: 175, column: 44)
!579 = !DILocation(line: 180, column: 10, scope: !504)
!580 = !DILocation(line: 180, column: 22, scope: !504)
!581 = !DILocation(line: 180, column: 9, scope: !504)
!582 = !DILocation(line: 180, column: 9, scope: !561)
!583 = !DILocation(line: 180, column: 62, scope: !563)
!584 = !DILocation(line: 180, column: 75, scope: !563)
!585 = !DILocation(line: 180, column: 39, scope: !563)
!586 = !DILocation(line: 180, column: 9, scope: !563)
!587 = !DILocation(line: 180, column: 9, scope: !567)
!588 = !DILocation(line: 180, column: 88, scope: !567)
!589 = !DILocation(line: 180, column: 8, scope: !567)
!590 = !DILocation(line: 180, column: 6, scope: !567)
!591 = !DILocation(line: 181, column: 14, scope: !504)
!592 = !DILocation(line: 181, column: 2, scope: !504)
!593 = !DILocation(line: 181, column: 7, scope: !504)
!594 = !DILocation(line: 181, column: 12, scope: !504)
!595 = !DILocation(line: 182, column: 21, scope: !504)
!596 = !DILocation(line: 182, column: 33, scope: !504)
!597 = !DILocation(line: 182, column: 20, scope: !504)
!598 = !DILocation(line: 182, column: 20, scope: !561)
!599 = !DILocation(line: 182, column: 73, scope: !563)
!600 = !DILocation(line: 182, column: 86, scope: !563)
!601 = !DILocation(line: 182, column: 50, scope: !563)
!602 = !DILocation(line: 182, column: 20, scope: !563)
!603 = !DILocation(line: 182, column: 20, scope: !567)
!604 = !DILocation(line: 182, column: 99, scope: !567)
!605 = !DILocation(line: 182, column: 2, scope: !567)
!606 = !DILocation(line: 182, column: 7, scope: !567)
!607 = !DILocation(line: 182, column: 17, scope: !567)
!608 = !DILocation(line: 183, column: 39, scope: !504)
!609 = !DILocation(line: 183, column: 18, scope: !504)
!610 = !DILocation(line: 183, column: 2, scope: !504)
!611 = !DILocation(line: 183, column: 7, scope: !504)
!612 = !DILocation(line: 183, column: 16, scope: !504)
!613 = !DILocation(line: 184, column: 23, scope: !504)
!614 = !DILocation(line: 184, column: 14, scope: !504)
!615 = !DILocation(line: 184, column: 2, scope: !504)
!616 = !DILocation(line: 184, column: 7, scope: !504)
!617 = !DILocation(line: 184, column: 12, scope: !504)
!618 = !DILocation(line: 185, column: 26, scope: !504)
!619 = !DILocation(line: 185, column: 37, scope: !504)
!620 = !DILocation(line: 185, column: 46, scope: !561)
!621 = !DILocation(line: 185, column: 58, scope: !561)
!622 = !DILocation(line: 185, column: 26, scope: !561)
!623 = !DILocation(line: 185, column: 65, scope: !563)
!624 = !DILocation(line: 185, column: 26, scope: !563)
!625 = !DILocation(line: 185, column: 26, scope: !567)
!626 = !DILocation(line: 185, column: 17, scope: !567)
!627 = !DILocation(line: 185, column: 2, scope: !567)
!628 = !DILocation(line: 185, column: 7, scope: !567)
!629 = !DILocation(line: 185, column: 15, scope: !567)
!630 = !DILocation(line: 186, column: 47, scope: !504)
!631 = !DILocation(line: 186, column: 27, scope: !504)
!632 = !DILocation(line: 186, column: 18, scope: !561)
!633 = !DILocation(line: 186, column: 2, scope: !504)
!634 = !DILocation(line: 186, column: 7, scope: !504)
!635 = !DILocation(line: 186, column: 16, scope: !504)
!636 = !DILocation(line: 187, column: 47, scope: !504)
!637 = !DILocation(line: 187, column: 27, scope: !504)
!638 = !DILocation(line: 187, column: 18, scope: !561)
!639 = !DILocation(line: 187, column: 2, scope: !504)
!640 = !DILocation(line: 187, column: 7, scope: !504)
!641 = !DILocation(line: 187, column: 16, scope: !504)
!642 = !DILocation(line: 188, column: 50, scope: !504)
!643 = !DILocation(line: 188, column: 30, scope: !504)
!644 = !DILocation(line: 188, column: 21, scope: !561)
!645 = !DILocation(line: 188, column: 2, scope: !504)
!646 = !DILocation(line: 188, column: 7, scope: !504)
!647 = !DILocation(line: 188, column: 19, scope: !504)
!648 = !DILocation(line: 190, column: 33, scope: !504)
!649 = !DILocation(line: 190, column: 48, scope: !504)
!650 = !DILocation(line: 190, column: 18, scope: !504)
!651 = !DILocation(line: 190, column: 16, scope: !504)
!652 = !DILocation(line: 191, column: 42, scope: !504)
!653 = !DILocation(line: 191, column: 47, scope: !504)
!654 = !DILocation(line: 191, column: 2, scope: !504)
!655 = !DILocation(line: 192, column: 9, scope: !504)
!656 = !DILocation(line: 192, column: 2, scope: !504)
!657 = !DILocation(line: 193, column: 1, scope: !504)
