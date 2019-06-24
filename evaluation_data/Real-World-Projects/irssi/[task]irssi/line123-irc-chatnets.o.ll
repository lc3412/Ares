; ModuleID = './line123-irc-chatnets.o.i'
source_filename = "./line123-irc-chatnets.o.i"
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
%struct._IRC_CHATNET_REC = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IPADDR*, %struct._IPADDR*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct._IPADDR = type opaque
%struct._CHATNET_REC = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IPADDR*, %struct._IPADDR* }

@__func__.ircnet_create = private unnamed_addr constant [14 x i8] c"ircnet_create\00", align 1
@.str = private unnamed_addr constant [12 x i8] c"rec != NULL\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"IRC\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"irc/core\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"chatnet read\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"chatnet saved\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"chatnet destroyed\00", align 1
@chatnets = external global %struct._GSList*, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"CHATNET\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"usermode\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"alternate_nick\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"cmdmax\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"cmdspeed\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"max_query_chans\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"max_kicks\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"max_msgs\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"max_modes\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"max_whois\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"sasl_mechanism\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"sasl_username\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"sasl_password\00", align 1
@mainconfig = external global %struct._CONFIG_REC*, align 8

; Function Attrs: nounwind uwtable
define void @ircnet_create(%struct._IRC_CHATNET_REC*) #0 !dbg !71 {
  %2 = alloca %struct._IRC_CHATNET_REC*, align 8
  store %struct._IRC_CHATNET_REC* %0, %struct._IRC_CHATNET_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_CHATNET_REC** %2, metadata !75, metadata !76), !dbg !77
  br label %3, !dbg !78, !llvm.loop !79

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %2, align 8, !dbg !80
  %5 = icmp ne %struct._IRC_CHATNET_REC* %4, null, !dbg !84
  br i1 %5, label %6, label %7, !dbg !80

; <label>:6:                                      ; preds = %3
  br label %8, !dbg !85

; <label>:7:                                      ; preds = %3
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.ircnet_create, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0)), !dbg !88
  br label %15, !dbg !91

; <label>:8:                                      ; preds = %6
  br label %9, !dbg !92

; <label>:9:                                      ; preds = %8
  %10 = call i32 @chat_protocol_lookup(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)), !dbg !94
  %11 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %2, align 8, !dbg !95
  %12 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %11, i32 0, i32 1, !dbg !96
  store i32 %10, i32* %12, align 4, !dbg !97
  %13 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %2, align 8, !dbg !98
  %14 = bitcast %struct._IRC_CHATNET_REC* %13 to %struct._CHATNET_REC*, !dbg !99
  call void @chatnet_create(%struct._CHATNET_REC* %14), !dbg !100
  br label %15, !dbg !101

; <label>:15:                                     ; preds = %9, %7
  ret void, !dbg !102
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare i32 @chat_protocol_lookup(i8*) #2

declare void @chatnet_create(%struct._CHATNET_REC*) #2

; Function Attrs: nounwind uwtable
define void @irc_chatnets_init() #0 !dbg !104 {
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_CHATNET_REC*, %struct._CONFIG_NODE*)* @sig_chatnet_read to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !107
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_CHATNET_REC*, %struct._CONFIG_NODE*)* @sig_chatnet_saved to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !108
  call void @signal_add_full(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_CHATNET_REC*)* @sig_chatnet_destroyed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !109
  ret void, !dbg !110
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @sig_chatnet_read(%struct._IRC_CHATNET_REC*, %struct._CONFIG_NODE*) #0 !dbg !111 {
  %3 = alloca %struct._IRC_CHATNET_REC*, align 8
  %4 = alloca %struct._CONFIG_NODE*, align 8
  %5 = alloca i8*, align 8
  store %struct._IRC_CHATNET_REC* %0, %struct._IRC_CHATNET_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_CHATNET_REC** %3, metadata !122, metadata !76), !dbg !123
  store %struct._CONFIG_NODE* %1, %struct._CONFIG_NODE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %4, metadata !124, metadata !76), !dbg !125
  call void @llvm.dbg.declare(metadata i8** %5, metadata !126, metadata !76), !dbg !127
  %6 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !128
  %7 = bitcast %struct._IRC_CHATNET_REC* %6 to i8*, !dbg !128
  %8 = call i8* @module_check_cast(i8* %7, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0)), !dbg !130
  %9 = bitcast i8* %8 to %struct._CHATNET_REC*, !dbg !131
  %10 = bitcast %struct._CHATNET_REC* %9 to i8*, !dbg !132
  %11 = call i8* @chat_protocol_check_cast(i8* %10, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)), !dbg !133
  %12 = bitcast i8* %11 to %struct._IRC_CHATNET_REC*, !dbg !135
  %13 = icmp ne %struct._IRC_CHATNET_REC* %12, null, !dbg !135
  br i1 %13, label %14, label %15, !dbg !136

; <label>:14:                                     ; preds = %2
  br i1 false, label %16, label %17, !dbg !137

; <label>:15:                                     ; preds = %2
  br i1 false, label %17, label %16, !dbg !139

; <label>:16:                                     ; preds = %15, %14
  br label %95, !dbg !141

; <label>:17:                                     ; preds = %15, %14
  %18 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !142
  %19 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* null), !dbg !143
  store i8* %19, i8** %5, align 8, !dbg !144
  %20 = load i8*, i8** %5, align 8, !dbg !145
  %21 = icmp ne i8* %20, null, !dbg !146
  br i1 %21, label %22, label %30, !dbg !147

; <label>:22:                                     ; preds = %17
  %23 = load i8*, i8** %5, align 8, !dbg !148
  %24 = load i8, i8* %23, align 1, !dbg !150
  %25 = sext i8 %24 to i32, !dbg !150
  %26 = icmp ne i32 %25, 0, !dbg !151
  br i1 %26, label %27, label %30, !dbg !152

; <label>:27:                                     ; preds = %22
  %28 = load i8*, i8** %5, align 8, !dbg !153
  %29 = call noalias i8* @g_strdup(i8* %28), !dbg !154
  br label %31, !dbg !155

; <label>:30:                                     ; preds = %22, %17
  br label %31, !dbg !156

; <label>:31:                                     ; preds = %30, %27
  %32 = phi i8* [ %29, %27 ], [ null, %30 ], !dbg !158
  %33 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !160
  %34 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %33, i32 0, i32 10, !dbg !161
  store i8* %32, i8** %34, align 8, !dbg !162
  %35 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !163
  %36 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i8* null), !dbg !164
  store i8* %36, i8** %5, align 8, !dbg !165
  %37 = load i8*, i8** %5, align 8, !dbg !166
  %38 = icmp ne i8* %37, null, !dbg !167
  br i1 %38, label %39, label %47, !dbg !168

; <label>:39:                                     ; preds = %31
  %40 = load i8*, i8** %5, align 8, !dbg !169
  %41 = load i8, i8* %40, align 1, !dbg !170
  %42 = sext i8 %41 to i32, !dbg !170
  %43 = icmp ne i32 %42, 0, !dbg !171
  br i1 %43, label %44, label %47, !dbg !172

; <label>:44:                                     ; preds = %39
  %45 = load i8*, i8** %5, align 8, !dbg !173
  %46 = call noalias i8* @g_strdup(i8* %45), !dbg !174
  br label %48, !dbg !175

; <label>:47:                                     ; preds = %39, %31
  br label %48, !dbg !176

