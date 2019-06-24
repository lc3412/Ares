; ModuleID = './line71-rawlog.o.i'
source_filename = "./line71-rawlog.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._RAWLOG_REC = type { i32, i32, i32, %struct._GSList* }
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
%struct._GHashTable = type opaque
%struct._GTimeVal = type { i64, i64 }
%struct._CHANNEL_REC = type opaque
%struct._QUERY_REC = type opaque

@__func__.rawlog_destroy = private unnamed_addr constant [15 x i8] c"rawlog_destroy\00", align 1
@.str = private unnamed_addr constant [15 x i8] c"rawlog != NULL\00", align 1
@__func__.rawlog_input = private unnamed_addr constant [13 x i8] c"rawlog_input\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"str != NULL\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c">> %s\00", align 1
@__func__.rawlog_output = private unnamed_addr constant [14 x i8] c"rawlog_output\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"<< %s\00", align 1
@__func__.rawlog_redirect = private unnamed_addr constant [16 x i8] c"rawlog_redirect\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"--> %s\00", align 1
@__func__.rawlog_open = private unnamed_addr constant [12 x i8] c"rawlog_open\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"fname != NULL\00", align 1
@log_file_create_mode = external global i32, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"rawlog open() failed: %s\00", align 1
@log_dir_create_mode = external global i32, align 4
@rawlog_lines = internal global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"signals\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"rawlog\00", align 1
@signal_rawlog = internal global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"history\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"rawlog_lines\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"setup changed\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"rawlog save\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"rawlog open\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"rawlog close\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"rawlog write() failed: %s\00", align 1
@__func__.cmd_rawlog_save = private unnamed_addr constant [16 x i8] c"cmd_rawlog_save\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"data != NULL\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"error command\00", align 1
@__func__.cmd_rawlog_open = private unnamed_addr constant [16 x i8] c"cmd_rawlog_open\00", align 1
@__func__.cmd_rawlog_close = private unnamed_addr constant [17 x i8] c"cmd_rawlog_close\00", align 1

; Function Attrs: nounwind uwtable
define %struct._RAWLOG_REC* @rawlog_create() #0 !dbg !116 {
  %1 = alloca %struct._RAWLOG_REC*, align 8
  call void @llvm.dbg.declare(metadata %struct._RAWLOG_REC** %1, metadata !120, metadata !121), !dbg !122
  %2 = call noalias i8* @g_malloc0_n(i64 1, i64 24), !dbg !123
  %3 = bitcast i8* %2 to %struct._RAWLOG_REC*, !dbg !124
  store %struct._RAWLOG_REC* %3, %struct._RAWLOG_REC** %1, align 8, !dbg !125
  %4 = load %struct._RAWLOG_REC*, %struct._RAWLOG_REC** %1, align 8, !dbg !126
  ret %struct._RAWLOG_REC* %4, !dbg !127
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare noalias i8* @g_malloc0_n(i64, i64) #2

; Function Attrs: nounwind uwtable
define void @rawlog_destroy(%struct._RAWLOG_REC*) #0 !dbg !128 {
  %2 = alloca %struct._RAWLOG_REC*, align 8
  store %struct._RAWLOG_REC* %0, %struct._RAWLOG_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._RAWLOG_REC** %2, metadata !131, metadata !121), !dbg !132
  br label %3, !dbg !133, !llvm.loop !134

; <label>:3:                                      ; preds = %1
  %4 = load %struct._RAWLOG_REC*, %struct._RAWLOG_REC** %2, align 8, !dbg !135
  %5 = icmp ne %struct._RAWLOG_REC* %4, null, !dbg !139
  br i1 %5, label %6, label %7, !dbg !135

; <label>:6:                                      ; preds = %3
  br label %8, !dbg !140

; <label>:7:                                      ; preds = %3
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.rawlog_destroy, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)), !dbg !143
  br label %28, !dbg !146

; <label>:8:                                      ; preds = %6
  br label %9, !dbg !147

; <label>:9:                                      ; preds = %8
  %10 = load %struct._RAWLOG_REC*, %struct._RAWLOG_REC** %2, align 8, !dbg !149
  %11 = getelementptr inbounds %struct._RAWLOG_REC, %struct._RAWLOG_REC* %10, i32 0, i32 3, !dbg !150
  %12 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !150
  call void @g_slist_foreach(%struct._GSList* %12, void (i8*, i8*)* bitcast (void (i8*)* @g_free to void (i8*, i8*)*), i8* null), !dbg !151
  %13 = load %struct._RAWLOG_REC*, %struct._RAWLOG_REC** %2, align 8, !dbg !152
  %14 = getelementptr inbounds %struct._RAWLOG_REC, %struct._RAWLOG_REC* %13, i32 0, i32 3, !dbg !153
  %15 = load %struct._GSList*, %struct._GSList** %14, align 8, !dbg !153
  call void @g_slist_free(%struct._GSList* %15), !dbg !154
  %16 = load %struct._RAWLOG_REC*, %struct._RAWLOG_REC** %2, align 8, !dbg !155
  %17 = getelementptr inbounds %struct._RAWLOG_REC, %struct._RAWLOG_REC* %16, i32 0, i32 0, !dbg !157
  %18 = load i32, i32* %17, align 8, !dbg !157
  %19 = icmp ne i32 %18, 0, !dbg !155
  br i1 %19, label %20, label %25, !dbg !158

; <label>:20:                                     ; preds = %9
  call void @write_buffer_flush(), !dbg !159
  %21 = load %struct._RAWLOG_REC*, %struct._RAWLOG_REC** %2, align 8, !dbg !161
  %22 = getelementptr inbounds %struct._RAWLOG_REC, %struct._RAWLOG_REC* %21, i32 0, i32 1, !dbg !162
  %23 = load i32, i32* %22, align 4, !dbg !162
  %24 = call i32 @close(i32 %23), !dbg !163
  br label %25, !dbg !164

; <label>:25:                                     ; preds = %20, %9
  %26 = load %struct._RAWLOG_REC*, %struct._RAWLOG_REC** %2, align 8, !dbg !165
  %27 = bitcast %struct._RAWLOG_REC* %26 to i8*, !dbg !165
  call void @g_free(i8* %27), !dbg !166
  br label %28, !dbg !167

; <label>:28:                                     ; preds = %25, %7
  ret void, !dbg !168
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare void @g_slist_foreach(%struct._GSList*, void (i8*, i8*)*, i8*) #2

declare void @g_free(i8*) #2

declare void @g_slist_free(%struct._GSList*) #2

declare void @write_buffer_flush() #2

declare i32 @close(i32) #2

; Function Attrs: nounwind uwtable
define void @rawlog_input(%struct._RAWLOG_REC*, i8*) #0 !dbg !170 {
  %3 = alloca %struct._RAWLOG_REC*, align 8
  %4 = alloca i8*, align 8
  store %struct._RAWLOG_REC* %0, %struct._RAWLOG_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._RAWLOG_REC** %3, metadata !173, metadata !121), !dbg !174
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !175, metadata !121), !dbg !176
  br label %5, !dbg !177, !llvm.loop !178

; <label>:5:                                      ; preds = %2
  %6 = load %struct._RAWLOG_REC*, %struct._RAWLOG_REC** %3, align 8, !dbg !179
  %7 = icmp ne %struct._RAWLOG_REC* %6, null, !dbg !183
  br i1 %7, label %8, label %9, !dbg !179

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !184

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.rawlog_input, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)), !dbg !187
  br label %22, !dbg !190

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !191

; <label>:11:                                     ; preds = %10
  br label %12, !dbg !193, !llvm.loop !194

; <label>:12:                                     ; preds = %11
  %13 = load i8*, i8** %4, align 8, !dbg !195
  %14 = icmp ne i8* %13, null, !dbg !199
  br i1 %14, label %15, label %16, !dbg !195

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !200

; <label>:16:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.rawlog_input, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0)), !dbg !203
  br label %22, !dbg !206

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !207

; <label>:18:                                     ; preds = %17
  %19 = load %struct._RAWLOG_REC*, %struct._RAWLOG_REC** %3, align 8, !dbg !209
  %20 = load i8*, i8** %4, align 8, !dbg !210
  %21 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* %20), !dbg !211
  call void @rawlog_add(%struct._RAWLOG_REC* %19, i8* %21), !dbg !212
  br label %22, !dbg !214

; <label>:22:                                     ; preds = %18, %16, %9
  ret void, !dbg !215
}

; Function Attrs: nounwind uwtable
define internal void @rawlog_add(%struct._RAWLOG_REC*, i8*) #0 !dbg !216 {
  %3 = alloca %struct._RAWLOG_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct._RAWLOG_REC* %0, %struct._RAWLOG_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._RAWLOG_REC** %3, metadata !219, metadata !121), !dbg !220
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !221, metadata !121), !dbg !222
  %6 = load %struct._RAWLOG_REC*, %struct._RAWLOG_REC** %3, align 8, !dbg !223
  %7 = getelementptr inbounds %struct._RAWLOG_REC, %struct._RAWLOG_REC* %6, i32 0, i32 2, !dbg !225
  %8 = load i32, i32* %7, align 8, !dbg !225
  %9 = load i32, i32* @rawlog_lines, align 4, !dbg !226
  %10 = icmp slt i32 %8, %9, !dbg !227
  br i1 %10, label %14, label %11, !dbg !228

; <label>:11:                                     ; preds = %2
  %12 = load i32, i32* @rawlog_lines, align 4, !dbg !229
  %13 = icmp sle i32 %12, 2, !dbg !231
  br i1 %13, label %14, label %19, !dbg !232

; <label>:14:                                     ; preds = %11, %2
  %15 = load %struct._RAWLOG_REC*, %struct._RAWLOG_REC** %3, align 8, !dbg !233
  %16 = getelementptr inbounds %struct._RAWLOG_REC, %struct._RAWLOG_REC* %15, i32 0, i32 2, !dbg !234
  %17 = load i32, i32* %16, align 8, !dbg !235
  %18 = add nsw i32 %17, 1, !dbg !235
  store i32 %18, i32* %16, align 8, !dbg !235
  br label %37, !dbg !233

; <label>:19:                                     ; preds = %11
  call void @llvm.dbg.declare(metadata i8** %5, metadata !236, metadata !121), !dbg !238
  %20 = load %struct._RAWLOG_REC*, %struct._RAWLOG_REC** %3, align 8, !dbg !239
  %21 = getelementptr inbounds %struct._RAWLOG_REC, %struct._RAWLOG_REC* %20, i32 0, i32 3, !dbg !240
  %22 = load %struct._GSList*, %struct._GSList** %21, align 8, !dbg !240
  %23 = getelementptr inbounds %struct._GSList, %struct._GSList* %22, i32 0, i32 0, !dbg !241
  %24 = load i8*, i8** %23, align 8, !dbg !241
  store i8* %24, i8** %5, align 8, !dbg !238
  %25 = load %struct._RAWLOG_REC*, %struct._RAWLOG_REC** %3, align 8, !dbg !242
  %26 = getelementptr inbounds %struct._RAWLOG_REC, %struct._RAWLOG_REC* %25, i32 0, i32 3, !dbg !243
  %27 = load %struct._GSList*, %struct._GSList** %26, align 8, !dbg !243
  %28 = load %struct._RAWLOG_REC*, %struct._RAWLOG_REC** %3, align 8, !dbg !244
  %29 = getelementptr inbounds %struct._RAWLOG_REC, %struct._RAWLOG_REC* %28, i32 0, i32 3, !dbg !245
  %30 = load %struct._GSList*, %struct._GSList** %29, align 8, !dbg !245
  %31 = getelementptr inbounds %struct._GSList, %struct._GSList* %30, i32 0, i32 0, !dbg !246
  %32 = load i8*, i8** %31, align 8, !dbg !246
  %33 = call %struct._GSList* @g_slist_remove(%struct._GSList* %27, i8* %32), !dbg !247
  %34 = load %struct._RAWLOG_REC*, %struct._RAWLOG_REC** %3, align 8, !dbg !248
  %35 = getelementptr inbounds %struct._RAWLOG_REC, %struct._RAWLOG_REC* %34, i32 0, i32 3, !dbg !249
  store %struct._GSList* %33, %struct._GSList** %35, align 8, !dbg !250
  %36 = load i8*, i8** %5, align 8, !dbg !251
  call void @g_free(i8* %36), !dbg !252
  br label %37

; <label>:37:                                     ; preds = %19, %14
  %38 = load %struct._RAWLOG_REC*, %struct._RAWLOG_REC** %3, align 8, !dbg !253
  %39 = getelementptr inbounds %struct._RAWLOG_REC, %struct._RAWLOG_REC* %38, i32 0, i32 0, !dbg !255
  %40 = load i32, i32* %39, align 8, !dbg !255
  %41 = icmp ne i32 %40, 0, !dbg !253
  br i1 %41, label %42, label %55, !dbg !256

; <label>:42:                                     ; preds = %37
  %43 = load %struct._RAWLOG_REC*, %struct._RAWLOG_REC** %3, align 8, !dbg !257
  %44 = getelementptr inbounds %struct._RAWLOG_REC, %struct._RAWLOG_REC* %43, i32 0, i32 1, !dbg !259
  %45 = load i32, i32* %44, align 4, !dbg !259
  %46 = load i8*, i8** %4, align 8, !dbg !260
  %47 = load i8*, i8** %4, align 8, !dbg !261
  %48 = call i64 @strlen(i8* %47) #6, !dbg !262
  %49 = trunc i64 %48 to i32, !dbg !262
  %50 = call i32 @write_buffer(i32 %45, i8* %46, i32 %49), !dbg !263
  %51 = load %struct._RAWLOG_REC*, %struct._RAWLOG_REC** %3, align 8, !dbg !265
  %52 = getelementptr inbounds %struct._RAWLOG_REC, %struct._RAWLOG_REC* %51, i32 0, i32 1, !dbg !266
  %53 = load i32, i32* %52, align 4, !dbg !266
  %54 = call i32 @write_buffer(i32 %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), i32 1), !dbg !267
  br label %55, !dbg !268

; <label>:55:                                     ; preds = %42, %37
  %56 = load %struct._RAWLOG_REC*, %struct._RAWLOG_REC** %3, align 8, !dbg !269
  %57 = getelementptr inbounds %struct._RAWLOG_REC, %struct._RAWLOG_REC* %56, i32 0, i32 3, !dbg !270
  %58 = load %struct._GSList*, %struct._GSList** %57, align 8, !dbg !270
  %59 = load i8*, i8** %4, align 8, !dbg !271
  %60 = call %struct._GSList* @g_slist_append(%struct._GSList* %58, i8* %59), !dbg !272
  %61 = load %struct._RAWLOG_REC*, %struct._RAWLOG_REC** %3, align 8, !dbg !273
  %62 = getelementptr inbounds %struct._RAWLOG_REC, %struct._RAWLOG_REC* %61, i32 0, i32 3, !dbg !274
  store %struct._GSList* %60, %struct._GSList** %62, align 8, !dbg !275
  %63 = load i32, i32* @signal_rawlog, align 4, !dbg !276
  %64 = load %struct._RAWLOG_REC*, %struct._RAWLOG_REC** %3, align 8, !dbg !277
  %65 = load i8*, i8** %4, align 8, !dbg !278
  %66 = call i32 (i32, i32, ...) @signal_emit_id(i32 %63, i32 2, %struct._RAWLOG_REC* %64, i8* %65), !dbg !279
  ret void, !dbg !280
}

declare noalias i8* @g_strdup_printf(i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @rawlog_output(%struct._RAWLOG_REC*, i8*) #0 !dbg !281 {
  %3 = alloca %struct._RAWLOG_REC*, align 8
  %4 = alloca i8*, align 8
  store %struct._RAWLOG_REC* %0, %struct._RAWLOG_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._RAWLOG_REC** %3, metadata !282, metadata !121), !dbg !283
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !284, metadata !121), !dbg !285
  br label %5, !dbg !286, !llvm.loop !287

