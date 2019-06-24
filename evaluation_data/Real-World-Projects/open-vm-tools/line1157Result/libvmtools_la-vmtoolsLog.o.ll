; ModuleID = './libvmtools_la-vmtoolsLog.o.i'
source_filename = "./libvmtools_la-vmtoolsLog.o.i"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.LogHandler = type { %struct.GlibLogger*, i8*, i8*, i32, i32, i32, i32, i32, i8* }
%struct.GlibLogger = type { i32, i32, void (i8*, i32, i8*, i8*)*, void (i8*)* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._GStaticRecMutex = type { %struct.GStaticMutex, i32, %union.anon }
%struct.GStaticMutex = type { %union._GMutex*, %union.pthread_mutex_t }
%union._GMutex = type { i8* }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { %struct.__pthread_internal_list*, %struct.__pthread_internal_list* }
%union.anon = type { i64 }
%struct._GPtrArray = type { i8**, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GDateTime = type opaque
%struct._GKeyFile = type opaque
%struct._GError = type { i32, i32, i8* }
%struct.LogEntry = type { i8*, i8*, %struct.LogHandler*, i32 }
%struct.rlimit = type { i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c"%FT%T\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%s.%03dZ\00", align 1
@VMTools_ConfigLogToStdio.gStdLogHandler = internal global %struct.LogHandler* null, align 8
@__func__.VMTools_ConfigLogToStdio = private unnamed_addr constant [25 x i8] c"VMTools_ConfigLogToStdio\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"gStdLogHandler == NULL\00", align 1
@gLogDomain = internal global i8* null, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"std\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [38 x i8] c"Failed to create the STD log handler\0A\00", align 1
@gLogInitialized = internal global i32 0, align 4
@gLogStateMutex = internal global %struct._GStaticRecMutex zeroinitializer, align 8
@gLogEnabled = internal global i32 0, align 4
@__func__.VMTools_ConfigLogging = private unnamed_addr constant [22 x i8] c"VMTools_ConfigLogging\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"defaultDomain != NULL\00", align 1
@gDefaultData = internal global %struct.LogHandler* null, align 8
@gDomains = internal global %struct._GPtrArray* null, align 8
@gErrorData = internal global %struct.LogHandler* null, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c"syslog\00", align 1
@gErrorSyslog = internal global %struct.LogHandler* null, align 8
@.str.7 = private unnamed_addr constant [8 x i8] c"logging\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c".level\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"maxCacheEntries\00", align 1
@gMaxCacheEntries = internal global i32 4096, align 4
@.str.11 = private unnamed_addr constant [49 x i8] c"Invalid value for maxCacheEntries key: Error %d.\00", align 1
@.str.12 = private unnamed_addr constant [48 x i8] c"Log caching is enabled with maxCacheEntries=%d.\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"Log caching is disabled.\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"enableCoreDump\00", align 1
@gEnableCoreDump = internal global i32 1, align 4
@.str.15 = private unnamed_addr constant [12 x i8] c"maxCoreSize\00", align 1
@.str.16 = private unnamed_addr constant [51 x i8] c"Failed to set core dump size limit, error %d (%s)\0A\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"Core dump limit set to %d\00", align 1
@gLoggingStopped = internal global i32 0, align 4
@gLogIOSuspended = internal global i32 0, align 4
@gCachedLogs = internal global %struct._GPtrArray* null, align 8
@.str.18 = private unnamed_addr constant [58 x i8] c"Flushed %u log messages from cache after resuming log IO.\00", align 1
@gDroppedLogCount = internal global i32 0, align 4
@.str.19 = private unnamed_addr constant [36 x i8] c"Dropped %u log messages from cache.\00", align 1
@gGuestSDKMode = internal global i32 0, align 4
@gPanicCount = internal global i32 0, align 4
@.str.20 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"Recursive panic: %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"Recursive panic, giving up.\0A\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"%s.data\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"file+\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"%s.maxLogSize\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"%s.maxOldLogFiles\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"Missing path for domain '%s'.\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"vmx\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"%s.facility\00", align 1
@.str.32 = private unnamed_addr constant [36 x i8] c"Invalid handler for domain '%s': %s\00", align 1
@.str.33 = private unnamed_addr constant [44 x i8] c"Failed to create a logger for handler: '%s'\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"<null>\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"critical\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"warning\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.42 = private unnamed_addr constant [23 x i8] c"[%s] [%8s] [%s:%s] %s\0A\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"no time\00", align 1
@.str.44 = private unnamed_addr constant [20 x i8] c"[%s] [%8s] [%s] %s\0A\00", align 1
@.str.45 = private unnamed_addr constant [33 x i8] c"[cached at %s] [%8s] [%s:%s] %s\0A\00", align 1
@.str.46 = private unnamed_addr constant [30 x i8] c"[cached at %s] [%8s] [%s] %s\0A\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"[%8s] [%s:%s] %s\0A\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"[%8s] [%s] %s\0A\00", align 1
@.str.49 = private unnamed_addr constant [26 x i8] c"Domain name too long: %s\0A\00", align 1
@.str.50 = private unnamed_addr constant [43 x i8] c"Invalid domain declaration, missing name.\0A\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"%s.level\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"%s.handler\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.54 = private unnamed_addr constant [28 x i8] c"Unknown log level (%s): %s\0A\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"%s-%s.log\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c"/var/log/vmware\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.58 = private unnamed_addr constant [30 x i8] c"Invalid path for domain '%s'.\00", align 1

; Function Attrs: nounwind uwtable
define i32 @VMToolsAsprintf(i8**, i8*, ...) #0 !dbg !188 {
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  store i8** %0, i8*** %3, align 8
  call void @llvm.dbg.declare(metadata i8*** %3, metadata !192, metadata !193), !dbg !194
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !195, metadata !193), !dbg !196
  call void @llvm.dbg.declare(metadata i32* %5, metadata !197, metadata !193), !dbg !198
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %6, metadata !199, metadata !193), !dbg !213
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i32 0, i32 0, !dbg !214
  %8 = bitcast %struct.__va_list_tag* %7 to i8*, !dbg !214
  call void @llvm.va_start(i8* %8), !dbg !214
  %9 = load i8**, i8*** %3, align 8, !dbg !215
  %10 = load i8*, i8** %4, align 8, !dbg !216
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i32 0, i32 0, !dbg !217
  %12 = call i32 @g_vasprintf(i8** %9, i8* %10, %struct.__va_list_tag* %11), !dbg !218
  store i32 %12, i32* %5, align 4, !dbg !219
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %6, i32 0, i32 0, !dbg !220
  %14 = bitcast %struct.__va_list_tag* %13 to i8*, !dbg !220
  call void @llvm.va_end(i8* %14), !dbg !220
  %15 = load i32, i32* %5, align 4, !dbg !221
  ret i32 %15, !dbg !222
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

declare i32 @g_vasprintf(i8**, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

; Function Attrs: nounwind uwtable
define i8* @VMTools_GetTimeAsString() #0 !dbg !223 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct._GDateTime*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i8** %1, metadata !226, metadata !193), !dbg !227
  store i8* null, i8** %1, align 8, !dbg !227
  call void @llvm.dbg.declare(metadata %struct._GDateTime** %2, metadata !228, metadata !193), !dbg !233
  %5 = call %struct._GDateTime* @g_date_time_new_now_utc(), !dbg !234
  store %struct._GDateTime* %5, %struct._GDateTime** %2, align 8, !dbg !233
  %6 = load %struct._GDateTime*, %struct._GDateTime** %2, align 8, !dbg !235
  %7 = icmp ne %struct._GDateTime* %6, null, !dbg !237
  br i1 %7, label %8, label %23, !dbg !238

; <label>:8:                                      ; preds = %0
  call void @llvm.dbg.declare(metadata i8** %3, metadata !239, metadata !193), !dbg !241
  %9 = load %struct._GDateTime*, %struct._GDateTime** %2, align 8, !dbg !242
  %10 = call noalias i8* @g_date_time_format(%struct._GDateTime* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0)), !dbg !243
  store i8* %10, i8** %3, align 8, !dbg !241
  %11 = load i8*, i8** %3, align 8, !dbg !244
  %12 = icmp ne i8* %11, null, !dbg !246
  br i1 %12, label %13, label %21, !dbg !247

; <label>:13:                                     ; preds = %8
  call void @llvm.dbg.declare(metadata i32* %4, metadata !248, metadata !193), !dbg !250
  %14 = load %struct._GDateTime*, %struct._GDateTime** %2, align 8, !dbg !251
  %15 = call i32 @g_date_time_get_microsecond(%struct._GDateTime* %14), !dbg !252
  %16 = sdiv i32 %15, 1000, !dbg !253
  store i32 %16, i32* %4, align 4, !dbg !250
  %17 = load i8*, i8** %3, align 8, !dbg !254
  %18 = load i32, i32* %4, align 4, !dbg !255
  %19 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* %17, i32 %18), !dbg !256
  store i8* %19, i8** %1, align 8, !dbg !257
  %20 = load i8*, i8** %3, align 8, !dbg !258
  call void @g_free(i8* %20), !dbg !259
  store i8* null, i8** %3, align 8, !dbg !260
  br label %21, !dbg !261

; <label>:21:                                     ; preds = %13, %8
  %22 = load %struct._GDateTime*, %struct._GDateTime** %2, align 8, !dbg !262
  call void @g_date_time_unref(%struct._GDateTime* %22), !dbg !263
  br label %23, !dbg !264

; <label>:23:                                     ; preds = %21, %0
  %24 = load i8*, i8** %1, align 8, !dbg !265
  ret i8* %24, !dbg !266
}

declare %struct._GDateTime* @g_date_time_new_now_utc() #3

declare noalias i8* @g_date_time_format(%struct._GDateTime*, i8*) #3

declare i32 @g_date_time_get_microsecond(%struct._GDateTime*) #3

declare noalias i8* @g_strdup_printf(i8*, ...) #3

declare void @g_free(i8*) #3

declare void @g_date_time_unref(%struct._GDateTime*) #3

; Function Attrs: nounwind uwtable
define void @VMTools_ConfigLogToStdio(i8*) #0 !dbg !100 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._GKeyFile*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !267, metadata !193), !dbg !268
  call void @llvm.dbg.declare(metadata %struct._GKeyFile** %3, metadata !269, metadata !193), !dbg !273
  br label %4, !dbg !274, !llvm.loop !275

; <label>:4:                                      ; preds = %1
  %5 = load %struct.LogHandler*, %struct.LogHandler** @VMTools_ConfigLogToStdio.gStdLogHandler, align 8, !dbg !276
  %6 = icmp eq %struct.LogHandler* %5, null, !dbg !280
  br i1 %6, label %7, label %8, !dbg !276

; <label>:7:                                      ; preds = %4
  br label %9, !dbg !281

; <label>:8:                                      ; preds = %4
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.VMTools_ConfigLogToStdio, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0)), !dbg !284
  br label %33, !dbg !287

; <label>:9:                                      ; preds = %7
  br label %10, !dbg !288

; <label>:10:                                     ; preds = %9
  %11 = load i8*, i8** %2, align 8, !dbg !290
  %12 = call noalias i8* @g_strdup(i8* %11), !dbg !291
  store i8* %12, i8** @gLogDomain, align 8, !dbg !292
  %13 = call %struct._GKeyFile* @g_key_file_new(), !dbg !293
  store %struct._GKeyFile* %13, %struct._GKeyFile** %3, align 8, !dbg !294
  %14 = load i8*, i8** @gLogDomain, align 8, !dbg !295
  %15 = load %struct._GKeyFile*, %struct._GKeyFile** %3, align 8, !dbg !296
  %16 = call %struct.LogHandler* @VMToolsGetLogHandler(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* %14, i32 -1, %struct._GKeyFile* %15), !dbg !297
  store %struct.LogHandler* %16, %struct.LogHandler** @VMTools_ConfigLogToStdio.gStdLogHandler, align 8, !dbg !298
  %17 = load %struct.LogHandler*, %struct.LogHandler** @VMTools_ConfigLogToStdio.gStdLogHandler, align 8, !dbg !299
  %18 = icmp ne %struct.LogHandler* %17, null, !dbg !299
  br i1 %18, label %22, label %19, !dbg !301

; <label>:19:                                     ; preds = %10
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !302
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i32 0, i32 0)), !dbg !304
  br label %31, !dbg !305

; <label>:22:                                     ; preds = %10
  %23 = load i8*, i8** @gLogDomain, align 8, !dbg !306
  %24 = load %struct.LogHandler*, %struct.LogHandler** @VMTools_ConfigLogToStdio.gStdLogHandler, align 8, !dbg !307
  %25 = bitcast %struct.LogHandler* %24 to i8*, !dbg !307
  %26 = call i32 @g_log_set_handler(i8* %23, i32 -1, void (i8*, i32, i8*, i8*)* @VMToolsLog, i8* %25), !dbg !308
  %27 = load i32, i32* @gLogInitialized, align 4, !dbg !309
  %28 = icmp ne i32 %27, 0, !dbg !309
  br i1 %28, label %30, label %29, !dbg !311

; <label>:29:                                     ; preds = %22
  store i32 1, i32* @gLogInitialized, align 4, !dbg !312
  call void @g_static_rec_mutex_init(%struct._GStaticRecMutex* @gLogStateMutex), !dbg !314
  br label %30, !dbg !315

; <label>:30:                                     ; preds = %29, %22
  store i32 1, i32* @gLogEnabled, align 4, !dbg !316
  br label %31, !dbg !317

; <label>:31:                                     ; preds = %30, %19
  %32 = load %struct._GKeyFile*, %struct._GKeyFile** %3, align 8, !dbg !318
  call void @g_key_file_free(%struct._GKeyFile* %32), !dbg !319
  br label %33, !dbg !320

; <label>:33:                                     ; preds = %31, %8
  ret void, !dbg !321
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare noalias i8* @g_strdup(i8*) #3

declare %struct._GKeyFile* @g_key_file_new() #3

; Function Attrs: nounwind uwtable
define internal %struct.LogHandler* @VMToolsGetLogHandler(i8*, i8*, i32, %struct._GKeyFile*) #0 !dbg !323 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._GKeyFile*, align 8
  %9 = alloca %struct.LogHandler*, align 8
  %10 = alloca %struct.GlibLogger*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [128 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct._GError*, align 8
  %19 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !326, metadata !193), !dbg !327
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !328, metadata !193), !dbg !329
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !330, metadata !193), !dbg !331
  store %struct._GKeyFile* %3, %struct._GKeyFile** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._GKeyFile** %8, metadata !332, metadata !193), !dbg !333
  call void @llvm.dbg.declare(metadata %struct.LogHandler** %9, metadata !334, metadata !193), !dbg !335
  call void @llvm.dbg.declare(metadata %struct.GlibLogger** %10, metadata !336, metadata !193), !dbg !337
  store %struct.GlibLogger* null, %struct.GlibLogger** %10, align 8, !dbg !337
  call void @llvm.dbg.declare(metadata i32* %11, metadata !338, metadata !193), !dbg !339
  store i32 0, i32* %11, align 4, !dbg !339
  call void @llvm.dbg.declare(metadata [128 x i8]* %12, metadata !340, metadata !193), !dbg !344
  call void @llvm.dbg.declare(metadata i32* %13, metadata !345, metadata !193), !dbg !346
  store i32 0, i32* %13, align 4, !dbg !346
  call void @llvm.dbg.declare(metadata i8** %14, metadata !347, metadata !193), !dbg !348
  store i8* null, i8** %14, align 8, !dbg !348
  %20 = load i8*, i8** %5, align 8, !dbg !349
  %21 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0)) #11, !dbg !351
  %22 = icmp eq i32 %21, 0, !dbg !352
  br i1 %22, label %27, label %23, !dbg !353

; <label>:23:                                     ; preds = %4
  %24 = load i8*, i8** %5, align 8, !dbg !354
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0)) #11, !dbg !356
  %26 = icmp eq i32 %25, 0, !dbg !357
  br i1 %26, label %27, label %70, !dbg !358

; <label>:27:                                     ; preds = %23, %4
  call void @llvm.dbg.declare(metadata i32* %15, metadata !359, metadata !193), !dbg !361
  %28 = load i8*, i8** %5, align 8, !dbg !362
  %29 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0)) #11, !dbg !363
  %30 = icmp eq i32 %29, 0, !dbg !364
  %31 = zext i1 %30 to i32, !dbg !364
  store i32 %31, i32* %15, align 4, !dbg !361
  call void @llvm.dbg.declare(metadata i32* %16, metadata !365, metadata !193), !dbg !366
  call void @llvm.dbg.declare(metadata i32* %17, metadata !367, metadata !193), !dbg !368
  call void @llvm.dbg.declare(metadata %struct._GError** %18, metadata !369, metadata !193), !dbg !382
  store %struct._GError* null, %struct._GError** %18, align 8, !dbg !382
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i8** %5, align 8, !dbg !383
  %32 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i32 0, i32 0, !dbg !384
  %33 = load i8*, i8** %6, align 8, !dbg !385
  %34 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %32, i64 128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i8* %33), !dbg !386
  %35 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i32 0, i32 0, !dbg !387
  %36 = load i8*, i8** %6, align 8, !dbg !388
  %37 = load %struct._GKeyFile*, %struct._GKeyFile** %8, align 8, !dbg !389
  %38 = call i8* @VMToolsGetLogFilePath(i8* %35, i8* %36, %struct._GKeyFile* %37), !dbg !390
  store i8* %38, i8** %14, align 8, !dbg !391
  %39 = load i8*, i8** %14, align 8, !dbg !392
  %40 = icmp ne i8* %39, null, !dbg !394
  br i1 %40, label %41, label %67, !dbg !395

; <label>:41:                                     ; preds = %27
  %42 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i32 0, i32 0, !dbg !396
  %43 = load i8*, i8** %6, align 8, !dbg !398
  %44 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %42, i64 128, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0), i8* %43), !dbg !399
  %45 = load %struct._GKeyFile*, %struct._GKeyFile** %8, align 8, !dbg !400
  %46 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i32 0, i32 0, !dbg !401
  %47 = call i32 @g_key_file_get_integer(%struct._GKeyFile* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* %46, %struct._GError** %18), !dbg !402
  store i32 %47, i32* %16, align 4, !dbg !403
  %48 = load %struct._GError*, %struct._GError** %18, align 8, !dbg !404
  %49 = icmp ne %struct._GError* %48, null, !dbg !406
  br i1 %49, label %50, label %51, !dbg !407

; <label>:50:                                     ; preds = %41
  call void @g_clear_error(%struct._GError** %18), !dbg !408
  store i32 5, i32* %16, align 4, !dbg !410
  br label %51, !dbg !411

; <label>:51:                                     ; preds = %50, %41
  %52 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i32 0, i32 0, !dbg !412
  %53 = load i8*, i8** %6, align 8, !dbg !413
  %54 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %52, i64 128, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0), i8* %53), !dbg !414
  %55 = load %struct._GKeyFile*, %struct._GKeyFile** %8, align 8, !dbg !415
  %56 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i32 0, i32 0, !dbg !416
  %57 = call i32 @g_key_file_get_integer(%struct._GKeyFile* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* %56, %struct._GError** %18), !dbg !417
  store i32 %57, i32* %17, align 4, !dbg !418
  %58 = load %struct._GError*, %struct._GError** %18, align 8, !dbg !419
  %59 = icmp ne %struct._GError* %58, null, !dbg !421
  br i1 %59, label %60, label %61, !dbg !422

; <label>:60:                                     ; preds = %51
  call void @g_clear_error(%struct._GError** %18), !dbg !423
  store i32 10, i32* %17, align 4, !dbg !425
  br label %61, !dbg !426

; <label>:61:                                     ; preds = %60, %51
  %62 = load i8*, i8** %14, align 8, !dbg !427
  %63 = load i32, i32* %15, align 4, !dbg !428
  %64 = load i32, i32* %16, align 4, !dbg !429
  %65 = load i32, i32* %17, align 4, !dbg !430
  %66 = call %struct.GlibLogger* @GlibUtils_CreateFileLogger(i8* %62, i32 %63, i32 %64, i32 %65), !dbg !431
  store %struct.GlibLogger* %66, %struct.GlibLogger** %10, align 8, !dbg !432
  store i32 1, i32* %11, align 4, !dbg !433
  br label %69, !dbg !434

; <label>:67:                                     ; preds = %27
  %68 = load i8*, i8** %6, align 8, !dbg !435
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.29, i32 0, i32 0), i8* %68), !dbg !437
  br label %69

; <label>:69:                                     ; preds = %67, %61
  br label %103, !dbg !438

; <label>:70:                                     ; preds = %23
  %71 = load i8*, i8** %5, align 8, !dbg !439
  %72 = call i32 @strcmp(i8* %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)) #11, !dbg !442
  %73 = icmp eq i32 %72, 0, !dbg !443
  br i1 %73, label %74, label %76, !dbg !442

; <label>:74:                                     ; preds = %70
  %75 = call %struct.GlibLogger* @GlibUtils_CreateStdLogger(), !dbg !444
  store %struct.GlibLogger* %75, %struct.GlibLogger** %10, align 8, !dbg !446
  store i32 0, i32* %11, align 4, !dbg !447
  br label %102, !dbg !448

; <label>:76:                                     ; preds = %70
  %77 = load i8*, i8** %5, align 8, !dbg !449
  %78 = call i32 @strcmp(i8* %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0)) #11, !dbg !452
  %79 = icmp eq i32 %78, 0, !dbg !453
  br i1 %79, label %80, label %82, !dbg !452

; <label>:80:                                     ; preds = %76
  %81 = call %struct.GlibLogger* @VMToolsCreateVMXLogger(), !dbg !454
  store %struct.GlibLogger* %81, %struct.GlibLogger** %10, align 8, !dbg !456
  store i32 0, i32* %11, align 4, !dbg !457
  br label %101, !dbg !458

; <label>:82:                                     ; preds = %76
  %83 = load i8*, i8** %5, align 8, !dbg !459
  %84 = call i32 @strcmp(i8* %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0)) #11, !dbg !462
  %85 = icmp eq i32 %84, 0, !dbg !463
  br i1 %85, label %86, label %97, !dbg !462

; <label>:86:                                     ; preds = %82
  call void @llvm.dbg.declare(metadata i8** %19, metadata !464, metadata !193), !dbg !466
  %87 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i32 0, i32 0, !dbg !467
  %88 = load i8*, i8** @gLogDomain, align 8, !dbg !468
  %89 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %87, i64 128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i32 0, i32 0), i8* %88), !dbg !469
  %90 = load %struct._GKeyFile*, %struct._GKeyFile** %8, align 8, !dbg !470
  %91 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i32 0, i32 0, !dbg !471
  %92 = call noalias i8* @g_key_file_get_string(%struct._GKeyFile* %90, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* %91, %struct._GError** null), !dbg !472
  store i8* %92, i8** %19, align 8, !dbg !473
  %93 = load i8*, i8** %6, align 8, !dbg !474
  %94 = load i8*, i8** %19, align 8, !dbg !475
  %95 = call %struct.GlibLogger* @GlibUtils_CreateSysLogger(i8* %93, i8* %94), !dbg !476
  store %struct.GlibLogger* %95, %struct.GlibLogger** %10, align 8, !dbg !477
  store i32 1, i32* %11, align 4, !dbg !478
  %96 = load i8*, i8** %19, align 8, !dbg !479
  call void @g_free(i8* %96), !dbg !480
  store i32 1, i32* %13, align 4, !dbg !481
  br label %100, !dbg !482

; <label>:97:                                     ; preds = %82
  %98 = load i8*, i8** %6, align 8, !dbg !483
  %99 = load i8*, i8** %5, align 8, !dbg !485
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.32, i32 0, i32 0), i8* %98, i8* %99), !dbg !486
  br label %100

; <label>:100:                                    ; preds = %97, %86
  br label %101

; <label>:101:                                    ; preds = %100, %80
  br label %102

; <label>:102:                                    ; preds = %101, %74
  br label %103

; <label>:103:                                    ; preds = %102, %69
  %104 = load %struct.GlibLogger*, %struct.GlibLogger** %10, align 8, !dbg !487
  %105 = icmp eq %struct.GlibLogger* null, %104, !dbg !489
  br i1 %105, label %106, label %108, !dbg !490

; <label>:106:                                    ; preds = %103
  %107 = load i8*, i8** %5, align 8, !dbg !491
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.33, i32 0, i32 0), i8* %107), !dbg !493
  br label %108, !dbg !494

; <label>:108:                                    ; preds = %106, %103
  %109 = call noalias i8* @g_malloc0_n(i64 1, i64 56), !dbg !495
  %110 = bitcast i8* %109 to %struct.LogHandler*, !dbg !496
  store %struct.LogHandler* %110, %struct.LogHandler** %9, align 8, !dbg !497
  %111 = load i8*, i8** %6, align 8, !dbg !498
  %112 = call noalias i8* @g_strdup(i8* %111), !dbg !499
  %113 = load %struct.LogHandler*, %struct.LogHandler** %9, align 8, !dbg !500
  %114 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %113, i32 0, i32 1, !dbg !501
  store i8* %112, i8** %114, align 8, !dbg !502
  %115 = load %struct.GlibLogger*, %struct.GlibLogger** %10, align 8, !dbg !503
  %116 = load %struct.LogHandler*, %struct.LogHandler** %9, align 8, !dbg !504
  %117 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %116, i32 0, i32 0, !dbg !505
  store %struct.GlibLogger* %115, %struct.GlibLogger** %117, align 8, !dbg !506
  %118 = load i32, i32* %7, align 4, !dbg !507
  %119 = load %struct.LogHandler*, %struct.LogHandler** %9, align 8, !dbg !508
  %120 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %119, i32 0, i32 3, !dbg !509
  store i32 %118, i32* %120, align 8, !dbg !510
  %121 = load i8*, i8** %5, align 8, !dbg !511
  %122 = call noalias i8* @strdup(i8* %121) #2, !dbg !512
  %123 = load %struct.LogHandler*, %struct.LogHandler** %9, align 8, !dbg !513
  %124 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %123, i32 0, i32 2, !dbg !514
  store i8* %122, i8** %124, align 8, !dbg !515
  %125 = load i32, i32* %11, align 4, !dbg !516
  %126 = load %struct.LogHandler*, %struct.LogHandler** %9, align 8, !dbg !517
  %127 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %126, i32 0, i32 6, !dbg !518
  store i32 %125, i32* %127, align 4, !dbg !519
  %128 = load i32, i32* %13, align 4, !dbg !520
  %129 = load %struct.LogHandler*, %struct.LogHandler** %9, align 8, !dbg !521
  %130 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %129, i32 0, i32 7, !dbg !522
  store i32 %128, i32* %130, align 8, !dbg !523
  %131 = load i8*, i8** %14, align 8, !dbg !524
  %132 = icmp ne i8* %131, null, !dbg !525
  br i1 %132, label %133, label %136, !dbg !524

; <label>:133:                                    ; preds = %108
  %134 = load i8*, i8** %14, align 8, !dbg !526
  %135 = call noalias i8* @g_strdup(i8* %134), !dbg !528
  br label %137, !dbg !529

; <label>:136:                                    ; preds = %108
  br label %137, !dbg !530

; <label>:137:                                    ; preds = %136, %133
  %138 = phi i8* [ %135, %133 ], [ null, %136 ], !dbg !532
  %139 = load %struct.LogHandler*, %struct.LogHandler** %9, align 8, !dbg !534
  %140 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %139, i32 0, i32 8, !dbg !535
  store i8* %138, i8** %140, align 8, !dbg !536
  %141 = load i8*, i8** %14, align 8, !dbg !537
  call void @g_free(i8* %141), !dbg !538
  %142 = load %struct.LogHandler*, %struct.LogHandler** %9, align 8, !dbg !539
  ret %struct.LogHandler* %142, !dbg !540
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

declare i32 @g_log_set_handler(i8*, i32, void (i8*, i32, i8*, i8*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @VMToolsLog(i8*, i32, i8*, i8*) #0 !dbg !541 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.LogHandler*, align 8
  %10 = alloca %struct.LogEntry*, align 8
  %11 = alloca %struct.LogEntry*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !542, metadata !193), !dbg !543
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !544, metadata !193), !dbg !545
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !546, metadata !193), !dbg !547
  store i8* %3, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !548, metadata !193), !dbg !549
  call void @llvm.dbg.declare(metadata %struct.LogHandler** %9, metadata !550, metadata !193), !dbg !551
  %12 = load i8*, i8** %8, align 8, !dbg !552
  %13 = bitcast i8* %12 to %struct.LogHandler*, !dbg !552
  store %struct.LogHandler* %13, %struct.LogHandler** %9, align 8, !dbg !551
  %14 = load i32, i32* %6, align 4, !dbg !553
  %15 = and i32 %14, 2, !dbg !555
  %16 = icmp ne i32 %15, 0, !dbg !555
  br i1 %16, label %27, label %17, !dbg !556

; <label>:17:                                     ; preds = %4
  %18 = load i32, i32* @gLogEnabled, align 4, !dbg !557
  %19 = icmp ne i32 %18, 0, !dbg !557
  br i1 %19, label %20, label %142, !dbg !559

; <label>:20:                                     ; preds = %17
  %21 = load %struct.LogHandler*, %struct.LogHandler** %9, align 8, !dbg !560
  %22 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %21, i32 0, i32 3, !dbg !562
  %23 = load i32, i32* %22, align 8, !dbg !562
  %24 = load i32, i32* %6, align 4, !dbg !563
  %25 = and i32 %23, %24, !dbg !564
  %26 = icmp ne i32 %25, 0, !dbg !564
  br i1 %26, label %27, label %142, !dbg !565

; <label>:27:                                     ; preds = %20, %4
  call void @llvm.dbg.declare(metadata %struct.LogEntry** %10, metadata !566, metadata !193), !dbg !576
  %28 = load %struct.LogHandler*, %struct.LogHandler** %9, align 8, !dbg !577
  %29 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %28, i32 0, i32 5, !dbg !578
  %30 = load i32, i32* %29, align 8, !dbg !578
  %31 = icmp ne i32 %30, 0, !dbg !577
  br i1 %31, label %32, label %34, !dbg !577

; <label>:32:                                     ; preds = %27
  %33 = load %struct.LogHandler*, %struct.LogHandler** @gDefaultData, align 8, !dbg !579
  br label %36, !dbg !581

; <label>:34:                                     ; preds = %27
  %35 = load %struct.LogHandler*, %struct.LogHandler** %9, align 8, !dbg !582
  br label %36, !dbg !584

; <label>:36:                                     ; preds = %34, %32
  %37 = phi %struct.LogHandler* [ %33, %32 ], [ %35, %34 ], !dbg !585
  store %struct.LogHandler* %37, %struct.LogHandler** %9, align 8, !dbg !587
  %38 = call noalias i8* @g_malloc0(i64 32), !dbg !588
  %39 = bitcast i8* %38 to %struct.LogEntry*, !dbg !588
  store %struct.LogEntry* %39, %struct.LogEntry** %10, align 8, !dbg !589
  %40 = load %struct.LogEntry*, %struct.LogEntry** %10, align 8, !dbg !590
  %41 = icmp ne %struct.LogEntry* %40, null, !dbg !590
  br i1 %41, label %42, label %68, !dbg !592

; <label>:42:                                     ; preds = %36
  %43 = load i8*, i8** %5, align 8, !dbg !593
  %44 = icmp ne i8* %43, null, !dbg !593
  br i1 %44, label %45, label %48, !dbg !593

; <label>:45:                                     ; preds = %42
  %46 = load i8*, i8** %5, align 8, !dbg !595
  %47 = call noalias i8* @g_strdup(i8* %46), !dbg !597
  br label %49, !dbg !598

; <label>:48:                                     ; preds = %42
  br label %49, !dbg !599

; <label>:49:                                     ; preds = %48, %45
  %50 = phi i8* [ %47, %45 ], [ null, %48 ], !dbg !601
  %51 = load %struct.LogEntry*, %struct.LogEntry** %10, align 8, !dbg !603
  %52 = getelementptr inbounds %struct.LogEntry, %struct.LogEntry* %51, i32 0, i32 0, !dbg !604
  store i8* %50, i8** %52, align 8, !dbg !605
  %53 = load i8*, i8** %5, align 8, !dbg !606
  %54 = icmp ne i8* %53, null, !dbg !606
  br i1 %54, label %55, label %61, !dbg !608

; <label>:55:                                     ; preds = %49
  %56 = load %struct.LogEntry*, %struct.LogEntry** %10, align 8, !dbg !609
  %57 = getelementptr inbounds %struct.LogEntry, %struct.LogEntry* %56, i32 0, i32 0, !dbg !611
  %58 = load i8*, i8** %57, align 8, !dbg !611
  %59 = icmp ne i8* %58, null, !dbg !609
  br i1 %59, label %61, label %60, !dbg !612

; <label>:60:                                     ; preds = %55
  call void @VMToolsLogPanic() #12, !dbg !613
  unreachable, !dbg !613

; <label>:61:                                     ; preds = %55, %49
  %62 = load %struct.LogHandler*, %struct.LogHandler** %9, align 8, !dbg !615
  %63 = load %struct.LogEntry*, %struct.LogEntry** %10, align 8, !dbg !616
  %64 = getelementptr inbounds %struct.LogEntry, %struct.LogEntry* %63, i32 0, i32 2, !dbg !617
  store %struct.LogHandler* %62, %struct.LogHandler** %64, align 8, !dbg !618
  %65 = load i32, i32* %6, align 4, !dbg !619
  %66 = load %struct.LogEntry*, %struct.LogEntry** %10, align 8, !dbg !620
  %67 = getelementptr inbounds %struct.LogEntry, %struct.LogEntry* %66, i32 0, i32 3, !dbg !621
  store i32 %65, i32* %67, align 8, !dbg !622
  br label %68, !dbg !623

; <label>:68:                                     ; preds = %61, %36
  %69 = load i32, i32* @gLogIOSuspended, align 4, !dbg !624
  %70 = icmp ne i32 %69, 0, !dbg !624
  br i1 %70, label %71, label %131, !dbg !626

; <label>:71:                                     ; preds = %68
  %72 = load %struct.LogHandler*, %struct.LogHandler** %9, align 8, !dbg !627
  %73 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %72, i32 0, i32 6, !dbg !629
  %74 = load i32, i32* %73, align 4, !dbg !629
  %75 = icmp ne i32 %74, 0, !dbg !627
  br i1 %75, label %76, label %131, !dbg !630

; <label>:76:                                     ; preds = %71
  %77 = load i32, i32* @gMaxCacheEntries, align 4, !dbg !631
  %78 = icmp eq i32 %77, 0, !dbg !634
  br i1 %78, label %79, label %84, !dbg !635

; <label>:79:                                     ; preds = %76
  %80 = load %struct.LogEntry*, %struct.LogEntry** %10, align 8, !dbg !636
  %81 = bitcast %struct.LogEntry* %80 to i8*, !dbg !636
  call void @VMToolsFreeLogEntry(i8* %81), !dbg !638
  %82 = load i32, i32* @gDroppedLogCount, align 4, !dbg !639
  %83 = add i32 %82, 1, !dbg !639
  store i32 %83, i32* @gDroppedLogCount, align 4, !dbg !639
  br label %143, !dbg !640

; <label>:84:                                     ; preds = %76
  %85 = load i8*, i8** %7, align 8, !dbg !641
  %86 = load i8*, i8** %5, align 8, !dbg !642
  %87 = load i32, i32* %6, align 4, !dbg !643
  %88 = load %struct.LogHandler*, %struct.LogHandler** %9, align 8, !dbg !644
  %89 = call i8* @VMToolsLogFormat(i8* %85, i8* %86, i32 %87, %struct.LogHandler* %88, i32 1), !dbg !645
  %90 = load %struct.LogEntry*, %struct.LogEntry** %10, align 8, !dbg !646
  %91 = getelementptr inbounds %struct.LogEntry, %struct.LogEntry* %90, i32 0, i32 1, !dbg !647
  store i8* %89, i8** %91, align 8, !dbg !648
  %92 = load %struct._GPtrArray*, %struct._GPtrArray** @gCachedLogs, align 8, !dbg !649
  %93 = icmp ne %struct._GPtrArray* %92, null, !dbg !649
  br i1 %93, label %109, label %94, !dbg !651

; <label>:94:                                     ; preds = %84
  %95 = load i32, i32* @gMaxCacheEntries, align 4, !dbg !652
  %96 = icmp slt i32 %95, 1024, !dbg !654
  br i1 %96, label %97, label %99, !dbg !652

; <label>:97:                                     ; preds = %94
  %98 = load i32, i32* @gMaxCacheEntries, align 4, !dbg !655
  br label %102, !dbg !656

; <label>:99:                                     ; preds = %94
  %100 = load i32, i32* @gMaxCacheEntries, align 4, !dbg !658
  %101 = sdiv i32 %100, 4, !dbg !659
  br label %102, !dbg !660

; <label>:102:                                    ; preds = %99, %97
  %103 = phi i32 [ %98, %97 ], [ %101, %99 ], !dbg !662
  %104 = call %struct._GPtrArray* @g_ptr_array_sized_new(i32 %103), !dbg !664
  store %struct._GPtrArray* %104, %struct._GPtrArray** @gCachedLogs, align 8, !dbg !665
  %105 = load %struct._GPtrArray*, %struct._GPtrArray** @gCachedLogs, align 8, !dbg !666
  %106 = icmp ne %struct._GPtrArray* %105, null, !dbg !666
  br i1 %106, label %108, label %107, !dbg !668

; <label>:107:                                    ; preds = %102
  call void @VMToolsLogPanic() #12, !dbg !669
  unreachable, !dbg !669

; <label>:108:                                    ; preds = %102
  br label %109, !dbg !671

; <label>:109:                                    ; preds = %108, %84
  %110 = load %struct._GPtrArray*, %struct._GPtrArray** @gCachedLogs, align 8, !dbg !672
  %111 = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %110, i32 0, i32 1, !dbg !674
  %112 = load i32, i32* %111, align 8, !dbg !674
  %113 = load i32, i32* @gMaxCacheEntries, align 4, !dbg !675
  %114 = icmp ult i32 %112, %113, !dbg !676
  br i1 %114, label %115, label %119, !dbg !677

; <label>:115:                                    ; preds = %109
  %116 = load %struct._GPtrArray*, %struct._GPtrArray** @gCachedLogs, align 8, !dbg !678
  %117 = load %struct.LogEntry*, %struct.LogEntry** %10, align 8, !dbg !680
  %118 = bitcast %struct.LogEntry* %117 to i8*, !dbg !680
  call void @g_ptr_array_add(%struct._GPtrArray* %116, i8* %118), !dbg !681
  br label %130, !dbg !682

; <label>:119:                                    ; preds = %109
  call void @llvm.dbg.declare(metadata %struct.LogEntry** %11, metadata !683, metadata !193), !dbg !685
  %120 = load %struct._GPtrArray*, %struct._GPtrArray** @gCachedLogs, align 8, !dbg !686
  %121 = call i8* @g_ptr_array_remove_index(%struct._GPtrArray* %120, i32 0), !dbg !687
  %122 = bitcast i8* %121 to %struct.LogEntry*, !dbg !687
  store %struct.LogEntry* %122, %struct.LogEntry** %11, align 8, !dbg !685
  %123 = load %struct.LogEntry*, %struct.LogEntry** %11, align 8, !dbg !688
  %124 = bitcast %struct.LogEntry* %123 to i8*, !dbg !688
  call void @VMToolsFreeLogEntry(i8* %124), !dbg !689
  %125 = load i32, i32* @gDroppedLogCount, align 4, !dbg !690
  %126 = add i32 %125, 1, !dbg !690
  store i32 %126, i32* @gDroppedLogCount, align 4, !dbg !690
  %127 = load %struct._GPtrArray*, %struct._GPtrArray** @gCachedLogs, align 8, !dbg !691
  %128 = load %struct.LogEntry*, %struct.LogEntry** %10, align 8, !dbg !692
  %129 = bitcast %struct.LogEntry* %128 to i8*, !dbg !692
  call void @g_ptr_array_add(%struct._GPtrArray* %127, i8* %129), !dbg !693
  br label %130

; <label>:130:                                    ; preds = %119, %115
  br label %141, !dbg !694

; <label>:131:                                    ; preds = %71, %68
  %132 = load i8*, i8** %7, align 8, !dbg !695
  %133 = load i8*, i8** %5, align 8, !dbg !697
  %134 = load i32, i32* %6, align 4, !dbg !698
  %135 = load %struct.LogHandler*, %struct.LogHandler** %9, align 8, !dbg !699
  %136 = call i8* @VMToolsLogFormat(i8* %132, i8* %133, i32 %134, %struct.LogHandler* %135, i32 0), !dbg !700
  %137 = load %struct.LogEntry*, %struct.LogEntry** %10, align 8, !dbg !701
  %138 = getelementptr inbounds %struct.LogEntry, %struct.LogEntry* %137, i32 0, i32 1, !dbg !702
  store i8* %136, i8** %138, align 8, !dbg !703
  %139 = load %struct.LogEntry*, %struct.LogEntry** %10, align 8, !dbg !704
  %140 = bitcast %struct.LogEntry* %139 to i8*, !dbg !704
  call void @VMToolsLogMsg(i8* %140, i8* null), !dbg !705
  br label %141

; <label>:141:                                    ; preds = %131, %130
  br label %142, !dbg !706

; <label>:142:                                    ; preds = %141, %20, %17
  br label %143, !dbg !707

; <label>:143:                                    ; preds = %142, %79
  %144 = load i32, i32* %6, align 4, !dbg !709
  %145 = and i32 %144, 2, !dbg !711
  %146 = icmp ne i32 %145, 0, !dbg !711
  br i1 %146, label %147, label %148, !dbg !712

; <label>:147:                                    ; preds = %143
  call void @VMToolsLogPanic() #12, !dbg !713
  unreachable, !dbg !713

; <label>:148:                                    ; preds = %143
  ret void, !dbg !715
}

declare void @g_static_rec_mutex_init(%struct._GStaticRecMutex*) #3

declare void @g_key_file_free(%struct._GKeyFile*) #3

; Function Attrs: nounwind uwtable
define void @VMTools_ConfigLogging(i8*, %struct._GKeyFile*, i32, i32) #0 !dbg !716 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct._GKeyFile*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct._GPtrArray*, align 8
  %13 = alloca %struct.LogHandler*, align 8
  %14 = alloca %struct._GError*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.rlimit, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !719, metadata !193), !dbg !720
  store %struct._GKeyFile* %1, %struct._GKeyFile** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._GKeyFile** %6, metadata !721, metadata !193), !dbg !722
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !723, metadata !193), !dbg !724
  store i32 %3, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !725, metadata !193), !dbg !726
  call void @llvm.dbg.declare(metadata i32* %9, metadata !727, metadata !193), !dbg !728
  %17 = load %struct._GKeyFile*, %struct._GKeyFile** %6, align 8, !dbg !729
  %18 = icmp eq %struct._GKeyFile* %17, null, !dbg !730
  %19 = zext i1 %18 to i32, !dbg !730
  store i32 %19, i32* %9, align 4, !dbg !728
  call void @llvm.dbg.declare(metadata i8*** %10, metadata !731, metadata !193), !dbg !732
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !733, metadata !193), !dbg !734
  call void @llvm.dbg.declare(metadata %struct._GPtrArray** %12, metadata !735, metadata !193), !dbg !736
  store %struct._GPtrArray* null, %struct._GPtrArray** %12, align 8, !dbg !736
  call void @llvm.dbg.declare(metadata %struct.LogHandler** %13, metadata !737, metadata !193), !dbg !738
  store %struct.LogHandler* null, %struct.LogHandler** %13, align 8, !dbg !738
  call void @llvm.dbg.declare(metadata %struct._GError** %14, metadata !739, metadata !193), !dbg !740
  store %struct._GError* null, %struct._GError** %14, align 8, !dbg !740
  br label %20, !dbg !741, !llvm.loop !742

; <label>:20:                                     ; preds = %4
  %21 = load i8*, i8** %5, align 8, !dbg !743
  %22 = icmp ne i8* %21, null, !dbg !747
  br i1 %22, label %23, label %24, !dbg !743

; <label>:23:                                     ; preds = %20
  br label %25, !dbg !748

; <label>:24:                                     ; preds = %20
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.VMTools_ConfigLogging, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0)), !dbg !751
  br label %208, !dbg !754

; <label>:25:                                     ; preds = %23
  br label %26, !dbg !755

; <label>:26:                                     ; preds = %25
  %27 = load i32, i32* %9, align 4, !dbg !757
  %28 = icmp ne i32 %27, 0, !dbg !757
  br i1 %28, label %29, label %31, !dbg !759

; <label>:29:                                     ; preds = %26
  %30 = call %struct._GKeyFile* @g_key_file_new(), !dbg !760
  store %struct._GKeyFile* %30, %struct._GKeyFile** %6, align 8, !dbg !762
  br label %31, !dbg !763

; <label>:31:                                     ; preds = %29, %26
  %32 = load i32, i32* %8, align 4, !dbg !764
  call void @VMToolsResetLogging(i32 %32), !dbg !765
  %33 = load i32, i32* %8, align 4, !dbg !766
  %34 = icmp ne i32 %33, 0, !dbg !766
  br i1 %34, label %38, label %35, !dbg !768

; <label>:35:                                     ; preds = %31
  %36 = load %struct.LogHandler*, %struct.LogHandler** @gDefaultData, align 8, !dbg !769
  store %struct.LogHandler* %36, %struct.LogHandler** %13, align 8, !dbg !771
  %37 = load %struct._GPtrArray*, %struct._GPtrArray** @gDomains, align 8, !dbg !772
  store %struct._GPtrArray* %37, %struct._GPtrArray** %12, align 8, !dbg !773
  store %struct._GPtrArray* null, %struct._GPtrArray** @gDomains, align 8, !dbg !774
  store %struct.LogHandler* null, %struct.LogHandler** @gDefaultData, align 8, !dbg !775
  br label %38, !dbg !776

; <label>:38:                                     ; preds = %35, %31
  %39 = load i8*, i8** %5, align 8, !dbg !777
  %40 = call noalias i8* @g_strdup(i8* %39), !dbg !778
  store i8* %40, i8** @gLogDomain, align 8, !dbg !779
  %41 = load i8*, i8** @gLogDomain, align 8, !dbg !780
  %42 = load %struct._GKeyFile*, %struct._GKeyFile** %6, align 8, !dbg !781
  %43 = call %struct.LogHandler* @VMToolsGetLogHandler(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* %41, i32 -4, %struct._GKeyFile* %42), !dbg !782
  store %struct.LogHandler* %43, %struct.LogHandler** @gErrorData, align 8, !dbg !783
  %44 = load i8*, i8** @gLogDomain, align 8, !dbg !784
  %45 = load %struct._GKeyFile*, %struct._GKeyFile** %6, align 8, !dbg !785
  %46 = call %struct.LogHandler* @VMToolsGetLogHandler(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), i8* %44, i32 2, %struct._GKeyFile* %45), !dbg !786
  store %struct.LogHandler* %46, %struct.LogHandler** @gErrorSyslog, align 8, !dbg !787
  %47 = load i8*, i8** @gLogDomain, align 8, !dbg !788
  %48 = load %struct._GKeyFile*, %struct._GKeyFile** %6, align 8, !dbg !789
  %49 = load %struct.LogHandler*, %struct.LogHandler** %13, align 8, !dbg !790
  %50 = load %struct._GPtrArray*, %struct._GPtrArray** %12, align 8, !dbg !791
  call void @VMToolsConfigLogDomain(i8* %47, %struct._GKeyFile* %48, %struct.LogHandler* %49, %struct._GPtrArray* %50), !dbg !792
  %51 = load %struct._GKeyFile*, %struct._GKeyFile** %6, align 8, !dbg !793
  %52 = call noalias i8** @g_key_file_get_keys(%struct._GKeyFile* %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i64* null, %struct._GError** null), !dbg !794
  store i8** %52, i8*** %10, align 8, !dbg !795
  %53 = load i8**, i8*** %10, align 8, !dbg !796
  store i8** %53, i8*** %11, align 8, !dbg !798
  br label %54, !dbg !799

; <label>:54:                                     ; preds = %86, %38
  %55 = load i8**, i8*** %11, align 8, !dbg !800
  %56 = icmp ne i8** %55, null, !dbg !803
  br i1 %56, label %57, label %61, !dbg !804

; <label>:57:                                     ; preds = %54
  %58 = load i8**, i8*** %11, align 8, !dbg !805
  %59 = load i8*, i8** %58, align 8, !dbg !807
  %60 = icmp ne i8* %59, null, !dbg !808
  br label %61

; <label>:61:                                     ; preds = %57, %54
  %62 = phi i1 [ false, %54 ], [ %60, %57 ]
  br i1 %62, label %63, label %89, !dbg !809

; <label>:63:                                     ; preds = %61
  call void @llvm.dbg.declare(metadata i8** %15, metadata !811, metadata !193), !dbg !813
  %64 = load i8**, i8*** %11, align 8, !dbg !814
  %65 = load i8*, i8** %64, align 8, !dbg !815
  store i8* %65, i8** %15, align 8, !dbg !813
  %66 = load i8*, i8** %15, align 8, !dbg !816
  %67 = call i32 @g_str_has_suffix(i8* %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0)), !dbg !818
  %68 = icmp ne i32 %67, 0, !dbg !818
  br i1 %68, label %70, label %69, !dbg !819

; <label>:69:                                     ; preds = %63
  br label %86, !dbg !820

; <label>:70:                                     ; preds = %63
  %71 = load i8*, i8** %15, align 8, !dbg !822
  %72 = call i64 @strlen(i8* %71) #11, !dbg !823
  %73 = sub i64 %72, 6, !dbg !824
  %74 = load i8*, i8** %15, align 8, !dbg !825
  %75 = getelementptr inbounds i8, i8* %74, i64 %73, !dbg !825
  store i8 0, i8* %75, align 1, !dbg !826
  %76 = load i8*, i8** %15, align 8, !dbg !827
  %77 = load i8*, i8** @gLogDomain, align 8, !dbg !829
  %78 = call i32 @strcmp(i8* %76, i8* %77) #11, !dbg !830
  %79 = icmp eq i32 %78, 0, !dbg !831
  br i1 %79, label %80, label %81, !dbg !832

; <label>:80:                                     ; preds = %70
  br label %86, !dbg !833

; <label>:81:                                     ; preds = %70
  %82 = load i8*, i8** %15, align 8, !dbg !835
  %83 = load %struct._GKeyFile*, %struct._GKeyFile** %6, align 8, !dbg !836
  %84 = load %struct.LogHandler*, %struct.LogHandler** %13, align 8, !dbg !837
  %85 = load %struct._GPtrArray*, %struct._GPtrArray** %12, align 8, !dbg !838
  call void @VMToolsConfigLogDomain(i8* %82, %struct._GKeyFile* %83, %struct.LogHandler* %84, %struct._GPtrArray* %85), !dbg !839
  br label %86, !dbg !840

; <label>:86:                                     ; preds = %81, %80, %69
  %87 = load i8**, i8*** %11, align 8, !dbg !841
  %88 = getelementptr inbounds i8*, i8** %87, i32 1, !dbg !841
  store i8** %88, i8*** %11, align 8, !dbg !841
  br label %54, !dbg !843, !llvm.loop !844

; <label>:89:                                     ; preds = %61
  %90 = load i8**, i8*** %10, align 8, !dbg !846
  call void @g_strfreev(i8** %90), !dbg !847
  %91 = load %struct._GKeyFile*, %struct._GKeyFile** %6, align 8, !dbg !848
  %92 = call i32 @g_key_file_get_boolean(%struct._GKeyFile* %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), %struct._GError** null), !dbg !849
  store i32 %92, i32* @gLogEnabled, align 4, !dbg !850
  %93 = load i32, i32* %7, align 4, !dbg !851
  %94 = load i32, i32* @gLogEnabled, align 4, !dbg !852
  %95 = or i32 %94, %93, !dbg !852
  store i32 %95, i32* @gLogEnabled, align 4, !dbg !852
  %96 = load i32, i32* @gLogInitialized, align 4, !dbg !853
  %97 = icmp ne i32 %96, 0, !dbg !853
  br i1 %97, label %99, label %98, !dbg !855

; <label>:98:                                     ; preds = %89
  store i32 1, i32* @gLogInitialized, align 4, !dbg !856
  call void @g_static_rec_mutex_init(%struct._GStaticRecMutex* @gLogStateMutex), !dbg !858
  br label %99, !dbg !859

; <label>:99:                                     ; preds = %98, %89
  %100 = load %struct._GKeyFile*, %struct._GKeyFile** %6, align 8, !dbg !860
  %101 = call i32 @g_key_file_get_integer(%struct._GKeyFile* %100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), %struct._GError** %14), !dbg !861
  store i32 %101, i32* @gMaxCacheEntries, align 4, !dbg !862
  %102 = load %struct._GError*, %struct._GError** %14, align 8, !dbg !863
  %103 = icmp ne %struct._GError* %102, null, !dbg !865
  br i1 %103, label %107, label %104, !dbg !866

; <label>:104:                                    ; preds = %99
  %105 = load i32, i32* @gMaxCacheEntries, align 4, !dbg !867
  %106 = icmp slt i32 %105, 0, !dbg !869
  br i1 %106, label %107, label %126, !dbg !870

; <label>:107:                                    ; preds = %104, %99
  store i32 4096, i32* @gMaxCacheEntries, align 4, !dbg !871
  %108 = load %struct._GError*, %struct._GError** %14, align 8, !dbg !873
  %109 = icmp ne %struct._GError* %108, null, !dbg !875
  br i1 %109, label %110, label %125, !dbg !876

; <label>:110:                                    ; preds = %107
  %111 = load %struct._GError*, %struct._GError** %14, align 8, !dbg !877
  %112 = getelementptr inbounds %struct._GError, %struct._GError* %111, i32 0, i32 1, !dbg !880
  %113 = load i32, i32* %112, align 4, !dbg !880
  %114 = icmp ne i32 %113, 3, !dbg !881
  br i1 %114, label %115, label %124, !dbg !882

; <label>:115:                                    ; preds = %110
  %116 = load %struct._GError*, %struct._GError** %14, align 8, !dbg !883
  %117 = getelementptr inbounds %struct._GError, %struct._GError* %116, i32 0, i32 1, !dbg !884
  %118 = load i32, i32* %117, align 4, !dbg !884
  %119 = icmp ne i32 %118, 4, !dbg !885
  br i1 %119, label %120, label %124, !dbg !886

; <label>:120:                                    ; preds = %115
  %121 = load %struct._GError*, %struct._GError** %14, align 8, !dbg !888
  %122 = getelementptr inbounds %struct._GError, %struct._GError* %121, i32 0, i32 1, !dbg !890
  %123 = load i32, i32* %122, align 4, !dbg !890
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i32 0, i32 0), i32 %123), !dbg !891
  br label %124, !dbg !892

; <label>:124:                                    ; preds = %120, %115, %110
  call void @g_clear_error(%struct._GError** %14), !dbg !893
  br label %125, !dbg !894

; <label>:125:                                    ; preds = %124, %107
  br label %126, !dbg !895

; <label>:126:                                    ; preds = %125, %104
  %127 = load i32, i32* @gMaxCacheEntries, align 4, !dbg !896
  %128 = icmp sgt i32 %127, 0, !dbg !898
  br i1 %128, label %129, label %131, !dbg !899

; <label>:129:                                    ; preds = %126
  %130 = load i32, i32* @gMaxCacheEntries, align 4, !dbg !900
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 32, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.12, i32 0, i32 0), i32 %130), !dbg !902
  br label %132, !dbg !903

; <label>:131:                                    ; preds = %126
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i32 0, i32 0)), !dbg !904
  br label %132

; <label>:132:                                    ; preds = %131, %129
  %133 = load %struct._GKeyFile*, %struct._GKeyFile** %6, align 8, !dbg !906
  %134 = call i32 @g_key_file_has_key(%struct._GKeyFile* %133, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), %struct._GError** null), !dbg !908
  %135 = icmp ne i32 %134, 0, !dbg !908
  br i1 %135, label %136, label %139, !dbg !909

; <label>:136:                                    ; preds = %132
  %137 = load %struct._GKeyFile*, %struct._GKeyFile** %6, align 8, !dbg !910
  %138 = call i32 @g_key_file_get_boolean(%struct._GKeyFile* %137, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), %struct._GError** null), !dbg !912
  store i32 %138, i32* @gEnableCoreDump, align 4, !dbg !913
  br label %139, !dbg !914

; <label>:139:                                    ; preds = %136, %132
  %140 = load i32, i32* %8, align 4, !dbg !915
  %141 = icmp ne i32 %140, 0, !dbg !915
  br i1 %141, label %149, label %142, !dbg !917

; <label>:142:                                    ; preds = %139
  %143 = load %struct._GPtrArray*, %struct._GPtrArray** %12, align 8, !dbg !918
  %144 = icmp ne %struct._GPtrArray* %143, null, !dbg !921
  br i1 %144, label %145, label %148, !dbg !922

; <label>:145:                                    ; preds = %142
  %146 = load %struct._GPtrArray*, %struct._GPtrArray** %12, align 8, !dbg !923
  %147 = call i8** @g_ptr_array_free(%struct._GPtrArray* %146, i32 1), !dbg !925
  br label %148, !dbg !926

; <label>:148:                                    ; preds = %145, %142
  br label %149, !dbg !927

; <label>:149:                                    ; preds = %148, %139
  %150 = load i32, i32* @gEnableCoreDump, align 4, !dbg !928
  %151 = icmp ne i32 %150, 0, !dbg !928
  br i1 %151, label %152, label %203, !dbg !930

; <label>:152:                                    ; preds = %149
  call void @llvm.dbg.declare(metadata %struct.rlimit* %16, metadata !931, metadata !193), !dbg !937
  %153 = bitcast %struct.rlimit* %16 to i8*, !dbg !937
  call void @llvm.memset.p0i8.i64(i8* %153, i8 0, i64 16, i32 8, i1 false), !dbg !937
  %154 = call i32 @getrlimit64(i32 4, %struct.rlimit* %16) #2, !dbg !938
  %155 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %16, i32 0, i32 1, !dbg !939
  %156 = load i64, i64* %155, align 8, !dbg !939
  %157 = icmp ne i64 %156, 0, !dbg !941
  br i1 %157, label %158, label %202, !dbg !942

; <label>:158:                                    ; preds = %152
  %159 = load %struct._GKeyFile*, %struct._GKeyFile** %6, align 8, !dbg !943
  %160 = call i32 @g_key_file_get_integer(%struct._GKeyFile* %159, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), %struct._GError** %14), !dbg !945
  %161 = sext i32 %160 to i64, !dbg !946
  %162 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %16, i32 0, i32 0, !dbg !947
  store i64 %161, i64* %162, align 8, !dbg !948
  %163 = load %struct._GError*, %struct._GError** %14, align 8, !dbg !949
  %164 = icmp ne %struct._GError* %163, null, !dbg !951
  br i1 %164, label %165, label %167, !dbg !952

; <label>:165:                                    ; preds = %158
  %166 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %16, i32 0, i32 0, !dbg !953
  store i64 5242880, i64* %166, align 8, !dbg !955
  call void @g_clear_error(%struct._GError** %14), !dbg !956
  br label %174, !dbg !957

; <label>:167:                                    ; preds = %158
  %168 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %16, i32 0, i32 0, !dbg !958
  %169 = load i64, i64* %168, align 8, !dbg !958
  %170 = icmp eq i64 %169, 0, !dbg !961
  br i1 %170, label %171, label %173, !dbg !962

; <label>:171:                                    ; preds = %167
  %172 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %16, i32 0, i32 0, !dbg !963
  store i64 -1, i64* %172, align 8, !dbg !965
  br label %173, !dbg !966

; <label>:173:                                    ; preds = %171, %167
  br label %174

; <label>:174:                                    ; preds = %173, %165
  %175 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %16, i32 0, i32 0, !dbg !967
  %176 = load i64, i64* %175, align 8, !dbg !967
  %177 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %16, i32 0, i32 1, !dbg !968
  %178 = load i64, i64* %177, align 8, !dbg !968
  %179 = icmp ugt i64 %176, %178, !dbg !969
  br i1 %179, label %180, label %183, !dbg !970

; <label>:180:                                    ; preds = %174
  %181 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %16, i32 0, i32 0, !dbg !971
  %182 = load i64, i64* %181, align 8, !dbg !971
  br label %186, !dbg !973

; <label>:183:                                    ; preds = %174
  %184 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %16, i32 0, i32 1, !dbg !974
  %185 = load i64, i64* %184, align 8, !dbg !974
  br label %186, !dbg !976

; <label>:186:                                    ; preds = %183, %180
  %187 = phi i64 [ %182, %180 ], [ %185, %183 ], !dbg !977
  %188 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %16, i32 0, i32 0, !dbg !979
  store i64 %187, i64* %188, align 8, !dbg !980
  %189 = call i32 @setrlimit64(i32 4, %struct.rlimit* %16) #2, !dbg !981
  %190 = icmp eq i32 %189, -1, !dbg !983
  br i1 %190, label %191, label %197, !dbg !984

; <label>:191:                                    ; preds = %186
  %192 = call i32* @__errno_location() #1, !dbg !985
  %193 = load i32, i32* %192, align 4, !dbg !987
  %194 = call i32* @__errno_location() #1, !dbg !988
  %195 = load i32, i32* %194, align 4, !dbg !987
  %196 = call i8* @g_strerror(i32 %195) #1, !dbg !990
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 32, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.16, i32 0, i32 0), i32 %193, i8* %196), !dbg !992
  br label %201, !dbg !994

; <label>:197:                                    ; preds = %186
  %198 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %16, i32 0, i32 0, !dbg !995
  %199 = load i64, i64* %198, align 8, !dbg !995
  %200 = trunc i64 %199 to i32, !dbg !997
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i32 0, i32 0), i32 %200), !dbg !998
  br label %201

; <label>:201:                                    ; preds = %197, %191
  br label %202, !dbg !999

; <label>:202:                                    ; preds = %201, %152
  br label %203, !dbg !1000

; <label>:203:                                    ; preds = %202, %149
  %204 = load i32, i32* %9, align 4, !dbg !1001
  %205 = icmp ne i32 %204, 0, !dbg !1001
  br i1 %205, label %206, label %208, !dbg !1003

; <label>:206:                                    ; preds = %203
  %207 = load %struct._GKeyFile*, %struct._GKeyFile** %6, align 8, !dbg !1004
  call void @g_key_file_free(%struct._GKeyFile* %207), !dbg !1006
  br label %208, !dbg !1007

; <label>:208:                                    ; preds = %24, %206, %203
  ret void, !dbg !1008
}

; Function Attrs: nounwind uwtable
define internal void @VMToolsResetLogging(i32) #0 !dbg !1009 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.LogHandler*, align 8
  store i32 %0, i32* %2, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !1012, metadata !193), !dbg !1013
  store i32 0, i32* @gLogEnabled, align 4, !dbg !1014
  %5 = call void (i8*, i32, i8*, i8*)* @g_log_set_default_handler(void (i8*, i32, i8*, i8*)* @g_log_default_handler, i8* null), !dbg !1015
  br label %6, !dbg !1016, !llvm.loop !1017

; <label>:6:                                      ; preds = %1
  %7 = load %struct.LogHandler*, %struct.LogHandler** @gErrorData, align 8, !dbg !1018
  %8 = icmp ne %struct.LogHandler* %7, null, !dbg !1022
  br i1 %8, label %9, label %36, !dbg !1023

; <label>:9:                                      ; preds = %6
  %10 = load %struct.LogHandler*, %struct.LogHandler** @gErrorData, align 8, !dbg !1024
  %11 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %10, i32 0, i32 0, !dbg !1028
  %12 = load %struct.GlibLogger*, %struct.GlibLogger** %11, align 8, !dbg !1028
  %13 = icmp ne %struct.GlibLogger* %12, null, !dbg !1029
  br i1 %13, label %14, label %24, !dbg !1024

; <label>:14:                                     ; preds = %9
  %15 = load %struct.LogHandler*, %struct.LogHandler** @gErrorData, align 8, !dbg !1030
  %16 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %15, i32 0, i32 0, !dbg !1033
  %17 = load %struct.GlibLogger*, %struct.GlibLogger** %16, align 8, !dbg !1033
  %18 = getelementptr inbounds %struct.GlibLogger, %struct.GlibLogger* %17, i32 0, i32 3, !dbg !1034
  %19 = load void (i8*)*, void (i8*)** %18, align 8, !dbg !1034
  %20 = load %struct.LogHandler*, %struct.LogHandler** @gErrorData, align 8, !dbg !1035
  %21 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %20, i32 0, i32 0, !dbg !1036
  %22 = load %struct.GlibLogger*, %struct.GlibLogger** %21, align 8, !dbg !1036
  %23 = bitcast %struct.GlibLogger* %22 to i8*, !dbg !1035
  call void %19(i8* %23), !dbg !1030
  br label %24, !dbg !1037

; <label>:24:                                     ; preds = %14, %9
  %25 = load %struct.LogHandler*, %struct.LogHandler** @gErrorData, align 8, !dbg !1038
  %26 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %25, i32 0, i32 1, !dbg !1040
  %27 = load i8*, i8** %26, align 8, !dbg !1040
  call void @g_free(i8* %27), !dbg !1041
  %28 = load %struct.LogHandler*, %struct.LogHandler** @gErrorData, align 8, !dbg !1042
  %29 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %28, i32 0, i32 2, !dbg !1043
  %30 = load i8*, i8** %29, align 8, !dbg !1043
  call void @g_free(i8* %30), !dbg !1044
  %31 = load %struct.LogHandler*, %struct.LogHandler** @gErrorData, align 8, !dbg !1046
  %32 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %31, i32 0, i32 8, !dbg !1047
  %33 = load i8*, i8** %32, align 8, !dbg !1047
  call void @g_free(i8* %33), !dbg !1048
  %34 = load %struct.LogHandler*, %struct.LogHandler** @gErrorData, align 8, !dbg !1050
  %35 = bitcast %struct.LogHandler* %34 to i8*, !dbg !1050
  call void @g_free(i8* %35), !dbg !1051
  br label %36, !dbg !1053

; <label>:36:                                     ; preds = %24, %6
  br label %37, !dbg !1054

; <label>:37:                                     ; preds = %36
  br label %38, !dbg !1056, !llvm.loop !1057

; <label>:38:                                     ; preds = %37
  %39 = load %struct.LogHandler*, %struct.LogHandler** @gErrorSyslog, align 8, !dbg !1058
  %40 = icmp ne %struct.LogHandler* %39, null, !dbg !1062
  br i1 %40, label %41, label %68, !dbg !1063

; <label>:41:                                     ; preds = %38
  %42 = load %struct.LogHandler*, %struct.LogHandler** @gErrorSyslog, align 8, !dbg !1064
  %43 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %42, i32 0, i32 0, !dbg !1068
  %44 = load %struct.GlibLogger*, %struct.GlibLogger** %43, align 8, !dbg !1068
  %45 = icmp ne %struct.GlibLogger* %44, null, !dbg !1069
  br i1 %45, label %46, label %56, !dbg !1064

; <label>:46:                                     ; preds = %41
  %47 = load %struct.LogHandler*, %struct.LogHandler** @gErrorSyslog, align 8, !dbg !1070
  %48 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %47, i32 0, i32 0, !dbg !1073
  %49 = load %struct.GlibLogger*, %struct.GlibLogger** %48, align 8, !dbg !1073
  %50 = getelementptr inbounds %struct.GlibLogger, %struct.GlibLogger* %49, i32 0, i32 3, !dbg !1074
  %51 = load void (i8*)*, void (i8*)** %50, align 8, !dbg !1074
  %52 = load %struct.LogHandler*, %struct.LogHandler** @gErrorSyslog, align 8, !dbg !1075
  %53 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %52, i32 0, i32 0, !dbg !1076
  %54 = load %struct.GlibLogger*, %struct.GlibLogger** %53, align 8, !dbg !1076
  %55 = bitcast %struct.GlibLogger* %54 to i8*, !dbg !1075
  call void %51(i8* %55), !dbg !1070
  br label %56, !dbg !1077

; <label>:56:                                     ; preds = %46, %41
  %57 = load %struct.LogHandler*, %struct.LogHandler** @gErrorSyslog, align 8, !dbg !1078
  %58 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %57, i32 0, i32 1, !dbg !1080
  %59 = load i8*, i8** %58, align 8, !dbg !1080
  call void @g_free(i8* %59), !dbg !1081
  %60 = load %struct.LogHandler*, %struct.LogHandler** @gErrorSyslog, align 8, !dbg !1082
  %61 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %60, i32 0, i32 2, !dbg !1083
  %62 = load i8*, i8** %61, align 8, !dbg !1083
  call void @g_free(i8* %62), !dbg !1084
  %63 = load %struct.LogHandler*, %struct.LogHandler** @gErrorSyslog, align 8, !dbg !1086
  %64 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %63, i32 0, i32 8, !dbg !1087
  %65 = load i8*, i8** %64, align 8, !dbg !1087
  call void @g_free(i8* %65), !dbg !1088
  %66 = load %struct.LogHandler*, %struct.LogHandler** @gErrorSyslog, align 8, !dbg !1090
  %67 = bitcast %struct.LogHandler* %66 to i8*, !dbg !1090
  call void @g_free(i8* %67), !dbg !1091
  br label %68, !dbg !1093

; <label>:68:                                     ; preds = %56, %38
  br label %69, !dbg !1094

; <label>:69:                                     ; preds = %68
  store %struct.LogHandler* null, %struct.LogHandler** @gErrorData, align 8, !dbg !1096
  store %struct.LogHandler* null, %struct.LogHandler** @gErrorSyslog, align 8, !dbg !1097
  %70 = load %struct._GPtrArray*, %struct._GPtrArray** @gDomains, align 8, !dbg !1098
  %71 = icmp ne %struct._GPtrArray* %70, null, !dbg !1100
  br i1 %71, label %72, label %142, !dbg !1101

; <label>:72:                                     ; preds = %69
  call void @llvm.dbg.declare(metadata i32* %3, metadata !1102, metadata !193), !dbg !1104
  store i32 0, i32* %3, align 4, !dbg !1105
  br label %73, !dbg !1107

; <label>:73:                                     ; preds = %132, %72
  %74 = load i32, i32* %3, align 4, !dbg !1108
  %75 = load %struct._GPtrArray*, %struct._GPtrArray** @gDomains, align 8, !dbg !1111
  %76 = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %75, i32 0, i32 1, !dbg !1112
  %77 = load i32, i32* %76, align 8, !dbg !1112
  %78 = icmp ult i32 %74, %77, !dbg !1113
  br i1 %78, label %79, label %135, !dbg !1114

; <label>:79:                                     ; preds = %73
  call void @llvm.dbg.declare(metadata %struct.LogHandler** %4, metadata !1115, metadata !193), !dbg !1117
  %80 = load i32, i32* %3, align 4, !dbg !1118
  %81 = zext i32 %80 to i64, !dbg !1119
  %82 = load %struct._GPtrArray*, %struct._GPtrArray** @gDomains, align 8, !dbg !1120
  %83 = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %82, i32 0, i32 0, !dbg !1121
  %84 = load i8**, i8*** %83, align 8, !dbg !1121
  %85 = getelementptr inbounds i8*, i8** %84, i64 %81, !dbg !1119
  %86 = load i8*, i8** %85, align 8, !dbg !1119
  %87 = bitcast i8* %86 to %struct.LogHandler*, !dbg !1119
  store %struct.LogHandler* %87, %struct.LogHandler** %4, align 8, !dbg !1117
  %88 = load %struct.LogHandler*, %struct.LogHandler** %4, align 8, !dbg !1122
  %89 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %88, i32 0, i32 1, !dbg !1123
  %90 = load i8*, i8** %89, align 8, !dbg !1123
  %91 = load %struct.LogHandler*, %struct.LogHandler** %4, align 8, !dbg !1124
  %92 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %91, i32 0, i32 4, !dbg !1125
  %93 = load i32, i32* %92, align 4, !dbg !1125
  call void @g_log_remove_handler(i8* %90, i32 %93), !dbg !1126
  %94 = load %struct.LogHandler*, %struct.LogHandler** %4, align 8, !dbg !1127
  %95 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %94, i32 0, i32 4, !dbg !1128
  store i32 0, i32* %95, align 4, !dbg !1129
  %96 = load i32, i32* %2, align 4, !dbg !1130
  %97 = icmp ne i32 %96, 0, !dbg !1130
  br i1 %97, label %98, label %131, !dbg !1132

; <label>:98:                                     ; preds = %79
  br label %99, !dbg !1133, !llvm.loop !1135

; <label>:99:                                     ; preds = %98
  %100 = load %struct.LogHandler*, %struct.LogHandler** %4, align 8, !dbg !1136
  %101 = icmp ne %struct.LogHandler* %100, null, !dbg !1140
  br i1 %101, label %102, label %129, !dbg !1141

; <label>:102:                                    ; preds = %99
  %103 = load %struct.LogHandler*, %struct.LogHandler** %4, align 8, !dbg !1142
  %104 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %103, i32 0, i32 0, !dbg !1146
  %105 = load %struct.GlibLogger*, %struct.GlibLogger** %104, align 8, !dbg !1146
  %106 = icmp ne %struct.GlibLogger* %105, null, !dbg !1147
  br i1 %106, label %107, label %117, !dbg !1142

; <label>:107:                                    ; preds = %102
  %108 = load %struct.LogHandler*, %struct.LogHandler** %4, align 8, !dbg !1148
  %109 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %108, i32 0, i32 0, !dbg !1151
  %110 = load %struct.GlibLogger*, %struct.GlibLogger** %109, align 8, !dbg !1151
  %111 = getelementptr inbounds %struct.GlibLogger, %struct.GlibLogger* %110, i32 0, i32 3, !dbg !1152
  %112 = load void (i8*)*, void (i8*)** %111, align 8, !dbg !1152
  %113 = load %struct.LogHandler*, %struct.LogHandler** %4, align 8, !dbg !1153
  %114 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %113, i32 0, i32 0, !dbg !1154
  %115 = load %struct.GlibLogger*, %struct.GlibLogger** %114, align 8, !dbg !1154
  %116 = bitcast %struct.GlibLogger* %115 to i8*, !dbg !1153
  call void %112(i8* %116), !dbg !1148
  br label %117, !dbg !1155

; <label>:117:                                    ; preds = %107, %102
  %118 = load %struct.LogHandler*, %struct.LogHandler** %4, align 8, !dbg !1156
  %119 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %118, i32 0, i32 1, !dbg !1158
  %120 = load i8*, i8** %119, align 8, !dbg !1158
  call void @g_free(i8* %120), !dbg !1159
  %121 = load %struct.LogHandler*, %struct.LogHandler** %4, align 8, !dbg !1160
  %122 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %121, i32 0, i32 2, !dbg !1161
  %123 = load i8*, i8** %122, align 8, !dbg !1161
  call void @g_free(i8* %123), !dbg !1162
  %124 = load %struct.LogHandler*, %struct.LogHandler** %4, align 8, !dbg !1164
  %125 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %124, i32 0, i32 8, !dbg !1165
  %126 = load i8*, i8** %125, align 8, !dbg !1165
  call void @g_free(i8* %126), !dbg !1166
  %127 = load %struct.LogHandler*, %struct.LogHandler** %4, align 8, !dbg !1168
  %128 = bitcast %struct.LogHandler* %127 to i8*, !dbg !1168
  call void @g_free(i8* %128), !dbg !1169
  br label %129, !dbg !1171

; <label>:129:                                    ; preds = %117, %99
  br label %130, !dbg !1172

; <label>:130:                                    ; preds = %129
  br label %131, !dbg !1174

; <label>:131:                                    ; preds = %130, %79
  br label %132, !dbg !1175

; <label>:132:                                    ; preds = %131
  %133 = load i32, i32* %3, align 4, !dbg !1176
  %134 = add i32 %133, 1, !dbg !1176
  store i32 %134, i32* %3, align 4, !dbg !1176
  br label %73, !dbg !1178, !llvm.loop !1179

; <label>:135:                                    ; preds = %73
  %136 = load i32, i32* %2, align 4, !dbg !1181
  %137 = icmp ne i32 %136, 0, !dbg !1181
  br i1 %137, label %138, label %141, !dbg !1183

; <label>:138:                                    ; preds = %135
  %139 = load %struct._GPtrArray*, %struct._GPtrArray** @gDomains, align 8, !dbg !1184
  %140 = call i8** @g_ptr_array_free(%struct._GPtrArray* %139, i32 1), !dbg !1186
  store %struct._GPtrArray* null, %struct._GPtrArray** @gDomains, align 8, !dbg !1187
  br label %141, !dbg !1188

; <label>:141:                                    ; preds = %138, %135
  br label %142, !dbg !1189

; <label>:142:                                    ; preds = %141, %69
  %143 = load i32, i32* %2, align 4, !dbg !1190
  %144 = icmp ne i32 %143, 0, !dbg !1190
  br i1 %144, label %145, label %178, !dbg !1192

; <label>:145:                                    ; preds = %142
  br label %146, !dbg !1193, !llvm.loop !1195

; <label>:146:                                    ; preds = %145
  %147 = load %struct.LogHandler*, %struct.LogHandler** @gDefaultData, align 8, !dbg !1196
  %148 = icmp ne %struct.LogHandler* %147, null, !dbg !1200
  br i1 %148, label %149, label %176, !dbg !1201

; <label>:149:                                    ; preds = %146
  %150 = load %struct.LogHandler*, %struct.LogHandler** @gDefaultData, align 8, !dbg !1202
  %151 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %150, i32 0, i32 0, !dbg !1206
  %152 = load %struct.GlibLogger*, %struct.GlibLogger** %151, align 8, !dbg !1206
  %153 = icmp ne %struct.GlibLogger* %152, null, !dbg !1207
  br i1 %153, label %154, label %164, !dbg !1202

; <label>:154:                                    ; preds = %149
  %155 = load %struct.LogHandler*, %struct.LogHandler** @gDefaultData, align 8, !dbg !1208
  %156 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %155, i32 0, i32 0, !dbg !1211
  %157 = load %struct.GlibLogger*, %struct.GlibLogger** %156, align 8, !dbg !1211
  %158 = getelementptr inbounds %struct.GlibLogger, %struct.GlibLogger* %157, i32 0, i32 3, !dbg !1212
  %159 = load void (i8*)*, void (i8*)** %158, align 8, !dbg !1212
  %160 = load %struct.LogHandler*, %struct.LogHandler** @gDefaultData, align 8, !dbg !1213
  %161 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %160, i32 0, i32 0, !dbg !1214
  %162 = load %struct.GlibLogger*, %struct.GlibLogger** %161, align 8, !dbg !1214
  %163 = bitcast %struct.GlibLogger* %162 to i8*, !dbg !1213
  call void %159(i8* %163), !dbg !1208
  br label %164, !dbg !1215

; <label>:164:                                    ; preds = %154, %149
  %165 = load %struct.LogHandler*, %struct.LogHandler** @gDefaultData, align 8, !dbg !1216
  %166 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %165, i32 0, i32 1, !dbg !1218
  %167 = load i8*, i8** %166, align 8, !dbg !1218
  call void @g_free(i8* %167), !dbg !1219
  %168 = load %struct.LogHandler*, %struct.LogHandler** @gDefaultData, align 8, !dbg !1220
  %169 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %168, i32 0, i32 2, !dbg !1221
  %170 = load i8*, i8** %169, align 8, !dbg !1221
  call void @g_free(i8* %170), !dbg !1222
  %171 = load %struct.LogHandler*, %struct.LogHandler** @gDefaultData, align 8, !dbg !1224
  %172 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %171, i32 0, i32 8, !dbg !1225
  %173 = load i8*, i8** %172, align 8, !dbg !1225
  call void @g_free(i8* %173), !dbg !1226
  %174 = load %struct.LogHandler*, %struct.LogHandler** @gDefaultData, align 8, !dbg !1228
  %175 = bitcast %struct.LogHandler* %174 to i8*, !dbg !1228
  call void @g_free(i8* %175), !dbg !1229
  br label %176, !dbg !1231

; <label>:176:                                    ; preds = %164, %146
  br label %177, !dbg !1232

; <label>:177:                                    ; preds = %176
  store %struct.LogHandler* null, %struct.LogHandler** @gDefaultData, align 8, !dbg !1234
  br label %178, !dbg !1235

; <label>:178:                                    ; preds = %177, %142
  %179 = load i8*, i8** @gLogDomain, align 8, !dbg !1236
  %180 = icmp ne i8* %179, null, !dbg !1238
  br i1 %180, label %181, label %183, !dbg !1239

; <label>:181:                                    ; preds = %178
  %182 = load i8*, i8** @gLogDomain, align 8, !dbg !1240
  call void @g_free(i8* %182), !dbg !1242
  store i8* null, i8** @gLogDomain, align 8, !dbg !1243
  br label %183, !dbg !1244

; <label>:183:                                    ; preds = %181, %178
  ret void, !dbg !1245
}

; Function Attrs: nounwind uwtable
define internal void @VMToolsConfigLogDomain(i8*, %struct._GKeyFile*, %struct.LogHandler*, %struct._GPtrArray*) #0 !dbg !1246 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct._GKeyFile*, align 8
  %7 = alloca %struct.LogHandler*, align 8
  %8 = alloca %struct._GPtrArray*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [128 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.LogHandler*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.LogHandler*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1249, metadata !193), !dbg !1250
  store %struct._GKeyFile* %1, %struct._GKeyFile** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._GKeyFile** %6, metadata !1251, metadata !193), !dbg !1252
  store %struct.LogHandler* %2, %struct.LogHandler** %7, align 8
  call void @llvm.dbg.declare(metadata %struct.LogHandler** %7, metadata !1253, metadata !193), !dbg !1254
  store %struct._GPtrArray* %3, %struct._GPtrArray** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._GPtrArray** %8, metadata !1255, metadata !193), !dbg !1256
  call void @llvm.dbg.declare(metadata i8** %9, metadata !1257, metadata !193), !dbg !1258
  store i8* null, i8** %9, align 8, !dbg !1258
  call void @llvm.dbg.declare(metadata i8** %10, metadata !1259, metadata !193), !dbg !1260
  store i8* null, i8** %10, align 8, !dbg !1260
  call void @llvm.dbg.declare(metadata i8** %11, metadata !1261, metadata !193), !dbg !1262
  store i8* null, i8** %11, align 8, !dbg !1262
  call void @llvm.dbg.declare(metadata [128 x i8]* %12, metadata !1263, metadata !193), !dbg !1264
  call void @llvm.dbg.declare(metadata i32* %13, metadata !1265, metadata !193), !dbg !1266
  %20 = load i8*, i8** %5, align 8, !dbg !1267
  %21 = load i8*, i8** @gLogDomain, align 8, !dbg !1268
  %22 = call i32 @strcmp(i8* %20, i8* %21) #11, !dbg !1269
  %23 = icmp eq i32 %22, 0, !dbg !1270
  %24 = zext i1 %23 to i32, !dbg !1270
  store i32 %24, i32* %13, align 4, !dbg !1266
  call void @llvm.dbg.declare(metadata i32* %14, metadata !1271, metadata !193), !dbg !1272
  call void @llvm.dbg.declare(metadata %struct.LogHandler** %15, metadata !1273, metadata !193), !dbg !1274
  store %struct.LogHandler* null, %struct.LogHandler** %15, align 8, !dbg !1274
  %25 = load i8*, i8** %5, align 8, !dbg !1275
  %26 = call i64 @strlen(i8* %25) #11, !dbg !1277
  %27 = icmp ugt i64 %26, 64, !dbg !1278
  br i1 %27, label %28, label %30, !dbg !1279

; <label>:28:                                     ; preds = %4
  %29 = load i8*, i8** %5, align 8, !dbg !1280
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.49, i32 0, i32 0), i8* %29), !dbg !1282
  br label %292, !dbg !1283

; <label>:30:                                     ; preds = %4
  %31 = load i8*, i8** %5, align 8, !dbg !1284
  %32 = call i64 @strlen(i8* %31) #11, !dbg !1286
  %33 = icmp eq i64 %32, 0, !dbg !1287
  br i1 %33, label %34, label %35, !dbg !1288

; <label>:34:                                     ; preds = %30
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.50, i32 0, i32 0)), !dbg !1289
  br label %292, !dbg !1291

; <label>:35:                                     ; preds = %30
  br label %36

; <label>:36:                                     ; preds = %35
  %37 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i32 0, i32 0, !dbg !1292
  %38 = load i8*, i8** %5, align 8, !dbg !1293
  %39 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %37, i64 128, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i32 0, i32 0), i8* %38), !dbg !1294
  %40 = load %struct._GKeyFile*, %struct._GKeyFile** %6, align 8, !dbg !1295
  %41 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i32 0, i32 0, !dbg !1296
  %42 = call noalias i8* @g_key_file_get_string(%struct._GKeyFile* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* %41, %struct._GError** null), !dbg !1297
  store i8* %42, i8** %10, align 8, !dbg !1298
  %43 = load i8*, i8** %10, align 8, !dbg !1299
  %44 = icmp eq i8* %43, null, !dbg !1301
  br i1 %44, label %45, label %47, !dbg !1302

; <label>:45:                                     ; preds = %36
  %46 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0)), !dbg !1303
  store i8* %46, i8** %10, align 8, !dbg !1305
  br label %47, !dbg !1306

; <label>:47:                                     ; preds = %45, %36
  %48 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i32 0, i32 0, !dbg !1307
  %49 = load i8*, i8** %5, align 8, !dbg !1308
  %50 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %48, i64 128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52, i32 0, i32 0), i8* %49), !dbg !1309
  %51 = load %struct._GKeyFile*, %struct._GKeyFile** %6, align 8, !dbg !1310
  %52 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i32 0, i32 0, !dbg !1311
  %53 = call noalias i8* @g_key_file_get_string(%struct._GKeyFile* %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* %52, %struct._GError** null), !dbg !1312
  store i8* %53, i8** %9, align 8, !dbg !1313
  %54 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i32 0, i32 0, !dbg !1314
  %55 = load i8*, i8** %5, align 8, !dbg !1315
  %56 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %54, i64 128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i8* %55), !dbg !1316
  %57 = load %struct._GKeyFile*, %struct._GKeyFile** %6, align 8, !dbg !1317
  %58 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i32 0, i32 0, !dbg !1318
  %59 = call noalias i8* @g_key_file_get_string(%struct._GKeyFile* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* %58, %struct._GError** null), !dbg !1319
  store i8* %59, i8** %11, align 8, !dbg !1320
  %60 = load i8*, i8** %9, align 8, !dbg !1321
  %61 = icmp eq i8* %60, null, !dbg !1323
  br i1 %61, label %62, label %67, !dbg !1324

; <label>:62:                                     ; preds = %47
  %63 = load i32, i32* %13, align 4, !dbg !1325
  %64 = icmp ne i32 %63, 0, !dbg !1325
  br i1 %64, label %65, label %67, !dbg !1327

; <label>:65:                                     ; preds = %62
  %66 = call noalias i8* @g_strdup(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0)), !dbg !1328
  store i8* %66, i8** %9, align 8, !dbg !1330
  br label %67, !dbg !1331

; <label>:67:                                     ; preds = %65, %62, %47
  %68 = load i8*, i8** %11, align 8, !dbg !1332
  %69 = icmp eq i8* %68, null, !dbg !1334
  br i1 %69, label %70, label %82, !dbg !1335

; <label>:70:                                     ; preds = %67
  %71 = load i8*, i8** %9, align 8, !dbg !1336
  %72 = call i32 @g_strcmp0(i8* %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0)), !dbg !1339
  %73 = icmp eq i32 %72, 0, !dbg !1340
  br i1 %73, label %78, label %74, !dbg !1341

; <label>:74:                                     ; preds = %70
  %75 = load i8*, i8** %9, align 8, !dbg !1342
  %76 = call i32 @g_strcmp0(i8* %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0)), !dbg !1344
  %77 = icmp eq i32 %76, 0, !dbg !1345
  br i1 %77, label %78, label %81, !dbg !1346

; <label>:78:                                     ; preds = %74, %70
  %79 = load i8*, i8** %5, align 8, !dbg !1347
  %80 = call i8* @VMToolsDefaultLogFilePath(i8* %79), !dbg !1349
  store i8* %80, i8** %11, align 8, !dbg !1350
  br label %81, !dbg !1351

; <label>:81:                                     ; preds = %78, %74
  br label %82, !dbg !1352

; <label>:82:                                     ; preds = %81, %67
  %83 = load i8*, i8** %10, align 8, !dbg !1353
  %84 = call i32 @strcmp(i8* %83, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0)) #11, !dbg !1355
  %85 = icmp eq i32 %84, 0, !dbg !1356
  br i1 %85, label %86, label %87, !dbg !1357

; <label>:86:                                     ; preds = %82
  store i32 4, i32* %14, align 4, !dbg !1358
  br label %126, !dbg !1360

; <label>:87:                                     ; preds = %82
  %88 = load i8*, i8** %10, align 8, !dbg !1361
  %89 = call i32 @strcmp(i8* %88, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0)) #11, !dbg !1364
  %90 = icmp eq i32 %89, 0, !dbg !1365
  br i1 %90, label %91, label %92, !dbg !1364

; <label>:91:                                     ; preds = %87
  store i32 12, i32* %14, align 4, !dbg !1366
  br label %125, !dbg !1368

; <label>:92:                                     ; preds = %87
  %93 = load i8*, i8** %10, align 8, !dbg !1369
  %94 = call i32 @strcmp(i8* %93, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0)) #11, !dbg !1372
  %95 = icmp eq i32 %94, 0, !dbg !1373
  br i1 %95, label %96, label %97, !dbg !1372

; <label>:96:                                     ; preds = %92
  store i32 28, i32* %14, align 4, !dbg !1374
  br label %124, !dbg !1376

; <label>:97:                                     ; preds = %92
  %98 = load i8*, i8** %10, align 8, !dbg !1377
  %99 = call i32 @strcmp(i8* %98, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0)) #11, !dbg !1380
  %100 = icmp eq i32 %99, 0, !dbg !1381
  br i1 %100, label %101, label %102, !dbg !1380

; <label>:101:                                    ; preds = %97
  store i32 60, i32* %14, align 4, !dbg !1382
  br label %123, !dbg !1384

; <label>:102:                                    ; preds = %97
  %103 = load i8*, i8** %10, align 8, !dbg !1385
  %104 = call i32 @strcmp(i8* %103, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0)) #11, !dbg !1388
  %105 = icmp eq i32 %104, 0, !dbg !1389
  br i1 %105, label %106, label %107, !dbg !1388

; <label>:106:                                    ; preds = %102
  store i32 124, i32* %14, align 4, !dbg !1390
  br label %122, !dbg !1392

; <label>:107:                                    ; preds = %102
  %108 = load i8*, i8** %10, align 8, !dbg !1393
  %109 = call i32 @strcmp(i8* %108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0)) #11, !dbg !1396
  %110 = icmp eq i32 %109, 0, !dbg !1397
  br i1 %110, label %111, label %112, !dbg !1396

; <label>:111:                                    ; preds = %107
  store i32 -4, i32* %14, align 4, !dbg !1398
  br label %121, !dbg !1400

; <label>:112:                                    ; preds = %107
  %113 = load i8*, i8** %10, align 8, !dbg !1401
  %114 = call i32 @strcmp(i8* %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i32 0, i32 0)) #11, !dbg !1404
  %115 = icmp eq i32 %114, 0, !dbg !1405
  br i1 %115, label %116, label %117, !dbg !1404

; <label>:116:                                    ; preds = %112
  store i32 0, i32* %14, align 4, !dbg !1406
  br label %120, !dbg !1408

; <label>:117:                                    ; preds = %112
  %118 = load i8*, i8** %5, align 8, !dbg !1409
  %119 = load i8*, i8** %10, align 8, !dbg !1411
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.54, i32 0, i32 0), i8* %118, i8* %119), !dbg !1412
  br label %292, !dbg !1413

; <label>:120:                                    ; preds = %116
  br label %121

; <label>:121:                                    ; preds = %120, %111
  br label %122

; <label>:122:                                    ; preds = %121, %106
  br label %123

; <label>:123:                                    ; preds = %122, %101
  br label %124

; <label>:124:                                    ; preds = %123, %96
  br label %125

; <label>:125:                                    ; preds = %124, %91
  br label %126

; <label>:126:                                    ; preds = %125, %86
  %127 = load i8*, i8** %9, align 8, !dbg !1414
  %128 = icmp ne i8* %127, null, !dbg !1416
  br i1 %128, label %129, label %244, !dbg !1417

; <label>:129:                                    ; preds = %126
  call void @llvm.dbg.declare(metadata i8** %16, metadata !1418, metadata !193), !dbg !1420
  %130 = load %struct.LogHandler*, %struct.LogHandler** %7, align 8, !dbg !1421
  %131 = icmp ne %struct.LogHandler* %130, null, !dbg !1422
  br i1 %131, label %132, label %136, !dbg !1421

; <label>:132:                                    ; preds = %129
  %133 = load %struct.LogHandler*, %struct.LogHandler** %7, align 8, !dbg !1423
  %134 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %133, i32 0, i32 2, !dbg !1425
  %135 = load i8*, i8** %134, align 8, !dbg !1425
  br label %137, !dbg !1426

; <label>:136:                                    ; preds = %129
  br label %137, !dbg !1427

; <label>:137:                                    ; preds = %136, %132
  %138 = phi i8* [ %135, %132 ], [ null, %136 ], !dbg !1429
  store i8* %138, i8** %16, align 8, !dbg !1431
  call void @llvm.dbg.declare(metadata i8** %17, metadata !1432, metadata !193), !dbg !1433
  %139 = load %struct.LogHandler*, %struct.LogHandler** %7, align 8, !dbg !1434
  %140 = icmp ne %struct.LogHandler* %139, null, !dbg !1435
  br i1 %140, label %141, label %145, !dbg !1434

; <label>:141:                                    ; preds = %137
  %142 = load %struct.LogHandler*, %struct.LogHandler** %7, align 8, !dbg !1436
  %143 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %142, i32 0, i32 8, !dbg !1437
  %144 = load i8*, i8** %143, align 8, !dbg !1437
  br label %146, !dbg !1438

; <label>:145:                                    ; preds = %137
  br label %146, !dbg !1439

; <label>:146:                                    ; preds = %145, %141
  %147 = phi i8* [ %144, %141 ], [ null, %145 ], !dbg !1440
  store i8* %147, i8** %17, align 8, !dbg !1441
  %148 = load i8*, i8** %16, align 8, !dbg !1442
  %149 = call i32 @g_strcmp0(i8* %148, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0)), !dbg !1444
  %150 = icmp eq i32 %149, 0, !dbg !1445
  br i1 %150, label %151, label %152, !dbg !1446

; <label>:151:                                    ; preds = %146
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i8** %16, align 8, !dbg !1447
  br label %152, !dbg !1449

; <label>:152:                                    ; preds = %151, %146
  %153 = load i32, i32* %13, align 4, !dbg !1450
  %154 = icmp ne i32 %153, 0, !dbg !1450
  br i1 %154, label %155, label %168, !dbg !1452

; <label>:155:                                    ; preds = %152
  %156 = load i8*, i8** %16, align 8, !dbg !1453
  %157 = load i8*, i8** %9, align 8, !dbg !1455
  %158 = call i32 @g_strcmp0(i8* %156, i8* %157), !dbg !1456
  %159 = icmp eq i32 %158, 0, !dbg !1457
  br i1 %159, label %160, label %168, !dbg !1458

; <label>:160:                                    ; preds = %155
  %161 = load i8*, i8** %17, align 8, !dbg !1459
  %162 = load i8*, i8** %11, align 8, !dbg !1462
  %163 = call i32 @g_strcmp0(i8* %161, i8* %162), !dbg !1463
  %164 = icmp eq i32 %163, 0, !dbg !1464
  br i1 %164, label %165, label %167, !dbg !1465

; <label>:165:                                    ; preds = %160
  %166 = load %struct.LogHandler*, %struct.LogHandler** %7, align 8, !dbg !1466
  store %struct.LogHandler* %166, %struct.LogHandler** %15, align 8, !dbg !1468
  br label %167, !dbg !1469

; <label>:167:                                    ; preds = %165, %160
  br label %230, !dbg !1470

; <label>:168:                                    ; preds = %155, %152
  %169 = load %struct._GPtrArray*, %struct._GPtrArray** %8, align 8, !dbg !1471
  %170 = icmp ne %struct._GPtrArray* %169, null, !dbg !1474
  br i1 %170, label %171, label %229, !dbg !1471

; <label>:171:                                    ; preds = %168
  call void @llvm.dbg.declare(metadata i32* %18, metadata !1475, metadata !193), !dbg !1477
  store i32 0, i32* %18, align 4, !dbg !1478
  br label %172, !dbg !1480

; <label>:172:                                    ; preds = %225, %171
  %173 = load i32, i32* %18, align 4, !dbg !1481
  %174 = load %struct._GPtrArray*, %struct._GPtrArray** %8, align 8, !dbg !1484
  %175 = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %174, i32 0, i32 1, !dbg !1485
  %176 = load i32, i32* %175, align 8, !dbg !1485
  %177 = icmp ult i32 %173, %176, !dbg !1486
  br i1 %177, label %178, label %228, !dbg !1487

; <label>:178:                                    ; preds = %172
  call void @llvm.dbg.declare(metadata %struct.LogHandler** %19, metadata !1488, metadata !193), !dbg !1490
  %179 = load i32, i32* %18, align 4, !dbg !1491
  %180 = zext i32 %179 to i64, !dbg !1492
  %181 = load %struct._GPtrArray*, %struct._GPtrArray** %8, align 8, !dbg !1493
  %182 = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %181, i32 0, i32 0, !dbg !1494
  %183 = load i8**, i8*** %182, align 8, !dbg !1494
  %184 = getelementptr inbounds i8*, i8** %183, i64 %180, !dbg !1492
  %185 = load i8*, i8** %184, align 8, !dbg !1492
  %186 = bitcast i8* %185 to %struct.LogHandler*, !dbg !1492
  store %struct.LogHandler* %186, %struct.LogHandler** %19, align 8, !dbg !1490
  %187 = load %struct.LogHandler*, %struct.LogHandler** %19, align 8, !dbg !1495
  %188 = icmp ne %struct.LogHandler* %187, null, !dbg !1497
  br i1 %188, label %189, label %224, !dbg !1498

; <label>:189:                                    ; preds = %178
  %190 = load %struct.LogHandler*, %struct.LogHandler** %19, align 8, !dbg !1499
  %191 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %190, i32 0, i32 5, !dbg !1501
  %192 = load i32, i32* %191, align 8, !dbg !1501
  %193 = icmp ne i32 %192, 0, !dbg !1499
  br i1 %193, label %224, label %194, !dbg !1502

; <label>:194:                                    ; preds = %189
  %195 = load %struct.LogHandler*, %struct.LogHandler** %19, align 8, !dbg !1503
  %196 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %195, i32 0, i32 1, !dbg !1505
  %197 = load i8*, i8** %196, align 8, !dbg !1505
  %198 = load i8*, i8** %5, align 8, !dbg !1506
  %199 = call i32 @strcmp(i8* %197, i8* %198) #11, !dbg !1507
  %200 = icmp eq i32 %199, 0, !dbg !1508
  br i1 %200, label %201, label %224, !dbg !1509

; <label>:201:                                    ; preds = %194
  %202 = load %struct.LogHandler*, %struct.LogHandler** %19, align 8, !dbg !1510
  %203 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %202, i32 0, i32 2, !dbg !1513
  %204 = load i8*, i8** %203, align 8, !dbg !1513
  %205 = load i8*, i8** %9, align 8, !dbg !1514
  %206 = call i32 @g_strcmp0(i8* %204, i8* %205), !dbg !1515
  %207 = icmp eq i32 %206, 0, !dbg !1516
  br i1 %207, label %208, label %223, !dbg !1517

; <label>:208:                                    ; preds = %201
  %209 = load %struct.LogHandler*, %struct.LogHandler** %19, align 8, !dbg !1518
  %210 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %209, i32 0, i32 8, !dbg !1519
  %211 = load i8*, i8** %210, align 8, !dbg !1519
  %212 = load i8*, i8** %11, align 8, !dbg !1520
  %213 = call i32 @g_strcmp0(i8* %211, i8* %212), !dbg !1521
  %214 = icmp eq i32 %213, 0, !dbg !1522
  br i1 %214, label %215, label %223, !dbg !1523

; <label>:215:                                    ; preds = %208
  %216 = load %struct.LogHandler*, %struct.LogHandler** %19, align 8, !dbg !1525
  store %struct.LogHandler* %216, %struct.LogHandler** %15, align 8, !dbg !1527
  %217 = load i32, i32* %18, align 4, !dbg !1528
  %218 = zext i32 %217 to i64, !dbg !1529
  %219 = load %struct._GPtrArray*, %struct._GPtrArray** %8, align 8, !dbg !1529
  %220 = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %219, i32 0, i32 0, !dbg !1530
  %221 = load i8**, i8*** %220, align 8, !dbg !1530
  %222 = getelementptr inbounds i8*, i8** %221, i64 %218, !dbg !1529
  store i8* null, i8** %222, align 8, !dbg !1531
  br label %223, !dbg !1532

; <label>:223:                                    ; preds = %215, %208, %201
  br label %228, !dbg !1533

; <label>:224:                                    ; preds = %194, %189, %178
  br label %225, !dbg !1534

; <label>:225:                                    ; preds = %224
  %226 = load i32, i32* %18, align 4, !dbg !1535
  %227 = add i32 %226, 1, !dbg !1535
  store i32 %227, i32* %18, align 4, !dbg !1535
  br label %172, !dbg !1537, !llvm.loop !1538

; <label>:228:                                    ; preds = %223, %172
  br label %229, !dbg !1540

; <label>:229:                                    ; preds = %228, %168
  br label %230

; <label>:230:                                    ; preds = %229, %167
  %231 = load %struct.LogHandler*, %struct.LogHandler** %15, align 8, !dbg !1541
  %232 = icmp eq %struct.LogHandler* %231, null, !dbg !1543
  br i1 %232, label %233, label %239, !dbg !1544

; <label>:233:                                    ; preds = %230
  %234 = load i8*, i8** %9, align 8, !dbg !1545
  %235 = load i8*, i8** %5, align 8, !dbg !1547
  %236 = load i32, i32* %14, align 4, !dbg !1548
  %237 = load %struct._GKeyFile*, %struct._GKeyFile** %6, align 8, !dbg !1549
  %238 = call %struct.LogHandler* @VMToolsGetLogHandler(i8* %234, i8* %235, i32 %236, %struct._GKeyFile* %237), !dbg !1550
  store %struct.LogHandler* %238, %struct.LogHandler** %15, align 8, !dbg !1551
  br label %243, !dbg !1552

; <label>:239:                                    ; preds = %230
  %240 = load i32, i32* %14, align 4, !dbg !1553
  %241 = load %struct.LogHandler*, %struct.LogHandler** %15, align 8, !dbg !1555
  %242 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %241, i32 0, i32 3, !dbg !1556
  store i32 %240, i32* %242, align 8, !dbg !1557
  br label %243

; <label>:243:                                    ; preds = %239, %233
  br label %262, !dbg !1558

; <label>:244:                                    ; preds = %126
  %245 = call noalias i8* @g_malloc0_n(i64 1, i64 56), !dbg !1559
  %246 = bitcast i8* %245 to %struct.LogHandler*, !dbg !1561
  store %struct.LogHandler* %246, %struct.LogHandler** %15, align 8, !dbg !1562
  %247 = load i8*, i8** %5, align 8, !dbg !1563
  %248 = call noalias i8* @g_strdup(i8* %247), !dbg !1564
  %249 = load %struct.LogHandler*, %struct.LogHandler** %15, align 8, !dbg !1565
  %250 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %249, i32 0, i32 1, !dbg !1566
  store i8* %248, i8** %250, align 8, !dbg !1567
  %251 = load %struct.LogHandler*, %struct.LogHandler** %15, align 8, !dbg !1568
  %252 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %251, i32 0, i32 5, !dbg !1569
  store i32 1, i32* %252, align 8, !dbg !1570
  %253 = load i32, i32* %14, align 4, !dbg !1571
  %254 = load %struct.LogHandler*, %struct.LogHandler** %15, align 8, !dbg !1572
  %255 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %254, i32 0, i32 3, !dbg !1573
  store i32 %253, i32* %255, align 8, !dbg !1574
  %256 = load %struct.LogHandler*, %struct.LogHandler** %15, align 8, !dbg !1575
  %257 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %256, i32 0, i32 7, !dbg !1576
  store i32 0, i32* %257, align 8, !dbg !1577
  %258 = load i8*, i8** %11, align 8, !dbg !1578
  %259 = call noalias i8* @g_strdup(i8* %258), !dbg !1579
  %260 = load %struct.LogHandler*, %struct.LogHandler** %15, align 8, !dbg !1580
  %261 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %260, i32 0, i32 8, !dbg !1581
  store i8* %259, i8** %261, align 8, !dbg !1582
  br label %262

; <label>:262:                                    ; preds = %244, %243
  %263 = load i32, i32* %13, align 4, !dbg !1583
  %264 = icmp ne i32 %263, 0, !dbg !1583
  br i1 %264, label %265, label %270, !dbg !1585

; <label>:265:                                    ; preds = %262
  %266 = load %struct.LogHandler*, %struct.LogHandler** %15, align 8, !dbg !1586
  store %struct.LogHandler* %266, %struct.LogHandler** @gDefaultData, align 8, !dbg !1588
  %267 = load %struct.LogHandler*, %struct.LogHandler** @gDefaultData, align 8, !dbg !1589
  %268 = bitcast %struct.LogHandler* %267 to i8*, !dbg !1589
  %269 = call void (i8*, i32, i8*, i8*)* @g_log_set_default_handler(void (i8*, i32, i8*, i8*)* @VMToolsLog, i8* %268), !dbg !1590
  br label %291, !dbg !1591

; <label>:270:                                    ; preds = %262
  %271 = load %struct._GPtrArray*, %struct._GPtrArray** @gDomains, align 8, !dbg !1592
  %272 = icmp eq %struct._GPtrArray* %271, null, !dbg !1595
  br i1 %272, label %273, label %275, !dbg !1596

; <label>:273:                                    ; preds = %270
  %274 = call %struct._GPtrArray* @g_ptr_array_new(), !dbg !1597
  store %struct._GPtrArray* %274, %struct._GPtrArray** @gDomains, align 8, !dbg !1599
  br label %275, !dbg !1600

; <label>:275:                                    ; preds = %273, %270
  %276 = load %struct._GPtrArray*, %struct._GPtrArray** @gDomains, align 8, !dbg !1601
  %277 = load %struct.LogHandler*, %struct.LogHandler** %15, align 8, !dbg !1602
  %278 = bitcast %struct.LogHandler* %277 to i8*, !dbg !1602
  call void @g_ptr_array_add(%struct._GPtrArray* %276, i8* %278), !dbg !1603
  %279 = load %struct.LogHandler*, %struct.LogHandler** %15, align 8, !dbg !1604
  %280 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %279, i32 0, i32 4, !dbg !1606
  %281 = load i32, i32* %280, align 4, !dbg !1606
  %282 = icmp eq i32 %281, 0, !dbg !1607
  br i1 %282, label %283, label %290, !dbg !1608

; <label>:283:                                    ; preds = %275
  %284 = load i8*, i8** %5, align 8, !dbg !1609
  %285 = load %struct.LogHandler*, %struct.LogHandler** %15, align 8, !dbg !1611
  %286 = bitcast %struct.LogHandler* %285 to i8*, !dbg !1611
  %287 = call i32 @g_log_set_handler(i8* %284, i32 -1, void (i8*, i32, i8*, i8*)* @VMToolsLog, i8* %286), !dbg !1612
  %288 = load %struct.LogHandler*, %struct.LogHandler** %15, align 8, !dbg !1613
  %289 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %288, i32 0, i32 4, !dbg !1614
  store i32 %287, i32* %289, align 4, !dbg !1615
  br label %290, !dbg !1616

; <label>:290:                                    ; preds = %283, %275
  br label %291

; <label>:291:                                    ; preds = %290, %265
  br label %292, !dbg !1617

; <label>:292:                                    ; preds = %291, %117, %34, %28
  %293 = load i8*, i8** %9, align 8, !dbg !1619
  call void @g_free(i8* %293), !dbg !1620
  %294 = load i8*, i8** %10, align 8, !dbg !1621
  call void @g_free(i8* %294), !dbg !1622
  %295 = load i8*, i8** %11, align 8, !dbg !1623
  call void @g_free(i8* %295), !dbg !1624
  ret void, !dbg !1625
}

declare noalias i8** @g_key_file_get_keys(%struct._GKeyFile*, i8*, i64*, %struct._GError**) #3

declare i32 @g_str_has_suffix(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare void @g_strfreev(i8**) #3

declare i32 @g_key_file_get_boolean(%struct._GKeyFile*, i8*, i8*, %struct._GError**) #3

declare i32 @g_key_file_get_integer(%struct._GKeyFile*, i8*, i8*, %struct._GError**) #3

declare void @g_log(i8*, i32, i8*, ...) #3

declare void @g_clear_error(%struct._GError**) #3

declare i32 @g_key_file_has_key(%struct._GKeyFile*, i8*, i8*, %struct._GError**) #3

declare i8** @g_ptr_array_free(%struct._GPtrArray*, i32) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #5

; Function Attrs: nounwind
declare i32 @getrlimit64(i32, %struct.rlimit*) #6

; Function Attrs: nounwind
declare i32 @setrlimit64(i32, %struct.rlimit*) #6

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #7

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #7

; Function Attrs: nounwind uwtable
define void @VMTools_AcquireLogStateLock() #0 !dbg !1626 {
  call void @g_static_rec_mutex_lock(%struct._GStaticRecMutex* @gLogStateMutex), !dbg !1629
  ret void, !dbg !1630
}

declare void @g_static_rec_mutex_lock(%struct._GStaticRecMutex*) #3

; Function Attrs: nounwind uwtable
define void @VMTools_ReleaseLogStateLock() #0 !dbg !1631 {
  call void @g_static_rec_mutex_unlock(%struct._GStaticRecMutex* @gLogStateMutex), !dbg !1632
  ret void, !dbg !1633
}

declare void @g_static_rec_mutex_unlock(%struct._GStaticRecMutex*) #3

; Function Attrs: nounwind uwtable
define void @VMTools_StopLogging() #0 !dbg !1634 {
  store i32 1, i32* @gLoggingStopped, align 4, !dbg !1635
  ret void, !dbg !1636
}

; Function Attrs: nounwind uwtable
define void @VMTools_RestartLogging() #0 !dbg !1637 {
  store i32 0, i32* @gLoggingStopped, align 4, !dbg !1638
  ret void, !dbg !1639
}

; Function Attrs: nounwind uwtable
define void @VMTools_SuspendLogIO() #0 !dbg !1640 {
  store i32 1, i32* @gLogIOSuspended, align 4, !dbg !1641
  ret void, !dbg !1642
}

; Function Attrs: nounwind uwtable
define void @VMTools_ResumeLogIO() #0 !dbg !1643 {
  %1 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %1, metadata !1644, metadata !193), !dbg !1645
  store i32 0, i32* %1, align 4, !dbg !1645
  store i32 0, i32* @gLogIOSuspended, align 4, !dbg !1646
  %2 = load %struct._GPtrArray*, %struct._GPtrArray** @gCachedLogs, align 8, !dbg !1647
  %3 = icmp ne %struct._GPtrArray* %2, null, !dbg !1647
  br i1 %3, label %4, label %11, !dbg !1649

; <label>:4:                                      ; preds = %0
  %5 = load %struct._GPtrArray*, %struct._GPtrArray** @gCachedLogs, align 8, !dbg !1650
  %6 = getelementptr inbounds %struct._GPtrArray, %struct._GPtrArray* %5, i32 0, i32 1, !dbg !1652
  %7 = load i32, i32* %6, align 8, !dbg !1652
  store i32 %7, i32* %1, align 4, !dbg !1653
  %8 = load %struct._GPtrArray*, %struct._GPtrArray** @gCachedLogs, align 8, !dbg !1654
  call void @g_ptr_array_foreach(%struct._GPtrArray* %8, void (i8*, i8*)* @VMToolsLogMsg, i8* null), !dbg !1655
  %9 = load %struct._GPtrArray*, %struct._GPtrArray** @gCachedLogs, align 8, !dbg !1656
  %10 = call i8** @g_ptr_array_free(%struct._GPtrArray* %9, i32 1), !dbg !1657
  store %struct._GPtrArray* null, %struct._GPtrArray** @gCachedLogs, align 8, !dbg !1658
  br label %11, !dbg !1659

; <label>:11:                                     ; preds = %4, %0
  %12 = load i32, i32* %1, align 4, !dbg !1660
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 128, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i32 0, i32 0), i32 %12), !dbg !1661
  %13 = load i32, i32* @gDroppedLogCount, align 4, !dbg !1662
  %14 = icmp ugt i32 %13, 0, !dbg !1664
  br i1 %14, label %15, label %17, !dbg !1665

; <label>:15:                                     ; preds = %11
  %16 = load i32, i32* @gDroppedLogCount, align 4, !dbg !1666
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i32 0, i32 0), i32 %16), !dbg !1668
  store i32 0, i32* @gDroppedLogCount, align 4, !dbg !1669
  br label %17, !dbg !1670

; <label>:17:                                     ; preds = %15, %11
  ret void, !dbg !1671
}

declare void @g_ptr_array_foreach(%struct._GPtrArray*, void (i8*, i8*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @VMToolsLogMsg(i8*, i8*) #0 !dbg !1672 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.LogEntry*, align 8
  %6 = alloca %struct.GlibLogger*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !1675, metadata !193), !dbg !1676
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1677, metadata !193), !dbg !1678
  call void @llvm.dbg.declare(metadata %struct.LogEntry** %5, metadata !1679, metadata !193), !dbg !1680
  %8 = load i8*, i8** %3, align 8, !dbg !1681
  %9 = bitcast i8* %8 to %struct.LogEntry*, !dbg !1681
  store %struct.LogEntry* %9, %struct.LogEntry** %5, align 8, !dbg !1680
  call void @llvm.dbg.declare(metadata %struct.GlibLogger** %6, metadata !1682, metadata !193), !dbg !1683
  %10 = load %struct.LogEntry*, %struct.LogEntry** %5, align 8, !dbg !1684
  %11 = getelementptr inbounds %struct.LogEntry, %struct.LogEntry* %10, i32 0, i32 2, !dbg !1685
  %12 = load %struct.LogHandler*, %struct.LogHandler** %11, align 8, !dbg !1685
  %13 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %12, i32 0, i32 0, !dbg !1686
  %14 = load %struct.GlibLogger*, %struct.GlibLogger** %13, align 8, !dbg !1686
  store %struct.GlibLogger* %14, %struct.GlibLogger** %6, align 8, !dbg !1683
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1687, metadata !193), !dbg !1688
  store i32 0, i32* %7, align 4, !dbg !1688
  %15 = load %struct.GlibLogger*, %struct.GlibLogger** %6, align 8, !dbg !1689
  %16 = icmp ne %struct.GlibLogger* %15, null, !dbg !1691
  br i1 %16, label %17, label %37, !dbg !1692

; <label>:17:                                     ; preds = %2
  %18 = load %struct.GlibLogger*, %struct.GlibLogger** %6, align 8, !dbg !1693
  %19 = getelementptr inbounds %struct.GlibLogger, %struct.GlibLogger* %18, i32 0, i32 2, !dbg !1695
  %20 = load void (i8*, i32, i8*, i8*)*, void (i8*, i32, i8*, i8*)** %19, align 8, !dbg !1695
  %21 = load %struct.LogEntry*, %struct.LogEntry** %5, align 8, !dbg !1696
  %22 = getelementptr inbounds %struct.LogEntry, %struct.LogEntry* %21, i32 0, i32 0, !dbg !1697
  %23 = load i8*, i8** %22, align 8, !dbg !1697
  %24 = load %struct.LogEntry*, %struct.LogEntry** %5, align 8, !dbg !1698
  %25 = getelementptr inbounds %struct.LogEntry, %struct.LogEntry* %24, i32 0, i32 3, !dbg !1699
  %26 = load i32, i32* %25, align 8, !dbg !1699
  %27 = load %struct.LogEntry*, %struct.LogEntry** %5, align 8, !dbg !1700
  %28 = getelementptr inbounds %struct.LogEntry, %struct.LogEntry* %27, i32 0, i32 1, !dbg !1701
  %29 = load i8*, i8** %28, align 8, !dbg !1701
  %30 = load %struct.GlibLogger*, %struct.GlibLogger** %6, align 8, !dbg !1702
  %31 = bitcast %struct.GlibLogger* %30 to i8*, !dbg !1702
  call void %20(i8* %23, i32 %26, i8* %29, i8* %31), !dbg !1693
  %32 = load %struct.LogEntry*, %struct.LogEntry** %5, align 8, !dbg !1703
  %33 = getelementptr inbounds %struct.LogEntry, %struct.LogEntry* %32, i32 0, i32 2, !dbg !1704
  %34 = load %struct.LogHandler*, %struct.LogHandler** %33, align 8, !dbg !1704
  %35 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %34, i32 0, i32 7, !dbg !1705
  %36 = load i32, i32* %35, align 8, !dbg !1705
  store i32 %36, i32* %7, align 4, !dbg !1706
  br label %65, !dbg !1707

; <label>:37:                                     ; preds = %2
  %38 = load %struct.LogHandler*, %struct.LogHandler** @gErrorData, align 8, !dbg !1708
  %39 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %38, i32 0, i32 0, !dbg !1711
  %40 = load %struct.GlibLogger*, %struct.GlibLogger** %39, align 8, !dbg !1711
  %41 = icmp ne %struct.GlibLogger* %40, null, !dbg !1712
  br i1 %41, label %42, label %64, !dbg !1708

; <label>:42:                                     ; preds = %37
  %43 = load %struct.LogHandler*, %struct.LogHandler** @gErrorData, align 8, !dbg !1713
  %44 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %43, i32 0, i32 0, !dbg !1715
  %45 = load %struct.GlibLogger*, %struct.GlibLogger** %44, align 8, !dbg !1715
  %46 = getelementptr inbounds %struct.GlibLogger, %struct.GlibLogger* %45, i32 0, i32 2, !dbg !1716
  %47 = load void (i8*, i32, i8*, i8*)*, void (i8*, i32, i8*, i8*)** %46, align 8, !dbg !1716
  %48 = load %struct.LogEntry*, %struct.LogEntry** %5, align 8, !dbg !1717
  %49 = getelementptr inbounds %struct.LogEntry, %struct.LogEntry* %48, i32 0, i32 0, !dbg !1718
  %50 = load i8*, i8** %49, align 8, !dbg !1718
  %51 = load %struct.LogEntry*, %struct.LogEntry** %5, align 8, !dbg !1719
  %52 = getelementptr inbounds %struct.LogEntry, %struct.LogEntry* %51, i32 0, i32 3, !dbg !1720
  %53 = load i32, i32* %52, align 8, !dbg !1720
  %54 = load %struct.LogEntry*, %struct.LogEntry** %5, align 8, !dbg !1721
  %55 = getelementptr inbounds %struct.LogEntry, %struct.LogEntry* %54, i32 0, i32 1, !dbg !1722
  %56 = load i8*, i8** %55, align 8, !dbg !1722
  %57 = load %struct.LogHandler*, %struct.LogHandler** @gErrorData, align 8, !dbg !1723
  %58 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %57, i32 0, i32 0, !dbg !1724
  %59 = load %struct.GlibLogger*, %struct.GlibLogger** %58, align 8, !dbg !1724
  %60 = bitcast %struct.GlibLogger* %59 to i8*, !dbg !1723
  call void %47(i8* %50, i32 %53, i8* %56, i8* %60), !dbg !1713
  %61 = load %struct.LogHandler*, %struct.LogHandler** @gErrorData, align 8, !dbg !1725
  %62 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %61, i32 0, i32 7, !dbg !1726
  %63 = load i32, i32* %62, align 8, !dbg !1726
  store i32 %63, i32* %7, align 4, !dbg !1727
  br label %64, !dbg !1728

; <label>:64:                                     ; preds = %42, %37
  br label %65

; <label>:65:                                     ; preds = %64, %17
  %66 = load i32, i32* %7, align 4, !dbg !1729
  %67 = icmp ne i32 %66, 0, !dbg !1729
  br i1 %67, label %96, label %68, !dbg !1731

; <label>:68:                                     ; preds = %65
  %69 = load %struct.LogEntry*, %struct.LogEntry** %5, align 8, !dbg !1732
  %70 = getelementptr inbounds %struct.LogEntry, %struct.LogEntry* %69, i32 0, i32 3, !dbg !1734
  %71 = load i32, i32* %70, align 8, !dbg !1734
  %72 = and i32 %71, 2, !dbg !1735
  %73 = icmp ne i32 %72, 0, !dbg !1735
  br i1 %73, label %74, label %96, !dbg !1736

; <label>:74:                                     ; preds = %68
  %75 = load %struct.LogHandler*, %struct.LogHandler** @gErrorSyslog, align 8, !dbg !1737
  %76 = icmp ne %struct.LogHandler* %75, null, !dbg !1737
  br i1 %76, label %77, label %96, !dbg !1739

; <label>:77:                                     ; preds = %74
  %78 = load %struct.LogHandler*, %struct.LogHandler** @gErrorSyslog, align 8, !dbg !1740
  %79 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %78, i32 0, i32 0, !dbg !1742
  %80 = load %struct.GlibLogger*, %struct.GlibLogger** %79, align 8, !dbg !1742
  %81 = getelementptr inbounds %struct.GlibLogger, %struct.GlibLogger* %80, i32 0, i32 2, !dbg !1743
  %82 = load void (i8*, i32, i8*, i8*)*, void (i8*, i32, i8*, i8*)** %81, align 8, !dbg !1743
  %83 = load %struct.LogEntry*, %struct.LogEntry** %5, align 8, !dbg !1744
  %84 = getelementptr inbounds %struct.LogEntry, %struct.LogEntry* %83, i32 0, i32 0, !dbg !1745
  %85 = load i8*, i8** %84, align 8, !dbg !1745
  %86 = load %struct.LogEntry*, %struct.LogEntry** %5, align 8, !dbg !1746
  %87 = getelementptr inbounds %struct.LogEntry, %struct.LogEntry* %86, i32 0, i32 3, !dbg !1747
  %88 = load i32, i32* %87, align 8, !dbg !1747
  %89 = load %struct.LogEntry*, %struct.LogEntry** %5, align 8, !dbg !1748
  %90 = getelementptr inbounds %struct.LogEntry, %struct.LogEntry* %89, i32 0, i32 1, !dbg !1749
  %91 = load i8*, i8** %90, align 8, !dbg !1749
  %92 = load %struct.LogHandler*, %struct.LogHandler** @gErrorSyslog, align 8, !dbg !1750
  %93 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %92, i32 0, i32 0, !dbg !1751
  %94 = load %struct.GlibLogger*, %struct.GlibLogger** %93, align 8, !dbg !1751
  %95 = bitcast %struct.GlibLogger* %94 to i8*, !dbg !1750
  call void %82(i8* %85, i32 %88, i8* %91, i8* %95), !dbg !1740
  br label %96, !dbg !1752

; <label>:96:                                     ; preds = %77, %74, %68, %65
  %97 = load %struct.LogEntry*, %struct.LogEntry** %5, align 8, !dbg !1753
  %98 = bitcast %struct.LogEntry* %97 to i8*, !dbg !1753
  call void @VMToolsFreeLogEntry(i8* %98), !dbg !1754
  ret void, !dbg !1755
}

; Function Attrs: nounwind uwtable
define void @VMTools_SetGuestSDKMode() #0 !dbg !1756 {
  store i32 1, i32* @gGuestSDKMode, align 4, !dbg !1757
  ret void, !dbg !1758
}

; Function Attrs: nounwind uwtable
define void @Debug(i8*, ...) #0 !dbg !1759 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1762, metadata !193), !dbg !1763
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !1764, metadata !193), !dbg !1765
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !1766
  %6 = bitcast %struct.__va_list_tag* %5 to i8*, !dbg !1766
  call void @llvm.va_start(i8* %6), !dbg !1766
  %7 = load i32, i32* @gGuestSDKMode, align 4, !dbg !1767
  %8 = icmp ne i32 %7, 0, !dbg !1767
  br i1 %8, label %9, label %12, !dbg !1769

; <label>:9:                                      ; preds = %1
  %10 = load i8*, i8** %2, align 8, !dbg !1770
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !1772
  call void (i8*, ...) @GuestSDK_Debug(i8* %10, %struct.__va_list_tag* %11), !dbg !1773
  br label %21, !dbg !1774

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !1775, !llvm.loop !1777

; <label>:13:                                     ; preds = %12
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1778, metadata !193), !dbg !1782
  %14 = call i32* @__errno_location() #1, !dbg !1783
  %15 = load i32, i32* %14, align 4, !dbg !1785
  store i32 %15, i32* %4, align 4, !dbg !1786
  %16 = load i8*, i8** %2, align 8, !dbg !1787
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !1788
  call void @VMToolsLogWrapper(i32 128, i8* %16, %struct.__va_list_tag* %17), !dbg !1789
  %18 = load i32, i32* %4, align 4, !dbg !1791
  %19 = call i32* @__errno_location() #1, !dbg !1792
  store i32 %18, i32* %19, align 4, !dbg !1794
  br label %20, !dbg !1795

; <label>:20:                                     ; preds = %13
  br label %21

; <label>:21:                                     ; preds = %20, %9
  %22 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !1796
  %23 = bitcast %struct.__va_list_tag* %22 to i8*, !dbg !1796
  call void @llvm.va_end(i8* %23), !dbg !1796
  ret void, !dbg !1797
}

declare void @GuestSDK_Debug(i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal void @VMToolsLogWrapper(i32, i8*, %struct.__va_list_tag*) #0 !dbg !1798 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.__va_list_tag*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [256 x i8], align 16
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1802, metadata !193), !dbg !1803
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1804, metadata !193), !dbg !1805
  store %struct.__va_list_tag* %2, %struct.__va_list_tag** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %6, metadata !1806, metadata !193), !dbg !1807
  %9 = load i32, i32* @gLogInitialized, align 4, !dbg !1808
  %10 = icmp ne i32 %9, 0, !dbg !1808
  br i1 %10, label %16, label %11, !dbg !1810

; <label>:11:                                     ; preds = %3
  %12 = load i32, i32* %4, align 4, !dbg !1811
  %13 = and i32 %12, 2, !dbg !1813
  %14 = icmp ne i32 %13, 0, !dbg !1813
  br i1 %14, label %16, label %15, !dbg !1814

; <label>:15:                                     ; preds = %11
  br label %45, !dbg !1815

; <label>:16:                                     ; preds = %11, %3
  call void @VMTools_AcquireLogStateLock(), !dbg !1817
  %17 = load i32, i32* @gLoggingStopped, align 4, !dbg !1818
  %18 = icmp ne i32 %17, 0, !dbg !1818
  br i1 %18, label %19, label %20, !dbg !1820

; <label>:19:                                     ; preds = %16
  call void @VMTools_ReleaseLogStateLock(), !dbg !1821
  br label %45, !dbg !1823

; <label>:20:                                     ; preds = %16
  call void @VMTools_ReleaseLogStateLock(), !dbg !1824
  %21 = load i32, i32* @gPanicCount, align 4, !dbg !1825
  %22 = icmp eq i32 %21, 0, !dbg !1827
  br i1 %22, label %23, label %35, !dbg !1828

; <label>:23:                                     ; preds = %20
  call void @llvm.dbg.declare(metadata i8** %7, metadata !1829, metadata !193), !dbg !1832
  %24 = load i8*, i8** %5, align 8, !dbg !1833
  %25 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8, !dbg !1834
  %26 = call i8* @Str_Vasprintf(i64* null, i8* %24, %struct.__va_list_tag* %25), !dbg !1835
  store i8* %26, i8** %7, align 8, !dbg !1832
  %27 = load i8*, i8** %7, align 8, !dbg !1836
  %28 = icmp ne i8* %27, null, !dbg !1838
  br i1 %28, label %29, label %34, !dbg !1839

; <label>:29:                                     ; preds = %23
  %30 = load i8*, i8** @gLogDomain, align 8, !dbg !1840
  %31 = load i32, i32* %4, align 4, !dbg !1842
  %32 = load i8*, i8** %7, align 8, !dbg !1843
  call void (i8*, i32, i8*, ...) @g_log(i8* %30, i32 %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), i8* %32), !dbg !1844
  %33 = load i8*, i8** %7, align 8, !dbg !1845
  call void @free(i8* %33) #2, !dbg !1846
  br label %34, !dbg !1847

; <label>:34:                                     ; preds = %29, %23
  br label %45, !dbg !1848

; <label>:35:                                     ; preds = %20
  call void @llvm.dbg.declare(metadata [256 x i8]* %8, metadata !1849, metadata !193), !dbg !1854
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i32 0, i32 0, !dbg !1855
  %37 = load i8*, i8** %5, align 8, !dbg !1856
  %38 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8, !dbg !1857
  %39 = call i32 @Str_Vsnprintf(i8* %36, i64 256, i8* %37, %struct.__va_list_tag* %38), !dbg !1858
  %40 = load i8*, i8** @gLogDomain, align 8, !dbg !1859
  %41 = load i32, i32* %4, align 4, !dbg !1860
  %42 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i32 0, i32 0, !dbg !1861
  %43 = load %struct.LogHandler*, %struct.LogHandler** @gDefaultData, align 8, !dbg !1862
  %44 = bitcast %struct.LogHandler* %43 to i8*, !dbg !1862
  call void @VMToolsLog(i8* %40, i32 %41, i8* %42, i8* %44), !dbg !1863
  br label %45

; <label>:45:                                     ; preds = %15, %19, %35, %34
  ret void, !dbg !1864
}

; Function Attrs: nounwind uwtable
define void @Log(i8*, ...) #0 !dbg !1865 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1866, metadata !193), !dbg !1867
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !1868, metadata !193), !dbg !1869
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !1870
  %6 = bitcast %struct.__va_list_tag* %5 to i8*, !dbg !1870
  call void @llvm.va_start(i8* %6), !dbg !1870
  %7 = load i32, i32* @gGuestSDKMode, align 4, !dbg !1871
  %8 = icmp ne i32 %7, 0, !dbg !1871
  br i1 %8, label %9, label %12, !dbg !1873

; <label>:9:                                      ; preds = %1
  %10 = load i8*, i8** %2, align 8, !dbg !1874
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !1876
  call void (i8*, ...) @GuestSDK_Log(i8* %10, %struct.__va_list_tag* %11), !dbg !1877
  br label %21, !dbg !1878

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !1879, !llvm.loop !1881

; <label>:13:                                     ; preds = %12
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1882, metadata !193), !dbg !1884
  %14 = call i32* @__errno_location() #1, !dbg !1885
  %15 = load i32, i32* %14, align 4, !dbg !1887
  store i32 %15, i32* %4, align 4, !dbg !1888
  %16 = load i8*, i8** %2, align 8, !dbg !1889
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !1890
  call void @VMToolsLogWrapper(i32 64, i8* %16, %struct.__va_list_tag* %17), !dbg !1891
  %18 = load i32, i32* %4, align 4, !dbg !1893
  %19 = call i32* @__errno_location() #1, !dbg !1894
  store i32 %18, i32* %19, align 4, !dbg !1896
  br label %20, !dbg !1897

; <label>:20:                                     ; preds = %13
  br label %21

; <label>:21:                                     ; preds = %20, %9
  %22 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !1898
  %23 = bitcast %struct.__va_list_tag* %22 to i8*, !dbg !1898
  call void @llvm.va_end(i8* %23), !dbg !1898
  ret void, !dbg !1899
}

declare void @GuestSDK_Log(i8*, ...) #3

; Function Attrs: nounwind uwtable
define void @LogV(i32, i8*, %struct.__va_list_tag*) #0 !dbg !1900 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.__va_list_tag*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !1907, metadata !193), !dbg !1908
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !1909, metadata !193), !dbg !1910
  store %struct.__va_list_tag* %2, %struct.__va_list_tag** %6, align 8
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %6, metadata !1911, metadata !193), !dbg !1912
  call void @llvm.dbg.declare(metadata i32* %7, metadata !1913, metadata !193), !dbg !1914
  %9 = load i32, i32* %4, align 4, !dbg !1915
  switch i32 %9, label %15 [
    i32 105, label %10
    i32 110, label %11
    i32 115, label %12
    i32 125, label %13
    i32 130, label %14
  ], !dbg !1916

; <label>:10:                                     ; preds = %3
  store i32 4, i32* %7, align 4, !dbg !1917
  br label %16, !dbg !1919

; <label>:11:                                     ; preds = %3
  store i32 8, i32* %7, align 4, !dbg !1920
  br label %16, !dbg !1921

; <label>:12:                                     ; preds = %3
  store i32 16, i32* %7, align 4, !dbg !1922
  br label %16, !dbg !1923

; <label>:13:                                     ; preds = %3
  store i32 32, i32* %7, align 4, !dbg !1924
  br label %16, !dbg !1925

; <label>:14:                                     ; preds = %3
  store i32 64, i32* %7, align 4, !dbg !1926
  br label %16, !dbg !1927

; <label>:15:                                     ; preds = %3
  store i32 128, i32* %7, align 4, !dbg !1928
  br label %16, !dbg !1929

; <label>:16:                                     ; preds = %15, %14, %13, %12, %11, %10
  br label %17, !dbg !1930, !llvm.loop !1931

; <label>:17:                                     ; preds = %16
  call void @llvm.dbg.declare(metadata i32* %8, metadata !1932, metadata !193), !dbg !1934
  %18 = call i32* @__errno_location() #1, !dbg !1935
  %19 = load i32, i32* %18, align 4, !dbg !1937
  store i32 %19, i32* %8, align 4, !dbg !1938
  %20 = load i32, i32* %7, align 4, !dbg !1939
  %21 = load i8*, i8** %5, align 8, !dbg !1940
  %22 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8, !dbg !1941
  call void @VMToolsLogWrapper(i32 %20, i8* %21, %struct.__va_list_tag* %22), !dbg !1942
  %23 = load i32, i32* %8, align 4, !dbg !1944
  %24 = call i32* @__errno_location() #1, !dbg !1945
  store i32 %23, i32* %24, align 4, !dbg !1947
  br label %25, !dbg !1948

; <label>:25:                                     ; preds = %17
  ret void, !dbg !1949
}

; Function Attrs: noreturn nounwind uwtable
define void @Panic(i8*, ...) #8 !dbg !1950 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca i8*, align 8
  %5 = alloca [1024 x i8], align 16
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !1951, metadata !193), !dbg !1952
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !1953, metadata !193), !dbg !1954
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !1955
  %7 = bitcast %struct.__va_list_tag* %6 to i8*, !dbg !1955
  call void @llvm.va_start(i8* %7), !dbg !1955
  %8 = load i32, i32* @gGuestSDKMode, align 4, !dbg !1956
  %9 = icmp ne i32 %8, 0, !dbg !1956
  br i1 %9, label %10, label %13, !dbg !1958

; <label>:10:                                     ; preds = %1
  %11 = load i8*, i8** %2, align 8, !dbg !1959
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !1961
  call void (i8*, ...) @GuestSDK_Panic(i8* %11, %struct.__va_list_tag* %12), !dbg !1962
  br label %41, !dbg !1963

; <label>:13:                                     ; preds = %1
  %14 = load i32, i32* @gPanicCount, align 4, !dbg !1964
  %15 = icmp eq i32 %14, 0, !dbg !1967
  br i1 %15, label %16, label %27, !dbg !1968

; <label>:16:                                     ; preds = %13
  call void @llvm.dbg.declare(metadata i8** %4, metadata !1969, metadata !193), !dbg !1971
  %17 = load i8*, i8** %2, align 8, !dbg !1972
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !1973
  %19 = call i8* @Str_Vasprintf(i64* null, i8* %17, %struct.__va_list_tag* %18), !dbg !1974
  store i8* %19, i8** %4, align 8, !dbg !1971
  %20 = load i8*, i8** %4, align 8, !dbg !1975
  %21 = icmp ne i8* %20, null, !dbg !1977
  br i1 %21, label %22, label %26, !dbg !1978

; <label>:22:                                     ; preds = %16
  %23 = load i8*, i8** @gLogDomain, align 8, !dbg !1979
  %24 = load i8*, i8** %4, align 8, !dbg !1981
  call void (i8*, i32, i8*, ...) @g_log(i8* %23, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0), i8* %24), !dbg !1982
  %25 = load i8*, i8** %4, align 8, !dbg !1983
  call void @free(i8* %25) #2, !dbg !1984
  br label %26, !dbg !1985

; <label>:26:                                     ; preds = %22, %16
  call void @VMToolsLogPanic() #12, !dbg !1986
  unreachable, !dbg !1986

; <label>:27:                                     ; preds = %13
  %28 = load i32, i32* @gPanicCount, align 4, !dbg !1987
  %29 = icmp eq i32 %28, 1, !dbg !1989
  br i1 %29, label %30, label %38, !dbg !1990

; <label>:30:                                     ; preds = %27
  call void @llvm.dbg.declare(metadata [1024 x i8]* %5, metadata !1991, metadata !193), !dbg !1996
  %31 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0, !dbg !1997
  %32 = load i8*, i8** %2, align 8, !dbg !1998
  %33 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !1999
  %34 = call i32 @Str_Vsnprintf(i8* %31, i64 1024, i8* %32, %struct.__va_list_tag* %33), !dbg !2000
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2001
  %36 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0, !dbg !2002
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i32 0, i32 0), i8* %36), !dbg !2003
  call void @VMToolsLogPanic() #12, !dbg !2004
  unreachable, !dbg !2004

; <label>:38:                                     ; preds = %27
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2005
  %40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i32 0, i32 0)), !dbg !2007
  call void @exit(i32 -1) #13, !dbg !2008
  unreachable, !dbg !2008

; <label>:41:                                     ; preds = %10
  %42 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !2009
  %43 = bitcast %struct.__va_list_tag* %42 to i8*, !dbg !2009
  call void @llvm.va_end(i8* %43), !dbg !2009
  br label %44, !dbg !2010

; <label>:44:                                     ; preds = %41, %44
  br label %44, !dbg !2011, !llvm.loop !2013
                                                  ; No predecessors!
  ret void, !dbg !2014
}

declare void @GuestSDK_Panic(i8*, ...) #3

declare i8* @Str_Vasprintf(i64*, i8*, %struct.__va_list_tag*) #3

; Function Attrs: nounwind
declare void @free(i8*) #6

; Function Attrs: inlinehint noreturn nounwind uwtable
define internal void @VMToolsLogPanic() #9 !dbg !2015 {
  %1 = alloca [4096 x i8], align 16
  %2 = alloca i8*, align 8
  %3 = load i32, i32* @gPanicCount, align 4, !dbg !2016
  %4 = add i32 %3, 1, !dbg !2016
  store i32 %4, i32* @gPanicCount, align 4, !dbg !2016
  %5 = load i32, i32* @gEnableCoreDump, align 4, !dbg !2017
  %6 = icmp ne i32 %5, 0, !dbg !2017
  br i1 %6, label %7, label %28, !dbg !2019

; <label>:7:                                      ; preds = %0
  call void @llvm.dbg.declare(metadata [4096 x i8]* %1, metadata !2020, metadata !193), !dbg !2025
  %8 = getelementptr inbounds [4096 x i8], [4096 x i8]* %1, i32 0, i32 0, !dbg !2026
  %9 = call i8* @getcwd(i8* %8, i64 4096) #2, !dbg !2028
  %10 = icmp ne i8* %9, null, !dbg !2029
  br i1 %10, label %11, label %27, !dbg !2030

; <label>:11:                                     ; preds = %7
  %12 = getelementptr inbounds [4096 x i8], [4096 x i8]* %1, i32 0, i32 0, !dbg !2031
  %13 = call i32 @access(i8* %12, i32 2) #2, !dbg !2034
  %14 = icmp eq i32 %13, -1, !dbg !2035
  br i1 %14, label %15, label %26, !dbg !2036

; <label>:15:                                     ; preds = %11
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2037, metadata !193), !dbg !2039
  %16 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0)) #2, !dbg !2040
  store i8* %16, i8** %2, align 8, !dbg !2039
  %17 = load i8*, i8** %2, align 8, !dbg !2041
  %18 = icmp ne i8* %17, null, !dbg !2043
  br i1 %18, label %19, label %25, !dbg !2044

; <label>:19:                                     ; preds = %15
  %20 = load i8*, i8** %2, align 8, !dbg !2045
  %21 = call i32 @chdir(i8* %20) #2, !dbg !2048
  %22 = icmp ne i32 %21, 0, !dbg !2048
  br i1 %22, label %23, label %24, !dbg !2049

; <label>:23:                                     ; preds = %19
  br label %24, !dbg !2050

; <label>:24:                                     ; preds = %23, %19
  br label %25, !dbg !2052

; <label>:25:                                     ; preds = %24, %15
  br label %26, !dbg !2053

; <label>:26:                                     ; preds = %25, %11
  br label %27, !dbg !2054

; <label>:27:                                     ; preds = %26, %7
  call void @abort() #13, !dbg !2055
  unreachable, !dbg !2055

; <label>:28:                                     ; preds = %0
  call void @exit(i32 -1) #13, !dbg !2056
  unreachable, !dbg !2056
                                                  ; No predecessors!
  ret void, !dbg !2057
}

declare i32 @Str_Vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #10

; Function Attrs: nounwind uwtable
define void @Warning(i8*, ...) #0 !dbg !2058 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2059, metadata !193), !dbg !2060
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !2061, metadata !193), !dbg !2062
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !2063
  %6 = bitcast %struct.__va_list_tag* %5 to i8*, !dbg !2063
  call void @llvm.va_start(i8* %6), !dbg !2063
  %7 = load i32, i32* @gGuestSDKMode, align 4, !dbg !2064
  %8 = icmp ne i32 %7, 0, !dbg !2064
  br i1 %8, label %9, label %12, !dbg !2066

; <label>:9:                                      ; preds = %1
  %10 = load i8*, i8** %2, align 8, !dbg !2067
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !2069
  call void (i8*, ...) @GuestSDK_Warning(i8* %10, %struct.__va_list_tag* %11), !dbg !2070
  br label %21, !dbg !2071

; <label>:12:                                     ; preds = %1
  br label %13, !dbg !2072, !llvm.loop !2074

; <label>:13:                                     ; preds = %12
  call void @llvm.dbg.declare(metadata i32* %4, metadata !2075, metadata !193), !dbg !2077
  %14 = call i32* @__errno_location() #1, !dbg !2078
  %15 = load i32, i32* %14, align 4, !dbg !2080
  store i32 %15, i32* %4, align 4, !dbg !2081
  %16 = load i8*, i8** %2, align 8, !dbg !2082
  %17 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !2083
  call void @VMToolsLogWrapper(i32 16, i8* %16, %struct.__va_list_tag* %17), !dbg !2084
  %18 = load i32, i32* %4, align 4, !dbg !2086
  %19 = call i32* @__errno_location() #1, !dbg !2087
  store i32 %18, i32* %19, align 4, !dbg !2089
  br label %20, !dbg !2090

; <label>:20:                                     ; preds = %13
  br label %21

; <label>:21:                                     ; preds = %20, %9
  %22 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i32 0, i32 0, !dbg !2091
  %23 = bitcast %struct.__va_list_tag* %22 to i8*, !dbg !2091
  call void @llvm.va_end(i8* %23), !dbg !2091
  ret void, !dbg !2092
}

declare void @GuestSDK_Warning(i8*, ...) #3

; Function Attrs: nounwind uwtable
define i32 @VMTools_ChangeLogFilePath(i8*, i8*, i8*, %struct._GKeyFile*) #0 !dbg !2093 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct._GKeyFile*, align 8
  %9 = alloca [128 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2096, metadata !193), !dbg !2097
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2098, metadata !193), !dbg !2099
  store i8* %2, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2100, metadata !193), !dbg !2101
  store %struct._GKeyFile* %3, %struct._GKeyFile** %8, align 8
  call void @llvm.dbg.declare(metadata %struct._GKeyFile** %8, metadata !2102, metadata !193), !dbg !2103
  call void @llvm.dbg.declare(metadata [128 x i8]* %9, metadata !2104, metadata !193), !dbg !2105
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2106, metadata !193), !dbg !2107
  store i8* null, i8** %10, align 8, !dbg !2107
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2108, metadata !193), !dbg !2109
  store i8* null, i8** %11, align 8, !dbg !2109
  call void @llvm.dbg.declare(metadata i8*** %12, metadata !2110, metadata !193), !dbg !2111
  call void @llvm.dbg.declare(metadata i32* %13, metadata !2112, metadata !193), !dbg !2113
  store i32 0, i32* %13, align 4, !dbg !2113
  %15 = load i8*, i8** %7, align 8, !dbg !2114
  %16 = icmp eq i8* %15, null, !dbg !2116
  br i1 %16, label %20, label %17, !dbg !2117

; <label>:17:                                     ; preds = %4
  %18 = load %struct._GKeyFile*, %struct._GKeyFile** %8, align 8, !dbg !2118
  %19 = icmp eq %struct._GKeyFile* %18, null, !dbg !2120
  br i1 %19, label %20, label %21, !dbg !2121

; <label>:20:                                     ; preds = %17, %4
  br label %78, !dbg !2122

; <label>:21:                                     ; preds = %17
  %22 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i32 0, i32 0, !dbg !2124
  %23 = load i8*, i8** %7, align 8, !dbg !2125
  %24 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %22, i64 128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i8* %23), !dbg !2126
  %25 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i32 0, i32 0, !dbg !2127
  %26 = load i8*, i8** %7, align 8, !dbg !2128
  %27 = load %struct._GKeyFile*, %struct._GKeyFile** %8, align 8, !dbg !2129
  %28 = call i8* @VMToolsGetLogFilePath(i8* %25, i8* %26, %struct._GKeyFile* %27), !dbg !2130
  store i8* %28, i8** %10, align 8, !dbg !2131
  %29 = load i8*, i8** %10, align 8, !dbg !2132
  %30 = icmp eq i8* %29, null, !dbg !2134
  br i1 %30, label %37, label %31, !dbg !2135

; <label>:31:                                     ; preds = %21
  %32 = load i8*, i8** %6, align 8, !dbg !2136
  %33 = icmp eq i8* %32, null, !dbg !2138
  br i1 %33, label %37, label %34, !dbg !2139

; <label>:34:                                     ; preds = %31
  %35 = load i8*, i8** %5, align 8, !dbg !2140
  %36 = icmp eq i8* %35, null, !dbg !2142
  br i1 %36, label %37, label %38, !dbg !2143

; <label>:37:                                     ; preds = %34, %31, %21
  br label %78, !dbg !2144

; <label>:38:                                     ; preds = %34
  %39 = load i8*, i8** %10, align 8, !dbg !2146
  %40 = load i8*, i8** %5, align 8, !dbg !2147
  %41 = call noalias i8** @g_strsplit(i8* %39, i8* %40, i32 2), !dbg !2148
  store i8** %41, i8*** %12, align 8, !dbg !2149
  %42 = load i8**, i8*** %12, align 8, !dbg !2150
  %43 = icmp ne i8** %42, null, !dbg !2152
  br i1 %43, label %44, label %76, !dbg !2153

; <label>:44:                                     ; preds = %38
  %45 = load i8**, i8*** %12, align 8, !dbg !2154
  %46 = load i8*, i8** %45, align 8, !dbg !2156
  %47 = icmp ne i8* %46, null, !dbg !2157
  br i1 %47, label %48, label %76, !dbg !2158

; <label>:48:                                     ; preds = %44
  %49 = load i8*, i8** %6, align 8, !dbg !2159
  %50 = load i8**, i8*** %12, align 8, !dbg !2161
  %51 = load i8*, i8** %50, align 8, !dbg !2162
  %52 = call noalias i8* (i8*, ...) @g_strjoin(i8* %49, i8* %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0), i8* null), !dbg !2163
  store i8* %52, i8** %11, align 8, !dbg !2164
  %53 = load i8*, i8** %11, align 8, !dbg !2165
  %54 = call i8* @g_strchomp(i8* %53), !dbg !2166
  store i8* %54, i8** %11, align 8, !dbg !2167
  %55 = load i8**, i8*** %12, align 8, !dbg !2168
  %56 = getelementptr inbounds i8*, i8** %55, i64 1, !dbg !2170
  %57 = load i8*, i8** %56, align 8, !dbg !2171
  %58 = icmp ne i8* %57, null, !dbg !2172
  br i1 %58, label %59, label %70, !dbg !2173

; <label>:59:                                     ; preds = %48
  call void @llvm.dbg.declare(metadata i8** %14, metadata !2174, metadata !193), !dbg !2176
  %60 = load i8*, i8** %5, align 8, !dbg !2177
  %61 = load i8*, i8** %11, align 8, !dbg !2178
  %62 = load i8**, i8*** %12, align 8, !dbg !2179
  %63 = getelementptr inbounds i8*, i8** %62, i64 1, !dbg !2180
  %64 = load i8*, i8** %63, align 8, !dbg !2181
  %65 = call noalias i8* (i8*, ...) @g_strjoin(i8* %60, i8* %61, i8* %64, i8* null), !dbg !2182
  store i8* %65, i8** %14, align 8, !dbg !2183
  %66 = load %struct._GKeyFile*, %struct._GKeyFile** %8, align 8, !dbg !2184
  %67 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i32 0, i32 0, !dbg !2185
  %68 = load i8*, i8** %14, align 8, !dbg !2186
  call void @g_key_file_set_string(%struct._GKeyFile* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* %67, i8* %68), !dbg !2187
  %69 = load i8*, i8** %14, align 8, !dbg !2188
  call void @g_free(i8* %69), !dbg !2189
  br label %74, !dbg !2190

; <label>:70:                                     ; preds = %48
  %71 = load %struct._GKeyFile*, %struct._GKeyFile** %8, align 8, !dbg !2191
  %72 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i32 0, i32 0, !dbg !2193
  %73 = load i8*, i8** %11, align 8, !dbg !2194
  call void @g_key_file_set_string(%struct._GKeyFile* %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* %72, i8* %73), !dbg !2195
  br label %74

; <label>:74:                                     ; preds = %70, %59
  store i32 1, i32* %13, align 4, !dbg !2196
  %75 = load i8*, i8** %11, align 8, !dbg !2197
  call void @g_free(i8* %75), !dbg !2198
  br label %76, !dbg !2199

; <label>:76:                                     ; preds = %74, %44, %38
  %77 = load i8**, i8*** %12, align 8, !dbg !2200
  call void @g_strfreev(i8** %77), !dbg !2201
  br label %78, !dbg !2201

; <label>:78:                                     ; preds = %76, %37, %20
  %79 = load i8*, i8** %10, align 8, !dbg !2202
  %80 = icmp ne i8* %79, null, !dbg !2202
  br i1 %80, label %81, label %83, !dbg !2204

; <label>:81:                                     ; preds = %78
  %82 = load i8*, i8** %10, align 8, !dbg !2205
  call void @g_free(i8* %82), !dbg !2207
  br label %83, !dbg !2208

; <label>:83:                                     ; preds = %81, %78
  %84 = load i32, i32* %13, align 4, !dbg !2209
  ret i32 %84, !dbg !2210
}

declare i32 @g_snprintf(i8*, i64, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal i8* @VMToolsGetLogFilePath(i8*, i8*, %struct._GKeyFile*) #0 !dbg !2211 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._GKeyFile*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !2214, metadata !193), !dbg !2215
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2216, metadata !193), !dbg !2217
  store %struct._GKeyFile* %2, %struct._GKeyFile** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._GKeyFile** %7, metadata !2218, metadata !193), !dbg !2219
  call void @llvm.dbg.declare(metadata i64* %8, metadata !2220, metadata !193), !dbg !2222
  store i64 0, i64* %8, align 8, !dbg !2222
  call void @llvm.dbg.declare(metadata i8** %9, metadata !2223, metadata !193), !dbg !2224
  store i8* null, i8** %9, align 8, !dbg !2224
  call void @llvm.dbg.declare(metadata i8** %10, metadata !2225, metadata !193), !dbg !2226
  store i8* null, i8** %10, align 8, !dbg !2226
  %12 = load %struct._GKeyFile*, %struct._GKeyFile** %7, align 8, !dbg !2227
  %13 = load i8*, i8** %5, align 8, !dbg !2228
  %14 = call noalias i8* @g_key_file_get_string(%struct._GKeyFile* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* %13, %struct._GError** null), !dbg !2229
  store i8* %14, i8** %9, align 8, !dbg !2230
  %15 = load i8*, i8** %9, align 8, !dbg !2231
  %16 = icmp eq i8* %15, null, !dbg !2233
  br i1 %16, label %17, label %20, !dbg !2234

; <label>:17:                                     ; preds = %3
  %18 = load i8*, i8** %6, align 8, !dbg !2235
  %19 = call i8* @VMToolsDefaultLogFilePath(i8* %18), !dbg !2237
  store i8* %19, i8** %4, align 8, !dbg !2238
  br label %73, !dbg !2238

; <label>:20:                                     ; preds = %3
  %21 = load i8*, i8** %9, align 8, !dbg !2239
  %22 = call i64 @strlen(i8* %21) #11, !dbg !2240
  store i64 %22, i64* %8, align 8, !dbg !2241
  %23 = load i8*, i8** %9, align 8, !dbg !2242
  store i8* %23, i8** %10, align 8, !dbg !2243
  br label %24, !dbg !2244

; <label>:24:                                     ; preds = %29, %20
  %25 = load i8*, i8** %9, align 8, !dbg !2245
  %26 = load i8, i8* %25, align 1, !dbg !2247
  %27 = sext i8 %26 to i32, !dbg !2247
  %28 = icmp eq i32 %27, 34, !dbg !2248
  br i1 %28, label %29, label %34, !dbg !2249

; <label>:29:                                     ; preds = %24
  %30 = load i8*, i8** %9, align 8, !dbg !2250
  %31 = getelementptr inbounds i8, i8* %30, i32 1, !dbg !2250
  store i8* %31, i8** %9, align 8, !dbg !2250
  %32 = load i64, i64* %8, align 8, !dbg !2252
  %33 = add i64 %32, -1, !dbg !2252
  store i64 %33, i64* %8, align 8, !dbg !2252
  br label %24, !dbg !2253, !llvm.loop !2255

; <label>:34:                                     ; preds = %24
  %35 = load i64, i64* %8, align 8, !dbg !2256
  %36 = icmp eq i64 %35, 0, !dbg !2258
  br i1 %36, label %37, label %40, !dbg !2259

; <label>:37:                                     ; preds = %34
  %38 = load i8*, i8** %6, align 8, !dbg !2260
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.58, i32 0, i32 0), i8* %38), !dbg !2262
  %39 = load i8*, i8** %10, align 8, !dbg !2263
  call void @g_free(i8* %39), !dbg !2264
  store i8* null, i8** %9, align 8, !dbg !2265
  br label %71, !dbg !2266

; <label>:40:                                     ; preds = %34
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2267, metadata !193), !dbg !2269
  %41 = load i8*, i8** %9, align 8, !dbg !2270
  %42 = call noalias i8* @g_strdup(i8* %41), !dbg !2271
  store i8* %42, i8** %11, align 8, !dbg !2269
  %43 = load i8*, i8** %10, align 8, !dbg !2272
  call void @g_free(i8* %43), !dbg !2273
  %44 = load i8*, i8** %11, align 8, !dbg !2274
  store i8* %44, i8** %9, align 8, !dbg !2275
  %45 = load i8*, i8** %9, align 8, !dbg !2276
  %46 = icmp ne i8* %45, null, !dbg !2278
  br i1 %46, label %47, label %70, !dbg !2279

; <label>:47:                                     ; preds = %40
  br label %48, !dbg !2280

; <label>:48:                                     ; preds = %56, %47
  %49 = load i8*, i8** %9, align 8, !dbg !2282
  %50 = load i64, i64* %8, align 8, !dbg !2284
  %51 = getelementptr inbounds i8, i8* %49, i64 %50, !dbg !2285
  %52 = getelementptr inbounds i8, i8* %51, i64 -1, !dbg !2286
  %53 = load i8, i8* %52, align 1, !dbg !2287
  %54 = sext i8 %53 to i32, !dbg !2287
  %55 = icmp eq i32 %54, 34, !dbg !2288
  br i1 %55, label %56, label %63, !dbg !2289

; <label>:56:                                     ; preds = %48
  %57 = load i8*, i8** %9, align 8, !dbg !2290
  %58 = load i64, i64* %8, align 8, !dbg !2292
  %59 = getelementptr inbounds i8, i8* %57, i64 %58, !dbg !2293
  %60 = getelementptr inbounds i8, i8* %59, i64 -1, !dbg !2294
  store i8 0, i8* %60, align 1, !dbg !2295
  %61 = load i64, i64* %8, align 8, !dbg !2296
  %62 = add i64 %61, -1, !dbg !2296
  store i64 %62, i64* %8, align 8, !dbg !2296
  br label %48, !dbg !2297, !llvm.loop !2299

; <label>:63:                                     ; preds = %48
  %64 = load i64, i64* %8, align 8, !dbg !2300
  %65 = icmp eq i64 %64, 0, !dbg !2302
  br i1 %65, label %66, label %69, !dbg !2303

; <label>:66:                                     ; preds = %63
  %67 = load i8*, i8** %6, align 8, !dbg !2304
  call void (i8*, i32, i8*, ...) @g_log(i8* null, i32 16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.58, i32 0, i32 0), i8* %67), !dbg !2306
  %68 = load i8*, i8** %9, align 8, !dbg !2307
  call void @g_free(i8* %68), !dbg !2308
  store i8* null, i8** %9, align 8, !dbg !2309
  br label %69, !dbg !2310

; <label>:69:                                     ; preds = %66, %63
  br label %70, !dbg !2311

; <label>:70:                                     ; preds = %69, %40
  br label %71

; <label>:71:                                     ; preds = %70, %37
  %72 = load i8*, i8** %9, align 8, !dbg !2312
  store i8* %72, i8** %4, align 8, !dbg !2313
  br label %73, !dbg !2313

; <label>:73:                                     ; preds = %71, %17
  %74 = load i8*, i8** %4, align 8, !dbg !2314
  ret i8* %74, !dbg !2314
}

declare noalias i8** @g_strsplit(i8*, i8*, i32) #3

declare noalias i8* @g_strjoin(i8*, ...) #3

declare i8* @g_strchomp(i8*) #3

declare void @g_key_file_set_string(%struct._GKeyFile*, i8*, i8*, i8*) #3

declare %struct.GlibLogger* @GlibUtils_CreateFileLogger(i8*, i32, i32, i32) #3

declare %struct.GlibLogger* @GlibUtils_CreateStdLogger() #3

declare %struct.GlibLogger* @VMToolsCreateVMXLogger() #3

declare noalias i8* @g_key_file_get_string(%struct._GKeyFile*, i8*, i8*, %struct._GError**) #3

declare %struct.GlibLogger* @GlibUtils_CreateSysLogger(i8*, i8*) #3

declare noalias i8* @g_malloc0_n(i64, i64) #3

; Function Attrs: nounwind
declare noalias i8* @strdup(i8*) #6

declare noalias i8* @g_malloc0(i64) #3

; Function Attrs: nounwind uwtable
define internal void @VMToolsFreeLogEntry(i8*) #0 !dbg !2315 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.LogEntry*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2316, metadata !193), !dbg !2317
  call void @llvm.dbg.declare(metadata %struct.LogEntry** %3, metadata !2318, metadata !193), !dbg !2319
  %4 = load i8*, i8** %2, align 8, !dbg !2320
  %5 = bitcast i8* %4 to %struct.LogEntry*, !dbg !2320
  store %struct.LogEntry* %5, %struct.LogEntry** %3, align 8, !dbg !2319
  %6 = load %struct.LogEntry*, %struct.LogEntry** %3, align 8, !dbg !2321
  %7 = getelementptr inbounds %struct.LogEntry, %struct.LogEntry* %6, i32 0, i32 0, !dbg !2322
  %8 = load i8*, i8** %7, align 8, !dbg !2322
  call void @g_free(i8* %8), !dbg !2323
  %9 = load %struct.LogEntry*, %struct.LogEntry** %3, align 8, !dbg !2324
  %10 = getelementptr inbounds %struct.LogEntry, %struct.LogEntry* %9, i32 0, i32 1, !dbg !2325
  %11 = load i8*, i8** %10, align 8, !dbg !2325
  call void @g_free(i8* %11), !dbg !2326
  %12 = load %struct.LogEntry*, %struct.LogEntry** %3, align 8, !dbg !2327
  %13 = bitcast %struct.LogEntry* %12 to i8*, !dbg !2327
  call void @g_free(i8* %13), !dbg !2328
  ret void, !dbg !2329
}

; Function Attrs: nounwind uwtable
define internal i8* @VMToolsLogFormat(i8*, i8*, i32, %struct.LogHandler*, i32) #0 !dbg !2330 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.LogHandler*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !2333, metadata !193), !dbg !2334
  store i8* %1, i8** %7, align 8
  call void @llvm.dbg.declare(metadata i8** %7, metadata !2335, metadata !193), !dbg !2336
  store i32 %2, i32* %8, align 4
  call void @llvm.dbg.declare(metadata i32* %8, metadata !2337, metadata !193), !dbg !2338
  store %struct.LogHandler* %3, %struct.LogHandler** %9, align 8
  call void @llvm.dbg.declare(metadata %struct.LogHandler** %9, metadata !2339, metadata !193), !dbg !2340
  store i32 %4, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !2341, metadata !193), !dbg !2342
  call void @llvm.dbg.declare(metadata i8** %11, metadata !2343, metadata !193), !dbg !2344
  store i8* null, i8** %11, align 8, !dbg !2344
  call void @llvm.dbg.declare(metadata i8** %12, metadata !2345, metadata !193), !dbg !2346
  call void @llvm.dbg.declare(metadata i64* %13, metadata !2347, metadata !193), !dbg !2350
  store i64 0, i64* %13, align 8, !dbg !2350
  call void @llvm.dbg.declare(metadata i32* %14, metadata !2351, metadata !193), !dbg !2352
  store i32 1, i32* %14, align 4, !dbg !2352
  call void @llvm.dbg.declare(metadata i32* %15, metadata !2353, metadata !193), !dbg !2354
  store i32 1, i32* %15, align 4, !dbg !2354
  call void @llvm.dbg.declare(metadata i8** %16, metadata !2355, metadata !193), !dbg !2356
  %17 = load i8*, i8** %7, align 8, !dbg !2357
  %18 = icmp eq i8* %17, null, !dbg !2359
  br i1 %18, label %19, label %21, !dbg !2360

; <label>:19:                                     ; preds = %5
  %20 = load i8*, i8** @gLogDomain, align 8, !dbg !2361
  store i8* %20, i8** %7, align 8, !dbg !2363
  br label %21, !dbg !2364

; <label>:21:                                     ; preds = %19, %5
  %22 = load i8*, i8** %6, align 8, !dbg !2365
  %23 = icmp eq i8* %22, null, !dbg !2367
  br i1 %23, label %24, label %25, !dbg !2368

; <label>:24:                                     ; preds = %21
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i8** %6, align 8, !dbg !2369
  br label %25, !dbg !2371

; <label>:25:                                     ; preds = %24, %21
  %26 = load i32, i32* %8, align 4, !dbg !2372
  %27 = and i32 %26, -4, !dbg !2373
  switch i32 %27, label %34 [
    i32 4, label %28
    i32 8, label %29
    i32 16, label %30
    i32 32, label %31
    i32 64, label %32
    i32 128, label %33
  ], !dbg !2374

; <label>:28:                                     ; preds = %25
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i8** %12, align 8, !dbg !2375
  br label %35, !dbg !2377

; <label>:29:                                     ; preds = %25
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.36, i32 0, i32 0), i8** %12, align 8, !dbg !2378
  br label %35, !dbg !2379

; <label>:30:                                     ; preds = %25
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i8** %12, align 8, !dbg !2380
  br label %35, !dbg !2381

; <label>:31:                                     ; preds = %25
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), i8** %12, align 8, !dbg !2382
  br label %35, !dbg !2383

; <label>:32:                                     ; preds = %25
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i8** %12, align 8, !dbg !2384
  br label %35, !dbg !2385

; <label>:33:                                     ; preds = %25
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i8** %12, align 8, !dbg !2386
  br label %35, !dbg !2387

; <label>:34:                                     ; preds = %25
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i8** %12, align 8, !dbg !2388
  br label %35, !dbg !2389

; <label>:35:                                     ; preds = %34, %33, %32, %31, %30, %29, %28
  %36 = load %struct.LogHandler*, %struct.LogHandler** %9, align 8, !dbg !2390
  %37 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %36, i32 0, i32 0, !dbg !2392
  %38 = load %struct.GlibLogger*, %struct.GlibLogger** %37, align 8, !dbg !2392
  %39 = icmp ne %struct.GlibLogger* %38, null, !dbg !2393
  br i1 %39, label %40, label %51, !dbg !2394

; <label>:40:                                     ; preds = %35
  %41 = load %struct.LogHandler*, %struct.LogHandler** %9, align 8, !dbg !2395
  %42 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %41, i32 0, i32 0, !dbg !2397
  %43 = load %struct.GlibLogger*, %struct.GlibLogger** %42, align 8, !dbg !2397
  %44 = getelementptr inbounds %struct.GlibLogger, %struct.GlibLogger* %43, i32 0, i32 0, !dbg !2398
  %45 = load i32, i32* %44, align 8, !dbg !2398
  store i32 %45, i32* %14, align 4, !dbg !2399
  %46 = load %struct.LogHandler*, %struct.LogHandler** %9, align 8, !dbg !2400
  %47 = getelementptr inbounds %struct.LogHandler, %struct.LogHandler* %46, i32 0, i32 0, !dbg !2401
  %48 = load %struct.GlibLogger*, %struct.GlibLogger** %47, align 8, !dbg !2401
  %49 = getelementptr inbounds %struct.GlibLogger, %struct.GlibLogger* %48, i32 0, i32 1, !dbg !2402
  %50 = load i32, i32* %49, align 4, !dbg !2402
  store i32 %50, i32* %15, align 4, !dbg !2403
  br label %51, !dbg !2404

; <label>:51:                                     ; preds = %40, %35
  %52 = call i8* @VMTools_GetTimeAsString(), !dbg !2405
  store i8* %52, i8** %16, align 8, !dbg !2406
  %53 = load i32, i32* %15, align 4, !dbg !2407
  %54 = icmp ne i32 %53, 0, !dbg !2407
  br i1 %54, label %86, label %55, !dbg !2409

; <label>:55:                                     ; preds = %51
  %56 = load i32, i32* %14, align 4, !dbg !2410
  %57 = icmp ne i32 %56, 0, !dbg !2410
  br i1 %57, label %58, label %72, !dbg !2413

; <label>:58:                                     ; preds = %55
  %59 = load i8*, i8** %16, align 8, !dbg !2414
  %60 = icmp ne i8* %59, null, !dbg !2416
  br i1 %60, label %61, label %63, !dbg !2417

; <label>:61:                                     ; preds = %58
  %62 = load i8*, i8** %16, align 8, !dbg !2418
  br label %64, !dbg !2420

; <label>:63:                                     ; preds = %58
  br label %64, !dbg !2421

; <label>:64:                                     ; preds = %63, %61
  %65 = phi i8* [ %62, %61 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), %63 ], !dbg !2423
  %66 = load i8*, i8** %12, align 8, !dbg !2425
  %67 = load i8*, i8** @gLogDomain, align 8, !dbg !2426
  %68 = load i8*, i8** %7, align 8, !dbg !2427
  %69 = load i8*, i8** %6, align 8, !dbg !2428
  %70 = call i32 (i8**, i8*, ...) @VMToolsAsprintf(i8** %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.42, i32 0, i32 0), i8* %65, i8* %66, i8* %67, i8* %68, i8* %69), !dbg !2429
  %71 = sext i32 %70 to i64, !dbg !2429
  store i64 %71, i64* %13, align 8, !dbg !2430
  br label %85, !dbg !2431

; <label>:72:                                     ; preds = %55
  %73 = load i8*, i8** %16, align 8, !dbg !2432
  %74 = icmp ne i8* %73, null, !dbg !2434
  br i1 %74, label %75, label %77, !dbg !2435

; <label>:75:                                     ; preds = %72
  %76 = load i8*, i8** %16, align 8, !dbg !2436
  br label %78, !dbg !2438

; <label>:77:                                     ; preds = %72
  br label %78, !dbg !2439

; <label>:78:                                     ; preds = %77, %75
  %79 = phi i8* [ %76, %75 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), %77 ], !dbg !2441
  %80 = load i8*, i8** %12, align 8, !dbg !2443
  %81 = load i8*, i8** %7, align 8, !dbg !2444
  %82 = load i8*, i8** %6, align 8, !dbg !2445
  %83 = call i32 (i8**, i8*, ...) @VMToolsAsprintf(i8** %11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.44, i32 0, i32 0), i8* %79, i8* %80, i8* %81, i8* %82), !dbg !2446
  %84 = sext i32 %83 to i64, !dbg !2446
  store i64 %84, i64* %13, align 8, !dbg !2447
  br label %85

; <label>:85:                                     ; preds = %78, %64
  br label %138, !dbg !2448

; <label>:86:                                     ; preds = %51
  %87 = load i32, i32* %10, align 4, !dbg !2449
  %88 = icmp ne i32 %87, 0, !dbg !2449
  br i1 %88, label %89, label %120, !dbg !2452

; <label>:89:                                     ; preds = %86
  %90 = load i32, i32* %14, align 4, !dbg !2453
  %91 = icmp ne i32 %90, 0, !dbg !2453
  br i1 %91, label %92, label %106, !dbg !2456

; <label>:92:                                     ; preds = %89
  %93 = load i8*, i8** %16, align 8, !dbg !2457
  %94 = icmp ne i8* %93, null, !dbg !2459
  br i1 %94, label %95, label %97, !dbg !2460

; <label>:95:                                     ; preds = %92
  %96 = load i8*, i8** %16, align 8, !dbg !2461
  br label %98, !dbg !2463

; <label>:97:                                     ; preds = %92
  br label %98, !dbg !2464

; <label>:98:                                     ; preds = %97, %95
  %99 = phi i8* [ %96, %95 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), %97 ], !dbg !2466
  %100 = load i8*, i8** %12, align 8, !dbg !2468
  %101 = load i8*, i8** @gLogDomain, align 8, !dbg !2469
  %102 = load i8*, i8** %7, align 8, !dbg !2470
  %103 = load i8*, i8** %6, align 8, !dbg !2471
  %104 = call i32 (i8**, i8*, ...) @VMToolsAsprintf(i8** %11, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.45, i32 0, i32 0), i8* %99, i8* %100, i8* %101, i8* %102, i8* %103), !dbg !2472
  %105 = sext i32 %104 to i64, !dbg !2472
  store i64 %105, i64* %13, align 8, !dbg !2473
  br label %119, !dbg !2474

; <label>:106:                                    ; preds = %89
  %107 = load i8*, i8** %16, align 8, !dbg !2475
  %108 = icmp ne i8* %107, null, !dbg !2477
  br i1 %108, label %109, label %111, !dbg !2478

; <label>:109:                                    ; preds = %106
  %110 = load i8*, i8** %16, align 8, !dbg !2479
  br label %112, !dbg !2481

; <label>:111:                                    ; preds = %106
  br label %112, !dbg !2482

; <label>:112:                                    ; preds = %111, %109
  %113 = phi i8* [ %110, %109 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), %111 ], !dbg !2484
  %114 = load i8*, i8** %12, align 8, !dbg !2486
  %115 = load i8*, i8** %7, align 8, !dbg !2487
  %116 = load i8*, i8** %6, align 8, !dbg !2488
  %117 = call i32 (i8**, i8*, ...) @VMToolsAsprintf(i8** %11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.46, i32 0, i32 0), i8* %113, i8* %114, i8* %115, i8* %116), !dbg !2489
  %118 = sext i32 %117 to i64, !dbg !2489
  store i64 %118, i64* %13, align 8, !dbg !2490
  br label %119

; <label>:119:                                    ; preds = %112, %98
  br label %137, !dbg !2491

; <label>:120:                                    ; preds = %86
  %121 = load i32, i32* %14, align 4, !dbg !2492
  %122 = icmp ne i32 %121, 0, !dbg !2492
  br i1 %122, label %123, label %130, !dbg !2495

; <label>:123:                                    ; preds = %120
  %124 = load i8*, i8** %12, align 8, !dbg !2496
  %125 = load i8*, i8** @gLogDomain, align 8, !dbg !2498
  %126 = load i8*, i8** %7, align 8, !dbg !2499
  %127 = load i8*, i8** %6, align 8, !dbg !2500
  %128 = call i32 (i8**, i8*, ...) @VMToolsAsprintf(i8** %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.47, i32 0, i32 0), i8* %124, i8* %125, i8* %126, i8* %127), !dbg !2501
  %129 = sext i32 %128 to i64, !dbg !2501
  store i64 %129, i64* %13, align 8, !dbg !2502
  br label %136, !dbg !2503

; <label>:130:                                    ; preds = %120
  %131 = load i8*, i8** %12, align 8, !dbg !2504
  %132 = load i8*, i8** %7, align 8, !dbg !2506
  %133 = load i8*, i8** %6, align 8, !dbg !2507
  %134 = call i32 (i8**, i8*, ...) @VMToolsAsprintf(i8** %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.48, i32 0, i32 0), i8* %131, i8* %132, i8* %133), !dbg !2508
  %135 = sext i32 %134 to i64, !dbg !2508
  store i64 %135, i64* %13, align 8, !dbg !2509
  br label %136

; <label>:136:                                    ; preds = %130, %123
  br label %137

; <label>:137:                                    ; preds = %136, %119
  br label %138

; <label>:138:                                    ; preds = %137, %85
  %139 = load i8*, i8** %16, align 8, !dbg !2510
  call void @g_free(i8* %139), !dbg !2511
  %140 = load i8*, i8** %11, align 8, !dbg !2512
  %141 = icmp ne i8* %140, null, !dbg !2514
  br i1 %141, label %142, label %155, !dbg !2515

; <label>:142:                                    ; preds = %138
  %143 = load i64, i64* %13, align 8, !dbg !2516
  %144 = sub i64 %143, 2, !dbg !2518
  %145 = load i8*, i8** %11, align 8, !dbg !2519
  %146 = getelementptr inbounds i8, i8* %145, i64 %144, !dbg !2519
  %147 = load i8, i8* %146, align 1, !dbg !2519
  %148 = sext i8 %147 to i32, !dbg !2519
  %149 = icmp eq i32 %148, 10, !dbg !2520
  br i1 %149, label %150, label %155, !dbg !2521

; <label>:150:                                    ; preds = %142
  %151 = load i64, i64* %13, align 8, !dbg !2522
  %152 = sub i64 %151, 1, !dbg !2524
  %153 = load i8*, i8** %11, align 8, !dbg !2525
  %154 = getelementptr inbounds i8, i8* %153, i64 %152, !dbg !2525
  store i8 0, i8* %154, align 1, !dbg !2526
  br label %155, !dbg !2527

; <label>:155:                                    ; preds = %150, %142, %138
  %156 = load i8*, i8** %11, align 8, !dbg !2528
  %157 = icmp ne i8* %156, null, !dbg !2528
  br i1 %157, label %159, label %158, !dbg !2530

; <label>:158:                                    ; preds = %155
  call void @VMToolsLogPanic() #12, !dbg !2531
  unreachable, !dbg !2531

; <label>:159:                                    ; preds = %155
  %160 = load i8*, i8** %11, align 8, !dbg !2533
  ret i8* %160, !dbg !2534
}

declare %struct._GPtrArray* @g_ptr_array_sized_new(i32) #3

declare void @g_ptr_array_add(%struct._GPtrArray*, i8*) #3

declare i8* @g_ptr_array_remove_index(%struct._GPtrArray*, i32) #3

declare void (i8*, i32, i8*, i8*)* @g_log_set_default_handler(void (i8*, i32, i8*, i8*)*, i8*) #3

declare void @g_log_default_handler(i8*, i32, i8*, i8*) #3

declare void @g_log_remove_handler(i8*, i32) #3

declare i32 @g_strcmp0(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal i8* @VMToolsDefaultLogFilePath(i8*) #0 !dbg !2535 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !2538, metadata !193), !dbg !2539
  call void @llvm.dbg.declare(metadata i8** %3, metadata !2540, metadata !193), !dbg !2541
  %4 = load i8*, i8** %2, align 8, !dbg !2542
  %5 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.56, i32 0, i32 0), i8* %4), !dbg !2543
  store i8* %5, i8** %3, align 8, !dbg !2544
  %6 = load i8*, i8** %3, align 8, !dbg !2545
  ret i8* %6, !dbg !2546
}

declare %struct._GPtrArray* @g_ptr_array_new() #3

; Function Attrs: nounwind
declare i8* @getcwd(i8*, i64) #6

; Function Attrs: nounwind
declare i32 @access(i8*, i32) #6

; Function Attrs: nounwind
declare i8* @getenv(i8*) #6

; Function Attrs: nounwind
declare i32 @chdir(i8*) #6

; Function Attrs: noreturn nounwind
declare void @abort() #10

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { inlinehint noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind readonly }
attributes #12 = { noreturn }
attributes #13 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!185, !186}
!llvm.ident = !{!187}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !46, globals: !98)
!1 = !DIFile(filename: "libvmtools_la-vmtoolsLog.o.i", directory: "/home/lichi/Desktop/open-vm-tools/line1157")
!2 = !{!3, !15, !24}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 51, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/usr/include/glib-2.0/glib/gmessages.h", directory: "/home/lichi/Desktop/open-vm-tools/line1157")
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
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 33, size: 32, align: 32, elements: !17)
!16 = !DIFile(filename: "/usr/include/glib-2.0/glib/gkeyfile.h", directory: "/home/lichi/Desktop/open-vm-tools/line1157")
!17 = !{!18, !19, !20, !21, !22, !23}
!18 = !DIEnumerator(name: "G_KEY_FILE_ERROR_UNKNOWN_ENCODING", value: 0)
!19 = !DIEnumerator(name: "G_KEY_FILE_ERROR_PARSE", value: 1)
!20 = !DIEnumerator(name: "G_KEY_FILE_ERROR_NOT_FOUND", value: 2)
!21 = !DIEnumerator(name: "G_KEY_FILE_ERROR_KEY_NOT_FOUND", value: 3)
!22 = !DIEnumerator(name: "G_KEY_FILE_ERROR_GROUP_NOT_FOUND", value: 4)
!23 = !DIEnumerator(name: "G_KEY_FILE_ERROR_INVALID_VALUE", value: 5)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__rlimit_resource", file: !25, line: 31, size: 32, align: 32, elements: !26)
!25 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/resource.h", directory: "/home/lichi/Desktop/open-vm-tools/line1157")
!26 = !{!27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45}
!27 = !DIEnumerator(name: "RLIMIT_CPU", value: 0)
!28 = !DIEnumerator(name: "RLIMIT_FSIZE", value: 1)
!29 = !DIEnumerator(name: "RLIMIT_DATA", value: 2)
!30 = !DIEnumerator(name: "RLIMIT_STACK", value: 3)
!31 = !DIEnumerator(name: "RLIMIT_CORE", value: 4)
!32 = !DIEnumerator(name: "__RLIMIT_RSS", value: 5)
!33 = !DIEnumerator(name: "RLIMIT_NOFILE", value: 7)
!34 = !DIEnumerator(name: "__RLIMIT_OFILE", value: 7)
!35 = !DIEnumerator(name: "RLIMIT_AS", value: 9)
!36 = !DIEnumerator(name: "__RLIMIT_NPROC", value: 6)
!37 = !DIEnumerator(name: "__RLIMIT_MEMLOCK", value: 8)
!38 = !DIEnumerator(name: "__RLIMIT_LOCKS", value: 10)
!39 = !DIEnumerator(name: "__RLIMIT_SIGPENDING", value: 11)
!40 = !DIEnumerator(name: "__RLIMIT_MSGQUEUE", value: 12)
!41 = !DIEnumerator(name: "__RLIMIT_NICE", value: 13)
!42 = !DIEnumerator(name: "__RLIMIT_RTPRIO", value: 14)
!43 = !DIEnumerator(name: "__RLIMIT_RTTIME", value: 15)
!44 = !DIEnumerator(name: "__RLIMIT_NLIMITS", value: 16)
!45 = !DIEnumerator(name: "__RLIM_NLIMITS", value: 16)
!46 = !{!47, !48, !52, !54, !58, !59, !61}
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64, align: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "gchar", file: !50, line: 46, baseType: !51)
!50 = !DIFile(filename: "/usr/include/glib-2.0/glib/gtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1157")
!51 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "rlim_t", file: !25, line: 133, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__rlim64_t", file: !56, line: 137, baseType: !57)
!56 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1157")
!57 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!58 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint", file: !50, line: 55, baseType: !60)
!60 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogHandler", file: !63, line: 131, baseType: !64)
!63 = !DIFile(filename: "vmtoolsLog.c", directory: "/home/lichi/Desktop/open-vm-tools/line1157")
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LogHandler", file: !63, line: 117, size: 448, align: 64, elements: !65)
!65 = !{!66, !90, !91, !92, !93, !94, !95, !96, !97}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "logger", scope: !64, file: !63, line: 118, baseType: !67, size: 64, align: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "GlibLogger", file: !69, line: 57, baseType: !70)
!69 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/glibUtils.h", directory: "/home/lichi/Desktop/open-vm-tools/line1157")
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "GlibLogger", file: !69, line: 52, size: 192, align: 64, elements: !71)
!71 = !{!72, !75, !76, !85}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !70, file: !69, line: 53, baseType: !73, size: 32, align: 32)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "gboolean", file: !50, line: 50, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "gint", file: !50, line: 49, baseType: !58)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "addsTimestamp", scope: !70, file: !69, line: 54, baseType: !73, size: 32, align: 32, offset: 32)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "logfn", scope: !70, file: !69, line: 55, baseType: !77, size: 64, align: 64, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "GLogFunc", file: !4, line: 71, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!79 = !DISubroutineType(types: !80)
!80 = !{null, !81, !83, !81, !84}
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64, align: 64)
!82 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "GLogLevelFlags", file: !4, line: 66, baseType: !3)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "gpointer", file: !50, line: 77, baseType: !47)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "dtor", scope: !70, file: !69, line: 56, baseType: !86, size: 64, align: 64, offset: 128)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "GDestroyNotify", file: !50, line: 87, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64, align: 64)
!88 = !DISubroutineType(types: !89)
!89 = !{null, !84}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !64, file: !63, line: 119, baseType: !48, size: 64, align: 64, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !64, file: !63, line: 120, baseType: !48, size: 64, align: 64, offset: 128)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !64, file: !63, line: 121, baseType: !59, size: 32, align: 32, offset: 192)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "handlerId", scope: !64, file: !63, line: 122, baseType: !59, size: 32, align: 32, offset: 224)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "inherited", scope: !64, file: !63, line: 123, baseType: !73, size: 32, align: 32, offset: 256)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "needsFileIO", scope: !64, file: !63, line: 128, baseType: !73, size: 32, align: 32, offset: 288)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "isSysLog", scope: !64, file: !63, line: 129, baseType: !73, size: 32, align: 32, offset: 320)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "confData", scope: !64, file: !63, line: 130, baseType: !48, size: 64, align: 64, offset: 384)
!98 = !{!99, !104, !105, !106, !107, !108, !109, !167, !168, !177, !178, !179, !180, !181, !182, !183, !184}
!99 = distinct !DIGlobalVariable(name: "gStdLogHandler", scope: !100, file: !63, line: 1028, type: !61, isLocal: true, isDefinition: true, variable: %struct.LogHandler** @VMTools_ConfigLogToStdio.gStdLogHandler)
!100 = distinct !DISubprogram(name: "VMTools_ConfigLogToStdio", scope: !63, file: !63, line: 1026, type: !101, isLocal: false, isDefinition: true, scopeLine: 1027, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!101 = !DISubroutineType(types: !102)
!102 = !{null, !81}
!103 = !{}
!104 = distinct !DIGlobalVariable(name: "gDefaultData", scope: !0, file: !63, line: 153, type: !61, isLocal: true, isDefinition: true, variable: %struct.LogHandler** @gDefaultData)
!105 = distinct !DIGlobalVariable(name: "gErrorData", scope: !0, file: !63, line: 154, type: !61, isLocal: true, isDefinition: true, variable: %struct.LogHandler** @gErrorData)
!106 = distinct !DIGlobalVariable(name: "gErrorSyslog", scope: !0, file: !63, line: 155, type: !61, isLocal: true, isDefinition: true, variable: %struct.LogHandler** @gErrorSyslog)
!107 = distinct !DIGlobalVariable(name: "gLogDomain", scope: !0, file: !63, line: 145, type: !48, isLocal: true, isDefinition: true, variable: i8** @gLogDomain)
!108 = distinct !DIGlobalVariable(name: "gLogInitialized", scope: !0, file: !63, line: 157, type: !73, isLocal: true, isDefinition: true, variable: i32* @gLogInitialized)
!109 = distinct !DIGlobalVariable(name: "gLogStateMutex", scope: !0, file: !63, line: 158, type: !110, isLocal: true, isDefinition: true, variable: %struct._GStaticRecMutex* @gLogStateMutex)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "GStaticRecMutex", file: !111, line: 156, baseType: !112)
!111 = !DIFile(filename: "/usr/include/glib-2.0/glib/deprecated/gthread.h", directory: "/home/lichi/Desktop/open-vm-tools/line1157")
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GStaticRecMutex", file: !111, line: 157, size: 512, align: 64, elements: !113)
!113 = !{!114, !158, !159}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !112, file: !111, line: 160, baseType: !115, size: 384, align: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "GStaticMutex", file: !111, line: 140, baseType: !116)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !111, line: 133, size: 384, align: 64, elements: !117)
!117 = !{!118, !129}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !116, file: !111, line: 135, baseType: !119, size: 64, align: 64)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64, align: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "GMutex", file: !121, line: 51, baseType: !122)
!121 = !DIFile(filename: "/usr/include/glib-2.0/glib/gthread.h", directory: "/home/lichi/Desktop/open-vm-tools/line1157")
!122 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "_GMutex", file: !121, line: 58, size: 64, align: 64, elements: !123)
!123 = !{!124, !125}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !122, file: !121, line: 61, baseType: !84, size: 64, align: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !122, file: !121, line: 62, baseType: !126, size: 64, align: 32)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 64, align: 32, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 2)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !116, file: !111, line: 138, baseType: !130, size: 320, align: 64, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !131, line: 128, baseType: !132)
!131 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "/home/lichi/Desktop/open-vm-tools/line1157")
!132 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !131, line: 90, size: 320, align: 64, elements: !133)
!133 = !{!134, !152, !156}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !132, file: !131, line: 125, baseType: !135, size: 320, align: 64)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !131, line: 92, size: 320, align: 64, elements: !136)
!136 = !{!137, !138, !139, !140, !141, !142, !144, !145}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !135, file: !131, line: 94, baseType: !58, size: 32, align: 32)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !135, file: !131, line: 95, baseType: !60, size: 32, align: 32, offset: 32)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !135, file: !131, line: 96, baseType: !58, size: 32, align: 32, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !135, file: !131, line: 98, baseType: !60, size: 32, align: 32, offset: 96)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !135, file: !131, line: 102, baseType: !58, size: 32, align: 32, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !135, file: !131, line: 104, baseType: !143, size: 16, align: 16, offset: 160)
!143 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !135, file: !131, line: 105, baseType: !143, size: 16, align: 16, offset: 176)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !135, file: !131, line: 106, baseType: !146, size: 128, align: 64, offset: 192)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !131, line: 79, baseType: !147)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !131, line: 75, size: 128, align: 64, elements: !148)
!148 = !{!149, !151}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !147, file: !131, line: 77, baseType: !150, size: 64, align: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64, align: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !147, file: !131, line: 78, baseType: !150, size: 64, align: 64, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !132, file: !131, line: 126, baseType: !153, size: 320, align: 8)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 320, align: 8, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 40)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !132, file: !131, line: 127, baseType: !157, size: 64, align: 64)
!157 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !112, file: !111, line: 161, baseType: !59, size: 32, align: 32, offset: 384)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "unused", scope: !112, file: !111, line: 171, baseType: !160, size: 64, align: 64, offset: 448)
!160 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !112, file: !111, line: 164, size: 64, align: 64, elements: !161)
!161 = !{!162, !164}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !160, file: !111, line: 168, baseType: !163, size: 64, align: 64)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !131, line: 60, baseType: !57)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !160, file: !111, line: 170, baseType: !165, size: 64, align: 64)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "gdouble", file: !50, line: 58, baseType: !166)
!166 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!167 = distinct !DIGlobalVariable(name: "gLogEnabled", scope: !0, file: !63, line: 150, type: !73, isLocal: true, isDefinition: true, variable: i32* @gLogEnabled)
!168 = distinct !DIGlobalVariable(name: "gDomains", scope: !0, file: !63, line: 156, type: !169, isLocal: true, isDefinition: true, variable: %struct._GPtrArray** @gDomains)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64, align: 64)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "GPtrArray", file: !171, line: 39, baseType: !172)
!171 = !DIFile(filename: "/usr/include/glib-2.0/glib/garray.h", directory: "/home/lichi/Desktop/open-vm-tools/line1157")
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GPtrArray", file: !171, line: 53, size: 128, align: 64, elements: !173)
!173 = !{!174, !176}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "pdata", scope: !172, file: !171, line: 55, baseType: !175, size: 64, align: 64)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64, align: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !172, file: !171, line: 56, baseType: !59, size: 32, align: 32, offset: 64)
!177 = distinct !DIGlobalVariable(name: "gMaxCacheEntries", scope: !0, file: !63, line: 148, type: !74, isLocal: true, isDefinition: true, variable: i32* @gMaxCacheEntries)
!178 = distinct !DIGlobalVariable(name: "gEnableCoreDump", scope: !0, file: !63, line: 149, type: !73, isLocal: true, isDefinition: true, variable: i32* @gEnableCoreDump)
!179 = distinct !DIGlobalVariable(name: "gLoggingStopped", scope: !0, file: !63, line: 159, type: !73, isLocal: true, isDefinition: true, variable: i32* @gLoggingStopped)
!180 = distinct !DIGlobalVariable(name: "gLogIOSuspended", scope: !0, file: !63, line: 160, type: !73, isLocal: true, isDefinition: true, variable: i32* @gLogIOSuspended)
!181 = distinct !DIGlobalVariable(name: "gCachedLogs", scope: !0, file: !63, line: 146, type: !169, isLocal: true, isDefinition: true, variable: %struct._GPtrArray** @gCachedLogs)
!182 = distinct !DIGlobalVariable(name: "gDroppedLogCount", scope: !0, file: !63, line: 147, type: !59, isLocal: true, isDefinition: true, variable: i32* @gDroppedLogCount)
!183 = distinct !DIGlobalVariable(name: "gGuestSDKMode", scope: !0, file: !63, line: 151, type: !73, isLocal: true, isDefinition: true, variable: i32* @gGuestSDKMode)
!184 = distinct !DIGlobalVariable(name: "gPanicCount", scope: !0, file: !63, line: 152, type: !59, isLocal: true, isDefinition: true, variable: i32* @gPanicCount)
!185 = !{i32 2, !"Dwarf Version", i32 4}
!186 = !{i32 2, !"Debug Info Version", i32 3}
!187 = !{!"clang version 3.9.1-4ubuntu3~16.04.2 (tags/RELEASE_391/rc2)"}
!188 = distinct !DISubprogram(name: "VMToolsAsprintf", scope: !63, file: !63, line: 221, type: !189, isLocal: false, isDefinition: true, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!189 = !DISubroutineType(types: !190)
!190 = !{!74, !191, !81, null}
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!192 = !DILocalVariable(name: "string", arg: 1, scope: !188, file: !63, line: 221, type: !191)
!193 = !DIExpression()
!194 = !DILocation(line: 221, column: 25, scope: !188)
!195 = !DILocalVariable(name: "format", arg: 2, scope: !188, file: !63, line: 222, type: !81)
!196 = !DILocation(line: 222, column: 30, scope: !188)
!197 = !DILocalVariable(name: "cnt", scope: !188, file: !63, line: 225, type: !74)
!198 = !DILocation(line: 225, column: 9, scope: !188)
!199 = !DILocalVariable(name: "args", scope: !188, file: !63, line: 226, type: !200)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !201, line: 98, baseType: !202)
!201 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stdarg.h", directory: "/home/lichi/Desktop/open-vm-tools/line1157")
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !201, line: 40, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 226, baseType: !204)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 192, align: 64, elements: !211)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 226, size: 192, align: 64, elements: !206)
!206 = !{!207, !208, !209, !210}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !205, file: !1, line: 226, baseType: !60, size: 32, align: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !205, file: !1, line: 226, baseType: !60, size: 32, align: 32, offset: 32)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !205, file: !1, line: 226, baseType: !47, size: 64, align: 64, offset: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !205, file: !1, line: 226, baseType: !47, size: 64, align: 64, offset: 128)
!211 = !{!212}
!212 = !DISubrange(count: 1)
!213 = !DILocation(line: 226, column: 12, scope: !188)
!214 = !DILocation(line: 227, column: 3, scope: !188)
!215 = !DILocation(line: 228, column: 22, scope: !188)
!216 = !DILocation(line: 228, column: 30, scope: !188)
!217 = !DILocation(line: 228, column: 38, scope: !188)
!218 = !DILocation(line: 228, column: 10, scope: !188)
!219 = !DILocation(line: 228, column: 8, scope: !188)
!220 = !DILocation(line: 229, column: 3, scope: !188)
!221 = !DILocation(line: 230, column: 11, scope: !188)
!222 = !DILocation(line: 230, column: 4, scope: !188)
!223 = distinct !DISubprogram(name: "VMTools_GetTimeAsString", scope: !63, file: !63, line: 248, type: !224, isLocal: false, isDefinition: true, scopeLine: 249, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!224 = !DISubroutineType(types: !225)
!225 = !{!48}
!226 = !DILocalVariable(name: "timePrefix", scope: !223, file: !63, line: 250, type: !48)
!227 = !DILocation(line: 250, column: 11, scope: !223)
!228 = !DILocalVariable(name: "utcTime", scope: !223, file: !63, line: 251, type: !229)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64, align: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "GDateTime", file: !231, line: 99, baseType: !232)
!231 = !DIFile(filename: "/usr/include/glib-2.0/glib/gdatetime.h", directory: "/home/lichi/Desktop/open-vm-tools/line1157")
!232 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GDateTime", file: !231, line: 99, flags: DIFlagFwdDecl)
!233 = !DILocation(line: 251, column: 15, scope: !223)
!234 = !DILocation(line: 251, column: 25, scope: !223)
!235 = !DILocation(line: 253, column: 8, scope: !236)
!236 = distinct !DILexicalBlock(scope: !223, file: !63, line: 253, column: 8)
!237 = !DILocation(line: 253, column: 16, scope: !236)
!238 = !DILocation(line: 253, column: 8, scope: !223)
!239 = !DILocalVariable(name: "dateFormat", scope: !240, file: !63, line: 254, type: !48)
!240 = distinct !DILexicalBlock(scope: !236, file: !63, line: 253, column: 24)
!241 = !DILocation(line: 254, column: 14, scope: !240)
!242 = !DILocation(line: 254, column: 46, scope: !240)
!243 = !DILocation(line: 254, column: 27, scope: !240)
!244 = !DILocation(line: 256, column: 11, scope: !245)
!245 = distinct !DILexicalBlock(scope: !240, file: !63, line: 256, column: 11)
!246 = !DILocation(line: 256, column: 22, scope: !245)
!247 = !DILocation(line: 256, column: 11, scope: !240)
!248 = !DILocalVariable(name: "msec", scope: !249, file: !63, line: 257, type: !74)
!249 = distinct !DILexicalBlock(scope: !245, file: !63, line: 256, column: 30)
!250 = !DILocation(line: 257, column: 15, scope: !249)
!251 = !DILocation(line: 257, column: 50, scope: !249)
!252 = !DILocation(line: 257, column: 22, scope: !249)
!253 = !DILocation(line: 257, column: 59, scope: !249)
!254 = !DILocation(line: 259, column: 51, scope: !249)
!255 = !DILocation(line: 259, column: 63, scope: !249)
!256 = !DILocation(line: 259, column: 23, scope: !249)
!257 = !DILocation(line: 259, column: 21, scope: !249)
!258 = !DILocation(line: 261, column: 17, scope: !249)
!259 = !DILocation(line: 261, column: 10, scope: !249)
!260 = !DILocation(line: 262, column: 21, scope: !249)
!261 = !DILocation(line: 263, column: 7, scope: !249)
!262 = !DILocation(line: 265, column: 25, scope: !240)
!263 = !DILocation(line: 265, column: 7, scope: !240)
!264 = !DILocation(line: 266, column: 4, scope: !240)
!265 = !DILocation(line: 268, column: 11, scope: !223)
!266 = !DILocation(line: 268, column: 4, scope: !223)
!267 = !DILocalVariable(name: "domain", arg: 1, scope: !100, file: !63, line: 1026, type: !81)
!268 = !DILocation(line: 1026, column: 39, scope: !100)
!269 = !DILocalVariable(name: "cfg", scope: !100, file: !63, line: 1029, type: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64, align: 64)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "GKeyFile", file: !16, line: 48, baseType: !272)
!272 = !DICompositeType(tag: DW_TAG_structure_type, name: "_GKeyFile", file: !16, line: 48, flags: DIFlagFwdDecl)
!273 = !DILocation(line: 1029, column: 14, scope: !100)
!274 = !DILocation(line: 1031, column: 4, scope: !100)
!275 = distinct !{!275, !274}
!276 = !DILocation(line: 1031, column: 12, scope: !277)
!277 = !DILexicalBlockFile(scope: !278, file: !63, discriminator: 1)
!278 = distinct !DILexicalBlock(scope: !279, file: !63, line: 1031, column: 12)
!279 = distinct !DILexicalBlock(scope: !100, file: !63, line: 1031, column: 6)
!280 = !DILocation(line: 1031, column: 27, scope: !277)
!281 = !DILocation(line: 1031, column: 7, scope: !282)
!282 = !DILexicalBlockFile(scope: !283, file: !63, discriminator: 2)
!283 = distinct !DILexicalBlock(scope: !278, file: !63, line: 1031, column: 5)
!284 = !DILocation(line: 1031, column: 16, scope: !285)
!285 = !DILexicalBlockFile(scope: !286, file: !63, discriminator: 3)
!286 = distinct !DILexicalBlock(scope: !278, file: !63, line: 1031, column: 14)
!287 = !DILocation(line: 1031, column: 111, scope: !285)
!288 = !DILocation(line: 1031, column: 122, scope: !289)
!289 = !DILexicalBlockFile(scope: !279, file: !63, discriminator: 4)
!290 = !DILocation(line: 1034, column: 26, scope: !100)
!291 = !DILocation(line: 1034, column: 17, scope: !100)
!292 = !DILocation(line: 1034, column: 15, scope: !100)
!293 = !DILocation(line: 1035, column: 10, scope: !100)
!294 = !DILocation(line: 1035, column: 8, scope: !100)
!295 = !DILocation(line: 1037, column: 42, scope: !100)
!296 = !DILocation(line: 1039, column: 42, scope: !100)
!297 = !DILocation(line: 1036, column: 21, scope: !100)
!298 = !DILocation(line: 1036, column: 19, scope: !100)
!299 = !DILocation(line: 1040, column: 9, scope: !300)
!300 = distinct !DILexicalBlock(scope: !100, file: !63, line: 1040, column: 8)
!301 = !DILocation(line: 1040, column: 8, scope: !100)
!302 = !DILocation(line: 1041, column: 14, scope: !303)
!303 = distinct !DILexicalBlock(scope: !300, file: !63, line: 1040, column: 25)
!304 = !DILocation(line: 1041, column: 7, scope: !303)
!305 = !DILocation(line: 1042, column: 7, scope: !303)
!306 = !DILocation(line: 1045, column: 22, scope: !100)
!307 = !DILocation(line: 1045, column: 50, scope: !100)
!308 = !DILocation(line: 1045, column: 4, scope: !100)
!309 = !DILocation(line: 1047, column: 9, scope: !310)
!310 = distinct !DILexicalBlock(scope: !100, file: !63, line: 1047, column: 8)
!311 = !DILocation(line: 1047, column: 8, scope: !100)
!312 = !DILocation(line: 1048, column: 23, scope: !313)
!313 = distinct !DILexicalBlock(scope: !310, file: !63, line: 1047, column: 26)
!314 = !DILocation(line: 1049, column: 7, scope: !313)
!315 = !DILocation(line: 1050, column: 4, scope: !313)
!316 = !DILocation(line: 1052, column: 16, scope: !100)
!317 = !DILocation(line: 1052, column: 4, scope: !100)
!318 = !DILocation(line: 1055, column: 20, scope: !100)
!319 = !DILocation(line: 1055, column: 4, scope: !100)
!320 = !DILocation(line: 1056, column: 1, scope: !100)
!321 = !DILocation(line: 1056, column: 1, scope: !322)
!322 = !DILexicalBlockFile(scope: !100, file: !63, discriminator: 1)
!323 = distinct !DISubprogram(name: "VMToolsGetLogHandler", scope: !63, file: !63, line: 676, type: !324, isLocal: true, isDefinition: true, scopeLine: 680, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!324 = !DISubroutineType(types: !325)
!325 = !{!61, !81, !81, !59, !270}
!326 = !DILocalVariable(name: "handler", arg: 1, scope: !323, file: !63, line: 676, type: !81)
!327 = !DILocation(line: 676, column: 35, scope: !323)
!328 = !DILocalVariable(name: "domain", arg: 2, scope: !323, file: !63, line: 677, type: !81)
!329 = !DILocation(line: 677, column: 35, scope: !323)
!330 = !DILocalVariable(name: "mask", arg: 3, scope: !323, file: !63, line: 678, type: !59)
!331 = !DILocation(line: 678, column: 28, scope: !323)
!332 = !DILocalVariable(name: "cfg", arg: 4, scope: !323, file: !63, line: 679, type: !270)
!333 = !DILocation(line: 679, column: 32, scope: !323)
!334 = !DILocalVariable(name: "logger", scope: !323, file: !63, line: 681, type: !61)
!335 = !DILocation(line: 681, column: 16, scope: !323)
!336 = !DILocalVariable(name: "glogger", scope: !323, file: !63, line: 682, type: !67)
!337 = !DILocation(line: 682, column: 16, scope: !323)
!338 = !DILocalVariable(name: "needsFileIO", scope: !323, file: !63, line: 683, type: !73)
!339 = !DILocation(line: 683, column: 13, scope: !323)
!340 = !DILocalVariable(name: "key", scope: !323, file: !63, line: 684, type: !341)
!341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 1024, align: 8, elements: !342)
!342 = !{!343}
!343 = !DISubrange(count: 128)
!344 = !DILocation(line: 684, column: 10, scope: !323)
!345 = !DILocalVariable(name: "isSysLog", scope: !323, file: !63, line: 685, type: !73)
!346 = !DILocation(line: 685, column: 13, scope: !323)
!347 = !DILocalVariable(name: "path", scope: !323, file: !63, line: 686, type: !48)
!348 = !DILocation(line: 686, column: 11, scope: !323)
!349 = !DILocation(line: 688, column: 15, scope: !350)
!350 = distinct !DILexicalBlock(scope: !323, file: !63, line: 688, column: 8)
!351 = !DILocation(line: 688, column: 8, scope: !350)
!352 = !DILocation(line: 688, column: 32, scope: !350)
!353 = !DILocation(line: 688, column: 37, scope: !350)
!354 = !DILocation(line: 688, column: 47, scope: !355)
!355 = !DILexicalBlockFile(scope: !350, file: !63, discriminator: 1)
!356 = !DILocation(line: 688, column: 40, scope: !355)
!357 = !DILocation(line: 688, column: 65, scope: !355)
!358 = !DILocation(line: 688, column: 8, scope: !355)
!359 = !DILocalVariable(name: "append", scope: !360, file: !63, line: 689, type: !73)
!360 = distinct !DILexicalBlock(scope: !350, file: !63, line: 688, column: 71)
!361 = !DILocation(line: 689, column: 16, scope: !360)
!362 = !DILocation(line: 689, column: 32, scope: !360)
!363 = !DILocation(line: 689, column: 25, scope: !360)
!364 = !DILocation(line: 689, column: 50, scope: !360)
!365 = !DILocalVariable(name: "maxSize", scope: !360, file: !63, line: 690, type: !59)
!366 = !DILocation(line: 690, column: 13, scope: !360)
!367 = !DILocalVariable(name: "maxFiles", scope: !360, file: !63, line: 691, type: !59)
!368 = !DILocation(line: 691, column: 13, scope: !360)
!369 = !DILocalVariable(name: "err", scope: !360, file: !63, line: 692, type: !370)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64, align: 64)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "GError", file: !372, line: 42, baseType: !373)
!372 = !DIFile(filename: "/usr/include/glib-2.0/glib/gerror.h", directory: "/home/lichi/Desktop/open-vm-tools/line1157")
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_GError", file: !372, line: 44, size: 128, align: 64, elements: !374)
!374 = !{!375, !380, !381}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !373, file: !372, line: 46, baseType: !376, size: 32, align: 32)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "GQuark", file: !377, line: 36, baseType: !378)
!377 = !DIFile(filename: "/usr/include/glib-2.0/glib/gquark.h", directory: "/home/lichi/Desktop/open-vm-tools/line1157")
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "guint32", file: !379, line: 45, baseType: !60)
!379 = !DIFile(filename: "/usr/lib/x86_64-linux-gnu/glib-2.0/include/glibconfig.h", directory: "/home/lichi/Desktop/open-vm-tools/line1157")
!380 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !373, file: !372, line: 47, baseType: !74, size: 32, align: 32, offset: 32)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !373, file: !372, line: 48, baseType: !48, size: 64, align: 64, offset: 64)
!382 = !DILocation(line: 692, column: 15, scope: !360)
!383 = !DILocation(line: 695, column: 15, scope: !360)
!384 = !DILocation(line: 697, column: 18, scope: !360)
!385 = !DILocation(line: 697, column: 46, scope: !360)
!386 = !DILocation(line: 697, column: 7, scope: !360)
!387 = !DILocation(line: 698, column: 36, scope: !360)
!388 = !DILocation(line: 698, column: 41, scope: !360)
!389 = !DILocation(line: 698, column: 49, scope: !360)
!390 = !DILocation(line: 698, column: 14, scope: !360)
!391 = !DILocation(line: 698, column: 12, scope: !360)
!392 = !DILocation(line: 699, column: 11, scope: !393)
!393 = distinct !DILexicalBlock(scope: !360, file: !63, line: 699, column: 11)
!394 = !DILocation(line: 699, column: 16, scope: !393)
!395 = !DILocation(line: 699, column: 11, scope: !360)
!396 = !DILocation(line: 700, column: 21, scope: !397)
!397 = distinct !DILexicalBlock(scope: !393, file: !63, line: 699, column: 24)
!398 = !DILocation(line: 700, column: 55, scope: !397)
!399 = !DILocation(line: 700, column: 10, scope: !397)
!400 = !DILocation(line: 701, column: 51, scope: !397)
!401 = !DILocation(line: 701, column: 67, scope: !397)
!402 = !DILocation(line: 701, column: 28, scope: !397)
!403 = !DILocation(line: 701, column: 18, scope: !397)
!404 = !DILocation(line: 702, column: 14, scope: !405)
!405 = distinct !DILexicalBlock(scope: !397, file: !63, line: 702, column: 14)
!406 = !DILocation(line: 702, column: 18, scope: !405)
!407 = !DILocation(line: 702, column: 14, scope: !397)
!408 = !DILocation(line: 703, column: 13, scope: !409)
!409 = distinct !DILexicalBlock(scope: !405, file: !63, line: 702, column: 26)
!410 = !DILocation(line: 704, column: 21, scope: !409)
!411 = !DILocation(line: 705, column: 10, scope: !409)
!412 = !DILocation(line: 707, column: 21, scope: !397)
!413 = !DILocation(line: 707, column: 59, scope: !397)
!414 = !DILocation(line: 707, column: 10, scope: !397)
!415 = !DILocation(line: 708, column: 52, scope: !397)
!416 = !DILocation(line: 708, column: 68, scope: !397)
!417 = !DILocation(line: 708, column: 29, scope: !397)
!418 = !DILocation(line: 708, column: 19, scope: !397)
!419 = !DILocation(line: 709, column: 14, scope: !420)
!420 = distinct !DILexicalBlock(scope: !397, file: !63, line: 709, column: 14)
!421 = !DILocation(line: 709, column: 18, scope: !420)
!422 = !DILocation(line: 709, column: 14, scope: !397)
!423 = !DILocation(line: 710, column: 13, scope: !424)
!424 = distinct !DILexicalBlock(scope: !420, file: !63, line: 709, column: 26)
!425 = !DILocation(line: 711, column: 22, scope: !424)
!426 = !DILocation(line: 712, column: 10, scope: !424)
!427 = !DILocation(line: 714, column: 47, scope: !397)
!428 = !DILocation(line: 714, column: 53, scope: !397)
!429 = !DILocation(line: 714, column: 61, scope: !397)
!430 = !DILocation(line: 714, column: 70, scope: !397)
!431 = !DILocation(line: 714, column: 20, scope: !397)
!432 = !DILocation(line: 714, column: 18, scope: !397)
!433 = !DILocation(line: 715, column: 22, scope: !397)
!434 = !DILocation(line: 716, column: 7, scope: !397)
!435 = !DILocation(line: 717, column: 85, scope: !436)
!436 = distinct !DILexicalBlock(scope: !393, file: !63, line: 716, column: 14)
!437 = !DILocation(line: 717, column: 10, scope: !436)
!438 = !DILocation(line: 719, column: 4, scope: !360)
!439 = !DILocation(line: 719, column: 22, scope: !440)
!440 = !DILexicalBlockFile(scope: !441, file: !63, discriminator: 1)
!441 = distinct !DILexicalBlock(scope: !350, file: !63, line: 719, column: 15)
!442 = !DILocation(line: 719, column: 15, scope: !440)
!443 = !DILocation(line: 719, column: 38, scope: !440)
!444 = !DILocation(line: 720, column: 17, scope: !445)
!445 = distinct !DILexicalBlock(scope: !441, file: !63, line: 719, column: 44)
!446 = !DILocation(line: 720, column: 15, scope: !445)
!447 = !DILocation(line: 721, column: 19, scope: !445)
!448 = !DILocation(line: 722, column: 4, scope: !445)
!449 = !DILocation(line: 722, column: 22, scope: !450)
!450 = !DILexicalBlockFile(scope: !451, file: !63, discriminator: 1)
!451 = distinct !DILexicalBlock(scope: !441, file: !63, line: 722, column: 15)
!452 = !DILocation(line: 722, column: 15, scope: !450)
!453 = !DILocation(line: 722, column: 38, scope: !450)
!454 = !DILocation(line: 723, column: 17, scope: !455)
!455 = distinct !DILexicalBlock(scope: !451, file: !63, line: 722, column: 44)
!456 = !DILocation(line: 723, column: 15, scope: !455)
!457 = !DILocation(line: 724, column: 19, scope: !455)
!458 = !DILocation(line: 734, column: 4, scope: !455)
!459 = !DILocation(line: 734, column: 22, scope: !460)
!460 = !DILexicalBlockFile(scope: !461, file: !63, discriminator: 1)
!461 = distinct !DILexicalBlock(scope: !451, file: !63, line: 734, column: 15)
!462 = !DILocation(line: 734, column: 15, scope: !460)
!463 = !DILocation(line: 734, column: 41, scope: !460)
!464 = !DILocalVariable(name: "facility", scope: !465, file: !63, line: 735, type: !48)
!465 = distinct !DILexicalBlock(scope: !461, file: !63, line: 734, column: 47)
!466 = !DILocation(line: 735, column: 14, scope: !465)
!467 = !DILocation(line: 738, column: 18, scope: !465)
!468 = !DILocation(line: 738, column: 50, scope: !465)
!469 = !DILocation(line: 738, column: 7, scope: !465)
!470 = !DILocation(line: 739, column: 40, scope: !465)
!471 = !DILocation(line: 739, column: 56, scope: !465)
!472 = !DILocation(line: 739, column: 18, scope: !465)
!473 = !DILocation(line: 739, column: 16, scope: !465)
!474 = !DILocation(line: 740, column: 43, scope: !465)
!475 = !DILocation(line: 740, column: 51, scope: !465)
!476 = !DILocation(line: 740, column: 17, scope: !465)
!477 = !DILocation(line: 740, column: 15, scope: !465)
!478 = !DILocation(line: 744, column: 19, scope: !465)
!479 = !DILocation(line: 745, column: 14, scope: !465)
!480 = !DILocation(line: 745, column: 7, scope: !465)
!481 = !DILocation(line: 746, column: 16, scope: !465)
!482 = !DILocation(line: 748, column: 4, scope: !465)
!483 = !DILocation(line: 749, column: 88, scope: !484)
!484 = distinct !DILexicalBlock(scope: !461, file: !63, line: 748, column: 11)
!485 = !DILocation(line: 749, column: 96, scope: !484)
!486 = !DILocation(line: 749, column: 7, scope: !484)
!487 = !DILocation(line: 752, column: 15, scope: !488)
!488 = distinct !DILexicalBlock(scope: !323, file: !63, line: 752, column: 7)
!489 = !DILocation(line: 752, column: 12, scope: !488)
!490 = !DILocation(line: 752, column: 7, scope: !323)
!491 = !DILocation(line: 753, column: 96, scope: !492)
!492 = distinct !DILexicalBlock(scope: !488, file: !63, line: 752, column: 24)
!493 = !DILocation(line: 753, column: 7, scope: !492)
!494 = !DILocation(line: 754, column: 4, scope: !492)
!495 = !DILocation(line: 756, column: 29, scope: !323)
!496 = !DILocation(line: 756, column: 14, scope: !323)
!497 = !DILocation(line: 756, column: 11, scope: !323)
!498 = !DILocation(line: 757, column: 30, scope: !323)
!499 = !DILocation(line: 757, column: 21, scope: !323)
!500 = !DILocation(line: 757, column: 4, scope: !323)
!501 = !DILocation(line: 757, column: 12, scope: !323)
!502 = !DILocation(line: 757, column: 19, scope: !323)
!503 = !DILocation(line: 758, column: 21, scope: !323)
!504 = !DILocation(line: 758, column: 4, scope: !323)
!505 = !DILocation(line: 758, column: 12, scope: !323)
!506 = !DILocation(line: 758, column: 19, scope: !323)
!507 = !DILocation(line: 759, column: 19, scope: !323)
!508 = !DILocation(line: 759, column: 4, scope: !323)
!509 = !DILocation(line: 759, column: 12, scope: !323)
!510 = !DILocation(line: 759, column: 17, scope: !323)
!511 = !DILocation(line: 760, column: 26, scope: !323)
!512 = !DILocation(line: 760, column: 19, scope: !323)
!513 = !DILocation(line: 760, column: 4, scope: !323)
!514 = !DILocation(line: 760, column: 12, scope: !323)
!515 = !DILocation(line: 760, column: 17, scope: !323)
!516 = !DILocation(line: 761, column: 26, scope: !323)
!517 = !DILocation(line: 761, column: 4, scope: !323)
!518 = !DILocation(line: 761, column: 12, scope: !323)
!519 = !DILocation(line: 761, column: 24, scope: !323)
!520 = !DILocation(line: 762, column: 23, scope: !323)
!521 = !DILocation(line: 762, column: 4, scope: !323)
!522 = !DILocation(line: 762, column: 12, scope: !323)
!523 = !DILocation(line: 762, column: 21, scope: !323)
!524 = !DILocation(line: 763, column: 24, scope: !323)
!525 = !DILocation(line: 763, column: 29, scope: !323)
!526 = !DILocation(line: 763, column: 47, scope: !527)
!527 = !DILexicalBlockFile(scope: !323, file: !63, discriminator: 1)
!528 = !DILocation(line: 763, column: 38, scope: !527)
!529 = !DILocation(line: 763, column: 24, scope: !527)
!530 = !DILocation(line: 763, column: 24, scope: !531)
!531 = !DILexicalBlockFile(scope: !323, file: !63, discriminator: 2)
!532 = !DILocation(line: 763, column: 24, scope: !533)
!533 = !DILexicalBlockFile(scope: !323, file: !63, discriminator: 3)
!534 = !DILocation(line: 763, column: 4, scope: !533)
!535 = !DILocation(line: 763, column: 12, scope: !533)
!536 = !DILocation(line: 763, column: 21, scope: !533)
!537 = !DILocation(line: 764, column: 11, scope: !323)
!538 = !DILocation(line: 764, column: 4, scope: !323)
!539 = !DILocation(line: 766, column: 11, scope: !323)
!540 = !DILocation(line: 766, column: 4, scope: !323)
!541 = distinct !DISubprogram(name: "VMToolsLog", scope: !63, file: !63, line: 468, type: !79, isLocal: true, isDefinition: true, scopeLine: 472, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!542 = !DILocalVariable(name: "domain", arg: 1, scope: !541, file: !63, line: 468, type: !81)
!543 = !DILocation(line: 468, column: 25, scope: !541)
!544 = !DILocalVariable(name: "level", arg: 2, scope: !541, file: !63, line: 469, type: !83)
!545 = !DILocation(line: 469, column: 27, scope: !541)
!546 = !DILocalVariable(name: "message", arg: 3, scope: !541, file: !63, line: 470, type: !81)
!547 = !DILocation(line: 470, column: 25, scope: !541)
!548 = !DILocalVariable(name: "_data", arg: 4, scope: !541, file: !63, line: 471, type: !84)
!549 = !DILocation(line: 471, column: 21, scope: !541)
!550 = !DILocalVariable(name: "data", scope: !541, file: !63, line: 473, type: !61)
!551 = !DILocation(line: 473, column: 16, scope: !541)
!552 = !DILocation(line: 473, column: 23, scope: !541)
!553 = !DILocation(line: 475, column: 11, scope: !554)
!554 = distinct !DILexicalBlock(scope: !541, file: !63, line: 475, column: 8)
!555 = !DILocation(line: 475, column: 18, scope: !554)
!556 = !DILocation(line: 475, column: 38, scope: !554)
!557 = !DILocation(line: 475, column: 42, scope: !558)
!558 = !DILexicalBlockFile(scope: !554, file: !63, discriminator: 1)
!559 = !DILocation(line: 475, column: 54, scope: !558)
!560 = !DILocation(line: 475, column: 59, scope: !561)
!561 = !DILexicalBlockFile(scope: !554, file: !63, discriminator: 2)
!562 = !DILocation(line: 475, column: 66, scope: !561)
!563 = !DILocation(line: 475, column: 74, scope: !561)
!564 = !DILocation(line: 475, column: 71, scope: !561)
!565 = !DILocation(line: 475, column: 8, scope: !561)
!566 = !DILocalVariable(name: "entry", scope: !567, file: !63, line: 476, type: !568)
!567 = distinct !DILexicalBlock(scope: !554, file: !63, line: 475, column: 85)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64, align: 64)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "LogEntry", file: !63, line: 142, baseType: !570)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LogEntry", file: !63, line: 137, size: 256, align: 64, elements: !571)
!571 = !{!572, !573, !574, !575}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !570, file: !63, line: 138, baseType: !48, size: 64, align: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !570, file: !63, line: 139, baseType: !48, size: 64, align: 64, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !570, file: !63, line: 140, baseType: !61, size: 64, align: 64, offset: 128)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !570, file: !63, line: 141, baseType: !83, size: 32, align: 32, offset: 192)
!576 = !DILocation(line: 476, column: 17, scope: !567)
!577 = !DILocation(line: 478, column: 14, scope: !567)
!578 = !DILocation(line: 478, column: 20, scope: !567)
!579 = !DILocation(line: 478, column: 32, scope: !580)
!580 = !DILexicalBlockFile(scope: !567, file: !63, discriminator: 1)
!581 = !DILocation(line: 478, column: 14, scope: !580)
!582 = !DILocation(line: 478, column: 47, scope: !583)
!583 = !DILexicalBlockFile(scope: !567, file: !63, discriminator: 2)
!584 = !DILocation(line: 478, column: 14, scope: !583)
!585 = !DILocation(line: 478, column: 14, scope: !586)
!586 = !DILexicalBlockFile(scope: !567, file: !63, discriminator: 3)
!587 = !DILocation(line: 478, column: 12, scope: !586)
!588 = !DILocation(line: 480, column: 15, scope: !567)
!589 = !DILocation(line: 480, column: 13, scope: !567)
!590 = !DILocation(line: 481, column: 11, scope: !591)
!591 = distinct !DILexicalBlock(scope: !567, file: !63, line: 481, column: 11)
!592 = !DILocation(line: 481, column: 11, scope: !567)
!593 = !DILocation(line: 482, column: 26, scope: !594)
!594 = distinct !DILexicalBlock(scope: !591, file: !63, line: 481, column: 18)
!595 = !DILocation(line: 482, column: 44, scope: !596)
!596 = !DILexicalBlockFile(scope: !594, file: !63, discriminator: 1)
!597 = !DILocation(line: 482, column: 35, scope: !596)
!598 = !DILocation(line: 482, column: 26, scope: !596)
!599 = !DILocation(line: 482, column: 26, scope: !600)
!600 = !DILexicalBlockFile(scope: !594, file: !63, discriminator: 2)
!601 = !DILocation(line: 482, column: 26, scope: !602)
!602 = !DILexicalBlockFile(scope: !594, file: !63, discriminator: 3)
!603 = !DILocation(line: 482, column: 10, scope: !602)
!604 = !DILocation(line: 482, column: 17, scope: !602)
!605 = !DILocation(line: 482, column: 24, scope: !602)
!606 = !DILocation(line: 483, column: 14, scope: !607)
!607 = distinct !DILexicalBlock(scope: !594, file: !63, line: 483, column: 14)
!608 = !DILocation(line: 483, column: 21, scope: !607)
!609 = !DILocation(line: 483, column: 25, scope: !610)
!610 = !DILexicalBlockFile(scope: !607, file: !63, discriminator: 1)
!611 = !DILocation(line: 483, column: 32, scope: !610)
!612 = !DILocation(line: 483, column: 14, scope: !610)
!613 = !DILocation(line: 484, column: 13, scope: !614)
!614 = distinct !DILexicalBlock(scope: !607, file: !63, line: 483, column: 40)
!615 = !DILocation(line: 486, column: 27, scope: !594)
!616 = !DILocation(line: 486, column: 10, scope: !594)
!617 = !DILocation(line: 486, column: 17, scope: !594)
!618 = !DILocation(line: 486, column: 25, scope: !594)
!619 = !DILocation(line: 487, column: 25, scope: !594)
!620 = !DILocation(line: 487, column: 10, scope: !594)
!621 = !DILocation(line: 487, column: 17, scope: !594)
!622 = !DILocation(line: 487, column: 23, scope: !594)
!623 = !DILocation(line: 488, column: 7, scope: !594)
!624 = !DILocation(line: 490, column: 11, scope: !625)
!625 = distinct !DILexicalBlock(scope: !567, file: !63, line: 490, column: 11)
!626 = !DILocation(line: 490, column: 27, scope: !625)
!627 = !DILocation(line: 490, column: 30, scope: !628)
!628 = !DILexicalBlockFile(scope: !625, file: !63, discriminator: 1)
!629 = !DILocation(line: 490, column: 36, scope: !628)
!630 = !DILocation(line: 490, column: 11, scope: !628)
!631 = !DILocation(line: 491, column: 14, scope: !632)
!632 = distinct !DILexicalBlock(scope: !633, file: !63, line: 491, column: 14)
!633 = distinct !DILexicalBlock(scope: !625, file: !63, line: 490, column: 49)
!634 = !DILocation(line: 491, column: 31, scope: !632)
!635 = !DILocation(line: 491, column: 14, scope: !633)
!636 = !DILocation(line: 493, column: 33, scope: !637)
!637 = distinct !DILexicalBlock(scope: !632, file: !63, line: 491, column: 37)
!638 = !DILocation(line: 493, column: 13, scope: !637)
!639 = !DILocation(line: 494, column: 29, scope: !637)
!640 = !DILocation(line: 495, column: 13, scope: !637)
!641 = !DILocation(line: 498, column: 40, scope: !633)
!642 = !DILocation(line: 498, column: 49, scope: !633)
!643 = !DILocation(line: 498, column: 57, scope: !633)
!644 = !DILocation(line: 498, column: 64, scope: !633)
!645 = !DILocation(line: 498, column: 23, scope: !633)
!646 = !DILocation(line: 498, column: 10, scope: !633)
!647 = !DILocation(line: 498, column: 17, scope: !633)
!648 = !DILocation(line: 498, column: 21, scope: !633)
!649 = !DILocation(line: 503, column: 15, scope: !650)
!650 = distinct !DILexicalBlock(scope: !633, file: !63, line: 503, column: 14)
!651 = !DILocation(line: 503, column: 14, scope: !633)
!652 = !DILocation(line: 509, column: 49, scope: !653)
!653 = distinct !DILexicalBlock(scope: !650, file: !63, line: 503, column: 28)
!654 = !DILocation(line: 509, column: 66, scope: !653)
!655 = !DILocation(line: 510, column: 49, scope: !653)
!656 = !DILocation(line: 509, column: 49, scope: !657)
!657 = !DILexicalBlockFile(scope: !653, file: !63, discriminator: 1)
!658 = !DILocation(line: 511, column: 49, scope: !653)
!659 = !DILocation(line: 511, column: 65, scope: !653)
!660 = !DILocation(line: 509, column: 49, scope: !661)
!661 = !DILexicalBlockFile(scope: !653, file: !63, discriminator: 2)
!662 = !DILocation(line: 509, column: 49, scope: !663)
!663 = !DILexicalBlockFile(scope: !653, file: !63, discriminator: 3)
!664 = !DILocation(line: 509, column: 27, scope: !663)
!665 = !DILocation(line: 509, column: 25, scope: !663)
!666 = !DILocation(line: 512, column: 18, scope: !667)
!667 = distinct !DILexicalBlock(scope: !653, file: !63, line: 512, column: 17)
!668 = !DILocation(line: 512, column: 17, scope: !653)
!669 = !DILocation(line: 513, column: 16, scope: !670)
!670 = distinct !DILexicalBlock(scope: !667, file: !63, line: 512, column: 31)
!671 = !DILocation(line: 520, column: 10, scope: !653)
!672 = !DILocation(line: 527, column: 14, scope: !673)
!673 = distinct !DILexicalBlock(scope: !633, file: !63, line: 527, column: 14)
!674 = !DILocation(line: 527, column: 27, scope: !673)
!675 = !DILocation(line: 527, column: 33, scope: !673)
!676 = !DILocation(line: 527, column: 31, scope: !673)
!677 = !DILocation(line: 527, column: 14, scope: !633)
!678 = !DILocation(line: 528, column: 29, scope: !679)
!679 = distinct !DILexicalBlock(scope: !673, file: !63, line: 527, column: 51)
!680 = !DILocation(line: 528, column: 42, scope: !679)
!681 = !DILocation(line: 528, column: 13, scope: !679)
!682 = !DILocation(line: 529, column: 10, scope: !679)
!683 = !DILocalVariable(name: "oldest", scope: !684, file: !63, line: 535, type: !568)
!684 = distinct !DILexicalBlock(scope: !673, file: !63, line: 529, column: 17)
!685 = !DILocation(line: 535, column: 23, scope: !684)
!686 = !DILocation(line: 535, column: 57, scope: !684)
!687 = !DILocation(line: 535, column: 32, scope: !684)
!688 = !DILocation(line: 536, column: 33, scope: !684)
!689 = !DILocation(line: 536, column: 13, scope: !684)
!690 = !DILocation(line: 537, column: 29, scope: !684)
!691 = !DILocation(line: 539, column: 29, scope: !684)
!692 = !DILocation(line: 539, column: 42, scope: !684)
!693 = !DILocation(line: 539, column: 13, scope: !684)
!694 = !DILocation(line: 542, column: 7, scope: !633)
!695 = !DILocation(line: 543, column: 40, scope: !696)
!696 = distinct !DILexicalBlock(scope: !625, file: !63, line: 542, column: 14)
!697 = !DILocation(line: 543, column: 49, scope: !696)
!698 = !DILocation(line: 543, column: 57, scope: !696)
!699 = !DILocation(line: 543, column: 64, scope: !696)
!700 = !DILocation(line: 543, column: 23, scope: !696)
!701 = !DILocation(line: 543, column: 10, scope: !696)
!702 = !DILocation(line: 543, column: 17, scope: !696)
!703 = !DILocation(line: 543, column: 21, scope: !696)
!704 = !DILocation(line: 544, column: 24, scope: !696)
!705 = !DILocation(line: 544, column: 10, scope: !696)
!706 = !DILocation(line: 546, column: 4, scope: !567)
!707 = !DILocation(line: 475, column: 82, scope: !708)
!708 = !DILexicalBlockFile(scope: !554, file: !63, discriminator: 3)
!709 = !DILocation(line: 549, column: 10, scope: !710)
!710 = distinct !DILexicalBlock(scope: !541, file: !63, line: 549, column: 8)
!711 = !DILocation(line: 549, column: 17, scope: !710)
!712 = !DILocation(line: 549, column: 8, scope: !541)
!713 = !DILocation(line: 550, column: 7, scope: !714)
!714 = distinct !DILexicalBlock(scope: !710, file: !63, line: 549, column: 38)
!715 = !DILocation(line: 552, column: 1, scope: !541)
!716 = distinct !DISubprogram(name: "VMTools_ConfigLogging", scope: !63, file: !63, line: 1076, type: !717, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!717 = !DISubroutineType(types: !718)
!718 = !{null, !81, !270, !73, !73}
!719 = !DILocalVariable(name: "defaultDomain", arg: 1, scope: !716, file: !63, line: 1076, type: !81)
!720 = !DILocation(line: 1076, column: 36, scope: !716)
!721 = !DILocalVariable(name: "cfg", arg: 2, scope: !716, file: !63, line: 1077, type: !270)
!722 = !DILocation(line: 1077, column: 33, scope: !716)
!723 = !DILocalVariable(name: "force", arg: 3, scope: !716, file: !63, line: 1078, type: !73)
!724 = !DILocation(line: 1078, column: 32, scope: !716)
!725 = !DILocalVariable(name: "reset", arg: 4, scope: !716, file: !63, line: 1079, type: !73)
!726 = !DILocation(line: 1079, column: 32, scope: !716)
!727 = !DILocalVariable(name: "allocDict", scope: !716, file: !63, line: 1081, type: !73)
!728 = !DILocation(line: 1081, column: 13, scope: !716)
!729 = !DILocation(line: 1081, column: 26, scope: !716)
!730 = !DILocation(line: 1081, column: 30, scope: !716)
!731 = !DILocalVariable(name: "list", scope: !716, file: !63, line: 1082, type: !191)
!732 = !DILocation(line: 1082, column: 12, scope: !716)
!733 = !DILocalVariable(name: "curr", scope: !716, file: !63, line: 1083, type: !191)
!734 = !DILocation(line: 1083, column: 12, scope: !716)
!735 = !DILocalVariable(name: "oldDomains", scope: !716, file: !63, line: 1084, type: !169)
!736 = !DILocation(line: 1084, column: 15, scope: !716)
!737 = !DILocalVariable(name: "oldDefault", scope: !716, file: !63, line: 1085, type: !61)
!738 = !DILocation(line: 1085, column: 16, scope: !716)
!739 = !DILocalVariable(name: "err", scope: !716, file: !63, line: 1086, type: !370)
!740 = !DILocation(line: 1086, column: 12, scope: !716)
!741 = !DILocation(line: 1088, column: 4, scope: !716)
!742 = distinct !{!742, !741}
!743 = !DILocation(line: 1088, column: 12, scope: !744)
!744 = !DILexicalBlockFile(scope: !745, file: !63, discriminator: 1)
!745 = distinct !DILexicalBlock(scope: !746, file: !63, line: 1088, column: 12)
!746 = distinct !DILexicalBlock(scope: !716, file: !63, line: 1088, column: 6)
!747 = !DILocation(line: 1088, column: 26, scope: !744)
!748 = !DILocation(line: 1088, column: 7, scope: !749)
!749 = !DILexicalBlockFile(scope: !750, file: !63, discriminator: 2)
!750 = distinct !DILexicalBlock(scope: !745, file: !63, line: 1088, column: 5)
!751 = !DILocation(line: 1088, column: 16, scope: !752)
!752 = !DILexicalBlockFile(scope: !753, file: !63, discriminator: 3)
!753 = distinct !DILexicalBlock(scope: !745, file: !63, line: 1088, column: 14)
!754 = !DILocation(line: 1088, column: 110, scope: !752)
!755 = !DILocation(line: 1088, column: 121, scope: !756)
!756 = !DILexicalBlockFile(scope: !746, file: !63, discriminator: 4)
!757 = !DILocation(line: 1090, column: 8, scope: !758)
!758 = distinct !DILexicalBlock(scope: !716, file: !63, line: 1090, column: 8)
!759 = !DILocation(line: 1090, column: 8, scope: !716)
!760 = !DILocation(line: 1091, column: 13, scope: !761)
!761 = distinct !DILexicalBlock(scope: !758, file: !63, line: 1090, column: 19)
!762 = !DILocation(line: 1091, column: 11, scope: !761)
!763 = !DILocation(line: 1092, column: 4, scope: !761)
!764 = !DILocation(line: 1099, column: 24, scope: !716)
!765 = !DILocation(line: 1099, column: 4, scope: !716)
!766 = !DILocation(line: 1100, column: 9, scope: !767)
!767 = distinct !DILexicalBlock(scope: !716, file: !63, line: 1100, column: 8)
!768 = !DILocation(line: 1100, column: 8, scope: !716)
!769 = !DILocation(line: 1101, column: 20, scope: !770)
!770 = distinct !DILexicalBlock(scope: !767, file: !63, line: 1100, column: 16)
!771 = !DILocation(line: 1101, column: 18, scope: !770)
!772 = !DILocation(line: 1102, column: 20, scope: !770)
!773 = !DILocation(line: 1102, column: 18, scope: !770)
!774 = !DILocation(line: 1103, column: 16, scope: !770)
!775 = !DILocation(line: 1104, column: 20, scope: !770)
!776 = !DILocation(line: 1105, column: 4, scope: !770)
!777 = !DILocation(line: 1107, column: 26, scope: !716)
!778 = !DILocation(line: 1107, column: 17, scope: !716)
!779 = !DILocation(line: 1107, column: 15, scope: !716)
!780 = !DILocation(line: 1109, column: 38, scope: !716)
!781 = !DILocation(line: 1111, column: 38, scope: !716)
!782 = !DILocation(line: 1108, column: 17, scope: !716)
!783 = !DILocation(line: 1108, column: 15, scope: !716)
!784 = !DILocation(line: 1118, column: 40, scope: !716)
!785 = !DILocation(line: 1120, column: 40, scope: !716)
!786 = !DILocation(line: 1117, column: 19, scope: !716)
!787 = !DILocation(line: 1117, column: 17, scope: !716)
!788 = !DILocation(line: 1126, column: 27, scope: !716)
!789 = !DILocation(line: 1126, column: 39, scope: !716)
!790 = !DILocation(line: 1126, column: 44, scope: !716)
!791 = !DILocation(line: 1126, column: 56, scope: !716)
!792 = !DILocation(line: 1126, column: 4, scope: !716)
!793 = !DILocation(line: 1128, column: 31, scope: !716)
!794 = !DILocation(line: 1128, column: 11, scope: !716)
!795 = !DILocation(line: 1128, column: 9, scope: !716)
!796 = !DILocation(line: 1130, column: 16, scope: !797)
!797 = distinct !DILexicalBlock(scope: !716, file: !63, line: 1130, column: 4)
!798 = !DILocation(line: 1130, column: 14, scope: !797)
!799 = !DILocation(line: 1130, column: 9, scope: !797)
!800 = !DILocation(line: 1130, column: 22, scope: !801)
!801 = !DILexicalBlockFile(scope: !802, file: !63, discriminator: 1)
!802 = distinct !DILexicalBlock(scope: !797, file: !63, line: 1130, column: 4)
!803 = !DILocation(line: 1130, column: 27, scope: !801)
!804 = !DILocation(line: 1130, column: 34, scope: !801)
!805 = !DILocation(line: 1130, column: 38, scope: !806)
!806 = !DILexicalBlockFile(scope: !802, file: !63, discriminator: 2)
!807 = !DILocation(line: 1130, column: 37, scope: !806)
!808 = !DILocation(line: 1130, column: 43, scope: !806)
!809 = !DILocation(line: 1130, column: 4, scope: !810)
!810 = !DILexicalBlockFile(scope: !797, file: !63, discriminator: 3)
!811 = !DILocalVariable(name: "domain", scope: !812, file: !63, line: 1131, type: !48)
!812 = distinct !DILexicalBlock(scope: !802, file: !63, line: 1130, column: 60)
!813 = !DILocation(line: 1131, column: 14, scope: !812)
!814 = !DILocation(line: 1131, column: 24, scope: !812)
!815 = !DILocation(line: 1131, column: 23, scope: !812)
!816 = !DILocation(line: 1134, column: 29, scope: !817)
!817 = distinct !DILexicalBlock(scope: !812, file: !63, line: 1134, column: 11)
!818 = !DILocation(line: 1134, column: 12, scope: !817)
!819 = !DILocation(line: 1134, column: 11, scope: !812)
!820 = !DILocation(line: 1135, column: 10, scope: !821)
!821 = distinct !DILexicalBlock(scope: !817, file: !63, line: 1134, column: 48)
!822 = !DILocation(line: 1139, column: 21, scope: !812)
!823 = !DILocation(line: 1139, column: 14, scope: !812)
!824 = !DILocation(line: 1139, column: 29, scope: !812)
!825 = !DILocation(line: 1139, column: 7, scope: !812)
!826 = !DILocation(line: 1139, column: 34, scope: !812)
!827 = !DILocation(line: 1142, column: 18, scope: !828)
!828 = distinct !DILexicalBlock(scope: !812, file: !63, line: 1142, column: 11)
!829 = !DILocation(line: 1142, column: 26, scope: !828)
!830 = !DILocation(line: 1142, column: 11, scope: !828)
!831 = !DILocation(line: 1142, column: 38, scope: !828)
!832 = !DILocation(line: 1142, column: 11, scope: !812)
!833 = !DILocation(line: 1143, column: 10, scope: !834)
!834 = distinct !DILexicalBlock(scope: !828, file: !63, line: 1142, column: 44)
!835 = !DILocation(line: 1146, column: 30, scope: !812)
!836 = !DILocation(line: 1146, column: 38, scope: !812)
!837 = !DILocation(line: 1146, column: 43, scope: !812)
!838 = !DILocation(line: 1146, column: 55, scope: !812)
!839 = !DILocation(line: 1146, column: 7, scope: !812)
!840 = !DILocation(line: 1147, column: 4, scope: !812)
!841 = !DILocation(line: 1130, column: 56, scope: !842)
!842 = !DILexicalBlockFile(scope: !802, file: !63, discriminator: 4)
!843 = !DILocation(line: 1130, column: 4, scope: !842)
!844 = distinct !{!844, !845}
!845 = !DILocation(line: 1130, column: 4, scope: !716)
!846 = !DILocation(line: 1149, column: 15, scope: !716)
!847 = !DILocation(line: 1149, column: 4, scope: !716)
!848 = !DILocation(line: 1151, column: 41, scope: !716)
!849 = !DILocation(line: 1151, column: 18, scope: !716)
!850 = !DILocation(line: 1151, column: 16, scope: !716)
!851 = !DILocation(line: 1157, column: 19, scope: !716)
!852 = !DILocation(line: 1157, column: 16, scope: !716)
!853 = !DILocation(line: 1158, column: 9, scope: !854)
!854 = distinct !DILexicalBlock(scope: !716, file: !63, line: 1158, column: 8)
!855 = !DILocation(line: 1158, column: 8, scope: !716)
!856 = !DILocation(line: 1159, column: 23, scope: !857)
!857 = distinct !DILexicalBlock(scope: !854, file: !63, line: 1158, column: 26)
!858 = !DILocation(line: 1160, column: 7, scope: !857)
!859 = !DILocation(line: 1161, column: 4, scope: !857)
!860 = !DILocation(line: 1163, column: 46, scope: !716)
!861 = !DILocation(line: 1163, column: 23, scope: !716)
!862 = !DILocation(line: 1163, column: 21, scope: !716)
!863 = !DILocation(line: 1165, column: 8, scope: !864)
!864 = distinct !DILexicalBlock(scope: !716, file: !63, line: 1165, column: 8)
!865 = !DILocation(line: 1165, column: 12, scope: !864)
!866 = !DILocation(line: 1165, column: 19, scope: !864)
!867 = !DILocation(line: 1165, column: 22, scope: !868)
!868 = !DILexicalBlockFile(scope: !864, file: !63, discriminator: 1)
!869 = !DILocation(line: 1165, column: 39, scope: !868)
!870 = !DILocation(line: 1165, column: 8, scope: !868)
!871 = !DILocation(line: 1170, column: 24, scope: !872)
!872 = distinct !DILexicalBlock(scope: !864, file: !63, line: 1165, column: 44)
!873 = !DILocation(line: 1171, column: 11, scope: !874)
!874 = distinct !DILexicalBlock(scope: !872, file: !63, line: 1171, column: 11)
!875 = !DILocation(line: 1171, column: 15, scope: !874)
!876 = !DILocation(line: 1171, column: 11, scope: !872)
!877 = !DILocation(line: 1172, column: 14, scope: !878)
!878 = distinct !DILexicalBlock(scope: !879, file: !63, line: 1172, column: 14)
!879 = distinct !DILexicalBlock(scope: !874, file: !63, line: 1171, column: 23)
!880 = !DILocation(line: 1172, column: 19, scope: !878)
!881 = !DILocation(line: 1172, column: 24, scope: !878)
!882 = !DILocation(line: 1172, column: 58, scope: !878)
!883 = !DILocation(line: 1173, column: 14, scope: !878)
!884 = !DILocation(line: 1173, column: 19, scope: !878)
!885 = !DILocation(line: 1173, column: 24, scope: !878)
!886 = !DILocation(line: 1172, column: 14, scope: !887)
!887 = !DILexicalBlockFile(scope: !879, file: !63, discriminator: 1)
!888 = !DILocation(line: 1174, column: 107, scope: !889)
!889 = distinct !DILexicalBlock(scope: !878, file: !63, line: 1173, column: 61)
!890 = !DILocation(line: 1174, column: 112, scope: !889)
!891 = !DILocation(line: 1174, column: 13, scope: !889)
!892 = !DILocation(line: 1176, column: 10, scope: !889)
!893 = !DILocation(line: 1177, column: 10, scope: !879)
!894 = !DILocation(line: 1178, column: 7, scope: !879)
!895 = !DILocation(line: 1179, column: 4, scope: !872)
!896 = !DILocation(line: 1181, column: 8, scope: !897)
!897 = distinct !DILexicalBlock(scope: !716, file: !63, line: 1181, column: 8)
!898 = !DILocation(line: 1181, column: 25, scope: !897)
!899 = !DILocation(line: 1181, column: 8, scope: !716)
!900 = !DILocation(line: 1182, column: 100, scope: !901)
!901 = distinct !DILexicalBlock(scope: !897, file: !63, line: 1181, column: 30)
!902 = !DILocation(line: 1182, column: 7, scope: !901)
!903 = !DILocation(line: 1184, column: 4, scope: !901)
!904 = !DILocation(line: 1185, column: 7, scope: !905)
!905 = distinct !DILexicalBlock(scope: !897, file: !63, line: 1184, column: 11)
!906 = !DILocation(line: 1188, column: 27, scope: !907)
!907 = distinct !DILexicalBlock(scope: !716, file: !63, line: 1188, column: 8)
!908 = !DILocation(line: 1188, column: 8, scope: !907)
!909 = !DILocation(line: 1188, column: 8, scope: !716)
!910 = !DILocation(line: 1189, column: 48, scope: !911)
!911 = distinct !DILexicalBlock(scope: !907, file: !63, line: 1188, column: 71)
!912 = !DILocation(line: 1189, column: 25, scope: !911)
!913 = !DILocation(line: 1189, column: 23, scope: !911)
!914 = !DILocation(line: 1191, column: 4, scope: !911)
!915 = !DILocation(line: 1194, column: 9, scope: !916)
!916 = distinct !DILexicalBlock(scope: !716, file: !63, line: 1194, column: 8)
!917 = !DILocation(line: 1194, column: 8, scope: !716)
!918 = !DILocation(line: 1195, column: 11, scope: !919)
!919 = distinct !DILexicalBlock(scope: !920, file: !63, line: 1195, column: 11)
!920 = distinct !DILexicalBlock(scope: !916, file: !63, line: 1194, column: 16)
!921 = !DILocation(line: 1195, column: 22, scope: !919)
!922 = !DILocation(line: 1195, column: 11, scope: !920)
!923 = !DILocation(line: 1196, column: 27, scope: !924)
!924 = distinct !DILexicalBlock(scope: !919, file: !63, line: 1195, column: 30)
!925 = !DILocation(line: 1196, column: 10, scope: !924)
!926 = !DILocation(line: 1197, column: 7, scope: !924)
!927 = !DILocation(line: 1198, column: 4, scope: !920)
!928 = !DILocation(line: 1218, column: 8, scope: !929)
!929 = distinct !DILexicalBlock(scope: !716, file: !63, line: 1218, column: 8)
!930 = !DILocation(line: 1218, column: 8, scope: !716)
!931 = !DILocalVariable(name: "limit", scope: !932, file: !63, line: 1237, type: !933)
!932 = distinct !DILexicalBlock(scope: !929, file: !63, line: 1218, column: 25)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !25, line: 139, size: 128, align: 64, elements: !934)
!934 = !{!935, !936}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !933, file: !25, line: 142, baseType: !54, size: 64, align: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !933, file: !25, line: 144, baseType: !54, size: 64, align: 64, offset: 64)
!937 = !DILocation(line: 1237, column: 21, scope: !932)
!938 = !DILocation(line: 1239, column: 7, scope: !932)
!939 = !DILocation(line: 1240, column: 17, scope: !940)
!940 = distinct !DILexicalBlock(scope: !932, file: !63, line: 1240, column: 11)
!941 = !DILocation(line: 1240, column: 26, scope: !940)
!942 = !DILocation(line: 1240, column: 11, scope: !932)
!943 = !DILocation(line: 1241, column: 59, scope: !944)
!944 = distinct !DILexicalBlock(scope: !940, file: !63, line: 1240, column: 32)
!945 = !DILocation(line: 1241, column: 36, scope: !944)
!946 = !DILocation(line: 1241, column: 27, scope: !944)
!947 = !DILocation(line: 1241, column: 16, scope: !944)
!948 = !DILocation(line: 1241, column: 25, scope: !944)
!949 = !DILocation(line: 1245, column: 14, scope: !950)
!950 = distinct !DILexicalBlock(scope: !944, file: !63, line: 1245, column: 14)
!951 = !DILocation(line: 1245, column: 18, scope: !950)
!952 = !DILocation(line: 1245, column: 14, scope: !944)
!953 = !DILocation(line: 1246, column: 19, scope: !954)
!954 = distinct !DILexicalBlock(scope: !950, file: !63, line: 1245, column: 26)
!955 = !DILocation(line: 1246, column: 28, scope: !954)
!956 = !DILocation(line: 1247, column: 13, scope: !954)
!957 = !DILocation(line: 1248, column: 10, scope: !954)
!958 = !DILocation(line: 1248, column: 27, scope: !959)
!959 = !DILexicalBlockFile(scope: !960, file: !63, discriminator: 1)
!960 = distinct !DILexicalBlock(scope: !950, file: !63, line: 1248, column: 21)
!961 = !DILocation(line: 1248, column: 36, scope: !959)
!962 = !DILocation(line: 1248, column: 21, scope: !959)
!963 = !DILocation(line: 1249, column: 19, scope: !964)
!964 = distinct !DILexicalBlock(scope: !960, file: !63, line: 1248, column: 42)
!965 = !DILocation(line: 1249, column: 28, scope: !964)
!966 = !DILocation(line: 1250, column: 10, scope: !964)
!967 = !DILocation(line: 1252, column: 36, scope: !944)
!968 = !DILocation(line: 1252, column: 55, scope: !944)
!969 = !DILocation(line: 1252, column: 46, scope: !944)
!970 = !DILocation(line: 1252, column: 28, scope: !944)
!971 = !DILocation(line: 1252, column: 75, scope: !972)
!972 = !DILexicalBlockFile(scope: !944, file: !63, discriminator: 1)
!973 = !DILocation(line: 1252, column: 28, scope: !972)
!974 = !DILocation(line: 1252, column: 94, scope: !975)
!975 = !DILexicalBlockFile(scope: !944, file: !63, discriminator: 2)
!976 = !DILocation(line: 1252, column: 28, scope: !975)
!977 = !DILocation(line: 1252, column: 28, scope: !978)
!978 = !DILexicalBlockFile(scope: !944, file: !63, discriminator: 3)
!979 = !DILocation(line: 1252, column: 16, scope: !978)
!980 = !DILocation(line: 1252, column: 25, scope: !978)
!981 = !DILocation(line: 1253, column: 14, scope: !982)
!982 = distinct !DILexicalBlock(scope: !944, file: !63, line: 1253, column: 14)
!983 = !DILocation(line: 1253, column: 44, scope: !982)
!984 = !DILocation(line: 1253, column: 14, scope: !944)
!985 = !DILocation(line: 1254, column: 14, scope: !986)
!986 = distinct !DILexicalBlock(scope: !982, file: !63, line: 1253, column: 51)
!987 = !DILocation(line: 1254, column: 13, scope: !986)
!988 = !DILocation(line: 1254, column: 14, scope: !989)
!989 = !DILexicalBlockFile(scope: !986, file: !63, discriminator: 1)
!990 = !DILocation(line: 1254, column: 14, scope: !991)
!991 = !DILexicalBlockFile(scope: !986, file: !63, discriminator: 2)
!992 = !DILocation(line: 1254, column: 13, scope: !993)
!993 = !DILexicalBlockFile(scope: !986, file: !63, discriminator: 3)
!994 = !DILocation(line: 1256, column: 10, scope: !986)
!995 = !DILocation(line: 1257, column: 96, scope: !996)
!996 = distinct !DILexicalBlock(scope: !982, file: !63, line: 1256, column: 17)
!997 = !DILocation(line: 1257, column: 84, scope: !996)
!998 = !DILocation(line: 1257, column: 13, scope: !996)
!999 = !DILocation(line: 1259, column: 7, scope: !944)
!1000 = !DILocation(line: 1261, column: 4, scope: !932)
!1001 = !DILocation(line: 1263, column: 8, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !716, file: !63, line: 1263, column: 8)
!1003 = !DILocation(line: 1263, column: 8, scope: !716)
!1004 = !DILocation(line: 1264, column: 23, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1002, file: !63, line: 1263, column: 19)
!1006 = !DILocation(line: 1264, column: 7, scope: !1005)
!1007 = !DILocation(line: 1265, column: 4, scope: !1005)
!1008 = !DILocation(line: 1266, column: 1, scope: !716)
!1009 = distinct !DISubprogram(name: "VMToolsResetLogging", scope: !63, file: !63, line: 953, type: !1010, isLocal: true, isDefinition: true, scopeLine: 954, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{null, !73}
!1012 = !DILocalVariable(name: "hard", arg: 1, scope: !1009, file: !63, line: 953, type: !73)
!1013 = !DILocation(line: 953, column: 30, scope: !1009)
!1014 = !DILocation(line: 955, column: 16, scope: !1009)
!1015 = !DILocation(line: 956, column: 4, scope: !1009)
!1016 = !DILocation(line: 958, column: 4, scope: !1009)
!1017 = distinct !{!1017, !1016}
!1018 = !DILocation(line: 958, column: 14, scope: !1019)
!1019 = !DILexicalBlockFile(scope: !1020, file: !63, discriminator: 1)
!1020 = distinct !DILexicalBlock(scope: !1021, file: !63, line: 958, column: 13)
!1021 = distinct !DILexicalBlock(scope: !1009, file: !63, line: 958, column: 7)
!1022 = !DILocation(line: 958, column: 26, scope: !1019)
!1023 = !DILocation(line: 958, column: 13, scope: !1019)
!1024 = !DILocation(line: 958, column: 11, scope: !1025)
!1025 = !DILexicalBlockFile(scope: !1026, file: !63, discriminator: 2)
!1026 = distinct !DILexicalBlock(scope: !1027, file: !63, line: 958, column: 11)
!1027 = distinct !DILexicalBlock(scope: !1020, file: !63, line: 958, column: 5)
!1028 = !DILocation(line: 958, column: 23, scope: !1025)
!1029 = !DILocation(line: 958, column: 30, scope: !1025)
!1030 = !DILocation(line: 958, column: 7, scope: !1031)
!1031 = !DILexicalBlockFile(scope: !1032, file: !63, discriminator: 3)
!1032 = distinct !DILexicalBlock(scope: !1026, file: !63, line: 958, column: 5)
!1033 = !DILocation(line: 958, column: 19, scope: !1031)
!1034 = !DILocation(line: 958, column: 27, scope: !1031)
!1035 = !DILocation(line: 958, column: 32, scope: !1031)
!1036 = !DILocation(line: 958, column: 44, scope: !1031)
!1037 = !DILocation(line: 958, column: 53, scope: !1031)
!1038 = !DILocation(line: 958, column: 63, scope: !1039)
!1039 = !DILexicalBlockFile(scope: !1027, file: !63, discriminator: 4)
!1040 = !DILocation(line: 958, column: 76, scope: !1039)
!1041 = !DILocation(line: 958, column: 55, scope: !1039)
!1042 = !DILocation(line: 958, column: 93, scope: !1039)
!1043 = !DILocation(line: 958, column: 106, scope: !1039)
!1044 = !DILocation(line: 958, column: 85, scope: !1045)
!1045 = !DILexicalBlockFile(scope: !1039, file: !63, discriminator: 6)
!1046 = !DILocation(line: 958, column: 121, scope: !1039)
!1047 = !DILocation(line: 958, column: 134, scope: !1039)
!1048 = !DILocation(line: 958, column: 113, scope: !1049)
!1049 = !DILexicalBlockFile(scope: !1039, file: !63, discriminator: 7)
!1050 = !DILocation(line: 958, column: 152, scope: !1039)
!1051 = !DILocation(line: 958, column: 145, scope: !1052)
!1052 = !DILexicalBlockFile(scope: !1039, file: !63, discriminator: 8)
!1053 = !DILocation(line: 958, column: 165, scope: !1039)
!1054 = !DILocation(line: 958, column: 167, scope: !1055)
!1055 = !DILexicalBlockFile(scope: !1021, file: !63, discriminator: 5)
!1056 = !DILocation(line: 959, column: 4, scope: !1009)
!1057 = distinct !{!1057, !1056}
!1058 = !DILocation(line: 959, column: 14, scope: !1059)
!1059 = !DILexicalBlockFile(scope: !1060, file: !63, discriminator: 1)
!1060 = distinct !DILexicalBlock(scope: !1061, file: !63, line: 959, column: 13)
!1061 = distinct !DILexicalBlock(scope: !1009, file: !63, line: 959, column: 7)
!1062 = !DILocation(line: 959, column: 28, scope: !1059)
!1063 = !DILocation(line: 959, column: 13, scope: !1059)
!1064 = !DILocation(line: 959, column: 11, scope: !1065)
!1065 = !DILexicalBlockFile(scope: !1066, file: !63, discriminator: 2)
!1066 = distinct !DILexicalBlock(scope: !1067, file: !63, line: 959, column: 11)
!1067 = distinct !DILexicalBlock(scope: !1060, file: !63, line: 959, column: 5)
!1068 = !DILocation(line: 959, column: 25, scope: !1065)
!1069 = !DILocation(line: 959, column: 32, scope: !1065)
!1070 = !DILocation(line: 959, column: 7, scope: !1071)
!1071 = !DILexicalBlockFile(scope: !1072, file: !63, discriminator: 3)
!1072 = distinct !DILexicalBlock(scope: !1066, file: !63, line: 959, column: 5)
!1073 = !DILocation(line: 959, column: 21, scope: !1071)
!1074 = !DILocation(line: 959, column: 29, scope: !1071)
!1075 = !DILocation(line: 959, column: 34, scope: !1071)
!1076 = !DILocation(line: 959, column: 48, scope: !1071)
!1077 = !DILocation(line: 959, column: 57, scope: !1071)
!1078 = !DILocation(line: 959, column: 67, scope: !1079)
!1079 = !DILexicalBlockFile(scope: !1067, file: !63, discriminator: 4)
!1080 = !DILocation(line: 959, column: 82, scope: !1079)
!1081 = !DILocation(line: 959, column: 59, scope: !1079)
!1082 = !DILocation(line: 959, column: 99, scope: !1079)
!1083 = !DILocation(line: 959, column: 114, scope: !1079)
!1084 = !DILocation(line: 959, column: 91, scope: !1085)
!1085 = !DILexicalBlockFile(scope: !1079, file: !63, discriminator: 6)
!1086 = !DILocation(line: 959, column: 129, scope: !1079)
!1087 = !DILocation(line: 959, column: 144, scope: !1079)
!1088 = !DILocation(line: 959, column: 121, scope: !1089)
!1089 = !DILexicalBlockFile(scope: !1079, file: !63, discriminator: 7)
!1090 = !DILocation(line: 959, column: 162, scope: !1079)
!1091 = !DILocation(line: 959, column: 155, scope: !1092)
!1092 = !DILexicalBlockFile(scope: !1079, file: !63, discriminator: 8)
!1093 = !DILocation(line: 959, column: 177, scope: !1079)
!1094 = !DILocation(line: 959, column: 179, scope: !1095)
!1095 = !DILexicalBlockFile(scope: !1061, file: !63, discriminator: 5)
!1096 = !DILocation(line: 960, column: 15, scope: !1009)
!1097 = !DILocation(line: 961, column: 17, scope: !1009)
!1098 = !DILocation(line: 963, column: 8, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1009, file: !63, line: 963, column: 8)
!1100 = !DILocation(line: 963, column: 17, scope: !1099)
!1101 = !DILocation(line: 963, column: 8, scope: !1009)
!1102 = !DILocalVariable(name: "i", scope: !1103, file: !63, line: 964, type: !59)
!1103 = distinct !DILexicalBlock(scope: !1099, file: !63, line: 963, column: 25)
!1104 = !DILocation(line: 964, column: 13, scope: !1103)
!1105 = !DILocation(line: 965, column: 14, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1103, file: !63, line: 965, column: 7)
!1107 = !DILocation(line: 965, column: 12, scope: !1106)
!1108 = !DILocation(line: 965, column: 19, scope: !1109)
!1109 = !DILexicalBlockFile(scope: !1110, file: !63, discriminator: 1)
!1110 = distinct !DILexicalBlock(scope: !1106, file: !63, line: 965, column: 7)
!1111 = !DILocation(line: 965, column: 23, scope: !1109)
!1112 = !DILocation(line: 965, column: 33, scope: !1109)
!1113 = !DILocation(line: 965, column: 21, scope: !1109)
!1114 = !DILocation(line: 965, column: 7, scope: !1109)
!1115 = !DILocalVariable(name: "data", scope: !1116, file: !63, line: 966, type: !61)
!1116 = distinct !DILexicalBlock(scope: !1110, file: !63, line: 965, column: 43)
!1117 = !DILocation(line: 966, column: 22, scope: !1116)
!1118 = !DILocation(line: 966, column: 49, scope: !1116)
!1119 = !DILocation(line: 966, column: 29, scope: !1116)
!1120 = !DILocation(line: 966, column: 31, scope: !1116)
!1121 = !DILocation(line: 966, column: 42, scope: !1116)
!1122 = !DILocation(line: 967, column: 31, scope: !1116)
!1123 = !DILocation(line: 967, column: 37, scope: !1116)
!1124 = !DILocation(line: 967, column: 45, scope: !1116)
!1125 = !DILocation(line: 967, column: 51, scope: !1116)
!1126 = !DILocation(line: 967, column: 10, scope: !1116)
!1127 = !DILocation(line: 968, column: 10, scope: !1116)
!1128 = !DILocation(line: 968, column: 16, scope: !1116)
!1129 = !DILocation(line: 968, column: 26, scope: !1116)
!1130 = !DILocation(line: 969, column: 14, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1116, file: !63, line: 969, column: 14)
!1132 = !DILocation(line: 969, column: 14, scope: !1116)
!1133 = !DILocation(line: 970, column: 13, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1131, file: !63, line: 969, column: 20)
!1135 = distinct !{!1135, !1133}
!1136 = !DILocation(line: 970, column: 23, scope: !1137)
!1137 = !DILexicalBlockFile(scope: !1138, file: !63, discriminator: 1)
!1138 = distinct !DILexicalBlock(scope: !1139, file: !63, line: 970, column: 22)
!1139 = distinct !DILexicalBlock(scope: !1134, file: !63, line: 970, column: 16)
!1140 = !DILocation(line: 970, column: 29, scope: !1137)
!1141 = !DILocation(line: 970, column: 22, scope: !1137)
!1142 = !DILocation(line: 970, column: 20, scope: !1143)
!1143 = !DILexicalBlockFile(scope: !1144, file: !63, discriminator: 2)
!1144 = distinct !DILexicalBlock(scope: !1145, file: !63, line: 970, column: 20)
!1145 = distinct !DILexicalBlock(scope: !1138, file: !63, line: 970, column: 14)
!1146 = !DILocation(line: 970, column: 26, scope: !1143)
!1147 = !DILocation(line: 970, column: 33, scope: !1143)
!1148 = !DILocation(line: 970, column: 16, scope: !1149)
!1149 = !DILexicalBlockFile(scope: !1150, file: !63, discriminator: 3)
!1150 = distinct !DILexicalBlock(scope: !1144, file: !63, line: 970, column: 14)
!1151 = !DILocation(line: 970, column: 22, scope: !1149)
!1152 = !DILocation(line: 970, column: 30, scope: !1149)
!1153 = !DILocation(line: 970, column: 35, scope: !1149)
!1154 = !DILocation(line: 970, column: 41, scope: !1149)
!1155 = !DILocation(line: 970, column: 50, scope: !1149)
!1156 = !DILocation(line: 970, column: 60, scope: !1157)
!1157 = !DILexicalBlockFile(scope: !1145, file: !63, discriminator: 4)
!1158 = !DILocation(line: 970, column: 67, scope: !1157)
!1159 = !DILocation(line: 970, column: 52, scope: !1157)
!1160 = !DILocation(line: 970, column: 84, scope: !1157)
!1161 = !DILocation(line: 970, column: 91, scope: !1157)
!1162 = !DILocation(line: 970, column: 76, scope: !1163)
!1163 = !DILexicalBlockFile(scope: !1157, file: !63, discriminator: 6)
!1164 = !DILocation(line: 970, column: 106, scope: !1157)
!1165 = !DILocation(line: 970, column: 113, scope: !1157)
!1166 = !DILocation(line: 970, column: 98, scope: !1167)
!1167 = !DILexicalBlockFile(scope: !1157, file: !63, discriminator: 7)
!1168 = !DILocation(line: 970, column: 131, scope: !1157)
!1169 = !DILocation(line: 970, column: 124, scope: !1170)
!1170 = !DILexicalBlockFile(scope: !1157, file: !63, discriminator: 8)
!1171 = !DILocation(line: 970, column: 138, scope: !1157)
!1172 = !DILocation(line: 970, column: 140, scope: !1173)
!1173 = !DILexicalBlockFile(scope: !1139, file: !63, discriminator: 5)
!1174 = !DILocation(line: 971, column: 10, scope: !1134)
!1175 = !DILocation(line: 972, column: 7, scope: !1116)
!1176 = !DILocation(line: 965, column: 39, scope: !1177)
!1177 = !DILexicalBlockFile(scope: !1110, file: !63, discriminator: 2)
!1178 = !DILocation(line: 965, column: 7, scope: !1177)
!1179 = distinct !{!1179, !1180}
!1180 = !DILocation(line: 965, column: 7, scope: !1103)
!1181 = !DILocation(line: 973, column: 11, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1103, file: !63, line: 973, column: 11)
!1183 = !DILocation(line: 973, column: 11, scope: !1103)
!1184 = !DILocation(line: 974, column: 27, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1182, file: !63, line: 973, column: 17)
!1186 = !DILocation(line: 974, column: 10, scope: !1185)
!1187 = !DILocation(line: 975, column: 19, scope: !1185)
!1188 = !DILocation(line: 976, column: 7, scope: !1185)
!1189 = !DILocation(line: 977, column: 4, scope: !1103)
!1190 = !DILocation(line: 979, column: 8, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1009, file: !63, line: 979, column: 8)
!1192 = !DILocation(line: 979, column: 8, scope: !1009)
!1193 = !DILocation(line: 980, column: 7, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1191, file: !63, line: 979, column: 14)
!1195 = distinct !{!1195, !1193}
!1196 = !DILocation(line: 980, column: 17, scope: !1197)
!1197 = !DILexicalBlockFile(scope: !1198, file: !63, discriminator: 1)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !63, line: 980, column: 16)
!1199 = distinct !DILexicalBlock(scope: !1194, file: !63, line: 980, column: 10)
!1200 = !DILocation(line: 980, column: 31, scope: !1197)
!1201 = !DILocation(line: 980, column: 16, scope: !1197)
!1202 = !DILocation(line: 980, column: 14, scope: !1203)
!1203 = !DILexicalBlockFile(scope: !1204, file: !63, discriminator: 2)
!1204 = distinct !DILexicalBlock(scope: !1205, file: !63, line: 980, column: 14)
!1205 = distinct !DILexicalBlock(scope: !1198, file: !63, line: 980, column: 8)
!1206 = !DILocation(line: 980, column: 28, scope: !1203)
!1207 = !DILocation(line: 980, column: 35, scope: !1203)
!1208 = !DILocation(line: 980, column: 10, scope: !1209)
!1209 = !DILexicalBlockFile(scope: !1210, file: !63, discriminator: 3)
!1210 = distinct !DILexicalBlock(scope: !1204, file: !63, line: 980, column: 8)
!1211 = !DILocation(line: 980, column: 24, scope: !1209)
!1212 = !DILocation(line: 980, column: 32, scope: !1209)
!1213 = !DILocation(line: 980, column: 37, scope: !1209)
!1214 = !DILocation(line: 980, column: 51, scope: !1209)
!1215 = !DILocation(line: 980, column: 60, scope: !1209)
!1216 = !DILocation(line: 980, column: 70, scope: !1217)
!1217 = !DILexicalBlockFile(scope: !1205, file: !63, discriminator: 4)
!1218 = !DILocation(line: 980, column: 85, scope: !1217)
!1219 = !DILocation(line: 980, column: 62, scope: !1217)
!1220 = !DILocation(line: 980, column: 102, scope: !1217)
!1221 = !DILocation(line: 980, column: 117, scope: !1217)
!1222 = !DILocation(line: 980, column: 94, scope: !1223)
!1223 = !DILexicalBlockFile(scope: !1217, file: !63, discriminator: 6)
!1224 = !DILocation(line: 980, column: 132, scope: !1217)
!1225 = !DILocation(line: 980, column: 147, scope: !1217)
!1226 = !DILocation(line: 980, column: 124, scope: !1227)
!1227 = !DILexicalBlockFile(scope: !1217, file: !63, discriminator: 7)
!1228 = !DILocation(line: 980, column: 165, scope: !1217)
!1229 = !DILocation(line: 980, column: 158, scope: !1230)
!1230 = !DILexicalBlockFile(scope: !1217, file: !63, discriminator: 8)
!1231 = !DILocation(line: 980, column: 180, scope: !1217)
!1232 = !DILocation(line: 980, column: 182, scope: !1233)
!1233 = !DILexicalBlockFile(scope: !1199, file: !63, discriminator: 5)
!1234 = !DILocation(line: 981, column: 20, scope: !1194)
!1235 = !DILocation(line: 982, column: 4, scope: !1194)
!1236 = !DILocation(line: 984, column: 8, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1009, file: !63, line: 984, column: 8)
!1238 = !DILocation(line: 984, column: 19, scope: !1237)
!1239 = !DILocation(line: 984, column: 8, scope: !1009)
!1240 = !DILocation(line: 985, column: 14, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1237, file: !63, line: 984, column: 27)
!1242 = !DILocation(line: 985, column: 7, scope: !1241)
!1243 = !DILocation(line: 986, column: 18, scope: !1241)
!1244 = !DILocation(line: 987, column: 4, scope: !1241)
!1245 = !DILocation(line: 988, column: 1, scope: !1009)
!1246 = distinct !DISubprogram(name: "VMToolsConfigLogDomain", scope: !63, file: !63, line: 788, type: !1247, isLocal: true, isDefinition: true, scopeLine: 792, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{null, !81, !270, !61, !169}
!1249 = !DILocalVariable(name: "domain", arg: 1, scope: !1246, file: !63, line: 788, type: !81)
!1250 = !DILocation(line: 788, column: 37, scope: !1246)
!1251 = !DILocalVariable(name: "cfg", arg: 2, scope: !1246, file: !63, line: 789, type: !270)
!1252 = !DILocation(line: 789, column: 34, scope: !1246)
!1253 = !DILocalVariable(name: "oldDefault", arg: 3, scope: !1246, file: !63, line: 790, type: !61)
!1254 = !DILocation(line: 790, column: 36, scope: !1246)
!1255 = !DILocalVariable(name: "oldDomains", arg: 4, scope: !1246, file: !63, line: 791, type: !169)
!1256 = !DILocation(line: 791, column: 35, scope: !1246)
!1257 = !DILocalVariable(name: "handler", scope: !1246, file: !63, line: 793, type: !48)
!1258 = !DILocation(line: 793, column: 11, scope: !1246)
!1259 = !DILocalVariable(name: "level", scope: !1246, file: !63, line: 794, type: !48)
!1260 = !DILocation(line: 794, column: 11, scope: !1246)
!1261 = !DILocalVariable(name: "confData", scope: !1246, file: !63, line: 795, type: !48)
!1262 = !DILocation(line: 795, column: 11, scope: !1246)
!1263 = !DILocalVariable(name: "key", scope: !1246, file: !63, line: 796, type: !341)
!1264 = !DILocation(line: 796, column: 10, scope: !1246)
!1265 = !DILocalVariable(name: "isDefault", scope: !1246, file: !63, line: 797, type: !73)
!1266 = !DILocation(line: 797, column: 13, scope: !1246)
!1267 = !DILocation(line: 797, column: 32, scope: !1246)
!1268 = !DILocation(line: 797, column: 40, scope: !1246)
!1269 = !DILocation(line: 797, column: 25, scope: !1246)
!1270 = !DILocation(line: 797, column: 52, scope: !1246)
!1271 = !DILocalVariable(name: "levelsMask", scope: !1246, file: !63, line: 799, type: !83)
!1272 = !DILocation(line: 799, column: 19, scope: !1246)
!1273 = !DILocalVariable(name: "data", scope: !1246, file: !63, line: 800, type: !61)
!1274 = !DILocation(line: 800, column: 16, scope: !1246)
!1275 = !DILocation(line: 803, column: 15, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1246, file: !63, line: 803, column: 8)
!1277 = !DILocation(line: 803, column: 8, scope: !1276)
!1278 = !DILocation(line: 803, column: 23, scope: !1276)
!1279 = !DILocation(line: 803, column: 8, scope: !1246)
!1280 = !DILocation(line: 804, column: 79, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1276, file: !63, line: 803, column: 31)
!1282 = !DILocation(line: 804, column: 7, scope: !1281)
!1283 = !DILocation(line: 805, column: 7, scope: !1281)
!1284 = !DILocation(line: 806, column: 22, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1276, file: !63, line: 806, column: 15)
!1286 = !DILocation(line: 806, column: 15, scope: !1285)
!1287 = !DILocation(line: 806, column: 30, scope: !1285)
!1288 = !DILocation(line: 806, column: 15, scope: !1276)
!1289 = !DILocation(line: 807, column: 7, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1285, file: !63, line: 806, column: 36)
!1291 = !DILocation(line: 808, column: 7, scope: !1290)
!1292 = !DILocation(line: 811, column: 15, scope: !1246)
!1293 = !DILocation(line: 811, column: 44, scope: !1246)
!1294 = !DILocation(line: 811, column: 4, scope: !1246)
!1295 = !DILocation(line: 812, column: 34, scope: !1246)
!1296 = !DILocation(line: 812, column: 50, scope: !1246)
!1297 = !DILocation(line: 812, column: 12, scope: !1246)
!1298 = !DILocation(line: 812, column: 10, scope: !1246)
!1299 = !DILocation(line: 813, column: 8, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1246, file: !63, line: 813, column: 8)
!1301 = !DILocation(line: 813, column: 14, scope: !1300)
!1302 = !DILocation(line: 813, column: 8, scope: !1246)
!1303 = !DILocation(line: 814, column: 15, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1300, file: !63, line: 813, column: 22)
!1305 = !DILocation(line: 814, column: 13, scope: !1304)
!1306 = !DILocation(line: 815, column: 4, scope: !1304)
!1307 = !DILocation(line: 818, column: 15, scope: !1246)
!1308 = !DILocation(line: 818, column: 46, scope: !1246)
!1309 = !DILocation(line: 818, column: 4, scope: !1246)
!1310 = !DILocation(line: 819, column: 36, scope: !1246)
!1311 = !DILocation(line: 819, column: 52, scope: !1246)
!1312 = !DILocation(line: 819, column: 14, scope: !1246)
!1313 = !DILocation(line: 819, column: 12, scope: !1246)
!1314 = !DILocation(line: 821, column: 15, scope: !1246)
!1315 = !DILocation(line: 821, column: 43, scope: !1246)
!1316 = !DILocation(line: 821, column: 4, scope: !1246)
!1317 = !DILocation(line: 822, column: 37, scope: !1246)
!1318 = !DILocation(line: 822, column: 53, scope: !1246)
!1319 = !DILocation(line: 822, column: 15, scope: !1246)
!1320 = !DILocation(line: 822, column: 13, scope: !1246)
!1321 = !DILocation(line: 824, column: 8, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1246, file: !63, line: 824, column: 8)
!1323 = !DILocation(line: 824, column: 16, scope: !1322)
!1324 = !DILocation(line: 824, column: 23, scope: !1322)
!1325 = !DILocation(line: 824, column: 26, scope: !1326)
!1326 = !DILexicalBlockFile(scope: !1322, file: !63, discriminator: 1)
!1327 = !DILocation(line: 824, column: 8, scope: !1326)
!1328 = !DILocation(line: 829, column: 17, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1322, file: !63, line: 824, column: 37)
!1330 = !DILocation(line: 829, column: 15, scope: !1329)
!1331 = !DILocation(line: 830, column: 4, scope: !1329)
!1332 = !DILocation(line: 832, column: 8, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1246, file: !63, line: 832, column: 8)
!1334 = !DILocation(line: 832, column: 17, scope: !1333)
!1335 = !DILocation(line: 832, column: 8, scope: !1246)
!1336 = !DILocation(line: 833, column: 22, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1338, file: !63, line: 833, column: 11)
!1338 = distinct !DILexicalBlock(scope: !1333, file: !63, line: 832, column: 25)
!1339 = !DILocation(line: 833, column: 12, scope: !1337)
!1340 = !DILocation(line: 833, column: 39, scope: !1337)
!1341 = !DILocation(line: 833, column: 45, scope: !1337)
!1342 = !DILocation(line: 833, column: 59, scope: !1343)
!1343 = !DILexicalBlockFile(scope: !1337, file: !63, discriminator: 1)
!1344 = !DILocation(line: 833, column: 49, scope: !1343)
!1345 = !DILocation(line: 833, column: 77, scope: !1343)
!1346 = !DILocation(line: 833, column: 11, scope: !1343)
!1347 = !DILocation(line: 834, column: 47, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1337, file: !63, line: 833, column: 84)
!1349 = !DILocation(line: 834, column: 21, scope: !1348)
!1350 = !DILocation(line: 834, column: 19, scope: !1348)
!1351 = !DILocation(line: 835, column: 7, scope: !1348)
!1352 = !DILocation(line: 836, column: 4, scope: !1338)
!1353 = !DILocation(line: 839, column: 15, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1246, file: !63, line: 839, column: 8)
!1355 = !DILocation(line: 839, column: 8, scope: !1354)
!1356 = !DILocation(line: 839, column: 31, scope: !1354)
!1357 = !DILocation(line: 839, column: 8, scope: !1246)
!1358 = !DILocation(line: 840, column: 18, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1354, file: !63, line: 839, column: 37)
!1360 = !DILocation(line: 841, column: 4, scope: !1359)
!1361 = !DILocation(line: 841, column: 22, scope: !1362)
!1362 = !DILexicalBlockFile(scope: !1363, file: !63, discriminator: 1)
!1363 = distinct !DILexicalBlock(scope: !1354, file: !63, line: 841, column: 15)
!1364 = !DILocation(line: 841, column: 15, scope: !1362)
!1365 = !DILocation(line: 841, column: 41, scope: !1362)
!1366 = !DILocation(line: 842, column: 18, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1363, file: !63, line: 841, column: 47)
!1368 = !DILocation(line: 844, column: 4, scope: !1367)
!1369 = !DILocation(line: 844, column: 22, scope: !1370)
!1370 = !DILexicalBlockFile(scope: !1371, file: !63, discriminator: 1)
!1371 = distinct !DILexicalBlock(scope: !1363, file: !63, line: 844, column: 15)
!1372 = !DILocation(line: 844, column: 15, scope: !1370)
!1373 = !DILocation(line: 844, column: 40, scope: !1370)
!1374 = !DILocation(line: 845, column: 18, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1371, file: !63, line: 844, column: 46)
!1376 = !DILocation(line: 848, column: 4, scope: !1375)
!1377 = !DILocation(line: 848, column: 22, scope: !1378)
!1378 = !DILexicalBlockFile(scope: !1379, file: !63, discriminator: 1)
!1379 = distinct !DILexicalBlock(scope: !1371, file: !63, line: 848, column: 15)
!1380 = !DILocation(line: 848, column: 15, scope: !1378)
!1381 = !DILocation(line: 848, column: 40, scope: !1378)
!1382 = !DILocation(line: 849, column: 18, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1379, file: !63, line: 848, column: 46)
!1384 = !DILocation(line: 853, column: 4, scope: !1383)
!1385 = !DILocation(line: 853, column: 22, scope: !1386)
!1386 = !DILexicalBlockFile(scope: !1387, file: !63, discriminator: 1)
!1387 = distinct !DILexicalBlock(scope: !1379, file: !63, line: 853, column: 15)
!1388 = !DILocation(line: 853, column: 15, scope: !1386)
!1389 = !DILocation(line: 853, column: 37, scope: !1386)
!1390 = !DILocation(line: 854, column: 18, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1387, file: !63, line: 853, column: 43)
!1392 = !DILocation(line: 859, column: 4, scope: !1391)
!1393 = !DILocation(line: 859, column: 22, scope: !1394)
!1394 = !DILexicalBlockFile(scope: !1395, file: !63, discriminator: 1)
!1395 = distinct !DILexicalBlock(scope: !1387, file: !63, line: 859, column: 15)
!1396 = !DILocation(line: 859, column: 15, scope: !1394)
!1397 = !DILocation(line: 859, column: 38, scope: !1394)
!1398 = !DILocation(line: 860, column: 18, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1395, file: !63, line: 859, column: 44)
!1400 = !DILocation(line: 861, column: 4, scope: !1399)
!1401 = !DILocation(line: 861, column: 22, scope: !1402)
!1402 = !DILexicalBlockFile(scope: !1403, file: !63, discriminator: 1)
!1403 = distinct !DILexicalBlock(scope: !1395, file: !63, line: 861, column: 15)
!1404 = !DILocation(line: 861, column: 15, scope: !1402)
!1405 = !DILocation(line: 861, column: 37, scope: !1402)
!1406 = !DILocation(line: 862, column: 18, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1403, file: !63, line: 861, column: 43)
!1408 = !DILocation(line: 863, column: 4, scope: !1407)
!1409 = !DILocation(line: 864, column: 81, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1403, file: !63, line: 863, column: 11)
!1411 = !DILocation(line: 864, column: 89, scope: !1410)
!1412 = !DILocation(line: 864, column: 7, scope: !1410)
!1413 = !DILocation(line: 865, column: 7, scope: !1410)
!1414 = !DILocation(line: 868, column: 8, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1246, file: !63, line: 868, column: 8)
!1416 = !DILocation(line: 868, column: 16, scope: !1415)
!1417 = !DILocation(line: 868, column: 8, scope: !1246)
!1418 = !DILocalVariable(name: "oldtype", scope: !1419, file: !63, line: 875, type: !52)
!1419 = distinct !DILexicalBlock(scope: !1415, file: !63, line: 868, column: 24)
!1420 = !DILocation(line: 875, column: 19, scope: !1419)
!1421 = !DILocation(line: 875, column: 29, scope: !1419)
!1422 = !DILocation(line: 875, column: 40, scope: !1419)
!1423 = !DILocation(line: 875, column: 49, scope: !1424)
!1424 = !DILexicalBlockFile(scope: !1419, file: !63, discriminator: 1)
!1425 = !DILocation(line: 875, column: 61, scope: !1424)
!1426 = !DILocation(line: 875, column: 29, scope: !1424)
!1427 = !DILocation(line: 875, column: 29, scope: !1428)
!1428 = !DILexicalBlockFile(scope: !1419, file: !63, discriminator: 2)
!1429 = !DILocation(line: 875, column: 29, scope: !1430)
!1430 = !DILexicalBlockFile(scope: !1419, file: !63, discriminator: 3)
!1431 = !DILocation(line: 875, column: 19, scope: !1430)
!1432 = !DILocalVariable(name: "oldData", scope: !1419, file: !63, line: 876, type: !52)
!1433 = !DILocation(line: 876, column: 19, scope: !1419)
!1434 = !DILocation(line: 876, column: 29, scope: !1419)
!1435 = !DILocation(line: 876, column: 40, scope: !1419)
!1436 = !DILocation(line: 876, column: 49, scope: !1424)
!1437 = !DILocation(line: 876, column: 61, scope: !1424)
!1438 = !DILocation(line: 876, column: 29, scope: !1424)
!1439 = !DILocation(line: 876, column: 29, scope: !1428)
!1440 = !DILocation(line: 876, column: 29, scope: !1430)
!1441 = !DILocation(line: 876, column: 19, scope: !1430)
!1442 = !DILocation(line: 878, column: 21, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1419, file: !63, line: 878, column: 11)
!1444 = !DILocation(line: 878, column: 11, scope: !1443)
!1445 = !DILocation(line: 878, column: 39, scope: !1443)
!1446 = !DILocation(line: 878, column: 11, scope: !1419)
!1447 = !DILocation(line: 879, column: 18, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1443, file: !63, line: 878, column: 45)
!1449 = !DILocation(line: 880, column: 7, scope: !1448)
!1450 = !DILocation(line: 882, column: 11, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1419, file: !63, line: 882, column: 11)
!1452 = !DILocation(line: 882, column: 21, scope: !1451)
!1453 = !DILocation(line: 882, column: 34, scope: !1454)
!1454 = !DILexicalBlockFile(scope: !1451, file: !63, discriminator: 1)
!1455 = !DILocation(line: 882, column: 43, scope: !1454)
!1456 = !DILocation(line: 882, column: 24, scope: !1454)
!1457 = !DILocation(line: 882, column: 52, scope: !1454)
!1458 = !DILocation(line: 882, column: 11, scope: !1454)
!1459 = !DILocation(line: 884, column: 24, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1461, file: !63, line: 884, column: 14)
!1461 = distinct !DILexicalBlock(scope: !1451, file: !63, line: 882, column: 58)
!1462 = !DILocation(line: 884, column: 33, scope: !1460)
!1463 = !DILocation(line: 884, column: 14, scope: !1460)
!1464 = !DILocation(line: 884, column: 43, scope: !1460)
!1465 = !DILocation(line: 884, column: 14, scope: !1461)
!1466 = !DILocation(line: 885, column: 20, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1460, file: !63, line: 884, column: 49)
!1468 = !DILocation(line: 885, column: 18, scope: !1467)
!1469 = !DILocation(line: 886, column: 10, scope: !1467)
!1470 = !DILocation(line: 887, column: 7, scope: !1461)
!1471 = !DILocation(line: 887, column: 18, scope: !1472)
!1472 = !DILexicalBlockFile(scope: !1473, file: !63, discriminator: 1)
!1473 = distinct !DILexicalBlock(scope: !1451, file: !63, line: 887, column: 18)
!1474 = !DILocation(line: 887, column: 29, scope: !1472)
!1475 = !DILocalVariable(name: "i", scope: !1476, file: !63, line: 888, type: !59)
!1476 = distinct !DILexicalBlock(scope: !1473, file: !63, line: 887, column: 37)
!1477 = !DILocation(line: 888, column: 16, scope: !1476)
!1478 = !DILocation(line: 889, column: 17, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1476, file: !63, line: 889, column: 10)
!1480 = !DILocation(line: 889, column: 15, scope: !1479)
!1481 = !DILocation(line: 889, column: 22, scope: !1482)
!1482 = !DILexicalBlockFile(scope: !1483, file: !63, discriminator: 1)
!1483 = distinct !DILexicalBlock(scope: !1479, file: !63, line: 889, column: 10)
!1484 = !DILocation(line: 889, column: 26, scope: !1482)
!1485 = !DILocation(line: 889, column: 38, scope: !1482)
!1486 = !DILocation(line: 889, column: 24, scope: !1482)
!1487 = !DILocation(line: 889, column: 10, scope: !1482)
!1488 = !DILocalVariable(name: "old", scope: !1489, file: !63, line: 890, type: !61)
!1489 = distinct !DILexicalBlock(scope: !1483, file: !63, line: 889, column: 48)
!1490 = !DILocation(line: 890, column: 25, scope: !1489)
!1491 = !DILocation(line: 890, column: 53, scope: !1489)
!1492 = !DILocation(line: 890, column: 31, scope: !1489)
!1493 = !DILocation(line: 890, column: 33, scope: !1489)
!1494 = !DILocation(line: 890, column: 46, scope: !1489)
!1495 = !DILocation(line: 891, column: 17, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1489, file: !63, line: 891, column: 17)
!1497 = !DILocation(line: 891, column: 21, scope: !1496)
!1498 = !DILocation(line: 891, column: 28, scope: !1496)
!1499 = !DILocation(line: 891, column: 32, scope: !1500)
!1500 = !DILexicalBlockFile(scope: !1496, file: !63, discriminator: 1)
!1501 = !DILocation(line: 891, column: 37, scope: !1500)
!1502 = !DILocation(line: 891, column: 47, scope: !1500)
!1503 = !DILocation(line: 891, column: 57, scope: !1504)
!1504 = !DILexicalBlockFile(scope: !1496, file: !63, discriminator: 2)
!1505 = !DILocation(line: 891, column: 62, scope: !1504)
!1506 = !DILocation(line: 891, column: 70, scope: !1504)
!1507 = !DILocation(line: 891, column: 50, scope: !1504)
!1508 = !DILocation(line: 891, column: 78, scope: !1504)
!1509 = !DILocation(line: 891, column: 17, scope: !1504)
!1510 = !DILocation(line: 892, column: 30, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !63, line: 892, column: 20)
!1512 = distinct !DILexicalBlock(scope: !1496, file: !63, line: 891, column: 84)
!1513 = !DILocation(line: 892, column: 35, scope: !1511)
!1514 = !DILocation(line: 892, column: 41, scope: !1511)
!1515 = !DILocation(line: 892, column: 20, scope: !1511)
!1516 = !DILocation(line: 892, column: 50, scope: !1511)
!1517 = !DILocation(line: 892, column: 55, scope: !1511)
!1518 = !DILocation(line: 893, column: 30, scope: !1511)
!1519 = !DILocation(line: 893, column: 35, scope: !1511)
!1520 = !DILocation(line: 893, column: 45, scope: !1511)
!1521 = !DILocation(line: 893, column: 20, scope: !1511)
!1522 = !DILocation(line: 893, column: 55, scope: !1511)
!1523 = !DILocation(line: 892, column: 20, scope: !1524)
!1524 = !DILexicalBlockFile(scope: !1512, file: !63, discriminator: 1)
!1525 = !DILocation(line: 894, column: 26, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1511, file: !63, line: 893, column: 61)
!1527 = !DILocation(line: 894, column: 24, scope: !1526)
!1528 = !DILocation(line: 895, column: 37, scope: !1526)
!1529 = !DILocation(line: 895, column: 19, scope: !1526)
!1530 = !DILocation(line: 895, column: 31, scope: !1526)
!1531 = !DILocation(line: 895, column: 40, scope: !1526)
!1532 = !DILocation(line: 896, column: 16, scope: !1526)
!1533 = !DILocation(line: 897, column: 16, scope: !1512)
!1534 = !DILocation(line: 899, column: 10, scope: !1489)
!1535 = !DILocation(line: 889, column: 44, scope: !1536)
!1536 = !DILexicalBlockFile(scope: !1483, file: !63, discriminator: 2)
!1537 = !DILocation(line: 889, column: 10, scope: !1536)
!1538 = distinct !{!1538, !1539}
!1539 = !DILocation(line: 889, column: 10, scope: !1476)
!1540 = !DILocation(line: 900, column: 7, scope: !1476)
!1541 = !DILocation(line: 902, column: 11, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1419, file: !63, line: 902, column: 11)
!1543 = !DILocation(line: 902, column: 16, scope: !1542)
!1544 = !DILocation(line: 902, column: 11, scope: !1419)
!1545 = !DILocation(line: 903, column: 38, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1542, file: !63, line: 902, column: 24)
!1547 = !DILocation(line: 903, column: 47, scope: !1546)
!1548 = !DILocation(line: 903, column: 55, scope: !1546)
!1549 = !DILocation(line: 903, column: 67, scope: !1546)
!1550 = !DILocation(line: 903, column: 17, scope: !1546)
!1551 = !DILocation(line: 903, column: 15, scope: !1546)
!1552 = !DILocation(line: 904, column: 7, scope: !1546)
!1553 = !DILocation(line: 905, column: 23, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1542, file: !63, line: 904, column: 14)
!1555 = !DILocation(line: 905, column: 10, scope: !1554)
!1556 = !DILocation(line: 905, column: 16, scope: !1554)
!1557 = !DILocation(line: 905, column: 21, scope: !1554)
!1558 = !DILocation(line: 907, column: 4, scope: !1419)
!1559 = !DILocation(line: 910, column: 30, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1415, file: !63, line: 907, column: 11)
!1561 = !DILocation(line: 910, column: 15, scope: !1560)
!1562 = !DILocation(line: 910, column: 12, scope: !1560)
!1563 = !DILocation(line: 911, column: 31, scope: !1560)
!1564 = !DILocation(line: 911, column: 22, scope: !1560)
!1565 = !DILocation(line: 911, column: 7, scope: !1560)
!1566 = !DILocation(line: 911, column: 13, scope: !1560)
!1567 = !DILocation(line: 911, column: 20, scope: !1560)
!1568 = !DILocation(line: 912, column: 7, scope: !1560)
!1569 = !DILocation(line: 912, column: 13, scope: !1560)
!1570 = !DILocation(line: 912, column: 23, scope: !1560)
!1571 = !DILocation(line: 913, column: 20, scope: !1560)
!1572 = !DILocation(line: 913, column: 7, scope: !1560)
!1573 = !DILocation(line: 913, column: 13, scope: !1560)
!1574 = !DILocation(line: 913, column: 18, scope: !1560)
!1575 = !DILocation(line: 914, column: 7, scope: !1560)
!1576 = !DILocation(line: 914, column: 13, scope: !1560)
!1577 = !DILocation(line: 914, column: 22, scope: !1560)
!1578 = !DILocation(line: 915, column: 33, scope: !1560)
!1579 = !DILocation(line: 915, column: 24, scope: !1560)
!1580 = !DILocation(line: 915, column: 7, scope: !1560)
!1581 = !DILocation(line: 915, column: 13, scope: !1560)
!1582 = !DILocation(line: 915, column: 22, scope: !1560)
!1583 = !DILocation(line: 918, column: 8, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1246, file: !63, line: 918, column: 8)
!1585 = !DILocation(line: 918, column: 8, scope: !1246)
!1586 = !DILocation(line: 919, column: 22, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1584, file: !63, line: 918, column: 19)
!1588 = !DILocation(line: 919, column: 20, scope: !1587)
!1589 = !DILocation(line: 920, column: 45, scope: !1587)
!1590 = !DILocation(line: 920, column: 7, scope: !1587)
!1591 = !DILocation(line: 921, column: 4, scope: !1587)
!1592 = !DILocation(line: 922, column: 11, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1594, file: !63, line: 922, column: 11)
!1594 = distinct !DILexicalBlock(scope: !1584, file: !63, line: 921, column: 11)
!1595 = !DILocation(line: 922, column: 20, scope: !1593)
!1596 = !DILocation(line: 922, column: 11, scope: !1594)
!1597 = !DILocation(line: 923, column: 21, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1593, file: !63, line: 922, column: 28)
!1599 = !DILocation(line: 923, column: 19, scope: !1598)
!1600 = !DILocation(line: 924, column: 7, scope: !1598)
!1601 = !DILocation(line: 925, column: 23, scope: !1594)
!1602 = !DILocation(line: 925, column: 33, scope: !1594)
!1603 = !DILocation(line: 925, column: 7, scope: !1594)
!1604 = !DILocation(line: 926, column: 11, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1594, file: !63, line: 926, column: 11)
!1606 = !DILocation(line: 926, column: 17, scope: !1605)
!1607 = !DILocation(line: 926, column: 27, scope: !1605)
!1608 = !DILocation(line: 926, column: 11, scope: !1594)
!1609 = !DILocation(line: 927, column: 46, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1605, file: !63, line: 926, column: 33)
!1611 = !DILocation(line: 932, column: 46, scope: !1610)
!1612 = !DILocation(line: 927, column: 28, scope: !1610)
!1613 = !DILocation(line: 927, column: 10, scope: !1610)
!1614 = !DILocation(line: 927, column: 16, scope: !1610)
!1615 = !DILocation(line: 927, column: 26, scope: !1610)
!1616 = !DILocation(line: 933, column: 7, scope: !1610)
!1617 = !DILocation(line: 918, column: 8, scope: !1618)
!1618 = !DILexicalBlockFile(scope: !1584, file: !63, discriminator: 1)
!1619 = !DILocation(line: 937, column: 11, scope: !1246)
!1620 = !DILocation(line: 937, column: 4, scope: !1246)
!1621 = !DILocation(line: 938, column: 11, scope: !1246)
!1622 = !DILocation(line: 938, column: 4, scope: !1246)
!1623 = !DILocation(line: 939, column: 11, scope: !1246)
!1624 = !DILocation(line: 939, column: 4, scope: !1246)
!1625 = !DILocation(line: 940, column: 1, scope: !1246)
!1626 = distinct !DISubprogram(name: "VMTools_AcquireLogStateLock", scope: !63, file: !63, line: 1324, type: !1627, isLocal: false, isDefinition: true, scopeLine: 1325, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{null}
!1629 = !DILocation(line: 1326, column: 4, scope: !1626)
!1630 = !DILocation(line: 1327, column: 1, scope: !1626)
!1631 = distinct !DISubprogram(name: "VMTools_ReleaseLogStateLock", scope: !63, file: !63, line: 1335, type: !1627, isLocal: false, isDefinition: true, scopeLine: 1336, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!1632 = !DILocation(line: 1337, column: 4, scope: !1631)
!1633 = !DILocation(line: 1338, column: 1, scope: !1631)
!1634 = distinct !DISubprogram(name: "VMTools_StopLogging", scope: !63, file: !63, line: 1347, type: !1627, isLocal: false, isDefinition: true, scopeLine: 1348, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!1635 = !DILocation(line: 1349, column: 20, scope: !1634)
!1636 = !DILocation(line: 1350, column: 1, scope: !1634)
!1637 = distinct !DISubprogram(name: "VMTools_RestartLogging", scope: !63, file: !63, line: 1359, type: !1627, isLocal: false, isDefinition: true, scopeLine: 1360, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!1638 = !DILocation(line: 1361, column: 20, scope: !1637)
!1639 = !DILocation(line: 1362, column: 1, scope: !1637)
!1640 = distinct !DISubprogram(name: "VMTools_SuspendLogIO", scope: !63, file: !63, line: 1370, type: !1627, isLocal: false, isDefinition: true, scopeLine: 1371, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!1641 = !DILocation(line: 1372, column: 20, scope: !1640)
!1642 = !DILocation(line: 1373, column: 1, scope: !1640)
!1643 = distinct !DISubprogram(name: "VMTools_ResumeLogIO", scope: !63, file: !63, line: 1381, type: !1627, isLocal: false, isDefinition: true, scopeLine: 1382, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!1644 = !DILocalVariable(name: "cachedEntries", scope: !1643, file: !63, line: 1383, type: !59)
!1645 = !DILocation(line: 1383, column: 10, scope: !1643)
!1646 = !DILocation(line: 1389, column: 20, scope: !1643)
!1647 = !DILocation(line: 1394, column: 8, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1643, file: !63, line: 1394, column: 8)
!1649 = !DILocation(line: 1394, column: 8, scope: !1643)
!1650 = !DILocation(line: 1395, column: 23, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1648, file: !63, line: 1394, column: 21)
!1652 = !DILocation(line: 1395, column: 36, scope: !1651)
!1653 = !DILocation(line: 1395, column: 21, scope: !1651)
!1654 = !DILocation(line: 1396, column: 27, scope: !1651)
!1655 = !DILocation(line: 1396, column: 7, scope: !1651)
!1656 = !DILocation(line: 1397, column: 24, scope: !1651)
!1657 = !DILocation(line: 1397, column: 7, scope: !1651)
!1658 = !DILocation(line: 1398, column: 19, scope: !1651)
!1659 = !DILocation(line: 1399, column: 4, scope: !1651)
!1660 = !DILocation(line: 1401, column: 105, scope: !1643)
!1661 = !DILocation(line: 1401, column: 4, scope: !1643)
!1662 = !DILocation(line: 1404, column: 8, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1643, file: !63, line: 1404, column: 8)
!1664 = !DILocation(line: 1404, column: 25, scope: !1663)
!1665 = !DILocation(line: 1404, column: 8, scope: !1643)
!1666 = !DILocation(line: 1405, column: 88, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1663, file: !63, line: 1404, column: 30)
!1668 = !DILocation(line: 1405, column: 7, scope: !1667)
!1669 = !DILocation(line: 1406, column: 24, scope: !1667)
!1670 = !DILocation(line: 1407, column: 4, scope: !1667)
!1671 = !DILocation(line: 1408, column: 1, scope: !1643)
!1672 = distinct !DISubprogram(name: "VMToolsLogMsg", scope: !63, file: !63, line: 430, type: !1673, isLocal: true, isDefinition: true, scopeLine: 431, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{null, !84, !84}
!1675 = !DILocalVariable(name: "_data", arg: 1, scope: !1672, file: !63, line: 430, type: !84)
!1676 = !DILocation(line: 430, column: 24, scope: !1672)
!1677 = !DILocalVariable(name: "userData", arg: 2, scope: !1672, file: !63, line: 430, type: !84)
!1678 = !DILocation(line: 430, column: 40, scope: !1672)
!1679 = !DILocalVariable(name: "entry", scope: !1672, file: !63, line: 432, type: !568)
!1680 = !DILocation(line: 432, column: 14, scope: !1672)
!1681 = !DILocation(line: 432, column: 22, scope: !1672)
!1682 = !DILocalVariable(name: "logger", scope: !1672, file: !63, line: 433, type: !67)
!1683 = !DILocation(line: 433, column: 16, scope: !1672)
!1684 = !DILocation(line: 433, column: 25, scope: !1672)
!1685 = !DILocation(line: 433, column: 32, scope: !1672)
!1686 = !DILocation(line: 433, column: 41, scope: !1672)
!1687 = !DILocalVariable(name: "usedSyslog", scope: !1672, file: !63, line: 434, type: !73)
!1688 = !DILocation(line: 434, column: 13, scope: !1672)
!1689 = !DILocation(line: 436, column: 8, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1672, file: !63, line: 436, column: 8)
!1691 = !DILocation(line: 436, column: 15, scope: !1690)
!1692 = !DILocation(line: 436, column: 8, scope: !1672)
!1693 = !DILocation(line: 437, column: 8, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1690, file: !63, line: 436, column: 23)
!1695 = !DILocation(line: 437, column: 16, scope: !1694)
!1696 = !DILocation(line: 437, column: 22, scope: !1694)
!1697 = !DILocation(line: 437, column: 29, scope: !1694)
!1698 = !DILocation(line: 437, column: 37, scope: !1694)
!1699 = !DILocation(line: 437, column: 44, scope: !1694)
!1700 = !DILocation(line: 437, column: 51, scope: !1694)
!1701 = !DILocation(line: 437, column: 58, scope: !1694)
!1702 = !DILocation(line: 437, column: 63, scope: !1694)
!1703 = !DILocation(line: 438, column: 21, scope: !1694)
!1704 = !DILocation(line: 438, column: 28, scope: !1694)
!1705 = !DILocation(line: 438, column: 37, scope: !1694)
!1706 = !DILocation(line: 438, column: 19, scope: !1694)
!1707 = !DILocation(line: 439, column: 4, scope: !1694)
!1708 = !DILocation(line: 439, column: 15, scope: !1709)
!1709 = !DILexicalBlockFile(scope: !1710, file: !63, discriminator: 1)
!1710 = distinct !DILexicalBlock(scope: !1690, file: !63, line: 439, column: 15)
!1711 = !DILocation(line: 439, column: 27, scope: !1709)
!1712 = !DILocation(line: 439, column: 34, scope: !1709)
!1713 = !DILocation(line: 440, column: 7, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1710, file: !63, line: 439, column: 42)
!1715 = !DILocation(line: 440, column: 19, scope: !1714)
!1716 = !DILocation(line: 440, column: 27, scope: !1714)
!1717 = !DILocation(line: 440, column: 33, scope: !1714)
!1718 = !DILocation(line: 440, column: 40, scope: !1714)
!1719 = !DILocation(line: 440, column: 48, scope: !1714)
!1720 = !DILocation(line: 440, column: 55, scope: !1714)
!1721 = !DILocation(line: 440, column: 62, scope: !1714)
!1722 = !DILocation(line: 440, column: 69, scope: !1714)
!1723 = !DILocation(line: 441, column: 33, scope: !1714)
!1724 = !DILocation(line: 441, column: 45, scope: !1714)
!1725 = !DILocation(line: 442, column: 20, scope: !1714)
!1726 = !DILocation(line: 442, column: 32, scope: !1714)
!1727 = !DILocation(line: 442, column: 18, scope: !1714)
!1728 = !DILocation(line: 443, column: 4, scope: !1714)
!1729 = !DILocation(line: 448, column: 9, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1672, file: !63, line: 448, column: 8)
!1731 = !DILocation(line: 448, column: 20, scope: !1730)
!1732 = !DILocation(line: 448, column: 25, scope: !1733)
!1733 = !DILexicalBlockFile(scope: !1730, file: !63, discriminator: 1)
!1734 = !DILocation(line: 448, column: 32, scope: !1733)
!1735 = !DILocation(line: 448, column: 39, scope: !1733)
!1736 = !DILocation(line: 448, column: 59, scope: !1733)
!1737 = !DILocation(line: 448, column: 62, scope: !1738)
!1738 = !DILexicalBlockFile(scope: !1730, file: !63, discriminator: 2)
!1739 = !DILocation(line: 448, column: 8, scope: !1738)
!1740 = !DILocation(line: 449, column: 7, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1730, file: !63, line: 448, column: 76)
!1742 = !DILocation(line: 449, column: 21, scope: !1741)
!1743 = !DILocation(line: 449, column: 29, scope: !1741)
!1744 = !DILocation(line: 449, column: 35, scope: !1741)
!1745 = !DILocation(line: 449, column: 42, scope: !1741)
!1746 = !DILocation(line: 449, column: 50, scope: !1741)
!1747 = !DILocation(line: 449, column: 57, scope: !1741)
!1748 = !DILocation(line: 449, column: 64, scope: !1741)
!1749 = !DILocation(line: 449, column: 71, scope: !1741)
!1750 = !DILocation(line: 450, column: 35, scope: !1741)
!1751 = !DILocation(line: 450, column: 49, scope: !1741)
!1752 = !DILocation(line: 451, column: 4, scope: !1741)
!1753 = !DILocation(line: 453, column: 24, scope: !1672)
!1754 = !DILocation(line: 453, column: 4, scope: !1672)
!1755 = !DILocation(line: 454, column: 1, scope: !1672)
!1756 = distinct !DISubprogram(name: "VMTools_SetGuestSDKMode", scope: !63, file: !63, line: 1416, type: !1627, isLocal: false, isDefinition: true, scopeLine: 1417, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!1757 = !DILocation(line: 1418, column: 18, scope: !1756)
!1758 = !DILocation(line: 1419, column: 1, scope: !1756)
!1759 = distinct !DISubprogram(name: "Debug", scope: !63, file: !63, line: 1429, type: !1760, isLocal: false, isDefinition: true, scopeLine: 1430, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{null, !52, null}
!1762 = !DILocalVariable(name: "fmt", arg: 1, scope: !1759, file: !63, line: 1429, type: !52)
!1763 = !DILocation(line: 1429, column: 19, scope: !1759)
!1764 = !DILocalVariable(name: "args", scope: !1759, file: !63, line: 1431, type: !200)
!1765 = !DILocation(line: 1431, column: 12, scope: !1759)
!1766 = !DILocation(line: 1432, column: 3, scope: !1759)
!1767 = !DILocation(line: 1433, column: 8, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1759, file: !63, line: 1433, column: 8)
!1769 = !DILocation(line: 1433, column: 8, scope: !1759)
!1770 = !DILocation(line: 1434, column: 22, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1768, file: !63, line: 1433, column: 23)
!1772 = !DILocation(line: 1434, column: 27, scope: !1771)
!1773 = !DILocation(line: 1434, column: 7, scope: !1771)
!1774 = !DILocation(line: 1435, column: 4, scope: !1771)
!1775 = !DILocation(line: 1441, column: 7, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1768, file: !63, line: 1435, column: 11)
!1777 = distinct !{!1777, !1775}
!1778 = !DILocalVariable(name: "err", scope: !1779, file: !63, line: 1441, type: !1780)
!1779 = distinct !DILexicalBlock(scope: !1776, file: !63, line: 1441, column: 10)
!1780 = !DIDerivedType(tag: DW_TAG_typedef, name: "Err_Number", file: !1781, line: 42, baseType: !58)
!1781 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/err.h", directory: "/home/lichi/Desktop/open-vm-tools/line1157")
!1782 = !DILocation(line: 1441, column: 23, scope: !1779)
!1783 = !DILocation(line: 1441, column: 8, scope: !1784)
!1784 = !DILexicalBlockFile(scope: !1779, file: !63, discriminator: 1)
!1785 = !DILocation(line: 1441, column: 7, scope: !1784)
!1786 = !DILocation(line: 1441, column: 23, scope: !1784)
!1787 = !DILocation(line: 1441, column: 45, scope: !1784)
!1788 = !DILocation(line: 1441, column: 50, scope: !1784)
!1789 = !DILocation(line: 1441, column: 8, scope: !1790)
!1790 = !DILexicalBlockFile(scope: !1784, file: !63, discriminator: 2)
!1791 = !DILocation(line: 1441, column: 9, scope: !1784)
!1792 = !DILocation(line: 1441, column: 8, scope: !1793)
!1793 = !DILexicalBlockFile(scope: !1784, file: !63, discriminator: 3)
!1794 = !DILocation(line: 1441, column: 6, scope: !1784)
!1795 = !DILocation(line: 1441, column: 16, scope: !1784)
!1796 = !DILocation(line: 1443, column: 3, scope: !1759)
!1797 = !DILocation(line: 1444, column: 1, scope: !1759)
!1798 = distinct !DISubprogram(name: "VMToolsLogWrapper", scope: !63, file: !63, line: 1283, type: !1799, isLocal: true, isDefinition: true, scopeLine: 1286, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!1799 = !DISubroutineType(types: !1800)
!1800 = !{null, !83, !52, !1801}
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64, align: 64)
!1802 = !DILocalVariable(name: "level", arg: 1, scope: !1798, file: !63, line: 1283, type: !83)
!1803 = !DILocation(line: 1283, column: 34, scope: !1798)
!1804 = !DILocalVariable(name: "fmt", arg: 2, scope: !1798, file: !63, line: 1284, type: !52)
!1805 = !DILocation(line: 1284, column: 31, scope: !1798)
!1806 = !DILocalVariable(name: "args", arg: 3, scope: !1798, file: !63, line: 1285, type: !1801)
!1807 = !DILocation(line: 1285, column: 27, scope: !1798)
!1808 = !DILocation(line: 1287, column: 9, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1798, file: !63, line: 1287, column: 8)
!1810 = !DILocation(line: 1287, column: 25, scope: !1809)
!1811 = !DILocation(line: 1287, column: 31, scope: !1812)
!1812 = !DILexicalBlockFile(scope: !1809, file: !63, discriminator: 1)
!1813 = !DILocation(line: 1287, column: 38, scope: !1812)
!1814 = !DILocation(line: 1287, column: 8, scope: !1812)
!1815 = !DILocation(line: 1293, column: 7, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1809, file: !63, line: 1287, column: 59)
!1817 = !DILocation(line: 1296, column: 4, scope: !1798)
!1818 = !DILocation(line: 1297, column: 8, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1798, file: !63, line: 1297, column: 8)
!1820 = !DILocation(line: 1297, column: 8, scope: !1798)
!1821 = !DILocation(line: 1299, column: 7, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1819, file: !63, line: 1297, column: 25)
!1823 = !DILocation(line: 1300, column: 7, scope: !1822)
!1824 = !DILocation(line: 1302, column: 4, scope: !1798)
!1825 = !DILocation(line: 1304, column: 8, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1798, file: !63, line: 1304, column: 8)
!1827 = !DILocation(line: 1304, column: 20, scope: !1826)
!1828 = !DILocation(line: 1304, column: 8, scope: !1798)
!1829 = !DILocalVariable(name: "msg", scope: !1830, file: !63, line: 1305, type: !1831)
!1830 = distinct !DILexicalBlock(scope: !1826, file: !63, line: 1304, column: 26)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!1832 = !DILocation(line: 1305, column: 13, scope: !1830)
!1833 = !DILocation(line: 1305, column: 38, scope: !1830)
!1834 = !DILocation(line: 1305, column: 43, scope: !1830)
!1835 = !DILocation(line: 1305, column: 19, scope: !1830)
!1836 = !DILocation(line: 1306, column: 11, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1830, file: !63, line: 1306, column: 11)
!1838 = !DILocation(line: 1306, column: 15, scope: !1837)
!1839 = !DILocation(line: 1306, column: 11, scope: !1830)
!1840 = !DILocation(line: 1307, column: 16, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1837, file: !63, line: 1306, column: 23)
!1842 = !DILocation(line: 1307, column: 28, scope: !1841)
!1843 = !DILocation(line: 1307, column: 41, scope: !1841)
!1844 = !DILocation(line: 1307, column: 10, scope: !1841)
!1845 = !DILocation(line: 1308, column: 15, scope: !1841)
!1846 = !DILocation(line: 1308, column: 10, scope: !1841)
!1847 = !DILocation(line: 1309, column: 7, scope: !1841)
!1848 = !DILocation(line: 1310, column: 4, scope: !1830)
!1849 = !DILocalVariable(name: "msg", scope: !1850, file: !63, line: 1312, type: !1851)
!1850 = distinct !DILexicalBlock(scope: !1826, file: !63, line: 1310, column: 11)
!1851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 2048, align: 8, elements: !1852)
!1852 = !{!1853}
!1853 = !DISubrange(count: 256)
!1854 = !DILocation(line: 1312, column: 13, scope: !1850)
!1855 = !DILocation(line: 1313, column: 21, scope: !1850)
!1856 = !DILocation(line: 1313, column: 38, scope: !1850)
!1857 = !DILocation(line: 1313, column: 43, scope: !1850)
!1858 = !DILocation(line: 1313, column: 7, scope: !1850)
!1859 = !DILocation(line: 1314, column: 18, scope: !1850)
!1860 = !DILocation(line: 1314, column: 30, scope: !1850)
!1861 = !DILocation(line: 1314, column: 37, scope: !1850)
!1862 = !DILocation(line: 1314, column: 42, scope: !1850)
!1863 = !DILocation(line: 1314, column: 7, scope: !1850)
!1864 = !DILocation(line: 1316, column: 1, scope: !1798)
!1865 = distinct !DISubprogram(name: "Log", scope: !63, file: !63, line: 1454, type: !1760, isLocal: false, isDefinition: true, scopeLine: 1455, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!1866 = !DILocalVariable(name: "fmt", arg: 1, scope: !1865, file: !63, line: 1454, type: !52)
!1867 = !DILocation(line: 1454, column: 17, scope: !1865)
!1868 = !DILocalVariable(name: "args", scope: !1865, file: !63, line: 1456, type: !200)
!1869 = !DILocation(line: 1456, column: 12, scope: !1865)
!1870 = !DILocation(line: 1457, column: 3, scope: !1865)
!1871 = !DILocation(line: 1458, column: 8, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1865, file: !63, line: 1458, column: 8)
!1873 = !DILocation(line: 1458, column: 8, scope: !1865)
!1874 = !DILocation(line: 1459, column: 20, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1872, file: !63, line: 1458, column: 23)
!1876 = !DILocation(line: 1459, column: 25, scope: !1875)
!1877 = !DILocation(line: 1459, column: 7, scope: !1875)
!1878 = !DILocation(line: 1460, column: 4, scope: !1875)
!1879 = !DILocation(line: 1466, column: 7, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1872, file: !63, line: 1460, column: 11)
!1881 = distinct !{!1881, !1879}
!1882 = !DILocalVariable(name: "err", scope: !1883, file: !63, line: 1466, type: !1780)
!1883 = distinct !DILexicalBlock(scope: !1880, file: !63, line: 1466, column: 10)
!1884 = !DILocation(line: 1466, column: 23, scope: !1883)
!1885 = !DILocation(line: 1466, column: 8, scope: !1886)
!1886 = !DILexicalBlockFile(scope: !1883, file: !63, discriminator: 1)
!1887 = !DILocation(line: 1466, column: 7, scope: !1886)
!1888 = !DILocation(line: 1466, column: 23, scope: !1886)
!1889 = !DILocation(line: 1466, column: 44, scope: !1886)
!1890 = !DILocation(line: 1466, column: 49, scope: !1886)
!1891 = !DILocation(line: 1466, column: 8, scope: !1892)
!1892 = !DILexicalBlockFile(scope: !1886, file: !63, discriminator: 2)
!1893 = !DILocation(line: 1466, column: 9, scope: !1886)
!1894 = !DILocation(line: 1466, column: 8, scope: !1895)
!1895 = !DILexicalBlockFile(scope: !1886, file: !63, discriminator: 3)
!1896 = !DILocation(line: 1466, column: 6, scope: !1886)
!1897 = !DILocation(line: 1466, column: 16, scope: !1886)
!1898 = !DILocation(line: 1468, column: 3, scope: !1865)
!1899 = !DILocation(line: 1469, column: 1, scope: !1865)
!1900 = distinct !DISubprogram(name: "LogV", scope: !63, file: !63, line: 1484, type: !1901, isLocal: false, isDefinition: true, scopeLine: 1487, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!1901 = !DISubroutineType(types: !1902)
!1902 = !{null, !1903, !52, !1801}
!1903 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32", file: !1904, line: 173, baseType: !1905)
!1904 = !DIFile(filename: "/home/ubuntu_1604/lichi/package_include_openssl_lib/open-vm-tools/open-vm-tools/lib/include/vm_basic_types.h", directory: "/home/lichi/Desktop/open-vm-tools/line1157")
!1905 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !1906, line: 51, baseType: !60)
!1906 = !DIFile(filename: "/usr/include/stdint.h", directory: "/home/lichi/Desktop/open-vm-tools/line1157")
!1907 = !DILocalVariable(name: "routing", arg: 1, scope: !1900, file: !63, line: 1484, type: !1903)
!1908 = !DILocation(line: 1484, column: 13, scope: !1900)
!1909 = !DILocalVariable(name: "fmt", arg: 2, scope: !1900, file: !63, line: 1485, type: !52)
!1910 = !DILocation(line: 1485, column: 18, scope: !1900)
!1911 = !DILocalVariable(name: "args", arg: 3, scope: !1900, file: !63, line: 1486, type: !1801)
!1912 = !DILocation(line: 1486, column: 14, scope: !1900)
!1913 = !DILocalVariable(name: "glevel", scope: !1900, file: !63, line: 1488, type: !58)
!1914 = !DILocation(line: 1488, column: 8, scope: !1900)
!1915 = !DILocation(line: 1490, column: 12, scope: !1900)
!1916 = !DILocation(line: 1490, column: 4, scope: !1900)
!1917 = !DILocation(line: 1492, column: 14, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1900, file: !63, line: 1490, column: 21)
!1919 = !DILocation(line: 1493, column: 7, scope: !1918)
!1920 = !DILocation(line: 1496, column: 14, scope: !1918)
!1921 = !DILocation(line: 1497, column: 7, scope: !1918)
!1922 = !DILocation(line: 1500, column: 14, scope: !1918)
!1923 = !DILocation(line: 1501, column: 7, scope: !1918)
!1924 = !DILocation(line: 1504, column: 14, scope: !1918)
!1925 = !DILocation(line: 1505, column: 7, scope: !1918)
!1926 = !DILocation(line: 1508, column: 14, scope: !1918)
!1927 = !DILocation(line: 1509, column: 7, scope: !1918)
!1928 = !DILocation(line: 1512, column: 14, scope: !1918)
!1929 = !DILocation(line: 1513, column: 4, scope: !1918)
!1930 = !DILocation(line: 1520, column: 4, scope: !1900)
!1931 = distinct !{!1931, !1930}
!1932 = !DILocalVariable(name: "err", scope: !1933, file: !63, line: 1520, type: !1780)
!1933 = distinct !DILexicalBlock(scope: !1900, file: !63, line: 1520, column: 7)
!1934 = !DILocation(line: 1520, column: 20, scope: !1933)
!1935 = !DILocation(line: 1520, column: 5, scope: !1936)
!1936 = !DILexicalBlockFile(scope: !1933, file: !63, discriminator: 1)
!1937 = !DILocation(line: 1520, column: 4, scope: !1936)
!1938 = !DILocation(line: 1520, column: 20, scope: !1936)
!1939 = !DILocation(line: 1520, column: 23, scope: !1936)
!1940 = !DILocation(line: 1520, column: 31, scope: !1936)
!1941 = !DILocation(line: 1520, column: 36, scope: !1936)
!1942 = !DILocation(line: 1520, column: 5, scope: !1943)
!1943 = !DILexicalBlockFile(scope: !1936, file: !63, discriminator: 2)
!1944 = !DILocation(line: 1520, column: 6, scope: !1936)
!1945 = !DILocation(line: 1520, column: 5, scope: !1946)
!1946 = !DILexicalBlockFile(scope: !1936, file: !63, discriminator: 3)
!1947 = !DILocation(line: 1520, column: 3, scope: !1936)
!1948 = !DILocation(line: 1520, column: 13, scope: !1936)
!1949 = !DILocation(line: 1521, column: 1, scope: !1900)
!1950 = distinct !DISubprogram(name: "Panic", scope: !63, file: !63, line: 1533, type: !1760, isLocal: false, isDefinition: true, scopeLine: 1534, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!1951 = !DILocalVariable(name: "fmt", arg: 1, scope: !1950, file: !63, line: 1533, type: !52)
!1952 = !DILocation(line: 1533, column: 19, scope: !1950)
!1953 = !DILocalVariable(name: "args", scope: !1950, file: !63, line: 1535, type: !200)
!1954 = !DILocation(line: 1535, column: 12, scope: !1950)
!1955 = !DILocation(line: 1537, column: 3, scope: !1950)
!1956 = !DILocation(line: 1539, column: 8, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1950, file: !63, line: 1539, column: 8)
!1958 = !DILocation(line: 1539, column: 8, scope: !1950)
!1959 = !DILocation(line: 1540, column: 22, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1957, file: !63, line: 1539, column: 23)
!1961 = !DILocation(line: 1540, column: 27, scope: !1960)
!1962 = !DILocation(line: 1540, column: 7, scope: !1960)
!1963 = !DILocation(line: 1541, column: 4, scope: !1960)
!1964 = !DILocation(line: 1542, column: 11, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1966, file: !63, line: 1542, column: 11)
!1966 = distinct !DILexicalBlock(scope: !1957, file: !63, line: 1541, column: 11)
!1967 = !DILocation(line: 1542, column: 23, scope: !1965)
!1968 = !DILocation(line: 1542, column: 11, scope: !1966)
!1969 = !DILocalVariable(name: "msg", scope: !1970, file: !63, line: 1543, type: !1831)
!1970 = distinct !DILexicalBlock(scope: !1965, file: !63, line: 1542, column: 29)
!1971 = !DILocation(line: 1543, column: 16, scope: !1970)
!1972 = !DILocation(line: 1543, column: 41, scope: !1970)
!1973 = !DILocation(line: 1543, column: 46, scope: !1970)
!1974 = !DILocation(line: 1543, column: 22, scope: !1970)
!1975 = !DILocation(line: 1544, column: 14, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1970, file: !63, line: 1544, column: 14)
!1977 = !DILocation(line: 1544, column: 18, scope: !1976)
!1978 = !DILocation(line: 1544, column: 14, scope: !1970)
!1979 = !DILocation(line: 1545, column: 19, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1976, file: !63, line: 1544, column: 26)
!1981 = !DILocation(line: 1545, column: 56, scope: !1980)
!1982 = !DILocation(line: 1545, column: 13, scope: !1980)
!1983 = !DILocation(line: 1546, column: 18, scope: !1980)
!1984 = !DILocation(line: 1546, column: 13, scope: !1980)
!1985 = !DILocation(line: 1547, column: 10, scope: !1980)
!1986 = !DILocation(line: 1552, column: 10, scope: !1970)
!1987 = !DILocation(line: 1553, column: 18, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1965, file: !63, line: 1553, column: 18)
!1989 = !DILocation(line: 1553, column: 30, scope: !1988)
!1990 = !DILocation(line: 1553, column: 18, scope: !1965)
!1991 = !DILocalVariable(name: "msg", scope: !1992, file: !63, line: 1558, type: !1993)
!1992 = distinct !DILexicalBlock(scope: !1988, file: !63, line: 1553, column: 36)
!1993 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 8192, align: 8, elements: !1994)
!1994 = !{!1995}
!1995 = !DISubrange(count: 1024)
!1996 = !DILocation(line: 1558, column: 16, scope: !1992)
!1997 = !DILocation(line: 1559, column: 24, scope: !1992)
!1998 = !DILocation(line: 1559, column: 41, scope: !1992)
!1999 = !DILocation(line: 1559, column: 46, scope: !1992)
!2000 = !DILocation(line: 1559, column: 10, scope: !1992)
!2001 = !DILocation(line: 1560, column: 17, scope: !1992)
!2002 = !DILocation(line: 1560, column: 50, scope: !1992)
!2003 = !DILocation(line: 1560, column: 10, scope: !1992)
!2004 = !DILocation(line: 1561, column: 10, scope: !1992)
!2005 = !DILocation(line: 1563, column: 17, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !1988, file: !63, line: 1562, column: 14)
!2007 = !DILocation(line: 1563, column: 10, scope: !2006)
!2008 = !DILocation(line: 1564, column: 10, scope: !2006)
!2009 = !DILocation(line: 1567, column: 3, scope: !1950)
!2010 = !DILocation(line: 1568, column: 4, scope: !1950)
!2011 = !DILocation(line: 1568, column: 4, scope: !2012)
!2012 = !DILexicalBlockFile(scope: !1950, file: !63, discriminator: 1)
!2013 = distinct !{!2013, !2010}
!2014 = !DILocation(line: 1569, column: 1, scope: !1950)
!2015 = distinct !DISubprogram(name: "VMToolsLogPanic", scope: !63, file: !63, line: 170, type: !1627, isLocal: true, isDefinition: true, scopeLine: 171, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!2016 = !DILocation(line: 172, column: 15, scope: !2015)
!2017 = !DILocation(line: 180, column: 8, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2015, file: !63, line: 180, column: 8)
!2019 = !DILocation(line: 180, column: 8, scope: !2015)
!2020 = !DILocalVariable(name: "cwd", scope: !2021, file: !63, line: 187, type: !2022)
!2021 = distinct !DILexicalBlock(scope: !2018, file: !63, line: 180, column: 25)
!2022 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 32768, align: 8, elements: !2023)
!2023 = !{!2024}
!2024 = !DISubrange(count: 4096)
!2025 = !DILocation(line: 187, column: 12, scope: !2021)
!2026 = !DILocation(line: 188, column: 18, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2021, file: !63, line: 188, column: 11)
!2028 = !DILocation(line: 188, column: 11, scope: !2027)
!2029 = !DILocation(line: 188, column: 35, scope: !2027)
!2030 = !DILocation(line: 188, column: 11, scope: !2021)
!2031 = !DILocation(line: 189, column: 21, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2033, file: !63, line: 189, column: 14)
!2033 = distinct !DILexicalBlock(scope: !2027, file: !63, line: 188, column: 43)
!2034 = !DILocation(line: 189, column: 14, scope: !2032)
!2035 = !DILocation(line: 189, column: 31, scope: !2032)
!2036 = !DILocation(line: 189, column: 14, scope: !2033)
!2037 = !DILocalVariable(name: "home", scope: !2038, file: !63, line: 194, type: !52)
!2038 = distinct !DILexicalBlock(scope: !2032, file: !63, line: 189, column: 38)
!2039 = !DILocation(line: 194, column: 25, scope: !2038)
!2040 = !DILocation(line: 194, column: 32, scope: !2038)
!2041 = !DILocation(line: 195, column: 17, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2038, file: !63, line: 195, column: 17)
!2043 = !DILocation(line: 195, column: 22, scope: !2042)
!2044 = !DILocation(line: 195, column: 17, scope: !2038)
!2045 = !DILocation(line: 196, column: 26, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2047, file: !63, line: 196, column: 20)
!2047 = distinct !DILexicalBlock(scope: !2042, file: !63, line: 195, column: 30)
!2048 = !DILocation(line: 196, column: 20, scope: !2046)
!2049 = !DILocation(line: 196, column: 20, scope: !2047)
!2050 = !DILocation(line: 198, column: 16, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2046, file: !63, line: 196, column: 33)
!2052 = !DILocation(line: 199, column: 13, scope: !2047)
!2053 = !DILocation(line: 200, column: 10, scope: !2038)
!2054 = !DILocation(line: 201, column: 7, scope: !2033)
!2055 = !DILocation(line: 202, column: 7, scope: !2021)
!2056 = !DILocation(line: 206, column: 4, scope: !2015)
!2057 = !DILocation(line: 207, column: 1, scope: !2015)
!2058 = distinct !DISubprogram(name: "Warning", scope: !63, file: !63, line: 1579, type: !1760, isLocal: false, isDefinition: true, scopeLine: 1580, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!2059 = !DILocalVariable(name: "fmt", arg: 1, scope: !2058, file: !63, line: 1579, type: !52)
!2060 = !DILocation(line: 1579, column: 21, scope: !2058)
!2061 = !DILocalVariable(name: "args", scope: !2058, file: !63, line: 1581, type: !200)
!2062 = !DILocation(line: 1581, column: 12, scope: !2058)
!2063 = !DILocation(line: 1582, column: 3, scope: !2058)
!2064 = !DILocation(line: 1583, column: 8, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2058, file: !63, line: 1583, column: 8)
!2066 = !DILocation(line: 1583, column: 8, scope: !2058)
!2067 = !DILocation(line: 1584, column: 24, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2065, file: !63, line: 1583, column: 23)
!2069 = !DILocation(line: 1584, column: 29, scope: !2068)
!2070 = !DILocation(line: 1584, column: 7, scope: !2068)
!2071 = !DILocation(line: 1585, column: 4, scope: !2068)
!2072 = !DILocation(line: 1591, column: 7, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2065, file: !63, line: 1585, column: 11)
!2074 = distinct !{!2074, !2072}
!2075 = !DILocalVariable(name: "err", scope: !2076, file: !63, line: 1591, type: !1780)
!2076 = distinct !DILexicalBlock(scope: !2073, file: !63, line: 1591, column: 10)
!2077 = !DILocation(line: 1591, column: 23, scope: !2076)
!2078 = !DILocation(line: 1591, column: 8, scope: !2079)
!2079 = !DILexicalBlockFile(scope: !2076, file: !63, discriminator: 1)
!2080 = !DILocation(line: 1591, column: 7, scope: !2079)
!2081 = !DILocation(line: 1591, column: 23, scope: !2079)
!2082 = !DILocation(line: 1591, column: 47, scope: !2079)
!2083 = !DILocation(line: 1591, column: 52, scope: !2079)
!2084 = !DILocation(line: 1591, column: 8, scope: !2085)
!2085 = !DILexicalBlockFile(scope: !2079, file: !63, discriminator: 2)
!2086 = !DILocation(line: 1591, column: 9, scope: !2079)
!2087 = !DILocation(line: 1591, column: 8, scope: !2088)
!2088 = !DILexicalBlockFile(scope: !2079, file: !63, discriminator: 3)
!2089 = !DILocation(line: 1591, column: 6, scope: !2079)
!2090 = !DILocation(line: 1591, column: 16, scope: !2079)
!2091 = !DILocation(line: 1593, column: 3, scope: !2058)
!2092 = !DILocation(line: 1594, column: 1, scope: !2058)
!2093 = distinct !DISubprogram(name: "VMTools_ChangeLogFilePath", scope: !63, file: !63, line: 1628, type: !2094, isLocal: false, isDefinition: true, scopeLine: 1632, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{!73, !81, !81, !81, !270}
!2096 = !DILocalVariable(name: "delimiter", arg: 1, scope: !2093, file: !63, line: 1628, type: !81)
!2097 = !DILocation(line: 1628, column: 40, scope: !2093)
!2098 = !DILocalVariable(name: "appendString", arg: 2, scope: !2093, file: !63, line: 1629, type: !81)
!2099 = !DILocation(line: 1629, column: 40, scope: !2093)
!2100 = !DILocalVariable(name: "domain", arg: 3, scope: !2093, file: !63, line: 1630, type: !81)
!2101 = !DILocation(line: 1630, column: 40, scope: !2093)
!2102 = !DILocalVariable(name: "conf", arg: 4, scope: !2093, file: !63, line: 1631, type: !270)
!2103 = !DILocation(line: 1631, column: 37, scope: !2093)
!2104 = !DILocalVariable(name: "key", scope: !2093, file: !63, line: 1633, type: !341)
!2105 = !DILocation(line: 1633, column: 10, scope: !2093)
!2106 = !DILocalVariable(name: "path", scope: !2093, file: !63, line: 1634, type: !48)
!2107 = !DILocation(line: 1634, column: 11, scope: !2093)
!2108 = !DILocalVariable(name: "userLogTemp", scope: !2093, file: !63, line: 1635, type: !48)
!2109 = !DILocation(line: 1635, column: 11, scope: !2093)
!2110 = !DILocalVariable(name: "tokens", scope: !2093, file: !63, line: 1636, type: !191)
!2111 = !DILocation(line: 1636, column: 12, scope: !2093)
!2112 = !DILocalVariable(name: "retVal", scope: !2093, file: !63, line: 1637, type: !73)
!2113 = !DILocation(line: 1637, column: 13, scope: !2093)
!2114 = !DILocation(line: 1639, column: 8, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2093, file: !63, line: 1639, column: 8)
!2116 = !DILocation(line: 1639, column: 15, scope: !2115)
!2117 = !DILocation(line: 1639, column: 22, scope: !2115)
!2118 = !DILocation(line: 1639, column: 25, scope: !2119)
!2119 = !DILexicalBlockFile(scope: !2115, file: !63, discriminator: 1)
!2120 = !DILocation(line: 1639, column: 30, scope: !2119)
!2121 = !DILocation(line: 1639, column: 8, scope: !2119)
!2122 = !DILocation(line: 1640, column: 7, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2115, file: !63, line: 1639, column: 38)
!2124 = !DILocation(line: 1643, column: 15, scope: !2093)
!2125 = !DILocation(line: 1643, column: 43, scope: !2093)
!2126 = !DILocation(line: 1643, column: 4, scope: !2093)
!2127 = !DILocation(line: 1644, column: 33, scope: !2093)
!2128 = !DILocation(line: 1644, column: 38, scope: !2093)
!2129 = !DILocation(line: 1644, column: 46, scope: !2093)
!2130 = !DILocation(line: 1644, column: 11, scope: !2093)
!2131 = !DILocation(line: 1644, column: 9, scope: !2093)
!2132 = !DILocation(line: 1646, column: 8, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2093, file: !63, line: 1646, column: 8)
!2134 = !DILocation(line: 1646, column: 13, scope: !2133)
!2135 = !DILocation(line: 1646, column: 20, scope: !2133)
!2136 = !DILocation(line: 1646, column: 23, scope: !2137)
!2137 = !DILexicalBlockFile(scope: !2133, file: !63, discriminator: 1)
!2138 = !DILocation(line: 1646, column: 36, scope: !2137)
!2139 = !DILocation(line: 1646, column: 44, scope: !2137)
!2140 = !DILocation(line: 1646, column: 47, scope: !2141)
!2141 = !DILexicalBlockFile(scope: !2133, file: !63, discriminator: 2)
!2142 = !DILocation(line: 1646, column: 57, scope: !2141)
!2143 = !DILocation(line: 1646, column: 8, scope: !2141)
!2144 = !DILocation(line: 1647, column: 7, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2133, file: !63, line: 1646, column: 65)
!2146 = !DILocation(line: 1650, column: 24, scope: !2093)
!2147 = !DILocation(line: 1650, column: 30, scope: !2093)
!2148 = !DILocation(line: 1650, column: 13, scope: !2093)
!2149 = !DILocation(line: 1650, column: 11, scope: !2093)
!2150 = !DILocation(line: 1651, column: 8, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2093, file: !63, line: 1651, column: 8)
!2152 = !DILocation(line: 1651, column: 15, scope: !2151)
!2153 = !DILocation(line: 1651, column: 22, scope: !2151)
!2154 = !DILocation(line: 1651, column: 26, scope: !2155)
!2155 = !DILexicalBlockFile(scope: !2151, file: !63, discriminator: 1)
!2156 = !DILocation(line: 1651, column: 25, scope: !2155)
!2157 = !DILocation(line: 1651, column: 33, scope: !2155)
!2158 = !DILocation(line: 1651, column: 8, scope: !2155)
!2159 = !DILocation(line: 1652, column: 31, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2151, file: !63, line: 1651, column: 41)
!2161 = !DILocation(line: 1652, column: 46, scope: !2160)
!2162 = !DILocation(line: 1652, column: 45, scope: !2160)
!2163 = !DILocation(line: 1652, column: 21, scope: !2160)
!2164 = !DILocation(line: 1652, column: 19, scope: !2160)
!2165 = !DILocation(line: 1653, column: 33, scope: !2160)
!2166 = !DILocation(line: 1653, column: 21, scope: !2160)
!2167 = !DILocation(line: 1653, column: 19, scope: !2160)
!2168 = !DILocation(line: 1654, column: 13, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2160, file: !63, line: 1654, column: 11)
!2170 = !DILocation(line: 1654, column: 19, scope: !2169)
!2171 = !DILocation(line: 1654, column: 11, scope: !2169)
!2172 = !DILocation(line: 1654, column: 23, scope: !2169)
!2173 = !DILocation(line: 1654, column: 11, scope: !2160)
!2174 = !DILocalVariable(name: "userLog", scope: !2175, file: !63, line: 1655, type: !48)
!2175 = distinct !DILexicalBlock(scope: !2169, file: !63, line: 1654, column: 30)
!2176 = !DILocation(line: 1655, column: 17, scope: !2175)
!2177 = !DILocation(line: 1656, column: 30, scope: !2175)
!2178 = !DILocation(line: 1656, column: 41, scope: !2175)
!2179 = !DILocation(line: 1656, column: 56, scope: !2175)
!2180 = !DILocation(line: 1656, column: 62, scope: !2175)
!2181 = !DILocation(line: 1656, column: 54, scope: !2175)
!2182 = !DILocation(line: 1656, column: 20, scope: !2175)
!2183 = !DILocation(line: 1656, column: 18, scope: !2175)
!2184 = !DILocation(line: 1657, column: 32, scope: !2175)
!2185 = !DILocation(line: 1657, column: 49, scope: !2175)
!2186 = !DILocation(line: 1657, column: 54, scope: !2175)
!2187 = !DILocation(line: 1657, column: 10, scope: !2175)
!2188 = !DILocation(line: 1658, column: 17, scope: !2175)
!2189 = !DILocation(line: 1658, column: 10, scope: !2175)
!2190 = !DILocation(line: 1659, column: 7, scope: !2175)
!2191 = !DILocation(line: 1660, column: 32, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !2169, file: !63, line: 1659, column: 14)
!2193 = !DILocation(line: 1660, column: 49, scope: !2192)
!2194 = !DILocation(line: 1660, column: 54, scope: !2192)
!2195 = !DILocation(line: 1660, column: 10, scope: !2192)
!2196 = !DILocation(line: 1662, column: 14, scope: !2160)
!2197 = !DILocation(line: 1663, column: 14, scope: !2160)
!2198 = !DILocation(line: 1663, column: 7, scope: !2160)
!2199 = !DILocation(line: 1664, column: 4, scope: !2160)
!2200 = !DILocation(line: 1665, column: 15, scope: !2093)
!2201 = !DILocation(line: 1665, column: 4, scope: !2093)
!2202 = !DILocation(line: 1668, column: 8, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2093, file: !63, line: 1668, column: 8)
!2204 = !DILocation(line: 1668, column: 8, scope: !2093)
!2205 = !DILocation(line: 1669, column: 14, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2203, file: !63, line: 1668, column: 13)
!2207 = !DILocation(line: 1669, column: 7, scope: !2206)
!2208 = !DILocation(line: 1670, column: 4, scope: !2206)
!2209 = !DILocation(line: 1672, column: 11, scope: !2093)
!2210 = !DILocation(line: 1672, column: 4, scope: !2093)
!2211 = distinct !DISubprogram(name: "VMToolsGetLogFilePath", scope: !63, file: !63, line: 603, type: !2212, isLocal: true, isDefinition: true, scopeLine: 606, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{!48, !81, !81, !270}
!2214 = !DILocalVariable(name: "key", arg: 1, scope: !2211, file: !63, line: 603, type: !81)
!2215 = !DILocation(line: 603, column: 36, scope: !2211)
!2216 = !DILocalVariable(name: "domain", arg: 2, scope: !2211, file: !63, line: 604, type: !81)
!2217 = !DILocation(line: 604, column: 36, scope: !2211)
!2218 = !DILocalVariable(name: "cfg", arg: 3, scope: !2211, file: !63, line: 605, type: !270)
!2219 = !DILocation(line: 605, column: 33, scope: !2211)
!2220 = !DILocalVariable(name: "len", scope: !2211, file: !63, line: 607, type: !2221)
!2221 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsize", file: !379, line: 66, baseType: !57)
!2222 = !DILocation(line: 607, column: 10, scope: !2211)
!2223 = !DILocalVariable(name: "path", scope: !2211, file: !63, line: 608, type: !48)
!2224 = !DILocation(line: 608, column: 11, scope: !2211)
!2225 = !DILocalVariable(name: "origPath", scope: !2211, file: !63, line: 609, type: !48)
!2226 = !DILocation(line: 609, column: 11, scope: !2211)
!2227 = !DILocation(line: 611, column: 33, scope: !2211)
!2228 = !DILocation(line: 611, column: 49, scope: !2211)
!2229 = !DILocation(line: 611, column: 11, scope: !2211)
!2230 = !DILocation(line: 611, column: 9, scope: !2211)
!2231 = !DILocation(line: 612, column: 8, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2211, file: !63, line: 612, column: 8)
!2233 = !DILocation(line: 612, column: 13, scope: !2232)
!2234 = !DILocation(line: 612, column: 8, scope: !2211)
!2235 = !DILocation(line: 613, column: 40, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !2232, file: !63, line: 612, column: 21)
!2237 = !DILocation(line: 613, column: 14, scope: !2236)
!2238 = !DILocation(line: 613, column: 7, scope: !2236)
!2239 = !DILocation(line: 616, column: 17, scope: !2211)
!2240 = !DILocation(line: 616, column: 10, scope: !2211)
!2241 = !DILocation(line: 616, column: 8, scope: !2211)
!2242 = !DILocation(line: 617, column: 15, scope: !2211)
!2243 = !DILocation(line: 617, column: 13, scope: !2211)
!2244 = !DILocation(line: 622, column: 4, scope: !2211)
!2245 = !DILocation(line: 622, column: 12, scope: !2246)
!2246 = !DILexicalBlockFile(scope: !2211, file: !63, discriminator: 1)
!2247 = !DILocation(line: 622, column: 11, scope: !2246)
!2248 = !DILocation(line: 622, column: 17, scope: !2246)
!2249 = !DILocation(line: 622, column: 4, scope: !2246)
!2250 = !DILocation(line: 623, column: 11, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2211, file: !63, line: 622, column: 25)
!2252 = !DILocation(line: 624, column: 10, scope: !2251)
!2253 = !DILocation(line: 622, column: 4, scope: !2254)
!2254 = !DILexicalBlockFile(scope: !2211, file: !63, discriminator: 2)
!2255 = distinct !{!2255, !2244}
!2256 = !DILocation(line: 631, column: 8, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2211, file: !63, line: 631, column: 8)
!2258 = !DILocation(line: 631, column: 12, scope: !2257)
!2259 = !DILocation(line: 631, column: 8, scope: !2211)
!2260 = !DILocation(line: 632, column: 82, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2257, file: !63, line: 631, column: 18)
!2262 = !DILocation(line: 632, column: 7, scope: !2261)
!2263 = !DILocation(line: 633, column: 14, scope: !2261)
!2264 = !DILocation(line: 633, column: 7, scope: !2261)
!2265 = !DILocation(line: 634, column: 12, scope: !2261)
!2266 = !DILocation(line: 635, column: 4, scope: !2261)
!2267 = !DILocalVariable(name: "sanePath", scope: !2268, file: !63, line: 637, type: !48)
!2268 = distinct !DILexicalBlock(scope: !2257, file: !63, line: 635, column: 11)
!2269 = !DILocation(line: 637, column: 14, scope: !2268)
!2270 = !DILocation(line: 637, column: 34, scope: !2268)
!2271 = !DILocation(line: 637, column: 25, scope: !2268)
!2272 = !DILocation(line: 638, column: 14, scope: !2268)
!2273 = !DILocation(line: 638, column: 7, scope: !2268)
!2274 = !DILocation(line: 639, column: 14, scope: !2268)
!2275 = !DILocation(line: 639, column: 12, scope: !2268)
!2276 = !DILocation(line: 641, column: 11, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2268, file: !63, line: 641, column: 11)
!2278 = !DILocation(line: 641, column: 16, scope: !2277)
!2279 = !DILocation(line: 641, column: 11, scope: !2268)
!2280 = !DILocation(line: 642, column: 10, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2277, file: !63, line: 641, column: 24)
!2282 = !DILocation(line: 642, column: 19, scope: !2283)
!2283 = !DILexicalBlockFile(scope: !2281, file: !63, discriminator: 1)
!2284 = !DILocation(line: 642, column: 26, scope: !2283)
!2285 = !DILocation(line: 642, column: 24, scope: !2283)
!2286 = !DILocation(line: 642, column: 30, scope: !2283)
!2287 = !DILocation(line: 642, column: 17, scope: !2283)
!2288 = !DILocation(line: 642, column: 35, scope: !2283)
!2289 = !DILocation(line: 642, column: 10, scope: !2283)
!2290 = !DILocation(line: 643, column: 15, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2281, file: !63, line: 642, column: 43)
!2292 = !DILocation(line: 643, column: 22, scope: !2291)
!2293 = !DILocation(line: 643, column: 20, scope: !2291)
!2294 = !DILocation(line: 643, column: 26, scope: !2291)
!2295 = !DILocation(line: 643, column: 31, scope: !2291)
!2296 = !DILocation(line: 644, column: 16, scope: !2291)
!2297 = !DILocation(line: 642, column: 10, scope: !2298)
!2298 = !DILexicalBlockFile(scope: !2281, file: !63, discriminator: 2)
!2299 = distinct !{!2299, !2280}
!2300 = !DILocation(line: 647, column: 14, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2281, file: !63, line: 647, column: 14)
!2302 = !DILocation(line: 647, column: 18, scope: !2301)
!2303 = !DILocation(line: 647, column: 14, scope: !2281)
!2304 = !DILocation(line: 648, column: 88, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2301, file: !63, line: 647, column: 24)
!2306 = !DILocation(line: 648, column: 13, scope: !2305)
!2307 = !DILocation(line: 649, column: 20, scope: !2305)
!2308 = !DILocation(line: 649, column: 13, scope: !2305)
!2309 = !DILocation(line: 650, column: 18, scope: !2305)
!2310 = !DILocation(line: 651, column: 10, scope: !2305)
!2311 = !DILocation(line: 652, column: 7, scope: !2281)
!2312 = !DILocation(line: 655, column: 11, scope: !2211)
!2313 = !DILocation(line: 655, column: 4, scope: !2211)
!2314 = !DILocation(line: 656, column: 1, scope: !2211)
!2315 = distinct !DISubprogram(name: "VMToolsFreeLogEntry", scope: !63, file: !63, line: 410, type: !88, isLocal: true, isDefinition: true, scopeLine: 411, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!2316 = !DILocalVariable(name: "data", arg: 1, scope: !2315, file: !63, line: 410, type: !84)
!2317 = !DILocation(line: 410, column: 30, scope: !2315)
!2318 = !DILocalVariable(name: "entry", scope: !2315, file: !63, line: 412, type: !568)
!2319 = !DILocation(line: 412, column: 14, scope: !2315)
!2320 = !DILocation(line: 412, column: 22, scope: !2315)
!2321 = !DILocation(line: 414, column: 11, scope: !2315)
!2322 = !DILocation(line: 414, column: 18, scope: !2315)
!2323 = !DILocation(line: 414, column: 4, scope: !2315)
!2324 = !DILocation(line: 415, column: 11, scope: !2315)
!2325 = !DILocation(line: 415, column: 18, scope: !2315)
!2326 = !DILocation(line: 415, column: 4, scope: !2315)
!2327 = !DILocation(line: 416, column: 11, scope: !2315)
!2328 = !DILocation(line: 416, column: 4, scope: !2315)
!2329 = !DILocation(line: 417, column: 1, scope: !2315)
!2330 = distinct !DISubprogram(name: "VMToolsLogFormat", scope: !63, file: !63, line: 288, type: !2331, isLocal: true, isDefinition: true, scopeLine: 293, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!2331 = !DISubroutineType(types: !2332)
!2332 = !{!48, !81, !81, !83, !61, !73}
!2333 = !DILocalVariable(name: "message", arg: 1, scope: !2330, file: !63, line: 288, type: !81)
!2334 = !DILocation(line: 288, column: 31, scope: !2330)
!2335 = !DILocalVariable(name: "domain", arg: 2, scope: !2330, file: !63, line: 289, type: !81)
!2336 = !DILocation(line: 289, column: 31, scope: !2330)
!2337 = !DILocalVariable(name: "level", arg: 3, scope: !2330, file: !63, line: 290, type: !83)
!2338 = !DILocation(line: 290, column: 33, scope: !2330)
!2339 = !DILocalVariable(name: "data", arg: 4, scope: !2330, file: !63, line: 291, type: !61)
!2340 = !DILocation(line: 291, column: 30, scope: !2330)
!2341 = !DILocalVariable(name: "cached", arg: 5, scope: !2330, file: !63, line: 292, type: !73)
!2342 = !DILocation(line: 292, column: 27, scope: !2330)
!2343 = !DILocalVariable(name: "msg", scope: !2330, file: !63, line: 294, type: !1831)
!2344 = !DILocation(line: 294, column: 10, scope: !2330)
!2345 = !DILocalVariable(name: "slevel", scope: !2330, file: !63, line: 295, type: !52)
!2346 = !DILocation(line: 295, column: 16, scope: !2330)
!2347 = !DILocalVariable(name: "len", scope: !2330, file: !63, line: 296, type: !2348)
!2348 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !2349, line: 216, baseType: !57)
!2349 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5/include/stddef.h", directory: "/home/lichi/Desktop/open-vm-tools/line1157")
!2350 = !DILocation(line: 296, column: 11, scope: !2330)
!2351 = !DILocalVariable(name: "shared", scope: !2330, file: !63, line: 297, type: !73)
!2352 = !DILocation(line: 297, column: 13, scope: !2330)
!2353 = !DILocalVariable(name: "addsTimestamp", scope: !2330, file: !63, line: 298, type: !73)
!2354 = !DILocation(line: 298, column: 13, scope: !2330)
!2355 = !DILocalVariable(name: "tstamp", scope: !2330, file: !63, line: 299, type: !48)
!2356 = !DILocation(line: 299, column: 11, scope: !2330)
!2357 = !DILocation(line: 301, column: 8, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2330, file: !63, line: 301, column: 8)
!2359 = !DILocation(line: 301, column: 15, scope: !2358)
!2360 = !DILocation(line: 301, column: 8, scope: !2330)
!2361 = !DILocation(line: 302, column: 16, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2358, file: !63, line: 301, column: 23)
!2363 = !DILocation(line: 302, column: 14, scope: !2362)
!2364 = !DILocation(line: 303, column: 4, scope: !2362)
!2365 = !DILocation(line: 309, column: 8, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2330, file: !63, line: 309, column: 8)
!2367 = !DILocation(line: 309, column: 16, scope: !2366)
!2368 = !DILocation(line: 309, column: 8, scope: !2330)
!2369 = !DILocation(line: 310, column: 15, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2366, file: !63, line: 309, column: 24)
!2371 = !DILocation(line: 311, column: 4, scope: !2370)
!2372 = !DILocation(line: 313, column: 12, scope: !2330)
!2373 = !DILocation(line: 313, column: 18, scope: !2330)
!2374 = !DILocation(line: 313, column: 4, scope: !2330)
!2375 = !DILocation(line: 315, column: 14, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2330, file: !63, line: 313, column: 38)
!2377 = !DILocation(line: 316, column: 7, scope: !2376)
!2378 = !DILocation(line: 319, column: 14, scope: !2376)
!2379 = !DILocation(line: 320, column: 7, scope: !2376)
!2380 = !DILocation(line: 323, column: 14, scope: !2376)
!2381 = !DILocation(line: 324, column: 7, scope: !2376)
!2382 = !DILocation(line: 327, column: 14, scope: !2376)
!2383 = !DILocation(line: 328, column: 7, scope: !2376)
!2384 = !DILocation(line: 331, column: 14, scope: !2376)
!2385 = !DILocation(line: 332, column: 7, scope: !2376)
!2386 = !DILocation(line: 335, column: 14, scope: !2376)
!2387 = !DILocation(line: 336, column: 7, scope: !2376)
!2388 = !DILocation(line: 339, column: 14, scope: !2376)
!2389 = !DILocation(line: 340, column: 4, scope: !2376)
!2390 = !DILocation(line: 342, column: 8, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2330, file: !63, line: 342, column: 8)
!2392 = !DILocation(line: 342, column: 14, scope: !2391)
!2393 = !DILocation(line: 342, column: 21, scope: !2391)
!2394 = !DILocation(line: 342, column: 8, scope: !2330)
!2395 = !DILocation(line: 343, column: 16, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2391, file: !63, line: 342, column: 29)
!2397 = !DILocation(line: 343, column: 22, scope: !2396)
!2398 = !DILocation(line: 343, column: 30, scope: !2396)
!2399 = !DILocation(line: 343, column: 14, scope: !2396)
!2400 = !DILocation(line: 344, column: 23, scope: !2396)
!2401 = !DILocation(line: 344, column: 29, scope: !2396)
!2402 = !DILocation(line: 344, column: 37, scope: !2396)
!2403 = !DILocation(line: 344, column: 21, scope: !2396)
!2404 = !DILocation(line: 345, column: 4, scope: !2396)
!2405 = !DILocation(line: 347, column: 13, scope: !2330)
!2406 = !DILocation(line: 347, column: 11, scope: !2330)
!2407 = !DILocation(line: 349, column: 9, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2330, file: !63, line: 349, column: 8)
!2409 = !DILocation(line: 349, column: 8, scope: !2330)
!2410 = !DILocation(line: 350, column: 11, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2412, file: !63, line: 350, column: 11)
!2412 = distinct !DILexicalBlock(scope: !2408, file: !63, line: 349, column: 24)
!2413 = !DILocation(line: 350, column: 11, scope: !2412)
!2414 = !DILocation(line: 352, column: 33, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2411, file: !63, line: 350, column: 19)
!2416 = !DILocation(line: 352, column: 40, scope: !2415)
!2417 = !DILocation(line: 352, column: 32, scope: !2415)
!2418 = !DILocation(line: 352, column: 50, scope: !2419)
!2419 = !DILexicalBlockFile(scope: !2415, file: !63, discriminator: 1)
!2420 = !DILocation(line: 352, column: 32, scope: !2419)
!2421 = !DILocation(line: 352, column: 32, scope: !2422)
!2422 = !DILexicalBlockFile(scope: !2415, file: !63, discriminator: 2)
!2423 = !DILocation(line: 352, column: 32, scope: !2424)
!2424 = !DILexicalBlockFile(scope: !2415, file: !63, discriminator: 3)
!2425 = !DILocation(line: 353, column: 32, scope: !2415)
!2426 = !DILocation(line: 353, column: 40, scope: !2415)
!2427 = !DILocation(line: 353, column: 52, scope: !2415)
!2428 = !DILocation(line: 353, column: 60, scope: !2415)
!2429 = !DILocation(line: 351, column: 16, scope: !2415)
!2430 = !DILocation(line: 351, column: 14, scope: !2415)
!2431 = !DILocation(line: 354, column: 7, scope: !2415)
!2432 = !DILocation(line: 356, column: 33, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2411, file: !63, line: 354, column: 14)
!2434 = !DILocation(line: 356, column: 40, scope: !2433)
!2435 = !DILocation(line: 356, column: 32, scope: !2433)
!2436 = !DILocation(line: 356, column: 50, scope: !2437)
!2437 = !DILexicalBlockFile(scope: !2433, file: !63, discriminator: 1)
!2438 = !DILocation(line: 356, column: 32, scope: !2437)
!2439 = !DILocation(line: 356, column: 32, scope: !2440)
!2440 = !DILexicalBlockFile(scope: !2433, file: !63, discriminator: 2)
!2441 = !DILocation(line: 356, column: 32, scope: !2442)
!2442 = !DILexicalBlockFile(scope: !2433, file: !63, discriminator: 3)
!2443 = !DILocation(line: 357, column: 32, scope: !2433)
!2444 = !DILocation(line: 357, column: 40, scope: !2433)
!2445 = !DILocation(line: 357, column: 48, scope: !2433)
!2446 = !DILocation(line: 355, column: 16, scope: !2433)
!2447 = !DILocation(line: 355, column: 14, scope: !2433)
!2448 = !DILocation(line: 359, column: 4, scope: !2412)
!2449 = !DILocation(line: 360, column: 11, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2451, file: !63, line: 360, column: 11)
!2451 = distinct !DILexicalBlock(scope: !2408, file: !63, line: 359, column: 11)
!2452 = !DILocation(line: 360, column: 11, scope: !2451)
!2453 = !DILocation(line: 361, column: 14, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2455, file: !63, line: 361, column: 14)
!2455 = distinct !DILexicalBlock(scope: !2450, file: !63, line: 360, column: 19)
!2456 = !DILocation(line: 361, column: 14, scope: !2455)
!2457 = !DILocation(line: 363, column: 36, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2454, file: !63, line: 361, column: 22)
!2459 = !DILocation(line: 363, column: 43, scope: !2458)
!2460 = !DILocation(line: 363, column: 35, scope: !2458)
!2461 = !DILocation(line: 363, column: 53, scope: !2462)
!2462 = !DILexicalBlockFile(scope: !2458, file: !63, discriminator: 1)
!2463 = !DILocation(line: 363, column: 35, scope: !2462)
!2464 = !DILocation(line: 363, column: 35, scope: !2465)
!2465 = !DILexicalBlockFile(scope: !2458, file: !63, discriminator: 2)
!2466 = !DILocation(line: 363, column: 35, scope: !2467)
!2467 = !DILexicalBlockFile(scope: !2458, file: !63, discriminator: 3)
!2468 = !DILocation(line: 364, column: 35, scope: !2458)
!2469 = !DILocation(line: 364, column: 43, scope: !2458)
!2470 = !DILocation(line: 364, column: 55, scope: !2458)
!2471 = !DILocation(line: 364, column: 63, scope: !2458)
!2472 = !DILocation(line: 362, column: 19, scope: !2458)
!2473 = !DILocation(line: 362, column: 17, scope: !2458)
!2474 = !DILocation(line: 365, column: 10, scope: !2458)
!2475 = !DILocation(line: 367, column: 36, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2454, file: !63, line: 365, column: 17)
!2477 = !DILocation(line: 367, column: 43, scope: !2476)
!2478 = !DILocation(line: 367, column: 35, scope: !2476)
!2479 = !DILocation(line: 367, column: 53, scope: !2480)
!2480 = !DILexicalBlockFile(scope: !2476, file: !63, discriminator: 1)
!2481 = !DILocation(line: 367, column: 35, scope: !2480)
!2482 = !DILocation(line: 367, column: 35, scope: !2483)
!2483 = !DILexicalBlockFile(scope: !2476, file: !63, discriminator: 2)
!2484 = !DILocation(line: 367, column: 35, scope: !2485)
!2485 = !DILexicalBlockFile(scope: !2476, file: !63, discriminator: 3)
!2486 = !DILocation(line: 368, column: 35, scope: !2476)
!2487 = !DILocation(line: 368, column: 43, scope: !2476)
!2488 = !DILocation(line: 368, column: 51, scope: !2476)
!2489 = !DILocation(line: 366, column: 19, scope: !2476)
!2490 = !DILocation(line: 366, column: 17, scope: !2476)
!2491 = !DILocation(line: 370, column: 7, scope: !2455)
!2492 = !DILocation(line: 371, column: 14, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2494, file: !63, line: 371, column: 14)
!2494 = distinct !DILexicalBlock(scope: !2450, file: !63, line: 370, column: 14)
!2495 = !DILocation(line: 371, column: 14, scope: !2494)
!2496 = !DILocation(line: 373, column: 35, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2493, file: !63, line: 371, column: 22)
!2498 = !DILocation(line: 373, column: 43, scope: !2497)
!2499 = !DILocation(line: 373, column: 55, scope: !2497)
!2500 = !DILocation(line: 373, column: 63, scope: !2497)
!2501 = !DILocation(line: 372, column: 19, scope: !2497)
!2502 = !DILocation(line: 372, column: 17, scope: !2497)
!2503 = !DILocation(line: 374, column: 10, scope: !2497)
!2504 = !DILocation(line: 375, column: 60, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2493, file: !63, line: 374, column: 17)
!2506 = !DILocation(line: 375, column: 68, scope: !2505)
!2507 = !DILocation(line: 375, column: 76, scope: !2505)
!2508 = !DILocation(line: 375, column: 19, scope: !2505)
!2509 = !DILocation(line: 375, column: 17, scope: !2505)
!2510 = !DILocation(line: 380, column: 11, scope: !2330)
!2511 = !DILocation(line: 380, column: 4, scope: !2330)
!2512 = !DILocation(line: 388, column: 8, scope: !2513)
!2513 = distinct !DILexicalBlock(scope: !2330, file: !63, line: 388, column: 8)
!2514 = !DILocation(line: 388, column: 12, scope: !2513)
!2515 = !DILocation(line: 388, column: 19, scope: !2513)
!2516 = !DILocation(line: 388, column: 26, scope: !2517)
!2517 = !DILexicalBlockFile(scope: !2513, file: !63, discriminator: 1)
!2518 = !DILocation(line: 388, column: 30, scope: !2517)
!2519 = !DILocation(line: 388, column: 22, scope: !2517)
!2520 = !DILocation(line: 388, column: 35, scope: !2517)
!2521 = !DILocation(line: 388, column: 8, scope: !2517)
!2522 = !DILocation(line: 389, column: 11, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2513, file: !63, line: 388, column: 44)
!2524 = !DILocation(line: 389, column: 15, scope: !2523)
!2525 = !DILocation(line: 389, column: 7, scope: !2523)
!2526 = !DILocation(line: 389, column: 20, scope: !2523)
!2527 = !DILocation(line: 390, column: 4, scope: !2523)
!2528 = !DILocation(line: 392, column: 9, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2330, file: !63, line: 392, column: 8)
!2530 = !DILocation(line: 392, column: 8, scope: !2330)
!2531 = !DILocation(line: 396, column: 7, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2529, file: !63, line: 392, column: 14)
!2533 = !DILocation(line: 399, column: 11, scope: !2330)
!2534 = !DILocation(line: 399, column: 4, scope: !2330)
!2535 = distinct !DISubprogram(name: "VMToolsDefaultLogFilePath", scope: !63, file: !63, line: 569, type: !2536, isLocal: true, isDefinition: true, scopeLine: 570, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !103)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!48, !81}
!2538 = !DILocalVariable(name: "domain", arg: 1, scope: !2535, file: !63, line: 569, type: !81)
!2539 = !DILocation(line: 569, column: 40, scope: !2535)
!2540 = !DILocalVariable(name: "path", scope: !2535, file: !63, line: 571, type: !48)
!2541 = !DILocation(line: 571, column: 11, scope: !2535)
!2542 = !DILocation(line: 581, column: 59, scope: !2535)
!2543 = !DILocation(line: 581, column: 11, scope: !2535)
!2544 = !DILocation(line: 581, column: 9, scope: !2535)
!2545 = !DILocation(line: 583, column: 11, scope: !2535)
!2546 = !DILocation(line: 583, column: 4, scope: !2535)