; <label>:48:                                     ; preds = %47, %44
  %49 = phi i8* [ %46, %44 ], [ null, %47 ], !dbg !177
  %50 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !178
  %51 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %50, i32 0, i32 11, !dbg !179
  store i8* %49, i8** %51, align 8, !dbg !180
  %52 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !181
  %53 = call i32 @config_node_get_int(%struct._CONFIG_NODE* %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i32 0), !dbg !182
  %54 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !183
  %55 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %54, i32 0, i32 15, !dbg !184
  store i32 %53, i32* %55, align 8, !dbg !185
  %56 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !186
  %57 = call i32 @config_node_get_int(%struct._CONFIG_NODE* %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 0), !dbg !187
  %58 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !188
  %59 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %58, i32 0, i32 16, !dbg !189
  store i32 %57, i32* %59, align 4, !dbg !190
  %60 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !191
  %61 = call i32 @config_node_get_int(%struct._CONFIG_NODE* %60, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i32 0), !dbg !192
  %62 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !193
  %63 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %62, i32 0, i32 17, !dbg !194
  store i32 %61, i32* %63, align 8, !dbg !195
  %64 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !196
  %65 = call i32 @config_node_get_int(%struct._CONFIG_NODE* %64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i32 0), !dbg !197
  %66 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !198
  %67 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %66, i32 0, i32 18, !dbg !199
  store i32 %65, i32* %67, align 4, !dbg !200
  %68 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !201
  %69 = call i32 @config_node_get_int(%struct._CONFIG_NODE* %68, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 0), !dbg !202
  %70 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !203
  %71 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %70, i32 0, i32 19, !dbg !204
  store i32 %69, i32* %71, align 8, !dbg !205
  %72 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !206
  %73 = call i32 @config_node_get_int(%struct._CONFIG_NODE* %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i32 0), !dbg !207
  %74 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !208
  %75 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %74, i32 0, i32 20, !dbg !209
  store i32 %73, i32* %75, align 4, !dbg !210
  %76 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !211
  %77 = call i32 @config_node_get_int(%struct._CONFIG_NODE* %76, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i32 0), !dbg !212
  %78 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !213
  %79 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %78, i32 0, i32 21, !dbg !214
  store i32 %77, i32* %79, align 8, !dbg !215
  %80 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !216
  %81 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %80, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8* null), !dbg !217
  %82 = call noalias i8* @g_strdup(i8* %81), !dbg !218
  %83 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !219
  %84 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %83, i32 0, i32 12, !dbg !220
  store i8* %82, i8** %84, align 8, !dbg !221
  %85 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !222
  %86 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %85, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i8* null), !dbg !223
  %87 = call noalias i8* @g_strdup(i8* %86), !dbg !224
  %88 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !225
  %89 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %88, i32 0, i32 13, !dbg !226
  store i8* %87, i8** %89, align 8, !dbg !227
  %90 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !228
  %91 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %90, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i8* null), !dbg !229
  %92 = call noalias i8* @g_strdup(i8* %91), !dbg !230
  %93 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !231
  %94 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %93, i32 0, i32 14, !dbg !232
  store i8* %92, i8** %94, align 8, !dbg !233
  br label %95, !dbg !234

; <label>:95:                                     ; preds = %48, %16
  ret void, !dbg !235
}

; Function Attrs: nounwind uwtable
define internal void @sig_chatnet_saved(%struct._IRC_CHATNET_REC*, %struct._CONFIG_NODE*) #0 !dbg !236 {
  %3 = alloca %struct._IRC_CHATNET_REC*, align 8
  %4 = alloca %struct._CONFIG_NODE*, align 8
  store %struct._IRC_CHATNET_REC* %0, %struct._IRC_CHATNET_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_CHATNET_REC** %3, metadata !237, metadata !76), !dbg !238
  store %struct._CONFIG_NODE* %1, %struct._CONFIG_NODE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %4, metadata !239, metadata !76), !dbg !240
  %5 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !241
  %6 = bitcast %struct._IRC_CHATNET_REC* %5 to i8*, !dbg !241
  %7 = call i8* @module_check_cast(i8* %6, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0)), !dbg !243
  %8 = bitcast i8* %7 to %struct._CHATNET_REC*, !dbg !244
  %9 = bitcast %struct._CHATNET_REC* %8 to i8*, !dbg !245
  %10 = call i8* @chat_protocol_check_cast(i8* %9, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)), !dbg !246
  %11 = bitcast i8* %10 to %struct._IRC_CHATNET_REC*, !dbg !248
  %12 = icmp ne %struct._IRC_CHATNET_REC* %11, null, !dbg !248
  br i1 %12, label %13, label %14, !dbg !249

; <label>:13:                                     ; preds = %2
  br i1 false, label %15, label %16, !dbg !250

; <label>:14:                                     ; preds = %2
  br i1 false, label %16, label %15, !dbg !252

; <label>:15:                                     ; preds = %14, %13
  br label %148, !dbg !254

; <label>:16:                                     ; preds = %14, %13
  %17 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !255
  %18 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %17, i32 0, i32 10, !dbg !257
  %19 = load i8*, i8** %18, align 8, !dbg !257
  %20 = icmp ne i8* %19, null, !dbg !258
  br i1 %20, label %21, label %27, !dbg !259

; <label>:21:                                     ; preds = %16
  %22 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !260
  %23 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !261
  %24 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !262
  %25 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %24, i32 0, i32 10, !dbg !263
  %26 = load i8*, i8** %25, align 8, !dbg !263
  call void @config_node_set_str(%struct._CONFIG_REC* %22, %struct._CONFIG_NODE* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i8* %26), !dbg !264
  br label %27, !dbg !264

; <label>:27:                                     ; preds = %21, %16
  %28 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !265
  %29 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %28, i32 0, i32 11, !dbg !267
  %30 = load i8*, i8** %29, align 8, !dbg !267
  %31 = icmp ne i8* %30, null, !dbg !268
  br i1 %31, label %32, label %38, !dbg !269

; <label>:32:                                     ; preds = %27
  %33 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !270
  %34 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !271
  %35 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !272
  %36 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %35, i32 0, i32 11, !dbg !273
  %37 = load i8*, i8** %36, align 8, !dbg !273
  call void @config_node_set_str(%struct._CONFIG_REC* %33, %struct._CONFIG_NODE* %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i8* %37), !dbg !274
  br label %38, !dbg !274

; <label>:38:                                     ; preds = %32, %27
  %39 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !275
  %40 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %39, i32 0, i32 15, !dbg !277
  %41 = load i32, i32* %40, align 8, !dbg !277
  %42 = icmp sgt i32 %41, 0, !dbg !278
  br i1 %42, label %43, label %49, !dbg !279

; <label>:43:                                     ; preds = %38
  %44 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !280
  %45 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !281
  %46 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !282
  %47 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %46, i32 0, i32 15, !dbg !283
  %48 = load i32, i32* %47, align 8, !dbg !283
  call void @config_node_set_int(%struct._CONFIG_REC* %44, %struct._CONFIG_NODE* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i32 %48), !dbg !284
  br label %49, !dbg !284

; <label>:49:                                     ; preds = %43, %38
  %50 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !285
  %51 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %50, i32 0, i32 16, !dbg !287
  %52 = load i32, i32* %51, align 4, !dbg !287
  %53 = icmp sgt i32 %52, 0, !dbg !288
  br i1 %53, label %54, label %60, !dbg !289

; <label>:54:                                     ; preds = %49
  %55 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !290
  %56 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !291
  %57 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !292
  %58 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %57, i32 0, i32 16, !dbg !293
  %59 = load i32, i32* %58, align 4, !dbg !293
  call void @config_node_set_int(%struct._CONFIG_REC* %55, %struct._CONFIG_NODE* %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 %59), !dbg !294
  br label %60, !dbg !294

; <label>:60:                                     ; preds = %54, %49
  %61 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !295
  %62 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %61, i32 0, i32 17, !dbg !297
  %63 = load i32, i32* %62, align 8, !dbg !297
  %64 = icmp sgt i32 %63, 0, !dbg !298
  br i1 %64, label %65, label %71, !dbg !299