; <label>:5:                                      ; preds = %2
  %6 = load %struct._RAWLOG_REC*, %struct._RAWLOG_REC** %3, align 8, !dbg !288
  %7 = icmp ne %struct._RAWLOG_REC* %6, null, !dbg !292
  br i1 %7, label %8, label %9, !dbg !288

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !293

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.rawlog_output, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)), !dbg !296
  br label %22, !dbg !299

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !300

; <label>:11:                                     ; preds = %10
  br label %12, !dbg !302, !llvm.loop !303

; <label>:12:                                     ; preds = %11
  %13 = load i8*, i8** %4, align 8, !dbg !304
  %14 = icmp ne i8* %13, null, !dbg !308
  br i1 %14, label %15, label %16, !dbg !304

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !309

; <label>:16:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.rawlog_output, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0)), !dbg !312
  br label %22, !dbg !315

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !316

; <label>:18:                                     ; preds = %17
  %19 = load %struct._RAWLOG_REC*, %struct._RAWLOG_REC** %3, align 8, !dbg !318
  %20 = load i8*, i8** %4, align 8, !dbg !319
  %21 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* %20), !dbg !320
  call void @rawlog_add(%struct._RAWLOG_REC* %19, i8* %21), !dbg !321
  br label %22, !dbg !323

; <label>:22:                                     ; preds = %18, %16, %9
  ret void, !dbg !324
}

; Function Attrs: nounwind uwtable
define void @rawlog_redirect(%struct._RAWLOG_REC*, i8*) #0 !dbg !325 {
  %3 = alloca %struct._RAWLOG_REC*, align 8
  %4 = alloca i8*, align 8
  store %struct._RAWLOG_REC* %0, %struct._RAWLOG_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._RAWLOG_REC** %3, metadata !326, metadata !121), !dbg !327
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !328, metadata !121), !dbg !329
  br label %5, !dbg !330, !llvm.loop !331

; <label>:5:                                      ; preds = %2
  %6 = load %struct._RAWLOG_REC*, %struct._RAWLOG_REC** %3, align 8, !dbg !332
  %7 = icmp ne %struct._RAWLOG_REC* %6, null, !dbg !336
  br i1 %7, label %8, label %9, !dbg !332

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !337

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.rawlog_redirect, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)), !dbg !340
  br label %22, !dbg !343

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !344

; <label>:11:                                     ; preds = %10
  br label %12, !dbg !346, !llvm.loop !347

; <label>:12:                                     ; preds = %11
  %13 = load i8*, i8** %4, align 8, !dbg !348
  %14 = icmp ne i8* %13, null, !dbg !352
  br i1 %14, label %15, label %16, !dbg !348

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !353

; <label>:16:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.rawlog_redirect, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0)), !dbg !356
  br label %22, !dbg !359

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !360

; <label>:18:                                     ; preds = %17
  %19 = load %struct._RAWLOG_REC*, %struct._RAWLOG_REC** %3, align 8, !dbg !362
  %20 = load i8*, i8** %4, align 8, !dbg !363
  %21 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* %20), !dbg !364
  call void @rawlog_add(%struct._RAWLOG_REC* %19, i8* %21), !dbg !365
  br label %22, !dbg !367

; <label>:22:                                     ; preds = %18, %16, %9
  ret void, !dbg !368
}

; Function Attrs: nounwind uwtable
define void @rawlog_open(%struct._RAWLOG_REC*, i8*) #0 !dbg !369 {
  %3 = alloca %struct._RAWLOG_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct._RAWLOG_REC* %0, %struct._RAWLOG_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._RAWLOG_REC** %3, metadata !370, metadata !121), !dbg !371
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !372, metadata !121), !dbg !373
  call void @llvm.dbg.declare(metadata i8** %5, metadata !374, metadata !121), !dbg !375
  br label %6, !dbg !376, !llvm.loop !377

; <label>:6:                                      ; preds = %2
  %7 = load %struct._RAWLOG_REC*, %struct._RAWLOG_REC** %3, align 8, !dbg !378
  %8 = icmp ne %struct._RAWLOG_REC* %7, null, !dbg !382
  br i1 %8, label %9, label %10, !dbg !378

; <label>:9:                                      ; preds = %6
  br label %11, !dbg !383

; <label>:10:                                     ; preds = %6
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.rawlog_open, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0)), !dbg !386
  br label %49, !dbg !389

; <label>:11:                                     ; preds = %9
  br label %12, !dbg !390

; <label>:12:                                     ; preds = %11
  br label %13, !dbg !392, !llvm.loop !393

; <label>:13:                                     ; preds = %12
  %14 = load i8*, i8** %4, align 8, !dbg !394
  %15 = icmp ne i8* %14, null, !dbg !398
  br i1 %15, label %16, label %17, !dbg !394

; <label>:16:                                     ; preds = %13
  br label %18, !dbg !399

; <label>:17:                                     ; preds = %13
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.rawlog_open, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0)), !dbg !402
  br label %49, !dbg !405

; <label>:18:                                     ; preds = %16
  br label %19, !dbg !406

; <label>:19:                                     ; preds = %18
  %20 = load %struct._RAWLOG_REC*, %struct._RAWLOG_REC** %3, align 8, !dbg !408
  %21 = getelementptr inbounds %struct._RAWLOG_REC, %struct._RAWLOG_REC* %20, i32 0, i32 0, !dbg !410
  %22 = load i32, i32* %21, align 8, !dbg !410
  %23 = icmp ne i32 %22, 0, !dbg !408
  br i1 %23, label %24, label %25, !dbg !411

; <label>:24:                                     ; preds = %19
  br label %49, !dbg !412

; <label>:25:                                     ; preds = %19
  %26 = load i8*, i8** %4, align 8, !dbg !413
  %27 = call i8* @convert_home(i8* %26), !dbg !414
  store i8* %27, i8** %5, align 8, !dbg !415
  %28 = load i8*, i8** %5, align 8, !dbg !416
  %29 = load i32, i32* @log_file_create_mode, align 4, !dbg !417
  %30 = call i32 (i8*, i32, ...) @open(i8* %28, i32 1089, i32 %29), !dbg !418
  %31 = load %struct._RAWLOG_REC*, %struct._RAWLOG_REC** %3, align 8, !dbg !419
  %32 = getelementptr inbounds %struct._RAWLOG_REC, %struct._RAWLOG_REC* %31, i32 0, i32 1, !dbg !420
  store i32 %30, i32* %32, align 4, !dbg !421
  %33 = load i8*, i8** %5, align 8, !dbg !422
  call void @g_free(i8* %33), !dbg !423
  %34 = load %struct._RAWLOG_REC*, %struct._RAWLOG_REC** %3, align 8, !dbg !424
  %35 = getelementptr inbounds %struct._RAWLOG_REC, %struct._RAWLOG_REC* %34, i32 0, i32 1, !dbg !426
  %36 = load i32, i32* %35, align 4, !dbg !426
  %37 = icmp eq i32 %36, -1, !dbg !427
  br i1 %37, label %38, label %42, !dbg !428

; <label>:38:                                     ; preds = %25
  %39 = call i32* @__errno_location() #1, !dbg !429
  %40 = load i32, i32* %39, align 4, !dbg !431
  %41 = call i8* @strerror(i32 %40) #7, !dbg !432
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0), i8* %41), !dbg !434
  br label %49, !dbg !436

; <label>:42:                                     ; preds = %25
  %43 = load %struct._RAWLOG_REC*, %struct._RAWLOG_REC** %3, align 8, !dbg !437
  %44 = load %struct._RAWLOG_REC*, %struct._RAWLOG_REC** %3, align 8, !dbg !438
  %45 = getelementptr inbounds %struct._RAWLOG_REC, %struct._RAWLOG_REC* %44, i32 0, i32 1, !dbg !439
  %46 = load i32, i32* %45, align 4, !dbg !439
  call void @rawlog_dump(%struct._RAWLOG_REC* %43, i32 %46), !dbg !440
  %47 = load %struct._RAWLOG_REC*, %struct._RAWLOG_REC** %3, align 8, !dbg !441
  %48 = getelementptr inbounds %struct._RAWLOG_REC, %struct._RAWLOG_REC* %47, i32 0, i32 0, !dbg !442
  store i32 1, i32* %48, align 8, !dbg !443
  br label %49, !dbg !444

; <label>:49:                                     ; preds = %42, %38, %24, %17, %10
  ret void, !dbg !445
}

declare i8* @convert_home(i8*) #2

declare i32 @open(i8*, i32, ...) #2

declare void @g_log(i8*, i32, i8*, ...) #2

; Function Attrs: nounwind
declare i8* @strerror(i32) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

; Function Attrs: nounwind uwtable
define internal void @rawlog_dump(%struct._RAWLOG_REC*, i32) #0 !dbg !447 {
  %3 = alloca %struct._RAWLOG_REC*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._GSList*, align 8
  %6 = alloca i64, align 8
  store %struct._RAWLOG_REC* %0, %struct._RAWLOG_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._RAWLOG_REC** %3, metadata !450, metadata !121), !dbg !451
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !452, metadata !121), !dbg !453
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !454, metadata !121), !dbg !455
  call void @llvm.dbg.declare(metadata i64* %6, metadata !456, metadata !121), !dbg !461
  store i64 0, i64* %6, align 8, !dbg !461
  %7 = load %struct._RAWLOG_REC*, %struct._RAWLOG_REC** %3, align 8, !dbg !462
  %8 = getelementptr inbounds %struct._RAWLOG_REC, %struct._RAWLOG_REC* %7, i32 0, i32 3, !dbg !464
  %9 = load %struct._GSList*, %struct._GSList** %8, align 8, !dbg !464
  store %struct._GSList* %9, %struct._GSList** %5, align 8, !dbg !465
  br label %10, !dbg !466

; <label>:10:                                     ; preds = %34, %2
  %11 = load i64, i64* %6, align 8, !dbg !467
  %12 = icmp ne i64 %11, -1, !dbg !470
  br i1 %12, label %13, label %16, !dbg !471

; <label>:13:                                     ; preds = %10
  %14 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !472
  %15 = icmp ne %struct._GSList* %14, null, !dbg !474
  br label %16

; <label>:16:                                     ; preds = %13, %10
  %17 = phi i1 [ false, %10 ], [ %15, %13 ]
  br i1 %17, label %18, label %38, !dbg !475

; <label>:18:                                     ; preds = %16
  %19 = load i32, i32* %4, align 4, !dbg !477
  %20 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !479
  %21 = getelementptr inbounds %struct._GSList, %struct._GSList* %20, i32 0, i32 0, !dbg !480
  %22 = load i8*, i8** %21, align 8, !dbg !480
  %23 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !481
  %24 = getelementptr inbounds %struct._GSList, %struct._GSList* %23, i32 0, i32 0, !dbg !482
  %25 = load i8*, i8** %24, align 8, !dbg !482
  %26 = call i64 @strlen(i8* %25) #6, !dbg !483
  %27 = call i64 @write(i32 %19, i8* %22, i64 %26), !dbg !484
  store i64 %27, i64* %6, align 8, !dbg !486
  %28 = load i64, i64* %6, align 8, !dbg !487
  %29 = icmp ne i64 %28, -1, !dbg !489
  br i1 %29, label %30, label %33, !dbg !490

; <label>:30:                                     ; preds = %18
  %31 = load i32, i32* %4, align 4, !dbg !491
  %32 = call i64 @write(i32 %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), i64 1), !dbg !492
  store i64 %32, i64* %6, align 8, !dbg !493
  br label %33, !dbg !494

; <label>:33:                                     ; preds = %30, %18
  br label %34, !dbg !495

; <label>:34:                                     ; preds = %33
  %35 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !496
  %36 = getelementptr inbounds %struct._GSList, %struct._GSList* %35, i32 0, i32 1, !dbg !498
  %37 = load %struct._GSList*, %struct._GSList** %36, align 8, !dbg !498
  store %struct._GSList* %37, %struct._GSList** %5, align 8, !dbg !499
  br label %10, !dbg !500, !llvm.loop !501

; <label>:38:                                     ; preds = %16
  %39 = load i64, i64* %6, align 8, !dbg !503
  %40 = icmp eq i64 %39, -1, !dbg !505
  br i1 %40, label %41, label %45, !dbg !506

; <label>:41:                                     ; preds = %38
  %42 = call i32* @__errno_location() #1, !dbg !507
  %43 = load i32, i32* %42, align 4, !dbg !509
  %44 = call i8* @strerror(i32 %43) #7, !dbg !510
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i32 0, i32 0), i8* %44), !dbg !512
  br label %45, !dbg !514

; <label>:45:                                     ; preds = %41, %38
  ret void, !dbg !515
}

; Function Attrs: nounwind uwtable
define void @rawlog_close(%struct._RAWLOG_REC*) #0 !dbg !516 {
  %2 = alloca %struct._RAWLOG_REC*, align 8
  store %struct._RAWLOG_REC* %0, %struct._RAWLOG_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._RAWLOG_REC** %2, metadata !517, metadata !121), !dbg !518
  %3 = load %struct._RAWLOG_REC*, %struct._RAWLOG_REC** %2, align 8, !dbg !519
  %4 = getelementptr inbounds %struct._RAWLOG_REC, %struct._RAWLOG_REC* %3, i32 0, i32 0, !dbg !521
  %5 = load i32, i32* %4, align 8, !dbg !521
  %6 = icmp ne i32 %5, 0, !dbg !519
  br i1 %6, label %7, label %14, !dbg !522

; <label>:7:                                      ; preds = %1
  call void @write_buffer_flush(), !dbg !523
  %8 = load %struct._RAWLOG_REC*, %struct._RAWLOG_REC** %2, align 8, !dbg !525
  %9 = getelementptr inbounds %struct._RAWLOG_REC, %struct._RAWLOG_REC* %8, i32 0, i32 1, !dbg !526
  %10 = load i32, i32* %9, align 4, !dbg !526
  %11 = call i32 @close(i32 %10), !dbg !527
  %12 = load %struct._RAWLOG_REC*, %struct._RAWLOG_REC** %2, align 8, !dbg !528
  %13 = getelementptr inbounds %struct._RAWLOG_REC, %struct._RAWLOG_REC* %12, i32 0, i32 0, !dbg !529
  store i32 0, i32* %13, align 8, !dbg !530
  br label %14, !dbg !531

; <label>:14:                                     ; preds = %7, %1
  ret void, !dbg !532
}

; Function Attrs: nounwind uwtable
define void @rawlog_save(%struct._RAWLOG_REC*, i8*) #0 !dbg !533 {
  %3 = alloca %struct._RAWLOG_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct._RAWLOG_REC* %0, %struct._RAWLOG_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._RAWLOG_REC** %3, metadata !534, metadata !121), !dbg !535
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !536, metadata !121), !dbg !537
  call void @llvm.dbg.declare(metadata i8** %5, metadata !538, metadata !121), !dbg !539
  call void @llvm.dbg.declare(metadata i8** %6, metadata !540, metadata !121), !dbg !541
  call void @llvm.dbg.declare(metadata i32* %7, metadata !542, metadata !121), !dbg !543
  %8 = load i8*, i8** %4, align 8, !dbg !544
  %9 = call noalias i8* @g_path_get_dirname(i8* %8), !dbg !545
  store i8* %9, i8** %6, align 8, !dbg !546
  %10 = load i8*, i8** %6, align 8, !dbg !547
  %11 = load i32, i32* @log_dir_create_mode, align 4, !dbg !548
  %12 = call i32 @g_mkdir_with_parents(i8* %10, i32 %11), !dbg !549
  %13 = load i8*, i8** %6, align 8, !dbg !550
  call void @g_free(i8* %13), !dbg !551
  %14 = load i8*, i8** %4, align 8, !dbg !552
  %15 = call i8* @convert_home(i8* %14), !dbg !553
  store i8* %15, i8** %5, align 8, !dbg !554
  %16 = load i8*, i8** %5, align 8, !dbg !555
  %17 = load i32, i32* @log_file_create_mode, align 4, !dbg !556
  %18 = call i32 (i8*, i32, ...) @open(i8* %16, i32 1089, i32 %17), !dbg !557
  store i32 %18, i32* %7, align 4, !dbg !558
  %19 = load i8*, i8** %5, align 8, !dbg !559
  call void @g_free(i8* %19), !dbg !560
  %20 = load i32, i32* %7, align 4, !dbg !561
  %21 = icmp slt i32 %20, 0, !dbg !563
  br i1 %21, label %22, label %26, !dbg !564

