; ModuleID = './line41-log.o.i'
source_filename = "./line41-log.o.i"
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
%struct._LOG_REC = type { i8*, i8*, i32, i64, i32, %struct._GSList*, i64, i8* (i8*)*, i8 }
%struct.flock = type { i16, i16, i64, i64, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct._LOG_ITEM_REC = type { i32, i8*, i8* }

@__func__.log_start_logging = private unnamed_addr constant [18 x i8] c"log_start_logging\00", align 1
@.str = private unnamed_addr constant [12 x i8] c"log != NULL\00", align 1
@log_dir_create_mode = common global i32 0, align 4
@log_file_create_mode = common global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"log create failed\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"log locked\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"log_open_string\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"log started\00", align 1
@__func__.log_stop_logging = private unnamed_addr constant [17 x i8] c"log_stop_logging\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"log stopped\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"log_close_string\00", align 1
@__func__.log_write_rec = private unnamed_addr constant [14 x i8] c"log_write_rec\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"str != NULL\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"log_day_changed\00", align 1
@log_timestamp = internal global i8* null, align 8
@.str.10 = private unnamed_addr constant [12 x i8] c"log written\00", align 1
@__func__.log_item_find = private unnamed_addr constant [14 x i8] c"log_item_find\00", align 1
@__func__.log_file_write = private unnamed_addr constant [15 x i8] c"log_file_write\00", align 1
@logs = common global %struct._GSList* null, align 8
@.str.11 = private unnamed_addr constant [3 x i8] c": \00", align 1
@__func__.log_create_rec = private unnamed_addr constant [15 x i8] c"log_create_rec\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"fname != NULL\00", align 1
@__func__.log_item_add = private unnamed_addr constant [13 x i8] c"log_item_add\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"name != NULL\00", align 1
@__func__.log_update = private unnamed_addr constant [11 x i8] c"log_update\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"log new\00", align 1
@__func__.log_close = private unnamed_addr constant [10 x i8] c"log_close\00", align 1
@rotate_tag = internal global i32 0, align 4
@.str.15 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"log_create_mode\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"log_timestamp\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"%H:%M \00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"--- Log opened %a %b %d %H:%M:%S %Y\00", align 1
@.str.21 = private unnamed_addr constant [36 x i8] c"--- Log closed %a %b %d %H:%M:%S %Y\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"--- Day changed %a %b %d %Y\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"setup changed\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"setup reread\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"irssi init finished\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"log_filename() : strftime() failed\00", align 1
@__func__.log_write_timestamp = private unnamed_addr constant [20 x i8] c"log_write_timestamp\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"format != NULL\00", align 1
@__func__.log_rotate_check = private unnamed_addr constant [17 x i8] c"log_rotate_check\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"log rotated\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@mainconfig = external global %struct._CONFIG_REC*, align 8
@.str.30 = private unnamed_addr constant [5 x i8] c"logs\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"auto_open\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"items\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"log config save\00", align 1
@.str.35 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@log_item_types = internal global [3 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i8* null], align 16
@.str.36 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"server\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"window\00", align 1
@__func__.log_destroy = private unnamed_addr constant [12 x i8] c"log_destroy\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"log remove\00", align 1
@sig_rotate_check.last_hour = internal global i32 -1, align 4
@.str.41 = private unnamed_addr constant [16 x i8] c"log config read\00", align 1

; Function Attrs: nounwind uwtable
define i32 @log_start_logging(%struct._LOG_REC*) #0 !dbg !146 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._LOG_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.flock, align 8
  store %struct._LOG_REC* %0, %struct._LOG_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._LOG_REC** %3, metadata !149, metadata !150), !dbg !151
  call void @llvm.dbg.declare(metadata i8** %4, metadata !152, metadata !150), !dbg !153
  call void @llvm.dbg.declare(metadata %struct.flock* %5, metadata !154, metadata !150), !dbg !166
  br label %6, !dbg !167, !llvm.loop !168

; <label>:6:                                      ; preds = %1
  %7 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !169
  %8 = icmp ne %struct._LOG_REC* %7, null, !dbg !173
  br i1 %8, label %9, label %10, !dbg !169

; <label>:9:                                      ; preds = %6
  br label %11, !dbg !174

; <label>:10:                                     ; preds = %6
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.log_start_logging, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0)), !dbg !177
  store i32 0, i32* %2, align 4, !dbg !180
  br label %125, !dbg !180

; <label>:11:                                     ; preds = %9
  br label %12, !dbg !181

; <label>:12:                                     ; preds = %11
  %13 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !183
  %14 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %13, i32 0, i32 2, !dbg !185
  %15 = load i32, i32* %14, align 8, !dbg !185
  %16 = icmp ne i32 %15, -1, !dbg !186
  br i1 %16, label %17, label %18, !dbg !187

; <label>:17:                                     ; preds = %12
  store i32 1, i32* %2, align 4, !dbg !188
  br label %125, !dbg !188

; <label>:18:                                     ; preds = %12
  %19 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !189
  %20 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %19, i32 0, i32 1, !dbg !190
  %21 = load i8*, i8** %20, align 8, !dbg !190
  call void @g_free(i8* %21), !dbg !191
  %22 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !192
  %23 = call i8* @log_filename(%struct._LOG_REC* %22), !dbg !193
  %24 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !194
  %25 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %24, i32 0, i32 1, !dbg !195
  store i8* %23, i8** %25, align 8, !dbg !196
  %26 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !197
  %27 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %26, i32 0, i32 1, !dbg !199
  %28 = load i8*, i8** %27, align 8, !dbg !199
  %29 = icmp ne i8* %28, null, !dbg !200
  br i1 %29, label %30, label %48, !dbg !201

; <label>:30:                                     ; preds = %18
  %31 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !202
  %32 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %31, i32 0, i32 1, !dbg !203
  %33 = load i8*, i8** %32, align 8, !dbg !203
  %34 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !204
  %35 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %34, i32 0, i32 0, !dbg !205
  %36 = load i8*, i8** %35, align 8, !dbg !205
  %37 = call i32 @g_strcmp0(i8* %33, i8* %36), !dbg !206
  %38 = icmp ne i32 %37, 0, !dbg !207
  br i1 %38, label %39, label %48, !dbg !208

; <label>:39:                                     ; preds = %30
  %40 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !210
  %41 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %40, i32 0, i32 1, !dbg !212
  %42 = load i8*, i8** %41, align 8, !dbg !212
  %43 = call noalias i8* @g_path_get_dirname(i8* %42), !dbg !213
  store i8* %43, i8** %4, align 8, !dbg !214
  %44 = load i8*, i8** %4, align 8, !dbg !215
  %45 = load i32, i32* @log_dir_create_mode, align 4, !dbg !216
  %46 = call i32 @g_mkdir_with_parents(i8* %44, i32 %45), !dbg !217
  %47 = load i8*, i8** %4, align 8, !dbg !218
  call void @g_free(i8* %47), !dbg !219
  br label %48, !dbg !220

; <label>:48:                                     ; preds = %39, %30, %18
  %49 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !221
  %50 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %49, i32 0, i32 1, !dbg !222
  %51 = load i8*, i8** %50, align 8, !dbg !222
  %52 = icmp eq i8* %51, null, !dbg !223
  br i1 %52, label %53, label %54, !dbg !221

; <label>:53:                                     ; preds = %48
  br label %60, !dbg !224

; <label>:54:                                     ; preds = %48
  %55 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !225
  %56 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %55, i32 0, i32 1, !dbg !226
  %57 = load i8*, i8** %56, align 8, !dbg !226
  %58 = load i32, i32* @log_file_create_mode, align 4, !dbg !227
  %59 = call i32 (i8*, i32, ...) @open(i8* %57, i32 1089, i32 %58), !dbg !228
  br label %60, !dbg !229

; <label>:60:                                     ; preds = %54, %53
  %61 = phi i32 [ -1, %53 ], [ %59, %54 ], !dbg !231
  %62 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !233
  %63 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %62, i32 0, i32 2, !dbg !234
  store i32 %61, i32* %63, align 8, !dbg !235
  %64 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !236
  %65 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %64, i32 0, i32 2, !dbg !238
  %66 = load i32, i32* %65, align 8, !dbg !238
  %67 = icmp eq i32 %66, -1, !dbg !239
  br i1 %67, label %68, label %76, !dbg !240

; <label>:68:                                     ; preds = %60
  %69 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !241
  %70 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 1, %struct._LOG_REC* %69), !dbg !243
  %71 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !244
  %72 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %71, i32 0, i32 8, !dbg !245
  %73 = load i8, i8* %72, align 8, !dbg !246
  %74 = and i8 %73, -3, !dbg !246
  %75 = or i8 %74, 2, !dbg !246
  store i8 %75, i8* %72, align 8, !dbg !246
  store i32 0, i32* %2, align 4, !dbg !247
  br label %125, !dbg !247

; <label>:76:                                     ; preds = %60
  %77 = bitcast %struct.flock* %5 to i8*, !dbg !248
  call void @llvm.memset.p0i8.i64(i8* %77, i8 0, i64 32, i32 8, i1 false), !dbg !248
  %78 = getelementptr inbounds %struct.flock, %struct.flock* %5, i32 0, i32 0, !dbg !249
  store i16 1, i16* %78, align 8, !dbg !250
  %79 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !251
  %80 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %79, i32 0, i32 2, !dbg !253
  %81 = load i32, i32* %80, align 8, !dbg !253
  %82 = call i32 (i32, i32, ...) @fcntl(i32 %81, i32 6, %struct.flock* %5), !dbg !254
  %83 = icmp eq i32 %82, -1, !dbg !255
  br i1 %83, label %84, label %102, !dbg !256

; <label>:84:                                     ; preds = %76
  %85 = call i32* @__errno_location() #1, !dbg !257
  %86 = load i32, i32* %85, align 4, !dbg !259
  %87 = icmp eq i32 %86, 13, !dbg !260
  br i1 %87, label %88, label %102, !dbg !261

; <label>:88:                                     ; preds = %84
  %89 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !262
  %90 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %89, i32 0, i32 2, !dbg !264
  %91 = load i32, i32* %90, align 8, !dbg !264
  %92 = call i32 @close(i32 %91), !dbg !265
  %93 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !266
  %94 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %93, i32 0, i32 2, !dbg !267
  store i32 -1, i32* %94, align 8, !dbg !268
  %95 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !269
  %96 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 1, %struct._LOG_REC* %95), !dbg !270
  %97 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !271
  %98 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %97, i32 0, i32 8, !dbg !272
  %99 = load i8, i8* %98, align 8, !dbg !273
  %100 = and i8 %99, -3, !dbg !273
  %101 = or i8 %100, 2, !dbg !273
  store i8 %101, i8* %98, align 8, !dbg !273
  store i32 0, i32* %2, align 4, !dbg !274
  br label %125, !dbg !274

; <label>:102:                                    ; preds = %84, %76
  %103 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !275
  %104 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %103, i32 0, i32 2, !dbg !276
  %105 = load i32, i32* %104, align 8, !dbg !276
  %106 = call i64 @lseek(i32 %105, i64 0, i32 2) #7, !dbg !277
  %107 = call i64 @time(i64* null) #7, !dbg !278
  %108 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !279
  %109 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %108, i32 0, i32 6, !dbg !280
  store i64 %107, i64* %109, align 8, !dbg !281
  %110 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !282
  %111 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %110, i32 0, i32 3, !dbg !283
  store i64 %107, i64* %111, align 8, !dbg !284
  %112 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !285
  %113 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %112, i32 0, i32 2, !dbg !286
  %114 = load i32, i32* %113, align 8, !dbg !286
  %115 = call i8* @settings_get_str(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0)), !dbg !287
  %116 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !288
  %117 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %116, i32 0, i32 6, !dbg !289
  %118 = load i64, i64* %117, align 8, !dbg !289
  call void @log_write_timestamp(i32 %114, i8* %115, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i64 %118), !dbg !290
  %119 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !291
  %120 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct._LOG_REC* %119), !dbg !292
  %121 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !293
  %122 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %121, i32 0, i32 8, !dbg !294
  %123 = load i8, i8* %122, align 8, !dbg !295
  %124 = and i8 %123, -3, !dbg !295
  store i8 %124, i8* %122, align 8, !dbg !295
  store i32 1, i32* %2, align 4, !dbg !296
  br label %125, !dbg !296

; <label>:125:                                    ; preds = %102, %88, %68, %17, %10
  %126 = load i32, i32* %2, align 4, !dbg !297
  ret i32 %126, !dbg !297
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare void @g_free(i8*) #2

; Function Attrs: nounwind uwtable
define internal i8* @log_filename(%struct._LOG_REC*) #0 !dbg !298 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._LOG_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [1024 x i8], align 16
  %6 = alloca %struct.tm*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct._LOG_REC* %0, %struct._LOG_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._LOG_REC** %3, metadata !301, metadata !150), !dbg !302
  call void @llvm.dbg.declare(metadata i8** %4, metadata !303, metadata !150), !dbg !304
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !305, metadata !150), !dbg !309
  call void @llvm.dbg.declare(metadata %struct.tm** %6, metadata !310, metadata !150), !dbg !325
  call void @llvm.dbg.declare(metadata i64* %7, metadata !326, metadata !150), !dbg !330
  call void @llvm.dbg.declare(metadata i64* %8, metadata !331, metadata !150), !dbg !332
  %9 = call i64 @time(i64* null) #7, !dbg !333
  store i64 %9, i64* %8, align 8, !dbg !334
  %10 = call %struct.tm* @localtime(i64* %8) #7, !dbg !335
  store %struct.tm* %10, %struct.tm** %6, align 8, !dbg !336
  %11 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !337
  %12 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %11, i32 0, i32 0, !dbg !338
  %13 = load i8*, i8** %12, align 8, !dbg !338
  %14 = call i8* @convert_home(i8* %13), !dbg !339
  store i8* %14, i8** %4, align 8, !dbg !340
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0, !dbg !341
  %16 = load i8*, i8** %4, align 8, !dbg !342
  %17 = load %struct.tm*, %struct.tm** %6, align 8, !dbg !343
  %18 = call i64 @strftime(i8* %15, i64 1024, i8* %16, %struct.tm* %17) #7, !dbg !344
  store i64 %18, i64* %7, align 8, !dbg !345
  %19 = load i8*, i8** %4, align 8, !dbg !346
  call void @g_free(i8* %19), !dbg !347
  %20 = load i64, i64* %7, align 8, !dbg !348
  %21 = icmp ule i64 %20, 0, !dbg !350
  br i1 %21, label %22, label %23, !dbg !351

; <label>:22:                                     ; preds = %1
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.26, i32 0, i32 0)), !dbg !352
  store i8* null, i8** %2, align 8, !dbg !354
  br label %26, !dbg !354

; <label>:23:                                     ; preds = %1
  %24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0, !dbg !355
  %25 = call noalias i8* @g_strdup(i8* %24), !dbg !356
  store i8* %25, i8** %2, align 8, !dbg !357
  br label %26, !dbg !357

; <label>:26:                                     ; preds = %23, %22
  %27 = load i8*, i8** %2, align 8, !dbg !358
  ret i8* %27, !dbg !358
}

declare i32 @g_strcmp0(i8*, i8*) #2

declare noalias i8* @g_path_get_dirname(i8*) #2

declare i32 @g_mkdir_with_parents(i8*, i32) #2

declare i32 @open(i8*, i32, ...) #2

declare i32 @signal_emit(i8*, i32, ...) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3

declare i32 @fcntl(i32, i32, ...) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

declare i32 @close(i32) #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #5

; Function Attrs: nounwind
declare i64 @time(i64*) #5

; Function Attrs: nounwind uwtable
define internal void @log_write_timestamp(i32, i8*, i8*, i64) #0 !dbg !359 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.tm*, align 8
  %10 = alloca [256 x i8], align 16
  store i32 %0, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !362, metadata !150), !dbg !363
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !364, metadata !150), !dbg !365
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !366, metadata !150), !dbg !367
  store i64 %3, i64* %8, align 8
  call void @llvm.dbg.declare(metadata i64* %8, metadata !368, metadata !150), !dbg !369
  call void @llvm.dbg.declare(metadata %struct.tm** %9, metadata !370, metadata !150), !dbg !371
  call void @llvm.dbg.declare(metadata [256 x i8]* %10, metadata !372, metadata !150), !dbg !376
  br label %11, !dbg !377, !llvm.loop !378

; <label>:11:                                     ; preds = %4
  %12 = load i8*, i8** %6, align 8, !dbg !379
  %13 = icmp ne i8* %12, null, !dbg !383
  br i1 %13, label %14, label %15, !dbg !379

; <label>:14:                                     ; preds = %11
  br label %16, !dbg !384

; <label>:15:                                     ; preds = %11
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.log_write_timestamp, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i32 0, i32 0)), !dbg !387
  br label %47, !dbg !390

; <label>:16:                                     ; preds = %14
  br label %17, !dbg !391

; <label>:17:                                     ; preds = %16
  %18 = load i8*, i8** %6, align 8, !dbg !393
  %19 = load i8, i8* %18, align 1, !dbg !395
  %20 = sext i8 %19 to i32, !dbg !395
  %21 = icmp eq i32 %20, 0, !dbg !396
  br i1 %21, label %22, label %23, !dbg !397

; <label>:22:                                     ; preds = %17
  br label %47, !dbg !398

; <label>:23:                                     ; preds = %17
  %24 = call %struct.tm* @localtime(i64* %8) #7, !dbg !400
  store %struct.tm* %24, %struct.tm** %9, align 8, !dbg !401
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i32 0, i32 0, !dbg !402
  %26 = load i8*, i8** %6, align 8, !dbg !404
  %27 = load %struct.tm*, %struct.tm** %9, align 8, !dbg !405
  %28 = call i64 @strftime(i8* %25, i64 256, i8* %26, %struct.tm* %27) #7, !dbg !406
  %29 = icmp ugt i64 %28, 0, !dbg !407
  br i1 %29, label %30, label %37, !dbg !408

; <label>:30:                                     ; preds = %23
  %31 = load i32, i32* %5, align 4, !dbg !409
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i32 0, i32 0, !dbg !410
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i32 0, i32 0, !dbg !411
  %34 = call i64 @strlen(i8* %33) #8, !dbg !412
  %35 = trunc i64 %34 to i32, !dbg !412
  %36 = call i32 @write_buffer(i32 %31, i8* %32, i32 %35), !dbg !413
  br label %37, !dbg !415

; <label>:37:                                     ; preds = %30, %23
  %38 = load i8*, i8** %7, align 8, !dbg !416
  %39 = icmp ne i8* %38, null, !dbg !418
  br i1 %39, label %40, label %47, !dbg !419

; <label>:40:                                     ; preds = %37
  %41 = load i32, i32* %5, align 4, !dbg !420
  %42 = load i8*, i8** %7, align 8, !dbg !422
  %43 = load i8*, i8** %7, align 8, !dbg !423
  %44 = call i64 @strlen(i8* %43) #8, !dbg !424
  %45 = trunc i64 %44 to i32, !dbg !424
  %46 = call i32 @write_buffer(i32 %41, i8* %42, i32 %45), !dbg !425
  br label %47, !dbg !427

; <label>:47:                                     ; preds = %15, %22, %40, %37
  ret void, !dbg !428
}

declare i8* @settings_get_str(i8*) #2

; Function Attrs: nounwind uwtable
define void @log_stop_logging(%struct._LOG_REC*) #0 !dbg !429 {
  %2 = alloca %struct._LOG_REC*, align 8
  %3 = alloca %struct.flock, align 8
  store %struct._LOG_REC* %0, %struct._LOG_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._LOG_REC** %2, metadata !432, metadata !150), !dbg !433
  call void @llvm.dbg.declare(metadata %struct.flock* %3, metadata !434, metadata !150), !dbg !435
  br label %4, !dbg !436, !llvm.loop !437

; <label>:4:                                      ; preds = %1
  %5 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !438
  %6 = icmp ne %struct._LOG_REC* %5, null, !dbg !442
  br i1 %6, label %7, label %8, !dbg !438

; <label>:7:                                      ; preds = %4
  br label %9, !dbg !443

; <label>:8:                                      ; preds = %4
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.log_stop_logging, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0)), !dbg !446
  br label %36, !dbg !449

; <label>:9:                                      ; preds = %7
  br label %10, !dbg !450

; <label>:10:                                     ; preds = %9
  %11 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !452
  %12 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %11, i32 0, i32 2, !dbg !454
  %13 = load i32, i32* %12, align 8, !dbg !454
  %14 = icmp eq i32 %13, -1, !dbg !455
  br i1 %14, label %15, label %16, !dbg !456

; <label>:15:                                     ; preds = %10
  br label %36, !dbg !457

; <label>:16:                                     ; preds = %10
  %17 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !458
  %18 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i32 1, %struct._LOG_REC* %17), !dbg !459
  %19 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !460
  %20 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %19, i32 0, i32 2, !dbg !461
  %21 = load i32, i32* %20, align 8, !dbg !461
  %22 = call i8* @settings_get_str(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0)), !dbg !462
  %23 = call i64 @time(i64* null) #7, !dbg !463
  call void @log_write_timestamp(i32 %21, i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i64 %23), !dbg !464
  %24 = bitcast %struct.flock* %3 to i8*, !dbg !465
  call void @llvm.memset.p0i8.i64(i8* %24, i8 0, i64 32, i32 8, i1 false), !dbg !465
  %25 = getelementptr inbounds %struct.flock, %struct.flock* %3, i32 0, i32 0, !dbg !466
  store i16 2, i16* %25, align 8, !dbg !467
  %26 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !468
  %27 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %26, i32 0, i32 2, !dbg !469
  %28 = load i32, i32* %27, align 8, !dbg !469
  %29 = call i32 (i32, i32, ...) @fcntl(i32 %28, i32 6, %struct.flock* %3), !dbg !470
  call void @write_buffer_flush(), !dbg !471
  %30 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !472
  %31 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %30, i32 0, i32 2, !dbg !473
  %32 = load i32, i32* %31, align 8, !dbg !473
  %33 = call i32 @close(i32 %32), !dbg !474
  %34 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !475
  %35 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %34, i32 0, i32 2, !dbg !476
  store i32 -1, i32* %35, align 8, !dbg !477
  br label %36, !dbg !478

; <label>:36:                                     ; preds = %16, %15, %8
  ret void, !dbg !479
}

declare void @write_buffer_flush() #2

; Function Attrs: nounwind uwtable
define void @log_write_rec(%struct._LOG_REC*, i8*, i32) #0 !dbg !481 {
  %4 = alloca %struct._LOG_REC*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tm*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct._LOG_REC* %0, %struct._LOG_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._LOG_REC** %4, metadata !484, metadata !150), !dbg !485
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !486, metadata !150), !dbg !487
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !488, metadata !150), !dbg !489
  call void @llvm.dbg.declare(metadata i8** %7, metadata !490, metadata !150), !dbg !491
  call void @llvm.dbg.declare(metadata %struct.tm** %8, metadata !492, metadata !150), !dbg !493
  call void @llvm.dbg.declare(metadata i64* %9, metadata !494, metadata !150), !dbg !495
  call void @llvm.dbg.declare(metadata i32* %10, metadata !496, metadata !150), !dbg !497
  call void @llvm.dbg.declare(metadata i32* %11, metadata !498, metadata !150), !dbg !499
  br label %12, !dbg !500, !llvm.loop !501

; <label>:12:                                     ; preds = %3
  %13 = load %struct._LOG_REC*, %struct._LOG_REC** %4, align 8, !dbg !502
  %14 = icmp ne %struct._LOG_REC* %13, null, !dbg !506
  br i1 %14, label %15, label %16, !dbg !502

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !507

; <label>:16:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.log_write_rec, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0)), !dbg !510
  br label %108, !dbg !513

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !514

; <label>:18:                                     ; preds = %17
  br label %19, !dbg !516, !llvm.loop !517

; <label>:19:                                     ; preds = %18
  %20 = load i8*, i8** %5, align 8, !dbg !518
  %21 = icmp ne i8* %20, null, !dbg !522
  br i1 %21, label %22, label %23, !dbg !518

; <label>:22:                                     ; preds = %19
  br label %24, !dbg !523

; <label>:23:                                     ; preds = %19
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.log_write_rec, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0)), !dbg !526
  br label %108, !dbg !529

; <label>:24:                                     ; preds = %22
  br label %25, !dbg !530

; <label>:25:                                     ; preds = %24
  %26 = load %struct._LOG_REC*, %struct._LOG_REC** %4, align 8, !dbg !532
  %27 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %26, i32 0, i32 2, !dbg !534
  %28 = load i32, i32* %27, align 8, !dbg !534
  %29 = icmp eq i32 %28, -1, !dbg !535
  br i1 %29, label %30, label %31, !dbg !536

; <label>:30:                                     ; preds = %25
  br label %108, !dbg !537

; <label>:31:                                     ; preds = %25
  %32 = call i64 @time(i64* null) #7, !dbg !538
  store i64 %32, i64* %9, align 8, !dbg !539
  %33 = call %struct.tm* @localtime(i64* %9) #7, !dbg !540
  store %struct.tm* %33, %struct.tm** %8, align 8, !dbg !541
  %34 = load %struct.tm*, %struct.tm** %8, align 8, !dbg !542
  %35 = getelementptr inbounds %struct.tm, %struct.tm* %34, i32 0, i32 2, !dbg !543
  %36 = load i32, i32* %35, align 8, !dbg !543
  store i32 %36, i32* %10, align 4, !dbg !544
  %37 = load %struct.tm*, %struct.tm** %8, align 8, !dbg !545
  %38 = getelementptr inbounds %struct.tm, %struct.tm* %37, i32 0, i32 3, !dbg !546
  %39 = load i32, i32* %38, align 4, !dbg !546
  store i32 %39, i32* %11, align 4, !dbg !547
  %40 = load %struct._LOG_REC*, %struct._LOG_REC** %4, align 8, !dbg !548
  %41 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %40, i32 0, i32 6, !dbg !549
  %42 = call %struct.tm* @localtime(i64* %41) #7, !dbg !550
  store %struct.tm* %42, %struct.tm** %8, align 8, !dbg !551
  %43 = load %struct.tm*, %struct.tm** %8, align 8, !dbg !552
  %44 = getelementptr inbounds %struct.tm, %struct.tm* %43, i32 0, i32 3, !dbg !553
  %45 = load i32, i32* %44, align 4, !dbg !553
  %46 = load i32, i32* %11, align 4, !dbg !554
  %47 = sub nsw i32 %46, %45, !dbg !554
  store i32 %47, i32* %11, align 4, !dbg !554
  %48 = load %struct.tm*, %struct.tm** %8, align 8, !dbg !555
  %49 = getelementptr inbounds %struct.tm, %struct.tm* %48, i32 0, i32 2, !dbg !557
  %50 = load i32, i32* %49, align 8, !dbg !557
  %51 = load i32, i32* %10, align 4, !dbg !558
  %52 = icmp ne i32 %50, %51, !dbg !559
  br i1 %52, label %53, label %55, !dbg !560

; <label>:53:                                     ; preds = %31
  %54 = load %struct._LOG_REC*, %struct._LOG_REC** %4, align 8, !dbg !561
  call void @log_rotate_check(%struct._LOG_REC* %54), !dbg !563
  br label %55, !dbg !564

; <label>:55:                                     ; preds = %53, %31
  %56 = load i32, i32* %11, align 4, !dbg !565
  %57 = icmp ne i32 %56, 0, !dbg !567
  br i1 %57, label %58, label %64, !dbg !568

; <label>:58:                                     ; preds = %55
  %59 = load %struct._LOG_REC*, %struct._LOG_REC** %4, align 8, !dbg !569
  %60 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %59, i32 0, i32 2, !dbg !571
  %61 = load i32, i32* %60, align 8, !dbg !571
  %62 = call i8* @settings_get_str(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0)), !dbg !572
  %63 = load i64, i64* %9, align 8, !dbg !573
  call void @log_write_timestamp(i32 %61, i8* %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i64 %63), !dbg !574
  br label %64, !dbg !575

; <label>:64:                                     ; preds = %58, %55
  %65 = load i64, i64* %9, align 8, !dbg !576
  %66 = load %struct._LOG_REC*, %struct._LOG_REC** %4, align 8, !dbg !577
  %67 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %66, i32 0, i32 6, !dbg !578
  store i64 %65, i64* %67, align 8, !dbg !579
  %68 = load %struct._LOG_REC*, %struct._LOG_REC** %4, align 8, !dbg !580
  %69 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %68, i32 0, i32 7, !dbg !582
  %70 = load i8* (i8*)*, i8* (i8*)** %69, align 8, !dbg !582
  %71 = icmp eq i8* (i8*)* %70, null, !dbg !583
  br i1 %71, label %72, label %73, !dbg !584

; <label>:72:                                     ; preds = %64
  store i8* null, i8** %7, align 8, !dbg !585
  br label %79, !dbg !586

; <label>:73:                                     ; preds = %64
  %74 = load %struct._LOG_REC*, %struct._LOG_REC** %4, align 8, !dbg !587
  %75 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %74, i32 0, i32 7, !dbg !588
  %76 = load i8* (i8*)*, i8* (i8*)** %75, align 8, !dbg !588
  %77 = load i8*, i8** %5, align 8, !dbg !589
  %78 = call i8* %76(i8* %77), !dbg !587
  store i8* %78, i8** %7, align 8, !dbg !590
  store i8* %78, i8** %5, align 8, !dbg !591
  br label %79

; <label>:79:                                     ; preds = %73, %72
  %80 = load i32, i32* %6, align 4, !dbg !592
  %81 = and i32 %80, 134217728, !dbg !594
  %82 = icmp eq i32 %81, 0, !dbg !595
  br i1 %82, label %83, label %90, !dbg !596

; <label>:83:                                     ; preds = %79
  %84 = load %struct._LOG_REC*, %struct._LOG_REC** %4, align 8, !dbg !597
  %85 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %84, i32 0, i32 2, !dbg !598
  %86 = load i32, i32* %85, align 8, !dbg !598
  %87 = load i8*, i8** @log_timestamp, align 8, !dbg !599
  %88 = load i8*, i8** %5, align 8, !dbg !600
  %89 = load i64, i64* %9, align 8, !dbg !601
  call void @log_write_timestamp(i32 %86, i8* %87, i8* %88, i64 %89), !dbg !602
  br label %99, !dbg !602