; <label>:65:                                     ; preds = %60
  %66 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !300
  %67 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !301
  %68 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !302
  %69 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %68, i32 0, i32 17, !dbg !303
  %70 = load i32, i32* %69, align 8, !dbg !303
  call void @config_node_set_int(%struct._CONFIG_REC* %66, %struct._CONFIG_NODE* %67, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i32 %70), !dbg !304
  br label %71, !dbg !304

; <label>:71:                                     ; preds = %65, %60
  %72 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !305
  %73 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %72, i32 0, i32 18, !dbg !307
  %74 = load i32, i32* %73, align 4, !dbg !307
  %75 = icmp sgt i32 %74, 0, !dbg !308
  br i1 %75, label %76, label %82, !dbg !309

; <label>:76:                                     ; preds = %71
  %77 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !310
  %78 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !311
  %79 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !312
  %80 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %79, i32 0, i32 18, !dbg !313
  %81 = load i32, i32* %80, align 4, !dbg !313
  call void @config_node_set_int(%struct._CONFIG_REC* %77, %struct._CONFIG_NODE* %78, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i32 %81), !dbg !314
  br label %82, !dbg !314

; <label>:82:                                     ; preds = %76, %71
  %83 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !315
  %84 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %83, i32 0, i32 19, !dbg !317
  %85 = load i32, i32* %84, align 8, !dbg !317
  %86 = icmp sgt i32 %85, 0, !dbg !318
  br i1 %86, label %87, label %93, !dbg !319

; <label>:87:                                     ; preds = %82
  %88 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !320
  %89 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !321
  %90 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !322
  %91 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %90, i32 0, i32 19, !dbg !323
  %92 = load i32, i32* %91, align 8, !dbg !323
  call void @config_node_set_int(%struct._CONFIG_REC* %88, %struct._CONFIG_NODE* %89, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 %92), !dbg !324
  br label %93, !dbg !324

; <label>:93:                                     ; preds = %87, %82
  %94 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !325
  %95 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %94, i32 0, i32 20, !dbg !327
  %96 = load i32, i32* %95, align 4, !dbg !327
  %97 = icmp sgt i32 %96, 0, !dbg !328
  br i1 %97, label %98, label %104, !dbg !329

; <label>:98:                                     ; preds = %93
  %99 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !330
  %100 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !331
  %101 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !332
  %102 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %101, i32 0, i32 20, !dbg !333
  %103 = load i32, i32* %102, align 4, !dbg !333
  call void @config_node_set_int(%struct._CONFIG_REC* %99, %struct._CONFIG_NODE* %100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i32 %103), !dbg !334
  br label %104, !dbg !334

; <label>:104:                                    ; preds = %98, %93
  %105 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !335
  %106 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %105, i32 0, i32 21, !dbg !337
  %107 = load i32, i32* %106, align 8, !dbg !337
  %108 = icmp sgt i32 %107, 0, !dbg !338
  br i1 %108, label %109, label %115, !dbg !339

; <label>:109:                                    ; preds = %104
  %110 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !340
  %111 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !341
  %112 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !342
  %113 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %112, i32 0, i32 21, !dbg !343
  %114 = load i32, i32* %113, align 8, !dbg !343
  call void @config_node_set_int(%struct._CONFIG_REC* %110, %struct._CONFIG_NODE* %111, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i32 %114), !dbg !344
  br label %115, !dbg !344

; <label>:115:                                    ; preds = %109, %104
  %116 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !345
  %117 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %116, i32 0, i32 12, !dbg !347
  %118 = load i8*, i8** %117, align 8, !dbg !347
  %119 = icmp ne i8* %118, null, !dbg !348
  br i1 %119, label %120, label %126, !dbg !349

; <label>:120:                                    ; preds = %115
  %121 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !350
  %122 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !351
  %123 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !352
  %124 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %123, i32 0, i32 12, !dbg !353
  %125 = load i8*, i8** %124, align 8, !dbg !353
  call void @config_node_set_str(%struct._CONFIG_REC* %121, %struct._CONFIG_NODE* %122, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0), i8* %125), !dbg !354
  br label %126, !dbg !354

; <label>:126:                                    ; preds = %120, %115
  %127 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !355
  %128 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %127, i32 0, i32 13, !dbg !357
  %129 = load i8*, i8** %128, align 8, !dbg !357
  %130 = icmp ne i8* %129, null, !dbg !358
  br i1 %130, label %131, label %137, !dbg !359

; <label>:131:                                    ; preds = %126
  %132 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !360
  %133 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !361
  %134 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !362
  %135 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %134, i32 0, i32 13, !dbg !363
  %136 = load i8*, i8** %135, align 8, !dbg !363
  call void @config_node_set_str(%struct._CONFIG_REC* %132, %struct._CONFIG_NODE* %133, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i8* %136), !dbg !364
  br label %137, !dbg !364

; <label>:137:                                    ; preds = %131, %126
  %138 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !365
  %139 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %138, i32 0, i32 14, !dbg !367
  %140 = load i8*, i8** %139, align 8, !dbg !367
  %141 = icmp ne i8* %140, null, !dbg !368
  br i1 %141, label %142, label %148, !dbg !369

; <label>:142:                                    ; preds = %137
  %143 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !370
  %144 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !371
  %145 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %3, align 8, !dbg !372
  %146 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %145, i32 0, i32 14, !dbg !373
  %147 = load i8*, i8** %146, align 8, !dbg !373
  call void @config_node_set_str(%struct._CONFIG_REC* %143, %struct._CONFIG_NODE* %144, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i8* %147), !dbg !374
  br label %148, !dbg !374

; <label>:148:                                    ; preds = %15, %142, %137
  ret void, !dbg !375
}

; Function Attrs: nounwind uwtable
define internal void @sig_chatnet_destroyed(%struct._IRC_CHATNET_REC*) #0 !dbg !376 {
  %2 = alloca %struct._IRC_CHATNET_REC*, align 8
  store %struct._IRC_CHATNET_REC* %0, %struct._IRC_CHATNET_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._IRC_CHATNET_REC** %2, metadata !377, metadata !76), !dbg !378
  %3 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %2, align 8, !dbg !379
  %4 = bitcast %struct._IRC_CHATNET_REC* %3 to i8*, !dbg !379
  %5 = call i8* @module_check_cast(i8* %4, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0)), !dbg !381
  %6 = bitcast i8* %5 to %struct._CHATNET_REC*, !dbg !382
  %7 = bitcast %struct._CHATNET_REC* %6 to i8*, !dbg !383
  %8 = call i8* @chat_protocol_check_cast(i8* %7, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)), !dbg !384
  %9 = bitcast i8* %8 to %struct._IRC_CHATNET_REC*, !dbg !386
  %10 = icmp ne %struct._IRC_CHATNET_REC* %9, null, !dbg !386
  br i1 %10, label %11, label %12, !dbg !387

; <label>:11:                                     ; preds = %1
  br i1 false, label %29, label %13, !dbg !388

; <label>:12:                                     ; preds = %1
  br i1 false, label %13, label %29, !dbg !390