; <label>:22:                                     ; preds = %2
  %23 = call i32* @__errno_location() #1, !dbg !565
  %24 = load i32, i32* %23, align 4, !dbg !567
  %25 = call i8* @strerror(i32 %24) #7, !dbg !568
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0), i8* %25), !dbg !570
  br label %31, !dbg !572

; <label>:26:                                     ; preds = %2
  %27 = load %struct._RAWLOG_REC*, %struct._RAWLOG_REC** %3, align 8, !dbg !573
  %28 = load i32, i32* %7, align 4, !dbg !574
  call void @rawlog_dump(%struct._RAWLOG_REC* %27, i32 %28), !dbg !575
  %29 = load i32, i32* %7, align 4, !dbg !576
  %30 = call i32 @close(i32 %29), !dbg !577
  br label %31, !dbg !578

; <label>:31:                                     ; preds = %26, %22
  ret void, !dbg !579
}

declare noalias i8* @g_path_get_dirname(i8*) #2

declare i32 @g_mkdir_with_parents(i8*, i32) #2

; Function Attrs: nounwind uwtable
define void @rawlog_set_size(i32) #0 !dbg !581 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !584, metadata !121), !dbg !585
  %3 = load i32, i32* %2, align 4, !dbg !586
  store i32 %3, i32* @rawlog_lines, align 4, !dbg !587
  ret void, !dbg !588
}

; Function Attrs: nounwind uwtable
define void @rawlog_init() #0 !dbg !589 {
  %1 = call i32 @module_get_uniq_id_str(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0)), !dbg !592
  store i32 %1, i32* @signal_rawlog, align 4, !dbg !593
  call void @settings_add_int_module(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i32 200), !dbg !594
  call void @read_settings(), !dbg !595
  call void @signal_add_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !596
  call void @command_bind_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, i8*)* @cmd_rawlog to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !597
  call void @command_bind_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*)* @cmd_rawlog_save to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !598
  call void @command_bind_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*)* @cmd_rawlog_open to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !599
  call void @command_bind_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i32 -1, i8* null, void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*)* @cmd_rawlog_close to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !600
  ret void, !dbg !601
}

declare i32 @module_get_uniq_id_str(i8*, i8*) #2

declare void @settings_add_int_module(i8*, i8*, i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @read_settings() #0 !dbg !602 {
  %1 = call i32 @settings_get_int(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0)), !dbg !603
  call void @rawlog_set_size(i32 %1), !dbg !604
  ret void, !dbg !606
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare void @command_bind_full(i8*, i32, i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @cmd_rawlog(i8*, %struct._SERVER_REC*, i8*) #0 !dbg !607 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._SERVER_REC*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !927, metadata !121), !dbg !928
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %5, metadata !929, metadata !121), !dbg !930
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !931, metadata !121), !dbg !932
  %7 = load i8*, i8** %4, align 8, !dbg !933
  %8 = load %struct._SERVER_REC*, %struct._SERVER_REC** %5, align 8, !dbg !934
  %9 = bitcast %struct._SERVER_REC* %8 to i8*, !dbg !934
  %10 = load i8*, i8** %6, align 8, !dbg !935
  call void @command_runsub(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* %7, i8* %9, i8* %10), !dbg !936
  ret void, !dbg !937
}

; Function Attrs: nounwind uwtable
define internal void @cmd_rawlog_save(i8*, %struct._SERVER_REC*) #0 !dbg !938 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._SERVER_REC*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !941, metadata !121), !dbg !942
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !943, metadata !121), !dbg !944
  br label %5, !dbg !945, !llvm.loop !946

; <label>:5:                                      ; preds = %2
  %6 = load i8*, i8** %3, align 8, !dbg !947
  %7 = icmp ne i8* %6, null, !dbg !951
  br i1 %7, label %8, label %9, !dbg !947

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !952

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.cmd_rawlog_save, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0)), !dbg !955
  br label %37, !dbg !958

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !959

; <label>:11:                                     ; preds = %10
  %12 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !961
  %13 = icmp eq %struct._SERVER_REC* %12, null, !dbg !963
  br i1 %13, label %19, label %14, !dbg !964

; <label>:14:                                     ; preds = %11
  %15 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !965
  %16 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %15, i32 0, i32 14, !dbg !967
  %17 = load %struct._RAWLOG_REC*, %struct._RAWLOG_REC** %16, align 8, !dbg !967
  %18 = icmp eq %struct._RAWLOG_REC* %17, null, !dbg !968
  br i1 %18, label %19, label %23, !dbg !969

; <label>:19:                                     ; preds = %14, %11
  br label %20, !dbg !970, !llvm.loop !971

; <label>:20:                                     ; preds = %19
  %21 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !972
  call void @signal_stop(), !dbg !975
  br label %37, !dbg !977
                                                  ; No predecessors!
  br label %23, !dbg !978

; <label>:23:                                     ; preds = %22, %14
  %24 = load i8*, i8** %3, align 8, !dbg !980
  %25 = load i8, i8* %24, align 1, !dbg !982
  %26 = sext i8 %25 to i32, !dbg !982
  %27 = icmp eq i32 %26, 0, !dbg !983
  br i1 %27, label %28, label %32, !dbg !984

; <label>:28:                                     ; preds = %23
  br label %29, !dbg !985, !llvm.loop !987

; <label>:29:                                     ; preds = %28
  %30 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !989
  call void @signal_stop(), !dbg !992
  br label %37, !dbg !994
                                                  ; No predecessors!
  br label %32, !dbg !995

; <label>:32:                                     ; preds = %31, %23
  %33 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !997
  %34 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %33, i32 0, i32 14, !dbg !998
  %35 = load %struct._RAWLOG_REC*, %struct._RAWLOG_REC** %34, align 8, !dbg !998
  %36 = load i8*, i8** %3, align 8, !dbg !999
  call void @rawlog_save(%struct._RAWLOG_REC* %35, i8* %36), !dbg !1000
  br label %37, !dbg !1001

; <label>:37:                                     ; preds = %32, %29, %20, %9
  ret void, !dbg !1002
}

; Function Attrs: nounwind uwtable
define internal void @cmd_rawlog_open(i8*, %struct._SERVER_REC*) #0 !dbg !1004 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._SERVER_REC*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1005, metadata !121), !dbg !1006
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !1007, metadata !121), !dbg !1008
  br label %5, !dbg !1009, !llvm.loop !1010

; <label>:5:                                      ; preds = %2
  %6 = load i8*, i8** %3, align 8, !dbg !1011
  %7 = icmp ne i8* %6, null, !dbg !1015
  br i1 %7, label %8, label %9, !dbg !1011

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !1016

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.cmd_rawlog_open, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0)), !dbg !1019
  br label %37, !dbg !1022

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !1023

; <label>:11:                                     ; preds = %10
  %12 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1025
  %13 = icmp eq %struct._SERVER_REC* %12, null, !dbg !1027
  br i1 %13, label %19, label %14, !dbg !1028

; <label>:14:                                     ; preds = %11
  %15 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1029
  %16 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %15, i32 0, i32 14, !dbg !1031
  %17 = load %struct._RAWLOG_REC*, %struct._RAWLOG_REC** %16, align 8, !dbg !1031
  %18 = icmp eq %struct._RAWLOG_REC* %17, null, !dbg !1032
  br i1 %18, label %19, label %23, !dbg !1033

; <label>:19:                                     ; preds = %14, %11
  br label %20, !dbg !1034, !llvm.loop !1035

; <label>:20:                                     ; preds = %19
  %21 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !1036
  call void @signal_stop(), !dbg !1039
  br label %37, !dbg !1041
                                                  ; No predecessors!
  br label %23, !dbg !1042

; <label>:23:                                     ; preds = %22, %14
  %24 = load i8*, i8** %3, align 8, !dbg !1044
  %25 = load i8, i8* %24, align 1, !dbg !1046
  %26 = sext i8 %25 to i32, !dbg !1046
  %27 = icmp eq i32 %26, 0, !dbg !1047
  br i1 %27, label %28, label %32, !dbg !1048

; <label>:28:                                     ; preds = %23
  br label %29, !dbg !1049, !llvm.loop !1051

; <label>:29:                                     ; preds = %28
  %30 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i32 1, i8* inttoptr (i64 3 to i8*)), !dbg !1053
  call void @signal_stop(), !dbg !1056
  br label %37, !dbg !1058
                                                  ; No predecessors!
  br label %32, !dbg !1059

; <label>:32:                                     ; preds = %31, %23
  %33 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1061
  %34 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %33, i32 0, i32 14, !dbg !1062
  %35 = load %struct._RAWLOG_REC*, %struct._RAWLOG_REC** %34, align 8, !dbg !1062
  %36 = load i8*, i8** %3, align 8, !dbg !1063
  call void @rawlog_open(%struct._RAWLOG_REC* %35, i8* %36), !dbg !1064
  br label %37, !dbg !1065

; <label>:37:                                     ; preds = %32, %29, %20, %9
  ret void, !dbg !1066
}

; Function Attrs: nounwind uwtable
define internal void @cmd_rawlog_close(i8*, %struct._SERVER_REC*) #0 !dbg !1068 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._SERVER_REC*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1069, metadata !121), !dbg !1070
  store %struct._SERVER_REC* %1, %struct._SERVER_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._SERVER_REC** %4, metadata !1071, metadata !121), !dbg !1072
  br label %5, !dbg !1073, !llvm.loop !1074

; <label>:5:                                      ; preds = %2
  %6 = load i8*, i8** %3, align 8, !dbg !1075
  %7 = icmp ne i8* %6, null, !dbg !1079
  br i1 %7, label %8, label %9, !dbg !1075

; <label>:8:                                      ; preds = %5
  br label %10, !dbg !1080

; <label>:9:                                      ; preds = %5
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.cmd_rawlog_close, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0)), !dbg !1083
  br label %27, !dbg !1086

; <label>:10:                                     ; preds = %8
  br label %11, !dbg !1087

; <label>:11:                                     ; preds = %10
  %12 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1089
  %13 = icmp eq %struct._SERVER_REC* %12, null, !dbg !1091
  br i1 %13, label %19, label %14, !dbg !1092

; <label>:14:                                     ; preds = %11
  %15 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1093
  %16 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %15, i32 0, i32 14, !dbg !1095
  %17 = load %struct._RAWLOG_REC*, %struct._RAWLOG_REC** %16, align 8, !dbg !1095
  %18 = icmp eq %struct._RAWLOG_REC* %17, null, !dbg !1096
  br i1 %18, label %19, label %23, !dbg !1097

; <label>:19:                                     ; preds = %14, %11
  br label %20, !dbg !1098, !llvm.loop !1099

; <label>:20:                                     ; preds = %19
  %21 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), i32 1, i8* inttoptr (i64 4 to i8*)), !dbg !1100
  call void @signal_stop(), !dbg !1103
  br label %27, !dbg !1105
                                                  ; No predecessors!
  br label %23, !dbg !1106

; <label>:23:                                     ; preds = %22, %14
  %24 = load %struct._SERVER_REC*, %struct._SERVER_REC** %4, align 8, !dbg !1108
  %25 = getelementptr inbounds %struct._SERVER_REC, %struct._SERVER_REC* %24, i32 0, i32 14, !dbg !1109
  %26 = load %struct._RAWLOG_REC*, %struct._RAWLOG_REC** %25, align 8, !dbg !1109
  call void @rawlog_close(%struct._RAWLOG_REC* %26), !dbg !1110
  br label %27, !dbg !1111

; <label>:27:                                     ; preds = %23, %20, %9
  ret void, !dbg !1112
}

; Function Attrs: nounwind uwtable
define void @rawlog_deinit() #0 !dbg !1114 {
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1115
  call void @command_unbind_full(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*, i8*)* @cmd_rawlog to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1116
  call void @command_unbind_full(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*)* @cmd_rawlog_save to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1117
  call void @command_unbind_full(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*)* @cmd_rawlog_open to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1118
  call void @command_unbind_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void (i8*, %struct._SERVER_REC*)* @cmd_rawlog_close to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1119
  ret void, !dbg !1120
}

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare void @command_unbind_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #2

declare i32 @write_buffer(i32, i8*, i32) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #2

declare i32 @signal_emit_id(i32, i32, ...) #2

declare i64 @write(i32, i8*, i64) #2

declare i32 @settings_get_int(i8*) #2

declare void @command_runsub(i8*, i8*, i8*, i8*) #2

declare i32 @signal_emit(i8*, i32, ...) #2