; <label>:90:                                     ; preds = %79
  %91 = load %struct._LOG_REC*, %struct._LOG_REC** %4, align 8, !dbg !603
  %92 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %91, i32 0, i32 2, !dbg !604
  %93 = load i32, i32* %92, align 8, !dbg !604
  %94 = load i8*, i8** %5, align 8, !dbg !605
  %95 = load i8*, i8** %5, align 8, !dbg !606
  %96 = call i64 @strlen(i8* %95) #8, !dbg !607
  %97 = trunc i64 %96 to i32, !dbg !607
  %98 = call i32 @write_buffer(i32 %93, i8* %94, i32 %97), !dbg !608
  br label %99

; <label>:99:                                     ; preds = %90, %83
  %100 = load %struct._LOG_REC*, %struct._LOG_REC** %4, align 8, !dbg !610
  %101 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %100, i32 0, i32 2, !dbg !611
  %102 = load i32, i32* %101, align 8, !dbg !611
  %103 = call i32 @write_buffer(i32 %102, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i32 1), !dbg !612
  %104 = load %struct._LOG_REC*, %struct._LOG_REC** %4, align 8, !dbg !613
  %105 = load i8*, i8** %5, align 8, !dbg !614
  %106 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i32 2, %struct._LOG_REC* %104, i8* %105), !dbg !615
  %107 = load i8*, i8** %7, align 8, !dbg !616
  call void @g_free(i8* %107), !dbg !617
  br label %108, !dbg !618

; <label>:108:                                    ; preds = %99, %30, %23, %16
  ret void, !dbg !619
}

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) #5

; Function Attrs: nounwind uwtable
define internal void @log_rotate_check(%struct._LOG_REC*) #0 !dbg !621 {
  %2 = alloca %struct._LOG_REC*, align 8
  %3 = alloca i8*, align 8
  store %struct._LOG_REC* %0, %struct._LOG_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._LOG_REC** %2, metadata !622, metadata !150), !dbg !623
  call void @llvm.dbg.declare(metadata i8** %3, metadata !624, metadata !150), !dbg !625
  br label %4, !dbg !626, !llvm.loop !627

; <label>:4:                                      ; preds = %1
  %5 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !628
  %6 = icmp ne %struct._LOG_REC* %5, null, !dbg !632
  br i1 %6, label %7, label %8, !dbg !628

; <label>:7:                                      ; preds = %4
  br label %9, !dbg !633

; <label>:8:                                      ; preds = %4
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.log_rotate_check, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0)), !dbg !636
  br label %38, !dbg !639

; <label>:9:                                      ; preds = %7
  br label %10, !dbg !640

; <label>:10:                                     ; preds = %9
  %11 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !642
  %12 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %11, i32 0, i32 2, !dbg !644
  %13 = load i32, i32* %12, align 8, !dbg !644
  %14 = icmp eq i32 %13, -1, !dbg !645
  br i1 %14, label %20, label %15, !dbg !646

; <label>:15:                                     ; preds = %10
  %16 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !647
  %17 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %16, i32 0, i32 1, !dbg !649
  %18 = load i8*, i8** %17, align 8, !dbg !649
  %19 = icmp eq i8* %18, null, !dbg !650
  br i1 %19, label %20, label %21, !dbg !651

; <label>:20:                                     ; preds = %15, %10
  br label %38, !dbg !652

; <label>:21:                                     ; preds = %15
  %22 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !653
  %23 = call i8* @log_filename(%struct._LOG_REC* %22), !dbg !654
  store i8* %23, i8** %3, align 8, !dbg !655
  %24 = load i8*, i8** %3, align 8, !dbg !656
  %25 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !658
  %26 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %25, i32 0, i32 1, !dbg !659
  %27 = load i8*, i8** %26, align 8, !dbg !659
  %28 = call i32 @g_strcmp0(i8* %24, i8* %27), !dbg !660
  %29 = icmp ne i32 %28, 0, !dbg !661
  br i1 %29, label %30, label %36, !dbg !662

; <label>:30:                                     ; preds = %21
  %31 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !663
  call void @log_stop_logging(%struct._LOG_REC* %31), !dbg !665
  %32 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !666
  %33 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), i32 1, %struct._LOG_REC* %32), !dbg !667
  %34 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !668
  %35 = call i32 @log_start_logging(%struct._LOG_REC* %34), !dbg !669
  br label %36, !dbg !670

; <label>:36:                                     ; preds = %30, %21
  %37 = load i8*, i8** %3, align 8, !dbg !671
  call void @g_free(i8* %37), !dbg !672
  br label %38, !dbg !673

; <label>:38:                                     ; preds = %36, %20, %8
  ret void, !dbg !674
}

declare i32 @write_buffer(i32, i8*, i32) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #6

; Function Attrs: nounwind uwtable
define %struct._LOG_ITEM_REC* @log_item_find(%struct._LOG_REC*, i32, i8*, i8*) #0 !dbg !676 {
  %5 = alloca %struct._LOG_ITEM_REC*, align 8
  %6 = alloca %struct._LOG_REC*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct._GSList*, align 8
  %11 = alloca %struct._LOG_ITEM_REC*, align 8
  store %struct._LOG_REC* %0, %struct._LOG_REC** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._LOG_REC** %6, metadata !679, metadata !150), !dbg !680
  store i32 %1, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !681, metadata !150), !dbg !682
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !683, metadata !150), !dbg !684
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !685, metadata !150), !dbg !686
  call void @llvm.dbg.declare(metadata %struct._GSList** %10, metadata !687, metadata !150), !dbg !688
  br label %12, !dbg !689, !llvm.loop !690

; <label>:12:                                     ; preds = %4
  %13 = load %struct._LOG_REC*, %struct._LOG_REC** %6, align 8, !dbg !691
  %14 = icmp ne %struct._LOG_REC* %13, null, !dbg !695
  br i1 %14, label %15, label %16, !dbg !691

; <label>:15:                                     ; preds = %12
  br label %17, !dbg !696

; <label>:16:                                     ; preds = %12
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.log_item_find, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0)), !dbg !699
  store %struct._LOG_ITEM_REC* null, %struct._LOG_ITEM_REC** %5, align 8, !dbg !702
  br label %65, !dbg !702

; <label>:17:                                     ; preds = %15
  br label %18, !dbg !703

; <label>:18:                                     ; preds = %17
  %19 = load %struct._LOG_REC*, %struct._LOG_REC** %6, align 8, !dbg !705
  %20 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %19, i32 0, i32 5, !dbg !707
  %21 = load %struct._GSList*, %struct._GSList** %20, align 8, !dbg !707
  store %struct._GSList* %21, %struct._GSList** %10, align 8, !dbg !708
  br label %22, !dbg !709

; <label>:22:                                     ; preds = %60, %18
  %23 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !710
  %24 = icmp ne %struct._GSList* %23, null, !dbg !713
  br i1 %24, label %25, label %64, !dbg !714

; <label>:25:                                     ; preds = %22
  call void @llvm.dbg.declare(metadata %struct._LOG_ITEM_REC** %11, metadata !715, metadata !150), !dbg !717
  %26 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !718
  %27 = getelementptr inbounds %struct._GSList, %struct._GSList* %26, i32 0, i32 0, !dbg !719
  %28 = load i8*, i8** %27, align 8, !dbg !719
  %29 = bitcast i8* %28 to %struct._LOG_ITEM_REC*, !dbg !718
  store %struct._LOG_ITEM_REC* %29, %struct._LOG_ITEM_REC** %11, align 8, !dbg !717
  %30 = load %struct._LOG_ITEM_REC*, %struct._LOG_ITEM_REC** %11, align 8, !dbg !720
  %31 = getelementptr inbounds %struct._LOG_ITEM_REC, %struct._LOG_ITEM_REC* %30, i32 0, i32 0, !dbg !722
  %32 = load i32, i32* %31, align 8, !dbg !722
  %33 = load i32, i32* %7, align 4, !dbg !723
  %34 = icmp eq i32 %32, %33, !dbg !724
  br i1 %34, label %35, label %59, !dbg !725

; <label>:35:                                     ; preds = %25
  %36 = load %struct._LOG_ITEM_REC*, %struct._LOG_ITEM_REC** %11, align 8, !dbg !726
  %37 = getelementptr inbounds %struct._LOG_ITEM_REC, %struct._LOG_ITEM_REC* %36, i32 0, i32 1, !dbg !728
  %38 = load i8*, i8** %37, align 8, !dbg !728
  %39 = load i8*, i8** %8, align 8, !dbg !729
  %40 = call i32 @itemcmp(i8* %38, i8* %39), !dbg !730
  %41 = icmp eq i32 %40, 0, !dbg !731
  br i1 %41, label %42, label %59, !dbg !732

; <label>:42:                                     ; preds = %35
  %43 = load %struct._LOG_ITEM_REC*, %struct._LOG_ITEM_REC** %11, align 8, !dbg !733
  %44 = getelementptr inbounds %struct._LOG_ITEM_REC, %struct._LOG_ITEM_REC* %43, i32 0, i32 2, !dbg !734
  %45 = load i8*, i8** %44, align 8, !dbg !734
  %46 = icmp eq i8* %45, null, !dbg !735
  br i1 %46, label %57, label %47, !dbg !736

; <label>:47:                                     ; preds = %42
  %48 = load i8*, i8** %9, align 8, !dbg !737
  %49 = icmp ne i8* %48, null, !dbg !738
  br i1 %49, label %50, label %59, !dbg !739

; <label>:50:                                     ; preds = %47
  %51 = load %struct._LOG_ITEM_REC*, %struct._LOG_ITEM_REC** %11, align 8, !dbg !740
  %52 = getelementptr inbounds %struct._LOG_ITEM_REC, %struct._LOG_ITEM_REC* %51, i32 0, i32 2, !dbg !741
  %53 = load i8*, i8** %52, align 8, !dbg !741
  %54 = load i8*, i8** %9, align 8, !dbg !742
  %55 = call i32 @g_ascii_strcasecmp(i8* %53, i8* %54), !dbg !743
  %56 = icmp eq i32 %55, 0, !dbg !744
  br i1 %56, label %57, label %59, !dbg !745

; <label>:57:                                     ; preds = %50, %42
  %58 = load %struct._LOG_ITEM_REC*, %struct._LOG_ITEM_REC** %11, align 8, !dbg !747
  store %struct._LOG_ITEM_REC* %58, %struct._LOG_ITEM_REC** %5, align 8, !dbg !748
  br label %65, !dbg !748

; <label>:59:                                     ; preds = %50, %47, %35, %25
  br label %60, !dbg !749

; <label>:60:                                     ; preds = %59
  %61 = load %struct._GSList*, %struct._GSList** %10, align 8, !dbg !750
  %62 = getelementptr inbounds %struct._GSList, %struct._GSList* %61, i32 0, i32 1, !dbg !752
  %63 = load %struct._GSList*, %struct._GSList** %62, align 8, !dbg !752
  store %struct._GSList* %63, %struct._GSList** %10, align 8, !dbg !753
  br label %22, !dbg !754, !llvm.loop !755

; <label>:64:                                     ; preds = %22
  store %struct._LOG_ITEM_REC* null, %struct._LOG_ITEM_REC** %5, align 8, !dbg !757
  br label %65, !dbg !757

; <label>:65:                                     ; preds = %64, %57, %16
  %66 = load %struct._LOG_ITEM_REC*, %struct._LOG_ITEM_REC** %5, align 8, !dbg !758
  ret %struct._LOG_ITEM_REC* %66, !dbg !758
}

; Function Attrs: nounwind uwtable
define internal i32 @itemcmp(i8*, i8*) #0 !dbg !759 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !762, metadata !150), !dbg !763
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !764, metadata !150), !dbg !765
  %6 = load i8*, i8** %4, align 8, !dbg !766
  %7 = call i32 @g_strcmp0(i8* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0)), !dbg !768
  %8 = icmp ne i32 %7, 0, !dbg !768
  br i1 %8, label %10, label %9, !dbg !769

; <label>:9:                                      ; preds = %2
  store i32 0, i32* %3, align 4, !dbg !770
  br label %20, !dbg !770

; <label>:10:                                     ; preds = %2
  %11 = load i8*, i8** %5, align 8, !dbg !771
  %12 = icmp ne i8* %11, null, !dbg !771
  br i1 %12, label %13, label %17, !dbg !771

; <label>:13:                                     ; preds = %10
  %14 = load i8*, i8** %4, align 8, !dbg !772
  %15 = load i8*, i8** %5, align 8, !dbg !774
  %16 = call i32 @g_ascii_strcasecmp(i8* %14, i8* %15), !dbg !775
  br label %18, !dbg !776

; <label>:17:                                     ; preds = %10
  br label %18, !dbg !777

; <label>:18:                                     ; preds = %17, %13
  %19 = phi i32 [ %16, %13 ], [ 1, %17 ], !dbg !779
  store i32 %19, i32* %3, align 4, !dbg !781
  br label %20, !dbg !781

; <label>:20:                                     ; preds = %18, %9
  %21 = load i32, i32* %3, align 4, !dbg !782
  ret i32 %21, !dbg !782
}

declare i32 @g_ascii_strcasecmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @log_file_write(i8*, i8*, i32, i8*, i32) #0 !dbg !783 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct._GSList*, align 8
  %12 = alloca %struct._GSList*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct._LOG_REC*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !786, metadata !150), !dbg !787
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !788, metadata !150), !dbg !789
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !790, metadata !150), !dbg !791
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !792, metadata !150), !dbg !793
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !794, metadata !150), !dbg !795
  call void @llvm.dbg.declare(metadata %struct._GSList** %11, metadata !796, metadata !150), !dbg !797
  call void @llvm.dbg.declare(metadata %struct._GSList** %12, metadata !798, metadata !150), !dbg !799
  call void @llvm.dbg.declare(metadata i8** %13, metadata !800, metadata !150), !dbg !801
  call void @llvm.dbg.declare(metadata i32* %14, metadata !802, metadata !150), !dbg !803
  br label %16, !dbg !804, !llvm.loop !805

; <label>:16:                                     ; preds = %5
  %17 = load i8*, i8** %9, align 8, !dbg !806
  %18 = icmp ne i8* %17, null, !dbg !810
  br i1 %18, label %19, label %20, !dbg !806

; <label>:19:                                     ; preds = %16
  br label %21, !dbg !811

; <label>:20:                                     ; preds = %16
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.log_file_write, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0)), !dbg !814
  br label %119, !dbg !817

; <label>:21:                                     ; preds = %19
  br label %22, !dbg !818

; <label>:22:                                     ; preds = %21
  %23 = load %struct._GSList*, %struct._GSList** @logs, align 8, !dbg !820
  %24 = icmp eq %struct._GSList* %23, null, !dbg !822
  br i1 %24, label %25, label %26, !dbg !823

; <label>:25:                                     ; preds = %22
  br label %119, !dbg !824

; <label>:26:                                     ; preds = %22
  store %struct._GSList* null, %struct._GSList** %12, align 8, !dbg !825
  store i32 0, i32* %14, align 4, !dbg !826
  %27 = load %struct._GSList*, %struct._GSList** @logs, align 8, !dbg !827
  store %struct._GSList* %27, %struct._GSList** %11, align 8, !dbg !829
  br label %28, !dbg !830

; <label>:28:                                     ; preds = %71, %26
  %29 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !831
  %30 = icmp ne %struct._GSList* %29, null, !dbg !834
  br i1 %30, label %31, label %75, !dbg !835

; <label>:31:                                     ; preds = %28
  call void @llvm.dbg.declare(metadata %struct._LOG_REC** %15, metadata !836, metadata !150), !dbg !838
  %32 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !839
  %33 = getelementptr inbounds %struct._GSList, %struct._GSList* %32, i32 0, i32 0, !dbg !840
  %34 = load i8*, i8** %33, align 8, !dbg !840
  %35 = bitcast i8* %34 to %struct._LOG_REC*, !dbg !839
  store %struct._LOG_REC* %35, %struct._LOG_REC** %15, align 8, !dbg !838
  %36 = load %struct._LOG_REC*, %struct._LOG_REC** %15, align 8, !dbg !841
  %37 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %36, i32 0, i32 2, !dbg !843
  %38 = load i32, i32* %37, align 8, !dbg !843
  %39 = icmp eq i32 %38, -1, !dbg !844
  br i1 %39, label %40, label %41, !dbg !845

; <label>:40:                                     ; preds = %31
  br label %71, !dbg !846

; <label>:41:                                     ; preds = %31
  %42 = load i32, i32* %8, align 4, !dbg !847
  %43 = load %struct._LOG_REC*, %struct._LOG_REC** %15, align 8, !dbg !849
  %44 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %43, i32 0, i32 4, !dbg !850
  %45 = load i32, i32* %44, align 8, !dbg !850
  %46 = and i32 %42, %45, !dbg !851
  %47 = icmp eq i32 %46, 0, !dbg !852
  br i1 %47, label %48, label %49, !dbg !853

; <label>:48:                                     ; preds = %41
  br label %71, !dbg !854

; <label>:49:                                     ; preds = %41
  %50 = load %struct._LOG_REC*, %struct._LOG_REC** %15, align 8, !dbg !855
  %51 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %50, i32 0, i32 5, !dbg !857
  %52 = load %struct._GSList*, %struct._GSList** %51, align 8, !dbg !857
  %53 = icmp eq %struct._GSList* %52, null, !dbg !858
  br i1 %53, label %54, label %59, !dbg !859

; <label>:54:                                     ; preds = %49
  %55 = load %struct._GSList*, %struct._GSList** %12, align 8, !dbg !860
  %56 = load %struct._LOG_REC*, %struct._LOG_REC** %15, align 8, !dbg !861
  %57 = bitcast %struct._LOG_REC* %56 to i8*, !dbg !861
  %58 = call %struct._GSList* @g_slist_append(%struct._GSList* %55, i8* %57), !dbg !862
  store %struct._GSList* %58, %struct._GSList** %12, align 8, !dbg !863
  br label %70, !dbg !864

; <label>:59:                                     ; preds = %49
  %60 = load %struct._LOG_REC*, %struct._LOG_REC** %15, align 8, !dbg !865
  %61 = load i8*, i8** %7, align 8, !dbg !867
  %62 = load i8*, i8** %6, align 8, !dbg !868
  %63 = call %struct._LOG_ITEM_REC* @log_item_find(%struct._LOG_REC* %60, i32 0, i8* %61, i8* %62), !dbg !869
  %64 = icmp ne %struct._LOG_ITEM_REC* %63, null, !dbg !870
  br i1 %64, label %65, label %69, !dbg !871

; <label>:65:                                     ; preds = %59
  %66 = load %struct._LOG_REC*, %struct._LOG_REC** %15, align 8, !dbg !872
  %67 = load i8*, i8** %9, align 8, !dbg !873
  %68 = load i32, i32* %8, align 4, !dbg !874
  call void @log_write_rec(%struct._LOG_REC* %66, i8* %67, i32 %68), !dbg !875
  br label %69, !dbg !875

; <label>:69:                                     ; preds = %65, %59
  br label %70

; <label>:70:                                     ; preds = %69, %54
  br label %71, !dbg !876

; <label>:71:                                     ; preds = %70, %48, %40
  %72 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !877
  %73 = getelementptr inbounds %struct._GSList, %struct._GSList* %72, i32 0, i32 1, !dbg !879
  %74 = load %struct._GSList*, %struct._GSList** %73, align 8, !dbg !879
  store %struct._GSList* %74, %struct._GSList** %11, align 8, !dbg !880
  br label %28, !dbg !881, !llvm.loop !882

; <label>:75:                                     ; preds = %28
  %76 = load i32, i32* %14, align 4, !dbg !884
  %77 = icmp ne i32 %76, 0, !dbg !884
  br i1 %77, label %117, label %78, !dbg !886

; <label>:78:                                     ; preds = %75
  %79 = load i32, i32* %10, align 4, !dbg !887
  %80 = icmp ne i32 %79, 0, !dbg !887
  br i1 %80, label %117, label %81, !dbg !889

; <label>:81:                                     ; preds = %78
  %82 = load %struct._GSList*, %struct._GSList** %12, align 8, !dbg !890
  %83 = icmp ne %struct._GSList* %82, null, !dbg !892
  br i1 %83, label %84, label %117, !dbg !893

; <label>:84:                                     ; preds = %81
  %85 = load i32, i32* %8, align 4, !dbg !894
  %86 = and i32 %85, 4, !dbg !896
  %87 = icmp ne i32 %86, 0, !dbg !896
  br i1 %87, label %88, label %95, !dbg !897

; <label>:88:                                     ; preds = %84
  %89 = load i8*, i8** %7, align 8, !dbg !898
  %90 = icmp ne i8* %89, null, !dbg !900
  br i1 %90, label %91, label %95, !dbg !901

; <label>:91:                                     ; preds = %88
  %92 = load i8*, i8** %7, align 8, !dbg !902
  %93 = load i8*, i8** %9, align 8, !dbg !903
  %94 = call noalias i8* (i8*, ...) @g_strconcat(i8* %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i8* %93, i8* null), !dbg !904
  br label %98, !dbg !905

; <label>:95:                                     ; preds = %88, %84
  %96 = load i8*, i8** %9, align 8, !dbg !907
  %97 = call noalias i8* @g_strdup(i8* %96), !dbg !908
  br label %98, !dbg !909

; <label>:98:                                     ; preds = %95, %91
  %99 = phi i8* [ %94, %91 ], [ %97, %95 ], !dbg !911
  store i8* %99, i8** %13, align 8, !dbg !913
  %100 = load %struct._GSList*, %struct._GSList** %12, align 8, !dbg !914
  store %struct._GSList* %100, %struct._GSList** %11, align 8, !dbg !916
  br label %101, !dbg !917

; <label>:101:                                    ; preds = %111, %98
  %102 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !918
  %103 = icmp ne %struct._GSList* %102, null, !dbg !921
  br i1 %103, label %104, label %115, !dbg !922

; <label>:104:                                    ; preds = %101
  %105 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !923
  %106 = getelementptr inbounds %struct._GSList, %struct._GSList* %105, i32 0, i32 0, !dbg !924
  %107 = load i8*, i8** %106, align 8, !dbg !924
  %108 = bitcast i8* %107 to %struct._LOG_REC*, !dbg !923
  %109 = load i8*, i8** %13, align 8, !dbg !925
  %110 = load i32, i32* %8, align 4, !dbg !926
  call void @log_write_rec(%struct._LOG_REC* %108, i8* %109, i32 %110), !dbg !927
  br label %111, !dbg !927

; <label>:111:                                    ; preds = %104
  %112 = load %struct._GSList*, %struct._GSList** %11, align 8, !dbg !928
  %113 = getelementptr inbounds %struct._GSList, %struct._GSList* %112, i32 0, i32 1, !dbg !930
  %114 = load %struct._GSList*, %struct._GSList** %113, align 8, !dbg !930
  store %struct._GSList* %114, %struct._GSList** %11, align 8, !dbg !931
  br label %101, !dbg !932, !llvm.loop !933

; <label>:115:                                    ; preds = %101
  %116 = load i8*, i8** %13, align 8, !dbg !935
  call void @g_free(i8* %116), !dbg !936
  br label %117, !dbg !937

; <label>:117:                                    ; preds = %115, %81, %78, %75
  %118 = load %struct._GSList*, %struct._GSList** %12, align 8, !dbg !938
  call void @g_slist_free(%struct._GSList* %118), !dbg !939
  br label %119, !dbg !940

; <label>:119:                                    ; preds = %117, %25, %20
  ret void, !dbg !941
}

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #2

declare noalias i8* @g_strconcat(i8*, ...) #2

declare noalias i8* @g_strdup(i8*) #2

declare void @g_slist_free(%struct._GSList*) #2

; Function Attrs: nounwind uwtable
define %struct._LOG_REC* @log_find(i8*) #0 !dbg !943 {
  %2 = alloca %struct._LOG_REC*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct._LOG_REC*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !946, metadata !150), !dbg !947
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !948, metadata !150), !dbg !949
  %6 = load %struct._GSList*, %struct._GSList** @logs, align 8, !dbg !950
  store %struct._GSList* %6, %struct._GSList** %4, align 8, !dbg !952
  br label %7, !dbg !953

; <label>:7:                                      ; preds = %24, %1
  %8 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !954
  %9 = icmp ne %struct._GSList* %8, null, !dbg !957
  br i1 %9, label %10, label %28, !dbg !958

; <label>:10:                                     ; preds = %7
  call void @llvm.dbg.declare(metadata %struct._LOG_REC** %5, metadata !959, metadata !150), !dbg !961
  %11 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !962
  %12 = getelementptr inbounds %struct._GSList, %struct._GSList* %11, i32 0, i32 0, !dbg !963
  %13 = load i8*, i8** %12, align 8, !dbg !963
  %14 = bitcast i8* %13 to %struct._LOG_REC*, !dbg !962
  store %struct._LOG_REC* %14, %struct._LOG_REC** %5, align 8, !dbg !961
  %15 = load %struct._LOG_REC*, %struct._LOG_REC** %5, align 8, !dbg !964
  %16 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %15, i32 0, i32 0, !dbg !966
  %17 = load i8*, i8** %16, align 8, !dbg !966
  %18 = load i8*, i8** %3, align 8, !dbg !967
  %19 = call i32 @g_strcmp0(i8* %17, i8* %18), !dbg !968
  %20 = icmp eq i32 %19, 0, !dbg !969
  br i1 %20, label %21, label %23, !dbg !970

; <label>:21:                                     ; preds = %10
  %22 = load %struct._LOG_REC*, %struct._LOG_REC** %5, align 8, !dbg !971
  store %struct._LOG_REC* %22, %struct._LOG_REC** %2, align 8, !dbg !972
  br label %29, !dbg !972

; <label>:23:                                     ; preds = %10
  br label %24, !dbg !973

; <label>:24:                                     ; preds = %23
  %25 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !974
  %26 = getelementptr inbounds %struct._GSList, %struct._GSList* %25, i32 0, i32 1, !dbg !976
  %27 = load %struct._GSList*, %struct._GSList** %26, align 8, !dbg !976
  store %struct._GSList* %27, %struct._GSList** %4, align 8, !dbg !977
  br label %7, !dbg !978, !llvm.loop !979

; <label>:28:                                     ; preds = %7
  store %struct._LOG_REC* null, %struct._LOG_REC** %2, align 8, !dbg !981
  br label %29, !dbg !981

; <label>:29:                                     ; preds = %28, %21
  %30 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !982
  ret %struct._LOG_REC* %30, !dbg !982
}

; Function Attrs: nounwind uwtable
define %struct._LOG_REC* @log_create_rec(i8*, i32) #0 !dbg !983 {
  %3 = alloca %struct._LOG_REC*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._LOG_REC*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !986, metadata !150), !dbg !987
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !988, metadata !150), !dbg !989
  call void @llvm.dbg.declare(metadata %struct._LOG_REC** %6, metadata !990, metadata !150), !dbg !991
  br label %7, !dbg !992, !llvm.loop !993

; <label>:7:                                      ; preds = %2
  %8 = load i8*, i8** %4, align 8, !dbg !994
  %9 = icmp ne i8* %8, null, !dbg !998
  br i1 %9, label %10, label %11, !dbg !994

; <label>:10:                                     ; preds = %7
  br label %12, !dbg !999

; <label>:11:                                     ; preds = %7
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.log_create_rec, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0)), !dbg !1002
  store %struct._LOG_REC* null, %struct._LOG_REC** %3, align 8, !dbg !1005
  br label %36, !dbg !1005

; <label>:12:                                     ; preds = %10
  br label %13, !dbg !1006

; <label>:13:                                     ; preds = %12
  %14 = load i8*, i8** %4, align 8, !dbg !1008
  %15 = call %struct._LOG_REC* @log_find(i8* %14), !dbg !1009
  store %struct._LOG_REC* %15, %struct._LOG_REC** %6, align 8, !dbg !1010
  %16 = load %struct._LOG_REC*, %struct._LOG_REC** %6, align 8, !dbg !1011
  %17 = icmp eq %struct._LOG_REC* %16, null, !dbg !1013
  br i1 %17, label %18, label %31, !dbg !1014

; <label>:18:                                     ; preds = %13
  %19 = call noalias i8* @g_malloc0_n(i64 1, i64 72), !dbg !1015
  %20 = bitcast i8* %19 to %struct._LOG_REC*, !dbg !1017
  store %struct._LOG_REC* %20, %struct._LOG_REC** %6, align 8, !dbg !1018
  %21 = load i8*, i8** %4, align 8, !dbg !1019
  %22 = call noalias i8* @g_strdup(i8* %21), !dbg !1020
  %23 = load %struct._LOG_REC*, %struct._LOG_REC** %6, align 8, !dbg !1021
  %24 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %23, i32 0, i32 0, !dbg !1022
  store i8* %22, i8** %24, align 8, !dbg !1023
  %25 = load %struct._LOG_REC*, %struct._LOG_REC** %6, align 8, !dbg !1024
  %26 = call i8* @log_filename(%struct._LOG_REC* %25), !dbg !1025
  %27 = load %struct._LOG_REC*, %struct._LOG_REC** %6, align 8, !dbg !1026
  %28 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %27, i32 0, i32 1, !dbg !1027
  store i8* %26, i8** %28, align 8, !dbg !1028
  %29 = load %struct._LOG_REC*, %struct._LOG_REC** %6, align 8, !dbg !1029
  %30 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %29, i32 0, i32 2, !dbg !1030
  store i32 -1, i32* %30, align 8, !dbg !1031
  br label %31, !dbg !1032

; <label>:31:                                     ; preds = %18, %13
  %32 = load i32, i32* %5, align 4, !dbg !1033
  %33 = load %struct._LOG_REC*, %struct._LOG_REC** %6, align 8, !dbg !1034
  %34 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %33, i32 0, i32 4, !dbg !1035
  store i32 %32, i32* %34, align 8, !dbg !1036
  %35 = load %struct._LOG_REC*, %struct._LOG_REC** %6, align 8, !dbg !1037
  store %struct._LOG_REC* %35, %struct._LOG_REC** %3, align 8, !dbg !1038
  br label %36, !dbg !1038

; <label>:36:                                     ; preds = %31, %11
  %37 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !1039
  ret %struct._LOG_REC* %37, !dbg !1039
}

declare noalias i8* @g_malloc0_n(i64, i64) #2

; Function Attrs: nounwind uwtable
define void @log_item_add(%struct._LOG_REC*, i32, i8*, i8*) #0 !dbg !1040 {
  %5 = alloca %struct._LOG_REC*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._LOG_ITEM_REC*, align 8
  store %struct._LOG_REC* %0, %struct._LOG_REC** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._LOG_REC** %5, metadata !1043, metadata !150), !dbg !1044
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !1045, metadata !150), !dbg !1046
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1047, metadata !150), !dbg !1048
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !1049, metadata !150), !dbg !1050
  call void @llvm.dbg.declare(metadata %struct._LOG_ITEM_REC** %9, metadata !1051, metadata !150), !dbg !1052
  br label %10, !dbg !1053, !llvm.loop !1054