; <label>:13:                                     ; preds = %12, %11
  %14 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %2, align 8, !dbg !392
  %15 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %14, i32 0, i32 10, !dbg !394
  %16 = load i8*, i8** %15, align 8, !dbg !394
  call void @g_free(i8* %16), !dbg !395
  %17 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %2, align 8, !dbg !396
  %18 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %17, i32 0, i32 11, !dbg !397
  %19 = load i8*, i8** %18, align 8, !dbg !397
  call void @g_free(i8* %19), !dbg !398
  %20 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %2, align 8, !dbg !399
  %21 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %20, i32 0, i32 12, !dbg !400
  %22 = load i8*, i8** %21, align 8, !dbg !400
  call void @g_free(i8* %22), !dbg !401
  %23 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %2, align 8, !dbg !402
  %24 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %23, i32 0, i32 13, !dbg !403
  %25 = load i8*, i8** %24, align 8, !dbg !403
  call void @g_free(i8* %25), !dbg !404
  %26 = load %struct._IRC_CHATNET_REC*, %struct._IRC_CHATNET_REC** %2, align 8, !dbg !405
  %27 = getelementptr inbounds %struct._IRC_CHATNET_REC, %struct._IRC_CHATNET_REC* %26, i32 0, i32 14, !dbg !406
  %28 = load i8*, i8** %27, align 8, !dbg !406
  call void @g_free(i8* %28), !dbg !407
  br label %29, !dbg !408

; <label>:29:                                     ; preds = %13, %12, %11
  ret void, !dbg !409
}

; Function Attrs: nounwind uwtable
define void @irc_chatnets_deinit() #0 !dbg !410 {
  %1 = alloca %struct._GSList*, align 8
  %2 = alloca %struct._GSList*, align 8
  %3 = alloca %struct._CHATNET_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct._GSList** %1, metadata !411, metadata !76), !dbg !420
  call void @llvm.dbg.declare(metadata %struct._GSList** %2, metadata !421, metadata !76), !dbg !422
  %4 = load %struct._GSList*, %struct._GSList** @chatnets, align 8, !dbg !423
  store %struct._GSList* %4, %struct._GSList** %1, align 8, !dbg !425
  br label %5, !dbg !426

; <label>:5:                                      ; preds = %29, %0
  %6 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !427
  %7 = icmp ne %struct._GSList* %6, null, !dbg !430
  br i1 %7, label %8, label %31, !dbg !431

; <label>:8:                                      ; preds = %5
  call void @llvm.dbg.declare(metadata %struct._CHATNET_REC** %3, metadata !432, metadata !76), !dbg !434
  %9 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !435
  %10 = getelementptr inbounds %struct._GSList, %struct._GSList* %9, i32 0, i32 0, !dbg !436
  %11 = load i8*, i8** %10, align 8, !dbg !436
  %12 = bitcast i8* %11 to %struct._CHATNET_REC*, !dbg !435
  store %struct._CHATNET_REC* %12, %struct._CHATNET_REC** %3, align 8, !dbg !434
  %13 = load %struct._GSList*, %struct._GSList** %1, align 8, !dbg !437
  %14 = getelementptr inbounds %struct._GSList, %struct._GSList* %13, i32 0, i32 1, !dbg !438
  %15 = load %struct._GSList*, %struct._GSList** %14, align 8, !dbg !438
  store %struct._GSList* %15, %struct._GSList** %2, align 8, !dbg !439
  %16 = load %struct._CHATNET_REC*, %struct._CHATNET_REC** %3, align 8, !dbg !440
  %17 = bitcast %struct._CHATNET_REC* %16 to i8*, !dbg !440
  %18 = call i8* @module_check_cast(i8* %17, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0)), !dbg !442
  %19 = bitcast i8* %18 to %struct._CHATNET_REC*, !dbg !443
  %20 = bitcast %struct._CHATNET_REC* %19 to i8*, !dbg !444
  %21 = call i8* @chat_protocol_check_cast(i8* %20, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)), !dbg !445
  %22 = bitcast i8* %21 to %struct._IRC_CHATNET_REC*, !dbg !447
  %23 = icmp ne %struct._IRC_CHATNET_REC* %22, null, !dbg !447
  br i1 %23, label %24, label %25, !dbg !448

; <label>:24:                                     ; preds = %8
  br i1 false, label %28, label %26, !dbg !449

; <label>:25:                                     ; preds = %8
  br i1 false, label %26, label %28, !dbg !451

; <label>:26:                                     ; preds = %25, %24
  %27 = load %struct._CHATNET_REC*, %struct._CHATNET_REC** %3, align 8, !dbg !453
  call void @chatnet_destroy(%struct._CHATNET_REC* %27), !dbg !454
  br label %28, !dbg !454

; <label>:28:                                     ; preds = %26, %25, %24
  br label %29, !dbg !455

; <label>:29:                                     ; preds = %28
  %30 = load %struct._GSList*, %struct._GSList** %2, align 8, !dbg !456
  store %struct._GSList* %30, %struct._GSList** %1, align 8, !dbg !458
  br label %5, !dbg !459, !llvm.loop !460

; <label>:31:                                     ; preds = %5
  call void @signal_remove_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_CHATNET_REC*, %struct._CONFIG_NODE*)* @sig_chatnet_read to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !462
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_CHATNET_REC*, %struct._CONFIG_NODE*)* @sig_chatnet_saved to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !463
  call void @signal_remove_full(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (%struct._IRC_CHATNET_REC*)* @sig_chatnet_destroyed to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !464
  ret void, !dbg !465
}

declare i8* @chat_protocol_check_cast(i8*, i32, i8*) #2

declare i8* @module_check_cast(i8*, i32, i8*) #2

declare void @chatnet_destroy(%struct._CHATNET_REC*) #2

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare i8* @config_node_get_str(%struct._CONFIG_NODE*, i8*, i8*) #2

declare noalias i8* @g_strdup(i8*) #2

declare i32 @config_node_get_int(%struct._CONFIG_NODE*, i8*, i32) #2

declare void @config_node_set_str(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i8*) #2

declare void @config_node_set_int(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i32) #2