declare void @signal_stop() #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!113, !114}
!llvm.ident = !{!115}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !68, globals: !109)
!1 = !DIFile(filename: "line71-rawlog.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !15, !22, !27, !36, !47}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 51, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/irssi/task1")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14}
!6 = !DIEnumerator(name: "G_LOG_FLAG_RECURSION", value: 1)
!7 = !DIEnumerator(name: "G_LOG_FLAG_FATAL", value: 2)
!8 = !DIEnumerator(name: "G_LOG_LEVEL_ERROR", value: 4)
!9 = !DIEnumerator(name: "G_LOG_LEVEL_CRITICAL", value: 8)
!10 = !DIEnumerator(name: "G_LOG_LEVEL_WARNING", value: 16)
!11 = !DIEnumerator(name: "G_LOG_LEVEL_MESSAGE", value: 32)
!12 = !DIEnumerator(name: "G_LOG_LEVEL_INFO", value: 64)
!13 = !DIEnumerator(name: "G_LOG_LEVEL_DEBUG", value: 128)
!14 = !DIEnumerator(name: "G_LOG_LEVEL_MASK", value: -4)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 69, size: 32, align: 32, elements: !17)
!16 = !DIFile(filename: "/usr/include/glib-2.0/glib/giochannel.h", directory: "/home/lichi/Desktop/irssi/task1")
!17 = !{!18, !19, !20, !21}
!18 = !DIEnumerator(name: "G_IO_STATUS_ERROR", value: 0)
!19 = !DIEnumerator(name: "G_IO_STATUS_NORMAL", value: 1)
!20 = !DIEnumerator(name: "G_IO_STATUS_EOF", value: 2)
!21 = !DIEnumerator(name: "G_IO_STATUS_AGAIN", value: 3)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 77, size: 32, align: 32, elements: !23)
!23 = !{!24, !25, !26}
!24 = !DIEnumerator(name: "G_SEEK_CUR", value: 0)
!25 = !DIEnumerator(name: "G_SEEK_SET", value: 1)
!26 = !DIEnumerator(name: "G_SEEK_END", value: 2)
!27 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !28, line: 31, size: 32, align: 32, elements: !29)
!28 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/irssi/task1")
!29 = !{!30, !31, !32, !33, !34, !35}
!30 = !DIEnumerator(name: "G_IO_IN", value: 1)
!31 = !DIEnumerator(name: "G_IO_OUT", value: 4)
!32 = !DIEnumerator(name: "G_IO_PRI", value: 2)
!33 = !DIEnumerator(name: "G_IO_ERR", value: 8)
!34 = !DIEnumerator(name: "G_IO_HUP", value: 16)
!35 = !DIEnumerator(name: "G_IO_NVAL", value: 32)
!36 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 84, size: 32, align: 32, elements: !37)
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !46}
!38 = !DIEnumerator(name: "G_IO_FLAG_APPEND", value: 1)
!39 = !DIEnumerator(name: "G_IO_FLAG_NONBLOCK", value: 2)
!40 = !DIEnumerator(name: "G_IO_FLAG_IS_READABLE", value: 4)
!41 = !DIEnumerator(name: "G_IO_FLAG_IS_WRITABLE", value: 8)
!42 = !DIEnumerator(name: "G_IO_FLAG_IS_WRITEABLE", value: 8)
!43 = !DIEnumerator(name: "G_IO_FLAG_IS_SEEKABLE", value: 16)
!44 = !DIEnumerator(name: "G_IO_FLAG_MASK", value: 31)
!45 = !DIEnumerator(name: "G_IO_FLAG_GET_MASK", value: 31)
!46 = !DIEnumerator(name: "G_IO_FLAG_SET_MASK", value: 3)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !48, line: 25, size: 32, align: 32, elements: !49)
!48 = !DIFile(filename: "commands.h", directory: "/home/lichi/Desktop/irssi/task1")
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
!68 = !{!69, !88, !90, !93, !95, !99, !106, !86, !107}
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "RAWLOG_REC", file: !71, line: 103, baseType: !72)
!71 = !DIFile(filename: "../../src/common.h", directory: "/home/lichi/Desktop/irssi/task1")
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_RAWLOG_REC", file: !73, line: 4, size: 192, align: 64, elements: !74)
!73 = !DIFile(filename: "rawlog.h", directory: "/home/lichi/Desktop/irssi/task1")
!74 = !{!75, !77, !78, !79}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "logging", scope: !72, file: !73, line: 5, baseType: !76, size: 32, align: 32)
!76 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !72, file: !73, line: 6, baseType: !76, size: 32, align: 32, offset: 32)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "nlines", scope: !72, file: !73, line: 8, baseType: !76, size: 32, align: 32, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "lines", scope: !72, file: !73, line: 9, baseType: !80, size: 64, align: 64, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64, align: 64)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !82, line: 37, baseType: !83)
!82 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !82, line: 39, size: 128, align: 64, elements: !84)
!84 = !{!85, !89}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !83, file: !82, line: 41, baseType: !86, size: 64, align: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !87, line: 77, baseType: !88)
!87 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !83, file: !82, line: 42, baseType: !80, size: 64, align: 64, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !87, line: 46, baseType: !92)
!92 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!94 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "GFunc", file: !87, line: 88, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64, align: 64)
!97 = !DISubroutineType(types: !98)
!98 = !{null, !86, !86}
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !100, line: 9, baseType: !101)
!100 = !DIFile(filename: "signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64, align: 64)
!102 = !DISubroutineType(types: !103)
!103 = !{null, !104, !104, !104, !104, !104, !104}
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64, align: 64)
!105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, align: 64)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "glong", file: !87, line: 48, baseType: !108)
!108 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!109 = !{!110, !112}
!110 = distinct !DIGlobalVariable(name: "rawlog_lines", scope: !0, file: !111, line: 36, type: !76, isLocal: true, isDefinition: true, variable: i32* @rawlog_lines)
!111 = !DIFile(filename: "rawlog.c", directory: "/home/lichi/Desktop/irssi/task1")
!112 = distinct !DIGlobalVariable(name: "signal_rawlog", scope: !0, file: !111, line: 37, type: !76, isLocal: true, isDefinition: true, variable: i32* @signal_rawlog)
!113 = !{i32 2, !"Dwarf Version", i32 4}
!114 = !{i32 2, !"Debug Info Version", i32 3}
!115 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!116 = distinct !DISubprogram(name: "rawlog_create", scope: !111, file: !111, line: 39, type: !117, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !119)
!117 = !DISubroutineType(types: !118)
!118 = !{!69}
!119 = !{}
!120 = !DILocalVariable(name: "rec", scope: !116, file: !111, line: 41, type: !69)
!121 = !DIExpression()
!122 = !DILocation(line: 41, column: 14, scope: !116)
!123 = !DILocation(line: 43, column: 24, scope: !116)
!124 = !DILocation(line: 43, column: 9, scope: !116)
!125 = !DILocation(line: 43, column: 6, scope: !116)
!126 = !DILocation(line: 44, column: 16, scope: !116)
!127 = !DILocation(line: 44, column: 9, scope: !116)
!128 = distinct !DISubprogram(name: "rawlog_destroy", scope: !111, file: !111, line: 47, type: !129, isLocal: false, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !119)
!129 = !DISubroutineType(types: !130)
!130 = !{null, !69}
!131 = !DILocalVariable(name: "rawlog", arg: 1, scope: !128, file: !111, line: 47, type: !69)
!132 = !DILocation(line: 47, column: 33, scope: !128)
!133 = !DILocation(line: 49, column: 2, scope: !128)
!134 = distinct !{!134, !133}
!135 = !DILocation(line: 49, column: 10, scope: !136)
!136 = !DILexicalBlockFile(scope: !137, file: !111, discriminator: 1)
!137 = distinct !DILexicalBlock(scope: !138, file: !111, line: 49, column: 10)
!138 = distinct !DILexicalBlock(scope: !128, file: !111, line: 49, column: 4)
!139 = !DILocation(line: 49, column: 17, scope: !136)
!140 = !DILocation(line: 49, column: 5, scope: !141)
!141 = !DILexicalBlockFile(scope: !142, file: !111, discriminator: 2)
!142 = distinct !DILexicalBlock(scope: !137, file: !111, line: 49, column: 3)
!143 = !DILocation(line: 49, column: 14, scope: !144)
!144 = !DILexicalBlockFile(scope: !145, file: !111, discriminator: 3)
!145 = distinct !DILexicalBlock(scope: !137, file: !111, line: 49, column: 12)
!146 = !DILocation(line: 49, column: 101, scope: !144)
!147 = !DILocation(line: 49, column: 112, scope: !148)
!148 = !DILexicalBlockFile(scope: !138, file: !111, discriminator: 4)
!149 = !DILocation(line: 51, column: 18, scope: !128)
!150 = !DILocation(line: 51, column: 26, scope: !128)
!151 = !DILocation(line: 51, column: 2, scope: !128)
!152 = !DILocation(line: 52, column: 15, scope: !128)
!153 = !DILocation(line: 52, column: 23, scope: !128)
!154 = !DILocation(line: 52, column: 2, scope: !128)
!155 = !DILocation(line: 54, column: 6, scope: !156)
!156 = distinct !DILexicalBlock(scope: !128, file: !111, line: 54, column: 6)
!157 = !DILocation(line: 54, column: 14, scope: !156)
!158 = !DILocation(line: 54, column: 6, scope: !128)
!159 = !DILocation(line: 55, column: 3, scope: !160)
!160 = distinct !DILexicalBlock(scope: !156, file: !111, line: 54, column: 23)
!161 = !DILocation(line: 56, column: 9, scope: !160)
!162 = !DILocation(line: 56, column: 17, scope: !160)
!163 = !DILocation(line: 56, column: 3, scope: !160)
!164 = !DILocation(line: 57, column: 2, scope: !160)
!165 = !DILocation(line: 58, column: 9, scope: !128)
!166 = !DILocation(line: 58, column: 2, scope: !128)
!167 = !DILocation(line: 59, column: 1, scope: !128)
!168 = !DILocation(line: 59, column: 1, scope: !169)
!169 = !DILexicalBlockFile(scope: !128, file: !111, discriminator: 1)
!170 = distinct !DISubprogram(name: "rawlog_input", scope: !111, file: !111, line: 82, type: !171, isLocal: false, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !119)
!171 = !DISubroutineType(types: !172)
!172 = !{null, !69, !93}
!173 = !DILocalVariable(name: "rawlog", arg: 1, scope: !170, file: !111, line: 82, type: !69)
!174 = !DILocation(line: 82, column: 31, scope: !170)
!175 = !DILocalVariable(name: "str", arg: 2, scope: !170, file: !111, line: 82, type: !93)
!176 = !DILocation(line: 82, column: 51, scope: !170)
!177 = !DILocation(line: 84, column: 2, scope: !170)
!178 = distinct !{!178, !177}
!179 = !DILocation(line: 84, column: 10, scope: !180)
!180 = !DILexicalBlockFile(scope: !181, file: !111, discriminator: 1)
!181 = distinct !DILexicalBlock(scope: !182, file: !111, line: 84, column: 10)
!182 = distinct !DILexicalBlock(scope: !170, file: !111, line: 84, column: 4)
!183 = !DILocation(line: 84, column: 17, scope: !180)
!184 = !DILocation(line: 84, column: 5, scope: !185)
!185 = !DILexicalBlockFile(scope: !186, file: !111, discriminator: 2)
!186 = distinct !DILexicalBlock(scope: !181, file: !111, line: 84, column: 3)
!187 = !DILocation(line: 84, column: 14, scope: !188)
!188 = !DILexicalBlockFile(scope: !189, file: !111, discriminator: 3)
!189 = distinct !DILexicalBlock(scope: !181, file: !111, line: 84, column: 12)
!190 = !DILocation(line: 84, column: 101, scope: !188)
!191 = !DILocation(line: 84, column: 112, scope: !192)
!192 = !DILexicalBlockFile(scope: !182, file: !111, discriminator: 4)
!193 = !DILocation(line: 85, column: 2, scope: !170)
!194 = distinct !{!194, !193}
!195 = !DILocation(line: 85, column: 10, scope: !196)
!196 = !DILexicalBlockFile(scope: !197, file: !111, discriminator: 1)
!197 = distinct !DILexicalBlock(scope: !198, file: !111, line: 85, column: 10)
!198 = distinct !DILexicalBlock(scope: !170, file: !111, line: 85, column: 4)
!199 = !DILocation(line: 85, column: 14, scope: !196)
!200 = !DILocation(line: 85, column: 5, scope: !201)
!201 = !DILexicalBlockFile(scope: !202, file: !111, discriminator: 2)
!202 = distinct !DILexicalBlock(scope: !197, file: !111, line: 85, column: 3)
!203 = !DILocation(line: 85, column: 14, scope: !204)
!204 = !DILexicalBlockFile(scope: !205, file: !111, discriminator: 3)
!205 = distinct !DILexicalBlock(scope: !197, file: !111, line: 85, column: 12)
!206 = !DILocation(line: 85, column: 98, scope: !204)
!207 = !DILocation(line: 85, column: 109, scope: !208)
!208 = !DILexicalBlockFile(scope: !198, file: !111, discriminator: 4)
!209 = !DILocation(line: 87, column: 13, scope: !170)
!210 = !DILocation(line: 87, column: 46, scope: !170)
!211 = !DILocation(line: 87, column: 21, scope: !170)
!212 = !DILocation(line: 87, column: 2, scope: !213)
!213 = !DILexicalBlockFile(scope: !170, file: !111, discriminator: 1)
!214 = !DILocation(line: 88, column: 1, scope: !170)
!215 = !DILocation(line: 88, column: 1, scope: !213)
!216 = distinct !DISubprogram(name: "rawlog_add", scope: !111, file: !111, line: 62, type: !217, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !119)
!217 = !DISubroutineType(types: !218)
!218 = !{null, !69, !106}
!219 = !DILocalVariable(name: "rawlog", arg: 1, scope: !216, file: !111, line: 62, type: !69)
!220 = !DILocation(line: 62, column: 36, scope: !216)
!221 = !DILocalVariable(name: "str", arg: 2, scope: !216, file: !111, line: 62, type: !106)
!222 = !DILocation(line: 62, column: 50, scope: !216)
!223 = !DILocation(line: 64, column: 6, scope: !224)
!224 = distinct !DILexicalBlock(scope: !216, file: !111, line: 64, column: 6)
!225 = !DILocation(line: 64, column: 14, scope: !224)
!226 = !DILocation(line: 64, column: 23, scope: !224)
!227 = !DILocation(line: 64, column: 21, scope: !224)
!228 = !DILocation(line: 64, column: 36, scope: !224)
!229 = !DILocation(line: 64, column: 39, scope: !230)
!230 = !DILexicalBlockFile(scope: !224, file: !111, discriminator: 1)
!231 = !DILocation(line: 64, column: 52, scope: !230)
!232 = !DILocation(line: 64, column: 6, scope: !230)
!233 = !DILocation(line: 65, column: 3, scope: !224)
!234 = !DILocation(line: 65, column: 11, scope: !224)
!235 = !DILocation(line: 65, column: 17, scope: !224)
!236 = !DILocalVariable(name: "tmp", scope: !237, file: !111, line: 67, type: !88)
!237 = distinct !DILexicalBlock(scope: !224, file: !111, line: 66, column: 7)
!238 = !DILocation(line: 67, column: 9, scope: !237)
!239 = !DILocation(line: 67, column: 15, scope: !237)
!240 = !DILocation(line: 67, column: 23, scope: !237)
!241 = !DILocation(line: 67, column: 30, scope: !237)
!242 = !DILocation(line: 68, column: 34, scope: !237)
!243 = !DILocation(line: 68, column: 42, scope: !237)
!244 = !DILocation(line: 69, column: 13, scope: !237)
!245 = !DILocation(line: 69, column: 21, scope: !237)
!246 = !DILocation(line: 69, column: 28, scope: !237)
!247 = !DILocation(line: 68, column: 19, scope: !237)
!248 = !DILocation(line: 68, column: 3, scope: !237)
!249 = !DILocation(line: 68, column: 11, scope: !237)
!250 = !DILocation(line: 68, column: 17, scope: !237)
!251 = !DILocation(line: 70, column: 10, scope: !237)
!252 = !DILocation(line: 70, column: 3, scope: !237)
!253 = !DILocation(line: 73, column: 6, scope: !254)
!254 = distinct !DILexicalBlock(scope: !216, file: !111, line: 73, column: 6)
!255 = !DILocation(line: 73, column: 14, scope: !254)
!256 = !DILocation(line: 73, column: 6, scope: !216)
!257 = !DILocation(line: 74, column: 16, scope: !258)
!258 = distinct !DILexicalBlock(scope: !254, file: !111, line: 73, column: 23)
!259 = !DILocation(line: 74, column: 24, scope: !258)
!260 = !DILocation(line: 74, column: 32, scope: !258)
!261 = !DILocation(line: 74, column: 44, scope: !258)
!262 = !DILocation(line: 74, column: 37, scope: !258)
!263 = !DILocation(line: 74, column: 3, scope: !264)
!264 = !DILexicalBlockFile(scope: !258, file: !111, discriminator: 1)
!265 = !DILocation(line: 75, column: 16, scope: !258)
!266 = !DILocation(line: 75, column: 24, scope: !258)
!267 = !DILocation(line: 75, column: 3, scope: !258)
!268 = !DILocation(line: 76, column: 2, scope: !258)
!269 = !DILocation(line: 78, column: 33, scope: !216)
!270 = !DILocation(line: 78, column: 41, scope: !216)
!271 = !DILocation(line: 78, column: 48, scope: !216)
!272 = !DILocation(line: 78, column: 18, scope: !216)
!273 = !DILocation(line: 78, column: 2, scope: !216)
!274 = !DILocation(line: 78, column: 10, scope: !216)
!275 = !DILocation(line: 78, column: 16, scope: !216)
!276 = !DILocation(line: 79, column: 17, scope: !216)
!277 = !DILocation(line: 79, column: 35, scope: !216)
!278 = !DILocation(line: 79, column: 43, scope: !216)
!279 = !DILocation(line: 79, column: 2, scope: !216)
!280 = !DILocation(line: 80, column: 1, scope: !216)
!281 = distinct !DISubprogram(name: "rawlog_output", scope: !111, file: !111, line: 90, type: !171, isLocal: false, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !119)
!282 = !DILocalVariable(name: "rawlog", arg: 1, scope: !281, file: !111, line: 90, type: !69)
!283 = !DILocation(line: 90, column: 32, scope: !281)
!284 = !DILocalVariable(name: "str", arg: 2, scope: !281, file: !111, line: 90, type: !93)
!285 = !DILocation(line: 90, column: 52, scope: !281)
!286 = !DILocation(line: 92, column: 2, scope: !281)
!287 = distinct !{!287, !286}
!288 = !DILocation(line: 92, column: 10, scope: !289)
!289 = !DILexicalBlockFile(scope: !290, file: !111, discriminator: 1)
!290 = distinct !DILexicalBlock(scope: !291, file: !111, line: 92, column: 10)
!291 = distinct !DILexicalBlock(scope: !281, file: !111, line: 92, column: 4)
!292 = !DILocation(line: 92, column: 17, scope: !289)
!293 = !DILocation(line: 92, column: 5, scope: !294)
!294 = !DILexicalBlockFile(scope: !295, file: !111, discriminator: 2)
!295 = distinct !DILexicalBlock(scope: !290, file: !111, line: 92, column: 3)
!296 = !DILocation(line: 92, column: 14, scope: !297)
!297 = !DILexicalBlockFile(scope: !298, file: !111, discriminator: 3)
!298 = distinct !DILexicalBlock(scope: !290, file: !111, line: 92, column: 12)
!299 = !DILocation(line: 92, column: 101, scope: !297)
!300 = !DILocation(line: 92, column: 112, scope: !301)
!301 = !DILexicalBlockFile(scope: !291, file: !111, discriminator: 4)
!302 = !DILocation(line: 93, column: 2, scope: !281)
!303 = distinct !{!303, !302}
!304 = !DILocation(line: 93, column: 10, scope: !305)
!305 = !DILexicalBlockFile(scope: !306, file: !111, discriminator: 1)
!306 = distinct !DILexicalBlock(scope: !307, file: !111, line: 93, column: 10)
!307 = distinct !DILexicalBlock(scope: !281, file: !111, line: 93, column: 4)
!308 = !DILocation(line: 93, column: 14, scope: !305)
!309 = !DILocation(line: 93, column: 5, scope: !310)
!310 = !DILexicalBlockFile(scope: !311, file: !111, discriminator: 2)
!311 = distinct !DILexicalBlock(scope: !306, file: !111, line: 93, column: 3)
!312 = !DILocation(line: 93, column: 14, scope: !313)
!313 = !DILexicalBlockFile(scope: !314, file: !111, discriminator: 3)
!314 = distinct !DILexicalBlock(scope: !306, file: !111, line: 93, column: 12)
!315 = !DILocation(line: 93, column: 98, scope: !313)
!316 = !DILocation(line: 93, column: 109, scope: !317)
!317 = !DILexicalBlockFile(scope: !307, file: !111, discriminator: 4)
!318 = !DILocation(line: 95, column: 13, scope: !281)
!319 = !DILocation(line: 95, column: 46, scope: !281)
!320 = !DILocation(line: 95, column: 21, scope: !281)
!321 = !DILocation(line: 95, column: 2, scope: !322)
!322 = !DILexicalBlockFile(scope: !281, file: !111, discriminator: 1)
!323 = !DILocation(line: 96, column: 1, scope: !281)
!324 = !DILocation(line: 96, column: 1, scope: !322)
!325 = distinct !DISubprogram(name: "rawlog_redirect", scope: !111, file: !111, line: 98, type: !171, isLocal: false, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !119)
!326 = !DILocalVariable(name: "rawlog", arg: 1, scope: !325, file: !111, line: 98, type: !69)
!327 = !DILocation(line: 98, column: 34, scope: !325)
!328 = !DILocalVariable(name: "str", arg: 2, scope: !325, file: !111, line: 98, type: !93)
!329 = !DILocation(line: 98, column: 54, scope: !325)
!330 = !DILocation(line: 100, column: 2, scope: !325)
!331 = distinct !{!331, !330}
!332 = !DILocation(line: 100, column: 10, scope: !333)
!333 = !DILexicalBlockFile(scope: !334, file: !111, discriminator: 1)
!334 = distinct !DILexicalBlock(scope: !335, file: !111, line: 100, column: 10)
!335 = distinct !DILexicalBlock(scope: !325, file: !111, line: 100, column: 4)
!336 = !DILocation(line: 100, column: 17, scope: !333)
!337 = !DILocation(line: 100, column: 5, scope: !338)
!338 = !DILexicalBlockFile(scope: !339, file: !111, discriminator: 2)
!339 = distinct !DILexicalBlock(scope: !334, file: !111, line: 100, column: 3)
!340 = !DILocation(line: 100, column: 14, scope: !341)
!341 = !DILexicalBlockFile(scope: !342, file: !111, discriminator: 3)
!342 = distinct !DILexicalBlock(scope: !334, file: !111, line: 100, column: 12)
!343 = !DILocation(line: 100, column: 101, scope: !341)
!344 = !DILocation(line: 100, column: 112, scope: !345)
!345 = !DILexicalBlockFile(scope: !335, file: !111, discriminator: 4)
!346 = !DILocation(line: 101, column: 2, scope: !325)
!347 = distinct !{!347, !346}
!348 = !DILocation(line: 101, column: 10, scope: !349)
!349 = !DILexicalBlockFile(scope: !350, file: !111, discriminator: 1)
!350 = distinct !DILexicalBlock(scope: !351, file: !111, line: 101, column: 10)
!351 = distinct !DILexicalBlock(scope: !325, file: !111, line: 101, column: 4)
!352 = !DILocation(line: 101, column: 14, scope: !349)
!353 = !DILocation(line: 101, column: 5, scope: !354)
!354 = !DILexicalBlockFile(scope: !355, file: !111, discriminator: 2)
!355 = distinct !DILexicalBlock(scope: !350, file: !111, line: 101, column: 3)
!356 = !DILocation(line: 101, column: 14, scope: !357)
!357 = !DILexicalBlockFile(scope: !358, file: !111, discriminator: 3)
!358 = distinct !DILexicalBlock(scope: !350, file: !111, line: 101, column: 12)
!359 = !DILocation(line: 101, column: 98, scope: !357)
!360 = !DILocation(line: 101, column: 109, scope: !361)
!361 = !DILexicalBlockFile(scope: !351, file: !111, discriminator: 4)
!362 = !DILocation(line: 103, column: 13, scope: !325)
!363 = !DILocation(line: 103, column: 47, scope: !325)
!364 = !DILocation(line: 103, column: 21, scope: !325)
!365 = !DILocation(line: 103, column: 2, scope: !366)
!366 = !DILexicalBlockFile(scope: !325, file: !111, discriminator: 1)
!367 = !DILocation(line: 104, column: 1, scope: !325)
!368 = !DILocation(line: 104, column: 1, scope: !366)
!369 = distinct !DISubprogram(name: "rawlog_open", scope: !111, file: !111, line: 122, type: !171, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !119)
!370 = !DILocalVariable(name: "rawlog", arg: 1, scope: !369, file: !111, line: 122, type: !69)
!371 = !DILocation(line: 122, column: 30, scope: !369)
!372 = !DILocalVariable(name: "fname", arg: 2, scope: !369, file: !111, line: 122, type: !93)
!373 = !DILocation(line: 122, column: 50, scope: !369)
!374 = !DILocalVariable(name: "path", scope: !369, file: !111, line: 124, type: !106)
!375 = !DILocation(line: 124, column: 8, scope: !369)
!376 = !DILocation(line: 126, column: 9, scope: !369)
!377 = distinct !{!377, !376}
!378 = !DILocation(line: 126, column: 17, scope: !379)
!379 = !DILexicalBlockFile(scope: !380, file: !111, discriminator: 1)
!380 = distinct !DILexicalBlock(scope: !381, file: !111, line: 126, column: 17)
!381 = distinct !DILexicalBlock(scope: !369, file: !111, line: 126, column: 11)
!382 = !DILocation(line: 126, column: 24, scope: !379)
!383 = !DILocation(line: 126, column: 12, scope: !384)
!384 = !DILexicalBlockFile(scope: !385, file: !111, discriminator: 2)
!385 = distinct !DILexicalBlock(scope: !380, file: !111, line: 126, column: 10)
!386 = !DILocation(line: 126, column: 21, scope: !387)
!387 = !DILexicalBlockFile(scope: !388, file: !111, discriminator: 3)
!388 = distinct !DILexicalBlock(scope: !380, file: !111, line: 126, column: 19)
!389 = !DILocation(line: 126, column: 108, scope: !387)
!390 = !DILocation(line: 126, column: 119, scope: !391)
!391 = !DILexicalBlockFile(scope: !381, file: !111, discriminator: 4)
!392 = !DILocation(line: 127, column: 2, scope: !369)
!393 = distinct !{!393, !392}
!394 = !DILocation(line: 127, column: 10, scope: !395)
!395 = !DILexicalBlockFile(scope: !396, file: !111, discriminator: 1)
!396 = distinct !DILexicalBlock(scope: !397, file: !111, line: 127, column: 10)
!397 = distinct !DILexicalBlock(scope: !369, file: !111, line: 127, column: 4)
!398 = !DILocation(line: 127, column: 16, scope: !395)
!399 = !DILocation(line: 127, column: 5, scope: !400)
!400 = !DILexicalBlockFile(scope: !401, file: !111, discriminator: 2)
!401 = distinct !DILexicalBlock(scope: !396, file: !111, line: 127, column: 3)
!402 = !DILocation(line: 127, column: 14, scope: !403)
!403 = !DILexicalBlockFile(scope: !404, file: !111, discriminator: 3)
!404 = distinct !DILexicalBlock(scope: !396, file: !111, line: 127, column: 12)
!405 = !DILocation(line: 127, column: 100, scope: !403)
!406 = !DILocation(line: 127, column: 111, scope: !407)
!407 = !DILexicalBlockFile(scope: !397, file: !111, discriminator: 4)
!408 = !DILocation(line: 129, column: 6, scope: !409)
!409 = distinct !DILexicalBlock(scope: !369, file: !111, line: 129, column: 6)
!410 = !DILocation(line: 129, column: 14, scope: !409)
!411 = !DILocation(line: 129, column: 6, scope: !369)
!412 = !DILocation(line: 130, column: 3, scope: !409)
!413 = !DILocation(line: 132, column: 22, scope: !369)
!414 = !DILocation(line: 132, column: 9, scope: !369)
!415 = !DILocation(line: 132, column: 7, scope: !369)
!416 = !DILocation(line: 138, column: 24, scope: !369)
!417 = !DILocation(line: 139, column: 10, scope: !369)
!418 = !DILocation(line: 138, column: 19, scope: !369)
!419 = !DILocation(line: 138, column: 2, scope: !369)
!420 = !DILocation(line: 138, column: 10, scope: !369)
!421 = !DILocation(line: 138, column: 17, scope: !369)
!422 = !DILocation(line: 142, column: 9, scope: !369)
!423 = !DILocation(line: 142, column: 2, scope: !369)
!424 = !DILocation(line: 144, column: 6, scope: !425)
!425 = distinct !DILexicalBlock(scope: !369, file: !111, line: 144, column: 6)
!426 = !DILocation(line: 144, column: 14, scope: !425)
!427 = !DILocation(line: 144, column: 21, scope: !425)
!428 = !DILocation(line: 144, column: 6, scope: !369)
!429 = !DILocation(line: 145, column: 4, scope: !430)
!430 = distinct !DILexicalBlock(scope: !425, file: !111, line: 144, column: 28)
!431 = !DILocation(line: 145, column: 3, scope: !430)
!432 = !DILocation(line: 145, column: 73, scope: !433)
!433 = !DILexicalBlockFile(scope: !430, file: !111, discriminator: 1)
!434 = !DILocation(line: 145, column: 3, scope: !435)
!435 = !DILexicalBlockFile(scope: !430, file: !111, discriminator: 2)
!436 = !DILocation(line: 146, column: 3, scope: !430)
!437 = !DILocation(line: 149, column: 14, scope: !369)
!438 = !DILocation(line: 149, column: 22, scope: !369)
!439 = !DILocation(line: 149, column: 30, scope: !369)
!440 = !DILocation(line: 149, column: 2, scope: !369)
!441 = !DILocation(line: 150, column: 2, scope: !369)
!442 = !DILocation(line: 150, column: 10, scope: !369)
!443 = !DILocation(line: 150, column: 18, scope: !369)
!444 = !DILocation(line: 151, column: 1, scope: !369)
!445 = !DILocation(line: 151, column: 1, scope: !446)
!446 = !DILexicalBlockFile(scope: !369, file: !111, discriminator: 1)
!447 = distinct !DISubprogram(name: "rawlog_dump", scope: !111, file: !111, line: 106, type: !448, isLocal: true, isDefinition: true, scopeLine: 107, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !119)
!448 = !DISubroutineType(types: !449)
!449 = !{null, !69, !76}
!450 = !DILocalVariable(name: "rawlog", arg: 1, scope: !447, file: !111, line: 106, type: !69)
!451 = !DILocation(line: 106, column: 37, scope: !447)
!452 = !DILocalVariable(name: "f", arg: 2, scope: !447, file: !111, line: 106, type: !76)
!453 = !DILocation(line: 106, column: 49, scope: !447)
!454 = !DILocalVariable(name: "tmp", scope: !447, file: !111, line: 108, type: !80)
!455 = !DILocation(line: 108, column: 10, scope: !447)
!456 = !DILocalVariable(name: "ret", scope: !447, file: !111, line: 109, type: !457)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !458, line: 102, baseType: !459)
!458 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/lichi/Desktop/irssi/task1")
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !460, line: 172, baseType: !108)
!460 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!461 = !DILocation(line: 109, column: 10, scope: !447)
!462 = !DILocation(line: 111, column: 13, scope: !463)
!463 = distinct !DILexicalBlock(scope: !447, file: !111, line: 111, column: 2)
!464 = !DILocation(line: 111, column: 21, scope: !463)
!465 = !DILocation(line: 111, column: 11, scope: !463)
!466 = !DILocation(line: 111, column: 7, scope: !463)
!467 = !DILocation(line: 111, column: 28, scope: !468)
!468 = !DILexicalBlockFile(scope: !469, file: !111, discriminator: 1)
!469 = distinct !DILexicalBlock(scope: !463, file: !111, line: 111, column: 2)
!470 = !DILocation(line: 111, column: 32, scope: !468)
!471 = !DILocation(line: 111, column: 38, scope: !468)
!472 = !DILocation(line: 111, column: 41, scope: !473)
!473 = !DILexicalBlockFile(scope: !469, file: !111, discriminator: 2)
!474 = !DILocation(line: 111, column: 45, scope: !473)
!475 = !DILocation(line: 111, column: 2, scope: !476)
!476 = !DILexicalBlockFile(scope: !463, file: !111, discriminator: 3)
!477 = !DILocation(line: 112, column: 15, scope: !478)
!478 = distinct !DILexicalBlock(scope: !469, file: !111, line: 111, column: 70)
!479 = !DILocation(line: 112, column: 18, scope: !478)
!480 = !DILocation(line: 112, column: 23, scope: !478)
!481 = !DILocation(line: 112, column: 45, scope: !478)
!482 = !DILocation(line: 112, column: 50, scope: !478)
!483 = !DILocation(line: 112, column: 29, scope: !478)
!484 = !DILocation(line: 112, column: 9, scope: !485)
!485 = !DILexicalBlockFile(scope: !478, file: !111, discriminator: 1)
!486 = !DILocation(line: 112, column: 7, scope: !478)
!487 = !DILocation(line: 113, column: 21, scope: !488)
!488 = distinct !DILexicalBlock(scope: !478, file: !111, line: 113, column: 21)
!489 = !DILocation(line: 113, column: 25, scope: !488)
!490 = !DILocation(line: 113, column: 21, scope: !478)
!491 = !DILocation(line: 114, column: 37, scope: !488)
!492 = !DILocation(line: 114, column: 31, scope: !488)
!493 = !DILocation(line: 114, column: 29, scope: !488)
!494 = !DILocation(line: 114, column: 25, scope: !488)
!495 = !DILocation(line: 115, column: 9, scope: !478)
!496 = !DILocation(line: 111, column: 59, scope: !497)
!497 = !DILexicalBlockFile(scope: !469, file: !111, discriminator: 4)
!498 = !DILocation(line: 111, column: 64, scope: !497)
!499 = !DILocation(line: 111, column: 57, scope: !497)
!500 = !DILocation(line: 111, column: 2, scope: !497)
!501 = distinct !{!501, !502}
!502 = !DILocation(line: 111, column: 2, scope: !447)
!503 = !DILocation(line: 117, column: 6, scope: !504)
!504 = distinct !DILexicalBlock(scope: !447, file: !111, line: 117, column: 6)
!505 = !DILocation(line: 117, column: 10, scope: !504)
!506 = !DILocation(line: 117, column: 6, scope: !447)
!507 = !DILocation(line: 118, column: 4, scope: !508)
!508 = distinct !DILexicalBlock(scope: !504, file: !111, line: 117, column: 17)
!509 = !DILocation(line: 118, column: 3, scope: !508)
!510 = !DILocation(line: 118, column: 74, scope: !511)
!511 = !DILexicalBlockFile(scope: !508, file: !111, discriminator: 1)
!512 = !DILocation(line: 118, column: 3, scope: !513)
!513 = !DILexicalBlockFile(scope: !508, file: !111, discriminator: 2)
!514 = !DILocation(line: 119, column: 2, scope: !508)
!515 = !DILocation(line: 120, column: 1, scope: !447)
!516 = distinct !DISubprogram(name: "rawlog_close", scope: !111, file: !111, line: 153, type: !129, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !119)
!517 = !DILocalVariable(name: "rawlog", arg: 1, scope: !516, file: !111, line: 153, type: !69)
!518 = !DILocation(line: 153, column: 31, scope: !516)
!519 = !DILocation(line: 155, column: 6, scope: !520)
!520 = distinct !DILexicalBlock(scope: !516, file: !111, line: 155, column: 6)
!521 = !DILocation(line: 155, column: 14, scope: !520)
!522 = !DILocation(line: 155, column: 6, scope: !516)
!523 = !DILocation(line: 156, column: 3, scope: !524)
!524 = distinct !DILexicalBlock(scope: !520, file: !111, line: 155, column: 23)
!525 = !DILocation(line: 157, column: 9, scope: !524)
!526 = !DILocation(line: 157, column: 17, scope: !524)
!527 = !DILocation(line: 157, column: 3, scope: !524)
!528 = !DILocation(line: 158, column: 3, scope: !524)
!529 = !DILocation(line: 158, column: 11, scope: !524)
!530 = !DILocation(line: 158, column: 19, scope: !524)
!531 = !DILocation(line: 159, column: 2, scope: !524)
!532 = !DILocation(line: 160, column: 1, scope: !516)
!533 = distinct !DISubprogram(name: "rawlog_save", scope: !111, file: !111, line: 162, type: !171, isLocal: false, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !119)
!534 = !DILocalVariable(name: "rawlog", arg: 1, scope: !533, file: !111, line: 162, type: !69)
!535 = !DILocation(line: 162, column: 30, scope: !533)
!536 = !DILocalVariable(name: "fname", arg: 2, scope: !533, file: !111, line: 162, type: !93)
!537 = !DILocation(line: 162, column: 50, scope: !533)
!538 = !DILocalVariable(name: "path", scope: !533, file: !111, line: 164, type: !106)
!539 = !DILocation(line: 164, column: 8, scope: !533)
!540 = !DILocalVariable(name: "dir", scope: !533, file: !111, line: 164, type: !106)
!541 = !DILocation(line: 164, column: 15, scope: !533)
!542 = !DILocalVariable(name: "f", scope: !533, file: !111, line: 165, type: !76)
!543 = !DILocation(line: 165, column: 6, scope: !533)
!544 = !DILocation(line: 167, column: 34, scope: !533)
!545 = !DILocation(line: 167, column: 15, scope: !533)
!546 = !DILocation(line: 167, column: 13, scope: !533)
!547 = !DILocation(line: 171, column: 30, scope: !533)
!548 = !DILocation(line: 171, column: 35, scope: !533)
!549 = !DILocation(line: 171, column: 9, scope: !533)
!550 = !DILocation(line: 173, column: 16, scope: !533)
!551 = !DILocation(line: 173, column: 9, scope: !533)
!552 = !DILocation(line: 175, column: 22, scope: !533)
!553 = !DILocation(line: 175, column: 9, scope: !533)
!554 = !DILocation(line: 175, column: 7, scope: !533)
!555 = !DILocation(line: 180, column: 11, scope: !533)
!556 = !DILocation(line: 180, column: 47, scope: !533)
!557 = !DILocation(line: 180, column: 6, scope: !533)
!558 = !DILocation(line: 180, column: 4, scope: !533)
!559 = !DILocation(line: 182, column: 9, scope: !533)
!560 = !DILocation(line: 182, column: 2, scope: !533)
!561 = !DILocation(line: 184, column: 6, scope: !562)
!562 = distinct !DILexicalBlock(scope: !533, file: !111, line: 184, column: 6)
!563 = !DILocation(line: 184, column: 8, scope: !562)
!564 = !DILocation(line: 184, column: 6, scope: !533)
!565 = !DILocation(line: 185, column: 4, scope: !566)
!566 = distinct !DILexicalBlock(scope: !562, file: !111, line: 184, column: 13)
!567 = !DILocation(line: 185, column: 3, scope: !566)
!568 = !DILocation(line: 185, column: 73, scope: !569)
!569 = !DILexicalBlockFile(scope: !566, file: !111, discriminator: 1)
!570 = !DILocation(line: 185, column: 3, scope: !571)
!571 = !DILexicalBlockFile(scope: !566, file: !111, discriminator: 2)
!572 = !DILocation(line: 186, column: 3, scope: !566)
!573 = !DILocation(line: 189, column: 14, scope: !533)
!574 = !DILocation(line: 189, column: 22, scope: !533)
!575 = !DILocation(line: 189, column: 2, scope: !533)
!576 = !DILocation(line: 190, column: 8, scope: !533)
!577 = !DILocation(line: 190, column: 2, scope: !533)
!578 = !DILocation(line: 191, column: 1, scope: !533)
!579 = !DILocation(line: 191, column: 1, scope: !580)
!580 = !DILexicalBlockFile(scope: !533, file: !111, discriminator: 1)
!581 = distinct !DISubprogram(name: "rawlog_set_size", scope: !111, file: !111, line: 193, type: !582, isLocal: false, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !119)
!582 = !DISubroutineType(types: !583)
!583 = !{null, !76}
!584 = !DILocalVariable(name: "lines", arg: 1, scope: !581, file: !111, line: 193, type: !76)
!585 = !DILocation(line: 193, column: 26, scope: !581)
!586 = !DILocation(line: 195, column: 17, scope: !581)
!587 = !DILocation(line: 195, column: 15, scope: !581)
!588 = !DILocation(line: 196, column: 1, scope: !581)
!589 = distinct !DISubprogram(name: "rawlog_init", scope: !111, file: !111, line: 240, type: !590, isLocal: false, isDefinition: true, scopeLine: 241, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !119)
!590 = !DISubroutineType(types: !591)
!591 = !{null}
!592 = !DILocation(line: 242, column: 18, scope: !589)
!593 = !DILocation(line: 242, column: 16, scope: !589)
!594 = !DILocation(line: 244, column: 2, scope: !589)
!595 = !DILocation(line: 245, column: 2, scope: !589)
!596 = !DILocation(line: 247, column: 2, scope: !589)
!597 = !DILocation(line: 249, column: 2, scope: !589)
!598 = !DILocation(line: 250, column: 2, scope: !589)
!599 = !DILocation(line: 251, column: 2, scope: !589)
!600 = !DILocation(line: 252, column: 2, scope: !589)
!601 = !DILocation(line: 253, column: 1, scope: !589)
!602 = distinct !DISubprogram(name: "read_settings", scope: !111, file: !111, line: 198, type: !590, isLocal: true, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !119)
!603 = !DILocation(line: 200, column: 18, scope: !602)
!604 = !DILocation(line: 200, column: 2, scope: !605)
!605 = !DILexicalBlockFile(scope: !602, file: !111, discriminator: 1)
!606 = !DILocation(line: 201, column: 1, scope: !602)
!607 = distinct !DISubprogram(name: "cmd_rawlog", scope: !111, file: !111, line: 203, type: !608, isLocal: true, isDefinition: true, scopeLine: 204, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !119)
!608 = !DISubroutineType(types: !609)
!609 = !{null, !93, !610, !88}
!610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64, align: 64)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_REC", file: !71, line: 107, baseType: !612)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_REC", file: !613, line: 30, size: 2240, align: 64, elements: !614)
!613 = !DIFile(filename: "servers.h", directory: "/home/lichi/Desktop/irssi/task1")
!614 = !{!615, !617, !618, !619, !837, !841, !842, !843, !844, !845, !846, !847, !848, !849, !853, !854, !858, !859, !860, !861, !866, !867, !868, !869, !870, !871, !872, !873, !879, !880, !881, !882, !883, !887, !891, !895, !899, !903, !908, !915, !922, !926}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !612, file: !616, line: 3, baseType: !76, size: 32, align: 32)
!616 = !DIFile(filename: "server-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!617 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !612, file: !616, line: 4, baseType: !76, size: 32, align: 32, offset: 32)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !612, file: !616, line: 6, baseType: !76, size: 32, align: 32, offset: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "connrec", scope: !612, file: !616, line: 8, baseType: !620, size: 64, align: 64, offset: 128)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64, align: 64)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "SERVER_CONNECT_REC", file: !71, line: 113, baseType: !622)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_SERVER_CONNECT_REC", file: !613, line: 25, size: 1920, align: 64, elements: !623)
!623 = !{!624, !626, !627, !628, !629, !630, !631, !632, !633, !635, !636, !637, !638, !639, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !622, file: !625, line: 3, baseType: !76, size: 32, align: 32)
!625 = !DIFile(filename: "server-connect-rec.h", directory: "/home/lichi/Desktop/irssi/task1")
!626 = !DIDerivedType(tag: DW_TAG_member, name: "chat_type", scope: !622, file: !625, line: 4, baseType: !76, size: 32, align: 32, offset: 32)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !622, file: !625, line: 6, baseType: !76, size: 32, align: 32, offset: 64)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "proxy", scope: !622, file: !625, line: 9, baseType: !106, size: 64, align: 64, offset: 128)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_port", scope: !622, file: !625, line: 10, baseType: !76, size: 32, align: 32, offset: 192)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string", scope: !622, file: !625, line: 11, baseType: !106, size: 64, align: 64, offset: 256)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_string_after", scope: !622, file: !625, line: 11, baseType: !106, size: 64, align: 64, offset: 320)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "proxy_password", scope: !622, file: !625, line: 11, baseType: !106, size: 64, align: 64, offset: 384)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !622, file: !625, line: 13, baseType: !634, size: 16, align: 16, offset: 448)
!634 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !622, file: !625, line: 14, baseType: !106, size: 64, align: 64, offset: 512)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !622, file: !625, line: 15, baseType: !106, size: 64, align: 64, offset: 576)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !622, file: !625, line: 16, baseType: !76, size: 32, align: 32, offset: 640)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "chatnet", scope: !622, file: !625, line: 17, baseType: !106, size: 64, align: 64, offset: 704)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip4", scope: !622, file: !625, line: 19, baseType: !640, size: 64, align: 64, offset: 768)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64, align: 64)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "IPADDR", file: !71, line: 99, baseType: !642)
!642 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IPADDR", file: !71, line: 99, flags: DIFlagFwdDecl)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "own_ip6", scope: !622, file: !625, line: 19, baseType: !640, size: 64, align: 64, offset: 832)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !622, file: !625, line: 21, baseType: !106, size: 64, align: 64, offset: 896)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !622, file: !625, line: 22, baseType: !106, size: 64, align: 64, offset: 960)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !622, file: !625, line: 23, baseType: !106, size: 64, align: 64, offset: 1024)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "realname", scope: !622, file: !625, line: 24, baseType: !106, size: 64, align: 64, offset: 1088)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cert", scope: !622, file: !625, line: 26, baseType: !106, size: 64, align: 64, offset: 1152)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pkey", scope: !622, file: !625, line: 27, baseType: !106, size: 64, align: 64, offset: 1216)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pass", scope: !622, file: !625, line: 28, baseType: !106, size: 64, align: 64, offset: 1280)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cafile", scope: !622, file: !625, line: 29, baseType: !106, size: 64, align: 64, offset: 1344)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "tls_capath", scope: !622, file: !625, line: 30, baseType: !106, size: 64, align: 64, offset: 1408)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ciphers", scope: !622, file: !625, line: 31, baseType: !106, size: 64, align: 64, offset: 1472)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_cert", scope: !622, file: !625, line: 32, baseType: !106, size: 64, align: 64, offset: 1536)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "tls_pinned_pubkey", scope: !622, file: !625, line: 33, baseType: !106, size: 64, align: 64, offset: 1600)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "connect_handle", scope: !622, file: !625, line: 35, baseType: !657, size: 64, align: 64, offset: 1664)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64, align: 64)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOChannel", file: !16, line: 41, baseType: !659)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOChannel", file: !16, line: 97, size: 896, align: 64, elements: !660)
!660 = !{!661, !663, !794, !795, !800, !801, !802, !803, !804, !813, !814, !815, !819, !820, !821, !822, !823, !824, !825, !826}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !659, file: !16, line: 100, baseType: !662, size: 32, align: 32)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !87, line: 49, baseType: !76)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !659, file: !16, line: 101, baseType: !664, size: 64, align: 64, offset: 64)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64, align: 64)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFuncs", file: !16, line: 42, baseType: !666)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GIOFuncs", file: !16, line: 131, size: 512, align: 64, elements: !667)
!667 = !{!668, !690, !696, !702, !706, !781, !785, !790}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "io_read", scope: !666, file: !16, line: 133, baseType: !669, size: 64, align: 64)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64, align: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{!672, !657, !90, !673, !676, !677}
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOStatus", file: !16, line: 75, baseType: !15)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !674, line: 66, baseType: !675)
!674 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!675 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64, align: 64)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64, align: 64)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64, align: 64)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !680, line: 42, baseType: !681)
!680 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/irssi/task1")
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !680, line: 44, size: 128, align: 64, elements: !682)
!682 = !{!683, !688, !689}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !681, file: !680, line: 46, baseType: !684, size: 32, align: 32)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !685, line: 36, baseType: !686)
!685 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/irssi/task1")
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !674, line: 45, baseType: !687)
!687 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !681, file: !680, line: 47, baseType: !662, size: 32, align: 32, offset: 32)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !681, file: !680, line: 48, baseType: !90, size: 64, align: 64, offset: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "io_write", scope: !666, file: !16, line: 138, baseType: !691, size: 64, align: 64, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64, align: 64)
!692 = !DISubroutineType(types: !693)
!693 = !{!672, !657, !694, !673, !676, !677}
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64, align: 64)
!695 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "io_seek", scope: !666, file: !16, line: 143, baseType: !697, size: 64, align: 64, offset: 128)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64, align: 64)
!698 = !DISubroutineType(types: !699)
!699 = !{!672, !657, !700, !701, !677}
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint64", file: !674, line: 51, baseType: !108)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSeekType", file: !16, line: 82, baseType: !22)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "io_close", scope: !666, file: !16, line: 147, baseType: !703, size: 64, align: 64, offset: 192)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64, align: 64)
!704 = !DISubroutineType(types: !705)
!705 = !{!672, !657, !677}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "io_create_watch", scope: !666, file: !16, line: 149, baseType: !707, size: 64, align: 64, offset: 256)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64, align: 64)
!708 = !DISubroutineType(types: !709)
!709 = !{!710, !657, !780}
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64, align: 64)
!711 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSource", file: !28, line: 64, baseType: !712)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSource", file: !28, line: 171, size: 768, align: 64, elements: !713)
!713 = !{!714, !715, !736, !763, !765, !769, !770, !771, !772, !773, !774, !775, !776}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "callback_data", scope: !712, file: !28, line: 174, baseType: !86, size: 64, align: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "callback_funcs", scope: !712, file: !28, line: 175, baseType: !716, size: 64, align: 64, offset: 64)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64, align: 64)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceCallbackFuncs", file: !28, line: 77, baseType: !718)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceCallbackFuncs", file: !28, line: 196, size: 192, align: 64, elements: !719)
!719 = !{!720, !724, !725}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !718, file: !28, line: 198, baseType: !721, size: 64, align: 64)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64, align: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{null, !86}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "unref", scope: !718, file: !28, line: 199, baseType: !721, size: 64, align: 64, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !718, file: !28, line: 200, baseType: !726, size: 64, align: 64, offset: 128)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64, align: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{null, !86, !710, !729, !735}
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64, align: 64)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !28, line: 155, baseType: !731)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64, align: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{!734, !86}
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !87, line: 50, baseType: !662)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64, align: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "source_funcs", scope: !712, file: !28, line: 177, baseType: !737, size: 64, align: 64, offset: 128)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64, align: 64)
!738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !739)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFuncs", file: !28, line: 130, baseType: !740)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourceFuncs", file: !28, line: 214, size: 384, align: 64, elements: !741)
!741 = !{!742, !747, !751, !755, !759, !760}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !740, file: !28, line: 216, baseType: !743, size: 64, align: 64)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64, align: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{!734, !710, !746}
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64, align: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !740, file: !28, line: 218, baseType: !748, size: 64, align: 64, offset: 64)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64, align: 64)
!749 = !DISubroutineType(types: !750)
!750 = !{!734, !710}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "dispatch", scope: !740, file: !28, line: 219, baseType: !752, size: 64, align: 64, offset: 128)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64, align: 64)
!753 = !DISubroutineType(types: !754)
!754 = !{!734, !710, !730, !86}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !740, file: !28, line: 222, baseType: !756, size: 64, align: 64, offset: 192)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64, align: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{null, !710}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "closure_callback", scope: !740, file: !28, line: 226, baseType: !730, size: 64, align: 64, offset: 256)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "closure_marshal", scope: !740, file: !28, line: 227, baseType: !761, size: 64, align: 64, offset: 320)
!761 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceDummyMarshal", file: !28, line: 212, baseType: !762)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64, align: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !712, file: !28, line: 178, baseType: !764, size: 32, align: 32, offset: 192)
!764 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !87, line: 55, baseType: !687)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !712, file: !28, line: 180, baseType: !766, size: 64, align: 64, offset: 256)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64, align: 64)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMainContext", file: !28, line: 48, baseType: !768)
!768 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GMainContext", file: !28, line: 48, flags: DIFlagFwdDecl)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !712, file: !28, line: 182, baseType: !662, size: 32, align: 32, offset: 320)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !712, file: !28, line: 183, baseType: !764, size: 32, align: 32, offset: 352)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "source_id", scope: !712, file: !28, line: 184, baseType: !764, size: 32, align: 32, offset: 384)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "poll_fds", scope: !712, file: !28, line: 186, baseType: !80, size: 64, align: 64, offset: 448)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !712, file: !28, line: 188, baseType: !710, size: 64, align: 64, offset: 512)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !712, file: !28, line: 189, baseType: !710, size: 64, align: 64, offset: 576)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !712, file: !28, line: 191, baseType: !106, size: 64, align: 64, offset: 640)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !712, file: !28, line: 193, baseType: !777, size: 64, align: 64, offset: 704)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64, align: 64)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourcePrivate", file: !28, line: 65, baseType: !779)
!779 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GSourcePrivate", file: !28, line: 65, flags: DIFlagFwdDecl)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOCondition", file: !28, line: 39, baseType: !27)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "io_free", scope: !666, file: !16, line: 151, baseType: !782, size: 64, align: 64, offset: 320)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64, align: 64)
!783 = !DISubroutineType(types: !784)
!784 = !{null, !657}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "io_set_flags", scope: !666, file: !16, line: 152, baseType: !786, size: 64, align: 64, offset: 384)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64, align: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{!672, !657, !789, !677}
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIOFlags", file: !16, line: 95, baseType: !36)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "io_get_flags", scope: !666, file: !16, line: 155, baseType: !791, size: 64, align: 64, offset: 448)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64, align: 64)
!792 = !DISubroutineType(types: !793)
!793 = !{!789, !657}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !659, file: !16, line: 103, baseType: !90, size: 64, align: 64, offset: 128)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "read_cd", scope: !659, file: !16, line: 104, baseType: !796, size: 64, align: 64, offset: 192)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "GIConv", file: !797, line: 77, baseType: !798)
!797 = !DIFile(filename: "/usr/include/glib-2.0/glib/gconvert.h", directory: "/home/lichi/Desktop/irssi/task1")
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64, align: 64)
!799 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GIConv", file: !797, line: 77, flags: DIFlagFwdDecl)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "write_cd", scope: !659, file: !16, line: 105, baseType: !796, size: 64, align: 64, offset: 256)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "line_term", scope: !659, file: !16, line: 106, baseType: !90, size: 64, align: 64, offset: 320)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "line_term_len", scope: !659, file: !16, line: 107, baseType: !764, size: 32, align: 32, offset: 384)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "buf_size", scope: !659, file: !16, line: 109, baseType: !673, size: 64, align: 64, offset: 448)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !659, file: !16, line: 110, baseType: !805, size: 64, align: 64, offset: 512)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64, align: 64)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "GString", file: !807, line: 39, baseType: !808)
!807 = !DIFile(filename: "/usr/include/glib-2.0/glib/gstring.h", directory: "/home/lichi/Desktop/irssi/task1")
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GString", file: !807, line: 41, size: 192, align: 64, elements: !809)
!809 = !{!810, !811, !812}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !808, file: !807, line: 43, baseType: !90, size: 64, align: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !808, file: !807, line: 44, baseType: !673, size: 64, align: 64, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "allocated_len", scope: !808, file: !807, line: 45, baseType: !673, size: 64, align: 64, offset: 128)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "encoded_read_buf", scope: !659, file: !16, line: 111, baseType: !805, size: 64, align: 64, offset: 576)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !659, file: !16, line: 112, baseType: !805, size: 64, align: 64, offset: 640)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "partial_write_buf", scope: !659, file: !16, line: 113, baseType: !816, size: 48, align: 8, offset: 704)
!816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 48, align: 8, elements: !817)
!817 = !{!818}
!818 = !DISubrange(count: 6)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "use_buffer", scope: !659, file: !16, line: 117, baseType: !764, size: 1, align: 32, offset: 752, flags: DIFlagBitField, extraData: i64 752)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "do_encode", scope: !659, file: !16, line: 118, baseType: !764, size: 1, align: 32, offset: 753, flags: DIFlagBitField, extraData: i64 752)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "close_on_unref", scope: !659, file: !16, line: 119, baseType: !764, size: 1, align: 32, offset: 754, flags: DIFlagBitField, extraData: i64 752)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "is_readable", scope: !659, file: !16, line: 120, baseType: !764, size: 1, align: 32, offset: 755, flags: DIFlagBitField, extraData: i64 752)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "is_writeable", scope: !659, file: !16, line: 121, baseType: !764, size: 1, align: 32, offset: 756, flags: DIFlagBitField, extraData: i64 752)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "is_seekable", scope: !659, file: !16, line: 122, baseType: !764, size: 1, align: 32, offset: 757, flags: DIFlagBitField, extraData: i64 752)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !659, file: !16, line: 124, baseType: !86, size: 64, align: 64, offset: 768)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !659, file: !16, line: 125, baseType: !86, size: 64, align: 64, offset: 832)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "reconnection", scope: !622, file: !625, line: 38, baseType: !687, size: 1, align: 32, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "reconnecting", scope: !622, file: !625, line: 39, baseType: !687, size: 1, align: 32, offset: 1729, flags: DIFlagBitField, extraData: i64 1728)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "no_autojoin_channels", scope: !622, file: !625, line: 40, baseType: !687, size: 1, align: 32, offset: 1730, flags: DIFlagBitField, extraData: i64 1728)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "no_autosendcmd", scope: !622, file: !625, line: 41, baseType: !687, size: 1, align: 32, offset: 1731, flags: DIFlagBitField, extraData: i64 1728)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !622, file: !625, line: 42, baseType: !687, size: 1, align: 32, offset: 1732, flags: DIFlagBitField, extraData: i64 1728)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "use_tls", scope: !622, file: !625, line: 43, baseType: !687, size: 1, align: 32, offset: 1733, flags: DIFlagBitField, extraData: i64 1728)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "tls_verify", scope: !622, file: !625, line: 44, baseType: !687, size: 1, align: 32, offset: 1734, flags: DIFlagBitField, extraData: i64 1728)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "no_connect", scope: !622, file: !625, line: 45, baseType: !687, size: 1, align: 32, offset: 1735, flags: DIFlagBitField, extraData: i64 1728)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !622, file: !625, line: 46, baseType: !106, size: 64, align: 64, offset: 1792)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !622, file: !625, line: 47, baseType: !106, size: 64, align: 64, offset: 1856)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "connect_time", scope: !612, file: !616, line: 9, baseType: !838, size: 64, align: 64, offset: 192)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !839, line: 75, baseType: !840)
!839 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !460, line: 139, baseType: !108)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "real_connect_time", scope: !612, file: !616, line: 10, baseType: !838, size: 64, align: 64, offset: 256)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !612, file: !616, line: 12, baseType: !106, size: 64, align: 64, offset: 320)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "nick", scope: !612, file: !616, line: 13, baseType: !106, size: 64, align: 64, offset: 384)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !612, file: !616, line: 15, baseType: !687, size: 1, align: 32, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "disconnected", scope: !612, file: !616, line: 16, baseType: !687, size: 1, align: 32, offset: 449, flags: DIFlagBitField, extraData: i64 448)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "connection_lost", scope: !612, file: !616, line: 17, baseType: !687, size: 1, align: 32, offset: 450, flags: DIFlagBitField, extraData: i64 448)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "session_reconnect", scope: !612, file: !616, line: 18, baseType: !687, size: 1, align: 32, offset: 451, flags: DIFlagBitField, extraData: i64 448)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "no_reconnect", scope: !612, file: !616, line: 19, baseType: !687, size: 1, align: 32, offset: 452, flags: DIFlagBitField, extraData: i64 448)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !612, file: !616, line: 21, baseType: !850, size: 64, align: 64, offset: 512)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64, align: 64)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET_SENDBUF_REC", file: !71, line: 102, baseType: !852)
!852 = !DICompositeType(tag: DW_TAG_structure_type, name: "_NET_SENDBUF_REC", file: !71, line: 102, flags: DIFlagFwdDecl)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "readtag", scope: !612, file: !616, line: 22, baseType: !76, size: 32, align: 32, offset: 576)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pipe", scope: !612, file: !616, line: 25, baseType: !855, size: 128, align: 64, offset: 640)
!855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !657, size: 128, align: 64, elements: !856)
!856 = !{!857}
!857 = !DISubrange(count: 2)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "connect_tag", scope: !612, file: !616, line: 26, baseType: !76, size: 32, align: 32, offset: 768)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "connect_pid", scope: !612, file: !616, line: 27, baseType: !76, size: 32, align: 32, offset: 800)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "rawlog", scope: !612, file: !616, line: 29, baseType: !69, size: 64, align: 64, offset: 832)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "module_data", scope: !612, file: !616, line: 30, baseType: !862, size: 64, align: 64, offset: 896)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64, align: 64)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "GHashTable", file: !864, line: 37, baseType: !865)
!864 = !DIFile(filename: "/usr/include/glib-2.0/glib/ghash.h", directory: "/home/lichi/Desktop/irssi/task1")
!865 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GHashTable", file: !864, line: 37, flags: DIFlagFwdDecl)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !612, file: !616, line: 32, baseType: !106, size: 64, align: 64, offset: 960)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "away_reason", scope: !612, file: !616, line: 33, baseType: !106, size: 64, align: 64, offset: 1024)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "last_invite", scope: !612, file: !616, line: 34, baseType: !106, size: 64, align: 64, offset: 1088)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "server_operator", scope: !612, file: !616, line: 35, baseType: !687, size: 1, align: 32, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "usermode_away", scope: !612, file: !616, line: 36, baseType: !687, size: 1, align: 32, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "banned", scope: !612, file: !616, line: 37, baseType: !687, size: 1, align: 32, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "dns_error", scope: !612, file: !616, line: 38, baseType: !687, size: 1, align: 32, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "lag_sent", scope: !612, file: !616, line: 40, baseType: !874, size: 128, align: 64, offset: 1216)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "GTimeVal", file: !87, line: 504, baseType: !875)
!875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GTimeVal", file: !87, line: 506, size: 128, align: 64, elements: !876)
!876 = !{!877, !878}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !875, file: !87, line: 508, baseType: !107, size: 64, align: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !875, file: !87, line: 509, baseType: !107, size: 64, align: 64, offset: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "lag_last_check", scope: !612, file: !616, line: 41, baseType: !838, size: 64, align: 64, offset: 1344)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "lag", scope: !612, file: !616, line: 42, baseType: !76, size: 32, align: 32, offset: 1408)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !612, file: !616, line: 44, baseType: !80, size: 64, align: 64, offset: 1472)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !612, file: !616, line: 45, baseType: !80, size: 64, align: 64, offset: 1536)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "channels_join", scope: !612, file: !616, line: 53, baseType: !884, size: 64, align: 64, offset: 1600)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64, align: 64)
!885 = !DISubroutineType(types: !886)
!886 = !{null, !610, !93, !76}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "isnickflag", scope: !612, file: !616, line: 55, baseType: !888, size: 64, align: 64, offset: 1664)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64, align: 64)
!889 = !DISubroutineType(types: !890)
!890 = !{!76, !610, !92}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "ischannel", scope: !612, file: !616, line: 57, baseType: !892, size: 64, align: 64, offset: 1728)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64, align: 64)
!893 = !DISubroutineType(types: !894)
!894 = !{!76, !610, !93}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "get_nick_flags", scope: !612, file: !616, line: 60, baseType: !896, size: 64, align: 64, offset: 1792)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64, align: 64)
!897 = !DISubroutineType(types: !898)
!898 = !{!93, !610}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "send_message", scope: !612, file: !616, line: 62, baseType: !900, size: 64, align: 64, offset: 1856)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64, align: 64)
!901 = !DISubroutineType(types: !902)
!902 = !{null, !610, !93, !93, !76}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "split_message", scope: !612, file: !616, line: 65, baseType: !904, size: 64, align: 64, offset: 1920)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64, align: 64)
!905 = !DISubroutineType(types: !906)
!906 = !{!907, !610, !93, !93}
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64, align: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "channel_find_func", scope: !612, file: !616, line: 69, baseType: !909, size: 64, align: 64, offset: 1984)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64, align: 64)
!910 = !DISubroutineType(types: !911)
!911 = !{!912, !610, !93}
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64, align: 64)
!913 = !DIDerivedType(tag: DW_TAG_typedef, name: "CHANNEL_REC", file: !71, line: 109, baseType: !914)
!914 = !DICompositeType(tag: DW_TAG_structure_type, name: "_CHANNEL_REC", file: !71, line: 109, flags: DIFlagFwdDecl)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "query_find_func", scope: !612, file: !616, line: 70, baseType: !916, size: 64, align: 64, offset: 2048)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64, align: 64)
!917 = !DISubroutineType(types: !918)
!918 = !{!919, !610, !93}
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64, align: 64)
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "QUERY_REC", file: !71, line: 110, baseType: !921)
!921 = !DICompositeType(tag: DW_TAG_structure_type, name: "_QUERY_REC", file: !71, line: 110, flags: DIFlagFwdDecl)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "mask_match_func", scope: !612, file: !616, line: 71, baseType: !923, size: 64, align: 64, offset: 2112)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64, align: 64)
!924 = !DISubroutineType(types: !925)
!925 = !{!76, !93, !93}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "nick_match_msg", scope: !612, file: !616, line: 73, baseType: !923, size: 64, align: 64, offset: 2176)
!927 = !DILocalVariable(name: "data", arg: 1, scope: !607, file: !111, line: 203, type: !93)
!928 = !DILocation(line: 203, column: 36, scope: !607)
!929 = !DILocalVariable(name: "server", arg: 2, scope: !607, file: !111, line: 203, type: !610)
!930 = !DILocation(line: 203, column: 54, scope: !607)
!931 = !DILocalVariable(name: "item", arg: 3, scope: !607, file: !111, line: 203, type: !88)
!932 = !DILocation(line: 203, column: 68, scope: !607)
!933 = !DILocation(line: 205, column: 27, scope: !607)
!934 = !DILocation(line: 205, column: 33, scope: !607)
!935 = !DILocation(line: 205, column: 41, scope: !607)
!936 = !DILocation(line: 205, column: 2, scope: !607)
!937 = !DILocation(line: 206, column: 1, scope: !607)
!938 = distinct !DISubprogram(name: "cmd_rawlog_save", scope: !111, file: !111, line: 209, type: !939, isLocal: true, isDefinition: true, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !119)
!939 = !DISubroutineType(types: !940)
!940 = !{null, !93, !610}
!941 = !DILocalVariable(name: "data", arg: 1, scope: !938, file: !111, line: 209, type: !93)
!942 = !DILocation(line: 209, column: 41, scope: !938)
!943 = !DILocalVariable(name: "server", arg: 2, scope: !938, file: !111, line: 209, type: !610)
!944 = !DILocation(line: 209, column: 59, scope: !938)
!945 = !DILocation(line: 211, column: 2, scope: !938)
!946 = distinct !{!946, !945}
!947 = !DILocation(line: 211, column: 10, scope: !948)
!948 = !DILexicalBlockFile(scope: !949, file: !111, discriminator: 1)
!949 = distinct !DILexicalBlock(scope: !950, file: !111, line: 211, column: 10)
!950 = distinct !DILexicalBlock(scope: !938, file: !111, line: 211, column: 4)
!951 = !DILocation(line: 211, column: 15, scope: !948)
!952 = !DILocation(line: 211, column: 5, scope: !953)
!953 = !DILexicalBlockFile(scope: !954, file: !111, discriminator: 2)
!954 = distinct !DILexicalBlock(scope: !949, file: !111, line: 211, column: 3)
!955 = !DILocation(line: 211, column: 14, scope: !956)
!956 = !DILexicalBlockFile(scope: !957, file: !111, discriminator: 3)
!957 = distinct !DILexicalBlock(scope: !949, file: !111, line: 211, column: 12)
!958 = !DILocation(line: 211, column: 99, scope: !956)
!959 = !DILocation(line: 211, column: 110, scope: !960)
!960 = !DILexicalBlockFile(scope: !950, file: !111, discriminator: 4)
!961 = !DILocation(line: 212, column: 6, scope: !962)
!962 = distinct !DILexicalBlock(scope: !938, file: !111, line: 212, column: 6)
!963 = !DILocation(line: 212, column: 13, scope: !962)
!964 = !DILocation(line: 212, column: 20, scope: !962)
!965 = !DILocation(line: 212, column: 23, scope: !966)
!966 = !DILexicalBlockFile(scope: !962, file: !111, discriminator: 1)
!967 = !DILocation(line: 212, column: 31, scope: !966)
!968 = !DILocation(line: 212, column: 38, scope: !966)
!969 = !DILocation(line: 212, column: 6, scope: !966)
!970 = !DILocation(line: 213, column: 3, scope: !962)
!971 = distinct !{!971, !970}
!972 = !DILocation(line: 213, column: 8, scope: !973)
!973 = !DILexicalBlockFile(scope: !974, file: !111, discriminator: 1)
!974 = distinct !DILexicalBlock(scope: !962, file: !111, line: 213, column: 6)
!975 = !DILocation(line: 213, column: 86, scope: !976)
!976 = !DILexicalBlockFile(scope: !973, file: !111, discriminator: 3)
!977 = !DILocation(line: 213, column: 101, scope: !973)
!978 = !DILocation(line: 213, column: 109, scope: !979)
!979 = !DILexicalBlockFile(scope: !974, file: !111, discriminator: 2)
!980 = !DILocation(line: 215, column: 7, scope: !981)
!981 = distinct !DILexicalBlock(scope: !938, file: !111, line: 215, column: 6)
!982 = !DILocation(line: 215, column: 6, scope: !981)
!983 = !DILocation(line: 215, column: 12, scope: !981)
!984 = !DILocation(line: 215, column: 6, scope: !938)
!985 = !DILocation(line: 215, column: 21, scope: !986)
!986 = !DILexicalBlockFile(scope: !981, file: !111, discriminator: 1)
!987 = distinct !{!987, !988}
!988 = !DILocation(line: 215, column: 21, scope: !981)
!989 = !DILocation(line: 215, column: 26, scope: !990)
!990 = !DILexicalBlockFile(scope: !991, file: !111, discriminator: 2)
!991 = distinct !DILexicalBlock(scope: !981, file: !111, line: 215, column: 24)
!992 = !DILocation(line: 215, column: 108, scope: !993)
!993 = !DILexicalBlockFile(scope: !990, file: !111, discriminator: 4)
!994 = !DILocation(line: 215, column: 123, scope: !990)
!995 = !DILocation(line: 215, column: 131, scope: !996)
!996 = !DILexicalBlockFile(scope: !991, file: !111, discriminator: 3)
!997 = !DILocation(line: 216, column: 14, scope: !938)
!998 = !DILocation(line: 216, column: 22, scope: !938)
!999 = !DILocation(line: 216, column: 30, scope: !938)
!1000 = !DILocation(line: 216, column: 2, scope: !938)
!1001 = !DILocation(line: 217, column: 1, scope: !938)
!1002 = !DILocation(line: 217, column: 1, scope: !1003)
!1003 = !DILexicalBlockFile(scope: !938, file: !111, discriminator: 1)
!1004 = distinct !DISubprogram(name: "cmd_rawlog_open", scope: !111, file: !111, line: 220, type: !939, isLocal: true, isDefinition: true, scopeLine: 221, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !119)
!1005 = !DILocalVariable(name: "data", arg: 1, scope: !1004, file: !111, line: 220, type: !93)
!1006 = !DILocation(line: 220, column: 41, scope: !1004)
!1007 = !DILocalVariable(name: "server", arg: 2, scope: !1004, file: !111, line: 220, type: !610)
!1008 = !DILocation(line: 220, column: 59, scope: !1004)
!1009 = !DILocation(line: 222, column: 2, scope: !1004)
!1010 = distinct !{!1010, !1009}
!1011 = !DILocation(line: 222, column: 10, scope: !1012)
!1012 = !DILexicalBlockFile(scope: !1013, file: !111, discriminator: 1)
!1013 = distinct !DILexicalBlock(scope: !1014, file: !111, line: 222, column: 10)
!1014 = distinct !DILexicalBlock(scope: !1004, file: !111, line: 222, column: 4)
!1015 = !DILocation(line: 222, column: 15, scope: !1012)
!1016 = !DILocation(line: 222, column: 5, scope: !1017)
!1017 = !DILexicalBlockFile(scope: !1018, file: !111, discriminator: 2)
!1018 = distinct !DILexicalBlock(scope: !1013, file: !111, line: 222, column: 3)
!1019 = !DILocation(line: 222, column: 14, scope: !1020)
!1020 = !DILexicalBlockFile(scope: !1021, file: !111, discriminator: 3)
!1021 = distinct !DILexicalBlock(scope: !1013, file: !111, line: 222, column: 12)
!1022 = !DILocation(line: 222, column: 99, scope: !1020)
!1023 = !DILocation(line: 222, column: 110, scope: !1024)
!1024 = !DILexicalBlockFile(scope: !1014, file: !111, discriminator: 4)
!1025 = !DILocation(line: 223, column: 6, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1004, file: !111, line: 223, column: 6)
!1027 = !DILocation(line: 223, column: 13, scope: !1026)
!1028 = !DILocation(line: 223, column: 20, scope: !1026)
!1029 = !DILocation(line: 223, column: 23, scope: !1030)
!1030 = !DILexicalBlockFile(scope: !1026, file: !111, discriminator: 1)
!1031 = !DILocation(line: 223, column: 31, scope: !1030)
!1032 = !DILocation(line: 223, column: 38, scope: !1030)
!1033 = !DILocation(line: 223, column: 6, scope: !1030)
!1034 = !DILocation(line: 224, column: 3, scope: !1026)
!1035 = distinct !{!1035, !1034}
!1036 = !DILocation(line: 224, column: 8, scope: !1037)
!1037 = !DILexicalBlockFile(scope: !1038, file: !111, discriminator: 1)
!1038 = distinct !DILexicalBlock(scope: !1026, file: !111, line: 224, column: 6)
!1039 = !DILocation(line: 224, column: 86, scope: !1040)
!1040 = !DILexicalBlockFile(scope: !1037, file: !111, discriminator: 3)
!1041 = !DILocation(line: 224, column: 101, scope: !1037)
!1042 = !DILocation(line: 224, column: 109, scope: !1043)
!1043 = !DILexicalBlockFile(scope: !1038, file: !111, discriminator: 2)
!1044 = !DILocation(line: 226, column: 7, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1004, file: !111, line: 226, column: 6)
!1046 = !DILocation(line: 226, column: 6, scope: !1045)
!1047 = !DILocation(line: 226, column: 12, scope: !1045)
!1048 = !DILocation(line: 226, column: 6, scope: !1004)
!1049 = !DILocation(line: 226, column: 21, scope: !1050)
!1050 = !DILexicalBlockFile(scope: !1045, file: !111, discriminator: 1)
!1051 = distinct !{!1051, !1052}
!1052 = !DILocation(line: 226, column: 21, scope: !1045)
!1053 = !DILocation(line: 226, column: 26, scope: !1054)
!1054 = !DILexicalBlockFile(scope: !1055, file: !111, discriminator: 2)
!1055 = distinct !DILexicalBlock(scope: !1045, file: !111, line: 226, column: 24)
!1056 = !DILocation(line: 226, column: 108, scope: !1057)
!1057 = !DILexicalBlockFile(scope: !1054, file: !111, discriminator: 4)
!1058 = !DILocation(line: 226, column: 123, scope: !1054)
!1059 = !DILocation(line: 226, column: 131, scope: !1060)
!1060 = !DILexicalBlockFile(scope: !1055, file: !111, discriminator: 3)
!1061 = !DILocation(line: 227, column: 14, scope: !1004)
!1062 = !DILocation(line: 227, column: 22, scope: !1004)
!1063 = !DILocation(line: 227, column: 30, scope: !1004)
!1064 = !DILocation(line: 227, column: 2, scope: !1004)
!1065 = !DILocation(line: 228, column: 1, scope: !1004)
!1066 = !DILocation(line: 228, column: 1, scope: !1067)
!1067 = !DILexicalBlockFile(scope: !1004, file: !111, discriminator: 1)
!1068 = distinct !DISubprogram(name: "cmd_rawlog_close", scope: !111, file: !111, line: 231, type: !939, isLocal: true, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !119)
!1069 = !DILocalVariable(name: "data", arg: 1, scope: !1068, file: !111, line: 231, type: !93)
!1070 = !DILocation(line: 231, column: 42, scope: !1068)
!1071 = !DILocalVariable(name: "server", arg: 2, scope: !1068, file: !111, line: 231, type: !610)
!1072 = !DILocation(line: 231, column: 60, scope: !1068)
!1073 = !DILocation(line: 233, column: 2, scope: !1068)
!1074 = distinct !{!1074, !1073}
!1075 = !DILocation(line: 233, column: 10, scope: !1076)
!1076 = !DILexicalBlockFile(scope: !1077, file: !111, discriminator: 1)
!1077 = distinct !DILexicalBlock(scope: !1078, file: !111, line: 233, column: 10)
!1078 = distinct !DILexicalBlock(scope: !1068, file: !111, line: 233, column: 4)
!1079 = !DILocation(line: 233, column: 15, scope: !1076)
!1080 = !DILocation(line: 233, column: 5, scope: !1081)
!1081 = !DILexicalBlockFile(scope: !1082, file: !111, discriminator: 2)
!1082 = distinct !DILexicalBlock(scope: !1077, file: !111, line: 233, column: 3)
!1083 = !DILocation(line: 233, column: 14, scope: !1084)
!1084 = !DILexicalBlockFile(scope: !1085, file: !111, discriminator: 3)
!1085 = distinct !DILexicalBlock(scope: !1077, file: !111, line: 233, column: 12)
!1086 = !DILocation(line: 233, column: 99, scope: !1084)
!1087 = !DILocation(line: 233, column: 110, scope: !1088)
!1088 = !DILexicalBlockFile(scope: !1078, file: !111, discriminator: 4)
!1089 = !DILocation(line: 234, column: 6, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1068, file: !111, line: 234, column: 6)
!1091 = !DILocation(line: 234, column: 13, scope: !1090)
!1092 = !DILocation(line: 234, column: 20, scope: !1090)
!1093 = !DILocation(line: 234, column: 23, scope: !1094)
!1094 = !DILexicalBlockFile(scope: !1090, file: !111, discriminator: 1)
!1095 = !DILocation(line: 234, column: 31, scope: !1094)
!1096 = !DILocation(line: 234, column: 38, scope: !1094)
!1097 = !DILocation(line: 234, column: 6, scope: !1094)
!1098 = !DILocation(line: 235, column: 3, scope: !1090)
!1099 = distinct !{!1099, !1098}
!1100 = !DILocation(line: 235, column: 8, scope: !1101)
!1101 = !DILexicalBlockFile(scope: !1102, file: !111, discriminator: 1)
!1102 = distinct !DILexicalBlock(scope: !1090, file: !111, line: 235, column: 6)
!1103 = !DILocation(line: 235, column: 86, scope: !1104)
!1104 = !DILexicalBlockFile(scope: !1101, file: !111, discriminator: 3)
!1105 = !DILocation(line: 235, column: 101, scope: !1101)
!1106 = !DILocation(line: 235, column: 109, scope: !1107)
!1107 = !DILexicalBlockFile(scope: !1102, file: !111, discriminator: 2)
!1108 = !DILocation(line: 237, column: 15, scope: !1068)
!1109 = !DILocation(line: 237, column: 23, scope: !1068)
!1110 = !DILocation(line: 237, column: 2, scope: !1068)
!1111 = !DILocation(line: 238, column: 1, scope: !1068)
!1112 = !DILocation(line: 238, column: 1, scope: !1113)
!1113 = !DILexicalBlockFile(scope: !1068, file: !111, discriminator: 1)
!1114 = distinct !DISubprogram(name: "rawlog_deinit", scope: !111, file: !111, line: 255, type: !590, isLocal: false, isDefinition: true, scopeLine: 256, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !119)
!1115 = !DILocation(line: 257, column: 2, scope: !1114)
!1116 = !DILocation(line: 259, column: 2, scope: !1114)
!1117 = !DILocation(line: 260, column: 2, scope: !1114)
!1118 = !DILocation(line: 261, column: 2, scope: !1114)
!1119 = !DILocation(line: 262, column: 2, scope: !1114)
!1120 = !DILocation(line: 263, column: 1, scope: !1114)