; <label>:10:                                     ; preds = %4
  %11 = load %struct._LOG_REC*, %struct._LOG_REC** %5, align 8, !dbg !1055
  %12 = icmp ne %struct._LOG_REC* %11, null, !dbg !1059
  br i1 %12, label %13, label %14, !dbg !1055

; <label>:13:                                     ; preds = %10
  br label %15, !dbg !1060

; <label>:14:                                     ; preds = %10
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.log_item_add, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0)), !dbg !1063
  br label %53, !dbg !1066

; <label>:15:                                     ; preds = %13
  br label %16, !dbg !1067

; <label>:16:                                     ; preds = %15
  br label %17, !dbg !1069, !llvm.loop !1070

; <label>:17:                                     ; preds = %16
  %18 = load i8*, i8** %7, align 8, !dbg !1071
  %19 = icmp ne i8* %18, null, !dbg !1075
  br i1 %19, label %20, label %21, !dbg !1071

; <label>:20:                                     ; preds = %17
  br label %22, !dbg !1076

; <label>:21:                                     ; preds = %17
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.log_item_add, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0)), !dbg !1079
  br label %53, !dbg !1082

; <label>:22:                                     ; preds = %20
  br label %23, !dbg !1083

; <label>:23:                                     ; preds = %22
  %24 = load %struct._LOG_REC*, %struct._LOG_REC** %5, align 8, !dbg !1085
  %25 = load i32, i32* %6, align 4, !dbg !1087
  %26 = load i8*, i8** %7, align 8, !dbg !1088
  %27 = load i8*, i8** %8, align 8, !dbg !1089
  %28 = call %struct._LOG_ITEM_REC* @log_item_find(%struct._LOG_REC* %24, i32 %25, i8* %26, i8* %27), !dbg !1090
  %29 = icmp ne %struct._LOG_ITEM_REC* %28, null, !dbg !1090
  br i1 %29, label %30, label %31, !dbg !1091

; <label>:30:                                     ; preds = %23
  br label %53, !dbg !1092

; <label>:31:                                     ; preds = %23
  %32 = call noalias i8* @g_malloc0_n(i64 1, i64 24), !dbg !1093
  %33 = bitcast i8* %32 to %struct._LOG_ITEM_REC*, !dbg !1094
  store %struct._LOG_ITEM_REC* %33, %struct._LOG_ITEM_REC** %9, align 8, !dbg !1095
  %34 = load i32, i32* %6, align 4, !dbg !1096
  %35 = load %struct._LOG_ITEM_REC*, %struct._LOG_ITEM_REC** %9, align 8, !dbg !1097
  %36 = getelementptr inbounds %struct._LOG_ITEM_REC, %struct._LOG_ITEM_REC* %35, i32 0, i32 0, !dbg !1098
  store i32 %34, i32* %36, align 8, !dbg !1099
  %37 = load i8*, i8** %7, align 8, !dbg !1100
  %38 = call noalias i8* @g_strdup(i8* %37), !dbg !1101
  %39 = load %struct._LOG_ITEM_REC*, %struct._LOG_ITEM_REC** %9, align 8, !dbg !1102
  %40 = getelementptr inbounds %struct._LOG_ITEM_REC, %struct._LOG_ITEM_REC* %39, i32 0, i32 1, !dbg !1103
  store i8* %38, i8** %40, align 8, !dbg !1104
  %41 = load i8*, i8** %8, align 8, !dbg !1105
  %42 = call noalias i8* @g_strdup(i8* %41), !dbg !1106
  %43 = load %struct._LOG_ITEM_REC*, %struct._LOG_ITEM_REC** %9, align 8, !dbg !1107
  %44 = getelementptr inbounds %struct._LOG_ITEM_REC, %struct._LOG_ITEM_REC* %43, i32 0, i32 2, !dbg !1108
  store i8* %42, i8** %44, align 8, !dbg !1109
  %45 = load %struct._LOG_REC*, %struct._LOG_REC** %5, align 8, !dbg !1110
  %46 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %45, i32 0, i32 5, !dbg !1111
  %47 = load %struct._GSList*, %struct._GSList** %46, align 8, !dbg !1111
  %48 = load %struct._LOG_ITEM_REC*, %struct._LOG_ITEM_REC** %9, align 8, !dbg !1112
  %49 = bitcast %struct._LOG_ITEM_REC* %48 to i8*, !dbg !1112
  %50 = call %struct._GSList* @g_slist_append(%struct._GSList* %47, i8* %49), !dbg !1113
  %51 = load %struct._LOG_REC*, %struct._LOG_REC** %5, align 8, !dbg !1114
  %52 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %51, i32 0, i32 5, !dbg !1115
  store %struct._GSList* %50, %struct._GSList** %52, align 8, !dbg !1116
  br label %53, !dbg !1117

; <label>:53:                                     ; preds = %31, %30, %21, %14
  ret void, !dbg !1118
}

; Function Attrs: nounwind uwtable
define void @log_update(%struct._LOG_REC*) #0 !dbg !1120 {
  %2 = alloca %struct._LOG_REC*, align 8
  store %struct._LOG_REC* %0, %struct._LOG_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._LOG_REC** %2, metadata !1121, metadata !150), !dbg !1122
  br label %3, !dbg !1123, !llvm.loop !1124

; <label>:3:                                      ; preds = %1
  %4 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !1125
  %5 = icmp ne %struct._LOG_REC* %4, null, !dbg !1129
  br i1 %5, label %6, label %7, !dbg !1125

; <label>:6:                                      ; preds = %3
  br label %8, !dbg !1130

; <label>:7:                                      ; preds = %3
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__func__.log_update, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0)), !dbg !1133
  br label %26, !dbg !1136

; <label>:8:                                      ; preds = %6
  br label %9, !dbg !1137

; <label>:9:                                      ; preds = %8
  %10 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !1139
  %11 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %10, i32 0, i32 0, !dbg !1141
  %12 = load i8*, i8** %11, align 8, !dbg !1141
  %13 = call %struct._LOG_REC* @log_find(i8* %12), !dbg !1142
  %14 = icmp eq %struct._LOG_REC* %13, null, !dbg !1143
  br i1 %14, label %15, label %22, !dbg !1144

; <label>:15:                                     ; preds = %9
  %16 = load %struct._GSList*, %struct._GSList** @logs, align 8, !dbg !1145
  %17 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !1147
  %18 = bitcast %struct._LOG_REC* %17 to i8*, !dbg !1147
  %19 = call %struct._GSList* @g_slist_append(%struct._GSList* %16, i8* %18), !dbg !1148
  store %struct._GSList* %19, %struct._GSList** @logs, align 8, !dbg !1149
  %20 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !1150
  %21 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %20, i32 0, i32 2, !dbg !1151
  store i32 -1, i32* %21, align 8, !dbg !1152
  br label %22, !dbg !1153

; <label>:22:                                     ; preds = %15, %9
  %23 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !1154
  call void @log_update_config(%struct._LOG_REC* %23), !dbg !1155
  %24 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !1156
  %25 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct._LOG_REC* %24), !dbg !1157
  br label %26, !dbg !1158

; <label>:26:                                     ; preds = %22, %7
  ret void, !dbg !1159
}

; Function Attrs: nounwind uwtable
define internal void @log_update_config(%struct._LOG_REC*) #0 !dbg !1161 {
  %2 = alloca %struct._LOG_REC*, align 8
  %3 = alloca %struct._CONFIG_NODE*, align 8
  %4 = alloca i8*, align 8
  store %struct._LOG_REC* %0, %struct._LOG_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._LOG_REC** %2, metadata !1162, metadata !150), !dbg !1163
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %3, metadata !1164, metadata !150), !dbg !1172
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1173, metadata !150), !dbg !1174
  %5 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !1175
  %6 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %5, i32 0, i32 8, !dbg !1177
  %7 = load i8, i8* %6, align 8, !dbg !1177
  %8 = lshr i8 %7, 2, !dbg !1177
  %9 = and i8 %8, 1, !dbg !1177
  %10 = zext i8 %9 to i32, !dbg !1177
  %11 = icmp ne i32 %10, 0, !dbg !1175
  br i1 %11, label %12, label %13, !dbg !1178

; <label>:12:                                     ; preds = %1
  br label %56, !dbg !1179

; <label>:13:                                     ; preds = %1
  %14 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1180
  %15 = call %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i32 1), !dbg !1181
  store %struct._CONFIG_NODE* %15, %struct._CONFIG_NODE** %3, align 8, !dbg !1182
  %16 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1183
  %17 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1184
  %18 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !1185
  %19 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %18, i32 0, i32 0, !dbg !1186
  %20 = load i8*, i8** %19, align 8, !dbg !1186
  %21 = call %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC* %16, %struct._CONFIG_NODE* %17, i8* %20, i32 2), !dbg !1187
  store %struct._CONFIG_NODE* %21, %struct._CONFIG_NODE** %3, align 8, !dbg !1188
  %22 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !1189
  %23 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %22, i32 0, i32 8, !dbg !1191
  %24 = load i8, i8* %23, align 8, !dbg !1191
  %25 = and i8 %24, 1, !dbg !1191
  %26 = zext i8 %25 to i32, !dbg !1191
  %27 = icmp ne i32 %26, 0, !dbg !1189
  br i1 %27, label %28, label %31, !dbg !1192

; <label>:28:                                     ; preds = %13
  %29 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1193
  %30 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1194
  call void @config_node_set_bool(%struct._CONFIG_REC* %29, %struct._CONFIG_NODE* %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i32 1), !dbg !1195
  br label %34, !dbg !1195

; <label>:31:                                     ; preds = %13
  %32 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1196
  %33 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1197
  call void @config_node_set_str(%struct._CONFIG_REC* %32, %struct._CONFIG_NODE* %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i8* null), !dbg !1198
  br label %34

; <label>:34:                                     ; preds = %31, %28
  %35 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !1199
  %36 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %35, i32 0, i32 4, !dbg !1200
  %37 = load i32, i32* %36, align 8, !dbg !1200
  %38 = call i8* @bits2level(i32 %37), !dbg !1201
  store i8* %38, i8** %4, align 8, !dbg !1202
  %39 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1203
  %40 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1204
  %41 = load i8*, i8** %4, align 8, !dbg !1205
  call void @config_node_set_str(%struct._CONFIG_REC* %39, %struct._CONFIG_NODE* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i8* %41), !dbg !1206
  %42 = load i8*, i8** %4, align 8, !dbg !1207
  call void @g_free(i8* %42), !dbg !1208
  %43 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1209
  %44 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1210
  call void @config_node_set_str(%struct._CONFIG_REC* %43, %struct._CONFIG_NODE* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i8* null), !dbg !1211
  %45 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !1212
  %46 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %45, i32 0, i32 5, !dbg !1214
  %47 = load %struct._GSList*, %struct._GSList** %46, align 8, !dbg !1214
  %48 = icmp ne %struct._GSList* %47, null, !dbg !1215
  br i1 %48, label %49, label %52, !dbg !1216

; <label>:49:                                     ; preds = %34
  %50 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !1217
  %51 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1218
  call void @log_items_update_config(%struct._LOG_REC* %50, %struct._CONFIG_NODE* %51), !dbg !1219
  br label %52, !dbg !1219

; <label>:52:                                     ; preds = %49, %34
  %53 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !1220
  %54 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1221
  %55 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i32 0, i32 0), i32 2, %struct._LOG_REC* %53, %struct._CONFIG_NODE* %54), !dbg !1222
  br label %56, !dbg !1223

; <label>:56:                                     ; preds = %52, %12
  ret void, !dbg !1224
}

; Function Attrs: nounwind uwtable
define void @log_item_destroy(%struct._LOG_REC*, %struct._LOG_ITEM_REC*) #0 !dbg !1226 {
  %3 = alloca %struct._LOG_REC*, align 8
  %4 = alloca %struct._LOG_ITEM_REC*, align 8
  store %struct._LOG_REC* %0, %struct._LOG_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._LOG_REC** %3, metadata !1229, metadata !150), !dbg !1230
  store %struct._LOG_ITEM_REC* %1, %struct._LOG_ITEM_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._LOG_ITEM_REC** %4, metadata !1231, metadata !150), !dbg !1232
  %5 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !1233
  %6 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %5, i32 0, i32 5, !dbg !1234
  %7 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1234
  %8 = load %struct._LOG_ITEM_REC*, %struct._LOG_ITEM_REC** %4, align 8, !dbg !1235
  %9 = bitcast %struct._LOG_ITEM_REC* %8 to i8*, !dbg !1235
  %10 = call %struct._GSList* @g_slist_remove(%struct._GSList* %7, i8* %9), !dbg !1236
  %11 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !1237
  %12 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %11, i32 0, i32 5, !dbg !1238
  store %struct._GSList* %10, %struct._GSList** %12, align 8, !dbg !1239
  %13 = load %struct._LOG_ITEM_REC*, %struct._LOG_ITEM_REC** %4, align 8, !dbg !1240
  %14 = getelementptr inbounds %struct._LOG_ITEM_REC, %struct._LOG_ITEM_REC* %13, i32 0, i32 1, !dbg !1241
  %15 = load i8*, i8** %14, align 8, !dbg !1241
  call void @g_free(i8* %15), !dbg !1242
  %16 = load %struct._LOG_ITEM_REC*, %struct._LOG_ITEM_REC** %4, align 8, !dbg !1243
  %17 = getelementptr inbounds %struct._LOG_ITEM_REC, %struct._LOG_ITEM_REC* %16, i32 0, i32 2, !dbg !1244
  %18 = load i8*, i8** %17, align 8, !dbg !1244
  call void @g_free(i8* %18), !dbg !1245
  %19 = load %struct._LOG_ITEM_REC*, %struct._LOG_ITEM_REC** %4, align 8, !dbg !1246
  %20 = bitcast %struct._LOG_ITEM_REC* %19 to i8*, !dbg !1246
  call void @g_free(i8* %20), !dbg !1247
  ret void, !dbg !1248
}

declare %struct._GSList* @g_slist_remove(%struct._GSList*, i8*) #2

; Function Attrs: nounwind uwtable
define void @log_close(%struct._LOG_REC*) #0 !dbg !1249 {
  %2 = alloca %struct._LOG_REC*, align 8
  store %struct._LOG_REC* %0, %struct._LOG_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._LOG_REC** %2, metadata !1250, metadata !150), !dbg !1251
  br label %3, !dbg !1252, !llvm.loop !1253

; <label>:3:                                      ; preds = %1
  %4 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !1254
  %5 = icmp ne %struct._LOG_REC* %4, null, !dbg !1258
  br i1 %5, label %6, label %7, !dbg !1254

; <label>:6:                                      ; preds = %3
  br label %8, !dbg !1259

; <label>:7:                                      ; preds = %3
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.log_close, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0)), !dbg !1262
  br label %12, !dbg !1265

; <label>:8:                                      ; preds = %6
  br label %9, !dbg !1266

; <label>:9:                                      ; preds = %8
  %10 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !1268
  call void @log_remove_config(%struct._LOG_REC* %10), !dbg !1269
  %11 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !1270
  call void @log_destroy(%struct._LOG_REC* %11), !dbg !1271
  br label %12, !dbg !1272

; <label>:12:                                     ; preds = %9, %7
  ret void, !dbg !1273
}

; Function Attrs: nounwind uwtable
define internal void @log_remove_config(%struct._LOG_REC*) #0 !dbg !1275 {
  %2 = alloca %struct._LOG_REC*, align 8
  store %struct._LOG_REC* %0, %struct._LOG_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._LOG_REC** %2, metadata !1276, metadata !150), !dbg !1277
  %3 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1278
  %4 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !1279
  %5 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %4, i32 0, i32 0, !dbg !1280
  %6 = load i8*, i8** %5, align 8, !dbg !1280
  %7 = call i32 @config_set_str(%struct._CONFIG_REC* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i8* %6, i8* null), !dbg !1281
  ret void, !dbg !1282
}

; Function Attrs: nounwind uwtable
define internal void @log_destroy(%struct._LOG_REC*) #0 !dbg !1283 {
  %2 = alloca %struct._LOG_REC*, align 8
  store %struct._LOG_REC* %0, %struct._LOG_REC** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._LOG_REC** %2, metadata !1284, metadata !150), !dbg !1285
  br label %3, !dbg !1286, !llvm.loop !1287

; <label>:3:                                      ; preds = %1
  %4 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !1288
  %5 = icmp ne %struct._LOG_REC* %4, null, !dbg !1292
  br i1 %5, label %6, label %7, !dbg !1288

; <label>:6:                                      ; preds = %3
  br label %8, !dbg !1293

; <label>:7:                                      ; preds = %3
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.log_destroy, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0)), !dbg !1296
  br label %45, !dbg !1299

; <label>:8:                                      ; preds = %6
  br label %9, !dbg !1300

; <label>:9:                                      ; preds = %8
  %10 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !1302
  %11 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %10, i32 0, i32 2, !dbg !1304
  %12 = load i32, i32* %11, align 8, !dbg !1304
  %13 = icmp ne i32 %12, -1, !dbg !1305
  br i1 %13, label %14, label %16, !dbg !1306

; <label>:14:                                     ; preds = %9
  %15 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !1307
  call void @log_stop_logging(%struct._LOG_REC* %15), !dbg !1308
  br label %16, !dbg !1308

; <label>:16:                                     ; preds = %14, %9
  %17 = load %struct._GSList*, %struct._GSList** @logs, align 8, !dbg !1309
  %18 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !1310
  %19 = bitcast %struct._LOG_REC* %18 to i8*, !dbg !1310
  %20 = call %struct._GSList* @g_slist_remove(%struct._GSList* %17, i8* %19), !dbg !1311
  store %struct._GSList* %20, %struct._GSList** @logs, align 8, !dbg !1312
  %21 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !1313
  %22 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i32 0, i32 0), i32 1, %struct._LOG_REC* %21), !dbg !1314
  br label %23, !dbg !1315

; <label>:23:                                     ; preds = %28, %16
  %24 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !1316
  %25 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %24, i32 0, i32 5, !dbg !1318
  %26 = load %struct._GSList*, %struct._GSList** %25, align 8, !dbg !1318
  %27 = icmp ne %struct._GSList* %26, null, !dbg !1319
  br i1 %27, label %28, label %36, !dbg !1320

; <label>:28:                                     ; preds = %23
  %29 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !1321
  %30 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !1322
  %31 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %30, i32 0, i32 5, !dbg !1323
  %32 = load %struct._GSList*, %struct._GSList** %31, align 8, !dbg !1323
  %33 = getelementptr inbounds %struct._GSList, %struct._GSList* %32, i32 0, i32 0, !dbg !1324
  %34 = load i8*, i8** %33, align 8, !dbg !1324
  %35 = bitcast i8* %34 to %struct._LOG_ITEM_REC*, !dbg !1322
  call void @log_item_destroy(%struct._LOG_REC* %29, %struct._LOG_ITEM_REC* %35), !dbg !1325
  br label %23, !dbg !1326, !llvm.loop !1328

; <label>:36:                                     ; preds = %23
  %37 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !1329
  %38 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %37, i32 0, i32 0, !dbg !1330
  %39 = load i8*, i8** %38, align 8, !dbg !1330
  call void @g_free(i8* %39), !dbg !1331
  %40 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !1332
  %41 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %40, i32 0, i32 1, !dbg !1333
  %42 = load i8*, i8** %41, align 8, !dbg !1333
  call void @g_free(i8* %42), !dbg !1334
  %43 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !1335
  %44 = bitcast %struct._LOG_REC* %43 to i8*, !dbg !1335
  call void @g_free(i8* %44), !dbg !1336
  br label %45, !dbg !1337

; <label>:45:                                     ; preds = %36, %7
  ret void, !dbg !1338
}

; Function Attrs: nounwind uwtable
define void @log_init() #0 !dbg !1339 {
  %1 = call i32 @g_timeout_add(i32 60000, i32 (i8*)* bitcast (i32 ()* @sig_rotate_check to i32 (i8*)*), i8* null), !dbg !1342
  store i32 %1, i32* @rotate_tag, align 4, !dbg !1343
  store %struct._GSList* null, %struct._GSList** @logs, align 8, !dbg !1344
  call void @settings_add_int_module(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0), i32 600), !dbg !1345
  call void @settings_add_str_module(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0)), !dbg !1346
  call void @settings_add_str_module(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i32 0, i32 0)), !dbg !1347
  call void @settings_add_str_module(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.21, i32 0, i32 0)), !dbg !1348
  call void @settings_add_str_module(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i32 0, i32 0)), !dbg !1349
  call void @read_settings(), !dbg !1350
  call void @signal_add_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1351
  call void @signal_add_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @log_read_config to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1352
  call void @signal_add_full(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @log_read_config to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1353
  ret void, !dbg !1354
}

declare i32 @g_timeout_add(i32, i32 (i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @sig_rotate_check() #0 !dbg !139 {
  %1 = alloca %struct.tm, align 8
  %2 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata %struct.tm* %1, metadata !1355, metadata !150), !dbg !1356
  call void @llvm.dbg.declare(metadata i64* %2, metadata !1357, metadata !150), !dbg !1358
  %3 = call i64 @time(i64* null) #7, !dbg !1359
  store i64 %3, i64* %2, align 8, !dbg !1360
  %4 = bitcast %struct.tm* %1 to i8*, !dbg !1361
  %5 = call %struct.tm* @localtime(i64* %2) #7, !dbg !1362
  %6 = bitcast %struct.tm* %5 to i8*, !dbg !1361
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %4, i8* %6, i64 56, i32 8, i1 false), !dbg !1363
  %7 = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 2, !dbg !1365
  %8 = load i32, i32* %7, align 8, !dbg !1365
  %9 = load i32, i32* @sig_rotate_check.last_hour, align 4, !dbg !1367
  %10 = icmp ne i32 %8, %9, !dbg !1368
  br i1 %10, label %11, label %15, !dbg !1369

; <label>:11:                                     ; preds = %0
  %12 = getelementptr inbounds %struct.tm, %struct.tm* %1, i32 0, i32 2, !dbg !1370
  %13 = load i32, i32* %12, align 8, !dbg !1370
  store i32 %13, i32* @sig_rotate_check.last_hour, align 4, !dbg !1372
  %14 = load %struct._GSList*, %struct._GSList** @logs, align 8, !dbg !1373
  call void @g_slist_foreach(%struct._GSList* %14, void (i8*, i8*)* bitcast (void (%struct._LOG_REC*)* @log_rotate_check to void (i8*, i8*)*), i8* null), !dbg !1374
  br label %15, !dbg !1375

; <label>:15:                                     ; preds = %11, %0
  ret i32 1, !dbg !1376
}

declare void @settings_add_int_module(i8*, i8*, i8*, i32) #2

declare void @settings_add_str_module(i8*, i8*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @read_settings() #0 !dbg !1377 {
  %1 = load i8*, i8** @log_timestamp, align 8, !dbg !1378
  call void @g_free(i8* %1), !dbg !1379
  %2 = call i8* @settings_get_str(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0)), !dbg !1380
  %3 = call noalias i8* @g_strdup(i8* %2), !dbg !1381
  store i8* %3, i8** @log_timestamp, align 8, !dbg !1383
  %4 = call i32 @settings_get_int(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i32 0, i32 0)), !dbg !1384
  %5 = call i32 @octal2dec(i32 %4), !dbg !1385
  store i32 %5, i32* @log_file_create_mode, align 4, !dbg !1386
  %6 = load i32, i32* @log_file_create_mode, align 4, !dbg !1387
  store i32 %6, i32* @log_dir_create_mode, align 4, !dbg !1388
  %7 = load i32, i32* @log_file_create_mode, align 4, !dbg !1389
  %8 = and i32 %7, 256, !dbg !1391
  %9 = icmp ne i32 %8, 0, !dbg !1391
  br i1 %9, label %10, label %13, !dbg !1392

; <label>:10:                                     ; preds = %0
  %11 = load i32, i32* @log_dir_create_mode, align 4, !dbg !1393
  %12 = or i32 %11, 64, !dbg !1393
  store i32 %12, i32* @log_dir_create_mode, align 4, !dbg !1393
  br label %13, !dbg !1395

; <label>:13:                                     ; preds = %10, %0
  %14 = load i32, i32* @log_file_create_mode, align 4, !dbg !1396
  %15 = and i32 %14, 32, !dbg !1398
  %16 = icmp ne i32 %15, 0, !dbg !1398
  br i1 %16, label %17, label %20, !dbg !1399

; <label>:17:                                     ; preds = %13
  %18 = load i32, i32* @log_dir_create_mode, align 4, !dbg !1400
  %19 = or i32 %18, 8, !dbg !1400
  store i32 %19, i32* @log_dir_create_mode, align 4, !dbg !1400
  br label %20, !dbg !1402

; <label>:20:                                     ; preds = %17, %13
  %21 = load i32, i32* @log_file_create_mode, align 4, !dbg !1403
  %22 = and i32 %21, 4, !dbg !1405
  %23 = icmp ne i32 %22, 0, !dbg !1405
  br i1 %23, label %24, label %27, !dbg !1406

; <label>:24:                                     ; preds = %20
  %25 = load i32, i32* @log_dir_create_mode, align 4, !dbg !1407
  %26 = or i32 %25, 1, !dbg !1407
  store i32 %26, i32* @log_dir_create_mode, align 4, !dbg !1407
  br label %27, !dbg !1409

; <label>:27:                                     ; preds = %24, %20
  ret void, !dbg !1410
}

declare void @signal_add_full(i8*, i32, i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @log_read_config() #0 !dbg !1411 {
  %1 = alloca %struct._CONFIG_NODE*, align 8
  %2 = alloca %struct._LOG_REC*, align 8
  %3 = alloca %struct._GSList*, align 8
  %4 = alloca %struct._GSList*, align 8
  %5 = alloca %struct._GSList*, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %1, metadata !1412, metadata !150), !dbg !1413
  call void @llvm.dbg.declare(metadata %struct._LOG_REC** %2, metadata !1414, metadata !150), !dbg !1415
  call void @llvm.dbg.declare(metadata %struct._GSList** %3, metadata !1416, metadata !150), !dbg !1417
  call void @llvm.dbg.declare(metadata %struct._GSList** %4, metadata !1418, metadata !150), !dbg !1419
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !1420, metadata !150), !dbg !1421
  store %struct._GSList* null, %struct._GSList** %5, align 8, !dbg !1422
  %6 = load %struct._GSList*, %struct._GSList** @logs, align 8, !dbg !1423
  store %struct._GSList* %6, %struct._GSList** %3, align 8, !dbg !1425
  br label %7, !dbg !1426

; <label>:7:                                      ; preds = %40, %0
  %8 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1427
  %9 = icmp ne %struct._GSList* %8, null, !dbg !1430
  br i1 %9, label %10, label %42, !dbg !1431

; <label>:10:                                     ; preds = %7
  %11 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1432
  %12 = getelementptr inbounds %struct._GSList, %struct._GSList* %11, i32 0, i32 0, !dbg !1434
  %13 = load i8*, i8** %12, align 8, !dbg !1434
  %14 = bitcast i8* %13 to %struct._LOG_REC*, !dbg !1432
  store %struct._LOG_REC* %14, %struct._LOG_REC** %2, align 8, !dbg !1435
  %15 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1436
  %16 = getelementptr inbounds %struct._GSList, %struct._GSList* %15, i32 0, i32 1, !dbg !1437
  %17 = load %struct._GSList*, %struct._GSList** %16, align 8, !dbg !1437
  store %struct._GSList* %17, %struct._GSList** %4, align 8, !dbg !1438
  %18 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !1439
  %19 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %18, i32 0, i32 8, !dbg !1441
  %20 = load i8, i8* %19, align 8, !dbg !1441
  %21 = lshr i8 %20, 2, !dbg !1441
  %22 = and i8 %21, 1, !dbg !1441
  %23 = zext i8 %22 to i32, !dbg !1441
  %24 = icmp ne i32 %23, 0, !dbg !1439
  br i1 %24, label %25, label %26, !dbg !1442

; <label>:25:                                     ; preds = %10
  br label %40, !dbg !1443

; <label>:26:                                     ; preds = %10
  %27 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !1444
  %28 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %27, i32 0, i32 2, !dbg !1446
  %29 = load i32, i32* %28, align 8, !dbg !1446
  %30 = icmp ne i32 %29, -1, !dbg !1447
  br i1 %30, label %31, label %38, !dbg !1448

; <label>:31:                                     ; preds = %26
  %32 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1449
  %33 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !1450
  %34 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %33, i32 0, i32 0, !dbg !1451
  %35 = load i8*, i8** %34, align 8, !dbg !1451
  %36 = call noalias i8* @g_strdup(i8* %35), !dbg !1452
  %37 = call %struct._GSList* @g_slist_append(%struct._GSList* %32, i8* %36), !dbg !1453
  store %struct._GSList* %37, %struct._GSList** %5, align 8, !dbg !1455
  br label %38, !dbg !1456

; <label>:38:                                     ; preds = %31, %26
  %39 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !1457
  call void @log_destroy(%struct._LOG_REC* %39), !dbg !1458
  br label %40, !dbg !1459

; <label>:40:                                     ; preds = %38, %25
  %41 = load %struct._GSList*, %struct._GSList** %4, align 8, !dbg !1460
  store %struct._GSList* %41, %struct._GSList** %3, align 8, !dbg !1462
  br label %7, !dbg !1463, !llvm.loop !1464

; <label>:42:                                     ; preds = %7
  %43 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1466
  %44 = call %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i32 0), !dbg !1467
  store %struct._CONFIG_NODE* %44, %struct._CONFIG_NODE** %1, align 8, !dbg !1468
  %45 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %1, align 8, !dbg !1469
  %46 = icmp eq %struct._CONFIG_NODE* %45, null, !dbg !1471
  br i1 %46, label %47, label %48, !dbg !1472

; <label>:47:                                     ; preds = %42
  br label %132, !dbg !1473

; <label>:48:                                     ; preds = %42
  %49 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %1, align 8, !dbg !1475
  %50 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %49, i32 0, i32 2, !dbg !1476
  %51 = load i8*, i8** %50, align 8, !dbg !1476
  %52 = bitcast i8* %51 to %struct._GSList*, !dbg !1475
  %53 = call %struct._GSList* @config_node_first(%struct._GSList* %52), !dbg !1477
  store %struct._GSList* %53, %struct._GSList** %3, align 8, !dbg !1478
  br label %54, !dbg !1479

; <label>:54:                                     ; preds = %126, %48
  %55 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1480
  %56 = icmp ne %struct._GSList* %55, null, !dbg !1484
  br i1 %56, label %57, label %129, !dbg !1485