declare void @g_free(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!68, !69}
!llvm.ident = !{!70}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "line123-irc-chatnets.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{}
!3 = !{!4, !5, !9, !11, !33, !40}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !7, line: 46, baseType: !8)
!7 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!8 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHATNET_REC", file: !13, line: 106, baseType: !14)
!13 = !DIFile(filename: "../../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CHATNET_REC", file: !15, line: 13, size: 576, align: 64, elements: !16)
!15 = !DIFile(filename: "../../../src/core/chatnets.h", directory: "/home/lichi/Desktop/irssi/task1")
!16 = !{!17, !20, !21, !23, !24, !25, !26, !27, !28, !32}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !14, file: !18, line: 1, baseType: !19, size: 32, align: 32)
!18 = !DIFile(filename: "../../../src/core/chatnet-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!19 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !14, file: !18, line: 2, baseType: !19, size: 32, align: 32, offset: 32)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !14, file: !18, line: 4, baseType: !22, size: 64, align: 64, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !14, file: !18, line: 6, baseType: !22, size: 64, align: 64, offset: 128)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !14, file: !18, line: 7, baseType: !22, size: 64, align: 64, offset: 192)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !14, file: !18, line: 8, baseType: !22, size: 64, align: 64, offset: 256)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "own_host", scope: !14, file: !18, line: 10, baseType: !22, size: 64, align: 64, offset: 320)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "autosendcmd", scope: !14, file: !18, line: 11, baseType: !22, size: 64, align: 64, offset: 384)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !14, file: !18, line: 12, baseType: !29, size: 64, align: 64, offset: 448)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64, align: 64)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !13, line: 99, baseType: !31)
!31 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !13, line: 99, flags: DIFlagFwdDecl)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !14, file: !18, line: 12, baseType: !29, size: 64, align: 64, offset: 512)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !34, line: 9, baseType: !35)
!34 = !DIFile(filename: "../../../src/core/signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!36 = !DISubroutineType(types: !37)
!37 = !{null, !38, !38, !38, !38, !38, !38}
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "IRC_CHATNET_REC", file: !42, line: 4, baseType: !43)
!42 = !DIFile(filename: "irc.h", directory: "/home/lichi/Desktop/irssi/task1")
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IRC_CHATNET_REC", file: !44, line: 17, size: 1152, align: 64, elements: !45)
!44 = !DIFile(filename: "irc-chatnets.h", directory: "/home/lichi/Desktop/irssi/task1")
!45 = !{!46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !43, file: !18, line: 1, baseType: !19, size: 32, align: 32)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !43, file: !18, line: 2, baseType: !19, size: 32, align: 32, offset: 32)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !43, file: !18, line: 4, baseType: !22, size: 64, align: 64, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !43, file: !18, line: 6, baseType: !22, size: 64, align: 64, offset: 128)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !43, file: !18, line: 7, baseType: !22, size: 64, align: 64, offset: 192)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !43, file: !18, line: 8, baseType: !22, size: 64, align: 64, offset: 256)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "own_host", scope: !43, file: !18, line: 10, baseType: !22, size: 64, align: 64, offset: 320)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "autosendcmd", scope: !43, file: !18, line: 11, baseType: !22, size: 64, align: 64, offset: 384)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !43, file: !18, line: 12, baseType: !29, size: 64, align: 64, offset: 448)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !43, file: !18, line: 12, baseType: !29, size: 64, align: 64, offset: 512)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "usermode", scope: !43, file: !44, line: 20, baseType: !22, size: 64, align: 64, offset: 576)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_nick", scope: !43, file: !44, line: 21, baseType: !22, size: 64, align: 64, offset: 640)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_mechanism", scope: !43, file: !44, line: 23, baseType: !22, size: 64, align: 64, offset: 704)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_username", scope: !43, file: !44, line: 24, baseType: !22, size: 64, align: 64, offset: 768)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "sasl_password", scope: !43, file: !44, line: 25, baseType: !22, size: 64, align: 64, offset: 832)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "max_cmds_at_once", scope: !43, file: !44, line: 27, baseType: !19, size: 32, align: 32, offset: 896)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_queue_speed", scope: !43, file: !44, line: 28, baseType: !19, size: 32, align: 32, offset: 928)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "max_query_chans", scope: !43, file: !44, line: 29, baseType: !19, size: 32, align: 32, offset: 960)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "max_kicks", scope: !43, file: !44, line: 32, baseType: !19, size: 32, align: 32, offset: 992)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "max_msgs", scope: !43, file: !44, line: 32, baseType: !19, size: 32, align: 32, offset: 1024)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "max_modes", scope: !43, file: !44, line: 32, baseType: !19, size: 32, align: 32, offset: 1056)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "max_whois", scope: !43, file: !44, line: 32, baseType: !19, size: 32, align: 32, offset: 1088)
!68 = !{i32 2, !"Dwarf Version", i32 4}
!69 = !{i32 2, !"Debug Info Version", i32 3}
!70 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!71 = distinct !DISubprogram(name: "ircnet_create", scope: !72, file: !72, line: 28, type: !73, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!72 = !DIFile(filename: "irc-chatnets.c", directory: "/home/lichi/Desktop/irssi/task1")
!73 = !DISubroutineType(types: !74)
!74 = !{null, !40}
!75 = !DILocalVariable(name: "rec", arg: 1, scope: !71, file: !72, line: 28, type: !40)
!76 = !DIExpression()
!77 = !DILocation(line: 28, column: 37, scope: !71)
!78 = !DILocation(line: 30, column: 2, scope: !71)
!79 = distinct !{!79, !78}
!80 = !DILocation(line: 30, column: 10, scope: !81)
!81 = !DILexicalBlockFile(scope: !82, file: !72, discriminator: 1)
!82 = distinct !DILexicalBlock(scope: !83, file: !72, line: 30, column: 10)
!83 = distinct !DILexicalBlock(scope: !71, file: !72, line: 30, column: 4)
!84 = !DILocation(line: 30, column: 14, scope: !81)
!85 = !DILocation(line: 30, column: 5, scope: !86)
!86 = !DILexicalBlockFile(scope: !87, file: !72, discriminator: 2)
!87 = distinct !DILexicalBlock(scope: !82, file: !72, line: 30, column: 3)
!88 = !DILocation(line: 30, column: 14, scope: !89)
!89 = !DILexicalBlockFile(scope: !90, file: !72, discriminator: 3)
!90 = distinct !DILexicalBlock(scope: !82, file: !72, line: 30, column: 12)
!91 = !DILocation(line: 30, column: 98, scope: !89)
!92 = !DILocation(line: 30, column: 109, scope: !93)
!93 = !DILexicalBlockFile(scope: !83, file: !72, discriminator: 4)
!94 = !DILocation(line: 32, column: 20, scope: !71)
!95 = !DILocation(line: 32, column: 2, scope: !71)
!96 = !DILocation(line: 32, column: 7, scope: !71)
!97 = !DILocation(line: 32, column: 17, scope: !71)
!98 = !DILocation(line: 33, column: 40, scope: !71)
!99 = !DILocation(line: 33, column: 24, scope: !71)
!100 = !DILocation(line: 33, column: 9, scope: !71)
!101 = !DILocation(line: 34, column: 1, scope: !71)
!102 = !DILocation(line: 34, column: 1, scope: !103)
!103 = !DILexicalBlockFile(scope: !71, file: !72, discriminator: 1)
!104 = distinct !DISubprogram(name: "irc_chatnets_init", scope: !72, file: !72, line: 110, type: !105, isLocal: false, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!105 = !DISubroutineType(types: !106)
!106 = !{null}
!107 = !DILocation(line: 112, column: 2, scope: !104)
!108 = !DILocation(line: 113, column: 2, scope: !104)
!109 = !DILocation(line: 114, column: 2, scope: !104)
!110 = !DILocation(line: 115, column: 1, scope: !104)
!111 = distinct !DISubprogram(name: "sig_chatnet_read", scope: !72, file: !72, line: 36, type: !112, isLocal: true, isDefinition: true, scopeLine: 37, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!112 = !DISubroutineType(types: !113)
!113 = !{null, !40, !114}
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64, align: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "CONFIG_NODE", file: !116, line: 17, baseType: !117)
!116 = !DIFile(filename: "../../../src/lib-config/iconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CONFIG_NODE", file: !116, line: 20, size: 192, align: 64, elements: !118)
!118 = !{!119, !120, !121}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !117, file: !116, line: 21, baseType: !19, size: 32, align: 32)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !117, file: !116, line: 22, baseType: !22, size: 64, align: 64, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !117, file: !116, line: 23, baseType: !4, size: 64, align: 64, offset: 128)
!122 = !DILocalVariable(name: "rec", arg: 1, scope: !111, file: !72, line: 36, type: !40)
!123 = !DILocation(line: 36, column: 47, scope: !111)
!124 = !DILocalVariable(name: "node", arg: 2, scope: !111, file: !72, line: 36, type: !114)
!125 = !DILocation(line: 36, column: 65, scope: !111)
!126 = !DILocalVariable(name: "value", scope: !111, file: !72, line: 38, type: !22)
!127 = !DILocation(line: 38, column: 8, scope: !111)
!128 = !DILocation(line: 40, column: 89, scope: !129)
!129 = distinct !DILexicalBlock(scope: !111, file: !72, line: 40, column: 6)
!130 = !DILocation(line: 40, column: 71, scope: !129)
!131 = !DILocation(line: 40, column: 55, scope: !129)
!132 = !DILocation(line: 40, column: 54, scope: !129)
!133 = !DILocation(line: 40, column: 29, scope: !134)
!134 = !DILexicalBlockFile(scope: !129, file: !72, discriminator: 3)
!135 = !DILocation(line: 40, column: 9, scope: !129)
!136 = !DILocation(line: 40, column: 6, scope: !111)
!137 = !DILocation(line: 40, column: 8, scope: !138)
!138 = !DILexicalBlockFile(scope: !129, file: !72, discriminator: 1)
!139 = !DILocation(line: 40, column: 6, scope: !140)
!140 = !DILexicalBlockFile(scope: !111, file: !72, discriminator: 2)
!141 = !DILocation(line: 41, column: 3, scope: !129)
!142 = !DILocation(line: 43, column: 30, scope: !111)
!143 = !DILocation(line: 43, column: 10, scope: !111)
!144 = !DILocation(line: 43, column: 8, scope: !111)
!145 = !DILocation(line: 44, column: 19, scope: !111)
!146 = !DILocation(line: 44, column: 25, scope: !111)
!147 = !DILocation(line: 44, column: 32, scope: !111)
!148 = !DILocation(line: 44, column: 36, scope: !149)
!149 = !DILexicalBlockFile(scope: !111, file: !72, discriminator: 1)
!150 = !DILocation(line: 44, column: 35, scope: !149)
!151 = !DILocation(line: 44, column: 42, scope: !149)
!152 = !DILocation(line: 44, column: 18, scope: !149)
!153 = !DILocation(line: 44, column: 62, scope: !140)
!154 = !DILocation(line: 44, column: 53, scope: !140)
!155 = !DILocation(line: 44, column: 18, scope: !140)
!156 = !DILocation(line: 44, column: 18, scope: !157)
!157 = !DILexicalBlockFile(scope: !111, file: !72, discriminator: 3)
!158 = !DILocation(line: 44, column: 18, scope: !159)
!159 = !DILexicalBlockFile(scope: !111, file: !72, discriminator: 4)
!160 = !DILocation(line: 44, column: 2, scope: !159)
!161 = !DILocation(line: 44, column: 7, scope: !159)
!162 = !DILocation(line: 44, column: 16, scope: !159)
!163 = !DILocation(line: 46, column: 30, scope: !111)
!164 = !DILocation(line: 46, column: 10, scope: !111)
!165 = !DILocation(line: 46, column: 8, scope: !111)
!166 = !DILocation(line: 47, column: 25, scope: !111)
!167 = !DILocation(line: 47, column: 31, scope: !111)
!168 = !DILocation(line: 47, column: 38, scope: !111)
!169 = !DILocation(line: 47, column: 42, scope: !149)
!170 = !DILocation(line: 47, column: 41, scope: !149)
!171 = !DILocation(line: 47, column: 48, scope: !149)
!172 = !DILocation(line: 47, column: 24, scope: !149)
!173 = !DILocation(line: 47, column: 68, scope: !140)
!174 = !DILocation(line: 47, column: 59, scope: !140)
!175 = !DILocation(line: 47, column: 24, scope: !140)
!176 = !DILocation(line: 47, column: 24, scope: !157)
!177 = !DILocation(line: 47, column: 24, scope: !159)
!178 = !DILocation(line: 47, column: 2, scope: !159)
!179 = !DILocation(line: 47, column: 7, scope: !159)
!180 = !DILocation(line: 47, column: 22, scope: !159)
!181 = !DILocation(line: 49, column: 46, scope: !111)
!182 = !DILocation(line: 49, column: 26, scope: !111)
!183 = !DILocation(line: 49, column: 2, scope: !111)
!184 = !DILocation(line: 49, column: 7, scope: !111)
!185 = !DILocation(line: 49, column: 24, scope: !111)
!186 = !DILocation(line: 50, column: 45, scope: !111)
!187 = !DILocation(line: 50, column: 25, scope: !111)
!188 = !DILocation(line: 50, column: 2, scope: !111)
!189 = !DILocation(line: 50, column: 7, scope: !111)
!190 = !DILocation(line: 50, column: 23, scope: !111)
!191 = !DILocation(line: 51, column: 45, scope: !111)
!192 = !DILocation(line: 51, column: 25, scope: !111)
!193 = !DILocation(line: 51, column: 2, scope: !111)
!194 = !DILocation(line: 51, column: 7, scope: !111)
!195 = !DILocation(line: 51, column: 23, scope: !111)
!196 = !DILocation(line: 53, column: 39, scope: !111)
!197 = !DILocation(line: 53, column: 19, scope: !111)
!198 = !DILocation(line: 53, column: 2, scope: !111)
!199 = !DILocation(line: 53, column: 7, scope: !111)
!200 = !DILocation(line: 53, column: 17, scope: !111)
!201 = !DILocation(line: 54, column: 38, scope: !111)
!202 = !DILocation(line: 54, column: 18, scope: !111)
!203 = !DILocation(line: 54, column: 2, scope: !111)
!204 = !DILocation(line: 54, column: 7, scope: !111)
!205 = !DILocation(line: 54, column: 16, scope: !111)
!206 = !DILocation(line: 55, column: 39, scope: !111)
!207 = !DILocation(line: 55, column: 19, scope: !111)
!208 = !DILocation(line: 55, column: 2, scope: !111)
!209 = !DILocation(line: 55, column: 7, scope: !111)
!210 = !DILocation(line: 55, column: 17, scope: !111)
!211 = !DILocation(line: 56, column: 39, scope: !111)
!212 = !DILocation(line: 56, column: 19, scope: !111)
!213 = !DILocation(line: 56, column: 2, scope: !111)
!214 = !DILocation(line: 56, column: 7, scope: !111)
!215 = !DILocation(line: 56, column: 17, scope: !111)
!216 = !DILocation(line: 58, column: 53, scope: !111)
!217 = !DILocation(line: 58, column: 33, scope: !111)
!218 = !DILocation(line: 58, column: 24, scope: !149)
!219 = !DILocation(line: 58, column: 2, scope: !111)
!220 = !DILocation(line: 58, column: 7, scope: !111)
!221 = !DILocation(line: 58, column: 22, scope: !111)
!222 = !DILocation(line: 59, column: 52, scope: !111)
!223 = !DILocation(line: 59, column: 32, scope: !111)
!224 = !DILocation(line: 59, column: 23, scope: !149)
!225 = !DILocation(line: 59, column: 2, scope: !111)
!226 = !DILocation(line: 59, column: 7, scope: !111)
!227 = !DILocation(line: 59, column: 21, scope: !111)
!228 = !DILocation(line: 60, column: 52, scope: !111)
!229 = !DILocation(line: 60, column: 32, scope: !111)
!230 = !DILocation(line: 60, column: 23, scope: !149)
!231 = !DILocation(line: 60, column: 2, scope: !111)
!232 = !DILocation(line: 60, column: 7, scope: !111)
!233 = !DILocation(line: 60, column: 21, scope: !111)
!234 = !DILocation(line: 61, column: 1, scope: !111)
!235 = !DILocation(line: 61, column: 1, scope: !149)
!236 = distinct !DISubprogram(name: "sig_chatnet_saved", scope: !72, file: !72, line: 63, type: !112, isLocal: true, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!237 = !DILocalVariable(name: "rec", arg: 1, scope: !236, file: !72, line: 63, type: !40)
!238 = !DILocation(line: 63, column: 48, scope: !236)
!239 = !DILocalVariable(name: "node", arg: 2, scope: !236, file: !72, line: 63, type: !114)
!240 = !DILocation(line: 63, column: 66, scope: !236)
!241 = !DILocation(line: 65, column: 89, scope: !242)
!242 = distinct !DILexicalBlock(scope: !236, file: !72, line: 65, column: 6)
!243 = !DILocation(line: 65, column: 71, scope: !242)
!244 = !DILocation(line: 65, column: 55, scope: !242)
!245 = !DILocation(line: 65, column: 54, scope: !242)
!246 = !DILocation(line: 65, column: 29, scope: !247)
!247 = !DILexicalBlockFile(scope: !242, file: !72, discriminator: 3)
!248 = !DILocation(line: 65, column: 9, scope: !242)
!249 = !DILocation(line: 65, column: 6, scope: !236)
!250 = !DILocation(line: 65, column: 8, scope: !251)
!251 = !DILexicalBlockFile(scope: !242, file: !72, discriminator: 1)
!252 = !DILocation(line: 65, column: 6, scope: !253)
!253 = !DILexicalBlockFile(scope: !236, file: !72, discriminator: 2)
!254 = !DILocation(line: 66, column: 3, scope: !242)
!255 = !DILocation(line: 68, column: 6, scope: !256)
!256 = distinct !DILexicalBlock(scope: !236, file: !72, line: 68, column: 6)
!257 = !DILocation(line: 68, column: 11, scope: !256)
!258 = !DILocation(line: 68, column: 20, scope: !256)
!259 = !DILocation(line: 68, column: 6, scope: !236)
!260 = !DILocation(line: 69, column: 23, scope: !256)
!261 = !DILocation(line: 69, column: 35, scope: !256)
!262 = !DILocation(line: 69, column: 53, scope: !256)
!263 = !DILocation(line: 69, column: 58, scope: !256)
!264 = !DILocation(line: 69, column: 3, scope: !256)
!265 = !DILocation(line: 71, column: 6, scope: !266)
!266 = distinct !DILexicalBlock(scope: !236, file: !72, line: 71, column: 6)
!267 = !DILocation(line: 71, column: 11, scope: !266)
!268 = !DILocation(line: 71, column: 26, scope: !266)
!269 = !DILocation(line: 71, column: 6, scope: !236)
!270 = !DILocation(line: 72, column: 23, scope: !266)
!271 = !DILocation(line: 72, column: 35, scope: !266)
!272 = !DILocation(line: 72, column: 59, scope: !266)
!273 = !DILocation(line: 72, column: 64, scope: !266)
!274 = !DILocation(line: 72, column: 3, scope: !266)
!275 = !DILocation(line: 74, column: 6, scope: !276)
!276 = distinct !DILexicalBlock(scope: !236, file: !72, line: 74, column: 6)
!277 = !DILocation(line: 74, column: 11, scope: !276)
!278 = !DILocation(line: 74, column: 28, scope: !276)
!279 = !DILocation(line: 74, column: 6, scope: !236)
!280 = !DILocation(line: 75, column: 23, scope: !276)
!281 = !DILocation(line: 75, column: 35, scope: !276)
!282 = !DILocation(line: 75, column: 51, scope: !276)
!283 = !DILocation(line: 75, column: 56, scope: !276)
!284 = !DILocation(line: 75, column: 3, scope: !276)
!285 = !DILocation(line: 76, column: 6, scope: !286)
!286 = distinct !DILexicalBlock(scope: !236, file: !72, line: 76, column: 6)
!287 = !DILocation(line: 76, column: 11, scope: !286)
!288 = !DILocation(line: 76, column: 27, scope: !286)
!289 = !DILocation(line: 76, column: 6, scope: !236)
!290 = !DILocation(line: 77, column: 23, scope: !286)
!291 = !DILocation(line: 77, column: 35, scope: !286)
!292 = !DILocation(line: 77, column: 53, scope: !286)
!293 = !DILocation(line: 77, column: 58, scope: !286)
!294 = !DILocation(line: 77, column: 3, scope: !286)
!295 = !DILocation(line: 78, column: 6, scope: !296)
!296 = distinct !DILexicalBlock(scope: !236, file: !72, line: 78, column: 6)
!297 = !DILocation(line: 78, column: 11, scope: !296)
!298 = !DILocation(line: 78, column: 27, scope: !296)
!299 = !DILocation(line: 78, column: 6, scope: !236)
!300 = !DILocation(line: 79, column: 23, scope: !296)
!301 = !DILocation(line: 79, column: 35, scope: !296)
!302 = !DILocation(line: 79, column: 60, scope: !296)
!303 = !DILocation(line: 79, column: 65, scope: !296)
!304 = !DILocation(line: 79, column: 3, scope: !296)
!305 = !DILocation(line: 81, column: 6, scope: !306)
!306 = distinct !DILexicalBlock(scope: !236, file: !72, line: 81, column: 6)
!307 = !DILocation(line: 81, column: 11, scope: !306)
!308 = !DILocation(line: 81, column: 21, scope: !306)
!309 = !DILocation(line: 81, column: 6, scope: !236)
!310 = !DILocation(line: 82, column: 23, scope: !306)
!311 = !DILocation(line: 82, column: 35, scope: !306)
!312 = !DILocation(line: 82, column: 54, scope: !306)
!313 = !DILocation(line: 82, column: 59, scope: !306)
!314 = !DILocation(line: 82, column: 3, scope: !306)
!315 = !DILocation(line: 83, column: 6, scope: !316)
!316 = distinct !DILexicalBlock(scope: !236, file: !72, line: 83, column: 6)
!317 = !DILocation(line: 83, column: 11, scope: !316)
!318 = !DILocation(line: 83, column: 20, scope: !316)
!319 = !DILocation(line: 83, column: 6, scope: !236)
!320 = !DILocation(line: 84, column: 23, scope: !316)
!321 = !DILocation(line: 84, column: 35, scope: !316)
!322 = !DILocation(line: 84, column: 53, scope: !316)
!323 = !DILocation(line: 84, column: 58, scope: !316)
!324 = !DILocation(line: 84, column: 3, scope: !316)
!325 = !DILocation(line: 85, column: 6, scope: !326)
!326 = distinct !DILexicalBlock(scope: !236, file: !72, line: 85, column: 6)
!327 = !DILocation(line: 85, column: 11, scope: !326)
!328 = !DILocation(line: 85, column: 21, scope: !326)
!329 = !DILocation(line: 85, column: 6, scope: !236)
!330 = !DILocation(line: 86, column: 23, scope: !326)
!331 = !DILocation(line: 86, column: 35, scope: !326)
!332 = !DILocation(line: 86, column: 54, scope: !326)
!333 = !DILocation(line: 86, column: 59, scope: !326)
!334 = !DILocation(line: 86, column: 3, scope: !326)
!335 = !DILocation(line: 87, column: 6, scope: !336)
!336 = distinct !DILexicalBlock(scope: !236, file: !72, line: 87, column: 6)
!337 = !DILocation(line: 87, column: 11, scope: !336)
!338 = !DILocation(line: 87, column: 21, scope: !336)
!339 = !DILocation(line: 87, column: 6, scope: !236)
!340 = !DILocation(line: 88, column: 23, scope: !336)
!341 = !DILocation(line: 88, column: 35, scope: !336)
!342 = !DILocation(line: 88, column: 54, scope: !336)
!343 = !DILocation(line: 88, column: 59, scope: !336)
!344 = !DILocation(line: 88, column: 3, scope: !336)
!345 = !DILocation(line: 90, column: 6, scope: !346)
!346 = distinct !DILexicalBlock(scope: !236, file: !72, line: 90, column: 6)
!347 = !DILocation(line: 90, column: 11, scope: !346)
!348 = !DILocation(line: 90, column: 26, scope: !346)
!349 = !DILocation(line: 90, column: 6, scope: !236)
!350 = !DILocation(line: 91, column: 23, scope: !346)
!351 = !DILocation(line: 91, column: 35, scope: !346)
!352 = !DILocation(line: 91, column: 59, scope: !346)
!353 = !DILocation(line: 91, column: 64, scope: !346)
!354 = !DILocation(line: 91, column: 3, scope: !346)
!355 = !DILocation(line: 92, column: 6, scope: !356)
!356 = distinct !DILexicalBlock(scope: !236, file: !72, line: 92, column: 6)
!357 = !DILocation(line: 92, column: 11, scope: !356)
!358 = !DILocation(line: 92, column: 25, scope: !356)
!359 = !DILocation(line: 92, column: 6, scope: !236)
!360 = !DILocation(line: 93, column: 23, scope: !356)
!361 = !DILocation(line: 93, column: 35, scope: !356)
!362 = !DILocation(line: 93, column: 58, scope: !356)
!363 = !DILocation(line: 93, column: 63, scope: !356)
!364 = !DILocation(line: 93, column: 3, scope: !356)
!365 = !DILocation(line: 94, column: 6, scope: !366)
!366 = distinct !DILexicalBlock(scope: !236, file: !72, line: 94, column: 6)
!367 = !DILocation(line: 94, column: 11, scope: !366)
!368 = !DILocation(line: 94, column: 25, scope: !366)
!369 = !DILocation(line: 94, column: 6, scope: !236)
!370 = !DILocation(line: 95, column: 23, scope: !366)
!371 = !DILocation(line: 95, column: 35, scope: !366)
!372 = !DILocation(line: 95, column: 58, scope: !366)
!373 = !DILocation(line: 95, column: 63, scope: !366)
!374 = !DILocation(line: 95, column: 3, scope: !366)
!375 = !DILocation(line: 96, column: 1, scope: !236)
!376 = distinct !DISubprogram(name: "sig_chatnet_destroyed", scope: !72, file: !72, line: 98, type: !73, isLocal: true, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!377 = !DILocalVariable(name: "rec", arg: 1, scope: !376, file: !72, line: 98, type: !40)
!378 = !DILocation(line: 98, column: 52, scope: !376)
!379 = !DILocation(line: 100, column: 88, scope: !380)
!380 = distinct !DILexicalBlock(scope: !376, file: !72, line: 100, column: 6)
!381 = !DILocation(line: 100, column: 70, scope: !380)
!382 = !DILocation(line: 100, column: 54, scope: !380)
!383 = !DILocation(line: 100, column: 53, scope: !380)
!384 = !DILocation(line: 100, column: 28, scope: !385)
!385 = !DILexicalBlockFile(scope: !380, file: !72, discriminator: 3)
!386 = !DILocation(line: 100, column: 8, scope: !380)
!387 = !DILocation(line: 100, column: 6, scope: !376)
!388 = !DILocation(line: 100, column: 7, scope: !389)
!389 = !DILexicalBlockFile(scope: !380, file: !72, discriminator: 1)
!390 = !DILocation(line: 100, column: 6, scope: !391)
!391 = !DILexicalBlockFile(scope: !376, file: !72, discriminator: 2)
!392 = !DILocation(line: 101, column: 10, scope: !393)
!393 = distinct !DILexicalBlock(scope: !380, file: !72, line: 100, column: 32)
!394 = !DILocation(line: 101, column: 15, scope: !393)
!395 = !DILocation(line: 101, column: 3, scope: !393)
!396 = !DILocation(line: 102, column: 10, scope: !393)
!397 = !DILocation(line: 102, column: 15, scope: !393)
!398 = !DILocation(line: 102, column: 3, scope: !393)
!399 = !DILocation(line: 103, column: 10, scope: !393)
!400 = !DILocation(line: 103, column: 15, scope: !393)
!401 = !DILocation(line: 103, column: 3, scope: !393)
!402 = !DILocation(line: 104, column: 10, scope: !393)
!403 = !DILocation(line: 104, column: 15, scope: !393)
!404 = !DILocation(line: 104, column: 3, scope: !393)
!405 = !DILocation(line: 105, column: 10, scope: !393)
!406 = !DILocation(line: 105, column: 15, scope: !393)
!407 = !DILocation(line: 105, column: 3, scope: !393)
!408 = !DILocation(line: 106, column: 2, scope: !393)
!409 = !DILocation(line: 107, column: 1, scope: !376)
!410 = distinct !DISubprogram(name: "irc_chatnets_deinit", scope: !72, file: !72, line: 117, type: !105, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!411 = !DILocalVariable(name: "tmp", scope: !410, file: !72, line: 119, type: !412)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64, align: 64)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !414, line: 37, baseType: !415)
!414 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !414, line: 39, size: 128, align: 64, elements: !416)
!416 = !{!417, !419}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !415, file: !414, line: 41, baseType: !418, size: 64, align: 64)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !7, line: 77, baseType: !4)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !415, file: !414, line: 42, baseType: !412, size: 64, align: 64, offset: 64)
!420 = !DILocation(line: 119, column: 10, scope: !410)
!421 = !DILocalVariable(name: "next", scope: !410, file: !72, line: 119, type: !412)
!422 = !DILocation(line: 119, column: 16, scope: !410)
!423 = !DILocation(line: 121, column: 13, scope: !424)
!424 = distinct !DILexicalBlock(scope: !410, file: !72, line: 121, column: 2)
!425 = !DILocation(line: 121, column: 11, scope: !424)
!426 = !DILocation(line: 121, column: 7, scope: !424)
!427 = !DILocation(line: 121, column: 23, scope: !428)
!428 = !DILexicalBlockFile(scope: !429, file: !72, discriminator: 1)
!429 = distinct !DILexicalBlock(scope: !424, file: !72, line: 121, column: 2)
!430 = !DILocation(line: 121, column: 27, scope: !428)
!431 = !DILocation(line: 121, column: 2, scope: !428)
!432 = !DILocalVariable(name: "rec", scope: !433, file: !72, line: 122, type: !11)
!433 = distinct !DILexicalBlock(scope: !429, file: !72, line: 121, column: 47)
!434 = !DILocation(line: 122, column: 16, scope: !433)
!435 = !DILocation(line: 122, column: 22, scope: !433)
!436 = !DILocation(line: 122, column: 27, scope: !433)
!437 = !DILocation(line: 124, column: 10, scope: !433)
!438 = !DILocation(line: 124, column: 15, scope: !433)
!439 = !DILocation(line: 124, column: 8, scope: !433)
!440 = !DILocation(line: 125, column: 89, scope: !441)
!441 = distinct !DILexicalBlock(scope: !433, file: !72, line: 125, column: 7)
!442 = !DILocation(line: 125, column: 71, scope: !441)
!443 = !DILocation(line: 125, column: 55, scope: !441)
!444 = !DILocation(line: 125, column: 54, scope: !441)
!445 = !DILocation(line: 125, column: 29, scope: !446)
!446 = !DILexicalBlockFile(scope: !441, file: !72, discriminator: 3)
!447 = !DILocation(line: 125, column: 9, scope: !441)
!448 = !DILocation(line: 125, column: 7, scope: !433)
!449 = !DILocation(line: 125, column: 8, scope: !450)
!450 = !DILexicalBlockFile(scope: !441, file: !72, discriminator: 1)
!451 = !DILocation(line: 125, column: 7, scope: !452)
!452 = !DILexicalBlockFile(scope: !433, file: !72, discriminator: 2)
!453 = !DILocation(line: 126, column: 41, scope: !441)
!454 = !DILocation(line: 126, column: 25, scope: !441)
!455 = !DILocation(line: 127, column: 2, scope: !433)
!456 = !DILocation(line: 121, column: 41, scope: !457)
!457 = !DILexicalBlockFile(scope: !429, file: !72, discriminator: 2)
!458 = !DILocation(line: 121, column: 39, scope: !457)
!459 = !DILocation(line: 121, column: 2, scope: !457)
!460 = distinct !{!460, !461}
!461 = !DILocation(line: 121, column: 2, scope: !410)
!462 = !DILocation(line: 129, column: 2, scope: !410)
!463 = !DILocation(line: 130, column: 2, scope: !410)
!464 = !DILocation(line: 131, column: 2, scope: !410)
!465 = !DILocation(line: 132, column: 1, scope: !410)