; <label>:57:                                     ; preds = %54
  %58 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1486
  %59 = getelementptr inbounds %struct._GSList, %struct._GSList* %58, i32 0, i32 0, !dbg !1488
  %60 = load i8*, i8** %59, align 8, !dbg !1488
  %61 = bitcast i8* %60 to %struct._CONFIG_NODE*, !dbg !1486
  store %struct._CONFIG_NODE* %61, %struct._CONFIG_NODE** %1, align 8, !dbg !1489
  %62 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %1, align 8, !dbg !1490
  %63 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %62, i32 0, i32 0, !dbg !1492
  %64 = load i32, i32* %63, align 8, !dbg !1492
  %65 = icmp ne i32 %64, 2, !dbg !1493
  br i1 %65, label %66, label %67, !dbg !1494

; <label>:66:                                     ; preds = %57
  br label %126, !dbg !1495

; <label>:67:                                     ; preds = %57
  %68 = call noalias i8* @g_malloc0_n(i64 1, i64 72), !dbg !1496
  %69 = bitcast i8* %68 to %struct._LOG_REC*, !dbg !1497
  store %struct._LOG_REC* %69, %struct._LOG_REC** %2, align 8, !dbg !1498
  %70 = load %struct._GSList*, %struct._GSList** @logs, align 8, !dbg !1499
  %71 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !1500
  %72 = bitcast %struct._LOG_REC* %71 to i8*, !dbg !1500
  %73 = call %struct._GSList* @g_slist_append(%struct._GSList* %70, i8* %72), !dbg !1501
  store %struct._GSList* %73, %struct._GSList** @logs, align 8, !dbg !1502
  %74 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !1503
  %75 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %74, i32 0, i32 2, !dbg !1504
  store i32 -1, i32* %75, align 8, !dbg !1505
  %76 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %1, align 8, !dbg !1506
  %77 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %76, i32 0, i32 1, !dbg !1507
  %78 = load i8*, i8** %77, align 8, !dbg !1507
  %79 = call noalias i8* @g_strdup(i8* %78), !dbg !1508
  %80 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !1509
  %81 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %80, i32 0, i32 0, !dbg !1510
  store i8* %79, i8** %81, align 8, !dbg !1511
  %82 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %1, align 8, !dbg !1512
  %83 = call i32 @config_node_get_bool(%struct._CONFIG_NODE* %82, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i32 0), !dbg !1513
  %84 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !1514
  %85 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %84, i32 0, i32 8, !dbg !1515
  %86 = trunc i32 %83 to i8, !dbg !1516
  %87 = load i8, i8* %85, align 8, !dbg !1516
  %88 = and i8 %86, 1, !dbg !1516
  %89 = and i8 %87, -2, !dbg !1516
  %90 = or i8 %89, %88, !dbg !1516
  store i8 %90, i8* %85, align 8, !dbg !1516
  %91 = zext i8 %88 to i32, !dbg !1516
  %92 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %1, align 8, !dbg !1517
  %93 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %92, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i8* null), !dbg !1518
  %94 = call i32 @level2bits(i8* %93, i32* null), !dbg !1519
  %95 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !1521
  %96 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %95, i32 0, i32 4, !dbg !1522
  store i32 %94, i32* %96, align 8, !dbg !1523
  %97 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !1524
  %98 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %1, align 8, !dbg !1525
  %99 = call i32 (i8*, i32, ...) @signal_emit(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.41, i32 0, i32 0), i32 2, %struct._LOG_REC* %97, %struct._CONFIG_NODE* %98), !dbg !1526
  %100 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1527
  %101 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %1, align 8, !dbg !1528
  %102 = call %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC* %100, %struct._CONFIG_NODE* %101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i32 -1), !dbg !1529
  store %struct._CONFIG_NODE* %102, %struct._CONFIG_NODE** %1, align 8, !dbg !1530
  %103 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %1, align 8, !dbg !1531
  %104 = icmp ne %struct._CONFIG_NODE* %103, null, !dbg !1533
  br i1 %104, label %105, label %108, !dbg !1534

; <label>:105:                                    ; preds = %67
  %106 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %1, align 8, !dbg !1535
  %107 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !1536
  call void @log_items_read_config(%struct._CONFIG_NODE* %106, %struct._LOG_REC* %107), !dbg !1537
  br label %108, !dbg !1537

; <label>:108:                                    ; preds = %105, %67
  %109 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !1538
  %110 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %109, i32 0, i32 8, !dbg !1540
  %111 = load i8, i8* %110, align 8, !dbg !1540
  %112 = and i8 %111, 1, !dbg !1540
  %113 = zext i8 %112 to i32, !dbg !1540
  %114 = icmp ne i32 %113, 0, !dbg !1538
  br i1 %114, label %122, label %115, !dbg !1541

; <label>:115:                                    ; preds = %108
  %116 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1542
  %117 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !1544
  %118 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %117, i32 0, i32 0, !dbg !1545
  %119 = load i8*, i8** %118, align 8, !dbg !1545
  %120 = call %struct._GSList* @gslist_find_string(%struct._GSList* %116, i8* %119), !dbg !1546
  %121 = icmp ne %struct._GSList* %120, null, !dbg !1546
  br i1 %121, label %122, label %125, !dbg !1547

; <label>:122:                                    ; preds = %115, %108
  %123 = load %struct._LOG_REC*, %struct._LOG_REC** %2, align 8, !dbg !1548
  %124 = call i32 @log_start_logging(%struct._LOG_REC* %123), !dbg !1549
  br label %125, !dbg !1549

; <label>:125:                                    ; preds = %122, %115
  br label %126, !dbg !1550

; <label>:126:                                    ; preds = %125, %66
  %127 = load %struct._GSList*, %struct._GSList** %3, align 8, !dbg !1551
  %128 = call %struct._GSList* @config_node_next(%struct._GSList* %127), !dbg !1553
  store %struct._GSList* %128, %struct._GSList** %3, align 8, !dbg !1554
  br label %54, !dbg !1555, !llvm.loop !1556

; <label>:129:                                    ; preds = %54
  %130 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1557
  call void @g_slist_foreach(%struct._GSList* %130, void (i8*, i8*)* bitcast (void (i8*)* @g_free to void (i8*, i8*)*), i8* null), !dbg !1558
  %131 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1559
  call void @g_slist_free(%struct._GSList* %131), !dbg !1560
  br label %132, !dbg !1561

; <label>:132:                                    ; preds = %129, %47
  ret void, !dbg !1562
}

; Function Attrs: nounwind uwtable
define void @log_deinit() #0 !dbg !1564 {
  %1 = load i32, i32* @rotate_tag, align 4, !dbg !1565
  %2 = call i32 @g_source_remove(i32 %1), !dbg !1566
  br label %3, !dbg !1567

; <label>:3:                                      ; preds = %6, %0
  %4 = load %struct._GSList*, %struct._GSList** @logs, align 8, !dbg !1568
  %5 = icmp ne %struct._GSList* %4, null, !dbg !1570
  br i1 %5, label %6, label %11, !dbg !1571

; <label>:6:                                      ; preds = %3
  %7 = load %struct._GSList*, %struct._GSList** @logs, align 8, !dbg !1572
  %8 = getelementptr inbounds %struct._GSList, %struct._GSList* %7, i32 0, i32 0, !dbg !1573
  %9 = load i8*, i8** %8, align 8, !dbg !1573
  %10 = bitcast i8* %9 to %struct._LOG_REC*, !dbg !1572
  call void @log_close(%struct._LOG_REC* %10), !dbg !1574
  br label %3, !dbg !1575, !llvm.loop !1577

; <label>:11:                                     ; preds = %3
  %12 = load i8*, i8** @log_timestamp, align 8, !dbg !1578
  call void @g_free(i8* %12), !dbg !1579
  call void @signal_remove_full(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @read_settings to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1580
  call void @signal_remove_full(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @log_read_config to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1581
  call void @signal_remove_full(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i32 0, i32 0), void (i8*, i8*, i8*, i8*, i8*, i8*)* bitcast (void ()* @log_read_config to void (i8*, i8*, i8*, i8*, i8*, i8*)*), i8* null), !dbg !1582
  ret void, !dbg !1583
}

declare i32 @g_source_remove(i32) #2

declare void @signal_remove_full(i8*, void (i8*, i8*, i8*, i8*, i8*, i8*)*, i8*) #2

declare i8* @convert_home(i8*) #2

; Function Attrs: nounwind
declare i64 @strftime(i8*, i64, i8*, %struct.tm*) #5

declare void @g_log(i8*, i32, i8*, ...) #2

declare %struct._CONFIG_NODE* @config_node_traverse(%struct._CONFIG_REC*, i8*, i32) #2

declare %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i32) #2

declare void @config_node_set_bool(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i32) #2

declare void @config_node_set_str(%struct._CONFIG_REC*, %struct._CONFIG_NODE*, i8*, i8*) #2

declare i8* @bits2level(i32) #2

; Function Attrs: nounwind uwtable
define internal void @log_items_update_config(%struct._LOG_REC*, %struct._CONFIG_NODE*) #0 !dbg !1584 {
  %3 = alloca %struct._LOG_REC*, align 8
  %4 = alloca %struct._CONFIG_NODE*, align 8
  %5 = alloca %struct._GSList*, align 8
  %6 = alloca %struct._CONFIG_NODE*, align 8
  %7 = alloca %struct._LOG_ITEM_REC*, align 8
  store %struct._LOG_REC* %0, %struct._LOG_REC** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._LOG_REC** %3, metadata !1587, metadata !150), !dbg !1588
  store %struct._CONFIG_NODE* %1, %struct._CONFIG_NODE** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %4, metadata !1589, metadata !150), !dbg !1590
  call void @llvm.dbg.declare(metadata %struct._GSList** %5, metadata !1591, metadata !150), !dbg !1592
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %6, metadata !1593, metadata !150), !dbg !1594
  %8 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1595
  %9 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1596
  %10 = call %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC* %8, %struct._CONFIG_NODE* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i32 3), !dbg !1597
  store %struct._CONFIG_NODE* %10, %struct._CONFIG_NODE** %4, align 8, !dbg !1598
  %11 = load %struct._LOG_REC*, %struct._LOG_REC** %3, align 8, !dbg !1599
  %12 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %11, i32 0, i32 5, !dbg !1601
  %13 = load %struct._GSList*, %struct._GSList** %12, align 8, !dbg !1601
  store %struct._GSList* %13, %struct._GSList** %5, align 8, !dbg !1602
  br label %14, !dbg !1603

; <label>:14:                                     ; preds = %43, %2
  %15 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1604
  %16 = icmp ne %struct._GSList* %15, null, !dbg !1607
  br i1 %16, label %17, label %47, !dbg !1608

; <label>:17:                                     ; preds = %14
  call void @llvm.dbg.declare(metadata %struct._LOG_ITEM_REC** %7, metadata !1609, metadata !150), !dbg !1611
  %18 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1612
  %19 = getelementptr inbounds %struct._GSList, %struct._GSList* %18, i32 0, i32 0, !dbg !1613
  %20 = load i8*, i8** %19, align 8, !dbg !1613
  %21 = bitcast i8* %20 to %struct._LOG_ITEM_REC*, !dbg !1612
  store %struct._LOG_ITEM_REC* %21, %struct._LOG_ITEM_REC** %7, align 8, !dbg !1611
  %22 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1614
  %23 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %4, align 8, !dbg !1615
  %24 = call %struct._CONFIG_NODE* @config_node_section(%struct._CONFIG_REC* %22, %struct._CONFIG_NODE* %23, i8* null, i32 2), !dbg !1616
  store %struct._CONFIG_NODE* %24, %struct._CONFIG_NODE** %6, align 8, !dbg !1617
  %25 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1618
  %26 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1619
  %27 = load %struct._LOG_ITEM_REC*, %struct._LOG_ITEM_REC** %7, align 8, !dbg !1620
  %28 = getelementptr inbounds %struct._LOG_ITEM_REC, %struct._LOG_ITEM_REC* %27, i32 0, i32 0, !dbg !1621
  %29 = load i32, i32* %28, align 8, !dbg !1621
  %30 = sext i32 %29 to i64, !dbg !1622
  %31 = getelementptr inbounds [3 x i8*], [3 x i8*]* @log_item_types, i64 0, i64 %30, !dbg !1622
  %32 = load i8*, i8** %31, align 8, !dbg !1622
  call void @config_node_set_str(%struct._CONFIG_REC* %25, %struct._CONFIG_NODE* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i8* %32), !dbg !1623
  %33 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1624
  %34 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1625
  %35 = load %struct._LOG_ITEM_REC*, %struct._LOG_ITEM_REC** %7, align 8, !dbg !1626
  %36 = getelementptr inbounds %struct._LOG_ITEM_REC, %struct._LOG_ITEM_REC* %35, i32 0, i32 1, !dbg !1627
  %37 = load i8*, i8** %36, align 8, !dbg !1627
  call void @config_node_set_str(%struct._CONFIG_REC* %33, %struct._CONFIG_NODE* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i8* %37), !dbg !1628
  %38 = load %struct._CONFIG_REC*, %struct._CONFIG_REC** @mainconfig, align 8, !dbg !1629
  %39 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %6, align 8, !dbg !1630
  %40 = load %struct._LOG_ITEM_REC*, %struct._LOG_ITEM_REC** %7, align 8, !dbg !1631
  %41 = getelementptr inbounds %struct._LOG_ITEM_REC, %struct._LOG_ITEM_REC* %40, i32 0, i32 2, !dbg !1632
  %42 = load i8*, i8** %41, align 8, !dbg !1632
  call void @config_node_set_str(%struct._CONFIG_REC* %38, %struct._CONFIG_NODE* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i8* %42), !dbg !1633
  br label %43, !dbg !1634

; <label>:43:                                     ; preds = %17
  %44 = load %struct._GSList*, %struct._GSList** %5, align 8, !dbg !1635
  %45 = getelementptr inbounds %struct._GSList, %struct._GSList* %44, i32 0, i32 1, !dbg !1637
  %46 = load %struct._GSList*, %struct._GSList** %45, align 8, !dbg !1637
  store %struct._GSList* %46, %struct._GSList** %5, align 8, !dbg !1638
  br label %14, !dbg !1639, !llvm.loop !1640

; <label>:47:                                     ; preds = %14
  ret void, !dbg !1642
}

declare i32 @config_set_str(%struct._CONFIG_REC*, i8*, i8*, i8*) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

declare void @g_slist_foreach(%struct._GSList*, void (i8*, i8*)*, i8*) #2

declare i32 @octal2dec(i32) #2

declare i32 @settings_get_int(i8*) #2

declare %struct._GSList* @config_node_first(%struct._GSList*) #2

declare i32 @config_node_get_bool(%struct._CONFIG_NODE*, i8*, i32) #2

declare i32 @level2bits(i8*, i32*) #2

declare i8* @config_node_get_str(%struct._CONFIG_NODE*, i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @log_items_read_config(%struct._CONFIG_NODE*, %struct._LOG_REC*) #0 !dbg !1643 {
  %3 = alloca %struct._CONFIG_NODE*, align 8
  %4 = alloca %struct._LOG_REC*, align 8
  %5 = alloca %struct._LOG_ITEM_REC*, align 8
  %6 = alloca %struct._GSList*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct._CONFIG_NODE* %0, %struct._CONFIG_NODE** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._CONFIG_NODE** %3, metadata !1646, metadata !150), !dbg !1647
  store %struct._LOG_REC* %1, %struct._LOG_REC** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._LOG_REC** %4, metadata !1648, metadata !150), !dbg !1649
  call void @llvm.dbg.declare(metadata %struct._LOG_ITEM_REC** %5, metadata !1650, metadata !150), !dbg !1651
  call void @llvm.dbg.declare(metadata %struct._GSList** %6, metadata !1652, metadata !150), !dbg !1653
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1654, metadata !150), !dbg !1655
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1656, metadata !150), !dbg !1657
  %9 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1658
  %10 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %9, i32 0, i32 2, !dbg !1659
  %11 = load i8*, i8** %10, align 8, !dbg !1659
  %12 = bitcast i8* %11 to %struct._GSList*, !dbg !1658
  %13 = call %struct._GSList* @config_node_first(%struct._GSList* %12), !dbg !1660
  store %struct._GSList* %13, %struct._GSList** %6, align 8, !dbg !1661
  br label %14, !dbg !1662

; <label>:14:                                     ; preds = %62, %2
  %15 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1663
  %16 = icmp ne %struct._GSList* %15, null, !dbg !1667
  br i1 %16, label %17, label %65, !dbg !1668

; <label>:17:                                     ; preds = %14
  %18 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1669
  %19 = getelementptr inbounds %struct._GSList, %struct._GSList* %18, i32 0, i32 0, !dbg !1671
  %20 = load i8*, i8** %19, align 8, !dbg !1671
  %21 = bitcast i8* %20 to %struct._CONFIG_NODE*, !dbg !1669
  store %struct._CONFIG_NODE* %21, %struct._CONFIG_NODE** %3, align 8, !dbg !1672
  %22 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1673
  %23 = getelementptr inbounds %struct._CONFIG_NODE, %struct._CONFIG_NODE* %22, i32 0, i32 0, !dbg !1675
  %24 = load i32, i32* %23, align 8, !dbg !1675
  %25 = icmp ne i32 %24, 2, !dbg !1676
  br i1 %25, label %26, label %27, !dbg !1677

; <label>:26:                                     ; preds = %17
  br label %62, !dbg !1678

; <label>:27:                                     ; preds = %17
  %28 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1679
  %29 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), i8* null), !dbg !1680
  store i8* %29, i8** %7, align 8, !dbg !1681
  %30 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1682
  %31 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.35, i32 0, i32 0), i8* null), !dbg !1683
  %32 = call i32 @log_item_str2type(i8* %31), !dbg !1684
  store i32 %32, i32* %8, align 4, !dbg !1686
  %33 = load i8*, i8** %7, align 8, !dbg !1687
  %34 = icmp eq i8* %33, null, !dbg !1689
  br i1 %34, label %38, label %35, !dbg !1690

; <label>:35:                                     ; preds = %27
  %36 = load i32, i32* %8, align 4, !dbg !1691
  %37 = icmp eq i32 %36, -1, !dbg !1693
  br i1 %37, label %38, label %39, !dbg !1694

; <label>:38:                                     ; preds = %35, %27
  br label %62, !dbg !1695

; <label>:39:                                     ; preds = %35
  %40 = call noalias i8* @g_malloc0_n(i64 1, i64 24), !dbg !1696
  %41 = bitcast i8* %40 to %struct._LOG_ITEM_REC*, !dbg !1697
  store %struct._LOG_ITEM_REC* %41, %struct._LOG_ITEM_REC** %5, align 8, !dbg !1698
  %42 = load i32, i32* %8, align 4, !dbg !1699
  %43 = load %struct._LOG_ITEM_REC*, %struct._LOG_ITEM_REC** %5, align 8, !dbg !1700
  %44 = getelementptr inbounds %struct._LOG_ITEM_REC, %struct._LOG_ITEM_REC* %43, i32 0, i32 0, !dbg !1701
  store i32 %42, i32* %44, align 8, !dbg !1702
  %45 = load i8*, i8** %7, align 8, !dbg !1703
  %46 = call noalias i8* @g_strdup(i8* %45), !dbg !1704
  %47 = load %struct._LOG_ITEM_REC*, %struct._LOG_ITEM_REC** %5, align 8, !dbg !1705
  %48 = getelementptr inbounds %struct._LOG_ITEM_REC, %struct._LOG_ITEM_REC* %47, i32 0, i32 1, !dbg !1706
  store i8* %46, i8** %48, align 8, !dbg !1707
  %49 = load %struct._CONFIG_NODE*, %struct._CONFIG_NODE** %3, align 8, !dbg !1708
  %50 = call i8* @config_node_get_str(%struct._CONFIG_NODE* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i8* null), !dbg !1709
  %51 = call noalias i8* @g_strdup(i8* %50), !dbg !1710
  %52 = load %struct._LOG_ITEM_REC*, %struct._LOG_ITEM_REC** %5, align 8, !dbg !1711
  %53 = getelementptr inbounds %struct._LOG_ITEM_REC, %struct._LOG_ITEM_REC* %52, i32 0, i32 2, !dbg !1712
  store i8* %51, i8** %53, align 8, !dbg !1713
  %54 = load %struct._LOG_REC*, %struct._LOG_REC** %4, align 8, !dbg !1714
  %55 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %54, i32 0, i32 5, !dbg !1715
  %56 = load %struct._GSList*, %struct._GSList** %55, align 8, !dbg !1715
  %57 = load %struct._LOG_ITEM_REC*, %struct._LOG_ITEM_REC** %5, align 8, !dbg !1716
  %58 = bitcast %struct._LOG_ITEM_REC* %57 to i8*, !dbg !1716
  %59 = call %struct._GSList* @g_slist_append(%struct._GSList* %56, i8* %58), !dbg !1717
  %60 = load %struct._LOG_REC*, %struct._LOG_REC** %4, align 8, !dbg !1718
  %61 = getelementptr inbounds %struct._LOG_REC, %struct._LOG_REC* %60, i32 0, i32 5, !dbg !1719
  store %struct._GSList* %59, %struct._GSList** %61, align 8, !dbg !1720
  br label %62, !dbg !1721

; <label>:62:                                     ; preds = %39, %38, %26
  %63 = load %struct._GSList*, %struct._GSList** %6, align 8, !dbg !1722
  %64 = call %struct._GSList* @config_node_next(%struct._GSList* %63), !dbg !1724
  store %struct._GSList* %64, %struct._GSList** %6, align 8, !dbg !1725
  br label %14, !dbg !1726, !llvm.loop !1727

; <label>:65:                                     ; preds = %14
  ret void, !dbg !1728
}

declare %struct._GSList* @gslist_find_string(%struct._GSList*, i8*) #2

declare %struct._GSList* @config_node_next(%struct._GSList*) #2

; Function Attrs: nounwind uwtable
define internal i32 @log_item_str2type(i8*) #0 !dbg !1729 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1732, metadata !150), !dbg !1733
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1734, metadata !150), !dbg !1735
  store i32 0, i32* %4, align 4, !dbg !1736
  br label %5, !dbg !1738

; <label>:5:                                      ; preds = %22, %1
  %6 = load i32, i32* %4, align 4, !dbg !1739
  %7 = sext i32 %6 to i64, !dbg !1742
  %8 = getelementptr inbounds [3 x i8*], [3 x i8*]* @log_item_types, i64 0, i64 %7, !dbg !1742
  %9 = load i8*, i8** %8, align 8, !dbg !1742
  %10 = icmp ne i8* %9, null, !dbg !1743
  br i1 %10, label %11, label %25, !dbg !1744

; <label>:11:                                     ; preds = %5
  %12 = load i32, i32* %4, align 4, !dbg !1745
  %13 = sext i32 %12 to i64, !dbg !1748
  %14 = getelementptr inbounds [3 x i8*], [3 x i8*]* @log_item_types, i64 0, i64 %13, !dbg !1748
  %15 = load i8*, i8** %14, align 8, !dbg !1748
  %16 = load i8*, i8** %3, align 8, !dbg !1749
  %17 = call i32 @g_ascii_strcasecmp(i8* %15, i8* %16), !dbg !1750
  %18 = icmp eq i32 %17, 0, !dbg !1751
  br i1 %18, label %19, label %21, !dbg !1752

; <label>:19:                                     ; preds = %11
  %20 = load i32, i32* %4, align 4, !dbg !1753
  store i32 %20, i32* %2, align 4, !dbg !1754
  br label %26, !dbg !1754

; <label>:21:                                     ; preds = %11
  br label %22, !dbg !1755

; <label>:22:                                     ; preds = %21
  %23 = load i32, i32* %4, align 4, !dbg !1756
  %24 = add nsw i32 %23, 1, !dbg !1756
  store i32 %24, i32* %4, align 4, !dbg !1756
  br label %5, !dbg !1758, !llvm.loop !1759

; <label>:25:                                     ; preds = %5
  store i32 -1, i32* %2, align 4, !dbg !1761
  br label %26, !dbg !1761

; <label>:26:                                     ; preds = %25, %19
  %27 = load i32, i32* %2, align 4, !dbg !1762
  ret i32 %27, !dbg !1762
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!143, !144}
!llvm.ident = !{!145}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !59, globals: !127)
!1 = !DIFile(filename: "line41-log.o.i", directory: "/home/lichi/Desktop/irssi/task1")
!2 = !{!3, !34, !39, !51}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 10, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "levels.h", directory: "/home/lichi/Desktop/irssi/task1")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33}
!6 = !DIEnumerator(name: "MSGLEVEL_CRAP", value: 1)
!7 = !DIEnumerator(name: "MSGLEVEL_MSGS", value: 2)
!8 = !DIEnumerator(name: "MSGLEVEL_PUBLIC", value: 4)
!9 = !DIEnumerator(name: "MSGLEVEL_NOTICES", value: 8)
!10 = !DIEnumerator(name: "MSGLEVEL_SNOTES", value: 16)
!11 = !DIEnumerator(name: "MSGLEVEL_CTCPS", value: 32)
!12 = !DIEnumerator(name: "MSGLEVEL_ACTIONS", value: 64)
!13 = !DIEnumerator(name: "MSGLEVEL_JOINS", value: 128)
!14 = !DIEnumerator(name: "MSGLEVEL_PARTS", value: 256)
!15 = !DIEnumerator(name: "MSGLEVEL_QUITS", value: 512)
!16 = !DIEnumerator(name: "MSGLEVEL_KICKS", value: 1024)
!17 = !DIEnumerator(name: "MSGLEVEL_MODES", value: 2048)
!18 = !DIEnumerator(name: "MSGLEVEL_TOPICS", value: 4096)
!19 = !DIEnumerator(name: "MSGLEVEL_WALLOPS", value: 8192)
!20 = !DIEnumerator(name: "MSGLEVEL_INVITES", value: 16384)
!21 = !DIEnumerator(name: "MSGLEVEL_NICKS", value: 32768)
!22 = !DIEnumerator(name: "MSGLEVEL_DCC", value: 65536)
!23 = !DIEnumerator(name: "MSGLEVEL_DCCMSGS", value: 131072)
!24 = !DIEnumerator(name: "MSGLEVEL_CLIENTNOTICE", value: 262144)
!25 = !DIEnumerator(name: "MSGLEVEL_CLIENTCRAP", value: 524288)
!26 = !DIEnumerator(name: "MSGLEVEL_CLIENTERROR", value: 1048576)
!27 = !DIEnumerator(name: "MSGLEVEL_HILIGHT", value: 2097152)
!28 = !DIEnumerator(name: "MSGLEVEL_ALL", value: 4194303)
!29 = !DIEnumerator(name: "MSGLEVEL_NOHILIGHT", value: 16777216)
!30 = !DIEnumerator(name: "MSGLEVEL_NO_ACT", value: 33554432)
!31 = !DIEnumerator(name: "MSGLEVEL_NEVER", value: 67108864)
!32 = !DIEnumerator(name: "MSGLEVEL_LASTLOG", value: 134217728)
!33 = !DIEnumerator(name: "MSGLEVEL_HIDDEN", value: 268435456)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !35, line: 4, size: 32, align: 32, elements: !36)
!35 = !DIFile(filename: "log.h", directory: "/home/lichi/Desktop/irssi/task1")
!36 = !{!37, !38}
!37 = !DIEnumerator(name: "LOG_ITEM_TARGET", value: 0)
!38 = !DIEnumerator(name: "LOG_ITEM_WINDOW_REFNUM", value: 1)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !40, line: 51, size: 32, align: 32, elements: !41)
!40 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/irssi/task1")
!41 = !{!42, !43, !44, !45, !46, !47, !48, !49, !50}
!42 = !DIEnumerator(name: "G_LOG_FLAG_RECURSION", value: 1)
!43 = !DIEnumerator(name: "G_LOG_FLAG_FATAL", value: 2)
!44 = !DIEnumerator(name: "G_LOG_LEVEL_ERROR", value: 4)
!45 = !DIEnumerator(name: "G_LOG_LEVEL_CRITICAL", value: 8)
!46 = !DIEnumerator(name: "G_LOG_LEVEL_WARNING", value: 16)
!47 = !DIEnumerator(name: "G_LOG_LEVEL_MESSAGE", value: 32)
!48 = !DIEnumerator(name: "G_LOG_LEVEL_INFO", value: 64)
!49 = !DIEnumerator(name: "G_LOG_LEVEL_DEBUG", value: 128)
!50 = !DIEnumerator(name: "G_LOG_LEVEL_MASK", value: -4)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !52, line: 4, size: 32, align: 32, elements: !53)
!52 = !DIFile(filename: "../../src/lib-config/iconfig.h", directory: "/home/lichi/Desktop/irssi/task1")
!53 = !{!54, !55, !56, !57, !58}
!54 = !DIEnumerator(name: "NODE_TYPE_KEY", value: 0)
!55 = !DIEnumerator(name: "NODE_TYPE_VALUE", value: 1)
!56 = !DIEnumerator(name: "NODE_TYPE_BLOCK", value: 2)
!57 = !DIEnumerator(name: "NODE_TYPE_LIST", value: 3)
!58 = !DIEnumerator(name: "NODE_TYPE_COMMENT", value: 4)
!59 = !{!60, !61, !65, !67, !102, !109, !116, !123}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !63, line: 46, baseType: !64)
!63 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/irssi/task1")
!64 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64, align: 64)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "LOG_REC", file: !35, line: 11, baseType: !69)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_LOG_REC", file: !35, line: 20, size: 576, align: 64, elements: !70)
!70 = !{!71, !73, !74, !76, !82, !83, !92, !93, !98, !100, !101}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "fname", scope: !69, file: !35, line: 21, baseType: !72, size: 64, align: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "real_fname", scope: !69, file: !35, line: 22, baseType: !72, size: 64, align: 64, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !69, file: !35, line: 23, baseType: !75, size: 32, align: 32, offset: 128)
!75 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "opened", scope: !69, file: !35, line: 24, baseType: !77, size: 64, align: 64, offset: 192)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !78, line: 75, baseType: !79)
!78 = !DIFile(filename: "/usr/include/time.h", directory: "/home/lichi/Desktop/irssi/task1")
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !80, line: 139, baseType: !81)
!80 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/irssi/task1")
!81 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !69, file: !35, line: 26, baseType: !75, size: 32, align: 32, offset: 256)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !69, file: !35, line: 27, baseType: !84, size: 64, align: 64, offset: 320)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSList", file: !86, line: 37, baseType: !87)
!86 = !DIFile(filename: "/usr/include/glib-2.0/glib/gslist.h", directory: "/home/lichi/Desktop/irssi/task1")
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GSList", file: !86, line: 39, size: 128, align: 64, elements: !88)
!88 = !{!89, !91}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !87, file: !86, line: 41, baseType: !90, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !63, line: 77, baseType: !60)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !87, file: !86, line: 42, baseType: !84, size: 64, align: 64, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !69, file: !35, line: 29, baseType: !77, size: 64, align: 64, offset: 384)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "colorizer", scope: !69, file: !35, line: 30, baseType: !94, size: 64, align: 64, offset: 448)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "COLORIZE_FUNC", file: !35, line: 9, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64, align: 64)
!96 = !DISubroutineType(types: !97)
!97 = !{!72, !65}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "autoopen", scope: !69, file: !35, line: 32, baseType: !99, size: 1, align: 32, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!99 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "failed", scope: !69, file: !35, line: 33, baseType: !99, size: 1, align: 32, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !69, file: !35, line: 34, baseType: !99, size: 1, align: 32, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64, align: 64)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "LOG_ITEM_REC", file: !35, line: 12, baseType: !104)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_LOG_ITEM_REC", file: !35, line: 14, size: 192, align: 64, elements: !105)
!105 = !{!106, !107, !108}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !104, file: !35, line: 15, baseType: !75, size: 32, align: 32)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !104, file: !35, line: 16, baseType: !72, size: 64, align: 64, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "servertag", scope: !104, file: !35, line: 17, baseType: !72, size: 64, align: 64, offset: 128)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSourceFunc", file: !110, line: 155, baseType: !111)
!110 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmain.h", directory: "/home/lichi/Desktop/irssi/task1")
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64, align: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{!114, !90}
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !63, line: 50, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !63, line: 49, baseType: !75)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "SIGNAL_FUNC", file: !117, line: 9, baseType: !118)
!117 = !DIFile(filename: "signals.h", directory: "/home/lichi/Desktop/irssi/task1")
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64, align: 64)
!119 = !DISubroutineType(types: !120)
!120 = !{null, !121, !121, !121, !121, !121, !121}
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64, align: 64)
!122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "GFunc", file: !63, line: 88, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!125 = !DISubroutineType(types: !126)
!126 = !{null, !90, !90}
!127 = !{!128, !130, !131, !132, !133, !134, !138}
!128 = distinct !DIGlobalVariable(name: "logs", scope: !0, file: !129, line: 38, type: !84, isLocal: false, isDefinition: true, variable: %struct._GSList** @logs)
!129 = !DIFile(filename: "log.c", directory: "/home/lichi/Desktop/irssi/task1")
!130 = distinct !DIGlobalVariable(name: "log_file_create_mode", scope: !0, file: !129, line: 39, type: !75, isLocal: false, isDefinition: true, variable: i32* @log_file_create_mode)
!131 = distinct !DIGlobalVariable(name: "log_dir_create_mode", scope: !0, file: !129, line: 40, type: !75, isLocal: false, isDefinition: true, variable: i32* @log_dir_create_mode)
!132 = distinct !DIGlobalVariable(name: "log_timestamp", scope: !0, file: !129, line: 49, type: !72, isLocal: true, isDefinition: true, variable: i8** @log_timestamp)
!133 = distinct !DIGlobalVariable(name: "rotate_tag", scope: !0, file: !129, line: 50, type: !75, isLocal: true, isDefinition: true, variable: i32* @rotate_tag)
!134 = distinct !DIGlobalVariable(name: "log_item_types", scope: !0, file: !129, line: 42, type: !135, isLocal: true, isDefinition: true, variable: [3 x i8*]* @log_item_types)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !65, size: 192, align: 64, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 3)
!138 = distinct !DIGlobalVariable(name: "last_hour", scope: !139, file: !129, line: 478, type: !75, isLocal: true, isDefinition: true, variable: i32* @sig_rotate_check.last_hour)
!139 = distinct !DISubprogram(name: "sig_rotate_check", scope: !129, file: !129, line: 476, type: !140, isLocal: true, isDefinition: true, scopeLine: 477, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !142)
!140 = !DISubroutineType(types: !141)
!141 = !{!75}
!142 = !{}
!143 = !{i32 2, !"Dwarf Version", i32 4}
!144 = !{i32 2, !"Debug Info Version", i32 3}
!145 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!146 = distinct !DISubprogram(name: "log_start_logging", scope: !129, file: !129, line: 101, type: !147, isLocal: false, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !142)
!147 = !DISubroutineType(types: !148)
!148 = !{!75, !67}
!149 = !DILocalVariable(name: "log", arg: 1, scope: !146, file: !129, line: 101, type: !67)
!150 = !DIExpression()
!151 = !DILocation(line: 101, column: 32, scope: !146)
!152 = !DILocalVariable(name: "dir", scope: !146, file: !129, line: 103, type: !72)
!153 = !DILocation(line: 103, column: 8, scope: !146)
!154 = !DILocalVariable(name: "lock", scope: !146, file: !129, line: 104, type: !155)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "flock", file: !156, line: 35, size: 256, align: 64, elements: !157)
!156 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/fcntl.h", directory: "/home/lichi/Desktop/irssi/task1")
!157 = !{!158, !160, !161, !163, !164}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "l_type", scope: !155, file: !156, line: 37, baseType: !159, size: 16, align: 16)
!159 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "l_whence", scope: !155, file: !156, line: 38, baseType: !159, size: 16, align: 16, offset: 16)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "l_start", scope: !155, file: !156, line: 40, baseType: !162, size: 64, align: 64, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !80, line: 131, baseType: !81)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "l_len", scope: !155, file: !156, line: 41, baseType: !162, size: 64, align: 64, offset: 128)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "l_pid", scope: !155, file: !156, line: 46, baseType: !165, size: 32, align: 32, offset: 192)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pid_t", file: !80, line: 133, baseType: !75)
!166 = !DILocation(line: 104, column: 15, scope: !146)
!167 = !DILocation(line: 106, column: 2, scope: !146)
!168 = distinct !{!168, !167}
!169 = !DILocation(line: 106, column: 10, scope: !170)
!170 = !DILexicalBlockFile(scope: !171, file: !129, discriminator: 1)
!171 = distinct !DILexicalBlock(scope: !172, file: !129, line: 106, column: 10)
!172 = distinct !DILexicalBlock(scope: !146, file: !129, line: 106, column: 4)
!173 = !DILocation(line: 106, column: 14, scope: !170)
!174 = !DILocation(line: 106, column: 5, scope: !175)
!175 = !DILexicalBlockFile(scope: !176, file: !129, discriminator: 2)
!176 = distinct !DILexicalBlock(scope: !171, file: !129, line: 106, column: 3)
!177 = !DILocation(line: 106, column: 14, scope: !178)
!178 = !DILexicalBlockFile(scope: !179, file: !129, discriminator: 3)
!179 = distinct !DILexicalBlock(scope: !171, file: !129, line: 106, column: 12)
!180 = !DILocation(line: 106, column: 98, scope: !178)
!181 = !DILocation(line: 106, column: 115, scope: !182)
!182 = !DILexicalBlockFile(scope: !172, file: !129, discriminator: 4)
!183 = !DILocation(line: 108, column: 6, scope: !184)
!184 = distinct !DILexicalBlock(scope: !146, file: !129, line: 108, column: 6)
!185 = !DILocation(line: 108, column: 11, scope: !184)
!186 = !DILocation(line: 108, column: 18, scope: !184)
!187 = !DILocation(line: 108, column: 6, scope: !146)
!188 = !DILocation(line: 109, column: 3, scope: !184)
!189 = !DILocation(line: 112, column: 9, scope: !146)
!190 = !DILocation(line: 112, column: 14, scope: !146)
!191 = !DILocation(line: 112, column: 2, scope: !146)
!192 = !DILocation(line: 113, column: 33, scope: !146)
!193 = !DILocation(line: 113, column: 20, scope: !146)
!194 = !DILocation(line: 113, column: 2, scope: !146)
!195 = !DILocation(line: 113, column: 7, scope: !146)
!196 = !DILocation(line: 113, column: 18, scope: !146)
!197 = !DILocation(line: 115, column: 6, scope: !198)
!198 = distinct !DILexicalBlock(scope: !146, file: !129, line: 115, column: 6)
!199 = !DILocation(line: 115, column: 11, scope: !198)
!200 = !DILocation(line: 115, column: 22, scope: !198)
!201 = !DILocation(line: 115, column: 29, scope: !198)
!202 = !DILocation(line: 116, column: 16, scope: !198)
!203 = !DILocation(line: 116, column: 21, scope: !198)
!204 = !DILocation(line: 116, column: 33, scope: !198)
!205 = !DILocation(line: 116, column: 38, scope: !198)
!206 = !DILocation(line: 116, column: 6, scope: !198)
!207 = !DILocation(line: 116, column: 45, scope: !198)
!208 = !DILocation(line: 115, column: 6, scope: !209)
!209 = !DILexicalBlockFile(scope: !146, file: !129, discriminator: 1)
!210 = !DILocation(line: 119, column: 28, scope: !211)
!211 = distinct !DILexicalBlock(scope: !198, file: !129, line: 116, column: 51)
!212 = !DILocation(line: 119, column: 33, scope: !211)
!213 = !DILocation(line: 119, column: 9, scope: !211)
!214 = !DILocation(line: 119, column: 7, scope: !211)
!215 = !DILocation(line: 123, column: 24, scope: !211)
!216 = !DILocation(line: 123, column: 29, scope: !211)
!217 = !DILocation(line: 123, column: 3, scope: !211)
!218 = !DILocation(line: 125, column: 10, scope: !211)
!219 = !DILocation(line: 125, column: 3, scope: !211)
!220 = !DILocation(line: 126, column: 2, scope: !211)
!221 = !DILocation(line: 133, column: 16, scope: !146)
!222 = !DILocation(line: 133, column: 21, scope: !146)
!223 = !DILocation(line: 133, column: 32, scope: !146)
!224 = !DILocation(line: 133, column: 16, scope: !209)
!225 = !DILocation(line: 134, column: 8, scope: !146)
!226 = !DILocation(line: 134, column: 13, scope: !146)
!227 = !DILocation(line: 135, column: 8, scope: !146)
!228 = !DILocation(line: 134, column: 3, scope: !146)
!229 = !DILocation(line: 133, column: 16, scope: !230)
!230 = !DILexicalBlockFile(scope: !146, file: !129, discriminator: 2)
!231 = !DILocation(line: 133, column: 16, scope: !232)
!232 = !DILexicalBlockFile(scope: !146, file: !129, discriminator: 3)
!233 = !DILocation(line: 133, column: 2, scope: !232)
!234 = !DILocation(line: 133, column: 7, scope: !232)
!235 = !DILocation(line: 133, column: 14, scope: !232)
!236 = !DILocation(line: 137, column: 6, scope: !237)
!237 = distinct !DILexicalBlock(scope: !146, file: !129, line: 137, column: 6)
!238 = !DILocation(line: 137, column: 11, scope: !237)
!239 = !DILocation(line: 137, column: 18, scope: !237)
!240 = !DILocation(line: 137, column: 6, scope: !146)
!241 = !DILocation(line: 138, column: 39, scope: !242)
!242 = distinct !DILexicalBlock(scope: !237, file: !129, line: 137, column: 25)
!243 = !DILocation(line: 138, column: 3, scope: !242)
!244 = !DILocation(line: 139, column: 3, scope: !242)
!245 = !DILocation(line: 139, column: 8, scope: !242)
!246 = !DILocation(line: 139, column: 15, scope: !242)
!247 = !DILocation(line: 140, column: 3, scope: !242)
!248 = !DILocation(line: 142, column: 9, scope: !146)
!249 = !DILocation(line: 143, column: 7, scope: !146)
!250 = !DILocation(line: 143, column: 14, scope: !146)
!251 = !DILocation(line: 144, column: 12, scope: !252)
!252 = distinct !DILexicalBlock(scope: !146, file: !129, line: 144, column: 6)
!253 = !DILocation(line: 144, column: 17, scope: !252)
!254 = !DILocation(line: 144, column: 6, scope: !252)
!255 = !DILocation(line: 144, column: 40, scope: !252)
!256 = !DILocation(line: 144, column: 46, scope: !252)
!257 = !DILocation(line: 144, column: 51, scope: !258)
!258 = !DILexicalBlockFile(scope: !252, file: !129, discriminator: 1)
!259 = !DILocation(line: 144, column: 50, scope: !258)
!260 = !DILocation(line: 144, column: 55, scope: !258)
!261 = !DILocation(line: 144, column: 6, scope: !258)
!262 = !DILocation(line: 145, column: 9, scope: !263)
!263 = distinct !DILexicalBlock(scope: !252, file: !129, line: 144, column: 66)
!264 = !DILocation(line: 145, column: 14, scope: !263)
!265 = !DILocation(line: 145, column: 3, scope: !263)
!266 = !DILocation(line: 146, column: 3, scope: !263)
!267 = !DILocation(line: 146, column: 8, scope: !263)
!268 = !DILocation(line: 146, column: 15, scope: !263)
!269 = !DILocation(line: 147, column: 32, scope: !263)
!270 = !DILocation(line: 147, column: 3, scope: !263)
!271 = !DILocation(line: 148, column: 3, scope: !263)
!272 = !DILocation(line: 148, column: 8, scope: !263)
!273 = !DILocation(line: 148, column: 15, scope: !263)
!274 = !DILocation(line: 149, column: 3, scope: !263)
!275 = !DILocation(line: 151, column: 8, scope: !146)
!276 = !DILocation(line: 151, column: 13, scope: !146)
!277 = !DILocation(line: 151, column: 2, scope: !146)
!278 = !DILocation(line: 153, column: 28, scope: !146)
!279 = !DILocation(line: 153, column: 16, scope: !146)
!280 = !DILocation(line: 153, column: 21, scope: !146)
!281 = !DILocation(line: 153, column: 26, scope: !146)
!282 = !DILocation(line: 153, column: 2, scope: !146)
!283 = !DILocation(line: 153, column: 7, scope: !146)
!284 = !DILocation(line: 153, column: 14, scope: !146)
!285 = !DILocation(line: 154, column: 22, scope: !146)
!286 = !DILocation(line: 154, column: 27, scope: !146)
!287 = !DILocation(line: 155, column: 8, scope: !146)
!288 = !DILocation(line: 156, column: 14, scope: !146)
!289 = !DILocation(line: 156, column: 19, scope: !146)
!290 = !DILocation(line: 154, column: 2, scope: !146)
!291 = !DILocation(line: 158, column: 32, scope: !146)
!292 = !DILocation(line: 158, column: 2, scope: !146)
!293 = !DILocation(line: 159, column: 2, scope: !146)
!294 = !DILocation(line: 159, column: 7, scope: !146)
!295 = !DILocation(line: 159, column: 14, scope: !146)
!296 = !DILocation(line: 160, column: 2, scope: !146)
!297 = !DILocation(line: 161, column: 1, scope: !146)
!298 = distinct !DISubprogram(name: "log_filename", scope: !129, file: !129, line: 79, type: !299, isLocal: true, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !142)
!299 = !DISubroutineType(types: !300)
!300 = !{!72, !67}
!301 = !DILocalVariable(name: "log", arg: 1, scope: !298, file: !129, line: 79, type: !67)
!302 = !DILocation(line: 79, column: 36, scope: !298)
!303 = !DILocalVariable(name: "str", scope: !298, file: !129, line: 81, type: !72)
!304 = !DILocation(line: 81, column: 8, scope: !298)
!305 = !DILocalVariable(name: "fname", scope: !298, file: !129, line: 81, type: !306)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 8192, align: 8, elements: !307)
!307 = !{!308}
!308 = !DISubrange(count: 1024)
!309 = !DILocation(line: 81, column: 13, scope: !298)
!310 = !DILocalVariable(name: "tm", scope: !298, file: !129, line: 82, type: !311)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64, align: 64)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !78, line: 133, size: 448, align: 64, elements: !313)
!313 = !{!314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !312, file: !78, line: 135, baseType: !75, size: 32, align: 32)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !312, file: !78, line: 136, baseType: !75, size: 32, align: 32, offset: 32)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !312, file: !78, line: 137, baseType: !75, size: 32, align: 32, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !312, file: !78, line: 138, baseType: !75, size: 32, align: 32, offset: 96)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !312, file: !78, line: 139, baseType: !75, size: 32, align: 32, offset: 128)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !312, file: !78, line: 140, baseType: !75, size: 32, align: 32, offset: 160)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !312, file: !78, line: 141, baseType: !75, size: 32, align: 32, offset: 192)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !312, file: !78, line: 142, baseType: !75, size: 32, align: 32, offset: 224)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !312, file: !78, line: 143, baseType: !75, size: 32, align: 32, offset: 256)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !312, file: !78, line: 146, baseType: !81, size: 64, align: 64, offset: 320)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !312, file: !78, line: 147, baseType: !65, size: 64, align: 64, offset: 384)
!325 = !DILocation(line: 82, column: 13, scope: !298)
!326 = !DILocalVariable(name: "ret", scope: !298, file: !129, line: 83, type: !327)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !328, line: 216, baseType: !329)
!328 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/irssi/task1")
!329 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!330 = !DILocation(line: 83, column: 16, scope: !298)
!331 = !DILocalVariable(name: "now", scope: !298, file: !129, line: 84, type: !77)
!332 = !DILocation(line: 84, column: 9, scope: !298)
!333 = !DILocation(line: 86, column: 8, scope: !298)
!334 = !DILocation(line: 86, column: 6, scope: !298)
!335 = !DILocation(line: 87, column: 7, scope: !298)
!336 = !DILocation(line: 87, column: 5, scope: !298)
!337 = !DILocation(line: 89, column: 21, scope: !298)
!338 = !DILocation(line: 89, column: 26, scope: !298)
!339 = !DILocation(line: 89, column: 8, scope: !298)
!340 = !DILocation(line: 89, column: 6, scope: !298)
!341 = !DILocation(line: 90, column: 17, scope: !298)
!342 = !DILocation(line: 90, column: 39, scope: !298)
!343 = !DILocation(line: 90, column: 44, scope: !298)
!344 = !DILocation(line: 90, column: 8, scope: !298)
!345 = !DILocation(line: 90, column: 6, scope: !298)
!346 = !DILocation(line: 91, column: 9, scope: !298)
!347 = !DILocation(line: 91, column: 2, scope: !298)
!348 = !DILocation(line: 93, column: 6, scope: !349)
!349 = distinct !DILexicalBlock(scope: !298, file: !129, line: 93, column: 6)
!350 = !DILocation(line: 93, column: 10, scope: !349)
!351 = !DILocation(line: 93, column: 6, scope: !298)
!352 = !DILocation(line: 94, column: 3, scope: !353)
!353 = distinct !DILexicalBlock(scope: !349, file: !129, line: 93, column: 16)
!354 = !DILocation(line: 95, column: 17, scope: !353)
!355 = !DILocation(line: 98, column: 18, scope: !298)
!356 = !DILocation(line: 98, column: 9, scope: !298)
!357 = !DILocation(line: 98, column: 2, scope: !298)
!358 = !DILocation(line: 99, column: 1, scope: !298)
!359 = distinct !DISubprogram(name: "log_write_timestamp", scope: !129, file: !129, line: 64, type: !360, isLocal: true, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !142)
!360 = !DISubroutineType(types: !361)
!361 = !{null, !75, !65, !65, !77}
!362 = !DILocalVariable(name: "handle", arg: 1, scope: !359, file: !129, line: 64, type: !75)
!363 = !DILocation(line: 64, column: 37, scope: !359)
!364 = !DILocalVariable(name: "format", arg: 2, scope: !359, file: !129, line: 64, type: !65)
!365 = !DILocation(line: 64, column: 57, scope: !359)
!366 = !DILocalVariable(name: "text", arg: 3, scope: !359, file: !129, line: 65, type: !65)
!367 = !DILocation(line: 65, column: 17, scope: !359)
!368 = !DILocalVariable(name: "stamp", arg: 4, scope: !359, file: !129, line: 65, type: !77)
!369 = !DILocation(line: 65, column: 30, scope: !359)
!370 = !DILocalVariable(name: "tm", scope: !359, file: !129, line: 67, type: !311)
!371 = !DILocation(line: 67, column: 13, scope: !359)
!372 = !DILocalVariable(name: "str", scope: !359, file: !129, line: 68, type: !373)
!373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 2048, align: 8, elements: !374)
!374 = !{!375}
!375 = !DISubrange(count: 256)
!376 = !DILocation(line: 68, column: 7, scope: !359)
!377 = !DILocation(line: 70, column: 2, scope: !359)
!378 = distinct !{!378, !377}
!379 = !DILocation(line: 70, column: 10, scope: !380)
!380 = !DILexicalBlockFile(scope: !381, file: !129, discriminator: 1)
!381 = distinct !DILexicalBlock(scope: !382, file: !129, line: 70, column: 10)
!382 = distinct !DILexicalBlock(scope: !359, file: !129, line: 70, column: 4)
!383 = !DILocation(line: 70, column: 17, scope: !380)
!384 = !DILocation(line: 70, column: 5, scope: !385)
!385 = !DILexicalBlockFile(scope: !386, file: !129, discriminator: 2)
!386 = distinct !DILexicalBlock(scope: !381, file: !129, line: 70, column: 3)
!387 = !DILocation(line: 70, column: 14, scope: !388)
!388 = !DILexicalBlockFile(scope: !389, file: !129, discriminator: 3)
!389 = distinct !DILexicalBlock(scope: !381, file: !129, line: 70, column: 12)
!390 = !DILocation(line: 70, column: 101, scope: !388)
!391 = !DILocation(line: 70, column: 112, scope: !392)
!392 = !DILexicalBlockFile(scope: !382, file: !129, discriminator: 4)
!393 = !DILocation(line: 71, column: 7, scope: !394)
!394 = distinct !DILexicalBlock(scope: !359, file: !129, line: 71, column: 6)
!395 = !DILocation(line: 71, column: 6, scope: !394)
!396 = !DILocation(line: 71, column: 14, scope: !394)
!397 = !DILocation(line: 71, column: 6, scope: !359)
!398 = !DILocation(line: 71, column: 23, scope: !399)
!399 = !DILexicalBlockFile(scope: !394, file: !129, discriminator: 1)
!400 = !DILocation(line: 73, column: 7, scope: !359)
!401 = !DILocation(line: 73, column: 5, scope: !359)
!402 = !DILocation(line: 74, column: 15, scope: !403)
!403 = distinct !DILexicalBlock(scope: !359, file: !129, line: 74, column: 6)
!404 = !DILocation(line: 74, column: 33, scope: !403)
!405 = !DILocation(line: 74, column: 41, scope: !403)
!406 = !DILocation(line: 74, column: 6, scope: !403)
!407 = !DILocation(line: 74, column: 45, scope: !403)
!408 = !DILocation(line: 74, column: 6, scope: !359)
!409 = !DILocation(line: 75, column: 16, scope: !403)
!410 = !DILocation(line: 75, column: 24, scope: !403)
!411 = !DILocation(line: 75, column: 36, scope: !403)
!412 = !DILocation(line: 75, column: 29, scope: !403)
!413 = !DILocation(line: 75, column: 3, scope: !414)
!414 = !DILexicalBlockFile(scope: !403, file: !129, discriminator: 1)
!415 = !DILocation(line: 75, column: 3, scope: !403)
!416 = !DILocation(line: 76, column: 6, scope: !417)
!417 = distinct !DILexicalBlock(scope: !359, file: !129, line: 76, column: 6)
!418 = !DILocation(line: 76, column: 11, scope: !417)
!419 = !DILocation(line: 76, column: 6, scope: !359)
!420 = !DILocation(line: 76, column: 32, scope: !421)
!421 = !DILexicalBlockFile(scope: !417, file: !129, discriminator: 1)
!422 = !DILocation(line: 76, column: 40, scope: !421)
!423 = !DILocation(line: 76, column: 53, scope: !421)
!424 = !DILocation(line: 76, column: 46, scope: !421)
!425 = !DILocation(line: 76, column: 19, scope: !426)
!426 = !DILexicalBlockFile(scope: !421, file: !129, discriminator: 2)
!427 = !DILocation(line: 76, column: 19, scope: !421)
!428 = !DILocation(line: 77, column: 1, scope: !359)
!429 = distinct !DISubprogram(name: "log_stop_logging", scope: !129, file: !129, line: 163, type: !430, isLocal: false, isDefinition: true, scopeLine: 164, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !142)
!430 = !DISubroutineType(types: !431)
!431 = !{null, !67}
!432 = !DILocalVariable(name: "log", arg: 1, scope: !429, file: !129, line: 163, type: !67)
!433 = !DILocation(line: 163, column: 32, scope: !429)
!434 = !DILocalVariable(name: "lock", scope: !429, file: !129, line: 165, type: !155)
!435 = !DILocation(line: 165, column: 15, scope: !429)
!436 = !DILocation(line: 167, column: 2, scope: !429)
!437 = distinct !{!437, !436}
!438 = !DILocation(line: 167, column: 10, scope: !439)
!439 = !DILexicalBlockFile(scope: !440, file: !129, discriminator: 1)
!440 = distinct !DILexicalBlock(scope: !441, file: !129, line: 167, column: 10)
!441 = distinct !DILexicalBlock(scope: !429, file: !129, line: 167, column: 4)
!442 = !DILocation(line: 167, column: 14, scope: !439)
!443 = !DILocation(line: 167, column: 5, scope: !444)
!444 = !DILexicalBlockFile(scope: !445, file: !129, discriminator: 2)
!445 = distinct !DILexicalBlock(scope: !440, file: !129, line: 167, column: 3)
!446 = !DILocation(line: 167, column: 14, scope: !447)
!447 = !DILexicalBlockFile(scope: !448, file: !129, discriminator: 3)
!448 = distinct !DILexicalBlock(scope: !440, file: !129, line: 167, column: 12)
!449 = !DILocation(line: 167, column: 98, scope: !447)
!450 = !DILocation(line: 167, column: 109, scope: !451)
!451 = !DILexicalBlockFile(scope: !441, file: !129, discriminator: 4)
!452 = !DILocation(line: 169, column: 6, scope: !453)
!453 = distinct !DILexicalBlock(scope: !429, file: !129, line: 169, column: 6)
!454 = !DILocation(line: 169, column: 11, scope: !453)
!455 = !DILocation(line: 169, column: 18, scope: !453)
!456 = !DILocation(line: 169, column: 6, scope: !429)
!457 = !DILocation(line: 170, column: 3, scope: !453)
!458 = !DILocation(line: 172, column: 32, scope: !429)
!459 = !DILocation(line: 172, column: 2, scope: !429)
!460 = !DILocation(line: 174, column: 22, scope: !429)
!461 = !DILocation(line: 174, column: 27, scope: !429)
!462 = !DILocation(line: 175, column: 8, scope: !429)
!463 = !DILocation(line: 176, column: 14, scope: !429)
!464 = !DILocation(line: 174, column: 2, scope: !429)
!465 = !DILocation(line: 178, column: 9, scope: !429)
!466 = !DILocation(line: 179, column: 7, scope: !429)
!467 = !DILocation(line: 179, column: 14, scope: !429)
!468 = !DILocation(line: 180, column: 8, scope: !429)
!469 = !DILocation(line: 180, column: 13, scope: !429)
!470 = !DILocation(line: 180, column: 2, scope: !429)
!471 = !DILocation(line: 182, column: 2, scope: !429)
!472 = !DILocation(line: 183, column: 8, scope: !429)
!473 = !DILocation(line: 183, column: 13, scope: !429)
!474 = !DILocation(line: 183, column: 2, scope: !429)
!475 = !DILocation(line: 184, column: 2, scope: !429)
!476 = !DILocation(line: 184, column: 7, scope: !429)
!477 = !DILocation(line: 184, column: 14, scope: !429)
!478 = !DILocation(line: 185, column: 1, scope: !429)
!479 = !DILocation(line: 185, column: 1, scope: !480)
!480 = !DILexicalBlockFile(scope: !429, file: !129, discriminator: 1)
!481 = distinct !DISubprogram(name: "log_write_rec", scope: !129, file: !129, line: 207, type: !482, isLocal: false, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !142)
!482 = !DISubroutineType(types: !483)
!483 = !{null, !67, !65, !75}
!484 = !DILocalVariable(name: "log", arg: 1, scope: !481, file: !129, line: 207, type: !67)
!485 = !DILocation(line: 207, column: 29, scope: !481)
!486 = !DILocalVariable(name: "str", arg: 2, scope: !481, file: !129, line: 207, type: !65)
!487 = !DILocation(line: 207, column: 46, scope: !481)
!488 = !DILocalVariable(name: "level", arg: 3, scope: !481, file: !129, line: 207, type: !75)
!489 = !DILocation(line: 207, column: 55, scope: !481)
!490 = !DILocalVariable(name: "colorstr", scope: !481, file: !129, line: 209, type: !72)
!491 = !DILocation(line: 209, column: 15, scope: !481)
!492 = !DILocalVariable(name: "tm", scope: !481, file: !129, line: 210, type: !311)
!493 = !DILocation(line: 210, column: 13, scope: !481)
!494 = !DILocalVariable(name: "now", scope: !481, file: !129, line: 211, type: !77)
!495 = !DILocation(line: 211, column: 9, scope: !481)
!496 = !DILocalVariable(name: "hour", scope: !481, file: !129, line: 212, type: !75)
!497 = !DILocation(line: 212, column: 6, scope: !481)
!498 = !DILocalVariable(name: "day", scope: !481, file: !129, line: 212, type: !75)
!499 = !DILocation(line: 212, column: 12, scope: !481)
!500 = !DILocation(line: 214, column: 2, scope: !481)
!501 = distinct !{!501, !500}
!502 = !DILocation(line: 214, column: 10, scope: !503)
!503 = !DILexicalBlockFile(scope: !504, file: !129, discriminator: 1)
!504 = distinct !DILexicalBlock(scope: !505, file: !129, line: 214, column: 10)
!505 = distinct !DILexicalBlock(scope: !481, file: !129, line: 214, column: 4)
!506 = !DILocation(line: 214, column: 14, scope: !503)
!507 = !DILocation(line: 214, column: 5, scope: !508)
!508 = !DILexicalBlockFile(scope: !509, file: !129, discriminator: 2)
!509 = distinct !DILexicalBlock(scope: !504, file: !129, line: 214, column: 3)
!510 = !DILocation(line: 214, column: 14, scope: !511)
!511 = !DILexicalBlockFile(scope: !512, file: !129, discriminator: 3)
!512 = distinct !DILexicalBlock(scope: !504, file: !129, line: 214, column: 12)
!513 = !DILocation(line: 214, column: 98, scope: !511)
!514 = !DILocation(line: 214, column: 109, scope: !515)
!515 = !DILexicalBlockFile(scope: !505, file: !129, discriminator: 4)
!516 = !DILocation(line: 215, column: 2, scope: !481)
!517 = distinct !{!517, !516}
!518 = !DILocation(line: 215, column: 10, scope: !519)
!519 = !DILexicalBlockFile(scope: !520, file: !129, discriminator: 1)
!520 = distinct !DILexicalBlock(scope: !521, file: !129, line: 215, column: 10)
!521 = distinct !DILexicalBlock(scope: !481, file: !129, line: 215, column: 4)
!522 = !DILocation(line: 215, column: 14, scope: !519)
!523 = !DILocation(line: 215, column: 5, scope: !524)
!524 = !DILexicalBlockFile(scope: !525, file: !129, discriminator: 2)
!525 = distinct !DILexicalBlock(scope: !520, file: !129, line: 215, column: 3)
!526 = !DILocation(line: 215, column: 14, scope: !527)
!527 = !DILexicalBlockFile(scope: !528, file: !129, discriminator: 3)
!528 = distinct !DILexicalBlock(scope: !520, file: !129, line: 215, column: 12)
!529 = !DILocation(line: 215, column: 98, scope: !527)
!530 = !DILocation(line: 215, column: 109, scope: !531)
!531 = !DILexicalBlockFile(scope: !521, file: !129, discriminator: 4)
!532 = !DILocation(line: 217, column: 6, scope: !533)
!533 = distinct !DILexicalBlock(scope: !481, file: !129, line: 217, column: 6)
!534 = !DILocation(line: 217, column: 11, scope: !533)
!535 = !DILocation(line: 217, column: 18, scope: !533)
!536 = !DILocation(line: 217, column: 6, scope: !481)
!537 = !DILocation(line: 218, column: 3, scope: !533)
!538 = !DILocation(line: 220, column: 8, scope: !481)
!539 = !DILocation(line: 220, column: 6, scope: !481)
!540 = !DILocation(line: 221, column: 7, scope: !481)
!541 = !DILocation(line: 221, column: 5, scope: !481)
!542 = !DILocation(line: 222, column: 9, scope: !481)
!543 = !DILocation(line: 222, column: 13, scope: !481)
!544 = !DILocation(line: 222, column: 7, scope: !481)
!545 = !DILocation(line: 223, column: 8, scope: !481)
!546 = !DILocation(line: 223, column: 12, scope: !481)
!547 = !DILocation(line: 223, column: 6, scope: !481)
!548 = !DILocation(line: 225, column: 18, scope: !481)
!549 = !DILocation(line: 225, column: 23, scope: !481)
!550 = !DILocation(line: 225, column: 7, scope: !481)
!551 = !DILocation(line: 225, column: 5, scope: !481)
!552 = !DILocation(line: 226, column: 9, scope: !481)
!553 = !DILocation(line: 226, column: 13, scope: !481)
!554 = !DILocation(line: 226, column: 6, scope: !481)
!555 = !DILocation(line: 227, column: 6, scope: !556)
!556 = distinct !DILexicalBlock(scope: !481, file: !129, line: 227, column: 6)
!557 = !DILocation(line: 227, column: 10, scope: !556)
!558 = !DILocation(line: 227, column: 21, scope: !556)
!559 = !DILocation(line: 227, column: 18, scope: !556)
!560 = !DILocation(line: 227, column: 6, scope: !481)
!561 = !DILocation(line: 229, column: 34, scope: !562)
!562 = distinct !DILexicalBlock(scope: !556, file: !129, line: 227, column: 27)
!563 = !DILocation(line: 229, column: 17, scope: !562)
!564 = !DILocation(line: 230, column: 2, scope: !562)
!565 = !DILocation(line: 232, column: 6, scope: !566)
!566 = distinct !DILexicalBlock(scope: !481, file: !129, line: 232, column: 6)
!567 = !DILocation(line: 232, column: 10, scope: !566)
!568 = !DILocation(line: 232, column: 6, scope: !481)
!569 = !DILocation(line: 234, column: 23, scope: !570)
!570 = distinct !DILexicalBlock(scope: !566, file: !129, line: 232, column: 16)
!571 = !DILocation(line: 234, column: 28, scope: !570)
!572 = !DILocation(line: 235, column: 9, scope: !570)
!573 = !DILocation(line: 236, column: 15, scope: !570)
!574 = !DILocation(line: 234, column: 3, scope: !570)
!575 = !DILocation(line: 237, column: 2, scope: !570)
!576 = !DILocation(line: 239, column: 14, scope: !481)
!577 = !DILocation(line: 239, column: 2, scope: !481)
!578 = !DILocation(line: 239, column: 7, scope: !481)
!579 = !DILocation(line: 239, column: 12, scope: !481)
!580 = !DILocation(line: 241, column: 6, scope: !581)
!581 = distinct !DILexicalBlock(scope: !481, file: !129, line: 241, column: 6)
!582 = !DILocation(line: 241, column: 11, scope: !581)
!583 = !DILocation(line: 241, column: 21, scope: !581)
!584 = !DILocation(line: 241, column: 6, scope: !481)
!585 = !DILocation(line: 242, column: 12, scope: !581)
!586 = !DILocation(line: 242, column: 3, scope: !581)
!587 = !DILocation(line: 244, column: 34, scope: !581)
!588 = !DILocation(line: 244, column: 39, scope: !581)
!589 = !DILocation(line: 244, column: 49, scope: !581)
!590 = !DILocation(line: 244, column: 32, scope: !581)
!591 = !DILocation(line: 244, column: 21, scope: !581)
!592 = !DILocation(line: 246, column: 14, scope: !593)
!593 = distinct !DILexicalBlock(scope: !481, file: !129, line: 246, column: 13)
!594 = !DILocation(line: 246, column: 20, scope: !593)
!595 = !DILocation(line: 246, column: 40, scope: !593)
!596 = !DILocation(line: 246, column: 13, scope: !481)
!597 = !DILocation(line: 247, column: 23, scope: !593)
!598 = !DILocation(line: 247, column: 28, scope: !593)
!599 = !DILocation(line: 247, column: 36, scope: !593)
!600 = !DILocation(line: 247, column: 51, scope: !593)
!601 = !DILocation(line: 247, column: 56, scope: !593)
!602 = !DILocation(line: 247, column: 3, scope: !593)
!603 = !DILocation(line: 249, column: 16, scope: !593)
!604 = !DILocation(line: 249, column: 21, scope: !593)
!605 = !DILocation(line: 249, column: 29, scope: !593)
!606 = !DILocation(line: 249, column: 41, scope: !593)
!607 = !DILocation(line: 249, column: 34, scope: !593)
!608 = !DILocation(line: 249, column: 3, scope: !609)
!609 = !DILexicalBlockFile(scope: !593, file: !129, discriminator: 1)
!610 = !DILocation(line: 250, column: 15, scope: !481)
!611 = !DILocation(line: 250, column: 20, scope: !481)
!612 = !DILocation(line: 250, column: 2, scope: !481)
!613 = !DILocation(line: 252, column: 32, scope: !481)
!614 = !DILocation(line: 252, column: 37, scope: !481)
!615 = !DILocation(line: 252, column: 2, scope: !481)
!616 = !DILocation(line: 254, column: 16, scope: !481)
!617 = !DILocation(line: 254, column: 9, scope: !481)
!618 = !DILocation(line: 255, column: 1, scope: !481)
!619 = !DILocation(line: 255, column: 1, scope: !620)
!620 = !DILexicalBlockFile(scope: !481, file: !129, discriminator: 1)
!621 = distinct !DISubprogram(name: "log_rotate_check", scope: !129, file: !129, line: 187, type: !430, isLocal: true, isDefinition: true, scopeLine: 188, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !142)
!622 = !DILocalVariable(name: "log", arg: 1, scope: !621, file: !129, line: 187, type: !67)
!623 = !DILocation(line: 187, column: 39, scope: !621)
!624 = !DILocalVariable(name: "new_fname", scope: !621, file: !129, line: 189, type: !72)
!625 = !DILocation(line: 189, column: 8, scope: !621)
!626 = !DILocation(line: 191, column: 2, scope: !621)
!627 = distinct !{!627, !626}
!628 = !DILocation(line: 191, column: 10, scope: !629)
!629 = !DILexicalBlockFile(scope: !630, file: !129, discriminator: 1)
!630 = distinct !DILexicalBlock(scope: !631, file: !129, line: 191, column: 10)
!631 = distinct !DILexicalBlock(scope: !621, file: !129, line: 191, column: 4)
!632 = !DILocation(line: 191, column: 14, scope: !629)
!633 = !DILocation(line: 191, column: 5, scope: !634)
!634 = !DILexicalBlockFile(scope: !635, file: !129, discriminator: 2)
!635 = distinct !DILexicalBlock(scope: !630, file: !129, line: 191, column: 3)
!636 = !DILocation(line: 191, column: 14, scope: !637)
!637 = !DILexicalBlockFile(scope: !638, file: !129, discriminator: 3)
!638 = distinct !DILexicalBlock(scope: !630, file: !129, line: 191, column: 12)
!639 = !DILocation(line: 191, column: 98, scope: !637)
!640 = !DILocation(line: 191, column: 109, scope: !641)
!641 = !DILexicalBlockFile(scope: !631, file: !129, discriminator: 4)
!642 = !DILocation(line: 193, column: 6, scope: !643)
!643 = distinct !DILexicalBlock(scope: !621, file: !129, line: 193, column: 6)
!644 = !DILocation(line: 193, column: 11, scope: !643)
!645 = !DILocation(line: 193, column: 18, scope: !643)
!646 = !DILocation(line: 193, column: 24, scope: !643)
!647 = !DILocation(line: 193, column: 27, scope: !648)
!648 = !DILexicalBlockFile(scope: !643, file: !129, discriminator: 1)
!649 = !DILocation(line: 193, column: 32, scope: !648)
!650 = !DILocation(line: 193, column: 43, scope: !648)
!651 = !DILocation(line: 193, column: 6, scope: !648)
!652 = !DILocation(line: 194, column: 3, scope: !643)
!653 = !DILocation(line: 196, column: 27, scope: !621)
!654 = !DILocation(line: 196, column: 14, scope: !621)
!655 = !DILocation(line: 196, column: 12, scope: !621)
!656 = !DILocation(line: 197, column: 16, scope: !657)
!657 = distinct !DILexicalBlock(scope: !621, file: !129, line: 197, column: 6)
!658 = !DILocation(line: 197, column: 27, scope: !657)
!659 = !DILocation(line: 197, column: 32, scope: !657)
!660 = !DILocation(line: 197, column: 6, scope: !657)
!661 = !DILocation(line: 197, column: 44, scope: !657)
!662 = !DILocation(line: 197, column: 6, scope: !621)
!663 = !DILocation(line: 199, column: 20, scope: !664)
!664 = distinct !DILexicalBlock(scope: !657, file: !129, line: 197, column: 50)
!665 = !DILocation(line: 199, column: 3, scope: !664)
!666 = !DILocation(line: 200, column: 33, scope: !664)
!667 = !DILocation(line: 200, column: 3, scope: !664)
!668 = !DILocation(line: 202, column: 21, scope: !664)
!669 = !DILocation(line: 202, column: 3, scope: !664)
!670 = !DILocation(line: 203, column: 2, scope: !664)
!671 = !DILocation(line: 204, column: 9, scope: !621)
!672 = !DILocation(line: 204, column: 2, scope: !621)
!673 = !DILocation(line: 205, column: 1, scope: !621)
!674 = !DILocation(line: 205, column: 1, scope: !675)
!675 = !DILexicalBlockFile(scope: !621, file: !129, discriminator: 1)
!676 = distinct !DISubprogram(name: "log_item_find", scope: !129, file: !129, line: 266, type: !677, isLocal: false, isDefinition: true, scopeLine: 268, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !142)
!677 = !DISubroutineType(types: !678)
!678 = !{!102, !67, !75, !65, !65}
!679 = !DILocalVariable(name: "log", arg: 1, scope: !676, file: !129, line: 266, type: !67)
!680 = !DILocation(line: 266, column: 38, scope: !676)
!681 = !DILocalVariable(name: "type", arg: 2, scope: !676, file: !129, line: 266, type: !75)
!682 = !DILocation(line: 266, column: 47, scope: !676)
!683 = !DILocalVariable(name: "item", arg: 3, scope: !676, file: !129, line: 266, type: !65)
!684 = !DILocation(line: 266, column: 65, scope: !676)
!685 = !DILocalVariable(name: "servertag", arg: 4, scope: !676, file: !129, line: 267, type: !65)
!686 = !DILocation(line: 267, column: 20, scope: !676)
!687 = !DILocalVariable(name: "tmp", scope: !676, file: !129, line: 269, type: !84)
!688 = !DILocation(line: 269, column: 10, scope: !676)
!689 = !DILocation(line: 271, column: 2, scope: !676)
!690 = distinct !{!690, !689}
!691 = !DILocation(line: 271, column: 10, scope: !692)
!692 = !DILexicalBlockFile(scope: !693, file: !129, discriminator: 1)
!693 = distinct !DILexicalBlock(scope: !694, file: !129, line: 271, column: 10)
!694 = distinct !DILexicalBlock(scope: !676, file: !129, line: 271, column: 4)
!695 = !DILocation(line: 271, column: 14, scope: !692)
!696 = !DILocation(line: 271, column: 5, scope: !697)
!697 = !DILexicalBlockFile(scope: !698, file: !129, discriminator: 2)
!698 = distinct !DILexicalBlock(scope: !693, file: !129, line: 271, column: 3)
!699 = !DILocation(line: 271, column: 14, scope: !700)
!700 = !DILexicalBlockFile(scope: !701, file: !129, discriminator: 3)
!701 = distinct !DILexicalBlock(scope: !693, file: !129, line: 271, column: 12)
!702 = !DILocation(line: 271, column: 98, scope: !700)
!703 = !DILocation(line: 271, column: 7, scope: !704)
!704 = !DILexicalBlockFile(scope: !694, file: !129, discriminator: 4)
!705 = !DILocation(line: 273, column: 13, scope: !706)
!706 = distinct !DILexicalBlock(scope: !676, file: !129, line: 273, column: 2)
!707 = !DILocation(line: 273, column: 18, scope: !706)
!708 = !DILocation(line: 273, column: 11, scope: !706)
!709 = !DILocation(line: 273, column: 7, scope: !706)
!710 = !DILocation(line: 273, column: 25, scope: !711)
!711 = !DILexicalBlockFile(scope: !712, file: !129, discriminator: 1)
!712 = distinct !DILexicalBlock(scope: !706, file: !129, line: 273, column: 2)
!713 = !DILocation(line: 273, column: 29, scope: !711)
!714 = !DILocation(line: 273, column: 2, scope: !711)
!715 = !DILocalVariable(name: "rec", scope: !716, file: !129, line: 274, type: !102)
!716 = distinct !DILexicalBlock(scope: !712, file: !129, line: 273, column: 54)
!717 = !DILocation(line: 274, column: 17, scope: !716)
!718 = !DILocation(line: 274, column: 23, scope: !716)
!719 = !DILocation(line: 274, column: 28, scope: !716)
!720 = !DILocation(line: 276, column: 7, scope: !721)
!721 = distinct !DILexicalBlock(scope: !716, file: !129, line: 276, column: 7)
!722 = !DILocation(line: 276, column: 12, scope: !721)
!723 = !DILocation(line: 276, column: 20, scope: !721)
!724 = !DILocation(line: 276, column: 17, scope: !721)
!725 = !DILocation(line: 276, column: 25, scope: !721)
!726 = !DILocation(line: 276, column: 36, scope: !727)
!727 = !DILexicalBlockFile(scope: !721, file: !129, discriminator: 1)
!728 = !DILocation(line: 276, column: 41, scope: !727)
!729 = !DILocation(line: 276, column: 47, scope: !727)
!730 = !DILocation(line: 276, column: 28, scope: !727)
!731 = !DILocation(line: 276, column: 53, scope: !727)
!732 = !DILocation(line: 276, column: 58, scope: !727)
!733 = !DILocation(line: 277, column: 8, scope: !721)
!734 = !DILocation(line: 277, column: 13, scope: !721)
!735 = !DILocation(line: 277, column: 23, scope: !721)
!736 = !DILocation(line: 277, column: 30, scope: !721)
!737 = !DILocation(line: 277, column: 34, scope: !727)
!738 = !DILocation(line: 277, column: 44, scope: !727)
!739 = !DILocation(line: 277, column: 52, scope: !727)
!740 = !DILocation(line: 278, column: 26, scope: !721)
!741 = !DILocation(line: 278, column: 31, scope: !721)
!742 = !DILocation(line: 278, column: 42, scope: !721)
!743 = !DILocation(line: 278, column: 7, scope: !721)
!744 = !DILocation(line: 278, column: 53, scope: !721)
!745 = !DILocation(line: 276, column: 7, scope: !746)
!746 = !DILexicalBlockFile(scope: !716, file: !129, discriminator: 2)
!747 = !DILocation(line: 279, column: 11, scope: !721)
!748 = !DILocation(line: 279, column: 4, scope: !721)
!749 = !DILocation(line: 280, column: 2, scope: !716)
!750 = !DILocation(line: 273, column: 43, scope: !751)
!751 = !DILexicalBlockFile(scope: !712, file: !129, discriminator: 2)
!752 = !DILocation(line: 273, column: 48, scope: !751)
!753 = !DILocation(line: 273, column: 41, scope: !751)
!754 = !DILocation(line: 273, column: 2, scope: !751)
!755 = distinct !{!755, !756}
!756 = !DILocation(line: 273, column: 2, scope: !676)
!757 = !DILocation(line: 282, column: 2, scope: !676)
!758 = !DILocation(line: 283, column: 1, scope: !676)
!759 = distinct !DISubprogram(name: "itemcmp", scope: !129, file: !129, line: 257, type: !760, isLocal: true, isDefinition: true, scopeLine: 258, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !142)
!760 = !DISubroutineType(types: !761)
!761 = !{!75, !65, !65}
!762 = !DILocalVariable(name: "patt", arg: 1, scope: !759, file: !129, line: 257, type: !65)
!763 = !DILocation(line: 257, column: 32, scope: !759)
!764 = !DILocalVariable(name: "item", arg: 2, scope: !759, file: !129, line: 257, type: !65)
!765 = !DILocation(line: 257, column: 50, scope: !759)
!766 = !DILocation(line: 261, column: 17, scope: !767)
!767 = distinct !DILexicalBlock(scope: !759, file: !129, line: 261, column: 6)
!768 = !DILocation(line: 261, column: 7, scope: !767)
!769 = !DILocation(line: 261, column: 6, scope: !759)
!770 = !DILocation(line: 262, column: 3, scope: !767)
!771 = !DILocation(line: 263, column: 16, scope: !759)
!772 = !DILocation(line: 263, column: 42, scope: !773)
!773 = !DILexicalBlockFile(scope: !759, file: !129, discriminator: 1)
!774 = !DILocation(line: 263, column: 48, scope: !773)
!775 = !DILocation(line: 263, column: 23, scope: !773)
!776 = !DILocation(line: 263, column: 16, scope: !773)
!777 = !DILocation(line: 263, column: 16, scope: !778)
!778 = !DILexicalBlockFile(scope: !759, file: !129, discriminator: 2)
!779 = !DILocation(line: 263, column: 16, scope: !780)
!780 = !DILexicalBlockFile(scope: !759, file: !129, discriminator: 3)
!781 = !DILocation(line: 263, column: 9, scope: !780)
!782 = !DILocation(line: 264, column: 1, scope: !759)
!783 = distinct !DISubprogram(name: "log_file_write", scope: !129, file: !129, line: 285, type: !784, isLocal: false, isDefinition: true, scopeLine: 287, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !142)
!784 = !DISubroutineType(types: !785)
!785 = !{null, !65, !65, !75, !65, !75}
!786 = !DILocalVariable(name: "server_tag", arg: 1, scope: !783, file: !129, line: 285, type: !65)
!787 = !DILocation(line: 285, column: 33, scope: !783)
!788 = !DILocalVariable(name: "item", arg: 2, scope: !783, file: !129, line: 285, type: !65)
!789 = !DILocation(line: 285, column: 57, scope: !783)
!790 = !DILocalVariable(name: "level", arg: 3, scope: !783, file: !129, line: 285, type: !75)
!791 = !DILocation(line: 285, column: 67, scope: !783)
!792 = !DILocalVariable(name: "str", arg: 4, scope: !783, file: !129, line: 286, type: !65)
!793 = !DILocation(line: 286, column: 19, scope: !783)
!794 = !DILocalVariable(name: "no_fallbacks", arg: 5, scope: !783, file: !129, line: 286, type: !75)
!795 = !DILocation(line: 286, column: 28, scope: !783)
!796 = !DILocalVariable(name: "tmp", scope: !783, file: !129, line: 288, type: !84)
!797 = !DILocation(line: 288, column: 10, scope: !783)
!798 = !DILocalVariable(name: "fallbacks", scope: !783, file: !129, line: 288, type: !84)
!799 = !DILocation(line: 288, column: 16, scope: !783)
!800 = !DILocalVariable(name: "tmpstr", scope: !783, file: !129, line: 289, type: !72)
!801 = !DILocation(line: 289, column: 8, scope: !783)
!802 = !DILocalVariable(name: "found", scope: !783, file: !129, line: 290, type: !75)
!803 = !DILocation(line: 290, column: 6, scope: !783)
!804 = !DILocation(line: 292, column: 2, scope: !783)
!805 = distinct !{!805, !804}
!806 = !DILocation(line: 292, column: 10, scope: !807)
!807 = !DILexicalBlockFile(scope: !808, file: !129, discriminator: 1)
!808 = distinct !DILexicalBlock(scope: !809, file: !129, line: 292, column: 10)
!809 = distinct !DILexicalBlock(scope: !783, file: !129, line: 292, column: 4)
!810 = !DILocation(line: 292, column: 14, scope: !807)
!811 = !DILocation(line: 292, column: 5, scope: !812)
!812 = !DILexicalBlockFile(scope: !813, file: !129, discriminator: 2)
!813 = distinct !DILexicalBlock(scope: !808, file: !129, line: 292, column: 3)
!814 = !DILocation(line: 292, column: 14, scope: !815)
!815 = !DILexicalBlockFile(scope: !816, file: !129, discriminator: 3)
!816 = distinct !DILexicalBlock(scope: !808, file: !129, line: 292, column: 12)
!817 = !DILocation(line: 292, column: 98, scope: !815)
!818 = !DILocation(line: 292, column: 109, scope: !819)
!819 = !DILexicalBlockFile(scope: !809, file: !129, discriminator: 4)
!820 = !DILocation(line: 294, column: 6, scope: !821)
!821 = distinct !DILexicalBlock(scope: !783, file: !129, line: 294, column: 6)
!822 = !DILocation(line: 294, column: 11, scope: !821)
!823 = !DILocation(line: 294, column: 6, scope: !783)
!824 = !DILocation(line: 295, column: 3, scope: !821)
!825 = !DILocation(line: 297, column: 12, scope: !783)
!826 = !DILocation(line: 297, column: 25, scope: !783)
!827 = !DILocation(line: 299, column: 13, scope: !828)
!828 = distinct !DILexicalBlock(scope: !783, file: !129, line: 299, column: 2)
!829 = !DILocation(line: 299, column: 11, scope: !828)
!830 = !DILocation(line: 299, column: 7, scope: !828)
!831 = !DILocation(line: 299, column: 19, scope: !832)
!832 = !DILexicalBlockFile(scope: !833, file: !129, discriminator: 1)
!833 = distinct !DILexicalBlock(scope: !828, file: !129, line: 299, column: 2)
!834 = !DILocation(line: 299, column: 23, scope: !832)
!835 = !DILocation(line: 299, column: 2, scope: !832)
!836 = !DILocalVariable(name: "rec", scope: !837, file: !129, line: 300, type: !67)
!837 = distinct !DILexicalBlock(scope: !833, file: !129, line: 299, column: 48)
!838 = !DILocation(line: 300, column: 12, scope: !837)
!839 = !DILocation(line: 300, column: 18, scope: !837)
!840 = !DILocation(line: 300, column: 23, scope: !837)
!841 = !DILocation(line: 302, column: 7, scope: !842)
!842 = distinct !DILexicalBlock(scope: !837, file: !129, line: 302, column: 7)
!843 = !DILocation(line: 302, column: 12, scope: !842)
!844 = !DILocation(line: 302, column: 19, scope: !842)
!845 = !DILocation(line: 302, column: 7, scope: !837)
!846 = !DILocation(line: 303, column: 4, scope: !842)
!847 = !DILocation(line: 305, column: 8, scope: !848)
!848 = distinct !DILexicalBlock(scope: !837, file: !129, line: 305, column: 7)
!849 = !DILocation(line: 305, column: 16, scope: !848)
!850 = !DILocation(line: 305, column: 21, scope: !848)
!851 = !DILocation(line: 305, column: 14, scope: !848)
!852 = !DILocation(line: 305, column: 28, scope: !848)
!853 = !DILocation(line: 305, column: 7, scope: !837)
!854 = !DILocation(line: 306, column: 4, scope: !848)
!855 = !DILocation(line: 308, column: 7, scope: !856)
!856 = distinct !DILexicalBlock(scope: !837, file: !129, line: 308, column: 7)
!857 = !DILocation(line: 308, column: 12, scope: !856)
!858 = !DILocation(line: 308, column: 18, scope: !856)
!859 = !DILocation(line: 308, column: 7, scope: !837)
!860 = !DILocation(line: 309, column: 31, scope: !856)
!861 = !DILocation(line: 309, column: 42, scope: !856)
!862 = !DILocation(line: 309, column: 16, scope: !856)
!863 = !DILocation(line: 309, column: 14, scope: !856)
!864 = !DILocation(line: 309, column: 4, scope: !856)
!865 = !DILocation(line: 310, column: 26, scope: !866)
!866 = distinct !DILexicalBlock(scope: !856, file: !129, line: 310, column: 12)
!867 = !DILocation(line: 310, column: 48, scope: !866)
!868 = !DILocation(line: 311, column: 12, scope: !866)
!869 = !DILocation(line: 310, column: 12, scope: !866)
!870 = !DILocation(line: 311, column: 24, scope: !866)
!871 = !DILocation(line: 310, column: 12, scope: !856)
!872 = !DILocation(line: 312, column: 18, scope: !866)
!873 = !DILocation(line: 312, column: 23, scope: !866)
!874 = !DILocation(line: 312, column: 28, scope: !866)
!875 = !DILocation(line: 312, column: 4, scope: !866)
!876 = !DILocation(line: 313, column: 2, scope: !837)
!877 = !DILocation(line: 299, column: 37, scope: !878)
!878 = !DILexicalBlockFile(scope: !833, file: !129, discriminator: 2)
!879 = !DILocation(line: 299, column: 42, scope: !878)
!880 = !DILocation(line: 299, column: 35, scope: !878)
!881 = !DILocation(line: 299, column: 2, scope: !878)
!882 = distinct !{!882, !883}
!883 = !DILocation(line: 299, column: 2, scope: !783)
!884 = !DILocation(line: 315, column: 7, scope: !885)
!885 = distinct !DILexicalBlock(scope: !783, file: !129, line: 315, column: 6)
!886 = !DILocation(line: 315, column: 13, scope: !885)
!887 = !DILocation(line: 315, column: 17, scope: !888)
!888 = !DILexicalBlockFile(scope: !885, file: !129, discriminator: 1)
!889 = !DILocation(line: 315, column: 30, scope: !888)
!890 = !DILocation(line: 315, column: 33, scope: !891)
!891 = !DILexicalBlockFile(scope: !885, file: !129, discriminator: 2)
!892 = !DILocation(line: 315, column: 43, scope: !891)
!893 = !DILocation(line: 315, column: 6, scope: !891)
!894 = !DILocation(line: 317, column: 13, scope: !895)
!895 = distinct !DILexicalBlock(scope: !885, file: !129, line: 315, column: 51)
!896 = !DILocation(line: 317, column: 19, scope: !895)
!897 = !DILocation(line: 317, column: 38, scope: !895)
!898 = !DILocation(line: 317, column: 41, scope: !899)
!899 = !DILexicalBlockFile(scope: !895, file: !129, discriminator: 1)
!900 = !DILocation(line: 317, column: 46, scope: !899)
!901 = !DILocation(line: 317, column: 12, scope: !899)
!902 = !DILocation(line: 318, column: 16, scope: !895)
!903 = !DILocation(line: 318, column: 28, scope: !895)
!904 = !DILocation(line: 318, column: 4, scope: !895)
!905 = !DILocation(line: 317, column: 12, scope: !906)
!906 = !DILexicalBlockFile(scope: !895, file: !129, discriminator: 2)
!907 = !DILocation(line: 319, column: 13, scope: !895)
!908 = !DILocation(line: 319, column: 4, scope: !895)
!909 = !DILocation(line: 317, column: 12, scope: !910)
!910 = !DILexicalBlockFile(scope: !895, file: !129, discriminator: 3)
!911 = !DILocation(line: 317, column: 12, scope: !912)
!912 = !DILexicalBlockFile(scope: !895, file: !129, discriminator: 4)
!913 = !DILocation(line: 317, column: 10, scope: !912)
!914 = !DILocation(line: 321, column: 14, scope: !915)
!915 = distinct !DILexicalBlock(scope: !895, file: !129, line: 321, column: 3)
!916 = !DILocation(line: 321, column: 12, scope: !915)
!917 = !DILocation(line: 321, column: 8, scope: !915)
!918 = !DILocation(line: 321, column: 25, scope: !919)
!919 = !DILexicalBlockFile(scope: !920, file: !129, discriminator: 1)
!920 = distinct !DILexicalBlock(scope: !915, file: !129, line: 321, column: 3)
!921 = !DILocation(line: 321, column: 29, scope: !919)
!922 = !DILocation(line: 321, column: 3, scope: !919)
!923 = !DILocation(line: 322, column: 39, scope: !920)
!924 = !DILocation(line: 322, column: 44, scope: !920)
!925 = !DILocation(line: 322, column: 50, scope: !920)
!926 = !DILocation(line: 322, column: 58, scope: !920)
!927 = !DILocation(line: 322, column: 25, scope: !920)
!928 = !DILocation(line: 321, column: 43, scope: !929)
!929 = !DILexicalBlockFile(scope: !920, file: !129, discriminator: 2)
!930 = !DILocation(line: 321, column: 48, scope: !929)
!931 = !DILocation(line: 321, column: 41, scope: !929)
!932 = !DILocation(line: 321, column: 3, scope: !929)
!933 = distinct !{!933, !934}
!934 = !DILocation(line: 321, column: 3, scope: !895)
!935 = !DILocation(line: 324, column: 10, scope: !895)
!936 = !DILocation(line: 324, column: 3, scope: !895)
!937 = !DILocation(line: 325, column: 2, scope: !895)
!938 = !DILocation(line: 326, column: 22, scope: !783)
!939 = !DILocation(line: 326, column: 9, scope: !783)
!940 = !DILocation(line: 327, column: 1, scope: !783)
!941 = !DILocation(line: 327, column: 1, scope: !942)
!942 = !DILexicalBlockFile(scope: !783, file: !129, discriminator: 1)
!943 = distinct !DISubprogram(name: "log_find", scope: !129, file: !129, line: 329, type: !944, isLocal: false, isDefinition: true, scopeLine: 330, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !142)
!944 = !DISubroutineType(types: !945)
!945 = !{!67, !65}
!946 = !DILocalVariable(name: "fname", arg: 1, scope: !943, file: !129, line: 329, type: !65)
!947 = !DILocation(line: 329, column: 31, scope: !943)
!948 = !DILocalVariable(name: "tmp", scope: !943, file: !129, line: 331, type: !84)
!949 = !DILocation(line: 331, column: 10, scope: !943)
!950 = !DILocation(line: 333, column: 13, scope: !951)
!951 = distinct !DILexicalBlock(scope: !943, file: !129, line: 333, column: 2)
!952 = !DILocation(line: 333, column: 11, scope: !951)
!953 = !DILocation(line: 333, column: 7, scope: !951)
!954 = !DILocation(line: 333, column: 19, scope: !955)
!955 = !DILexicalBlockFile(scope: !956, file: !129, discriminator: 1)
!956 = distinct !DILexicalBlock(scope: !951, file: !129, line: 333, column: 2)
!957 = !DILocation(line: 333, column: 23, scope: !955)
!958 = !DILocation(line: 333, column: 2, scope: !955)
!959 = !DILocalVariable(name: "rec", scope: !960, file: !129, line: 334, type: !67)
!960 = distinct !DILexicalBlock(scope: !956, file: !129, line: 333, column: 48)
!961 = !DILocation(line: 334, column: 12, scope: !960)
!962 = !DILocation(line: 334, column: 18, scope: !960)
!963 = !DILocation(line: 334, column: 23, scope: !960)
!964 = !DILocation(line: 336, column: 17, scope: !965)
!965 = distinct !DILexicalBlock(scope: !960, file: !129, line: 336, column: 7)
!966 = !DILocation(line: 336, column: 22, scope: !965)
!967 = !DILocation(line: 336, column: 29, scope: !965)
!968 = !DILocation(line: 336, column: 7, scope: !965)
!969 = !DILocation(line: 336, column: 36, scope: !965)
!970 = !DILocation(line: 336, column: 7, scope: !960)
!971 = !DILocation(line: 337, column: 11, scope: !965)
!972 = !DILocation(line: 337, column: 4, scope: !965)
!973 = !DILocation(line: 338, column: 2, scope: !960)
!974 = !DILocation(line: 333, column: 37, scope: !975)
!975 = !DILexicalBlockFile(scope: !956, file: !129, discriminator: 2)
!976 = !DILocation(line: 333, column: 42, scope: !975)
!977 = !DILocation(line: 333, column: 35, scope: !975)
!978 = !DILocation(line: 333, column: 2, scope: !975)
!979 = distinct !{!979, !980}
!980 = !DILocation(line: 333, column: 2, scope: !943)
!981 = !DILocation(line: 340, column: 2, scope: !943)
!982 = !DILocation(line: 341, column: 1, scope: !943)
!983 = distinct !DISubprogram(name: "log_create_rec", scope: !129, file: !129, line: 392, type: !984, isLocal: false, isDefinition: true, scopeLine: 393, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !142)
!984 = !DISubroutineType(types: !985)
!985 = !{!67, !65, !75}
!986 = !DILocalVariable(name: "fname", arg: 1, scope: !983, file: !129, line: 392, type: !65)
!987 = !DILocation(line: 392, column: 37, scope: !983)
!988 = !DILocalVariable(name: "level", arg: 2, scope: !983, file: !129, line: 392, type: !75)
!989 = !DILocation(line: 392, column: 48, scope: !983)
!990 = !DILocalVariable(name: "rec", scope: !983, file: !129, line: 394, type: !67)
!991 = !DILocation(line: 394, column: 11, scope: !983)
!992 = !DILocation(line: 396, column: 2, scope: !983)
!993 = distinct !{!993, !992}
!994 = !DILocation(line: 396, column: 10, scope: !995)
!995 = !DILexicalBlockFile(scope: !996, file: !129, discriminator: 1)
!996 = distinct !DILexicalBlock(scope: !997, file: !129, line: 396, column: 10)
!997 = distinct !DILexicalBlock(scope: !983, file: !129, line: 396, column: 4)
!998 = !DILocation(line: 396, column: 16, scope: !995)
!999 = !DILocation(line: 396, column: 5, scope: !1000)
!1000 = !DILexicalBlockFile(scope: !1001, file: !129, discriminator: 2)
!1001 = distinct !DILexicalBlock(scope: !996, file: !129, line: 396, column: 3)
!1002 = !DILocation(line: 396, column: 14, scope: !1003)
!1003 = !DILexicalBlockFile(scope: !1004, file: !129, discriminator: 3)
!1004 = distinct !DILexicalBlock(scope: !996, file: !129, line: 396, column: 12)
!1005 = !DILocation(line: 396, column: 100, scope: !1003)
!1006 = !DILocation(line: 396, column: 7, scope: !1007)
!1007 = !DILexicalBlockFile(scope: !997, file: !129, discriminator: 4)
!1008 = !DILocation(line: 398, column: 17, scope: !983)
!1009 = !DILocation(line: 398, column: 8, scope: !983)
!1010 = !DILocation(line: 398, column: 6, scope: !983)
!1011 = !DILocation(line: 399, column: 6, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !983, file: !129, line: 399, column: 6)
!1013 = !DILocation(line: 399, column: 10, scope: !1012)
!1014 = !DILocation(line: 399, column: 6, scope: !983)
!1015 = !DILocation(line: 400, column: 22, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1012, file: !129, line: 399, column: 18)
!1017 = !DILocation(line: 400, column: 10, scope: !1016)
!1018 = !DILocation(line: 400, column: 7, scope: !1016)
!1019 = !DILocation(line: 401, column: 25, scope: !1016)
!1020 = !DILocation(line: 401, column: 16, scope: !1016)
!1021 = !DILocation(line: 401, column: 3, scope: !1016)
!1022 = !DILocation(line: 401, column: 8, scope: !1016)
!1023 = !DILocation(line: 401, column: 14, scope: !1016)
!1024 = !DILocation(line: 402, column: 34, scope: !1016)
!1025 = !DILocation(line: 402, column: 21, scope: !1016)
!1026 = !DILocation(line: 402, column: 3, scope: !1016)
!1027 = !DILocation(line: 402, column: 8, scope: !1016)
!1028 = !DILocation(line: 402, column: 19, scope: !1016)
!1029 = !DILocation(line: 403, column: 3, scope: !1016)
!1030 = !DILocation(line: 403, column: 8, scope: !1016)
!1031 = !DILocation(line: 403, column: 15, scope: !1016)
!1032 = !DILocation(line: 404, column: 2, scope: !1016)
!1033 = !DILocation(line: 406, column: 15, scope: !983)
!1034 = !DILocation(line: 406, column: 2, scope: !983)
!1035 = !DILocation(line: 406, column: 7, scope: !983)
!1036 = !DILocation(line: 406, column: 13, scope: !983)
!1037 = !DILocation(line: 407, column: 9, scope: !983)
!1038 = !DILocation(line: 407, column: 2, scope: !983)
!1039 = !DILocation(line: 408, column: 1, scope: !983)
!1040 = distinct !DISubprogram(name: "log_item_add", scope: !129, file: !129, line: 410, type: !1041, isLocal: false, isDefinition: true, scopeLine: 412, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !142)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{null, !67, !75, !65, !65}
!1043 = !DILocalVariable(name: "log", arg: 1, scope: !1040, file: !129, line: 410, type: !67)
!1044 = !DILocation(line: 410, column: 28, scope: !1040)
!1045 = !DILocalVariable(name: "type", arg: 2, scope: !1040, file: !129, line: 410, type: !75)
!1046 = !DILocation(line: 410, column: 37, scope: !1040)
!1047 = !DILocalVariable(name: "name", arg: 3, scope: !1040, file: !129, line: 410, type: !65)
!1048 = !DILocation(line: 410, column: 55, scope: !1040)
!1049 = !DILocalVariable(name: "servertag", arg: 4, scope: !1040, file: !129, line: 411, type: !65)
!1050 = !DILocation(line: 411, column: 17, scope: !1040)
!1051 = !DILocalVariable(name: "rec", scope: !1040, file: !129, line: 413, type: !102)
!1052 = !DILocation(line: 413, column: 16, scope: !1040)
!1053 = !DILocation(line: 415, column: 2, scope: !1040)
!1054 = distinct !{!1054, !1053}
!1055 = !DILocation(line: 415, column: 10, scope: !1056)
!1056 = !DILexicalBlockFile(scope: !1057, file: !129, discriminator: 1)
!1057 = distinct !DILexicalBlock(scope: !1058, file: !129, line: 415, column: 10)
!1058 = distinct !DILexicalBlock(scope: !1040, file: !129, line: 415, column: 4)
!1059 = !DILocation(line: 415, column: 14, scope: !1056)
!1060 = !DILocation(line: 415, column: 5, scope: !1061)
!1061 = !DILexicalBlockFile(scope: !1062, file: !129, discriminator: 2)
!1062 = distinct !DILexicalBlock(scope: !1057, file: !129, line: 415, column: 3)
!1063 = !DILocation(line: 415, column: 14, scope: !1064)
!1064 = !DILexicalBlockFile(scope: !1065, file: !129, discriminator: 3)
!1065 = distinct !DILexicalBlock(scope: !1057, file: !129, line: 415, column: 12)
!1066 = !DILocation(line: 415, column: 98, scope: !1064)
!1067 = !DILocation(line: 415, column: 109, scope: !1068)
!1068 = !DILexicalBlockFile(scope: !1058, file: !129, discriminator: 4)
!1069 = !DILocation(line: 416, column: 2, scope: !1040)
!1070 = distinct !{!1070, !1069}
!1071 = !DILocation(line: 416, column: 10, scope: !1072)
!1072 = !DILexicalBlockFile(scope: !1073, file: !129, discriminator: 1)
!1073 = distinct !DILexicalBlock(scope: !1074, file: !129, line: 416, column: 10)
!1074 = distinct !DILexicalBlock(scope: !1040, file: !129, line: 416, column: 4)
!1075 = !DILocation(line: 416, column: 15, scope: !1072)
!1076 = !DILocation(line: 416, column: 5, scope: !1077)
!1077 = !DILexicalBlockFile(scope: !1078, file: !129, discriminator: 2)
!1078 = distinct !DILexicalBlock(scope: !1073, file: !129, line: 416, column: 3)
!1079 = !DILocation(line: 416, column: 14, scope: !1080)
!1080 = !DILexicalBlockFile(scope: !1081, file: !129, discriminator: 3)
!1081 = distinct !DILexicalBlock(scope: !1073, file: !129, line: 416, column: 12)
!1082 = !DILocation(line: 416, column: 99, scope: !1080)
!1083 = !DILocation(line: 416, column: 110, scope: !1084)
!1084 = !DILexicalBlockFile(scope: !1074, file: !129, discriminator: 4)
!1085 = !DILocation(line: 418, column: 20, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1040, file: !129, line: 418, column: 6)
!1087 = !DILocation(line: 418, column: 25, scope: !1086)
!1088 = !DILocation(line: 418, column: 31, scope: !1086)
!1089 = !DILocation(line: 418, column: 37, scope: !1086)
!1090 = !DILocation(line: 418, column: 6, scope: !1086)
!1091 = !DILocation(line: 418, column: 6, scope: !1040)
!1092 = !DILocation(line: 419, column: 3, scope: !1086)
!1093 = !DILocation(line: 421, column: 26, scope: !1040)
!1094 = !DILocation(line: 421, column: 9, scope: !1040)
!1095 = !DILocation(line: 421, column: 6, scope: !1040)
!1096 = !DILocation(line: 422, column: 14, scope: !1040)
!1097 = !DILocation(line: 422, column: 2, scope: !1040)
!1098 = !DILocation(line: 422, column: 7, scope: !1040)
!1099 = !DILocation(line: 422, column: 12, scope: !1040)
!1100 = !DILocation(line: 423, column: 23, scope: !1040)
!1101 = !DILocation(line: 423, column: 14, scope: !1040)
!1102 = !DILocation(line: 423, column: 2, scope: !1040)
!1103 = !DILocation(line: 423, column: 7, scope: !1040)
!1104 = !DILocation(line: 423, column: 12, scope: !1040)
!1105 = !DILocation(line: 424, column: 28, scope: !1040)
!1106 = !DILocation(line: 424, column: 19, scope: !1040)
!1107 = !DILocation(line: 424, column: 2, scope: !1040)
!1108 = !DILocation(line: 424, column: 7, scope: !1040)
!1109 = !DILocation(line: 424, column: 17, scope: !1040)
!1110 = !DILocation(line: 426, column: 30, scope: !1040)
!1111 = !DILocation(line: 426, column: 35, scope: !1040)
!1112 = !DILocation(line: 426, column: 42, scope: !1040)
!1113 = !DILocation(line: 426, column: 15, scope: !1040)
!1114 = !DILocation(line: 426, column: 2, scope: !1040)
!1115 = !DILocation(line: 426, column: 7, scope: !1040)
!1116 = !DILocation(line: 426, column: 13, scope: !1040)
!1117 = !DILocation(line: 427, column: 1, scope: !1040)
!1118 = !DILocation(line: 427, column: 1, scope: !1119)
!1119 = !DILexicalBlockFile(scope: !1040, file: !129, discriminator: 1)
!1120 = distinct !DISubprogram(name: "log_update", scope: !129, file: !129, line: 429, type: !430, isLocal: false, isDefinition: true, scopeLine: 430, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !142)
!1121 = !DILocalVariable(name: "log", arg: 1, scope: !1120, file: !129, line: 429, type: !67)
!1122 = !DILocation(line: 429, column: 26, scope: !1120)
!1123 = !DILocation(line: 431, column: 2, scope: !1120)
!1124 = distinct !{!1124, !1123}
!1125 = !DILocation(line: 431, column: 10, scope: !1126)
!1126 = !DILexicalBlockFile(scope: !1127, file: !129, discriminator: 1)
!1127 = distinct !DILexicalBlock(scope: !1128, file: !129, line: 431, column: 10)
!1128 = distinct !DILexicalBlock(scope: !1120, file: !129, line: 431, column: 4)
!1129 = !DILocation(line: 431, column: 14, scope: !1126)
!1130 = !DILocation(line: 431, column: 5, scope: !1131)
!1131 = !DILexicalBlockFile(scope: !1132, file: !129, discriminator: 2)
!1132 = distinct !DILexicalBlock(scope: !1127, file: !129, line: 431, column: 3)
!1133 = !DILocation(line: 431, column: 14, scope: !1134)
!1134 = !DILexicalBlockFile(scope: !1135, file: !129, discriminator: 3)
!1135 = distinct !DILexicalBlock(scope: !1127, file: !129, line: 431, column: 12)
!1136 = !DILocation(line: 431, column: 98, scope: !1134)
!1137 = !DILocation(line: 431, column: 109, scope: !1138)
!1138 = !DILexicalBlockFile(scope: !1128, file: !129, discriminator: 4)
!1139 = !DILocation(line: 433, column: 15, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1120, file: !129, line: 433, column: 6)
!1141 = !DILocation(line: 433, column: 20, scope: !1140)
!1142 = !DILocation(line: 433, column: 6, scope: !1140)
!1143 = !DILocation(line: 433, column: 27, scope: !1140)
!1144 = !DILocation(line: 433, column: 6, scope: !1120)
!1145 = !DILocation(line: 434, column: 25, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1140, file: !129, line: 433, column: 35)
!1147 = !DILocation(line: 434, column: 31, scope: !1146)
!1148 = !DILocation(line: 434, column: 10, scope: !1146)
!1149 = !DILocation(line: 434, column: 8, scope: !1146)
!1150 = !DILocation(line: 435, column: 3, scope: !1146)
!1151 = !DILocation(line: 435, column: 8, scope: !1146)
!1152 = !DILocation(line: 435, column: 15, scope: !1146)
!1153 = !DILocation(line: 436, column: 2, scope: !1146)
!1154 = !DILocation(line: 438, column: 20, scope: !1120)
!1155 = !DILocation(line: 438, column: 2, scope: !1120)
!1156 = !DILocation(line: 439, column: 28, scope: !1120)
!1157 = !DILocation(line: 439, column: 2, scope: !1120)
!1158 = !DILocation(line: 440, column: 1, scope: !1120)
!1159 = !DILocation(line: 440, column: 1, scope: !1160)
!1160 = !DILexicalBlockFile(scope: !1120, file: !129, discriminator: 1)
!1161 = distinct !DISubprogram(name: "log_update_config", scope: !129, file: !129, line: 359, type: !430, isLocal: true, isDefinition: true, scopeLine: 360, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !142)
!1162 = !DILocalVariable(name: "log", arg: 1, scope: !1161, file: !129, line: 359, type: !67)
!1163 = !DILocation(line: 359, column: 40, scope: !1161)
!1164 = !DILocalVariable(name: "node", scope: !1161, file: !129, line: 361, type: !1165)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64, align: 64)
!1166 = !DIDerivedType(tag: DW_TAG_typedef, name: "CONFIG_NODE", file: !52, line: 17, baseType: !1167)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_CONFIG_NODE", file: !52, line: 20, size: 192, align: 64, elements: !1168)
!1168 = !{!1169, !1170, !1171}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1167, file: !52, line: 21, baseType: !75, size: 32, align: 32)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1167, file: !52, line: 22, baseType: !72, size: 64, align: 64, offset: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1167, file: !52, line: 23, baseType: !60, size: 64, align: 64, offset: 128)
!1172 = !DILocation(line: 361, column: 15, scope: !1161)
!1173 = !DILocalVariable(name: "levelstr", scope: !1161, file: !129, line: 362, type: !72)
!1174 = !DILocation(line: 362, column: 8, scope: !1161)
!1175 = !DILocation(line: 364, column: 6, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1161, file: !129, line: 364, column: 6)
!1177 = !DILocation(line: 364, column: 11, scope: !1176)
!1178 = !DILocation(line: 364, column: 6, scope: !1161)
!1179 = !DILocation(line: 365, column: 3, scope: !1176)
!1180 = !DILocation(line: 367, column: 30, scope: !1161)
!1181 = !DILocation(line: 367, column: 9, scope: !1161)
!1182 = !DILocation(line: 367, column: 7, scope: !1161)
!1183 = !DILocation(line: 368, column: 29, scope: !1161)
!1184 = !DILocation(line: 368, column: 41, scope: !1161)
!1185 = !DILocation(line: 368, column: 47, scope: !1161)
!1186 = !DILocation(line: 368, column: 52, scope: !1161)
!1187 = !DILocation(line: 368, column: 9, scope: !1161)
!1188 = !DILocation(line: 368, column: 7, scope: !1161)
!1189 = !DILocation(line: 370, column: 6, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1161, file: !129, line: 370, column: 6)
!1191 = !DILocation(line: 370, column: 11, scope: !1190)
!1192 = !DILocation(line: 370, column: 6, scope: !1161)
!1193 = !DILocation(line: 371, column: 24, scope: !1190)
!1194 = !DILocation(line: 371, column: 36, scope: !1190)
!1195 = !DILocation(line: 371, column: 3, scope: !1190)
!1196 = !DILocation(line: 373, column: 23, scope: !1190)
!1197 = !DILocation(line: 373, column: 35, scope: !1190)
!1198 = !DILocation(line: 373, column: 3, scope: !1190)
!1199 = !DILocation(line: 375, column: 24, scope: !1161)
!1200 = !DILocation(line: 375, column: 29, scope: !1161)
!1201 = !DILocation(line: 375, column: 13, scope: !1161)
!1202 = !DILocation(line: 375, column: 11, scope: !1161)
!1203 = !DILocation(line: 376, column: 22, scope: !1161)
!1204 = !DILocation(line: 376, column: 34, scope: !1161)
!1205 = !DILocation(line: 376, column: 49, scope: !1161)
!1206 = !DILocation(line: 376, column: 2, scope: !1161)
!1207 = !DILocation(line: 377, column: 9, scope: !1161)
!1208 = !DILocation(line: 377, column: 2, scope: !1161)
!1209 = !DILocation(line: 379, column: 22, scope: !1161)
!1210 = !DILocation(line: 379, column: 34, scope: !1161)
!1211 = !DILocation(line: 379, column: 2, scope: !1161)
!1212 = !DILocation(line: 381, column: 6, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1161, file: !129, line: 381, column: 6)
!1214 = !DILocation(line: 381, column: 11, scope: !1213)
!1215 = !DILocation(line: 381, column: 17, scope: !1213)
!1216 = !DILocation(line: 381, column: 6, scope: !1161)
!1217 = !DILocation(line: 382, column: 27, scope: !1213)
!1218 = !DILocation(line: 382, column: 32, scope: !1213)
!1219 = !DILocation(line: 382, column: 3, scope: !1213)
!1220 = !DILocation(line: 384, column: 36, scope: !1161)
!1221 = !DILocation(line: 384, column: 41, scope: !1161)
!1222 = !DILocation(line: 384, column: 2, scope: !1161)
!1223 = !DILocation(line: 385, column: 1, scope: !1161)
!1224 = !DILocation(line: 385, column: 1, scope: !1225)
!1225 = !DILexicalBlockFile(scope: !1161, file: !129, discriminator: 1)
!1226 = distinct !DISubprogram(name: "log_item_destroy", scope: !129, file: !129, line: 442, type: !1227, isLocal: false, isDefinition: true, scopeLine: 443, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !142)
!1227 = !DISubroutineType(types: !1228)
!1228 = !{null, !67, !102}
!1229 = !DILocalVariable(name: "log", arg: 1, scope: !1226, file: !129, line: 442, type: !67)
!1230 = !DILocation(line: 442, column: 32, scope: !1226)
!1231 = !DILocalVariable(name: "item", arg: 2, scope: !1226, file: !129, line: 442, type: !102)
!1232 = !DILocation(line: 442, column: 51, scope: !1226)
!1233 = !DILocation(line: 444, column: 30, scope: !1226)
!1234 = !DILocation(line: 444, column: 35, scope: !1226)
!1235 = !DILocation(line: 444, column: 42, scope: !1226)
!1236 = !DILocation(line: 444, column: 15, scope: !1226)
!1237 = !DILocation(line: 444, column: 2, scope: !1226)
!1238 = !DILocation(line: 444, column: 7, scope: !1226)
!1239 = !DILocation(line: 444, column: 13, scope: !1226)
!1240 = !DILocation(line: 446, column: 9, scope: !1226)
!1241 = !DILocation(line: 446, column: 15, scope: !1226)
!1242 = !DILocation(line: 446, column: 2, scope: !1226)
!1243 = !DILocation(line: 447, column: 9, scope: !1226)
!1244 = !DILocation(line: 447, column: 15, scope: !1226)
!1245 = !DILocation(line: 447, column: 2, scope: !1226)
!1246 = !DILocation(line: 448, column: 9, scope: !1226)
!1247 = !DILocation(line: 448, column: 2, scope: !1226)
!1248 = !DILocation(line: 449, column: 1, scope: !1226)
!1249 = distinct !DISubprogram(name: "log_close", scope: !129, file: !129, line: 468, type: !430, isLocal: false, isDefinition: true, scopeLine: 469, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !142)
!1250 = !DILocalVariable(name: "log", arg: 1, scope: !1249, file: !129, line: 468, type: !67)
!1251 = !DILocation(line: 468, column: 25, scope: !1249)
!1252 = !DILocation(line: 470, column: 2, scope: !1249)
!1253 = distinct !{!1253, !1252}
!1254 = !DILocation(line: 470, column: 10, scope: !1255)
!1255 = !DILexicalBlockFile(scope: !1256, file: !129, discriminator: 1)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !129, line: 470, column: 10)
!1257 = distinct !DILexicalBlock(scope: !1249, file: !129, line: 470, column: 4)
!1258 = !DILocation(line: 470, column: 14, scope: !1255)
!1259 = !DILocation(line: 470, column: 5, scope: !1260)
!1260 = !DILexicalBlockFile(scope: !1261, file: !129, discriminator: 2)
!1261 = distinct !DILexicalBlock(scope: !1256, file: !129, line: 470, column: 3)
!1262 = !DILocation(line: 470, column: 14, scope: !1263)
!1263 = !DILexicalBlockFile(scope: !1264, file: !129, discriminator: 3)
!1264 = distinct !DILexicalBlock(scope: !1256, file: !129, line: 470, column: 12)
!1265 = !DILocation(line: 470, column: 98, scope: !1263)
!1266 = !DILocation(line: 470, column: 109, scope: !1267)
!1267 = !DILexicalBlockFile(scope: !1257, file: !129, discriminator: 4)
!1268 = !DILocation(line: 472, column: 20, scope: !1249)
!1269 = !DILocation(line: 472, column: 2, scope: !1249)
!1270 = !DILocation(line: 473, column: 14, scope: !1249)
!1271 = !DILocation(line: 473, column: 2, scope: !1249)
!1272 = !DILocation(line: 474, column: 1, scope: !1249)
!1273 = !DILocation(line: 474, column: 1, scope: !1274)
!1274 = !DILexicalBlockFile(scope: !1249, file: !129, discriminator: 1)
!1275 = distinct !DISubprogram(name: "log_remove_config", scope: !129, file: !129, line: 387, type: !430, isLocal: true, isDefinition: true, scopeLine: 388, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !142)
!1276 = !DILocalVariable(name: "log", arg: 1, scope: !1275, file: !129, line: 387, type: !67)
!1277 = !DILocation(line: 387, column: 40, scope: !1275)
!1278 = !DILocation(line: 389, column: 17, scope: !1275)
!1279 = !DILocation(line: 389, column: 37, scope: !1275)
!1280 = !DILocation(line: 389, column: 42, scope: !1275)
!1281 = !DILocation(line: 389, column: 2, scope: !1275)
!1282 = !DILocation(line: 390, column: 1, scope: !1275)
!1283 = distinct !DISubprogram(name: "log_destroy", scope: !129, file: !129, line: 451, type: !430, isLocal: true, isDefinition: true, scopeLine: 452, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !142)
!1284 = !DILocalVariable(name: "log", arg: 1, scope: !1283, file: !129, line: 451, type: !67)
!1285 = !DILocation(line: 451, column: 34, scope: !1283)
!1286 = !DILocation(line: 453, column: 2, scope: !1283)
!1287 = distinct !{!1287, !1286}
!1288 = !DILocation(line: 453, column: 10, scope: !1289)
!1289 = !DILexicalBlockFile(scope: !1290, file: !129, discriminator: 1)
!1290 = distinct !DILexicalBlock(scope: !1291, file: !129, line: 453, column: 10)
!1291 = distinct !DILexicalBlock(scope: !1283, file: !129, line: 453, column: 4)
!1292 = !DILocation(line: 453, column: 14, scope: !1289)
!1293 = !DILocation(line: 453, column: 5, scope: !1294)
!1294 = !DILexicalBlockFile(scope: !1295, file: !129, discriminator: 2)
!1295 = distinct !DILexicalBlock(scope: !1290, file: !129, line: 453, column: 3)
!1296 = !DILocation(line: 453, column: 14, scope: !1297)
!1297 = !DILexicalBlockFile(scope: !1298, file: !129, discriminator: 3)
!1298 = distinct !DILexicalBlock(scope: !1290, file: !129, line: 453, column: 12)
!1299 = !DILocation(line: 453, column: 98, scope: !1297)
!1300 = !DILocation(line: 453, column: 109, scope: !1301)
!1301 = !DILexicalBlockFile(scope: !1291, file: !129, discriminator: 4)
!1302 = !DILocation(line: 455, column: 6, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1283, file: !129, line: 455, column: 6)
!1304 = !DILocation(line: 455, column: 11, scope: !1303)
!1305 = !DILocation(line: 455, column: 18, scope: !1303)
!1306 = !DILocation(line: 455, column: 6, scope: !1283)
!1307 = !DILocation(line: 456, column: 20, scope: !1303)
!1308 = !DILocation(line: 456, column: 3, scope: !1303)
!1309 = !DILocation(line: 458, column: 24, scope: !1283)
!1310 = !DILocation(line: 458, column: 30, scope: !1283)
!1311 = !DILocation(line: 458, column: 9, scope: !1283)
!1312 = !DILocation(line: 458, column: 7, scope: !1283)
!1313 = !DILocation(line: 459, column: 31, scope: !1283)
!1314 = !DILocation(line: 459, column: 2, scope: !1283)
!1315 = !DILocation(line: 461, column: 2, scope: !1283)
!1316 = !DILocation(line: 461, column: 9, scope: !1317)
!1317 = !DILexicalBlockFile(scope: !1283, file: !129, discriminator: 1)
!1318 = !DILocation(line: 461, column: 14, scope: !1317)
!1319 = !DILocation(line: 461, column: 20, scope: !1317)
!1320 = !DILocation(line: 461, column: 2, scope: !1317)
!1321 = !DILocation(line: 462, column: 20, scope: !1283)
!1322 = !DILocation(line: 462, column: 25, scope: !1283)
!1323 = !DILocation(line: 462, column: 30, scope: !1283)
!1324 = !DILocation(line: 462, column: 37, scope: !1283)
!1325 = !DILocation(line: 462, column: 3, scope: !1283)
!1326 = !DILocation(line: 461, column: 2, scope: !1327)
!1327 = !DILexicalBlockFile(scope: !1283, file: !129, discriminator: 2)
!1328 = distinct !{!1328, !1315}
!1329 = !DILocation(line: 463, column: 9, scope: !1283)
!1330 = !DILocation(line: 463, column: 14, scope: !1283)
!1331 = !DILocation(line: 463, column: 2, scope: !1283)
!1332 = !DILocation(line: 464, column: 9, scope: !1283)
!1333 = !DILocation(line: 464, column: 14, scope: !1283)
!1334 = !DILocation(line: 464, column: 2, scope: !1283)
!1335 = !DILocation(line: 465, column: 9, scope: !1283)
!1336 = !DILocation(line: 465, column: 2, scope: !1283)
!1337 = !DILocation(line: 466, column: 1, scope: !1283)
!1338 = !DILocation(line: 466, column: 1, scope: !1317)
!1339 = distinct !DISubprogram(name: "log_init", scope: !129, file: !129, line: 584, type: !1340, isLocal: false, isDefinition: true, scopeLine: 585, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !142)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{null}
!1342 = !DILocation(line: 586, column: 15, scope: !1339)
!1343 = !DILocation(line: 586, column: 13, scope: !1339)
!1344 = !DILocation(line: 587, column: 7, scope: !1339)
!1345 = !DILocation(line: 589, column: 2, scope: !1339)
!1346 = !DILocation(line: 591, column: 2, scope: !1339)
!1347 = !DILocation(line: 592, column: 2, scope: !1339)
!1348 = !DILocation(line: 594, column: 2, scope: !1339)
!1349 = !DILocation(line: 596, column: 2, scope: !1339)
!1350 = !DILocation(line: 599, column: 2, scope: !1339)
!1351 = !DILocation(line: 600, column: 9, scope: !1339)
!1352 = !DILocation(line: 601, column: 9, scope: !1339)
!1353 = !DILocation(line: 602, column: 9, scope: !1339)
!1354 = !DILocation(line: 603, column: 1, scope: !1339)
!1355 = !DILocalVariable(name: "tm", scope: !139, file: !129, line: 479, type: !312)
!1356 = !DILocation(line: 479, column: 12, scope: !139)
!1357 = !DILocalVariable(name: "now", scope: !139, file: !129, line: 480, type: !77)
!1358 = !DILocation(line: 480, column: 9, scope: !139)
!1359 = !DILocation(line: 483, column: 8, scope: !139)
!1360 = !DILocation(line: 483, column: 6, scope: !139)
!1361 = !DILocation(line: 484, column: 2, scope: !139)
!1362 = !DILocation(line: 484, column: 14, scope: !139)
!1363 = !DILocation(line: 484, column: 2, scope: !1364)
!1364 = !DILexicalBlockFile(scope: !139, file: !129, discriminator: 1)
!1365 = !DILocation(line: 485, column: 9, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !139, file: !129, line: 485, column: 6)
!1367 = !DILocation(line: 485, column: 20, scope: !1366)
!1368 = !DILocation(line: 485, column: 17, scope: !1366)
!1369 = !DILocation(line: 485, column: 6, scope: !139)
!1370 = !DILocation(line: 486, column: 18, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1366, file: !129, line: 485, column: 31)
!1372 = !DILocation(line: 486, column: 13, scope: !1371)
!1373 = !DILocation(line: 487, column: 19, scope: !1371)
!1374 = !DILocation(line: 487, column: 3, scope: !1371)
!1375 = !DILocation(line: 488, column: 2, scope: !1371)
!1376 = !DILocation(line: 489, column: 2, scope: !139)
!1377 = distinct !DISubprogram(name: "read_settings", scope: !129, file: !129, line: 572, type: !1340, isLocal: true, isDefinition: true, scopeLine: 573, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !142)
!1378 = !DILocation(line: 574, column: 9, scope: !1377)
!1379 = !DILocation(line: 574, column: 2, scope: !1377)
!1380 = !DILocation(line: 575, column: 27, scope: !1377)
!1381 = !DILocation(line: 575, column: 18, scope: !1382)
!1382 = !DILexicalBlockFile(scope: !1377, file: !129, discriminator: 1)
!1383 = !DILocation(line: 575, column: 16, scope: !1377)
!1384 = !DILocation(line: 577, column: 35, scope: !1377)
!1385 = !DILocation(line: 577, column: 25, scope: !1382)
!1386 = !DILocation(line: 577, column: 23, scope: !1377)
!1387 = !DILocation(line: 578, column: 24, scope: !1377)
!1388 = !DILocation(line: 578, column: 22, scope: !1377)
!1389 = !DILocation(line: 579, column: 6, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1377, file: !129, line: 579, column: 6)
!1391 = !DILocation(line: 579, column: 27, scope: !1390)
!1392 = !DILocation(line: 579, column: 6, scope: !1377)
!1393 = !DILocation(line: 579, column: 55, scope: !1394)
!1394 = !DILexicalBlockFile(scope: !1390, file: !129, discriminator: 1)
!1395 = !DILocation(line: 579, column: 35, scope: !1394)
!1396 = !DILocation(line: 580, column: 6, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1377, file: !129, line: 580, column: 6)
!1398 = !DILocation(line: 580, column: 27, scope: !1397)
!1399 = !DILocation(line: 580, column: 6, scope: !1377)
!1400 = !DILocation(line: 580, column: 55, scope: !1401)
!1401 = !DILexicalBlockFile(scope: !1397, file: !129, discriminator: 1)
!1402 = !DILocation(line: 580, column: 35, scope: !1401)
!1403 = !DILocation(line: 581, column: 6, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1377, file: !129, line: 581, column: 6)
!1405 = !DILocation(line: 581, column: 27, scope: !1404)
!1406 = !DILocation(line: 581, column: 6, scope: !1377)
!1407 = !DILocation(line: 581, column: 55, scope: !1408)
!1408 = !DILexicalBlockFile(scope: !1404, file: !129, discriminator: 1)
!1409 = !DILocation(line: 581, column: 35, scope: !1408)
!1410 = !DILocation(line: 582, column: 1, scope: !1377)
!1411 = distinct !DISubprogram(name: "log_read_config", scope: !129, file: !129, line: 520, type: !1340, isLocal: true, isDefinition: true, scopeLine: 521, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !142)
!1412 = !DILocalVariable(name: "node", scope: !1411, file: !129, line: 522, type: !1165)
!1413 = !DILocation(line: 522, column: 15, scope: !1411)
!1414 = !DILocalVariable(name: "log", scope: !1411, file: !129, line: 523, type: !67)
!1415 = !DILocation(line: 523, column: 11, scope: !1411)
!1416 = !DILocalVariable(name: "tmp", scope: !1411, file: !129, line: 524, type: !84)
!1417 = !DILocation(line: 524, column: 10, scope: !1411)
!1418 = !DILocalVariable(name: "next", scope: !1411, file: !129, line: 524, type: !84)
!1419 = !DILocation(line: 524, column: 16, scope: !1411)
!1420 = !DILocalVariable(name: "fnames", scope: !1411, file: !129, line: 524, type: !84)
!1421 = !DILocation(line: 524, column: 23, scope: !1411)
!1422 = !DILocation(line: 527, column: 9, scope: !1411)
!1423 = !DILocation(line: 528, column: 13, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1411, file: !129, line: 528, column: 2)
!1425 = !DILocation(line: 528, column: 11, scope: !1424)
!1426 = !DILocation(line: 528, column: 7, scope: !1424)
!1427 = !DILocation(line: 528, column: 19, scope: !1428)
!1428 = !DILexicalBlockFile(scope: !1429, file: !129, discriminator: 1)
!1429 = distinct !DILexicalBlock(scope: !1424, file: !129, line: 528, column: 2)
!1430 = !DILocation(line: 528, column: 23, scope: !1428)
!1431 = !DILocation(line: 528, column: 2, scope: !1428)
!1432 = !DILocation(line: 529, column: 9, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1429, file: !129, line: 528, column: 43)
!1434 = !DILocation(line: 529, column: 14, scope: !1433)
!1435 = !DILocation(line: 529, column: 7, scope: !1433)
!1436 = !DILocation(line: 531, column: 10, scope: !1433)
!1437 = !DILocation(line: 531, column: 15, scope: !1433)
!1438 = !DILocation(line: 531, column: 8, scope: !1433)
!1439 = !DILocation(line: 532, column: 7, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !1433, file: !129, line: 532, column: 7)
!1441 = !DILocation(line: 532, column: 12, scope: !1440)
!1442 = !DILocation(line: 532, column: 7, scope: !1433)
!1443 = !DILocation(line: 533, column: 4, scope: !1440)
!1444 = !DILocation(line: 535, column: 7, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1433, file: !129, line: 535, column: 7)
!1446 = !DILocation(line: 535, column: 12, scope: !1445)
!1447 = !DILocation(line: 535, column: 19, scope: !1445)
!1448 = !DILocation(line: 535, column: 7, scope: !1433)
!1449 = !DILocation(line: 536, column: 28, scope: !1445)
!1450 = !DILocation(line: 536, column: 45, scope: !1445)
!1451 = !DILocation(line: 536, column: 50, scope: !1445)
!1452 = !DILocation(line: 536, column: 36, scope: !1445)
!1453 = !DILocation(line: 536, column: 13, scope: !1454)
!1454 = !DILexicalBlockFile(scope: !1445, file: !129, discriminator: 1)
!1455 = !DILocation(line: 536, column: 11, scope: !1445)
!1456 = !DILocation(line: 536, column: 4, scope: !1445)
!1457 = !DILocation(line: 537, column: 15, scope: !1433)
!1458 = !DILocation(line: 537, column: 3, scope: !1433)
!1459 = !DILocation(line: 538, column: 2, scope: !1433)
!1460 = !DILocation(line: 528, column: 37, scope: !1461)
!1461 = !DILexicalBlockFile(scope: !1429, file: !129, discriminator: 2)
!1462 = !DILocation(line: 528, column: 35, scope: !1461)
!1463 = !DILocation(line: 528, column: 2, scope: !1461)
!1464 = distinct !{!1464, !1465}
!1465 = !DILocation(line: 528, column: 2, scope: !1411)
!1466 = !DILocation(line: 540, column: 30, scope: !1411)
!1467 = !DILocation(line: 540, column: 9, scope: !1411)
!1468 = !DILocation(line: 540, column: 7, scope: !1411)
!1469 = !DILocation(line: 541, column: 6, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1411, file: !129, line: 541, column: 6)
!1471 = !DILocation(line: 541, column: 11, scope: !1470)
!1472 = !DILocation(line: 541, column: 6, scope: !1411)
!1473 = !DILocation(line: 541, column: 19, scope: !1474)
!1474 = !DILexicalBlockFile(scope: !1470, file: !129, discriminator: 1)
!1475 = !DILocation(line: 543, column: 26, scope: !1411)
!1476 = !DILocation(line: 543, column: 32, scope: !1411)
!1477 = !DILocation(line: 543, column: 8, scope: !1411)
!1478 = !DILocation(line: 543, column: 6, scope: !1411)
!1479 = !DILocation(line: 544, column: 2, scope: !1411)
!1480 = !DILocation(line: 544, column: 9, scope: !1481)
!1481 = !DILexicalBlockFile(scope: !1482, file: !129, discriminator: 1)
!1482 = distinct !DILexicalBlock(scope: !1483, file: !129, line: 544, column: 2)
!1483 = distinct !DILexicalBlock(scope: !1411, file: !129, line: 544, column: 2)
!1484 = !DILocation(line: 544, column: 13, scope: !1481)
!1485 = !DILocation(line: 544, column: 2, scope: !1481)
!1486 = !DILocation(line: 545, column: 10, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1482, file: !129, line: 544, column: 50)
!1488 = !DILocation(line: 545, column: 15, scope: !1487)
!1489 = !DILocation(line: 545, column: 8, scope: !1487)
!1490 = !DILocation(line: 547, column: 7, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1487, file: !129, line: 547, column: 7)
!1492 = !DILocation(line: 547, column: 13, scope: !1491)
!1493 = !DILocation(line: 547, column: 18, scope: !1491)
!1494 = !DILocation(line: 547, column: 7, scope: !1487)
!1495 = !DILocation(line: 548, column: 4, scope: !1491)
!1496 = !DILocation(line: 550, column: 22, scope: !1487)
!1497 = !DILocation(line: 550, column: 10, scope: !1487)
!1498 = !DILocation(line: 550, column: 7, scope: !1487)
!1499 = !DILocation(line: 551, column: 25, scope: !1487)
!1500 = !DILocation(line: 551, column: 31, scope: !1487)
!1501 = !DILocation(line: 551, column: 10, scope: !1487)
!1502 = !DILocation(line: 551, column: 8, scope: !1487)
!1503 = !DILocation(line: 553, column: 3, scope: !1487)
!1504 = !DILocation(line: 553, column: 8, scope: !1487)
!1505 = !DILocation(line: 553, column: 15, scope: !1487)
!1506 = !DILocation(line: 554, column: 25, scope: !1487)
!1507 = !DILocation(line: 554, column: 31, scope: !1487)
!1508 = !DILocation(line: 554, column: 16, scope: !1487)
!1509 = !DILocation(line: 554, column: 3, scope: !1487)
!1510 = !DILocation(line: 554, column: 8, scope: !1487)
!1511 = !DILocation(line: 554, column: 14, scope: !1487)
!1512 = !DILocation(line: 555, column: 40, scope: !1487)
!1513 = !DILocation(line: 555, column: 19, scope: !1487)
!1514 = !DILocation(line: 555, column: 3, scope: !1487)
!1515 = !DILocation(line: 555, column: 8, scope: !1487)
!1516 = !DILocation(line: 555, column: 17, scope: !1487)
!1517 = !DILocation(line: 556, column: 47, scope: !1487)
!1518 = !DILocation(line: 556, column: 27, scope: !1487)
!1519 = !DILocation(line: 556, column: 16, scope: !1520)
!1520 = !DILexicalBlockFile(scope: !1487, file: !129, discriminator: 1)
!1521 = !DILocation(line: 556, column: 3, scope: !1487)
!1522 = !DILocation(line: 556, column: 8, scope: !1487)
!1523 = !DILocation(line: 556, column: 14, scope: !1487)
!1524 = !DILocation(line: 558, column: 37, scope: !1487)
!1525 = !DILocation(line: 558, column: 42, scope: !1487)
!1526 = !DILocation(line: 558, column: 3, scope: !1487)
!1527 = !DILocation(line: 560, column: 30, scope: !1487)
!1528 = !DILocation(line: 560, column: 42, scope: !1487)
!1529 = !DILocation(line: 560, column: 10, scope: !1487)
!1530 = !DILocation(line: 560, column: 8, scope: !1487)
!1531 = !DILocation(line: 561, column: 7, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1487, file: !129, line: 561, column: 7)
!1533 = !DILocation(line: 561, column: 12, scope: !1532)
!1534 = !DILocation(line: 561, column: 7, scope: !1487)
!1535 = !DILocation(line: 562, column: 26, scope: !1532)
!1536 = !DILocation(line: 562, column: 32, scope: !1532)
!1537 = !DILocation(line: 562, column: 4, scope: !1532)
!1538 = !DILocation(line: 564, column: 7, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1487, file: !129, line: 564, column: 7)
!1540 = !DILocation(line: 564, column: 12, scope: !1539)
!1541 = !DILocation(line: 564, column: 21, scope: !1539)
!1542 = !DILocation(line: 564, column: 43, scope: !1543)
!1543 = !DILexicalBlockFile(scope: !1539, file: !129, discriminator: 1)
!1544 = !DILocation(line: 564, column: 51, scope: !1543)
!1545 = !DILocation(line: 564, column: 56, scope: !1543)
!1546 = !DILocation(line: 564, column: 24, scope: !1543)
!1547 = !DILocation(line: 564, column: 7, scope: !1543)
!1548 = !DILocation(line: 565, column: 22, scope: !1539)
!1549 = !DILocation(line: 565, column: 4, scope: !1539)
!1550 = !DILocation(line: 566, column: 2, scope: !1487)
!1551 = !DILocation(line: 544, column: 44, scope: !1552)
!1552 = !DILexicalBlockFile(scope: !1482, file: !129, discriminator: 2)
!1553 = !DILocation(line: 544, column: 27, scope: !1552)
!1554 = !DILocation(line: 544, column: 25, scope: !1552)
!1555 = !DILocation(line: 544, column: 2, scope: !1552)
!1556 = distinct !{!1556, !1479}
!1557 = !DILocation(line: 568, column: 18, scope: !1411)
!1558 = !DILocation(line: 568, column: 2, scope: !1411)
!1559 = !DILocation(line: 569, column: 15, scope: !1411)
!1560 = !DILocation(line: 569, column: 2, scope: !1411)
!1561 = !DILocation(line: 570, column: 1, scope: !1411)
!1562 = !DILocation(line: 570, column: 1, scope: !1563)
!1563 = !DILexicalBlockFile(scope: !1411, file: !129, discriminator: 1)
!1564 = distinct !DISubprogram(name: "log_deinit", scope: !129, file: !129, line: 605, type: !1340, isLocal: false, isDefinition: true, scopeLine: 606, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !142)
!1565 = !DILocation(line: 607, column: 18, scope: !1564)
!1566 = !DILocation(line: 607, column: 2, scope: !1564)
!1567 = !DILocation(line: 609, column: 2, scope: !1564)
!1568 = !DILocation(line: 609, column: 9, scope: !1569)
!1569 = !DILexicalBlockFile(scope: !1564, file: !129, discriminator: 1)
!1570 = !DILocation(line: 609, column: 14, scope: !1569)
!1571 = !DILocation(line: 609, column: 2, scope: !1569)
!1572 = !DILocation(line: 610, column: 13, scope: !1564)
!1573 = !DILocation(line: 610, column: 19, scope: !1564)
!1574 = !DILocation(line: 610, column: 3, scope: !1564)
!1575 = !DILocation(line: 609, column: 2, scope: !1576)
!1576 = !DILexicalBlockFile(scope: !1564, file: !129, discriminator: 2)
!1577 = distinct !{!1577, !1567}
!1578 = !DILocation(line: 612, column: 9, scope: !1564)
!1579 = !DILocation(line: 612, column: 2, scope: !1564)
!1580 = !DILocation(line: 614, column: 2, scope: !1564)
!1581 = !DILocation(line: 615, column: 2, scope: !1564)
!1582 = !DILocation(line: 616, column: 2, scope: !1564)
!1583 = !DILocation(line: 617, column: 1, scope: !1564)
!1584 = distinct !DISubprogram(name: "log_items_update_config", scope: !129, file: !129, line: 343, type: !1585, isLocal: true, isDefinition: true, scopeLine: 344, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !142)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{null, !67, !1165}
!1587 = !DILocalVariable(name: "log", arg: 1, scope: !1584, file: !129, line: 343, type: !67)
!1588 = !DILocation(line: 343, column: 46, scope: !1584)
!1589 = !DILocalVariable(name: "parent", arg: 2, scope: !1584, file: !129, line: 343, type: !1165)
!1590 = !DILocation(line: 343, column: 64, scope: !1584)
!1591 = !DILocalVariable(name: "tmp", scope: !1584, file: !129, line: 345, type: !84)
!1592 = !DILocation(line: 345, column: 10, scope: !1584)
!1593 = !DILocalVariable(name: "node", scope: !1584, file: !129, line: 346, type: !1165)
!1594 = !DILocation(line: 346, column: 15, scope: !1584)
!1595 = !DILocation(line: 348, column: 31, scope: !1584)
!1596 = !DILocation(line: 348, column: 43, scope: !1584)
!1597 = !DILocation(line: 348, column: 11, scope: !1584)
!1598 = !DILocation(line: 348, column: 9, scope: !1584)
!1599 = !DILocation(line: 349, column: 13, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1584, file: !129, line: 349, column: 2)
!1601 = !DILocation(line: 349, column: 18, scope: !1600)
!1602 = !DILocation(line: 349, column: 11, scope: !1600)
!1603 = !DILocation(line: 349, column: 7, scope: !1600)
!1604 = !DILocation(line: 349, column: 25, scope: !1605)
!1605 = !DILexicalBlockFile(scope: !1606, file: !129, discriminator: 1)
!1606 = distinct !DILexicalBlock(scope: !1600, file: !129, line: 349, column: 2)
!1607 = !DILocation(line: 349, column: 29, scope: !1605)
!1608 = !DILocation(line: 349, column: 2, scope: !1605)
!1609 = !DILocalVariable(name: "rec", scope: !1610, file: !129, line: 350, type: !102)
!1610 = distinct !DILexicalBlock(scope: !1606, file: !129, line: 349, column: 54)
!1611 = !DILocation(line: 350, column: 17, scope: !1610)
!1612 = !DILocation(line: 350, column: 23, scope: !1610)
!1613 = !DILocation(line: 350, column: 28, scope: !1610)
!1614 = !DILocation(line: 352, column: 44, scope: !1610)
!1615 = !DILocation(line: 352, column: 56, scope: !1610)
!1616 = !DILocation(line: 352, column: 24, scope: !1610)
!1617 = !DILocation(line: 352, column: 22, scope: !1610)
!1618 = !DILocation(line: 353, column: 23, scope: !1610)
!1619 = !DILocation(line: 353, column: 35, scope: !1610)
!1620 = !DILocation(line: 353, column: 64, scope: !1610)
!1621 = !DILocation(line: 353, column: 69, scope: !1610)
!1622 = !DILocation(line: 353, column: 49, scope: !1610)
!1623 = !DILocation(line: 353, column: 3, scope: !1610)
!1624 = !DILocation(line: 354, column: 23, scope: !1610)
!1625 = !DILocation(line: 354, column: 35, scope: !1610)
!1626 = !DILocation(line: 354, column: 49, scope: !1610)
!1627 = !DILocation(line: 354, column: 54, scope: !1610)
!1628 = !DILocation(line: 354, column: 3, scope: !1610)
!1629 = !DILocation(line: 355, column: 23, scope: !1610)
!1630 = !DILocation(line: 355, column: 35, scope: !1610)
!1631 = !DILocation(line: 355, column: 51, scope: !1610)
!1632 = !DILocation(line: 355, column: 56, scope: !1610)
!1633 = !DILocation(line: 355, column: 3, scope: !1610)
!1634 = !DILocation(line: 356, column: 2, scope: !1610)
!1635 = !DILocation(line: 349, column: 43, scope: !1636)
!1636 = !DILexicalBlockFile(scope: !1606, file: !129, discriminator: 2)
!1637 = !DILocation(line: 349, column: 48, scope: !1636)
!1638 = !DILocation(line: 349, column: 41, scope: !1636)
!1639 = !DILocation(line: 349, column: 2, scope: !1636)
!1640 = distinct !{!1640, !1641}
!1641 = !DILocation(line: 349, column: 2, scope: !1584)
!1642 = !DILocation(line: 357, column: 1, scope: !1584)
!1643 = distinct !DISubprogram(name: "log_items_read_config", scope: !129, file: !129, line: 492, type: !1644, isLocal: true, isDefinition: true, scopeLine: 493, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !142)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{null, !1165, !67}
!1646 = !DILocalVariable(name: "node", arg: 1, scope: !1643, file: !129, line: 492, type: !1165)
!1647 = !DILocation(line: 492, column: 48, scope: !1643)
!1648 = !DILocalVariable(name: "log", arg: 2, scope: !1643, file: !129, line: 492, type: !67)
!1649 = !DILocation(line: 492, column: 63, scope: !1643)
!1650 = !DILocalVariable(name: "rec", scope: !1643, file: !129, line: 494, type: !102)
!1651 = !DILocation(line: 494, column: 16, scope: !1643)
!1652 = !DILocalVariable(name: "tmp", scope: !1643, file: !129, line: 495, type: !84)
!1653 = !DILocation(line: 495, column: 10, scope: !1643)
!1654 = !DILocalVariable(name: "item", scope: !1643, file: !129, line: 496, type: !72)
!1655 = !DILocation(line: 496, column: 8, scope: !1643)
!1656 = !DILocalVariable(name: "type", scope: !1643, file: !129, line: 497, type: !75)
!1657 = !DILocation(line: 497, column: 6, scope: !1643)
!1658 = !DILocation(line: 499, column: 26, scope: !1643)
!1659 = !DILocation(line: 499, column: 32, scope: !1643)
!1660 = !DILocation(line: 499, column: 8, scope: !1643)
!1661 = !DILocation(line: 499, column: 6, scope: !1643)
!1662 = !DILocation(line: 500, column: 2, scope: !1643)
!1663 = !DILocation(line: 500, column: 9, scope: !1664)
!1664 = !DILexicalBlockFile(scope: !1665, file: !129, discriminator: 1)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !129, line: 500, column: 2)
!1666 = distinct !DILexicalBlock(scope: !1643, file: !129, line: 500, column: 2)
!1667 = !DILocation(line: 500, column: 13, scope: !1664)
!1668 = !DILocation(line: 500, column: 2, scope: !1664)
!1669 = !DILocation(line: 501, column: 10, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1665, file: !129, line: 500, column: 50)
!1671 = !DILocation(line: 501, column: 15, scope: !1670)
!1672 = !DILocation(line: 501, column: 8, scope: !1670)
!1673 = !DILocation(line: 503, column: 7, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1670, file: !129, line: 503, column: 7)
!1675 = !DILocation(line: 503, column: 13, scope: !1674)
!1676 = !DILocation(line: 503, column: 18, scope: !1674)
!1677 = !DILocation(line: 503, column: 7, scope: !1670)
!1678 = !DILocation(line: 504, column: 4, scope: !1674)
!1679 = !DILocation(line: 506, column: 30, scope: !1670)
!1680 = !DILocation(line: 506, column: 10, scope: !1670)
!1681 = !DILocation(line: 506, column: 8, scope: !1670)
!1682 = !DILocation(line: 507, column: 48, scope: !1670)
!1683 = !DILocation(line: 507, column: 28, scope: !1670)
!1684 = !DILocation(line: 507, column: 10, scope: !1685)
!1685 = !DILexicalBlockFile(scope: !1670, file: !129, discriminator: 1)
!1686 = !DILocation(line: 507, column: 8, scope: !1670)
!1687 = !DILocation(line: 508, column: 7, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1670, file: !129, line: 508, column: 7)
!1689 = !DILocation(line: 508, column: 12, scope: !1688)
!1690 = !DILocation(line: 508, column: 19, scope: !1688)
!1691 = !DILocation(line: 508, column: 22, scope: !1692)
!1692 = !DILexicalBlockFile(scope: !1688, file: !129, discriminator: 1)
!1693 = !DILocation(line: 508, column: 27, scope: !1692)
!1694 = !DILocation(line: 508, column: 7, scope: !1692)
!1695 = !DILocation(line: 509, column: 4, scope: !1688)
!1696 = !DILocation(line: 511, column: 27, scope: !1670)
!1697 = !DILocation(line: 511, column: 10, scope: !1670)
!1698 = !DILocation(line: 511, column: 7, scope: !1670)
!1699 = !DILocation(line: 512, column: 15, scope: !1670)
!1700 = !DILocation(line: 512, column: 3, scope: !1670)
!1701 = !DILocation(line: 512, column: 8, scope: !1670)
!1702 = !DILocation(line: 512, column: 13, scope: !1670)
!1703 = !DILocation(line: 513, column: 24, scope: !1670)
!1704 = !DILocation(line: 513, column: 15, scope: !1670)
!1705 = !DILocation(line: 513, column: 3, scope: !1670)
!1706 = !DILocation(line: 513, column: 8, scope: !1670)
!1707 = !DILocation(line: 513, column: 13, scope: !1670)
!1708 = !DILocation(line: 514, column: 49, scope: !1670)
!1709 = !DILocation(line: 514, column: 29, scope: !1670)
!1710 = !DILocation(line: 514, column: 20, scope: !1685)
!1711 = !DILocation(line: 514, column: 3, scope: !1670)
!1712 = !DILocation(line: 514, column: 8, scope: !1670)
!1713 = !DILocation(line: 514, column: 18, scope: !1670)
!1714 = !DILocation(line: 516, column: 31, scope: !1670)
!1715 = !DILocation(line: 516, column: 36, scope: !1670)
!1716 = !DILocation(line: 516, column: 43, scope: !1670)
!1717 = !DILocation(line: 516, column: 16, scope: !1670)
!1718 = !DILocation(line: 516, column: 3, scope: !1670)
!1719 = !DILocation(line: 516, column: 8, scope: !1670)
!1720 = !DILocation(line: 516, column: 14, scope: !1670)
!1721 = !DILocation(line: 517, column: 2, scope: !1670)
!1722 = !DILocation(line: 500, column: 44, scope: !1723)
!1723 = !DILexicalBlockFile(scope: !1665, file: !129, discriminator: 2)
!1724 = !DILocation(line: 500, column: 27, scope: !1723)
!1725 = !DILocation(line: 500, column: 25, scope: !1723)
!1726 = !DILocation(line: 500, column: 2, scope: !1723)
!1727 = distinct !{!1727, !1662}
!1728 = !DILocation(line: 518, column: 1, scope: !1643)
!1729 = distinct !DISubprogram(name: "log_item_str2type", scope: !129, file: !129, line: 52, type: !1730, isLocal: true, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !142)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{!75, !65}
!1732 = !DILocalVariable(name: "type", arg: 1, scope: !1729, file: !129, line: 52, type: !65)
!1733 = !DILocation(line: 52, column: 42, scope: !1729)
!1734 = !DILocalVariable(name: "n", scope: !1729, file: !129, line: 54, type: !75)
!1735 = !DILocation(line: 54, column: 6, scope: !1729)
!1736 = !DILocation(line: 56, column: 9, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1729, file: !129, line: 56, column: 2)
!1738 = !DILocation(line: 56, column: 7, scope: !1737)
!1739 = !DILocation(line: 56, column: 29, scope: !1740)
!1740 = !DILexicalBlockFile(scope: !1741, file: !129, discriminator: 1)
!1741 = distinct !DILexicalBlock(scope: !1737, file: !129, line: 56, column: 2)
!1742 = !DILocation(line: 56, column: 14, scope: !1740)
!1743 = !DILocation(line: 56, column: 32, scope: !1740)
!1744 = !DILocation(line: 56, column: 2, scope: !1740)
!1745 = !DILocation(line: 57, column: 41, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1747, file: !129, line: 57, column: 7)
!1747 = distinct !DILexicalBlock(scope: !1741, file: !129, line: 56, column: 45)
!1748 = !DILocation(line: 57, column: 26, scope: !1746)
!1749 = !DILocation(line: 57, column: 45, scope: !1746)
!1750 = !DILocation(line: 57, column: 7, scope: !1746)
!1751 = !DILocation(line: 57, column: 51, scope: !1746)
!1752 = !DILocation(line: 57, column: 7, scope: !1747)
!1753 = !DILocation(line: 58, column: 11, scope: !1746)
!1754 = !DILocation(line: 58, column: 4, scope: !1746)
!1755 = !DILocation(line: 59, column: 2, scope: !1747)
!1756 = !DILocation(line: 56, column: 41, scope: !1757)
!1757 = !DILexicalBlockFile(scope: !1741, file: !129, discriminator: 2)
!1758 = !DILocation(line: 56, column: 2, scope: !1757)
!1759 = distinct !{!1759, !1760}
!1760 = !DILocation(line: 56, column: 2, scope: !1729)
!1761 = !DILocation(line: 61, column: 2, scope: !1729)
!1762 = !DILocation(line: 62, column: 1, scope: !1729)
